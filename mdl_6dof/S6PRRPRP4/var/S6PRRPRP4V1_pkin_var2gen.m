% Umwandlung der Kinematikparameter von S6PRRPRP4V1 zu S6PRRPRP4
% Eingabe:
% pkin_var (8x1) double
%   Kinematikparameter (pkin) von S6PRRPRP4V1
%   pkin_var=[a2 a4 a5 a6 alpha2 d2 d5 theta1]
% Ausgabe:
% pkin_gen (10x1) double
%   Kinematikparameter (pkin) von S6PRRPRP4
%   pkin_gen=[a2 a3 a4 a5 a6 alpha2 d2 d3 d5 theta1]
%
% Siehe auch: S6PRRPRP4_structural_kinematic_parameters.m
function pkin_gen = S6PRRPRP4V1_pkin_var2gen(pkin_var)
pkin_gen = zeros(10,1);
pkin_gen([1, 3, 4, 5, 6, 7, 9, 10]) = pkin_var;

pkin_gen(2) = 0.0; % a3
pkin_gen(8) = 0.0; % d3
