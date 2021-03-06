% Umwandlung der Kinematikparameter von S5RRRRR1 zu S5RRRRR1V1
% Eingabe:
% pkin_gen (6x1) double
%   Kinematikparameter (pkin) von S5RRRRR1
%   pkin_gen=[a2 a3 a4 a5 d1 d5]
% Ausgabe:
% pkin_var (4x1) double
%   Kinematikparameter (pkin) von S5RRRRR1V1
%   pkin_var=[a2 a3 a4 d1]
% I_gv (4x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S5RRRRR1V1_pkin_gen2var(pkin_gen)
I_gv = [1, 2, 3, 5];
pkin_var = pkin_gen(I_gv);
