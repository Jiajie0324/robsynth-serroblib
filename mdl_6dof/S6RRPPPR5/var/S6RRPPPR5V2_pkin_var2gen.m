% Umwandlung der Kinematikparameter von S6RRPPPR5V2 zu S6RRPPPR5
% Eingabe:
% pkin_var (7x1) double
%   Kinematikparameter (pkin) von S6RRPPPR5V2
%   pkin_var=[a3 a4 a5 a6 d1 d6 theta3]
% Ausgabe:
% pkin_gen (9x1) double
%   Kinematikparameter (pkin) von S6RRPPPR5
%   pkin_gen=[a2 a3 a4 a5 a6 d1 d2 d6 theta3]
%
% Siehe auch: S6RRPPPR5_structural_kinematic_parameters.m
function pkin_gen = S6RRPPPR5V2_pkin_var2gen(pkin_var)
pkin_gen = zeros(9,1);
pkin_gen([2, 3, 4, 5, 6, 8, 9]) = pkin_var;

pkin_gen(1) = 0.0; % a2
pkin_gen(7) = 0.0; % d2
