% Calculate inertial parameters regressor of joint inertia matrix for
% S6RPPPRR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d5,d6,theta3,theta4]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 01:34
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RPPPRR3_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPPRR3_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPPPRR3_inertiaJ_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
t44 = sin(pkin(9));
t43 = sin(pkin(10));
t37 = t43 ^ 2;
t45 = cos(pkin(10));
t39 = t45 ^ 2;
t63 = t37 + t39;
t80 = t63 * t44;
t46 = cos(pkin(9));
t50 = -pkin(1) - pkin(2);
t30 = t46 * qJ(2) + t44 * t50;
t26 = -qJ(4) + t30;
t70 = pkin(7) - t26;
t10 = t70 * t45;
t48 = sin(qJ(5));
t69 = cos(qJ(5));
t59 = t69 * t43;
t3 = -t48 * t10 - t70 * t59;
t79 = t3 ^ 2;
t24 = t48 * t45 + t59;
t11 = t24 * t44;
t78 = t11 ^ 2;
t65 = t48 * t43;
t52 = t69 * t45 - t65;
t77 = t52 ^ 2;
t76 = t24 ^ 2;
t75 = -0.2e1 * t24;
t74 = 0.2e1 * t45;
t73 = t52 * pkin(5);
t72 = t3 * t11;
t71 = t3 * t52;
t68 = t11 * t52;
t49 = cos(qJ(6));
t16 = t52 * t49;
t47 = sin(qJ(6));
t15 = t47 * t52;
t67 = t47 * t24;
t66 = t47 * t49;
t64 = t49 * t24;
t28 = t44 * qJ(2) - t46 * t50;
t41 = t47 ^ 2;
t42 = t49 ^ 2;
t62 = t41 + t42;
t61 = t52 * t75;
t27 = pkin(3) + t28;
t60 = t47 * t64;
t58 = t62 * t24;
t14 = t45 * pkin(4) + t27;
t57 = pkin(5) * t24 - pkin(8) * t52;
t5 = -t69 * t10 + t70 * t65;
t6 = t24 * pkin(8) + t14 + t73;
t1 = -t47 * t5 + t49 * t6;
t2 = t47 * t6 + t49 * t5;
t56 = t1 * t49 + t2 * t47;
t55 = -t1 * t47 + t2 * t49;
t13 = t52 * t44;
t7 = -t47 * t13 - t49 * t46;
t8 = t49 * t13 - t47 * t46;
t54 = t8 * t47 + t7 * t49;
t53 = -t7 * t47 + t8 * t49;
t40 = t46 ^ 2;
t38 = t44 ^ 2;
t4 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2 * pkin(1), 0, 0.2e1 * qJ(2) (pkin(1) ^ 2) + qJ(2) ^ 2, 0, 0, 0, 0, 0, 1, 0.2e1 * t28, 0.2e1 * t30, 0, t28 ^ 2 + t30 ^ 2, t37, t43 * t74, 0, t39, 0, 0, t27 * t74, -0.2e1 * t27 * t43, -0.2e1 * t63 * t26, t63 * t26 ^ 2 + t27 ^ 2, t76, -t61, 0, t77, 0, 0, 0.2e1 * t14 * t52, t14 * t75, -0.2e1 * t3 * t24 - 0.2e1 * t5 * t52, t14 ^ 2 + t5 ^ 2 + t79, t42 * t76, -0.2e1 * t76 * t66, -0.2e1 * t52 * t64, t41 * t76, -t47 * t61, t77, 0.2e1 * t1 * t52 - 0.2e1 * t3 * t67, -0.2e1 * t2 * t52 - 0.2e1 * t3 * t64, 0.2e1 * t56 * t24, t1 ^ 2 + t2 ^ 2 + t79; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -pkin(1), 0, 0, 0, 0, 0, 0, -t46, t44, 0, -t28 * t46 + t30 * t44, 0, 0, 0, 0, 0, 0, -t46 * t45, t46 * t43, -t80, t26 * t80 - t27 * t46, 0, 0, 0, 0, 0, 0, -t46 * t52, t46 * t24, -t11 * t24 - t13 * t52, t5 * t13 - t14 * t46 + t72, 0, 0, 0, 0, 0, 0, -t11 * t67 + t52 * t7, -t11 * t64 - t52 * t8, t54 * t24, t1 * t7 + t2 * t8 + t72; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t38 + t40, 0, 0, 0, 0, 0, 0, 0, 0, 0, t63 * t38 + t40, 0, 0, 0, 0, 0, 0, 0, 0, 0, t13 ^ 2 + t40 + t78, 0, 0, 0, 0, 0, 0, 0, 0, 0, t7 ^ 2 + t8 ^ 2 + t78; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t5 * t24 - t71, 0, 0, 0, 0, 0, 0, 0, 0, 0, t55 * t24 - t71; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t13 * t24 - t68, 0, 0, 0, 0, 0, 0, 0, 0, 0, t53 * t24 - t68; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t63, 0, 0, 0, 0, 0, 0, 0, 0, 0, t76 + t77, 0, 0, 0, 0, 0, 0, 0, 0, 0, t62 * t76 + t77; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t45, -t43, 0, t27, 0, 0, 0, 0, 0, 0, t52, -t24, 0, t14, 0, 0, 0, 0, 0, 0, t16, -t15, t58, t56; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t46, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t46, 0, 0, 0, 0, 0, 0, 0, 0, 0, t54; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t62; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t24, 0, -t52, 0, -t3, -t5, 0, 0, -t60 (t41 - t42) * t24, t15, t60, t16, 0, -t3 * t49 + t57 * t47, t3 * t47 + t57 * t49, t55, -t3 * pkin(5) + t55 * pkin(8); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t11, -t13, 0, 0, 0, 0, 0, 0, 0, 0, -t11 * t49, t11 * t47, t53, -t11 * pkin(5) + t53 * pkin(8); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t52, -t24, 0, 0, 0, 0, 0, 0, 0, 0, t16, -t15, t58, pkin(8) * t58 + t73; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t41, 0.2e1 * t66, 0, t42, 0, 0, 0.2e1 * pkin(5) * t49, -0.2e1 * pkin(5) * t47, 0.2e1 * t62 * pkin(8), t62 * pkin(8) ^ 2 + pkin(5) ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t64, 0, t67, t52, t1, -t2, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t7, -t8, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t67, -t64, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t49, -t47, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t47, 0, t49, 0, -t47 * pkin(8), -t49 * pkin(8), 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t4;
