% Umwandlung der Kinematikparameter von S6RPRPRR7V1 zu S6RPRPRR7
% Eingabe:
% pkin_var (9x1) double
%   Kinematikparameter (pkin) von S6RPRPRR7V1
% Ausgabe:
% pkin_gen (10x1) double
%   Kinematikparameter (pkin) von S6RPRPRR7
function pkin_gen = S6RPRPRR7V1_pkin_var2gen(pkin_var)
pkin_gen = zeros(10,1);
pkin_gen([1, 2, 3, 4, 5, 6, 7, 8, 10]) = pkin_var;
pkin_gen(9) = 0.0;
