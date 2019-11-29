% Umwandlung der Kinematikparameter von S6PRRPRR7V1 zu S6PRRPRR7
% Eingabe:
% pkin_var (10x1) double
%   Kinematikparameter (pkin) von S6PRRPRR7V1
%   pkin_var=[a2 a3 a4 a5 a6 alpha2 d2 d3 d5 theta1]
% Ausgabe:
% pkin_gen (11x1) double
%   Kinematikparameter (pkin) von S6PRRPRR7
%   pkin_gen=[a2 a3 a4 a5 a6 alpha2 d2 d3 d5 d6 theta1]
%
% Siehe auch: S6PRRPRR7_structural_kinematic_parameters.m
function pkin_gen = S6PRRPRR7V1_pkin_var2gen(pkin_var)
pkin_gen = zeros(11,1);
pkin_gen([1, 2, 3, 4, 5, 6, 7, 8, 9, 11]) = pkin_var;

pkin_gen(10) = 0.0; % d6
