% Umwandlung der Kinematikparameter von S4RRPR7V1 zu S4RRPR7
% Eingabe:
% pkin_var (5x1) double
%   Kinematikparameter (pkin) von S4RRPR7V1
%   pkin_var=[a3 a4 d1 d4 theta3]
% Ausgabe:
% pkin_gen (7x1) double
%   Kinematikparameter (pkin) von S4RRPR7
%   pkin_gen=[a2 a3 a4 d1 d2 d4 theta3]
%
% Siehe auch: S4RRPR7_structural_kinematic_parameters.m
function pkin_gen = S4RRPR7V1_pkin_var2gen(pkin_var)
pkin_gen = zeros(7,1);
pkin_gen([2, 3, 4, 6, 7]) = pkin_var;

pkin_gen(1) = 0.0; % a2
pkin_gen(5) = 0.0; % d2
