% Return Structural Kinematic Parameters of the Robot 
% S5PRRPR6
%
% Output:
% v_mdh [5x1]
%   Vorgänger-Indizes (0=Basis)
% sigma_mdh [5x1]
%   Dregelenk = 0, Schubgelenk = 1
% mu_mdh [5x1]
%   Aktives Gelenk = 1, Passiv = 0
% NL [1x1]
%   Anzahl der Starrkörper (inklusive Basis)
% NKP [1x1]
%   Anzahl der Kinematikparameter im Vektor `pkin`
% NQJ [1x1]
%   Anzahl der Minimalkoordinaten der kinematischen Kette
% pkin_names (1x10) cell
%   Namen aller Kinematik-Parameter im Vektor `pkin`

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 16:33
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function [v_mdh, sigma_mdh, mu_mdh, NL, NKP, NQJ, pkin_names] = S5PRRPR6_structural_kinematic_parameters()

% Aus parameters_mdh_v_matlab.m
t1 = [0; 1; 2; 3; 4;];
v_mdh = uint8(t1);

% Aus parameters_mdh_sigma_matlab.m
t1 = [1; 0; 0; 1; 0;];
sigma_mdh = t1;

% Aus parameters_mdh_mu_matlab.m
t1 = [1; 1; 1; 1; 1;];
mu_mdh = t1;

% Aus Roboterdefinition
% Anzahl der Robotersegmente (inkl Basis)
NL = 6;
% Anzahl der Kinematikparameter
NKP = 10;
% Anzahl der Minimalkoordinaten (für hybride Systeme)
NQJ = 5;
% Namen der Kinematikparameter
pkin_names = {'a2', 'a3', 'a4', 'a5', 'alpha2', 'd2', 'd3', 'd5', 'theta1', 'theta4'};
