% Calculate minimal parameter regressor of coriolis joint torque vector for
% S4PRPP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% pkin [5x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d2,theta1]';
% 
% Output:
% tauc_reg [4x10]
%   minimal parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 18:18
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S4PRPP1_coriolisvecJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(5,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PRPP1_coriolisvecJ_fixb_regmin_slag_vp: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4PRPP1_coriolisvecJ_fixb_regmin_slag_vp: qJD has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [5 1]), ...
  'S4PRPP1_coriolisvecJ_fixb_regmin_slag_vp: pkin has to be [5x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 18:17:55
% EndTime: 2019-03-08 18:17:56
% DurationCPUTime: 0.06s
% Computational Cost: add. (16->12), mult. (30->15), div. (0->0), fcn. (0->0), ass. (0->7)
t6 = 2 * qJD(2);
t5 = (-pkin(2) - qJ(4));
t3 = qJD(3) * t6;
t4 = qJD(2) ^ 2;
t2 = qJD(2) * qJ(3) + qJD(4);
t1 = t5 * qJD(2) + qJD(3);
t7 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, t3, qJ(3) * t3, t3, qJD(4) * t6, t2 * qJD(3) - t1 * qJD(4) + (qJ(3) * qJD(3) - t5 * qJD(4)) * qJD(2); 0, 0, 0, 0, 0, -t4, -t4 * qJ(3), -t4, 0 (-qJD(4) - t2) * qJD(2); 0, 0, 0, 0, 0, 0, 0, 0, -t4 (qJD(3) + t1) * qJD(2);];
tauc_reg  = t7;
