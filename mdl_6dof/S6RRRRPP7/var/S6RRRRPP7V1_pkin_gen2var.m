% Umwandlung der Kinematikparameter von S6RRRRPP7 zu S6RRRRPP7V1
% Eingabe:
% pkin_gen (11x1) double
%   Kinematikparameter (pkin) von S6RRRRPP7
%   pkin_gen=[a2 a3 a4 a5 a6 alpha2 d1 d2 d3 d4 theta5]
% Ausgabe:
% pkin_var (7x1) double
%   Kinematikparameter (pkin) von S6RRRRPP7V1
%   pkin_var=[a2 a5 a6 alpha2 d1 d2 theta5]
% I_gv (7x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S6RRRRPP7V1_pkin_gen2var(pkin_gen)
I_gv = [1, 4, 5, 6, 7, 8, 11];
pkin_var = pkin_gen(I_gv);
