% Calculate inertial parameters regressor of fixed base kinetic energy for
% S6RRRRPP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,theta5]';
% 
% Output:
% T_reg [1x(6*10)]
%   minimal parameter regressor of kinetic energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 20:47
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T_reg = S6RRRRPP1_energykin_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPP1_energykin_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPP1_energykin_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRPP1_energykin_fixb_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From energy_kinetic_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 20:46:46
% EndTime: 2019-03-09 20:46:46
% DurationCPUTime: 0.21s
% Computational Cost: add. (924->62), mult. (1986->141), div. (0->0), fcn. (1417->8), ass. (0->52)
t51 = qJD(1) ^ 2;
t66 = t51 / 0.2e1;
t65 = -pkin(8) - pkin(7);
t46 = sin(pkin(10));
t59 = cos(pkin(10));
t48 = sin(qJ(3));
t50 = cos(qJ(2));
t57 = qJD(1) * t50;
t49 = sin(qJ(2));
t58 = qJD(1) * t49;
t64 = cos(qJ(3));
t33 = t48 * t58 - t64 * t57;
t35 = (t48 * t50 + t64 * t49) * qJD(1);
t40 = (-pkin(2) * t50 - pkin(1)) * qJD(1);
t20 = t33 * pkin(3) - t35 * pkin(9) + t40;
t38 = qJD(2) * pkin(2) + t65 * t58;
t39 = t65 * t57;
t25 = t48 * t38 - t64 * t39;
t43 = qJD(2) + qJD(3);
t23 = t43 * pkin(9) + t25;
t47 = sin(qJ(4));
t63 = cos(qJ(4));
t10 = t63 * t20 - t47 * t23;
t29 = t63 * t35 + t47 * t43;
t32 = qJD(4) + t33;
t7 = t32 * pkin(4) - t29 * qJ(5) + t10;
t11 = t47 * t20 + t63 * t23;
t27 = t47 * t35 - t63 * t43;
t9 = -t27 * qJ(5) + t11;
t4 = t46 * t7 + t59 * t9;
t15 = t59 * t27 + t46 * t29;
t17 = -t46 * t27 + t59 * t29;
t62 = t17 * t15;
t61 = t32 * t15;
t60 = t50 * t51;
t56 = t15 ^ 2 / 0.2e1;
t55 = qJD(1) * qJD(2);
t54 = t49 * t55;
t53 = t50 * t55;
t24 = t64 * t38 + t48 * t39;
t3 = -t46 * t9 + t59 * t7;
t22 = -t43 * pkin(3) - t24;
t13 = t27 * pkin(4) + qJD(5) + t22;
t45 = t50 ^ 2;
t44 = t49 ^ 2;
t30 = t32 ^ 2 / 0.2e1;
t14 = t17 ^ 2 / 0.2e1;
t12 = t17 * t32;
t5 = t15 * pkin(5) - t17 * qJ(6) + t13;
t2 = t32 * qJ(6) + t4;
t1 = -t32 * pkin(5) + qJD(6) - t3;
t6 = [0, 0, 0, 0, 0, t66, 0, 0, 0, 0, t44 * t66, t49 * t60, t54, t45 * t66, t53, qJD(2) ^ 2 / 0.2e1, pkin(1) * t60 - pkin(7) * t54, -t51 * pkin(1) * t49 - pkin(7) * t53 (t44 + t45) * t51 * pkin(7) (pkin(1) ^ 2 / 0.2e1 + (t45 / 0.2e1 + t44 / 0.2e1) * pkin(7) ^ 2) * t51, t35 ^ 2 / 0.2e1, -t35 * t33, t35 * t43, t33 ^ 2 / 0.2e1, -t33 * t43, t43 ^ 2 / 0.2e1, t24 * t43 + t40 * t33, -t25 * t43 + t40 * t35, -t24 * t35 - t25 * t33, t25 ^ 2 / 0.2e1 + t24 ^ 2 / 0.2e1 + t40 ^ 2 / 0.2e1, t29 ^ 2 / 0.2e1, -t29 * t27, t29 * t32, t27 ^ 2 / 0.2e1, -t27 * t32, t30, t10 * t32 + t22 * t27, -t11 * t32 + t22 * t29, -t10 * t29 - t11 * t27, t11 ^ 2 / 0.2e1 + t10 ^ 2 / 0.2e1 + t22 ^ 2 / 0.2e1, t14, -t62, t12, t56, -t61, t30, t13 * t15 + t3 * t32, t13 * t17 - t4 * t32, -t4 * t15 - t3 * t17, t4 ^ 2 / 0.2e1 + t3 ^ 2 / 0.2e1 + t13 ^ 2 / 0.2e1, t14, t12, t62, t30, t61, t56, -t1 * t32 + t5 * t15, t1 * t17 - t2 * t15, -t5 * t17 + t2 * t32, t2 ^ 2 / 0.2e1 + t5 ^ 2 / 0.2e1 + t1 ^ 2 / 0.2e1;];
T_reg  = t6;
