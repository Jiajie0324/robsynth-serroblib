% Calculate homogenous joint transformation matrices for
% S5PRPRR8
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,d2,d4,d5,theta1]';
% 
% Output:
% T_mdh [4x4x5]
%   homogenous transformation matrices for joint transformation (MDH)
%   Transformation matrices from one joint to the next (not: from base to joints)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 16:05
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T_mdh = S5PRPRR8_joint_trafo_rotmat_mdh_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRPRR8_joint_trafo_rotmat_mdh_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PRPRR8_joint_trafo_rotmat_mdh_sym_varpar: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From joint_transformation_mdh_rotmat_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 16:02:16
% EndTime: 2019-12-05 16:02:17
% DurationCPUTime: 0.03s
% Computational Cost: add. (9->9), mult. (6->6), div. (0->0), fcn. (26->10), ass. (0->11)
t60 = cos(qJ(2));
t59 = cos(qJ(4));
t58 = cos(qJ(5));
t57 = sin(qJ(2));
t56 = sin(qJ(4));
t55 = sin(qJ(5));
t54 = cos(pkin(5));
t53 = cos(pkin(9));
t52 = sin(pkin(5));
t51 = sin(pkin(9));
t1 = [t53, -t51, 0, 0; t51, t53, 0, 0; 0, 0, 1, qJ(1); 0, 0, 0, 1; t60, -t57, 0, pkin(1); t54 * t57, t54 * t60, -t52, -t52 * pkin(6); t52 * t57, t52 * t60, t54, t54 * pkin(6); 0, 0, 0, 1; 0, -1, 0, pkin(2); 0, 0, -1, -qJ(3); 1, 0, 0, 0; 0, 0, 0, 1; t59, -t56, 0, pkin(3); 0, 0, -1, -pkin(7); t56, t59, 0, 0; 0, 0, 0, 1; t58, -t55, 0, pkin(4); 0, 0, -1, -pkin(8); t55, t58, 0, 0; 0, 0, 0, 1;];
T_ges = t1;
%% Postprocessing: Reshape Output
% Convert Maple format (2-dimensional tensor) to Matlab format (3-dimensional tensor)
% Fallunterscheidung der Initialisierung für symbolische Eingabe
if isa([qJ; pkin], 'double'), T_mdh = NaN(4,4,5);             % numerisch
else,                         T_mdh = sym('xx', [4,4,5]); end % symbolisch

for i = 1:5
  T_mdh(:,:,i) = T_ges((i-1)*4+1 : 4*i, :);
end
