% Calculate inertial parameters regressor of joint inertia matrix for
% S6RPRPPR8
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d6]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 03:00
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RPRPPR8_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPPR8_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S6RPRPPR8_inertiaJ_reg2_slag_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
t35 = sin(qJ(3));
t29 = t35 ^ 2;
t37 = cos(qJ(3));
t31 = t37 ^ 2;
t50 = t29 + t31;
t39 = -pkin(1) - pkin(7);
t11 = (-qJ(5) - t39) * t35;
t62 = t11 ^ 2;
t61 = 0.2e1 * t35;
t60 = 2 * qJ(2);
t38 = -pkin(3) - pkin(4);
t59 = t11 * t35;
t27 = -pkin(8) + t38;
t58 = t27 * t37;
t34 = sin(qJ(6));
t57 = t34 * t35;
t36 = cos(qJ(6));
t56 = t34 * t36;
t55 = t34 * t37;
t33 = qJ(4) + pkin(5);
t54 = t35 * t33;
t53 = t35 * t39;
t20 = t36 * t35;
t52 = t37 * t35;
t51 = t50 * t39 ^ 2;
t28 = t34 ^ 2;
t30 = t36 ^ 2;
t18 = t30 + t28;
t49 = t35 * qJ(4);
t48 = qJ(4) * t37 - qJ(2);
t19 = -0.2e1 * t52;
t47 = 0.2e1 * t52;
t46 = t34 * t20;
t24 = t37 * t39;
t13 = -qJ(5) * t37 - t24;
t5 = t37 * pkin(5) + t27 * t35 + t48;
t2 = -t13 * t34 + t36 * t5;
t3 = t13 * t36 + t34 * t5;
t45 = t2 * t36 + t3 * t34;
t44 = t2 * t34 - t3 * t36;
t16 = pkin(3) * t37 + t49;
t43 = t54 - t58;
t42 = qJ(2) ^ 2;
t41 = qJ(4) ^ 2;
t40 = 0.2e1 * qJ(4);
t21 = t36 * t37;
t15 = pkin(3) * t35 - t48;
t14 = -t37 * t38 + t49;
t10 = t50 * t39;
t9 = t18 * t37;
t8 = t18 * t27;
t7 = 0.2e1 * t10;
t6 = t35 * t38 + t48;
t4 = -t13 * t37 - t59;
t1 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, -2 * pkin(1), t60, pkin(1) ^ 2 + t42, t31, t19, 0, t29, 0, 0, t35 * t60, t37 * t60, -t7, t42 + t51, t31, 0, t47, 0, 0, t29, t15 * t61, -t7, -0.2e1 * t15 * t37, t15 ^ 2 + t51, t29, t19, 0, t31, 0, 0, 0.2e1 * t6 * t37, t6 * t61, 0.2e1 * t4, t13 ^ 2 + t6 ^ 2 + t62, t30 * t29, -0.2e1 * t29 * t56, t36 * t47, t28 * t29, t34 * t19, t31, -0.2e1 * t11 * t57 + 0.2e1 * t2 * t37, -0.2e1 * t11 * t20 - 0.2e1 * t3 * t37, -0.2e1 * t45 * t35, t2 ^ 2 + t3 ^ 2 + t62; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -pkin(1), 0, 0, 0, 0, 0, 0, 0, 0, -t50, t10, 0, 0, 0, 0, 0, 0, 0, -t50, 0, t10, 0, 0, 0, 0, 0, 0, 0, 0, t50, t4, 0, 0, 0, 0, 0, 0, t50 * t34, t50 * t36, 0, t37 * t44 - t59; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t50, 0, 0, 0, 0, 0, 0, 0, 0, 0, t50, 0, 0, 0, 0, 0, 0, 0, 0, 0, t50, 0, 0, 0, 0, 0, 0, 0, 0, 0, t18 * t31 + t29; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t37, 0, -t35, 0, t24, -t53, 0, 0, 0, t37, 0, 0, t35, 0, t24, -t16, t53, t16 * t39, 0, 0, -t35, 0, t37, 0, -t11, t13, t14, -qJ(4) * t11 + t13 * t38, -t46 (t28 - t30) * t35, -t55, t46, -t21, 0, -t11 * t36 + t34 * t43, t11 * t34 + t36 * t43, t44, -t11 * t33 - t27 * t44; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t37, -t35, 0, 0, 0, 0, 0, 0, 0, 0, t37, 0, t35, t16, 0, 0, 0, 0, 0, 0, t35, -t37, 0, t14, 0, 0, 0, 0, 0, 0, t20, -t57, t9, -t18 * t58 + t54; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0.2e1 * pkin(3), 0, t40, pkin(3) ^ 2 + t41, 0, 0, 0, 0, 0, 1, t40, 0.2e1 * t38, 0, t38 ^ 2 + t41, t28, 0.2e1 * t56, 0, t30, 0, 0, 0.2e1 * t33 * t36, -0.2e1 * t33 * t34, -0.2e1 * t8, t18 * t27 ^ 2 + t33 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t37, 0, -t24, 0, 0, 0, 0, 0, 0, 0, 0, -t37, t13, 0, 0, 0, 0, 0, 0, -t55, -t21, 0, -t44; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t37, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t37, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t9; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -pkin(3), 0, 0, 0, 0, 0, 0, 0, 1, 0, t38, 0, 0, 0, 0, 0, 0, 0, 0, -t18, t8; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t18; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t37, t35, 0, t6, 0, 0, 0, 0, 0, 0, t21, -t55, -t18 * t35, t45; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t18; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t20, 0, -t57, t37, t2, -t3, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t55, t21, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t34, 0, -t36, 0, -t34 * t27, -t36 * t27, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t34, -t36, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t36, -t34, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t1;
