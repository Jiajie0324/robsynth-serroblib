% Umwandlung der Kinematikparameter von S6RPRRRP1V1 zu S6RPRRRP1
% Eingabe:
% pkin_var (8x1) double
%   Kinematikparameter (pkin) von S6RPRRRP1V1
%   pkin_var=[a2 a3 a4 a6 d1 d3 d4 theta2]
% Ausgabe:
% pkin_gen (10x1) double
%   Kinematikparameter (pkin) von S6RPRRRP1
%   pkin_gen=[a2 a3 a4 a5 a6 d1 d3 d4 d5 theta2]
%
% Siehe auch: S6RPRRRP1_structural_kinematic_parameters.m
function pkin_gen = S6RPRRRP1V1_pkin_var2gen(pkin_var)
pkin_gen = zeros(10,1);
pkin_gen([1, 2, 3, 5, 6, 7, 8, 10]) = pkin_var;

pkin_gen(4) = 0.0; % a5
pkin_gen(9) = 0.0; % d5
