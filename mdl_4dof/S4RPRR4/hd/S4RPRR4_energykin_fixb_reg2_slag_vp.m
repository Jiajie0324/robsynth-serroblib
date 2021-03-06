% Calculate inertial parameters regressor of fixed base kinetic energy for
% S4RPRR4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d3,d4,theta2]';
% 
% Output:
% T_reg [1x(4*10)]
%   inertial parameter regressor of kinetic energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 16:50
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T_reg = S4RPRR4_energykin_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RPRR4_energykin_fixb_reg2_slag_vp: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RPRR4_energykin_fixb_reg2_slag_vp: qJD has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4RPRR4_energykin_fixb_reg2_slag_vp: pkin has to be [7x1] (double)');

%% Symbolic Calculation
% From energy_kinetic_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 16:50:34
% EndTime: 2019-12-31 16:50:34
% DurationCPUTime: 0.10s
% Computational Cost: add. (94->28), mult. (260->82), div. (0->0), fcn. (127->6), ass. (0->26)
t24 = qJD(1) ^ 2;
t18 = t24 / 0.2e1;
t31 = pkin(1) * t24;
t19 = sin(pkin(7));
t12 = (pkin(1) * t19 + pkin(5)) * qJD(1);
t22 = sin(qJ(3));
t23 = cos(qJ(3));
t7 = t22 * qJD(2) + t23 * t12;
t30 = cos(qJ(4));
t29 = qJD(1) * t22;
t28 = t23 * qJD(1);
t27 = qJD(1) * qJD(3);
t20 = cos(pkin(7));
t26 = -pkin(1) * t20 - pkin(2);
t6 = t23 * qJD(2) - t22 * t12;
t21 = sin(qJ(4));
t14 = -qJD(4) + t28;
t13 = t26 * qJD(1);
t11 = t21 * qJD(3) + t30 * t29;
t9 = -t30 * qJD(3) + t21 * t29;
t5 = (-pkin(3) * t23 - pkin(6) * t22 + t26) * qJD(1);
t4 = qJD(3) * pkin(6) + t7;
t3 = -qJD(3) * pkin(3) - t6;
t2 = t21 * t5 + t30 * t4;
t1 = -t21 * t4 + t30 * t5;
t8 = [0, 0, 0, 0, 0, t18, 0, 0, 0, 0, 0, 0, 0, 0, 0, t18, t20 * t31, -t19 * t31, 0, qJD(2) ^ 2 / 0.2e1 + (t19 ^ 2 / 0.2e1 + t20 ^ 2 / 0.2e1) * pkin(1) ^ 2 * t24, t22 ^ 2 * t18, t22 * t24 * t23, t22 * t27, t23 ^ 2 * t18, t23 * t27, qJD(3) ^ 2 / 0.2e1, t6 * qJD(3) - t13 * t28, -t7 * qJD(3) + t13 * t29, (-t22 * t6 + t23 * t7) * qJD(1), t7 ^ 2 / 0.2e1 + t6 ^ 2 / 0.2e1 + t13 ^ 2 / 0.2e1, t11 ^ 2 / 0.2e1, -t11 * t9, -t11 * t14, t9 ^ 2 / 0.2e1, t9 * t14, t14 ^ 2 / 0.2e1, -t1 * t14 + t3 * t9, t3 * t11 + t2 * t14, -t1 * t11 - t2 * t9, t2 ^ 2 / 0.2e1 + t1 ^ 2 / 0.2e1 + t3 ^ 2 / 0.2e1;];
T_reg = t8;
