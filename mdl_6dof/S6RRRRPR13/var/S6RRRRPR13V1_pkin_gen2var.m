% Umwandlung der Kinematikparameter von S6RRRRPR13 zu S6RRRRPR13V1
% Eingabe:
% pkin_gen (11x1) double
%   Kinematikparameter (pkin) von S6RRRRPR13
%   pkin_gen=[a2 a3 a4 a5 a6 alpha2 d1 d2 d3 d4 d6]
% Ausgabe:
% pkin_var (10x1) double
%   Kinematikparameter (pkin) von S6RRRRPR13V1
%   pkin_var=[a2 a3 a4 a5 a6 alpha2 d1 d2 d3 d4]
% I_gv (10x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S6RRRRPR13V1_pkin_gen2var(pkin_gen)
I_gv = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
pkin_var = pkin_gen(I_gv);
