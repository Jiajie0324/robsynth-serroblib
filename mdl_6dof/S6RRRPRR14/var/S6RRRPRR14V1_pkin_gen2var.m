% Umwandlung der Kinematikparameter von S6RRRPRR14 zu S6RRRPRR14V1
% Eingabe:
% pkin_gen (11x1) double
%   Kinematikparameter (pkin) von S6RRRPRR14
% Ausgabe:
% pkin_var (10x1) double
%   Kinematikparameter (pkin) von S6RRRPRR14V1
% I_gv (10x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S6RRRPRR14V1_pkin_gen2var(pkin_gen)
I_gv = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
pkin_var = pkin_gen(I_gv);