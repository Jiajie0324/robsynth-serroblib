% Umwandlung der Kinematikparameter von S4RRRR4V2 zu S4RRRR4
% Eingabe:
% pkin_var (5x1) double
%   Kinematikparameter (pkin) von S4RRRR4V2
%   pkin_var=[a2 a3 d1 d2 d3]
% Ausgabe:
% pkin_gen (7x1) double
%   Kinematikparameter (pkin) von S4RRRR4
%   pkin_gen=[a2 a3 a4 d1 d2 d3 d4]
%
% Siehe auch: S4RRRR4_structural_kinematic_parameters.m
function pkin_gen = S4RRRR4V2_pkin_var2gen(pkin_var)
pkin_gen = zeros(7,1);
pkin_gen([1, 2, 4, 5, 6]) = pkin_var;

pkin_gen(3) = 0.0; % a4
pkin_gen(7) = 0.0; % d4
