% Umwandlung der Kinematikparameter von S6RRPPRR3 zu S6RRPPRR3V2
% Eingabe:
% pkin_gen (12x1) double
%   Kinematikparameter (pkin) von S6RRPPRR3
%   pkin_gen=[a2 a3 a4 a5 a6 alpha2 d1 d2 d5 d6 theta3 theta4]
% Ausgabe:
% pkin_var (10x1) double
%   Kinematikparameter (pkin) von S6RRPPRR3V2
%   pkin_var=[a2 a3 a4 a5 alpha2 d1 d2 d5 theta3 theta4]
% I_gv (10x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S6RRPPRR3V2_pkin_gen2var(pkin_gen)
I_gv = [1, 2, 3, 4, 6, 7, 8, 9, 11, 12];
pkin_var = pkin_gen(I_gv);
