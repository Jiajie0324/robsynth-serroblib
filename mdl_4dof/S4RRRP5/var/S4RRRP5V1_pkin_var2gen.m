% Umwandlung der Kinematikparameter von S4RRRP5V1 zu S4RRRP5
% Eingabe:
% pkin_var (4x1) double
%   Kinematikparameter (pkin) von S4RRRP5V1
%   pkin_var=[a3 a4 d1 d3]
% Ausgabe:
% pkin_gen (6x1) double
%   Kinematikparameter (pkin) von S4RRRP5
%   pkin_gen=[a2 a3 a4 d1 d2 d3]
%
% Siehe auch: S4RRRP5_structural_kinematic_parameters.m
function pkin_gen = S4RRRP5V1_pkin_var2gen(pkin_var)
pkin_gen = zeros(6,1);
pkin_gen([2, 3, 4, 6]) = pkin_var;

pkin_gen(1) = 0.0; % a2
pkin_gen(5) = 0.0; % d2
