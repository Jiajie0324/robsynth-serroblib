% Umwandlung der Kinematikparameter von S6PRRPRR5 zu S6PRRPRR5V1
% Eingabe:
% pkin_gen (12x1) double
%   Kinematikparameter (pkin) von S6PRRPRR5
%   pkin_gen=[a2 a3 a4 a5 a6 alpha2 d2 d3 d5 d6 theta1 theta4]
% Ausgabe:
% pkin_var (11x1) double
%   Kinematikparameter (pkin) von S6PRRPRR5V1
%   pkin_var=[a2 a3 a4 a5 a6 alpha2 d2 d3 d5 theta1 theta4]
% I_gv (11x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S6PRRPRR5V1_pkin_gen2var(pkin_gen)
I_gv = [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12];
pkin_var = pkin_gen(I_gv);
