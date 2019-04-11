% Umwandlung der Kinematikparameter von S6PRRRPR2 zu S6PRRRPR2V1
% Eingabe:
% pkin_gen (12x1) double
%   Kinematikparameter (pkin) von S6PRRRPR2
% Ausgabe:
% pkin_var (11x1) double
%   Kinematikparameter (pkin) von S6PRRRPR2V1
% I_gv (11x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S6PRRRPR2V1_pkin_gen2var(pkin_gen)
I_gv = [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12];
pkin_var = pkin_gen(I_gv);
