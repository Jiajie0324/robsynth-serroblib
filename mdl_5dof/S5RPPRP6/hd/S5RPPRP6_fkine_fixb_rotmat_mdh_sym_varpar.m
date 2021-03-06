% Calculate forward kinematics (homogenous transformation matrices) for fixed-base
% S5RPPRP6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d4,theta3]';
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
% Datum: 2019-12-31 17:55
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T_c_mdh = S5RPPRP6_fkine_fixb_rotmat_mdh_sym_varpar(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPPRP6_fkine_fixb_rotmat_mdh_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S5RPPRP6_fkine_fixb_rotmat_mdh_sym_varpar: pkin has to be [7x1] (double)');

%% Symbolic Calculation
% From fkine_mdh_floatb_twist_rotmat_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:54:52
% EndTime: 2019-12-31 17:54:52
% DurationCPUTime: 0.11s
% Computational Cost: add. (76->34), mult. (54->26), div. (0->0), fcn. (86->6), ass. (0->24)
t14 = sin(qJ(1));
t9 = pkin(7) + qJ(4);
t4 = cos(t9);
t28 = t14 * t4;
t15 = cos(qJ(1));
t3 = sin(t9);
t27 = t15 * t3;
t26 = t15 * t4;
t11 = sin(pkin(7));
t25 = t14 * t11;
t10 = pkin(5) + 0;
t24 = t14 * pkin(1) + 0;
t23 = pkin(2) + t10;
t22 = t15 * pkin(1) + t14 * qJ(2) + 0;
t21 = -pkin(3) * t11 - qJ(2);
t12 = cos(pkin(7));
t20 = t12 * pkin(3) + t23;
t19 = pkin(4) * t3 - qJ(5) * t4;
t13 = -pkin(6) - qJ(3);
t18 = -t14 * t13 + t24;
t17 = -t15 * qJ(2) + t24;
t16 = pkin(3) * t25 - t15 * t13 + t22;
t1 = t14 * t3;
t2 = [1, 0, 0, 0; 0, 1, 0, 0; 0, 0, 1, 0; 0, 0, 0, 1; t15, -t14, 0, 0; t14, t15, 0, 0; 0, 0, 1, t10; 0, 0, 0, 1; 0, -t15, t14, t22; 0, -t14, -t15, t17; 1, 0, 0, t10; 0, 0, 0, 1; t25, t14 * t12, t15, t15 * qJ(3) + t22; -t15 * t11, -t15 * t12, t14, t14 * qJ(3) + t17; t12, -t11, 0, t23; 0, 0, 0, 1; t1, t28, t15, t16; -t27, -t26, t14, t21 * t15 + t18; t4, -t3, 0, t20; 0, 0, 0, 1; t1, t15, -t28, t19 * t14 + t16; -t27, t14, t26, (-t19 + t21) * t15 + t18; t4, 0, t3, t4 * pkin(4) + t3 * qJ(5) + t20; 0, 0, 0, 1;];
T_ges = t2;
%% Postprocessing: Reshape Output
% Convert Maple format (2-dimensional tensor) to Matlab format (3-dimensional tensor)
% Fallunterscheidung der Initialisierung für symbolische Eingabe
if isa([qJ; pkin], 'double'), T_c_mdh = NaN(4,4,5+1);               % numerisch
else,                         T_c_mdh = sym('xx', [4,4,5+1]); end % symbolisch
for i = 1:5+1
  T_c_mdh(:,:,i) = T_ges((i-1)*4+1 : 4*i, :);
end
