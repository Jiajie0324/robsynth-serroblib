% Umwandlung der Kinematikparameter von S6RPRPPR2V1 zu S6RPRPPR2
% Eingabe:
% pkin_var (9x1) double
%   Kinematikparameter (pkin) von S6RPRPPR2V1
%   pkin_var=[a2 a3 a4 a5 a6 d1 d3 theta2 theta4]
% Ausgabe:
% pkin_gen (10x1) double
%   Kinematikparameter (pkin) von S6RPRPPR2
%   pkin_gen=[a2 a3 a4 a5 a6 d1 d3 d6 theta2 theta4]
%
% Siehe auch: S6RPRPPR2_structural_kinematic_parameters.m
function pkin_gen = S6RPRPPR2V1_pkin_var2gen(pkin_var)
pkin_gen = zeros(10,1);
pkin_gen([1, 2, 3, 4, 5, 6, 7, 9, 10]) = pkin_var;

pkin_gen(8) = 0.0; % d6
