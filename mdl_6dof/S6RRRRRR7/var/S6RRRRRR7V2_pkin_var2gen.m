% Umwandlung der Kinematikparameter von S6RRRRRR7V2 zu S6RRRRRR7
% Eingabe:
% pkin_var (8x1) double
%   Kinematikparameter (pkin) von S6RRRRRR7V2
%   pkin_var=[a2 a5 a6 alpha2 d1 d2 d5 d6]
% Ausgabe:
% pkin_gen (12x1) double
%   Kinematikparameter (pkin) von S6RRRRRR7
%   pkin_gen=[a2 a3 a4 a5 a6 alpha2 d1 d2 d3 d4 d5 d6]
%
% Siehe auch: S6RRRRRR7_structural_kinematic_parameters.m
function pkin_gen = S6RRRRRR7V2_pkin_var2gen(pkin_var)
pkin_gen = zeros(12,1);
pkin_gen([1, 4, 5, 6, 7, 8, 11, 12]) = pkin_var;

pkin_gen(2) = 0.0; % a3
pkin_gen(3) = 0.0; % a4
pkin_gen(9) = 0.0; % d3
pkin_gen(10) = 0.0; % d4
