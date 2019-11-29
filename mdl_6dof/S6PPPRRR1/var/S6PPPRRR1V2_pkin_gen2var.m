% Umwandlung der Kinematikparameter von S6PPPRRR1 zu S6PPPRRR1V2
% Eingabe:
% pkin_gen (14x1) double
%   Kinematikparameter (pkin) von S6PPPRRR1
%   pkin_gen=[a2 a3 a4 a5 a6 alpha2 alpha3 alpha4 d4 d5 d6 theta1 theta2 theta3]
% Ausgabe:
% pkin_var (10x1) double
%   Kinematikparameter (pkin) von S6PPPRRR1V2
%   pkin_var=[a2 a3 a4 alpha2 alpha3 alpha4 d4 theta1 theta2 theta3]
% I_gv (10x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S6PPPRRR1V2_pkin_gen2var(pkin_gen)
I_gv = [1, 2, 3, 6, 7, 8, 9, 12, 13, 14];
pkin_var = pkin_gen(I_gv);
