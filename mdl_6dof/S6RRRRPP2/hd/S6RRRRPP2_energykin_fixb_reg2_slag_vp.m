% Calculate inertial parameters regressor of fixed base kinetic energy for
% S6RRRRPP2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4]';
% 
% Output:
% T_reg [1x(6*10)]
%   minimal parameter regressor of kinetic energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 20:52
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T_reg = S6RRRRPP2_energykin_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPP2_energykin_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPP2_energykin_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRRRPP2_energykin_fixb_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From energy_kinetic_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 20:51:39
% EndTime: 2019-03-09 20:51:39
% DurationCPUTime: 0.18s
% Computational Cost: add. (595->59), mult. (1310->126), div. (0->0), fcn. (879->6), ass. (0->49)
t47 = qJD(1) ^ 2;
t63 = t47 / 0.2e1;
t62 = -pkin(4) - pkin(5);
t61 = -pkin(8) - pkin(7);
t60 = cos(qJ(3));
t59 = cos(qJ(4));
t44 = sin(qJ(3));
t45 = sin(qJ(2));
t46 = cos(qJ(2));
t32 = (t44 * t46 + t60 * t45) * qJD(1);
t40 = qJD(2) + qJD(3);
t43 = sin(qJ(4));
t21 = t43 * t32 - t59 * t40;
t23 = t59 * t32 + t43 * t40;
t9 = t23 * t21;
t55 = qJD(1) * t46;
t56 = qJD(1) * t45;
t30 = t44 * t56 - t60 * t55;
t28 = qJD(4) + t30;
t11 = t23 * t28;
t58 = t28 * t21;
t57 = t46 * t47;
t37 = (-pkin(2) * t46 - pkin(1)) * qJD(1);
t12 = t30 * pkin(3) - t32 * pkin(9) + t37;
t35 = qJD(2) * pkin(2) + t61 * t56;
t36 = t61 * t55;
t18 = t44 * t35 - t60 * t36;
t16 = t40 * pkin(9) + t18;
t8 = t43 * t12 + t59 * t16;
t17 = t60 * t35 + t44 * t36;
t19 = t21 ^ 2 / 0.2e1;
t24 = t28 ^ 2 / 0.2e1;
t54 = qJD(1) * qJD(2);
t5 = t28 * qJ(5) + t8;
t53 = t45 * t54;
t52 = t46 * t54;
t51 = t40 * pkin(3) + t17;
t7 = t59 * t12 - t43 * t16;
t50 = qJD(5) - t7;
t49 = t23 * qJ(5) + t51;
t42 = t46 ^ 2;
t41 = t45 ^ 2;
t20 = t23 ^ 2 / 0.2e1;
t6 = t21 * pkin(4) - t49;
t4 = -t28 * pkin(4) + t50;
t3 = t62 * t21 + qJD(6) + t49;
t2 = t21 * qJ(6) + t5;
t1 = -t23 * qJ(6) + t62 * t28 + t50;
t10 = [0, 0, 0, 0, 0, t63, 0, 0, 0, 0, t41 * t63, t45 * t57, t53, t42 * t63, t52, qJD(2) ^ 2 / 0.2e1, pkin(1) * t57 - pkin(7) * t53, -t47 * pkin(1) * t45 - pkin(7) * t52 (t41 + t42) * t47 * pkin(7) (pkin(1) ^ 2 / 0.2e1 + (t42 / 0.2e1 + t41 / 0.2e1) * pkin(7) ^ 2) * t47, t32 ^ 2 / 0.2e1, -t32 * t30, t32 * t40, t30 ^ 2 / 0.2e1, -t30 * t40, t40 ^ 2 / 0.2e1, t17 * t40 + t37 * t30, -t18 * t40 + t37 * t32, -t17 * t32 - t18 * t30, t18 ^ 2 / 0.2e1 + t17 ^ 2 / 0.2e1 + t37 ^ 2 / 0.2e1, t20, -t9, t11, t19, -t58, t24, -t21 * t51 + t7 * t28, -t23 * t51 - t8 * t28, -t8 * t21 - t7 * t23, t8 ^ 2 / 0.2e1 + t7 ^ 2 / 0.2e1 + t51 ^ 2 / 0.2e1, t20, t11, t9, t24, t58, t19, t6 * t21 - t4 * t28, -t5 * t21 + t4 * t23, -t6 * t23 + t5 * t28, t5 ^ 2 / 0.2e1 + t6 ^ 2 / 0.2e1 + t4 ^ 2 / 0.2e1, t20, t9, -t11, t19, -t58, t24, -t1 * t28 - t3 * t21, t2 * t28 + t3 * t23, -t1 * t23 + t2 * t21, t2 ^ 2 / 0.2e1 + t1 ^ 2 / 0.2e1 + t3 ^ 2 / 0.2e1;];
T_reg  = t10;
