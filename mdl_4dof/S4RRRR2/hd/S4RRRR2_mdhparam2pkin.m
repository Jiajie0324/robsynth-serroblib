% Convert vector of modified DH parameters to kinematic parameter vector for
% S4RRRR2
%
% Input:
% beta_mdh [4x1]
%   Rotation around z
% b_mdh [4x1]
%   Translation along z
% alpha_mdh [4x1]
%   Rotation around x
% a_mdh [4x1]
%   Translation along x
% theta_mdh [4x1]
%   Rotation around z
% d_mdh [4x1]
%   Translation along z
% qoffset_mdh [4x1]
%   Offset on joint coordinate q
%
% Output:
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d2,d3,d4]';

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 17:23
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function pkin = S4RRRR2_mdhparam2pkin(beta_mdh, b_mdh, alpha_mdh, a_mdh, theta_mdh, d_mdh, qoffset_mdh)

% Aus parameter_kin_from_mdh_matlab.m
t1 = [a_mdh(2); a_mdh(3); a_mdh(4); d_mdh(1); d_mdh(2); d_mdh(3); d_mdh(4);];
pkin = t1;
