% Umwandlung der Kinematikparameter von S6RRRRRP8V1 zu S6RRRRRP8
% Eingabe:
% pkin_var (7x1) double
%   Kinematikparameter (pkin) von S6RRRRRP8V1
%   pkin_var=[a2 a4 a6 alpha2 d1 d2 d4]
% Ausgabe:
% pkin_gen (11x1) double
%   Kinematikparameter (pkin) von S6RRRRRP8
%   pkin_gen=[a2 a3 a4 a5 a6 alpha2 d1 d2 d3 d4 d5]
%
% Siehe auch: S6RRRRRP8_structural_kinematic_parameters.m
function pkin_gen = S6RRRRRP8V1_pkin_var2gen(pkin_var)
pkin_gen = zeros(11,1);
pkin_gen([1, 3, 5, 6, 7, 8, 10]) = pkin_var;

pkin_gen(2) = 0.0; % a3
pkin_gen(4) = 0.0; % a5
pkin_gen(9) = 0.0; % d3
pkin_gen(11) = 0.0; % d5
