% Umwandlung der Kinematikparameter von S5PPPRR2V4 zu S5PPPRR2
% Eingabe:
% pkin_var (5x1) double
%   Kinematikparameter (pkin) von S5PPPRR2V4
%   pkin_var=[a2 a3 a4 d4 theta1]
% Ausgabe:
% pkin_gen (9x1) double
%   Kinematikparameter (pkin) von S5PPPRR2
%   pkin_gen=[a2 a3 a4 a5 d4 d5 theta1 theta2 theta3]
%
% Siehe auch: S5PPPRR2_structural_kinematic_parameters.m
function pkin_gen = S5PPPRR2V4_pkin_var2gen(pkin_var)
pkin_gen = zeros(9,1);
pkin_gen([1, 2, 3, 5, 7]) = pkin_var;

pkin_gen(4) = 0.0; % a5
pkin_gen(6) = 0.0; % d5
pkin_gen(8) = pi/2; % theta2
pkin_gen(9) = 0.0; % theta3
