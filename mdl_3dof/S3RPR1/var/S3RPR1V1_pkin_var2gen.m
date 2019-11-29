% Umwandlung der Kinematikparameter von S3RPR1V1 zu S3RPR1
% Eingabe:
% pkin_var (3x1) double
%   Kinematikparameter (pkin) von S3RPR1V1
%   pkin_var=[a2 a3 d1]
% Ausgabe:
% pkin_gen (4x1) double
%   Kinematikparameter (pkin) von S3RPR1
%   pkin_gen=[a2 a3 d1 d3]
%
% Siehe auch: S3RPR1_structural_kinematic_parameters.m
function pkin_gen = S3RPR1V1_pkin_var2gen(pkin_var)
pkin_gen = zeros(4,1);
pkin_gen([1, 2, 3]) = pkin_var;

pkin_gen(4) = 0.0; % d3
