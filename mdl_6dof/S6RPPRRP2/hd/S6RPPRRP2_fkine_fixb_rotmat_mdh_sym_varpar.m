% Calculate forward kinematics (homogenous transformation matrices) for fixed-base
% S6RPPRRP2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d5,theta2,theta3]';
% 
% Output:
% T_c_mdh [4x4x(6+1)]
%   homogenous transformation matrices for each (body) frame (MDH)
%   1:  mdh base (link 0) -> mdh base link 0 (unit matrix, no information)
%   ...
%   7:  mdh base (link 0) -> mdh frame (7-1), link (7-1)
%   ...
%   6+1:  mdh base (link 0) -> mdh frame (6)

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-23 15:44
% Revision: 76f9d5e39f14dc242b53c0d9d3d9db48bd8f37c0
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function T_c_mdh = S6RPPRRP2_fkine_fixb_rotmat_mdh_sym_varpar(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRRP2_fkine_fixb_rotmat_mdh_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPPRRP2_fkine_fixb_rotmat_mdh_sym_varpar: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From fkine_mdh_floatb_twist_rotmat_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-23 15:44:17
% EndTime: 2018-11-23 15:44:18
% DurationCPUTime: 0.11s
% Computational Cost: add. (203->46), mult. (115->43), div. (0->0), fcn. (169->10), ass. (0->39)
t26 = pkin(10) + qJ(4);
t18 = sin(t26);
t31 = sin(qJ(5));
t50 = t18 * t31;
t27 = qJ(1) + pkin(9);
t19 = sin(t27);
t11 = t19 * t18;
t20 = cos(t26);
t49 = t19 * t20;
t48 = t19 * t31;
t33 = cos(qJ(5));
t47 = t19 * t33;
t21 = cos(t27);
t12 = t21 * t18;
t46 = t21 * t20;
t45 = t21 * t31;
t44 = t21 * t33;
t43 = pkin(6) + 0;
t32 = sin(qJ(1));
t42 = t32 * pkin(1) + 0;
t34 = cos(qJ(1));
t41 = t34 * pkin(1) + 0;
t22 = qJ(2) + t43;
t29 = cos(pkin(10));
t17 = t29 * pkin(3) + pkin(2);
t30 = -pkin(7) - qJ(3);
t40 = t19 * t17 + t21 * t30 + t42;
t28 = sin(pkin(10));
t39 = t28 * pkin(3) + t22;
t38 = pkin(4) * t49 + pkin(8) * t11 + t40;
t37 = t21 * t17 - t19 * t30 + t41;
t36 = pkin(4) * t46 + pkin(8) * t12 + t37;
t35 = t18 * pkin(4) - t20 * pkin(8) + t39;
t14 = t18 * t33;
t4 = t20 * t44 + t48;
t3 = t20 * t45 - t47;
t2 = t20 * t47 - t45;
t1 = t20 * t48 + t44;
t5 = [1, 0, 0, 0; 0, 1, 0, 0; 0, 0, 1, 0; 0, 0, 0, 1; t34, -t32, 0, 0; t32, t34, 0, 0; 0, 0, 1, t43; 0, 0, 0, 1; t21, -t19, 0, t41; t19, t21, 0, t42; 0, 0, 1, t22; 0, 0, 0, 1; t21 * t29, -t21 * t28, t19, t21 * pkin(2) + t19 * qJ(3) + t41; t19 * t29, -t19 * t28, -t21, t19 * pkin(2) - t21 * qJ(3) + t42; t28, t29, 0, t22; 0, 0, 0, 1; t46, -t12, t19, t37; t49, -t11, -t21, t40; t18, t20, 0, t39; 0, 0, 0, 1; t4, -t3, t12, t36; t2, -t1, t11, t38; t14, -t50, -t20, t35; 0, 0, 0, 1; t4, t12, t3, t4 * pkin(5) + t3 * qJ(6) + t36; t2, t11, t1, t2 * pkin(5) + t1 * qJ(6) + t38; t14, -t20, t50 (pkin(5) * t33 + qJ(6) * t31) * t18 + t35; 0, 0, 0, 1;];
T_ges = t5;
%% Postprocessing: Reshape Output
% Convert Maple format (2-dimensional tensor) to Matlab format (3-dimensional tensor)
% Fallunterscheidung der Initialisierung für symbolische Eingabe
if isa([qJ; pkin], 'double'), T_c_mdh = NaN(4,4,6+1);               % numerisch
else,                         T_c_mdh = sym('xx', [4,4,6+1]); end % symbolisch
for i = 1:6+1
  T_c_mdh(:,:,i) = T_ges((i-1)*4+1 : 4*i, :);
end
