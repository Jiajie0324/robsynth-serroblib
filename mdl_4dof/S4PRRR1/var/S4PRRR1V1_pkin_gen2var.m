% Umwandlung der Kinematikparameter von S4PRRR1 zu S4PRRR1V1
% Eingabe:
% pkin_gen (7x1) double
%   Kinematikparameter (pkin) von S4PRRR1
%   pkin_gen=[a2 a3 a4 d2 d3 d4 theta1]
% Ausgabe:
% pkin_var (6x1) double
%   Kinematikparameter (pkin) von S4PRRR1V1
%   pkin_var=[a2 a3 a4 d2 d3 theta1]
% I_gv (6x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S4PRRR1V1_pkin_gen2var(pkin_gen)
I_gv = [1, 2, 3, 4, 5, 7];
pkin_var = pkin_gen(I_gv);
