% Umwandlung der Kinematikparameter von S6RRRRPR7V2 zu S6RRRRPR7
% Eingabe:
% pkin_var (10x1) double
%   Kinematikparameter (pkin) von S6RRRRPR7V2
%   pkin_var=[a2 a4 a5 a6 alpha2 d1 d2 d4 d6 theta5]
% Ausgabe:
% pkin_gen (12x1) double
%   Kinematikparameter (pkin) von S6RRRRPR7
%   pkin_gen=[a2 a3 a4 a5 a6 alpha2 d1 d2 d3 d4 d6 theta5]
%
% Siehe auch: S6RRRRPR7_structural_kinematic_parameters.m
function pkin_gen = S6RRRRPR7V2_pkin_var2gen(pkin_var)
pkin_gen = zeros(12,1);
pkin_gen([1, 3, 4, 5, 6, 7, 8, 10, 11, 12]) = pkin_var;

pkin_gen(2) = 0.0; % a3
pkin_gen(9) = 0.0; % d3
