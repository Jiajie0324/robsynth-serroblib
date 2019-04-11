% Umwandlung der Kinematikparameter von S6PRRRRR4V1 zu S6PRRRRR4
% Eingabe:
% pkin_var (12x1) double
%   Kinematikparameter (pkin) von S6PRRRRR4V1
% Ausgabe:
% pkin_gen (13x1) double
%   Kinematikparameter (pkin) von S6PRRRRR4
function pkin_gen = S6PRRRRR4V1_pkin_var2gen(pkin_var)
pkin_gen = zeros(13,1);
pkin_gen([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 13]) = pkin_var;
pkin_gen(12) = 0.0;
