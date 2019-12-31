% Umwandlung der Kinematikparameter von S6RRPPRR9 zu S6RRPPRR9V2
% Eingabe:
% pkin_gen (10x1) double
%   Kinematikparameter (pkin) von S6RRPPRR9
%   pkin_gen=[a2 a3 a4 a5 a6 alpha2 d1 d2 d5 d6]
% Ausgabe:
% pkin_var (8x1) double
%   Kinematikparameter (pkin) von S6RRPPRR9V2
%   pkin_var=[a2 a3 a4 a5 alpha2 d1 d2 d5]
% I_gv (8x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S6RRPPRR9V2_pkin_gen2var(pkin_gen)
I_gv = [1, 2, 3, 4, 6, 7, 8, 9];
pkin_var = pkin_gen(I_gv);
