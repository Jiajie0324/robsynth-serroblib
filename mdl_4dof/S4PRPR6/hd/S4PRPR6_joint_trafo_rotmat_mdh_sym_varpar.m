% Calculate homogenous joint transformation matrices for
% S4PRPR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d2,d4,theta1,theta3]';
% 
% Output:
% T_mdh [4x4x4]
%   homogenous transformation matrices for joint transformation (MDH)
%   Transformation matrices from one joint to the next (not: from base to joints)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 16:24
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T_mdh = S4PRPR6_joint_trafo_rotmat_mdh_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PRPR6_joint_trafo_rotmat_mdh_sym_varpar: qJ has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4PRPR6_joint_trafo_rotmat_mdh_sym_varpar: pkin has to be [7x1] (double)');

%% Symbolic Calculation
% From joint_transformation_mdh_rotmat_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 16:24:14
% EndTime: 2019-12-31 16:24:14
% DurationCPUTime: 0.02s
% Computational Cost: add. (6->6), mult. (0->0), div. (0->0), fcn. (16->8), ass. (0->9)
t33 = cos(qJ(2));
t32 = cos(qJ(4));
t31 = sin(qJ(2));
t30 = sin(qJ(4));
t29 = cos(pkin(6));
t28 = cos(pkin(7));
t27 = sin(pkin(6));
t26 = sin(pkin(7));
t1 = [t29, -t27, 0, 0; t27, t29, 0, 0; 0, 0, 1, qJ(1); 0, 0, 0, 1; t33, -t31, 0, pkin(1); 0, 0, -1, -pkin(4); t31, t33, 0, 0; 0, 0, 0, 1; t28, -t26, 0, pkin(2); 0, 0, -1, -qJ(3); t26, t28, 0, 0; 0, 0, 0, 1; t32, -t30, 0, pkin(3); t30, t32, 0, 0; 0, 0, 1, pkin(5); 0, 0, 0, 1;];
T_ges = t1;
%% Postprocessing: Reshape Output
% Convert Maple format (2-dimensional tensor) to Matlab format (3-dimensional tensor)
% Fallunterscheidung der Initialisierung für symbolische Eingabe
if isa([qJ; pkin], 'double'), T_mdh = NaN(4,4,4);             % numerisch
else,                         T_mdh = sym('xx', [4,4,4]); end % symbolisch

for i = 1:4
  T_mdh(:,:,i) = T_ges((i-1)*4+1 : 4*i, :);
end
