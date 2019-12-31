% Umwandlung der Kinematikparameter von S6RPRRPP1 zu S6RPRRPP1V1
% Eingabe:
% pkin_gen (10x1) double
%   Kinematikparameter (pkin) von S6RPRRPP1
%   pkin_gen=[a2 a3 a4 a5 a6 d1 d3 d4 theta2 theta5]
% Ausgabe:
% pkin_var (8x1) double
%   Kinematikparameter (pkin) von S6RPRRPP1V1
%   pkin_var=[a2 a3 a5 a6 d1 d3 theta2 theta5]
% I_gv (8x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S6RPRRPP1V1_pkin_gen2var(pkin_gen)
I_gv = [1, 2, 4, 5, 6, 7, 9, 10];
pkin_var = pkin_gen(I_gv);
