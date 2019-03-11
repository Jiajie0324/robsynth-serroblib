% Calculate minimal parameter regressor of inverse dynamics joint torque vector for
% S4PRPP3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% qJDD [4x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [4x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d2]';
% 
% Output:
% tau_reg [4x10]
%   minimal parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 18:20
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S4PRPP3_invdynJ_fixb_regmin_slag_vp(qJ, qJD, qJDD, g, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(4,1),zeros(3,1),zeros(4,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PRPP3_invdynJ_fixb_regmin_slag_vp: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4PRPP3_invdynJ_fixb_regmin_slag_vp: qJD has to be [4x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [4 1]), ...
  'S4PRPP3_invdynJ_fixb_regmin_slag_vp: qJDD has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4PRPP3_invdynJ_fixb_regmin_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [4 1]), ...
  'S4PRPP3_invdynJ_fixb_regmin_slag_vp: pkin has to be [4x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 18:20:04
% EndTime: 2019-03-08 18:20:04
% DurationCPUTime: 0.10s
% Computational Cost: add. (119->53), mult. (170->53), div. (0->0), fcn. (88->2), ass. (0->35)
t24 = -pkin(2) - pkin(3);
t30 = t24 * qJDD(2);
t22 = sin(qJ(2));
t36 = t22 * qJD(1);
t13 = qJD(2) * qJ(3) + t36;
t15 = t22 * qJDD(1);
t33 = qJDD(2) * qJ(3);
t23 = cos(qJ(2));
t35 = t23 * qJD(1);
t5 = t33 + t15 + (qJD(3) + t35) * qJD(2);
t42 = qJ(3) * t5 + qJD(3) * t13;
t41 = t13 * t23;
t40 = pkin(2) * t23 + qJ(3) * t22;
t39 = qJD(2) * t22;
t38 = qJDD(2) * pkin(2);
t37 = t13 * qJD(2);
t34 = t22 * t5 + t23 * t37 - g(2);
t16 = t23 * qJDD(1);
t32 = g(1) * t22 - g(2) * t23 + t16;
t14 = qJD(2) * t36;
t31 = qJDD(3) + t14 - t16;
t29 = qJD(3) - t35;
t28 = qJDD(3) - t32;
t27 = g(1) * t23 + g(2) * t22 - t15;
t26 = t14 + t28 - t37;
t25 = qJD(2) ^ 2;
t18 = t23 * qJ(3);
t12 = -qJD(2) * pkin(2) + t29;
t11 = qJDD(2) * t23 - t22 * t25;
t10 = qJDD(2) * t22 + t23 * t25;
t8 = qJD(2) * t24 + t29;
t6 = t31 - t38;
t4 = t30 + t31;
t2 = 0.2e1 * qJD(2) * qJD(3) - t27 + 0.2e1 * t33;
t1 = [qJDD(1) - g(2), 0, t11, -t10, t11, t10, t12 * t39 - t23 * t6 + t34, t11, t10, -t23 * t4 + t39 * t8 + t34; 0, qJDD(2), t32, t27, -t28 + 0.2e1 * t38, t2, -t6 * pkin(2) - g(1) * (-pkin(2) * t22 + t18) - g(2) * t40 + (-t12 * t22 - t41) * qJD(1) + t42, -t28 - 0.2e1 * t30, t2, t4 * t24 - g(1) * (t22 * t24 + t18) - g(2) * (pkin(3) * t23 + t40) + (-t22 * t8 - t41) * qJD(1) + t42; 0, 0, 0, 0, -qJDD(2), -t25, t26 - t38, -qJDD(2), -t25, t30 + t26; 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(4) + g(3);];
tau_reg  = t1;
