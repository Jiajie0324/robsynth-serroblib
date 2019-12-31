% Umwandlung der Kinematikparameter von S5PRPRR6V1 zu S5PRPRR6
% Eingabe:
% pkin_var (8x1) double
%   Kinematikparameter (pkin) von S5PRPRR6V1
%   pkin_var=[a2 a3 a4 alpha2 d2 d4 theta1 theta3]
% Ausgabe:
% pkin_gen (10x1) double
%   Kinematikparameter (pkin) von S5PRPRR6
%   pkin_gen=[a2 a3 a4 a5 alpha2 d2 d4 d5 theta1 theta3]
%
% Siehe auch: S5PRPRR6_structural_kinematic_parameters.m
function pkin_gen = S5PRPRR6V1_pkin_var2gen(pkin_var)
pkin_gen = zeros(10,1);
pkin_gen([1, 2, 3, 5, 6, 7, 9, 10]) = pkin_var;

pkin_gen(4) = 0.0; % a5
pkin_gen(8) = 0.0; % d5
