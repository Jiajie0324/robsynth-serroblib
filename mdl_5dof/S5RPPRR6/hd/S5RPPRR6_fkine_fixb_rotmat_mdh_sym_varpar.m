% Calculate forward kinematics (homogenous transformation matrices) for fixed-base
% S5RPPRR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d4,d5,theta2,theta3]';
% 
% Output:
% T_c_mdh [4x4x(5+1)]
%   homogenous transformation matrices for each (body) frame (MDH)
%   1:  mdh base (link 0) -> mdh base link 0 (unit matrix, no information)
%   ...
%   6:  mdh base (link 0) -> mdh frame (6-1), link (6-1)
%   ...
%   5+1:  mdh base (link 0) -> mdh frame (5)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 17:58
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T_c_mdh = S5RPPRR6_fkine_fixb_rotmat_mdh_sym_varpar(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPPRR6_fkine_fixb_rotmat_mdh_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RPPRR6_fkine_fixb_rotmat_mdh_sym_varpar: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From fkine_mdh_floatb_twist_rotmat_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:57:35
% EndTime: 2019-12-31 17:57:35
% DurationCPUTime: 0.09s
% Computational Cost: add. (122->36), mult. (60->36), div. (0->0), fcn. (97->10), ass. (0->29)
t13 = pkin(9) + qJ(4);
t5 = sin(t13);
t14 = qJ(1) + pkin(8);
t6 = sin(t14);
t34 = t6 * t5;
t8 = cos(t14);
t33 = t8 * t5;
t18 = sin(qJ(5));
t32 = t6 * t18;
t20 = cos(qJ(5));
t31 = t6 * t20;
t30 = t8 * t18;
t29 = t8 * t20;
t28 = pkin(5) + 0;
t19 = sin(qJ(1));
t27 = t19 * pkin(1) + 0;
t21 = cos(qJ(1));
t26 = t21 * pkin(1) + 0;
t9 = qJ(2) + t28;
t17 = -pkin(6) - qJ(3);
t16 = cos(pkin(9));
t4 = t16 * pkin(3) + pkin(2);
t25 = t8 * t17 + t6 * t4 + t27;
t7 = cos(t13);
t24 = pkin(4) * t7 + pkin(7) * t5;
t15 = sin(pkin(9));
t23 = t15 * pkin(3) + t9;
t22 = -t6 * t17 + t8 * t4 + t26;
t1 = [1, 0, 0, 0; 0, 1, 0, 0; 0, 0, 1, 0; 0, 0, 0, 1; t21, -t19, 0, 0; t19, t21, 0, 0; 0, 0, 1, t28; 0, 0, 0, 1; t8, -t6, 0, t26; t6, t8, 0, t27; 0, 0, 1, t9; 0, 0, 0, 1; t8 * t16, -t8 * t15, t6, t8 * pkin(2) + t6 * qJ(3) + t26; t6 * t16, -t6 * t15, -t8, t6 * pkin(2) - t8 * qJ(3) + t27; t15, t16, 0, t9; 0, 0, 0, 1; t8 * t7, -t33, t6, t22; t6 * t7, -t34, -t8, t25; t5, t7, 0, t23; 0, 0, 0, 1; t7 * t29 + t32, -t7 * t30 + t31, t33, t24 * t8 + t22; t7 * t31 - t30, -t7 * t32 - t29, t34, t24 * t6 + t25; t5 * t20, -t5 * t18, -t7, t5 * pkin(4) - t7 * pkin(7) + t23; 0, 0, 0, 1;];
T_ges = t1;
%% Postprocessing: Reshape Output
% Convert Maple format (2-dimensional tensor) to Matlab format (3-dimensional tensor)
% Fallunterscheidung der Initialisierung für symbolische Eingabe
if isa([qJ; pkin], 'double'), T_c_mdh = NaN(4,4,5+1);               % numerisch
else,                         T_c_mdh = sym('xx', [4,4,5+1]); end % symbolisch
for i = 1:5+1
  T_c_mdh(:,:,i) = T_ges((i-1)*4+1 : 4*i, :);
end
