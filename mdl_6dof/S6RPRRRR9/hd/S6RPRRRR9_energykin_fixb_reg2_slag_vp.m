% Calculate inertial parameters regressor of fixed base kinetic energy for
% S6RPRRRR9
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d5,d6]';
% 
% Output:
% T_reg [1x(6*10)]
%   minimal parameter regressor of kinetic energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 07:26
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T_reg = S6RPRRRR9_energykin_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRR9_energykin_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRRR9_energykin_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRRR9_energykin_fixb_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From energy_kinetic_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 07:25:17
% EndTime: 2019-03-09 07:25:17
% DurationCPUTime: 0.16s
% Computational Cost: add. (678->59), mult. (1337->135), div. (0->0), fcn. (856->8), ass. (0->44)
t49 = qJD(1) ^ 2;
t41 = t49 / 0.2e1;
t56 = cos(qJ(4));
t55 = cos(qJ(5));
t54 = cos(qJ(6));
t47 = sin(qJ(3));
t48 = cos(qJ(3));
t27 = (pkin(3) * t47 - pkin(8) * t48 + qJ(2)) * qJD(1);
t36 = qJD(2) + (-pkin(1) - pkin(7)) * qJD(1);
t28 = qJD(3) * pkin(8) + t47 * t36;
t46 = sin(qJ(4));
t16 = t56 * t27 - t46 * t28;
t52 = qJD(1) * t48;
t32 = t46 * qJD(3) + t56 * t52;
t37 = t47 * qJD(1) + qJD(4);
t13 = t37 * pkin(4) - t32 * pkin(9) + t16;
t17 = t46 * t27 + t56 * t28;
t30 = -t56 * qJD(3) + t46 * t52;
t15 = -t30 * pkin(9) + t17;
t45 = sin(qJ(5));
t6 = t45 * t13 + t55 * t15;
t53 = t49 * qJ(2);
t51 = qJD(3) * t36;
t50 = qJD(1) * qJD(3);
t5 = t55 * t13 - t45 * t15;
t29 = -qJD(3) * pkin(3) - t48 * t36;
t35 = qJD(5) + t37;
t22 = t30 * pkin(4) + t29;
t44 = sin(qJ(6));
t43 = t48 ^ 2;
t42 = t47 ^ 2;
t39 = qJ(2) ^ 2 * t41;
t38 = -pkin(1) * qJD(1) + qJD(2);
t33 = qJD(6) + t35;
t21 = -t45 * t30 + t55 * t32;
t19 = t55 * t30 + t45 * t32;
t10 = t19 * pkin(5) + t22;
t9 = -t44 * t19 + t54 * t21;
t7 = t54 * t19 + t44 * t21;
t4 = -t19 * pkin(10) + t6;
t3 = t35 * pkin(5) - t21 * pkin(10) + t5;
t2 = t44 * t3 + t54 * t4;
t1 = t54 * t3 - t44 * t4;
t8 = [0, 0, 0, 0, 0, t41, 0, 0, 0, 0, t41, 0, 0, 0, 0, 0, 0, t38 * qJD(1), t53, t39 + t38 ^ 2 / 0.2e1, t43 * t41, -t48 * t49 * t47, t48 * t50, t42 * t41, -t47 * t50, qJD(3) ^ 2 / 0.2e1, t47 * t53 + t48 * t51, -t47 * t51 + t48 * t53 (-t42 - t43) * t36 * qJD(1), t39 + (t42 / 0.2e1 + t43 / 0.2e1) * t36 ^ 2, t32 ^ 2 / 0.2e1, -t32 * t30, t32 * t37, t30 ^ 2 / 0.2e1, -t30 * t37, t37 ^ 2 / 0.2e1, t16 * t37 + t29 * t30, -t17 * t37 + t29 * t32, -t16 * t32 - t17 * t30, t17 ^ 2 / 0.2e1 + t16 ^ 2 / 0.2e1 + t29 ^ 2 / 0.2e1, t21 ^ 2 / 0.2e1, -t21 * t19, t21 * t35, t19 ^ 2 / 0.2e1, -t19 * t35, t35 ^ 2 / 0.2e1, t22 * t19 + t5 * t35, t22 * t21 - t6 * t35, -t6 * t19 - t5 * t21, t6 ^ 2 / 0.2e1 + t5 ^ 2 / 0.2e1 + t22 ^ 2 / 0.2e1, t9 ^ 2 / 0.2e1, -t9 * t7, t9 * t33, t7 ^ 2 / 0.2e1, -t7 * t33, t33 ^ 2 / 0.2e1, t1 * t33 + t10 * t7, t10 * t9 - t2 * t33, -t1 * t9 - t2 * t7, t2 ^ 2 / 0.2e1 + t1 ^ 2 / 0.2e1 + t10 ^ 2 / 0.2e1;];
T_reg  = t8;
