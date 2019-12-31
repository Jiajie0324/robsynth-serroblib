% Umwandlung der Kinematikparameter von S5RRRPP1 zu S5RRRPP1V1
% Eingabe:
% pkin_gen (8x1) double
%   Kinematikparameter (pkin) von S5RRRPP1
%   pkin_gen=[a2 a3 a4 a5 d1 d2 d3 theta4]
% Ausgabe:
% pkin_var (6x1) double
%   Kinematikparameter (pkin) von S5RRRPP1V1
%   pkin_var=[a2 a4 a5 d1 d2 theta4]
% I_gv (6x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S5RRRPP1V1_pkin_gen2var(pkin_gen)
I_gv = [1, 3, 4, 5, 6, 8];
pkin_var = pkin_gen(I_gv);
