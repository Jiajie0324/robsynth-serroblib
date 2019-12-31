% Umwandlung der Kinematikparameter von S6RPRRPP8V1 zu S6RPRRPP8
% Eingabe:
% pkin_var (6x1) double
%   Kinematikparameter (pkin) von S6RPRRPP8V1
%   pkin_var=[a2 a3 a5 a6 d1 d3]
% Ausgabe:
% pkin_gen (8x1) double
%   Kinematikparameter (pkin) von S6RPRRPP8
%   pkin_gen=[a2 a3 a4 a5 a6 d1 d3 d4]
%
% Siehe auch: S6RPRRPP8_structural_kinematic_parameters.m
function pkin_gen = S6RPRRPP8V1_pkin_var2gen(pkin_var)
pkin_gen = zeros(8,1);
pkin_gen([1, 2, 4, 5, 6, 7]) = pkin_var;

pkin_gen(3) = 0.0; % a4
pkin_gen(8) = 0.0; % d4
