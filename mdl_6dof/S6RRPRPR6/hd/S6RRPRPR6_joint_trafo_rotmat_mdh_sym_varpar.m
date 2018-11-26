% Calculate homogenous joint transformation matrices for
% S6RRPRPR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d6,theta3]';
% 
% Output:
% T_mdh [4x4x6]
%   homogenous transformation matrices for joint transformation (MDH)
%   Transformation matrices from one joint to the next (not: from base to joints)

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-23 17:04
% Revision: 76f9d5e39f14dc242b53c0d9d3d9db48bd8f37c0
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function T_mdh = S6RRPRPR6_joint_trafo_rotmat_mdh_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPR6_joint_trafo_rotmat_mdh_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPRPR6_joint_trafo_rotmat_mdh_sym_varpar: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From joint_transformation_mdh_rotmat_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-23 17:03:36
% EndTime: 2018-11-23 17:03:36
% DurationCPUTime: 0.04s
% Computational Cost: add. (10->10), mult. (6->6), div. (0->0), fcn. (30->12), ass. (0->13)
t95 = cos(qJ(1));
t94 = cos(qJ(2));
t93 = cos(qJ(4));
t92 = cos(qJ(6));
t91 = sin(qJ(1));
t90 = sin(qJ(2));
t89 = sin(qJ(4));
t88 = sin(qJ(6));
t87 = cos(pkin(6));
t86 = cos(pkin(11));
t85 = sin(pkin(6));
t84 = sin(pkin(11));
t1 = [t95, -t91, 0, 0; t91, t95, 0, 0; 0, 0, 1, pkin(7); 0, 0, 0, 1; t94, -t90, 0, pkin(1); t87 * t90, t87 * t94, -t85, -t85 * pkin(8); t85 * t90, t85 * t94, t87, t87 * pkin(8); 0, 0, 0, 1; t86, -t84, 0, pkin(2); t84, t86, 0, 0; 0, 0, 1, qJ(3); 0, 0, 0, 1; t93, -t89, 0, pkin(3); 0, 0, -1, -pkin(9); t89, t93, 0, 0; 0, 0, 0, 1; 0, -1, 0, pkin(4); 0, 0, -1, -qJ(5); 1, 0, 0, 0; 0, 0, 0, 1; t92, -t88, 0, pkin(5); 0, 0, -1, -pkin(10); t88, t92, 0, 0; 0, 0, 0, 1;];
T_ges = t1;
%% Postprocessing: Reshape Output
% Convert Maple format (2-dimensional tensor) to Matlab format (3-dimensional tensor)
% Fallunterscheidung der Initialisierung für symbolische Eingabe
if isa([qJ; pkin], 'double'), T_mdh = NaN(4,4,6);             % numerisch
else,                         T_mdh = sym('xx', [4,4,6]); end % symbolisch

for i = 1:6
  T_mdh(:,:,i) = T_ges((i-1)*4+1 : 4*i, :);
end
