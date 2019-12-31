% Umwandlung der Kinematikparameter von S6PRPRRR4 zu S6PRPRRR4V2
% Eingabe:
% pkin_gen (12x1) double
%   Kinematikparameter (pkin) von S6PRPRRR4
%   pkin_gen=[a2 a3 a4 a5 a6 alpha2 d2 d4 d5 d6 theta1 theta3]
% Ausgabe:
% pkin_var (10x1) double
%   Kinematikparameter (pkin) von S6PRPRRR4V2
%   pkin_var=[a2 a3 a4 a6 alpha2 d2 d4 d6 theta1 theta3]
% I_gv (10x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S6PRPRRR4V2_pkin_gen2var(pkin_gen)
I_gv = [1, 2, 3, 5, 6, 7, 8, 10, 11, 12];
pkin_var = pkin_gen(I_gv);
