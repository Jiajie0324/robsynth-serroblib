% Umwandlung der Kinematikparameter von S4RRRP5 zu S4RRRP5V1
% Eingabe:
% pkin_gen (6x1) double
%   Kinematikparameter (pkin) von S4RRRP5
%   pkin_gen=[a2 a3 a4 d1 d2 d3]
% Ausgabe:
% pkin_var (4x1) double
%   Kinematikparameter (pkin) von S4RRRP5V1
%   pkin_var=[a3 a4 d1 d3]
% I_gv (4x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S4RRRP5V1_pkin_gen2var(pkin_gen)
I_gv = [2, 3, 4, 6];
pkin_var = pkin_gen(I_gv);
