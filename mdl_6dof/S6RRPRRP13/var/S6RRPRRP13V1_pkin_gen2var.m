% Umwandlung der Kinematikparameter von S6RRPRRP13 zu S6RRPRRP13V1
% Eingabe:
% pkin_gen (10x1) double
%   Kinematikparameter (pkin) von S6RRPRRP13
%   pkin_gen=[a2 a3 a4 a5 a6 alpha2 d1 d2 d4 d5]
% Ausgabe:
% pkin_var (8x1) double
%   Kinematikparameter (pkin) von S6RRPRRP13V1
%   pkin_var=[a2 a3 a4 a6 alpha2 d1 d2 d4]
% I_gv (8x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S6RRPRRP13V1_pkin_gen2var(pkin_gen)
I_gv = [1, 2, 3, 5, 6, 7, 8, 9];
pkin_var = pkin_gen(I_gv);
