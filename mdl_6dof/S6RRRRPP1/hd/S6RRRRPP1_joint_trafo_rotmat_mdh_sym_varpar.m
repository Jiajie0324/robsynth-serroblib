% Calculate homogenous joint transformation matrices for
% S6RRRRPP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,theta5]';
% 
% Output:
% T_mdh [4x4x6]
%   homogenous transformation matrices for joint transformation (MDH)
%   Transformation matrices from one joint to the next (not: from base to joints)

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-23 18:04
% Revision: 76f9d5e39f14dc242b53c0d9d3d9db48bd8f37c0
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function T_mdh = S6RRRRPP1_joint_trafo_rotmat_mdh_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPP1_joint_trafo_rotmat_mdh_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRPP1_joint_trafo_rotmat_mdh_sym_varpar: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From joint_transformation_mdh_rotmat_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-23 18:04:12
% EndTime: 2018-11-23 18:04:12
% DurationCPUTime: 0.03s
% Computational Cost: add. (8->8), mult. (0->0), div. (0->0), fcn. (20->10), ass. (0->11)
t58 = cos(qJ(1));
t57 = cos(qJ(2));
t56 = cos(qJ(3));
t55 = cos(qJ(4));
t54 = sin(qJ(1));
t53 = sin(qJ(2));
t52 = sin(qJ(3));
t51 = sin(qJ(4));
t50 = cos(pkin(10));
t49 = sin(pkin(10));
t1 = [t58, -t54, 0, 0; t54, t58, 0, 0; 0, 0, 1, pkin(6); 0, 0, 0, 1; t57, -t53, 0, pkin(1); 0, 0, -1, -pkin(7); t53, t57, 0, 0; 0, 0, 0, 1; t56, -t52, 0, pkin(2); t52, t56, 0, 0; 0, 0, 1, pkin(8); 0, 0, 0, 1; t55, -t51, 0, pkin(3); 0, 0, -1, -pkin(9); t51, t55, 0, 0; 0, 0, 0, 1; t50, -t49, 0, pkin(4); t49, t50, 0, 0; 0, 0, 1, qJ(5); 0, 0, 0, 1; 1, 0, 0, pkin(5); 0, 0, -1, -qJ(6); 0, 1, 0, 0; 0, 0, 0, 1;];
T_ges = t1;
%% Postprocessing: Reshape Output
% Convert Maple format (2-dimensional tensor) to Matlab format (3-dimensional tensor)
% Fallunterscheidung der Initialisierung für symbolische Eingabe
if isa([qJ; pkin], 'double'), T_mdh = NaN(4,4,6);             % numerisch
else,                         T_mdh = sym('xx', [4,4,6]); end % symbolisch

for i = 1:6
  T_mdh(:,:,i) = T_ges((i-1)*4+1 : 4*i, :);
end
