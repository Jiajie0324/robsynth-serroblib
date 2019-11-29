% Umwandlung der Kinematikparameter von S6RRRPRR8V1 zu S6RRRPRR8
% Eingabe:
% pkin_var (11x1) double
%   Kinematikparameter (pkin) von S6RRRPRR8V1
%   pkin_var=[a2 a3 a4 a5 a6 alpha2 d1 d2 d3 d5 theta4]
% Ausgabe:
% pkin_gen (12x1) double
%   Kinematikparameter (pkin) von S6RRRPRR8
%   pkin_gen=[a2 a3 a4 a5 a6 alpha2 d1 d2 d3 d5 d6 theta4]
%
% Siehe auch: S6RRRPRR8_structural_kinematic_parameters.m
function pkin_gen = S6RRRPRR8V1_pkin_var2gen(pkin_var)
pkin_gen = zeros(12,1);
pkin_gen([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12]) = pkin_var;

pkin_gen(11) = 0.0; % d6
