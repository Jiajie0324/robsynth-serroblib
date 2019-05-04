% Umwandlung der Kinematikparameter von S6RPRRPR4 zu S6RPRRPR4V1
% Eingabe:
% pkin_gen (11x1) double
%   Kinematikparameter (pkin) von S6RPRRPR4
% Ausgabe:
% pkin_var (10x1) double
%   Kinematikparameter (pkin) von S6RPRRPR4V1
% I_gv (10x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S6RPRRPR4V1_pkin_gen2var(pkin_gen)
I_gv = [1, 2, 3, 4, 5, 6, 7, 8, 10, 11];
pkin_var = pkin_gen(I_gv);
