% Umwandlung der Kinematikparameter von S6PRPRRP5V1 zu S6PRPRRP5
% Eingabe:
% pkin_var (8x1) double
%   Kinematikparameter (pkin) von S6PRPRRP5V1
%   pkin_var=[a2 a3 a4 a6 alpha2 d2 d4 theta1]
% Ausgabe:
% pkin_gen (10x1) double
%   Kinematikparameter (pkin) von S6PRPRRP5
%   pkin_gen=[a2 a3 a4 a5 a6 alpha2 d2 d4 d5 theta1]
%
% Siehe auch: S6PRPRRP5_structural_kinematic_parameters.m
function pkin_gen = S6PRPRRP5V1_pkin_var2gen(pkin_var)
pkin_gen = zeros(10,1);
pkin_gen([1, 2, 3, 5, 6, 7, 8, 10]) = pkin_var;

pkin_gen(4) = 0.0; % a5
pkin_gen(9) = 0.0; % d5
