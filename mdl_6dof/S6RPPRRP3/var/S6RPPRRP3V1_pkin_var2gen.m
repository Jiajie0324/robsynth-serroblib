% Umwandlung der Kinematikparameter von S6RPPRRP3V1 zu S6RPPRRP3
% Eingabe:
% pkin_var (7x1) double
%   Kinematikparameter (pkin) von S6RPPRRP3V1
%   pkin_var=[a2 a3 a4 a6 d1 d4 theta2]
% Ausgabe:
% pkin_gen (9x1) double
%   Kinematikparameter (pkin) von S6RPPRRP3
%   pkin_gen=[a2 a3 a4 a5 a6 d1 d4 d5 theta2]
%
% Siehe auch: S6RPPRRP3_structural_kinematic_parameters.m
function pkin_gen = S6RPPRRP3V1_pkin_var2gen(pkin_var)
pkin_gen = zeros(9,1);
pkin_gen([1, 2, 3, 5, 6, 7, 9]) = pkin_var;

pkin_gen(4) = 0.0; % a5
pkin_gen(8) = 0.0; % d5
