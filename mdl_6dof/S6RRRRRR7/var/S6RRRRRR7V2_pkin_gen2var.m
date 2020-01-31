% Umwandlung der Kinematikparameter von S6RRRRRR7 zu S6RRRRRR7V2
% Eingabe:
% pkin_gen (12x1) double
%   Kinematikparameter (pkin) von S6RRRRRR7
%   pkin_gen=[a2 a3 a4 a5 a6 alpha2 d1 d2 d3 d4 d5 d6]
% Ausgabe:
% pkin_var (8x1) double
%   Kinematikparameter (pkin) von S6RRRRRR7V2
%   pkin_var=[a2 a5 a6 alpha2 d1 d2 d5 d6]
% I_gv (8x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S6RRRRRR7V2_pkin_gen2var(pkin_gen)
I_gv = [1, 4, 5, 6, 7, 8, 11, 12];
pkin_var = pkin_gen(I_gv);