% Umwandlung der Kinematikparameter von S6RPPRRR7V2 zu S6RPPRRR7
% Eingabe:
% pkin_var (8x1) double
%   Kinematikparameter (pkin) von S6RPPRRR7V2
%   pkin_var=[a2 a3 a4 a5 d1 d4 d5 theta3]
% Ausgabe:
% pkin_gen (10x1) double
%   Kinematikparameter (pkin) von S6RPPRRR7
%   pkin_gen=[a2 a3 a4 a5 a6 d1 d4 d5 d6 theta3]
%
% Siehe auch: S6RPPRRR7_structural_kinematic_parameters.m
function pkin_gen = S6RPPRRR7V2_pkin_var2gen(pkin_var)
pkin_gen = zeros(10,1);
pkin_gen([1, 2, 3, 4, 6, 7, 8, 10]) = pkin_var;

pkin_gen(5) = 0.0; % a6
pkin_gen(9) = 0.0; % d6
