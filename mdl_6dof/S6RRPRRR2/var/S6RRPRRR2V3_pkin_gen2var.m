% Umwandlung der Kinematikparameter von S6RRPRRR2 zu S6RRPRRR2V3
% Eingabe:
% pkin_gen (11x1) double
%   Kinematikparameter (pkin) von S6RRPRRR2
%   pkin_gen=[a2 a3 a4 a5 a6 d1 d2 d4 d5 d6 theta3]
% Ausgabe:
% pkin_var (9x1) double
%   Kinematikparameter (pkin) von S6RRPRRR2V3
%   pkin_var=[a2 a3 a4 a6 d1 d2 d4 d6 theta3]
% I_gv (9x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S6RRPRRR2V3_pkin_gen2var(pkin_gen)
I_gv = [1, 2, 3, 5, 6, 7, 8, 10, 11];
pkin_var = pkin_gen(I_gv);
