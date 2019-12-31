% Umwandlung der Kinematikparameter von S6RPPRRR3V2 zu S6RPPRRR3
% Eingabe:
% pkin_var (8x1) double
%   Kinematikparameter (pkin) von S6RPPRRR3V2
%   pkin_var=[a2 a3 a4 a6 d1 d4 d6 theta2]
% Ausgabe:
% pkin_gen (10x1) double
%   Kinematikparameter (pkin) von S6RPPRRR3
%   pkin_gen=[a2 a3 a4 a5 a6 d1 d4 d5 d6 theta2]
%
% Siehe auch: S6RPPRRR3_structural_kinematic_parameters.m
function pkin_gen = S6RPPRRR3V2_pkin_var2gen(pkin_var)
pkin_gen = zeros(10,1);
pkin_gen([1, 2, 3, 5, 6, 7, 9, 10]) = pkin_var;

pkin_gen(4) = 0.0; % a5
pkin_gen(8) = 0.0; % d5
