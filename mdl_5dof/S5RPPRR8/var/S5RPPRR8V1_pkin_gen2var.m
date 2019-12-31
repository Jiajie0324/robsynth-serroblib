% Umwandlung der Kinematikparameter von S5RPPRR8 zu S5RPPRR8V1
% Eingabe:
% pkin_gen (8x1) double
%   Kinematikparameter (pkin) von S5RPPRR8
%   pkin_gen=[a2 a3 a4 a5 d1 d4 d5 theta3]
% Ausgabe:
% pkin_var (6x1) double
%   Kinematikparameter (pkin) von S5RPPRR8V1
%   pkin_var=[a2 a3 a4 d1 d4 theta3]
% I_gv (6x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S5RPPRR8V1_pkin_gen2var(pkin_gen)
I_gv = [1, 2, 3, 5, 6, 8];
pkin_var = pkin_gen(I_gv);
