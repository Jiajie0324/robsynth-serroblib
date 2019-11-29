% Umwandlung der Kinematikparameter von S6RRRPPR3V1 zu S6RRRPPR3
% Eingabe:
% pkin_var (8x1) double
%   Kinematikparameter (pkin) von S6RRRPPR3V1
%   pkin_var=[a2 a3 a4 a5 a6 d1 d2 d3]
% Ausgabe:
% pkin_gen (9x1) double
%   Kinematikparameter (pkin) von S6RRRPPR3
%   pkin_gen=[a2 a3 a4 a5 a6 d1 d2 d3 d6]
%
% Siehe auch: S6RRRPPR3_structural_kinematic_parameters.m
function pkin_gen = S6RRRPPR3V1_pkin_var2gen(pkin_var)
pkin_gen = zeros(9,1);
pkin_gen([1, 2, 3, 4, 5, 6, 7, 8]) = pkin_var;

pkin_gen(9) = 0.0; % d6
