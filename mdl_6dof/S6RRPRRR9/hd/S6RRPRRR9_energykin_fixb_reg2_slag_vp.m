% Calculate inertial parameters regressor of fixed base kinetic energy for
% S6RRPRRR9
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d5,d6,theta3]';
% 
% Output:
% T_reg [1x(6*10)]
%   minimal parameter regressor of kinetic energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 14:17
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T_reg = S6RRPRRR9_energykin_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRR9_energykin_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRR9_energykin_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRPRRR9_energykin_fixb_reg2_slag_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From energy_kinetic_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 14:13:57
% EndTime: 2019-03-09 14:13:57
% DurationCPUTime: 0.27s
% Computational Cost: add. (1741->72), mult. (4225->167), div. (0->0), fcn. (3384->12), ass. (0->56)
t64 = sin(qJ(2));
t65 = cos(qJ(2));
t59 = sin(pkin(6));
t73 = qJD(1) * t59;
t68 = t65 * t73;
t72 = cos(pkin(6)) * qJD(1);
t70 = pkin(1) * t72;
t45 = pkin(8) * t68 + t64 * t70;
t56 = qJD(2) + t72;
t38 = t56 * qJ(3) + t45;
t40 = (-pkin(2) * t65 - qJ(3) * t64 - pkin(1)) * t73;
t58 = sin(pkin(12));
t74 = cos(pkin(12));
t27 = -t58 * t38 + t74 * t40;
t69 = t64 * t73;
t43 = t58 * t56 + t74 * t69;
t24 = -pkin(3) * t68 - t43 * pkin(9) + t27;
t28 = t74 * t38 + t58 * t40;
t41 = -t74 * t56 + t58 * t69;
t26 = -t41 * pkin(9) + t28;
t63 = sin(qJ(4));
t78 = cos(qJ(4));
t13 = t63 * t24 + t78 * t26;
t31 = t78 * t41 + t63 * t43;
t11 = -t31 * pkin(10) + t13;
t62 = sin(qJ(5));
t77 = cos(qJ(5));
t12 = t78 * t24 - t63 * t26;
t33 = -t63 * t41 + t78 * t43;
t50 = -qJD(4) + t68;
t9 = -t50 * pkin(4) - t33 * pkin(10) + t12;
t6 = t77 * t11 + t62 * t9;
t76 = cos(qJ(6));
t66 = qJD(1) ^ 2;
t75 = t59 ^ 2 * t66;
t71 = t65 * t75;
t67 = t75 / 0.2e1;
t18 = t77 * t31 + t62 * t33;
t44 = -pkin(8) * t69 + t65 * t70;
t5 = -t62 * t11 + t77 * t9;
t35 = -t56 * pkin(2) + qJD(3) - t44;
t30 = t41 * pkin(3) + t35;
t21 = t31 * pkin(4) + t30;
t61 = sin(qJ(6));
t52 = t65 ^ 2 * t67;
t47 = -qJD(5) + t50;
t20 = -t62 * t31 + t77 * t33;
t17 = qJD(6) + t18;
t16 = t76 * t20 - t61 * t47;
t14 = t61 * t20 + t76 * t47;
t7 = t18 * pkin(5) - t20 * pkin(11) + t21;
t4 = -t47 * pkin(11) + t6;
t3 = t47 * pkin(5) - t5;
t2 = t76 * t4 + t61 * t7;
t1 = -t61 * t4 + t76 * t7;
t8 = [0, 0, 0, 0, 0, t66 / 0.2e1, 0, 0, 0, 0, t64 ^ 2 * t67, t64 * t71, t56 * t69, t52, t56 * t68, t56 ^ 2 / 0.2e1, pkin(1) * t71 + t44 * t56, -pkin(1) * t64 * t75 - t45 * t56 (-t44 * t64 + t45 * t65) * t73, t45 ^ 2 / 0.2e1 + t44 ^ 2 / 0.2e1 + pkin(1) ^ 2 * t67, t43 ^ 2 / 0.2e1, -t43 * t41, -t43 * t68, t41 ^ 2 / 0.2e1, t41 * t68, t52, -t27 * t68 + t35 * t41, t28 * t68 + t35 * t43, -t27 * t43 - t28 * t41, t28 ^ 2 / 0.2e1 + t27 ^ 2 / 0.2e1 + t35 ^ 2 / 0.2e1, t33 ^ 2 / 0.2e1, -t33 * t31, -t33 * t50, t31 ^ 2 / 0.2e1, t31 * t50, t50 ^ 2 / 0.2e1, -t12 * t50 + t30 * t31, t13 * t50 + t30 * t33, -t12 * t33 - t13 * t31, t13 ^ 2 / 0.2e1 + t12 ^ 2 / 0.2e1 + t30 ^ 2 / 0.2e1, t20 ^ 2 / 0.2e1, -t20 * t18, -t20 * t47, t18 ^ 2 / 0.2e1, t18 * t47, t47 ^ 2 / 0.2e1, t21 * t18 - t5 * t47, t21 * t20 + t6 * t47, -t6 * t18 - t5 * t20, t6 ^ 2 / 0.2e1 + t5 ^ 2 / 0.2e1 + t21 ^ 2 / 0.2e1, t16 ^ 2 / 0.2e1, -t16 * t14, t16 * t17, t14 ^ 2 / 0.2e1, -t14 * t17, t17 ^ 2 / 0.2e1, t1 * t17 + t3 * t14, t3 * t16 - t2 * t17, -t1 * t16 - t2 * t14, t2 ^ 2 / 0.2e1 + t1 ^ 2 / 0.2e1 + t3 ^ 2 / 0.2e1;];
T_reg  = t8;
