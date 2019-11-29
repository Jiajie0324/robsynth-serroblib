% Umwandlung der Kinematikparameter von S6RRRRRR6V1 zu S6RRRRRR6
% Eingabe:
% pkin_var (11x1) double
%   Kinematikparameter (pkin) von S6RRRRRR6V1
%   pkin_var=[a2 a3 a4 a5 a6 alpha2 d1 d2 d3 d4 d5]
% Ausgabe:
% pkin_gen (12x1) double
%   Kinematikparameter (pkin) von S6RRRRRR6
%   pkin_gen=[a2 a3 a4 a5 a6 alpha2 d1 d2 d3 d4 d5 d6]
%
% Siehe auch: S6RRRRRR6_structural_kinematic_parameters.m
function pkin_gen = S6RRRRRR6V1_pkin_var2gen(pkin_var)
pkin_gen = zeros(12,1);
pkin_gen([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]) = pkin_var;

pkin_gen(12) = 0.0; % d6
