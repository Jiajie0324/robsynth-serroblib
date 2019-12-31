% Umwandlung der Kinematikparameter von S5PPRRP3V5 zu S5PPRRP3
% Eingabe:
% pkin_var (5x1) double
%   Kinematikparameter (pkin) von S5PPRRP3V5
%   pkin_var=[a2 a3 a5 d3 theta1]
% Ausgabe:
% pkin_gen (8x1) double
%   Kinematikparameter (pkin) von S5PPRRP3
%   pkin_gen=[a2 a3 a4 a5 d3 d4 theta1 theta2]
%
% Siehe auch: S5PPRRP3_structural_kinematic_parameters.m
function pkin_gen = S5PPRRP3V5_pkin_var2gen(pkin_var)
pkin_gen = zeros(8,1);
pkin_gen([1, 2, 4, 5, 7]) = pkin_var;

pkin_gen(3) = 0.0; % a4
pkin_gen(6) = 0.0; % d4
pkin_gen(8) = pi/2; % theta2
