% Umwandlung der Kinematikparameter von S6RPRPRR12 zu S6RPRPRR12V1
% Eingabe:
% pkin_gen (9x1) double
%   Kinematikparameter (pkin) von S6RPRPRR12
%   pkin_gen=[a2 a3 a4 a5 a6 d1 d3 d5 d6]
% Ausgabe:
% pkin_var (8x1) double
%   Kinematikparameter (pkin) von S6RPRPRR12V1
%   pkin_var=[a2 a3 a4 a5 a6 d1 d3 d5]
% I_gv (8x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S6RPRPRR12V1_pkin_gen2var(pkin_gen)
I_gv = [1, 2, 3, 4, 5, 6, 7, 8];
pkin_var = pkin_gen(I_gv);
