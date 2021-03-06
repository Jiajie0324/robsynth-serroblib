% Calculate minimal parameter regressor of coriolis matrix for
% S4PRPR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d2,d4,theta1,theta3]';
% 
% Output:
% cmat_reg [(4*%NQJ)%x15]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 16:21
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S4PRPR3_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PRPR3_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4PRPR3_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4PRPR3_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [7x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 16:20:56
% EndTime: 2019-12-31 16:20:56
% DurationCPUTime: 0.11s
% Computational Cost: add. (59->24), mult. (149->38), div. (0->0), fcn. (162->4), ass. (0->25)
t28 = cos(qJ(4));
t27 = pkin(5) + qJ(3);
t15 = sin(pkin(7));
t16 = cos(pkin(7));
t10 = t15 ^ 2 + t16 ^ 2;
t17 = sin(qJ(4));
t4 = t17 * t15 - t28 * t16;
t6 = t28 * t15 + t17 * t16;
t1 = t4 ^ 2 - t6 ^ 2;
t26 = t1 * qJD(2);
t25 = t4 * qJD(2);
t2 = t4 * qJD(4);
t24 = t6 * qJD(2);
t3 = t6 * qJD(4);
t7 = t10 * qJ(3);
t23 = t7 * qJD(2);
t12 = -t16 * pkin(3) - pkin(2);
t22 = qJD(2) * t12;
t21 = qJD(4) * t12;
t20 = t10 * qJD(2);
t19 = t4 * t24;
t18 = qJD(3) + t22;
t9 = t27 * t16;
t8 = t27 * t15;
t5 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t3, t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, t10 * qJD(3), t7 * qJD(3), -t4 * t3, t1 * qJD(4), 0, 0, 0, t6 * t21, -t4 * t21; 0, 0, 0, 0, 0, 0, t20, t23, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, -t19, t26, -t2, -t3, 0, t6 * t22 + (t17 * t8 - t28 * t9) * qJD(4), -t4 * t22 + (t17 * t9 + t28 * t8) * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, -t20, -t23, 0, 0, 0, 0, 0, t3, -t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t24, -t25; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, t19, -t26, 0, 0, 0, -t18 * t6, t18 * t4; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t24, t25; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t5;
