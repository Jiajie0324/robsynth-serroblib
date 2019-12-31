% Umwandlung der Kinematikparameter von S6RPPRRR1V2 zu S6RPPRRR1
% Eingabe:
% pkin_var (9x1) double
%   Kinematikparameter (pkin) von S6RPPRRR1V2
%   pkin_var=[a2 a3 a4 a5 d1 d4 d5 theta2 theta3]
% Ausgabe:
% pkin_gen (11x1) double
%   Kinematikparameter (pkin) von S6RPPRRR1
%   pkin_gen=[a2 a3 a4 a5 a6 d1 d4 d5 d6 theta2 theta3]
%
% Siehe auch: S6RPPRRR1_structural_kinematic_parameters.m
function pkin_gen = S6RPPRRR1V2_pkin_var2gen(pkin_var)
pkin_gen = zeros(11,1);
pkin_gen([1, 2, 3, 4, 6, 7, 8, 10, 11]) = pkin_var;

pkin_gen(5) = 0.0; % a6
pkin_gen(9) = 0.0; % d6
