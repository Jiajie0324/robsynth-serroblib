% Umwandlung der Kinematikparameter von S6RRRRRR3 zu S6RRRRRR3V2
% Eingabe:
% pkin_gen (11x1) double
%   Kinematikparameter (pkin) von S6RRRRRR3
%   pkin_gen=[a2 a3 a4 a5 a6 d1 d2 d3 d4 d5 d6]
% Ausgabe:
% pkin_var (7x1) double
%   Kinematikparameter (pkin) von S6RRRRRR3V2
%   pkin_var=[a3 a5 a6 d1 d3 d5 d6]
% I_gv (7x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S6RRRRRR3V2_pkin_gen2var(pkin_gen)
I_gv = [2, 4, 5, 6, 8, 10, 11];
pkin_var = pkin_gen(I_gv);
