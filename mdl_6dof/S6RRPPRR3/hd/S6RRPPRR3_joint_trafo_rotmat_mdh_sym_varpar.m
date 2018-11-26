% Calculate homogenous joint transformation matrices for
% S6RRPPRR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d5,d6,theta3,theta4]';
% 
% Output:
% T_mdh [4x4x6]
%   homogenous transformation matrices for joint transformation (MDH)
%   Transformation matrices from one joint to the next (not: from base to joints)

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-23 16:50
% Revision: 76f9d5e39f14dc242b53c0d9d3d9db48bd8f37c0
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function T_mdh = S6RRPPRR3_joint_trafo_rotmat_mdh_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPRR3_joint_trafo_rotmat_mdh_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRPPRR3_joint_trafo_rotmat_mdh_sym_varpar: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From joint_transformation_mdh_rotmat_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-23 16:49:52
% EndTime: 2018-11-23 16:49:53
% DurationCPUTime: 0.04s
% Computational Cost: add. (10->10), mult. (6->6), div. (0->0), fcn. (34->14), ass. (0->15)
t99 = cos(qJ(1));
t98 = cos(qJ(2));
t97 = cos(qJ(5));
t96 = cos(qJ(6));
t95 = sin(qJ(1));
t94 = sin(qJ(2));
t93 = sin(qJ(5));
t92 = sin(qJ(6));
t91 = cos(pkin(6));
t90 = cos(pkin(11));
t89 = cos(pkin(12));
t88 = sin(pkin(6));
t87 = sin(pkin(11));
t86 = sin(pkin(12));
t1 = [t99, -t95, 0, 0; t95, t99, 0, 0; 0, 0, 1, pkin(7); 0, 0, 0, 1; t98, -t94, 0, pkin(1); t91 * t94, t91 * t98, -t88, -t88 * pkin(8); t88 * t94, t88 * t98, t91, t91 * pkin(8); 0, 0, 0, 1; t90, -t87, 0, pkin(2); t87, t90, 0, 0; 0, 0, 1, qJ(3); 0, 0, 0, 1; t89, -t86, 0, pkin(3); 0, 0, -1, -qJ(4); t86, t89, 0, 0; 0, 0, 0, 1; t97, -t93, 0, pkin(4); t93, t97, 0, 0; 0, 0, 1, pkin(9); 0, 0, 0, 1; t96, -t92, 0, pkin(5); 0, 0, -1, -pkin(10); t92, t96, 0, 0; 0, 0, 0, 1;];
T_ges = t1;
%% Postprocessing: Reshape Output
% Convert Maple format (2-dimensional tensor) to Matlab format (3-dimensional tensor)
% Fallunterscheidung der Initialisierung für symbolische Eingabe
if isa([qJ; pkin], 'double'), T_mdh = NaN(4,4,6);             % numerisch
else,                         T_mdh = sym('xx', [4,4,6]); end % symbolisch

for i = 1:6
  T_mdh(:,:,i) = T_ges((i-1)*4+1 : 4*i, :);
end
