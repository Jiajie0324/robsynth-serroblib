% Calculate homogenous joint transformation matrices for
% S6RRPRRP13
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d5]';
% 
% Output:
% T_mdh [4x4x6]
%   homogenous transformation matrices for joint transformation (MDH)
%   Transformation matrices from one joint to the next (not: from base to joints)

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-23 17:20
% Revision: 76f9d5e39f14dc242b53c0d9d3d9db48bd8f37c0
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function T_mdh = S6RRPRRP13_joint_trafo_rotmat_mdh_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP13_joint_trafo_rotmat_mdh_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPRRP13_joint_trafo_rotmat_mdh_sym_varpar: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From joint_transformation_mdh_rotmat_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-23 17:19:31
% EndTime: 2018-11-23 17:19:31
% DurationCPUTime: 0.03s
% Computational Cost: add. (9->9), mult. (6->6), div. (0->0), fcn. (26->10), ass. (0->11)
t80 = cos(qJ(1));
t79 = cos(qJ(2));
t78 = cos(qJ(4));
t77 = cos(qJ(5));
t76 = sin(qJ(1));
t75 = sin(qJ(2));
t74 = sin(qJ(4));
t73 = sin(qJ(5));
t72 = cos(pkin(6));
t71 = sin(pkin(6));
t1 = [t80, -t76, 0, 0; t76, t80, 0, 0; 0, 0, 1, pkin(7); 0, 0, 0, 1; t79, -t75, 0, pkin(1); t72 * t75, t72 * t79, -t71, -t71 * pkin(8); t71 * t75, t71 * t79, t72, t72 * pkin(8); 0, 0, 0, 1; 0, -1, 0, pkin(2); 0, 0, -1, -qJ(3); 1, 0, 0, 0; 0, 0, 0, 1; t78, -t74, 0, pkin(3); 0, 0, -1, -pkin(9); t74, t78, 0, 0; 0, 0, 0, 1; t77, -t73, 0, pkin(4); 0, 0, -1, -pkin(10); t73, t77, 0, 0; 0, 0, 0, 1; 1, 0, 0, pkin(5); 0, 1, 0, 0; 0, 0, 1, qJ(6); 0, 0, 0, 1;];
T_ges = t1;
%% Postprocessing: Reshape Output
% Convert Maple format (2-dimensional tensor) to Matlab format (3-dimensional tensor)
% Fallunterscheidung der Initialisierung für symbolische Eingabe
if isa([qJ; pkin], 'double'), T_mdh = NaN(4,4,6);             % numerisch
else,                         T_mdh = sym('xx', [4,4,6]); end % symbolisch

for i = 1:6
  T_mdh(:,:,i) = T_ges((i-1)*4+1 : 4*i, :);
end
