% Umwandlung der Kinematikparameter von S6RRRPPR9 zu S6RRRPPR9V1
% Eingabe:
% pkin_gen (11x1) double
%   Kinematikparameter (pkin) von S6RRRPPR9
%   pkin_gen=[a2 a3 a4 a5 a6 alpha2 d1 d2 d3 d6 theta4]
% Ausgabe:
% pkin_var (10x1) double
%   Kinematikparameter (pkin) von S6RRRPPR9V1
%   pkin_var=[a2 a3 a4 a5 a6 alpha2 d1 d2 d3 theta4]
% I_gv (10x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S6RRRPPR9V1_pkin_gen2var(pkin_gen)
I_gv = [1, 2, 3, 4, 5, 6, 7, 8, 9, 11];
pkin_var = pkin_gen(I_gv);
