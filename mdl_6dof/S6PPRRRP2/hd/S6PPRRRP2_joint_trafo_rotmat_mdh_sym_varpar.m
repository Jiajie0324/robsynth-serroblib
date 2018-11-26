% Calculate homogenous joint transformation matrices for
% S6PPRRRP2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d3,d4,d5,theta1,theta2]';
% 
% Output:
% T_mdh [4x4x6]
%   homogenous transformation matrices for joint transformation (MDH)
%   Transformation matrices from one joint to the next (not: from base to joints)

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-23 14:51
% Revision: 76f9d5e39f14dc242b53c0d9d3d9db48bd8f37c0
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function T_mdh = S6PPRRRP2_joint_trafo_rotmat_mdh_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PPRRRP2_joint_trafo_rotmat_mdh_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PPRRRP2_joint_trafo_rotmat_mdh_sym_varpar: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From joint_transformation_mdh_rotmat_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-23 14:51:11
% EndTime: 2018-11-23 14:51:11
% DurationCPUTime: 0.04s
% Computational Cost: add. (12->12), mult. (12->12), div. (0->0), fcn. (40->14), ass. (0->15)
t120 = cos(qJ(3));
t119 = cos(qJ(4));
t118 = cos(qJ(5));
t117 = sin(qJ(3));
t116 = sin(qJ(4));
t115 = sin(qJ(5));
t114 = cos(pkin(6));
t113 = cos(pkin(7));
t112 = cos(pkin(11));
t111 = cos(pkin(12));
t110 = sin(pkin(6));
t109 = sin(pkin(7));
t108 = sin(pkin(11));
t107 = sin(pkin(12));
t1 = [t112, -t108, 0, 0; t108, t112, 0, 0; 0, 0, 1, qJ(1); 0, 0, 0, 1; t111, -t107, 0, pkin(1); t114 * t107, t114 * t111, -t110, -t110 * qJ(2); t110 * t107, t110 * t111, t114, t114 * qJ(2); 0, 0, 0, 1; t120, -t117, 0, pkin(2); t113 * t117, t113 * t120, -t109, -t109 * pkin(8); t109 * t117, t109 * t120, t113, t113 * pkin(8); 0, 0, 0, 1; t119, -t116, 0, pkin(3); 0, 0, -1, -pkin(9); t116, t119, 0, 0; 0, 0, 0, 1; t118, -t115, 0, pkin(4); 0, 0, -1, -pkin(10); t115, t118, 0, 0; 0, 0, 0, 1; 1, 0, 0, pkin(5); 0, 0, -1, -qJ(6); 0, 1, 0, 0; 0, 0, 0, 1;];
T_ges = t1;
%% Postprocessing: Reshape Output
% Convert Maple format (2-dimensional tensor) to Matlab format (3-dimensional tensor)
% Fallunterscheidung der Initialisierung für symbolische Eingabe
if isa([qJ; pkin], 'double'), T_mdh = NaN(4,4,6);             % numerisch
else,                         T_mdh = sym('xx', [4,4,6]); end % symbolisch

for i = 1:6
  T_mdh(:,:,i) = T_ges((i-1)*4+1 : 4*i, :);
end
