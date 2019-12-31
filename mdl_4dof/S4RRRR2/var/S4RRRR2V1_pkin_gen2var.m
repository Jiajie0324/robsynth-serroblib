% Umwandlung der Kinematikparameter von S4RRRR2 zu S4RRRR2V1
% Eingabe:
% pkin_gen (7x1) double
%   Kinematikparameter (pkin) von S4RRRR2
%   pkin_gen=[a2 a3 a4 d1 d2 d3 d4]
% Ausgabe:
% pkin_var (5x1) double
%   Kinematikparameter (pkin) von S4RRRR2V1
%   pkin_var=[a2 a4 d1 d2 d4]
% I_gv (5x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S4RRRR2V1_pkin_gen2var(pkin_gen)
I_gv = [1, 3, 4, 5, 7];
pkin_var = pkin_gen(I_gv);
