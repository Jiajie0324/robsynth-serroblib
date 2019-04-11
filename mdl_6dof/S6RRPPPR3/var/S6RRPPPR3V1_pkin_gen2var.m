% Umwandlung der Kinematikparameter von S6RRPPPR3 zu S6RRPPPR3V1
% Eingabe:
% pkin_gen (9x1) double
%   Kinematikparameter (pkin) von S6RRPPPR3
% Ausgabe:
% pkin_var (8x1) double
%   Kinematikparameter (pkin) von S6RRPPPR3V1
% I_gv (8x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S6RRPPPR3V1_pkin_gen2var(pkin_gen)
I_gv = [1, 2, 3, 4, 5, 6, 7, 9];
pkin_var = pkin_gen(I_gv);
