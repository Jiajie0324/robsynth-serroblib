% Calculate inertial parameters regressor of fixed base kinetic energy for
% S6RPRRPP4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,theta2,theta5]';
% 
% Output:
% T_reg [1x(6*10)]
%   minimal parameter regressor of kinetic energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 04:41
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T_reg = S6RPRRPP4_energykin_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPP4_energykin_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRPP4_energykin_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRPP4_energykin_fixb_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From energy_kinetic_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 04:40:45
% EndTime: 2019-03-09 04:40:45
% DurationCPUTime: 0.18s
% Computational Cost: add. (778->61), mult. (1928->133), div. (0->0), fcn. (1413->8), ass. (0->48)
t51 = qJD(1) ^ 2;
t62 = t51 / 0.2e1;
t46 = sin(pkin(10));
t56 = cos(pkin(10));
t50 = sin(qJ(3));
t48 = cos(pkin(9));
t54 = qJD(1) * t48;
t47 = sin(pkin(9));
t55 = qJD(1) * t47;
t61 = cos(qJ(3));
t35 = t50 * t55 - t61 * t54;
t37 = (t61 * t47 + t48 * t50) * qJD(1);
t40 = qJD(2) + (-pkin(2) * t48 - pkin(1)) * qJD(1);
t20 = t35 * pkin(3) - t37 * pkin(8) + t40;
t57 = pkin(7) + qJ(2);
t38 = t57 * t55;
t39 = t57 * t54;
t25 = -t50 * t38 + t61 * t39;
t23 = qJD(3) * pkin(8) + t25;
t49 = sin(qJ(4));
t60 = cos(qJ(4));
t10 = t60 * t20 - t49 * t23;
t29 = t49 * qJD(3) + t60 * t37;
t31 = qJD(4) + t35;
t7 = t31 * pkin(4) - t29 * qJ(5) + t10;
t11 = t49 * t20 + t60 * t23;
t27 = -t60 * qJD(3) + t49 * t37;
t9 = -t27 * qJ(5) + t11;
t4 = t46 * t7 + t56 * t9;
t15 = t56 * t27 + t46 * t29;
t17 = -t46 * t27 + t56 * t29;
t59 = t17 * t15;
t58 = t31 * t15;
t53 = t15 ^ 2 / 0.2e1;
t24 = -t61 * t38 - t50 * t39;
t3 = -t46 * t9 + t56 * t7;
t22 = -qJD(3) * pkin(3) - t24;
t13 = t27 * pkin(4) + qJD(5) + t22;
t45 = t48 ^ 2;
t44 = t47 ^ 2;
t42 = -qJD(1) * pkin(1) + qJD(2);
t30 = t31 ^ 2 / 0.2e1;
t14 = t17 ^ 2 / 0.2e1;
t12 = t17 * t31;
t5 = t15 * pkin(5) - t17 * qJ(6) + t13;
t2 = t31 * qJ(6) + t4;
t1 = -t31 * pkin(5) + qJD(6) - t3;
t6 = [0, 0, 0, 0, 0, t62, 0, 0, 0, 0, t44 * t62, t47 * t51 * t48, 0, t45 * t62, 0, 0, -t42 * t54, t42 * t55 (t44 + t45) * t51 * qJ(2), t42 ^ 2 / 0.2e1 + (t45 / 0.2e1 + t44 / 0.2e1) * qJ(2) ^ 2 * t51, t37 ^ 2 / 0.2e1, -t37 * t35, t37 * qJD(3), t35 ^ 2 / 0.2e1, -t35 * qJD(3), qJD(3) ^ 2 / 0.2e1, t24 * qJD(3) + t40 * t35, -t25 * qJD(3) + t40 * t37, -t24 * t37 - t25 * t35, t25 ^ 2 / 0.2e1 + t24 ^ 2 / 0.2e1 + t40 ^ 2 / 0.2e1, t29 ^ 2 / 0.2e1, -t29 * t27, t29 * t31, t27 ^ 2 / 0.2e1, -t27 * t31, t30, t10 * t31 + t22 * t27, -t11 * t31 + t22 * t29, -t10 * t29 - t11 * t27, t11 ^ 2 / 0.2e1 + t10 ^ 2 / 0.2e1 + t22 ^ 2 / 0.2e1, t14, -t59, t12, t53, -t58, t30, t13 * t15 + t3 * t31, t13 * t17 - t4 * t31, -t4 * t15 - t3 * t17, t4 ^ 2 / 0.2e1 + t3 ^ 2 / 0.2e1 + t13 ^ 2 / 0.2e1, t14, t12, t59, t30, t58, t53, -t1 * t31 + t5 * t15, t1 * t17 - t2 * t15, -t5 * t17 + t2 * t31, t2 ^ 2 / 0.2e1 + t5 ^ 2 / 0.2e1 + t1 ^ 2 / 0.2e1;];
T_reg  = t6;
