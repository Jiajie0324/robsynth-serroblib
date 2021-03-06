% Umwandlung der Kinematikparameter von S6RRRRPP1V2 zu S6RRRRPP1
% Eingabe:
% pkin_var (8x1) double
%   Kinematikparameter (pkin) von S6RRRRPP1V2
%   pkin_var=[a2 a3 a5 a6 d1 d2 d3 theta5]
% Ausgabe:
% pkin_gen (10x1) double
%   Kinematikparameter (pkin) von S6RRRRPP1
%   pkin_gen=[a2 a3 a4 a5 a6 d1 d2 d3 d4 theta5]
%
% Siehe auch: S6RRRRPP1_structural_kinematic_parameters.m
function pkin_gen = S6RRRRPP1V2_pkin_var2gen(pkin_var)
pkin_gen = zeros(10,1);
pkin_gen([1, 2, 4, 5, 6, 7, 8, 10]) = pkin_var;

pkin_gen(3) = 0.0; % a4
pkin_gen(9) = 0.0; % d4
