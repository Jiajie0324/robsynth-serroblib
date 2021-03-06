% Calculate inertial parameters regressor of fixed base kinetic energy for
% S6RPRPRR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,d6,theta2,theta4]';
% 
% Output:
% T_reg [1x(6*10)]
%   minimal parameter regressor of kinetic energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 03:43
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T_reg = S6RPRPRR3_energykin_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRR3_energykin_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRR3_energykin_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RPRPRR3_energykin_fixb_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From energy_kinetic_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 03:42:25
% EndTime: 2019-03-09 03:42:25
% DurationCPUTime: 0.17s
% Computational Cost: add. (693->60), mult. (1548->145), div. (0->0), fcn. (1021->10), ass. (0->46)
t54 = qJD(1) ^ 2;
t46 = t54 / 0.2e1;
t63 = pkin(1) * t54;
t62 = cos(qJ(5));
t61 = cos(qJ(6));
t48 = sin(pkin(10));
t37 = (pkin(1) * t48 + pkin(7)) * qJD(1);
t52 = sin(qJ(3));
t53 = cos(qJ(3));
t30 = t52 * qJD(2) + t53 * t37;
t27 = qJD(3) * qJ(4) + t30;
t49 = cos(pkin(10));
t56 = -pkin(1) * t49 - pkin(2);
t28 = (-pkin(3) * t53 - qJ(4) * t52 + t56) * qJD(1);
t47 = sin(pkin(11));
t60 = cos(pkin(11));
t16 = -t47 * t27 + t60 * t28;
t59 = qJD(1) * t52;
t34 = t47 * qJD(3) + t60 * t59;
t58 = t53 * qJD(1);
t13 = -pkin(4) * t58 - t34 * pkin(8) + t16;
t17 = t60 * t27 + t47 * t28;
t32 = -t60 * qJD(3) + t47 * t59;
t15 = -t32 * pkin(8) + t17;
t51 = sin(qJ(5));
t6 = t51 * t13 + t62 * t15;
t57 = qJD(1) * qJD(3);
t5 = t62 * t13 - t51 * t15;
t29 = t53 * qJD(2) - t52 * t37;
t41 = -qJD(5) + t58;
t26 = -qJD(3) * pkin(3) + qJD(4) - t29;
t18 = t32 * pkin(4) + t26;
t50 = sin(qJ(6));
t43 = t53 ^ 2 * t46;
t39 = -qJD(6) + t41;
t38 = t56 * qJD(1);
t22 = -t51 * t32 + t62 * t34;
t20 = t62 * t32 + t51 * t34;
t12 = t20 * pkin(5) + t18;
t9 = -t50 * t20 + t61 * t22;
t7 = t61 * t20 + t50 * t22;
t4 = -t20 * pkin(9) + t6;
t3 = -t41 * pkin(5) - t22 * pkin(9) + t5;
t2 = t50 * t3 + t61 * t4;
t1 = t61 * t3 - t50 * t4;
t8 = [0, 0, 0, 0, 0, t46, 0, 0, 0, 0, 0, 0, 0, 0, 0, t46, t49 * t63, -t48 * t63, 0, qJD(2) ^ 2 / 0.2e1 + (t48 ^ 2 / 0.2e1 + t49 ^ 2 / 0.2e1) * pkin(1) ^ 2 * t54, t52 ^ 2 * t46, t52 * t54 * t53, t52 * t57, t43, t53 * t57, qJD(3) ^ 2 / 0.2e1, t29 * qJD(3) - t38 * t58, -t30 * qJD(3) + t38 * t59 (-t29 * t52 + t30 * t53) * qJD(1), t30 ^ 2 / 0.2e1 + t29 ^ 2 / 0.2e1 + t38 ^ 2 / 0.2e1, t34 ^ 2 / 0.2e1, -t34 * t32, -t34 * t58, t32 ^ 2 / 0.2e1, t32 * t58, t43, -t16 * t58 + t26 * t32, t17 * t58 + t26 * t34, -t16 * t34 - t17 * t32, t17 ^ 2 / 0.2e1 + t16 ^ 2 / 0.2e1 + t26 ^ 2 / 0.2e1, t22 ^ 2 / 0.2e1, -t22 * t20, -t22 * t41, t20 ^ 2 / 0.2e1, t20 * t41, t41 ^ 2 / 0.2e1, t18 * t20 - t5 * t41, t18 * t22 + t6 * t41, -t6 * t20 - t5 * t22, t6 ^ 2 / 0.2e1 + t5 ^ 2 / 0.2e1 + t18 ^ 2 / 0.2e1, t9 ^ 2 / 0.2e1, -t9 * t7, -t9 * t39, t7 ^ 2 / 0.2e1, t7 * t39, t39 ^ 2 / 0.2e1, -t1 * t39 + t12 * t7, t12 * t9 + t2 * t39, -t1 * t9 - t2 * t7, t2 ^ 2 / 0.2e1 + t1 ^ 2 / 0.2e1 + t12 ^ 2 / 0.2e1;];
T_reg  = t8;
