% Umwandlung der Kinematikparameter von S4RRRP7 zu S4RRRP7V1
% Eingabe:
% pkin_gen (6x1) double
%   Kinematikparameter (pkin) von S4RRRP7
%   pkin_gen=[a2 a3 a4 d1 d2 d3]
% Ausgabe:
% pkin_var (2x1) double
%   Kinematikparameter (pkin) von S4RRRP7V1
%   pkin_var=[a4 d1]
% I_gv (2x1)
%   Vektor mit Indizes zur Selektion von Kinematikparametern
function [pkin_var, I_gv] = S4RRRP7V1_pkin_gen2var(pkin_gen)
I_gv = [3, 4];
pkin_var = pkin_gen(I_gv);
