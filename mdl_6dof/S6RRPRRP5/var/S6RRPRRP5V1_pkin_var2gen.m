% Umwandlung der Kinematikparameter von S6RRPRRP5V1 zu S6RRPRRP5
% Eingabe:
% pkin_var (9x1) double
%   Kinematikparameter (pkin) von S6RRPRRP5V1
%   pkin_var=[a2 a3 a4 a6 alpha2 d1 d2 d4 theta3]
% Ausgabe:
% pkin_gen (11x1) double
%   Kinematikparameter (pkin) von S6RRPRRP5
%   pkin_gen=[a2 a3 a4 a5 a6 alpha2 d1 d2 d4 d5 theta3]
%
% Siehe auch: S6RRPRRP5_structural_kinematic_parameters.m
function pkin_gen = S6RRPRRP5V1_pkin_var2gen(pkin_var)
pkin_gen = zeros(11,1);
pkin_gen([1, 2, 3, 5, 6, 7, 8, 9, 11]) = pkin_var;

pkin_gen(4) = 0.0; % a5
pkin_gen(10) = 0.0; % d5
