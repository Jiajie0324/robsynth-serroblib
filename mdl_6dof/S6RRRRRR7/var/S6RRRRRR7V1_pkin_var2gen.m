% Umwandlung der Kinematikparameter von S6RRRRRR7V1 zu S6RRRRRR7
% Eingabe:
% pkin_var (11x1) double
%   Kinematikparameter (pkin) von S6RRRRRR7V1
% Ausgabe:
% pkin_gen (12x1) double
%   Kinematikparameter (pkin) von S6RRRRRR7
function pkin_gen = S6RRRRRR7V1_pkin_var2gen(pkin_var)
pkin_gen = zeros(12,1);
pkin_gen([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]) = pkin_var;
pkin_gen(12) = 0.0;
