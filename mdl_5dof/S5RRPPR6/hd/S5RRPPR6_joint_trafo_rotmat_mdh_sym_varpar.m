% Calculate homogenous joint transformation matrices for
% S5RRPPR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d5,theta3,theta4]';
% 
% Output:
% T_mdh [4x4x5]
%   homogenous transformation matrices for joint transformation (MDH)
%   Transformation matrices from one joint to the next (not: from base to joints)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-29 18:20
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T_mdh = S5RRPPR6_joint_trafo_rotmat_mdh_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPPR6_joint_trafo_rotmat_mdh_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRPPR6_joint_trafo_rotmat_mdh_sym_varpar: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From joint_transformation_mdh_rotmat_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-29 18:18:35
% EndTime: 2019-12-29 18:18:35
% DurationCPUTime: 0.11s
% Computational Cost: add. (7->7), mult. (0->0), div. (0->0), fcn. (20->10), ass. (0->11)
t45 = cos(qJ(1));
t44 = cos(qJ(2));
t43 = cos(qJ(5));
t42 = sin(qJ(1));
t41 = sin(qJ(2));
t40 = sin(qJ(5));
t39 = cos(pkin(8));
t38 = cos(pkin(9));
t37 = sin(pkin(8));
t36 = sin(pkin(9));
t1 = [t45, -t42, 0, 0; t42, t45, 0, 0; 0, 0, 1, pkin(5); 0, 0, 0, 1; t44, -t41, 0, pkin(1); 0, 0, -1, -pkin(6); t41, t44, 0, 0; 0, 0, 0, 1; t39, -t37, 0, pkin(2); t37, t39, 0, 0; 0, 0, 1, qJ(3); 0, 0, 0, 1; t38, -t36, 0, pkin(3); 0, 0, -1, -qJ(4); t36, t38, 0, 0; 0, 0, 0, 1; t43, -t40, 0, pkin(4); t40, t43, 0, 0; 0, 0, 1, pkin(7); 0, 0, 0, 1;];
T_ges = t1;
%% Postprocessing: Reshape Output
% Convert Maple format (2-dimensional tensor) to Matlab format (3-dimensional tensor)
% Fallunterscheidung der Initialisierung für symbolische Eingabe
if isa([qJ; pkin], 'double'), T_mdh = NaN(4,4,5);             % numerisch
else,                         T_mdh = sym('xx', [4,4,5]); end % symbolisch

for i = 1:5
  T_mdh(:,:,i) = T_ges((i-1)*4+1 : 4*i, :);
end