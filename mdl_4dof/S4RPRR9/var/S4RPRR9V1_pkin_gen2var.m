% Umwandlung der Kinematikparameter von S4RPRR9 zu S4RPRR9V1
% Eingabe:
% pkin_gen (6x1) double
%   Kinematikparameter (pkin) von S4RPRR9
%   pkin_gen=[a2 a3 a4 d1 d3 d4]
% Ausgabe:
% pkin_var (4x1) double
%   Kinematikparameter (pkin) von S4RPRR9V1
%   pkin_var=[a2 a3 d1 d3]
% I_gv (4x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S4RPRR9V1_pkin_gen2var(pkin_gen)
I_gv = [1, 2, 4, 5];
pkin_var = pkin_gen(I_gv);
