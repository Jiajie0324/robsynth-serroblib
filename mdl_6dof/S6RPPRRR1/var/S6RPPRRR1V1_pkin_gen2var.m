% Umwandlung der Kinematikparameter von S6RPPRRR1 zu S6RPPRRR1V1
% Eingabe:
% pkin_gen (11x1) double
%   Kinematikparameter (pkin) von S6RPPRRR1
%   pkin_gen=[a2 a3 a4 a5 a6 d1 d4 d5 d6 theta2 theta3]
% Ausgabe:
% pkin_var (10x1) double
%   Kinematikparameter (pkin) von S6RPPRRR1V1
%   pkin_var=[a2 a3 a4 a5 a6 d1 d4 d5 theta2 theta3]
% I_gv (10x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S6RPPRRR1V1_pkin_gen2var(pkin_gen)
I_gv = [1, 2, 3, 4, 5, 6, 7, 8, 10, 11];
pkin_var = pkin_gen(I_gv);
