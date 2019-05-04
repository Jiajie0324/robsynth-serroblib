% Umwandlung der Kinematikparameter von S6PRPRRR1 zu S6PRPRRR1V1
% Eingabe:
% pkin_gen (12x1) double
%   Kinematikparameter (pkin) von S6PRPRRR1
% Ausgabe:
% pkin_var (11x1) double
%   Kinematikparameter (pkin) von S6PRPRRR1V1
% I_gv (11x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S6PRPRRR1V1_pkin_gen2var(pkin_gen)
I_gv = [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12];
pkin_var = pkin_gen(I_gv);
