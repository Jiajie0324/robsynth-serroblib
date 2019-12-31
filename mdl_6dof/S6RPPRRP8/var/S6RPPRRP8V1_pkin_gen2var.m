% Umwandlung der Kinematikparameter von S6RPPRRP8 zu S6RPPRRP8V1
% Eingabe:
% pkin_gen (9x1) double
%   Kinematikparameter (pkin) von S6RPPRRP8
%   pkin_gen=[a2 a3 a4 a5 a6 d1 d4 d5 theta3]
% Ausgabe:
% pkin_var (7x1) double
%   Kinematikparameter (pkin) von S6RPPRRP8V1
%   pkin_var=[a2 a3 a4 a6 d1 d4 theta3]
% I_gv (7x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S6RPPRRP8V1_pkin_gen2var(pkin_gen)
I_gv = [1, 2, 3, 5, 6, 7, 9];
pkin_var = pkin_gen(I_gv);
