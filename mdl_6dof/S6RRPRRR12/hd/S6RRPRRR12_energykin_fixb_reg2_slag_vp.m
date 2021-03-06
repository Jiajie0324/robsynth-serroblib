% Calculate inertial parameters regressor of fixed base kinetic energy for
% S6RRPRRR12
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d5,d6]';
% 
% Output:
% T_reg [1x(6*10)]
%   minimal parameter regressor of kinetic energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 14:43
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T_reg = S6RRPRRR12_energykin_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRR12_energykin_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRR12_energykin_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPRRR12_energykin_fixb_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From energy_kinetic_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 14:41:41
% EndTime: 2019-03-09 14:41:42
% DurationCPUTime: 0.24s
% Computational Cost: add. (976->71), mult. (2263->156), div. (0->0), fcn. (1653->10), ass. (0->59)
t73 = -pkin(2) - pkin(9);
t56 = sin(qJ(2));
t51 = sin(pkin(6));
t69 = qJD(1) * t51;
t64 = t56 * t69;
t45 = pkin(8) * t64;
t52 = cos(pkin(6));
t68 = t52 * qJD(1);
t49 = qJD(2) + t68;
t58 = cos(qJ(2));
t24 = qJD(3) + t45 + t73 * t49 + (-pkin(1) * t52 * t58 + pkin(3) * t51 * t56) * qJD(1);
t62 = -qJ(3) * t56 - pkin(1);
t27 = (t73 * t58 + t62) * t69;
t55 = sin(qJ(4));
t57 = cos(qJ(4));
t13 = t55 * t24 + t57 * t27;
t65 = t58 * t69;
t32 = t55 * t49 + t57 * t65;
t11 = -t32 * pkin(10) + t13;
t54 = sin(qJ(5));
t72 = cos(qJ(5));
t12 = t57 * t24 - t55 * t27;
t34 = t57 * t49 - t55 * t65;
t40 = qJD(4) + t64;
t9 = t40 * pkin(4) - t34 * pkin(10) + t12;
t6 = t72 * t11 + t54 * t9;
t71 = cos(qJ(6));
t59 = qJD(1) ^ 2;
t70 = t51 ^ 2 * t59;
t66 = pkin(1) * t68;
t36 = pkin(8) * t65 + t56 * t66;
t67 = t58 * t70;
t29 = -t49 * qJ(3) - t36;
t63 = t70 / 0.2e1;
t19 = t72 * t32 + t54 * t34;
t26 = pkin(3) * t65 - t29;
t61 = t49 * t64;
t60 = t49 * t65;
t35 = t58 * t66 - t45;
t17 = t32 * pkin(4) + t26;
t5 = -t54 * t11 + t72 * t9;
t53 = sin(qJ(6));
t43 = t58 ^ 2 * t63;
t42 = t56 ^ 2 * t63;
t41 = t49 ^ 2 / 0.2e1;
t39 = t56 * t67;
t38 = qJD(5) + t40;
t31 = (-pkin(2) * t58 + t62) * t69;
t28 = -t49 * pkin(2) + qJD(3) - t35;
t21 = -t54 * t32 + t72 * t34;
t18 = qJD(6) + t19;
t16 = t71 * t21 + t53 * t38;
t14 = t53 * t21 - t71 * t38;
t7 = t19 * pkin(5) - t21 * pkin(11) + t17;
t4 = t38 * pkin(11) + t6;
t3 = -t38 * pkin(5) - t5;
t2 = t71 * t4 + t53 * t7;
t1 = -t53 * t4 + t71 * t7;
t8 = [0, 0, 0, 0, 0, t59 / 0.2e1, 0, 0, 0, 0, t42, t39, t61, t43, t60, t41, pkin(1) * t67 + t35 * t49, -pkin(1) * t56 * t70 - t36 * t49 (-t35 * t56 + t36 * t58) * t69, t36 ^ 2 / 0.2e1 + t35 ^ 2 / 0.2e1 + pkin(1) ^ 2 * t63, t41, -t61, -t60, t42, t39, t43 (t28 * t56 - t29 * t58) * t69, t28 * t49 + t31 * t65, -t29 * t49 - t31 * t64, t31 ^ 2 / 0.2e1 + t29 ^ 2 / 0.2e1 + t28 ^ 2 / 0.2e1, t34 ^ 2 / 0.2e1, -t34 * t32, t34 * t40, t32 ^ 2 / 0.2e1, -t32 * t40, t40 ^ 2 / 0.2e1, t12 * t40 + t26 * t32, -t13 * t40 + t26 * t34, -t12 * t34 - t13 * t32, t13 ^ 2 / 0.2e1 + t12 ^ 2 / 0.2e1 + t26 ^ 2 / 0.2e1, t21 ^ 2 / 0.2e1, -t21 * t19, t21 * t38, t19 ^ 2 / 0.2e1, -t19 * t38, t38 ^ 2 / 0.2e1, t17 * t19 + t5 * t38, t17 * t21 - t6 * t38, -t6 * t19 - t5 * t21, t6 ^ 2 / 0.2e1 + t5 ^ 2 / 0.2e1 + t17 ^ 2 / 0.2e1, t16 ^ 2 / 0.2e1, -t16 * t14, t16 * t18, t14 ^ 2 / 0.2e1, -t14 * t18, t18 ^ 2 / 0.2e1, t1 * t18 + t3 * t14, t3 * t16 - t2 * t18, -t1 * t16 - t2 * t14, t2 ^ 2 / 0.2e1 + t1 ^ 2 / 0.2e1 + t3 ^ 2 / 0.2e1;];
T_reg  = t8;
