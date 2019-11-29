% Umwandlung der Kinematikparameter von S6RPPPRR4V1 zu S6RPPPRR4
% Eingabe:
% pkin_var (8x1) double
%   Kinematikparameter (pkin) von S6RPPPRR4V1
%   pkin_var=[a2 a3 a4 a5 a6 d1 d5 theta3]
% Ausgabe:
% pkin_gen (9x1) double
%   Kinematikparameter (pkin) von S6RPPPRR4
%   pkin_gen=[a2 a3 a4 a5 a6 d1 d5 d6 theta3]
%
% Siehe auch: S6RPPPRR4_structural_kinematic_parameters.m
function pkin_gen = S6RPPPRR4V1_pkin_var2gen(pkin_var)
pkin_gen = zeros(9,1);
pkin_gen([1, 2, 3, 4, 5, 6, 7, 9]) = pkin_var;

pkin_gen(8) = 0.0; % d6
