% Umwandlung der Kinematikparameter von S6RPRRPR3V2 zu S6RPRRPR3
% Eingabe:
% pkin_var (8x1) double
%   Kinematikparameter (pkin) von S6RPRRPR3V2
%   pkin_var=[a2 a3 a5 a6 d1 d3 d6 theta2]
% Ausgabe:
% pkin_gen (10x1) double
%   Kinematikparameter (pkin) von S6RPRRPR3
%   pkin_gen=[a2 a3 a4 a5 a6 d1 d3 d4 d6 theta2]
%
% Siehe auch: S6RPRRPR3_structural_kinematic_parameters.m
function pkin_gen = S6RPRRPR3V2_pkin_var2gen(pkin_var)
pkin_gen = zeros(10,1);
pkin_gen([1, 2, 4, 5, 6, 7, 9, 10]) = pkin_var;

pkin_gen(3) = 0.0; % a4
pkin_gen(8) = 0.0; % d4
