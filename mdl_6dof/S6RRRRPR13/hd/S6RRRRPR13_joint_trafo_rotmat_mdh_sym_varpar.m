% Calculate homogenous joint transformation matrices for
% S6RRRRPR13
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,d6]';
% 
% Output:
% T_mdh [4x4x6]
%   homogenous transformation matrices for joint transformation (MDH)
%   Transformation matrices from one joint to the next (not: from base to joints)

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-23 18:23
% Revision: 76f9d5e39f14dc242b53c0d9d3d9db48bd8f37c0
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function T_mdh = S6RRRRPR13_joint_trafo_rotmat_mdh_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR13_joint_trafo_rotmat_mdh_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRPR13_joint_trafo_rotmat_mdh_sym_varpar: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From joint_transformation_mdh_rotmat_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-23 18:22:37
% EndTime: 2018-11-23 18:22:37
% DurationCPUTime: 0.03s
% Computational Cost: add. (11->11), mult. (6->6), div. (0->0), fcn. (30->12), ass. (0->13)
t91 = cos(qJ(1));
t90 = cos(qJ(2));
t89 = cos(qJ(3));
t88 = cos(qJ(4));
t87 = cos(qJ(6));
t86 = sin(qJ(1));
t85 = sin(qJ(2));
t84 = sin(qJ(3));
t83 = sin(qJ(4));
t82 = sin(qJ(6));
t81 = cos(pkin(6));
t80 = sin(pkin(6));
t1 = [t91, -t86, 0, 0; t86, t91, 0, 0; 0, 0, 1, pkin(7); 0, 0, 0, 1; t90, -t85, 0, pkin(1); t81 * t85, t81 * t90, -t80, -t80 * pkin(8); t80 * t85, t80 * t90, t81, t81 * pkin(8); 0, 0, 0, 1; t89, -t84, 0, pkin(2); 0, 0, -1, -pkin(9); t84, t89, 0, 0; 0, 0, 0, 1; t88, -t83, 0, pkin(3); 0, 0, -1, -pkin(10); t83, t88, 0, 0; 0, 0, 0, 1; 1, 0, 0, pkin(4); 0, 0, -1, -qJ(5); 0, 1, 0, 0; 0, 0, 0, 1; t87, -t82, 0, pkin(5); 0, 0, -1, -pkin(11); t82, t87, 0, 0; 0, 0, 0, 1;];
T_ges = t1;
%% Postprocessing: Reshape Output
% Convert Maple format (2-dimensional tensor) to Matlab format (3-dimensional tensor)
% Fallunterscheidung der Initialisierung für symbolische Eingabe
if isa([qJ; pkin], 'double'), T_mdh = NaN(4,4,6);             % numerisch
else,                         T_mdh = sym('xx', [4,4,6]); end % symbolisch

for i = 1:6
  T_mdh(:,:,i) = T_ges((i-1)*4+1 : 4*i, :);
end
