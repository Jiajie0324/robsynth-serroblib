% Calculate inertial parameters regressor of fixed base kinetic energy for
% S4RPRP6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% pkin [5x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d3]';
% 
% Output:
% T_reg [1x(4*10)]
%   inertial parameter regressor of kinetic energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 16:46
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T_reg = S4RPRP6_energykin_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(5,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RPRP6_energykin_fixb_reg2_slag_vp: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RPRP6_energykin_fixb_reg2_slag_vp: qJD has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [5 1]), ...
  'S4RPRP6_energykin_fixb_reg2_slag_vp: pkin has to be [5x1] (double)');

%% Symbolic Calculation
% From energy_kinetic_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 16:46:13
% EndTime: 2019-12-31 16:46:13
% DurationCPUTime: 0.09s
% Computational Cost: add. (56->22), mult. (147->49), div. (0->0), fcn. (39->2), ass. (0->24)
t17 = qJD(1) ^ 2;
t12 = t17 / 0.2e1;
t15 = sin(qJ(3));
t3 = qJD(4) + (pkin(3) * t15 + qJ(2)) * qJD(1);
t24 = qJD(1) * t3;
t5 = qJD(2) + (-pkin(1) - pkin(5)) * qJD(1);
t23 = qJD(3) * t5;
t22 = t17 * qJ(2);
t21 = qJD(1) * qJD(3);
t16 = cos(qJ(3));
t20 = t16 * t17 * t15;
t19 = t15 * t21;
t18 = -qJ(4) * qJD(1) + t5;
t14 = t16 ^ 2;
t13 = t15 ^ 2;
t11 = qJD(3) ^ 2 / 0.2e1;
t10 = qJ(2) ^ 2 * t12;
t9 = -qJD(1) * pkin(1) + qJD(2);
t8 = t16 * t21;
t7 = t14 * t12;
t6 = t13 * t12;
t2 = t18 * t15;
t1 = qJD(3) * pkin(3) + t18 * t16;
t4 = [0, 0, 0, 0, 0, t12, 0, 0, 0, 0, t12, 0, 0, 0, 0, 0, 0, t9 * qJD(1), t22, t10 + t9 ^ 2 / 0.2e1, t7, -t20, t8, t6, -t19, t11, t15 * t22 + t16 * t23, -t15 * t23 + t16 * t22, (-t13 - t14) * t5 * qJD(1), t10 + (t13 / 0.2e1 + t14 / 0.2e1) * t5 ^ 2, t7, -t20, t8, t6, -t19, t11, qJD(3) * t1 + t15 * t24, -qJD(3) * t2 + t16 * t24, (-t1 * t16 - t15 * t2) * qJD(1), t2 ^ 2 / 0.2e1 + t1 ^ 2 / 0.2e1 + t3 ^ 2 / 0.2e1;];
T_reg = t4;
