% Umwandlung der Kinematikparameter von S6RRPRPR13V1 zu S6RRPRPR13
% Eingabe:
% pkin_var (10x1) double
%   Kinematikparameter (pkin) von S6RRPRPR13V1
%   pkin_var=[a2 a3 a4 a5 a6 alpha2 d1 d2 d4 theta5]
% Ausgabe:
% pkin_gen (11x1) double
%   Kinematikparameter (pkin) von S6RRPRPR13
%   pkin_gen=[a2 a3 a4 a5 a6 alpha2 d1 d2 d4 d6 theta5]
%
% Siehe auch: S6RRPRPR13_structural_kinematic_parameters.m
function pkin_gen = S6RRPRPR13V1_pkin_var2gen(pkin_var)
pkin_gen = zeros(11,1);
pkin_gen([1, 2, 3, 4, 5, 6, 7, 8, 9, 11]) = pkin_var;

pkin_gen(10) = 0.0; % d6
