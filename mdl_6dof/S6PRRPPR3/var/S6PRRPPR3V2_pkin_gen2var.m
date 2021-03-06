% Umwandlung der Kinematikparameter von S6PRRPPR3 zu S6PRRPPR3V2
% Eingabe:
% pkin_gen (10x1) double
%   Kinematikparameter (pkin) von S6PRRPPR3
%   pkin_gen=[a2 a3 a4 a5 a6 alpha2 d2 d3 d6 theta1]
% Ausgabe:
% pkin_var (8x1) double
%   Kinematikparameter (pkin) von S6PRRPPR3V2
%   pkin_var=[a2 a4 a5 a6 alpha2 d2 d6 theta1]
% I_gv (8x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S6PRRPPR3V2_pkin_gen2var(pkin_gen)
I_gv = [1, 3, 4, 5, 6, 7, 9, 10];
pkin_var = pkin_gen(I_gv);
