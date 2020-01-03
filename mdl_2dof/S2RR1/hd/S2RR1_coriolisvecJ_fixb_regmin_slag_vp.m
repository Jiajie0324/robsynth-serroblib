% Calculate minimal parameter regressor of coriolis joint torque vector for
% S2RR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [2x1]
%   Generalized joint coordinates (joint angles)
% qJD [2x1]
%   Generalized joint velocities
% pkin [1x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[d2]';
% 
% Output:
% tauc_reg [2x10]
%   minimal parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2020-01-03 11:19
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S2RR1_coriolisvecJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(2,1),zeros(2,1),zeros(1,1)}
assert(isreal(qJ) && all(size(qJ) == [2 1]), ...
  'S2RR1_coriolisvecJ_fixb_regmin_slag_vp: qJ has to be [2x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [2 1]), ...
  'S2RR1_coriolisvecJ_fixb_regmin_slag_vp: qJD has to be [2x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [1 1]), ...
  'S2RR1_coriolisvecJ_fixb_regmin_slag_vp: pkin has to be [1x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2020-01-03 11:19:10
% EndTime: 2020-01-03 11:19:10
% DurationCPUTime: 0.06s
% Computational Cost: add. (5->5), mult. (31->14), div. (0->0), fcn. (12->2), ass. (0->10)
t3 = sin(qJ(2));
t4 = cos(qJ(2));
t11 = t3 * t4;
t5 = qJD(2) ^ 2;
t10 = t5 * t3;
t9 = t5 * t4;
t8 = t3 ^ 2 - t4 ^ 2;
t7 = 2 * qJD(1) * qJD(2);
t6 = qJD(1) ^ 2;
t1 = [0, 0, 0, t7 * t11, -t8 * t7, -t9, t10, 0, pkin(1) * t9, -pkin(1) * t10; 0, 0, 0, -t6 * t11, t8 * t6, 0, 0, 0, 0, 0;];
tauc_reg = t1;
