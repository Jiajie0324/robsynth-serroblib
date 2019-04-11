% Umwandlung der Kinematikparameter von S6RRPPRR11 zu S6RRPPRR11V1
% Eingabe:
% pkin_gen (11x1) double
%   Kinematikparameter (pkin) von S6RRPPRR11
% Ausgabe:
% pkin_var (10x1) double
%   Kinematikparameter (pkin) von S6RRPPRR11V1
% I_gv (10x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S6RRPPRR11V1_pkin_gen2var(pkin_gen)
I_gv = [1, 2, 3, 4, 5, 6, 7, 8, 9, 11];
pkin_var = pkin_gen(I_gv);
