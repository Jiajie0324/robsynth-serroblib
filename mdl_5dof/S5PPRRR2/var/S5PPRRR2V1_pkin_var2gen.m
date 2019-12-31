% Umwandlung der Kinematikparameter von S5PPRRR2V1 zu S5PPRRR2
% Eingabe:
% pkin_var (7x1) double
%   Kinematikparameter (pkin) von S5PPRRR2V1
%   pkin_var=[a2 a3 a5 d3 d5 theta1 theta2]
% Ausgabe:
% pkin_gen (9x1) double
%   Kinematikparameter (pkin) von S5PPRRR2
%   pkin_gen=[a2 a3 a4 a5 d3 d4 d5 theta1 theta2]
%
% Siehe auch: S5PPRRR2_structural_kinematic_parameters.m
function pkin_gen = S5PPRRR2V1_pkin_var2gen(pkin_var)
pkin_gen = zeros(9,1);
pkin_gen([1, 2, 4, 5, 7, 8, 9]) = pkin_var;

pkin_gen(3) = 0.0; % a4
pkin_gen(6) = 0.0; % d4
