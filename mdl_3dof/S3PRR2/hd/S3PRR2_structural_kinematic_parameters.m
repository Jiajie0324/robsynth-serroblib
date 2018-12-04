% Return Structural Kinematic Parameters of the Robot 
% S3PRR2
%
% Output:
% v_mdh [3x1]
%   Vorgänger-Indizes (0=Basis)
% sigma_mdh [3x1]
%   Dregelenk = 0, Schubgelenk = 1
% mu_mdh [3x1]
%   Aktives Gelenk = 1, Passiv = 0
% NL [1x1]
%   Anzahl der Starrkörper (inklusive Basis)
% NKP [1x1]
%   Anzahl der Kinematikparameter im Vektor `pkin`

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-12-03 19:26
% Revision: d48b0a2e5a58b84c602962b686e619ad34ecf1f0 (2018-11-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function [v_mdh, sigma_mdh, mu_mdh, NL, NKP] = S3PRR2_structural_kinematic_parameters()

% Aus parameters_mdh_v_matlab.m
t1 = [0; 1; 2;];
v_mdh = uint8(t1);

% Aus parameters_mdh_sigma_matlab.m
t1 = [1; 0; 0;];
sigma_mdh = t1;

% Aus parameters_mdh_mu_matlab.m
t1 = [1; 1; 1;];
mu_mdh = t1;

% Aus Roboterdefinition
% Anzahl der Robotersegmente (inkl Basis)
NL = 4;
% Anzahl der Kinematikparameter
% pkin = [a2 a3 d2 d3]'
NKP = 4;
