% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6RPPPRR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d5,d6,theta3,theta4]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 01:34
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RPPPRR3_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPPRR3_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPPRR3_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPPPRR3_inertiaDJ_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 01:33:59
% EndTime: 2019-03-09 01:34:03
% DurationCPUTime: 1.37s
% Computational Cost: add. (1946->145), mult. (3555->280), div. (0->0), fcn. (3487->8), ass. (0->92)
t111 = -pkin(1) - pkin(2);
t43 = sin(pkin(9));
t45 = cos(pkin(9));
t98 = t45 * qJ(2) + t43 * t111;
t31 = -qJ(4) + t98;
t108 = pkin(7) - t31;
t44 = cos(pkin(10));
t21 = t108 * t44;
t91 = t45 * qJD(2);
t34 = -qJD(4) + t91;
t42 = sin(pkin(10));
t47 = sin(qJ(5));
t107 = cos(qJ(5));
t76 = t108 * t107;
t84 = t107 * t44;
t95 = qJD(5) * t47;
t49 = (qJD(5) * t76 - t47 * t34) * t42 + t21 * t95 + t34 * t84;
t83 = (t42 ^ 2 + t44 ^ 2) * t34;
t63 = -t43 * qJ(2) + t45 * t111;
t61 = pkin(3) - t63;
t24 = t44 * pkin(4) + t61;
t99 = t47 * t44;
t29 = t107 * t42 + t99;
t62 = -t47 * t42 + t84;
t51 = pkin(5) * t62 + t29 * pkin(8) + t24;
t114 = -qJD(6) * t51 - t49;
t80 = qJD(5) * t107;
t113 = -t42 * t95 + t44 * t80;
t46 = sin(qJ(6));
t40 = t46 ^ 2;
t48 = cos(qJ(6));
t41 = t48 ^ 2;
t96 = t40 - t41;
t79 = t96 * qJD(6);
t112 = 0.2e1 * qJD(2);
t11 = -t47 * t21 - t42 * t76;
t85 = t47 * t108;
t6 = -t21 * t80 + t34 * t99 + (qJD(5) * t85 + t107 * t34) * t42;
t110 = t11 * t6;
t26 = t29 * qJD(5);
t109 = t26 * pkin(5);
t20 = t113 * t43;
t22 = t29 * t43;
t106 = t22 * t20;
t105 = t62 * t26;
t104 = t29 * t113;
t103 = t29 * t46;
t102 = t29 * t48;
t101 = t46 * t26;
t100 = t46 * t48;
t94 = qJD(6) * t46;
t93 = qJD(6) * t48;
t92 = t43 * qJD(2);
t90 = -0.2e1 * t105;
t89 = -0.2e1 * pkin(5) * qJD(6);
t88 = 0.2e1 * t92;
t86 = t46 * t93;
t82 = (-t40 - t41) * t113;
t81 = 0.4e1 * t29 * t100;
t27 = t29 ^ 2;
t78 = t27 * t86;
t75 = pkin(5) * t113 + pkin(8) * t26;
t74 = pkin(5) * t29 - pkin(8) * t62;
t12 = -t107 * t21 + t42 * t85;
t3 = -t46 * t12 + t48 * t51;
t4 = t48 * t12 + t46 * t51;
t73 = -t3 * t48 - t4 * t46;
t72 = t3 * t46 - t4 * t48;
t71 = t11 * t20 + t6 * t22;
t70 = t11 * t26 - t6 * t62;
t23 = t62 * t43;
t17 = t23 * t48 - t46 * t45;
t66 = t46 * t23 + t45 * t48;
t69 = -t17 * t46 + t48 * t66;
t68 = -t17 * t48 - t46 * t66;
t67 = -t20 * t62 + t22 * t26;
t65 = t113 * t46 + t29 * t93;
t64 = -t113 * t48 + t29 * t94;
t15 = -t62 * t93 + t101;
t14 = -t26 * t48 - t62 * t94;
t60 = pkin(8) * t113 - t109 + t92;
t57 = qJD(5) * t22;
t1 = t114 * t48 + t12 * t94 - t46 * t60;
t2 = t114 * t46 - t12 * t93 + t48 * t60;
t55 = -t72 * qJD(6) - t1 * t46 + t2 * t48;
t54 = t73 * qJD(6) - t1 * t48 - t2 * t46;
t8 = t66 * qJD(6) + t48 * t57;
t9 = -t23 * t93 + t45 * t94 + t46 * t57;
t53 = -t68 * qJD(6) - t8 * t46 + t9 * t48;
t52 = t69 * qJD(6) - t9 * t46 - t8 * t48;
t7 = t100 * t113 - t29 * t79;
t5 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t112, qJ(2) * t112, 0, 0, 0, 0, 0, 0, t88, 0.2e1 * t91, 0 (-t63 * t43 + t98 * t45) * t112, 0, 0, 0, 0, 0, 0, t44 * t88, -0.2e1 * t42 * t92, -0.2e1 * t83, 0.2e1 * t31 * t83 + 0.2e1 * t61 * t92, 0.2e1 * t104, 0.2e1 * t113 * t62 - 0.2e1 * t26 * t29, 0, t90, 0, 0, -0.2e1 * t24 * t26 + 0.2e1 * t62 * t92, -0.2e1 * t113 * t24 - 0.2e1 * t29 * t92, -0.2e1 * t11 * t113 + 0.2e1 * t12 * t26 - 0.2e1 * t6 * t29 - 0.2e1 * t49 * t62, 0.2e1 * t49 * t12 + 0.2e1 * t24 * t92 + 0.2e1 * t110, 0.2e1 * t41 * t104 - 0.2e1 * t78, -t113 * t81 + 0.2e1 * t27 * t79, 0.2e1 * t26 * t102 + 0.2e1 * t62 * t64, 0.2e1 * t40 * t104 + 0.2e1 * t78, -0.2e1 * t29 * t101 + 0.2e1 * t62 * t65, t90, -0.2e1 * t6 * t103 - 0.2e1 * t65 * t11 + 0.2e1 * t2 * t62 - 0.2e1 * t3 * t26, 0.2e1 * t1 * t62 - 0.2e1 * t6 * t102 + 0.2e1 * t64 * t11 + 0.2e1 * t4 * t26, -0.2e1 * t113 * t73 + 0.2e1 * t55 * t29, -0.2e1 * t1 * t4 + 0.2e1 * t2 * t3 + 0.2e1 * t110; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 (t83 - t91) * t43, 0, 0, 0, 0, 0, 0, t45 * t26, t45 * t113, -t113 * t22 - t20 * t29 + t23 * t26 + t57 * t62, -t12 * t57 + t49 * t23 - t43 * t91 + t71, 0, 0, 0, 0, 0, 0, -t20 * t103 - t65 * t22 + t26 * t66 + t62 * t9, -t20 * t102 + t17 * t26 + t64 * t22 + t62 * t8, -t113 * t69 + t53 * t29, -t1 * t17 - t2 * t66 + t3 * t9 - t4 * t8 + t71; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t23 * t57 + 0.2e1 * t106, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t17 * t8 - 0.2e1 * t66 * t9 + 0.2e1 * t106; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t113 * t12 + t49 * t29 + t70, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t113 * t72 + t54 * t29 + t70; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t113 * t23 - t29 * t57 + t67, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t113 * t68 + t52 * t29 + t67; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t104 - 0.2e1 * t105, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t29 * t82 - 0.2e1 * t105; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t92, 0, 0, 0, 0, 0, 0, -t26, -t113, 0, t92, 0, 0, 0, 0, 0, 0, t14, t15, -t82, t55; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t53; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t113, 0, t26, 0, -t6, -t49, 0, 0, -t7, qJD(6) * t81 + t113 * t96, -t15, t7, t14, 0, -t48 * t6 + t75 * t46 + (t11 * t46 + t74 * t48) * qJD(6), t6 * t46 + t75 * t48 + (t11 * t48 - t74 * t46) * qJD(6), t54, -t6 * pkin(5) + t54 * pkin(8); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t20, t43 * t26, 0, 0, 0, 0, 0, 0, 0, 0, -t20 * t48 + t22 * t94, t20 * t46 + t22 * t93, t52, -t20 * pkin(5) + t52 * pkin(8); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t26, -t113, 0, 0, 0, 0, 0, 0, 0, 0, t14, t15, -t82, -pkin(8) * t82 - t109; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t86, -0.2e1 * t79, 0, -0.2e1 * t86, 0, 0, t46 * t89, t48 * t89, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t64, 0, t65, -t26, t2, t1, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t9, t8, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t65, t64, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t94, -t93, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t93, 0, -t94, 0, -pkin(8) * t93, pkin(8) * t94, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t5;