% Convert vector of kinematic parameters to modified DH parameters of
% S5RRRRR3
%
% Input:
% pkin [5x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a3,a4,a5,d1,d4]';
%
% Output: MDH parameter in order of transformation
% beta_mdh [5x1]
%   Rotation around z
% b_mdh [5x1]
%   Translation along z
% alpha_mdh [5x1]
%   Rotation around x
% a_mdh [5x1]
%   Translation along x
% theta_mdh [5x1]
%   Rotation around z
% d_mdh [5x1]
%   Translation along z
% qoffset_mdh [5x1]
%   Offset on joint coordinate q

% Quelle: HybrDyn-Toolbox
% Datum: 2019-07-18 17:19
% Revision: 08c8d617a845f5dd194efdf9aca2774760f7818f (2019-07-16)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function [beta_mdh, b_mdh, alpha_mdh, a_mdh, theta_mdh, d_mdh, qoffset_mdh] = S5RRRRR3_pkin2mdhparam(pkin)

%% Init
%#codegen
%$cgargs {zeros(5,1)}
assert(isreal(pkin) && all(size(pkin) == [5 1]), ...
  'S5RRRRR3_pkin2mdhparam: Kinematic parameters pkin have to be [5x1] (double)');

%% Zuweisung der Parameter


% Aus parameters_mdh_beta_matlab.m
t1 = [0; 0; 0; 0; 0;];
beta_mdh = t1;

% Aus parameters_mdh_b_matlab.m
t1 = [0; 0; 0; 0; 0;];
b_mdh = t1;

% Aus parameters_mdh_alpha_matlab.m
t1 = pi / 0.2e1;
t2 = [0; t1; 0; t1; 0;];
alpha_mdh = t2;

% Aus parameters_mdh_a_matlab.m
t1 = [0; 0; pkin(1); pkin(2); pkin(3);];
a_mdh = t1;

% Aus parameters_mdh_theta_matlab.m
t1 = [0; 0; 0; 0; 0;];
theta_mdh = t1;

% Aus parameters_mdh_d_matlab.m
t1 = [pkin(4); 0; 0; pkin(5); 0;];
d_mdh = t1;

% Aus parameters_mdh_qoffset_matlab.m
t1 = [0; 0; 0; 0; 0;];
qoffset_mdh = t1;
