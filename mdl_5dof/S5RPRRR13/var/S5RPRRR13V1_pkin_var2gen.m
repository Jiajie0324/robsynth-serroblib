% Umwandlung der Kinematikparameter von S5RPRRR13V1 zu S5RPRRR13
% Eingabe:
% pkin_var (6x1) double
%   Kinematikparameter (pkin) von S5RPRRR13V1
%   pkin_var=[a2 a3 a5 d1 d3 d5]
% Ausgabe:
% pkin_gen (8x1) double
%   Kinematikparameter (pkin) von S5RPRRR13
%   pkin_gen=[a2 a3 a4 a5 d1 d3 d4 d5]
%
% Siehe auch: S5RPRRR13_structural_kinematic_parameters.m
function pkin_gen = S5RPRRR13V1_pkin_var2gen(pkin_var)
pkin_gen = zeros(8,1);
pkin_gen([1, 2, 4, 5, 6, 8]) = pkin_var;

pkin_gen(3) = 0.0; % a4
pkin_gen(7) = 0.0; % d4
