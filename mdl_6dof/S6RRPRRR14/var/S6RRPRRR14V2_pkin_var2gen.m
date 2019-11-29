% Umwandlung der Kinematikparameter von S6RRPRRR14V2 zu S6RRPRRR14
% Eingabe:
% pkin_var (10x1) double
%   Kinematikparameter (pkin) von S6RRPRRR14V2
%   pkin_var=[a2 a3 a4 alpha2 alpha3 alpha4 d1 d2 d4 theta3]
% Ausgabe:
% pkin_gen (14x1) double
%   Kinematikparameter (pkin) von S6RRPRRR14
%   pkin_gen=[a2 a3 a4 a5 a6 alpha2 alpha3 alpha4 d1 d2 d4 d5 d6 theta3]
%
% Siehe auch: S6RRPRRR14_structural_kinematic_parameters.m
function pkin_gen = S6RRPRRR14V2_pkin_var2gen(pkin_var)
pkin_gen = zeros(14,1);
pkin_gen([1, 2, 3, 6, 7, 8, 9, 10, 11, 14]) = pkin_var;

pkin_gen(4) = 0.0; % a5
pkin_gen(5) = 0.0; % a6
pkin_gen(12) = 0.0; % d5
pkin_gen(13) = 0.0; % d6
