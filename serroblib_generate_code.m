% Generiere Matlab-Code mit Maple-Dynamik-Toolbox f�r eine Roboterstruktur
% 
% Eingabe:
% Names
%   Cell-Array mit Liste der Namen der Roboterstrukturen, f�r die der Code
%   erzeugt werden soll. Der Name entspricht dem Schema "SxRRRyyy" mit
%   x=Anzahl Gelenk-FG und yyy laufende Nummer f�r "RRR".
% force [1x1 logical]
%   Erzwinge die Neu-Generierung des Codes
% nocopy [1x1 logical]
%   Nur Code generieren, aber nicht zur�ck kopieren
% mode
%   Modus, welche Dateien generiert werden sollen, damit nicht die
%   vollst�ndige Dynamik jedes mal neu generiert werden muss
%   1: Vollst�ndige Generierung, alles
%   2: Nur aus Vorlagen generierte Funktionen (z.B. Jacobi, inverse Kinematik)
%      (Diese Option ist nicht mehr sinnvoll, da Vorlagen-Funktionen jetzt
%      im Ordner "tpl" gespeichert werden)
%   3: Alles generieren in Maple, aber keinen Matlab-Code exportieren
%      (wichtig f�r PKM. Dort wird die Bein-Dynamik nur als Maple gebraucht)
% 
% Vorher: 
% * Funktion maplerepo_path.m muss vorliegen mit R�ckgabe des
%   Repo-Pfades der Maple-Dynamik-Toolbox ("HybrDyn")
% * Maple-Eingabedaten m�ssen f�r die Roboterstruktur mit
%   serroblib_generate_mapleinput.m erzeugt werden

% Moritz Schappler, moritz.schappler@imes.uni-hannover.de, 2018-08
% (C) Institut f�r Mechatronische Systeme, Universit�t Hannover

function serroblib_generate_code(Names, force, nocopy, mode)

if ispc()
  warning('Die Code-Generierung ist unter Windows noch etwas instabil.');
end
  
if nargin < 2
  force = false;
end
if nargin < 3
  nocopy = false;
end
if nargin < 4
  mode = 1;
end
repopath=fileparts(which('serroblib_path_init.m'));
% Pfad zur Maple-Dynamik-Toolbox (muss im Repo abgelegt werden)
if ispc()
  % Windows: Benutze zwei verschiedene Pfade, f�r Git Bash und Windows
  % Dateizugriff
  [mrp, mrp_cmd] = maplerepo_path();
else
  % Linux: Ein Pfad f�r beide Zugriffe
  mrp_cmd = maplerepo_path();
  mrp = mrp_cmd;
end

for i = 1:length(Names)
  n = Names{i};
  N = str2double(n(2));

  % Pr�fe, ob Modell eine Variante ist
  mdllistfile_Ndof = fullfile(repopath, sprintf('mdl_%ddof', N), sprintf('S%d_list.mat',N));
  l = load(mdllistfile_Ndof, 'Names_Ndof', 'AdditionalInfo');
  isvariant = l.AdditionalInfo(strcmp(l.Names_Ndof,n),2);
  variantof = l.AdditionalInfo(strcmp(l.Names_Ndof,n),3);

  % Maple-Toolbox-Eingabe laden (wurde an anderer Stelle erzeugt)
  % (durch serroblib_generate_mapleinput.m)
  if isvariant
    % Der Code f�r Varianten wird im selben Ordner wie der des Allgemeinen
    % Modells gespeichert (andersnamiger Unterordner)
    n_gen = l.Names_Ndof{variantof};
    mapleinputfile=fullfile(repopath, sprintf('mdl_%ddof', N), n_gen, ...
                            sprintf('hd_%s', n(length(n_gen)+1:end)), sprintf('robot_env_%s', n));
  else
    % ist keine Variante
    mapleinputfile=fullfile(repopath, sprintf('mdl_%ddof', N), n, ...
                            'hd', sprintf('robot_env_%s', n));
  end
  
  if ~exist(mapleinputfile, 'file')
    error('Datei %s existiert nicht. Wurde `serroblib_generate_mapleinput.m` ausgef�hrt?', fileparts(mapleinputfile) );
  end
  % Verzeichnisse f�r die zu erzeugenden Matlab-Funktionen
  outputdir_tb = fullfile(mrp, 'codeexport', n, 'matlabfcn'); % Verzeichnis in der Maple-Toolbox
  lockfile = fullfile(mrp, 'codeexport', n, 'codegen.lock');
  outputdir_local = fileparts(mapleinputfile); % Verzeichnis in der Bibliothek
  
  % Pr�fe, ob Code schon einmal generiert wurde 
  % (und im Zielverzeichnis vorliegt)
  if ~force && length(dir(fullfile(outputdir_local, '*.m'))) > 20
    % das werden wohl schon genug .m-Dateien sein.
    continue
  end
  
  % Eingabedatei kopieren
  mapleinputfile_tb = fullfile(mrp, 'robot_codegen_definitions', 'robot_env');
  copyfile( mapleinputfile, mapleinputfile_tb );
  if mode == 3
    fid = fopen(mapleinputfile_tb, 'a');
    fprintf(fid, 'codegen_act := false:\n');
    fclose(fid);
  end
  
  % Datei mit Shell-Variablen auch kopieren (wird bei vollst�ndigem
  % Durchlauf der Toolbox �berschrieben, aber f�r Einzelaufruf von Skripten
  % ben�tigt
  if exist([mapleinputfile,'.sh'], 'file')
    copyfile( [mapleinputfile,'.sh'], [mapleinputfile_tb, '.sh'] );
  elseif mode == 2
    error('Generierung der Vorlagen-Funktionen nicht m�glich. %s existiert nicht', [mapleinputfile,'.sh']);
  end
  % Code-Erstellung starten
  if mode == 1 || mode == 3
    fprintf('Starte Code-Generierung %d/%d f�r %s\n', i, length(Names), n);
    system_gen( sprintf('cd %s && ./robot_codegen_start.sh --fixb_only --notest --parallel', mrp_cmd), lockfile); %  > /dev/null
  elseif mode == 2
    warning('Achtung: Mit der gesonderten Behandlung von Vorlagen-Funktionen ist dieser Modus nicht mehr sinnvoll');
    fprintf('Generiere Matlab-Funktionen aus Vorlagen (%d/%d) f�r %s\n', i, length(Names), n);
    if ~exist(fullfile(mrp, 'codeexport', n), 'file')
      warning('Ordner %s existiert nicht. Die Code-Generierung muss vorher einmal gelaufen sein', ...
        fullfile(mrp, 'codeexport', n));
    end
    system_gen( sprintf('rm -rf %s/workdir/*', mrp_cmd) ); % Inhalt des tmp-Verzeichnisses leeren und neu erstellen, ...
    system_gen( sprintf('mkdir -p %s/workdir/tmp', mrp_cmd) ); ... damit keine alten Versionen enthalten sein k�nnen
    system_gen( sprintf('cd %s/robot_codegen_scripts && ./create_git_versioninfo.sh', mrp_cmd) );
    system_gen( sprintf('cd %s/robot_codegen_scripts && ./robot_codegen_tmpvar_matlab.sh', mrp_cmd) );
    system_gen( sprintf('cd %s/robot_codegen_scripts && ./robot_codegen_matlab_num_varpar.sh', mrp_cmd) );
  else
    error('Modus nicht definiert');
  end
  % generierten Code zur�ckkopieren (alle .m-Dateien)
  % Nicht relevante automatisch generierte Dateien werden nicht kopiert.
  blacklist_exp = {...
    'gravload_floatb_eulxyz_nnew_vp1.m', ...
    'jacobig_mdh_num.m', ...
    'jacobigD_mdh_num.m', ...
    'invkin_traj.m', ...
    'invkin_eulangresidual.m', ...
    'constr2.m', ...
    'constr2grad.m', ...
    'inertiaJ_nCRB_vp1.m', ...
    'jacobi(.*)_floatb_twist', ...
    'invdynJ_fixb_mdp_slag_vp_traj.m', ...
    'invdynJ_fixb_mdp_slag_vr_traj.m', ...
    'invdynJ_fixb_regmin_slag_vp_traj.m', ...
    'kinconstr_expl_mdh_num_varpar.m', ...
    'eulxyz'};
  if ~nocopy
    for f = dir(fullfile(outputdir_tb, '*.m'))'
      file_is_blacklisted = false;
      for bli = 1:length(blacklist_exp)
        match = regexp(f.name,blacklist_exp{bli},'match');
        if ~isempty(match)
          file_is_blacklisted = true;
          % fprintf('File %s is blacklisted\n', f.name);
          break;
        end
      end
      if ~file_is_blacklisted
        copyfile(fullfile(outputdir_tb, f.name), fullfile(outputdir_local, f.name));
      end
    end
  end
  % Definitionen des Roboters zur�ckkopieren. Damit lassen sich sp�ter
  % leichter Roboterspezifische Funktionen neu generieren, ohne die Toolbox
  % neu durchlaufen zu lassen
  copyfile( fullfile(mrp, 'robot_codegen_definitions', 'robot_env.sh'), [mapleinputfile, '.sh']);
end
end

function system_gen(cmd, lockfile)
  % Betriebssystem-unabh�ngiger Aufruf von Befehlen in der Git Bash
  % Erm�glicht den Aufruf der Dynamik-Berechnungen aus Windows und Linux
  % Vorher: Wechseln in Verzeichnis aus Matlab heraus
  %
  % Eingabe:
  % cmd:
  %  Befehl, der in der Git Bash ausgef�hrt werden soll.
  % lockfile:
  %  Pfad zur Sperrdatei, die existiert, solange noch Code generiert wird.
  if isunix() || ismac()
    system(cmd)
  elseif ispc()
    % Befehl �ber Git Bash ausf�hren und nach Ausf�hrung noch 3 Minuten anzeigen
    system(sprintf('start "" "%%PROGRAMFILES%%\\Git\\bin\\sh.exe" --login  -c "%s || sleep 180"', cmd));
    if nargin == 2
      while true
        pause(5); % Warte auf den Start der Code-Generierung
        if ~exist(lockfile, 'file')
          break; % Die Sperr-Datei existiert nicht mehr. Wahrscheinlich fertig.
        end
      end
    end
  else
    error('System nicht erkannt');
  end
end
