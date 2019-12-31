% Umwandlung der Kinematikparameter von S5RRRRR8 zu S5RRRRR8V2
% Eingabe:
% pkin_gen (9x1) double
%   Kinematikparameter (pkin) von S5RRRRR8
%   pkin_gen=[a2 a3 a4 a5 d1 d2 d3 d4 d5]
% Ausgabe:
% pkin_var (7x1) double
%   Kinematikparameter (pkin) von S5RRRRR8V2
%   pkin_var=[a2 a3 a5 d1 d2 d3 d5]
% I_gv (7x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S5RRRRR8V2_pkin_gen2var(pkin_gen)
I_gv = [1, 2, 4, 5, 6, 7, 9];
pkin_var = pkin_gen(I_gv);
