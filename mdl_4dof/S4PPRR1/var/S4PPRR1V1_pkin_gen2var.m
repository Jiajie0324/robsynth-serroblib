% Umwandlung der Kinematikparameter von S4PPRR1 zu S4PPRR1V1
% Eingabe:
% pkin_gen (6x1) double
%   Kinematikparameter (pkin) von S4PPRR1
% Ausgabe:
% pkin_var (5x1) double
%   Kinematikparameter (pkin) von S4PPRR1V1
% I_gv (5x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S4PPRR1V1_pkin_gen2var(pkin_gen)
I_gv = [1, 2, 3, 4, 6];
pkin_var = pkin_gen(I_gv);
