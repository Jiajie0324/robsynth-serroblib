% Umwandlung der Kinematikparameter von S6PRRRRR6V2 zu S6PRRRRR6
% Eingabe:
% pkin_var (10x1) double
%   Kinematikparameter (pkin) von S6PRRRRR6V2
%   pkin_var=[a2 a3 a4 alpha2 alpha3 alpha4 d2 d3 d4 theta1]
% Ausgabe:
% pkin_gen (14x1) double
%   Kinematikparameter (pkin) von S6PRRRRR6
%   pkin_gen=[a2 a3 a4 a5 a6 alpha2 alpha3 alpha4 d2 d3 d4 d5 d6 theta1]
%
% Siehe auch: S6PRRRRR6_structural_kinematic_parameters.m
function pkin_gen = S6PRRRRR6V2_pkin_var2gen(pkin_var)
pkin_gen = zeros(14,1);
pkin_gen([1, 2, 3, 6, 7, 8, 9, 10, 11, 14]) = pkin_var;

pkin_gen(4) = 0.0; % a5
pkin_gen(5) = 0.0; % a6
pkin_gen(12) = 0.0; % d5
pkin_gen(13) = 0.0; % d6
