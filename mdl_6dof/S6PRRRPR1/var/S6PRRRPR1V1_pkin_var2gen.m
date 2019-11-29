% Umwandlung der Kinematikparameter von S6PRRRPR1V1 zu S6PRRRPR1
% Eingabe:
% pkin_var (11x1) double
%   Kinematikparameter (pkin) von S6PRRRPR1V1
%   pkin_var=[a2 a3 a4 a5 a6 alpha2 d2 d3 d4 theta1 theta5]
% Ausgabe:
% pkin_gen (12x1) double
%   Kinematikparameter (pkin) von S6PRRRPR1
%   pkin_gen=[a2 a3 a4 a5 a6 alpha2 d2 d3 d4 d6 theta1 theta5]
%
% Siehe auch: S6PRRRPR1_structural_kinematic_parameters.m
function pkin_gen = S6PRRRPR1V1_pkin_var2gen(pkin_var)
pkin_gen = zeros(12,1);
pkin_gen([1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12]) = pkin_var;

pkin_gen(10) = 0.0; % d6
