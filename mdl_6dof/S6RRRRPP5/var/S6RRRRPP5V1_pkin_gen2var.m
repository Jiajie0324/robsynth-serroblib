% Umwandlung der Kinematikparameter von S6RRRRPP5 zu S6RRRRPP5V1
% Eingabe:
% pkin_gen (9x1) double
%   Kinematikparameter (pkin) von S6RRRRPP5
%   pkin_gen=[a2 a3 a4 a5 a6 d1 d2 d3 d4]
% Ausgabe:
% pkin_var (5x1) double
%   Kinematikparameter (pkin) von S6RRRRPP5V1
%   pkin_var=[a4 a5 a6 d1 d4]
% I_gv (5x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S6RRRRPP5V1_pkin_gen2var(pkin_gen)
I_gv = [3, 4, 5, 6, 9];
pkin_var = pkin_gen(I_gv);
