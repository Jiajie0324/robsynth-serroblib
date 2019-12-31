% Umwandlung der Kinematikparameter von S6RRPPRR2V2 zu S6RRPPRR2
% Eingabe:
% pkin_var (9x1) double
%   Kinematikparameter (pkin) von S6RRPPRR2V2
%   pkin_var=[a3 a4 a5 a6 d1 d5 d6 theta3 theta4]
% Ausgabe:
% pkin_gen (11x1) double
%   Kinematikparameter (pkin) von S6RRPPRR2
%   pkin_gen=[a2 a3 a4 a5 a6 d1 d2 d5 d6 theta3 theta4]
%
% Siehe auch: S6RRPPRR2_structural_kinematic_parameters.m
function pkin_gen = S6RRPPRR2V2_pkin_var2gen(pkin_var)
pkin_gen = zeros(11,1);
pkin_gen([2, 3, 4, 5, 6, 8, 9, 10, 11]) = pkin_var;

pkin_gen(1) = 0.0; % a2
pkin_gen(7) = 0.0; % d2
