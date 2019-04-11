% Umwandlung der Kinematikparameter von S3RPR1 zu S3RPR1V1
% Eingabe:
% pkin_gen (4x1) double
%   Kinematikparameter (pkin) von S3RPR1
% Ausgabe:
% pkin_var (3x1) double
%   Kinematikparameter (pkin) von S3RPR1V1
% I_gv (3x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S3RPR1V1_pkin_gen2var(pkin_gen)
I_gv = [1, 2, 3];
pkin_var = pkin_gen(I_gv);
