% Umwandlung der Kinematikparameter von S6RPPPRR3 zu S6RPPPRR3V2
% Eingabe:
% pkin_gen (10x1) double
%   Kinematikparameter (pkin) von S6RPPPRR3
%   pkin_gen=[a2 a3 a4 a5 a6 d1 d5 d6 theta3 theta4]
% Ausgabe:
% pkin_var (8x1) double
%   Kinematikparameter (pkin) von S6RPPPRR3V2
%   pkin_var=[a2 a3 a4 a5 d1 d5 theta3 theta4]
% I_gv (8x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S6RPPPRR3V2_pkin_gen2var(pkin_gen)
I_gv = [1, 2, 3, 4, 6, 7, 9, 10];
pkin_var = pkin_gen(I_gv);
