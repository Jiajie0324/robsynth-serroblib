% Calculate minimal parameter regressor of coriolis matrix for
% S4RRPR4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d2,d4,theta3]';
% 
% Output:
% cmat_reg [(4*%NQJ)%x17]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 17:02
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S4RRPR4_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RRPR4_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RRPR4_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4RRPR4_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [7x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:02:35
% EndTime: 2019-12-31 17:02:36
% DurationCPUTime: 0.40s
% Computational Cost: add. (383->92), mult. (913->117), div. (0->0), fcn. (811->6), ass. (0->79)
t57 = sin(pkin(7));
t55 = t57 ^ 2;
t58 = cos(pkin(7));
t56 = t58 ^ 2;
t47 = t56 + t55;
t41 = t47 * qJ(3);
t82 = qJD(1) + qJD(2);
t94 = cos(qJ(4));
t73 = t94 * t58;
t59 = sin(qJ(4));
t93 = t59 * t57;
t32 = -t73 + t93;
t74 = t94 * t57;
t92 = t59 * t58;
t34 = t74 + t92;
t9 = t32 ^ 2 - t34 ^ 2;
t106 = t82 * t9;
t52 = -t58 * pkin(3) - pkin(2);
t61 = cos(qJ(2));
t96 = t61 * pkin(1);
t42 = t52 - t96;
t76 = t52 / 0.2e1 + t42 / 0.2e1;
t105 = t34 * t76;
t60 = sin(qJ(2));
t97 = t60 * pkin(1);
t51 = qJ(3) + t97;
t20 = t47 * t51;
t104 = t82 * t32;
t68 = t82 * t34;
t103 = t82 * t47;
t98 = pkin(2) * t60;
t29 = t47 * t96;
t45 = t47 * qJD(3);
t91 = t29 * qJD(2) + t45;
t90 = pkin(1) * qJD(1);
t89 = pkin(1) * qJD(2);
t88 = qJD(1) * t42;
t87 = qJD(2) * t52;
t12 = (-t98 + (t20 - t97) * t61) * pkin(1);
t86 = t12 * qJD(1);
t85 = t20 * qJD(1);
t84 = t29 * qJD(1);
t25 = t32 * qJD(4);
t83 = t34 * qJD(4);
t81 = t60 * t89;
t80 = t60 * t90;
t79 = t97 / 0.2e1;
t78 = t32 * t88;
t77 = t34 * t88;
t72 = pkin(1) * t82;
t71 = t32 * t80;
t70 = t34 * t80;
t69 = t57 * t80;
t67 = t60 * t72;
t10 = t79 + (qJ(3) + t51) * (-t56 / 0.2e1 - t55 / 0.2e1);
t66 = t10 * qJD(1) - t41 * qJD(2);
t63 = (-t92 / 0.2e1 - t74 / 0.2e1) * t96;
t3 = t63 - t105;
t65 = -t3 * qJD(1) + t34 * t87;
t62 = (-t73 / 0.2e1 + t93 / 0.2e1) * t96;
t4 = t32 * t76 + t62;
t64 = -t4 * qJD(1) - t32 * t87;
t54 = t58 * pkin(6);
t46 = t57 * t81;
t44 = t58 * qJ(3) + t54;
t43 = (-pkin(6) - qJ(3)) * t57;
t31 = t58 * t51 + t54;
t30 = (-pkin(6) - t51) * t57;
t28 = t34 * qJD(3);
t24 = t32 * qJD(3);
t22 = t34 * t81;
t21 = t32 * t81;
t13 = t32 * t83;
t11 = t79 + t41 / 0.2e1 + t20 / 0.2e1;
t8 = t9 * qJD(4);
t7 = t32 * t68;
t6 = t63 + t105;
t5 = t62 - (t42 + t52) * t32 / 0.2e1;
t1 = [0, 0, 0, 0, -t81, -t61 * t89, -t58 * t81, t46, t91, t12 * qJD(2) + t20 * qJD(3), -t13, t8, 0, 0, 0, t42 * t83 + t21, -t25 * t42 + t22; 0, 0, 0, 0, -t67, -t61 * t72, -t58 * t67, t46 + t69, t84 + t91, t86 + t11 * qJD(3) + (t41 * t61 - t98) * t89, -t13, t8, 0, 0, 0, t6 * qJD(4) + t21 + t71, t5 * qJD(4) + t22 + t70; 0, 0, 0, 0, 0, 0, 0, 0, t103, t11 * qJD(2) + t85, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t7, t106, -t25, -t83, 0, t77 + t6 * qJD(2) + (-t59 * t30 - t31 * t94) * qJD(4), -t78 + t5 * qJD(2) + (-t30 * t94 + t59 * t31) * qJD(4); 0, 0, 0, 0, t80, t61 * t90, t58 * t80, -t69, t45 - t84, -t10 * qJD(3) - t86, -t13, t8, 0, 0, 0, -t3 * qJD(4) - t71, -t4 * qJD(4) - t70; 0, 0, 0, 0, 0, 0, 0, 0, t45, t41 * qJD(3), -t13, t8, 0, 0, 0, t52 * t83, -t52 * t25; 0, 0, 0, 0, 0, 0, 0, 0, t103, -t66, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t7, t106, -t25, -t83, 0, (-t59 * t43 - t44 * t94) * qJD(4) + t65, (-t43 * t94 + t59 * t44) * qJD(4) + t64; 0, 0, 0, 0, 0, 0, 0, 0, -t103, t10 * qJD(2) - t85, 0, 0, 0, 0, 0, t83, -t25; 0, 0, 0, 0, 0, 0, 0, 0, -t103, t66, 0, 0, 0, 0, 0, t83, -t25; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t68, -t104; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t7, -t106, 0, 0, 0, t3 * qJD(2) - t28 - t77, t4 * qJD(2) + t24 + t78; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t7, -t106, 0, 0, 0, -t28 - t65, t24 - t64; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t68, t104; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t1;
