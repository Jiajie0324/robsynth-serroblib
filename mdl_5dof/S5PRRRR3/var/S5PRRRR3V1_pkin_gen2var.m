% Umwandlung der Kinematikparameter von S5PRRRR3 zu S5PRRRR3V1
% Eingabe:
% pkin_gen (9x1) double
%   Kinematikparameter (pkin) von S5PRRRR3
%   pkin_gen=[a2 a3 a4 a5 d2 d3 d4 d5 theta1]
% Ausgabe:
% pkin_var (7x1) double
%   Kinematikparameter (pkin) von S5PRRRR3V1
%   pkin_var=[a2 a3 a4 d2 d3 d4 theta1]
% I_gv (7x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S5PRRRR3V1_pkin_gen2var(pkin_gen)
I_gv = [1, 2, 3, 5, 6, 7, 9];
pkin_var = pkin_gen(I_gv);
