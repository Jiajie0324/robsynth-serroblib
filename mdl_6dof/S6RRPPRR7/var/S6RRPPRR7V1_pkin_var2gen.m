% Umwandlung der Kinematikparameter von S6RRPPRR7V1 zu S6RRPPRR7
% Eingabe:
% pkin_var (9x1) double
%   Kinematikparameter (pkin) von S6RRPPRR7V1
%   pkin_var=[a2 a3 a4 a5 a6 alpha2 d1 d2 d5]
% Ausgabe:
% pkin_gen (10x1) double
%   Kinematikparameter (pkin) von S6RRPPRR7
%   pkin_gen=[a2 a3 a4 a5 a6 alpha2 d1 d2 d5 d6]
%
% Siehe auch: S6RRPPRR7_structural_kinematic_parameters.m
function pkin_gen = S6RRPPRR7V1_pkin_var2gen(pkin_var)
pkin_gen = zeros(10,1);
pkin_gen([1, 2, 3, 4, 5, 6, 7, 8, 9]) = pkin_var;

pkin_gen(10) = 0.0; % d6
