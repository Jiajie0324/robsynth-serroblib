% Convert vector of kinematic parameters to modified DH parameters of
% S3PPR1
%
% Input:
% pkin [3x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,d3]';
%
% Output: MDH parameter in order of transformation
% beta_mdh [3x1]
%   Rotation around z
% b_mdh [3x1]
%   Translation along z
% alpha_mdh [3x1]
%   Rotation around x
% a_mdh [3x1]
%   Translation along x
% theta_mdh [3x1]
%   Rotation around z
% d_mdh [3x1]
%   Translation along z
% qoffset_mdh [3x1]
%   Offset on joint coordinate q

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 10:10
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function [beta_mdh, b_mdh, alpha_mdh, a_mdh, theta_mdh, d_mdh, qoffset_mdh] = S3PPR1_pkin2mdhparam(pkin)


% Aus parameters_mdh_beta_matlab.m
t1 = [pi; 0; 0;];
beta_mdh = t1;

% Aus parameters_mdh_b_matlab.m
t1 = [0; 0; 0;];
b_mdh = t1;

% Aus parameters_mdh_alpha_matlab.m
t1 = pi / 0.2e1;
t2 = [t1; t1; t1;];
alpha_mdh = t2;

% Aus parameters_mdh_a_matlab.m
t1 = [0; pkin(1); pkin(2);];
a_mdh = t1;

% Aus parameters_mdh_theta_matlab.m
t1 = [-pi / 0.2e1; pi / 0.2e1; 0;];
theta_mdh = t1;

% Aus parameters_mdh_d_matlab.m
t1 = [0; 0; pkin(3);];
d_mdh = t1;

% Aus parameters_mdh_qoffset_matlab.m
t1 = [0; 0; 0;];
qoffset_mdh = t1;
