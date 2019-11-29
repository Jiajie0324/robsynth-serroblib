% Umwandlung der Kinematikparameter von S6RRPRPR11 zu S6RRPRPR11V1
% Eingabe:
% pkin_gen (10x1) double
%   Kinematikparameter (pkin) von S6RRPRPR11
%   pkin_gen=[a2 a3 a4 a5 a6 d1 d2 d4 d6 theta5]
% Ausgabe:
% pkin_var (9x1) double
%   Kinematikparameter (pkin) von S6RRPRPR11V1
%   pkin_var=[a2 a3 a4 a5 a6 d1 d2 d4 theta5]
% I_gv (9x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S6RRPRPR11V1_pkin_gen2var(pkin_gen)
I_gv = [1, 2, 3, 4, 5, 6, 7, 8, 10];
pkin_var = pkin_gen(I_gv);
