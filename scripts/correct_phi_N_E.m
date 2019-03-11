% Korrigiere die Tabellenspalte für Transformation N->E
% Die Kinematik ist so definiert, dass bei 1-Rotations-FG (EE) keine
% Drehung um eine andere Achse stattfindet. Aufgrund der Synthese basierend
% auf Geschwindigkeiten ist das nicht gewährleistet. Daher wird die
% passende konstante Rotation in der Tabelle hinterlegt.

% Moritz Schappler, moritz.schappler@imes.uni-hannover.de, 2019-02
% (C) Institut für Mechatronische Systeme, Universität Hannover

clear
clc

%% Initialisierung
roblibpath=fileparts(which('serroblib_path_init.m'));

serroblib_gen_bitarrays(1:7);

%% Durchsuche alle Roboter und stelle die korrekte Orientierung des Endeffektors fest
% Zuordnung der Zahlenwerte in der csv-Tabelle zu den physikalischen Werten
% Die in der mat-Datei abgelegte Binär-Kodierung entspricht der Reihenfolge
descr_phi_values = {0, pi/2, pi, -pi/2, NaN};
descr_phi = {'0', 'pi/2', 'pi', '-pi/2', 'NaN'};
for N = 1:7
  fprintf('Prüfe Strukturen mit %d FG\n', N);
  % Alle Roboter aus Datenbank laden
  mdllistfile_Ndof = fullfile(roblibpath, sprintf('mdl_%ddof', N), sprintf('S%d_list.mat',N));
  l = load(mdllistfile_Ndof, 'Names_Ndof', 'BitArrays_Ndof', 'BitArrays_EEdof0');
  for j = 1:length(l.Names_Ndof)
    %% Initialisierung
    % Marker, ob EE-Transformation für diese Struktur noch undefiniert ist.
    % Dann sind in der csv-Tabelle "?" als Platzhalter für phix_NE gesetzt
    undef = false;
    RobName = l.Names_Ndof{j};
    fprintf('%d/%d: Prüfe Struktur %s\n', j, length(l.Names_Ndof), RobName);
    % Roboterklasse erstellen
    RS = serroblib_create_robot_class(RobName);
    % Prüfe, ob EE-Orientierung noch undefiniert ist
    if any(isnan(RS.phi_N_E))
      undef = true;
      RS.update_EE([], zeros(3,1));
    end
    if ~undef
      % In der Tabelle wurden bereits Werte gesetzt. Die werden wohl
      % richtig sein. Überspringe diesen Roboter
      fprintf('Keine Änderungen vorgenommen. Bereits phi_N_E=[%s] gesetzt.\n', ...
        disp_array(RS.phi_N_E', '%1.3f'));
      continue
    end
    %% Neue Transformation berechnen
    phi_N_E_neu = NaN(3,1);
    % Prüfe mit direkter Kinematik, ob die EE-FG erfüllt werden
    % Überprüfung: dec2bin(l.BitArrays_EEdof0(j))
    if all(bitget(l.BitArrays_EEdof0(j),4:6) == [1 1 1])
      % 3 Rotations-FG: Die Orientierung des End-Effektors ist kinematisch
      % egal. Setze daher zu Null
      phi_N_E_neu = zeros(3,1);
      fprintf('Setze Transformation N-E auf Null, da 3 Rotations-FG\n');
    elseif all(bitget(l.BitArrays_EEdof0(j),4:6) == [0 0 1])
      % Nur ein Rotations-FG (als Standard definiert um z-Achse).
      % Hier tritt das Problem mit phi_N_E besonders auf.
      
      % Kinematik-Parameter zufällig wählen. Muss für Rotation egal sein.
      RS.update_mdh( rand(length(RS.pkin),1) );
      % Direkte Kinematik bestimmen (ohne zusätzliche Rotation N-E)
      q0 = rand(RS.NQJ,1);
      T_0_N = RS.fkineEE(q0);
      R_0_N = T_0_N(1:3,1:3);
      % x-y-Teil dieser Rotation entnehmen. Siehe Aufzeichnungen vom 7.2.19
      R_N_E_xy = R_0_N';
      phi_xy = r2eulxyz(R_N_E_xy);
      phi_N_E_neu = [phi_xy(1); phi_xy(2); 0]; % Nur x-y-Drehung
      % Umwandlung -pi -> pi
      phi_N_E_neu(abs(abs(phi_N_E_neu)-pi) < 1e-10) = pi;
      % Probe
      R_N_E_neu = eulxyz2r(phi_N_E_neu);
      % Neue EE-Transformation: So, dass phix und phiy Null sind.
      R_0_E_neu = R_0_N * R_N_E_neu; % nur zur Verifizierung
      phi_test = r2eulxyz(R_0_E_neu);
      if any(abs(phi_test(1:2)) > 1e-10)
        error('Die Transformation N-E konnte nicht richtig berechnet werden');
      end
    else
      warning('EE-Kombination [%s] nicht in Tabelle hinterlegt. Überspringe.', ...
        disp_array(bitget(BAE,4:6), '%d'));
      continue
    end
    %% Durchsuche die csv-Tabelle und ändere die Werte
    % Dateinamen der csv-Tabellen bestimmen
    typestring = RobName(3:3+N-1); % Roboterdaten aus Namen extrahieren
    filename = sprintf('S%d%s.csv', N, typestring);
    filepath_csv = fullfile(roblibpath, sprintf('mdl_%ddof', N),filename);
    filepath_csv_copy = [filepath_csv, '.copy']; % Kopie der Tabelle zur Bearbeitung
    % CSV-Tabelle zeilenweise durchgehen
    fid = fopen(filepath_csv);
    fidc = fopen(filepath_csv_copy, 'w');
    tline = fgetl(fid);
    found = false;
    while ischar(tline)
      % Spaltenweise als Cell-Array
      csvline = strsplit(tline, ';', 'CollapseDelimiters', false);
      if strcmp(csvline{1}, RobName) % Suche Roboternamen (erste Spalte)
        % Zu modifizierenden Roboter gefunden. Diese Zeile verändert in Dateikopie schreiben
        found = true;
        % Zeile modifizieren
        csvline_mod = csvline;
        for kk = 1:3 % über 3 Euler-Winkel-Komponenten
          for jj = 1:length(descr_phi_values) % über mögliche diskrete Pi-Werte
            if abs(phi_N_E_neu(kk) - descr_phi_values{jj}) < 1e-10
              csvline_mod{1+8*N+kk} = descr_phi{jj};
              break;
            end
          end
        end
        % modifizierte csv-Zeile in Textzeile umwandeln
        line_copy = csvline_mod{1};
        for i = 2:length(csvline_mod)
          line_copy = sprintf('%s;%s', line_copy, csvline_mod{i});
        end
        fwrite(fidc, [line_copy, newline()]);
      else
        % ursprüngliche Zeile in die Dateikopie schreiben: Überschriften,
        % andere Roboter
        fwrite(fidc, [tline, newline()]);
      end
      tline = fgetl(fid); % nächste Zeile
    end
    fclose(fid);
    fclose(fidc);
    if ~found
      warning('Zu bearbeitendes Modell %s nicht in %s gefunden', ...
        RobName, filepath_csv);
      return
    end
    % Modifizierte Tabelle zurückkopieren
    copyfile(filepath_csv_copy, filepath_csv);
    % Kopie-Tabelle löschen
    delete(filepath_csv_copy);
    fprintf('Neue Transformation phi_N_E=[%s] gesetzt.\n', ...
      disp_array(phi_N_E_neu', '%1.3f'));
  end
end