% Umwandlung der Kinematikparameter von S6RPPRPR8V1 zu S6RPPRPR8
% Eingabe:
% pkin_var (8x1) double
%   Kinematikparameter (pkin) von S6RPPRPR8V1
% Ausgabe:
% pkin_gen (9x1) double
%   Kinematikparameter (pkin) von S6RPPRPR8
function pkin_gen = S6RPPRPR8V1_pkin_var2gen(pkin_var)
pkin_gen = zeros(9,1);
pkin_gen([1, 2, 3, 4, 5, 6, 7, 9]) = pkin_var;
pkin_gen(8) = 0.0;
