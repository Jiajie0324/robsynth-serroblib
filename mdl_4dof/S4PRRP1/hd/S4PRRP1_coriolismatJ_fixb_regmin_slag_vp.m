% Calculate minimal parameter regressor of coriolis matrix for
% S4PRRP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% pkin [6x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d2,d3,theta1]';
% 
% Output:
% cmat_reg [(4*%NQJ)%x10]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 18:23
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S4PRRP1_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(6,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PRRP1_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4PRRP1_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S4PRRP1_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [6x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 18:23:00
% EndTime: 2019-03-08 18:23:00
% DurationCPUTime: 0.10s
% Computational Cost: add. (37->21), mult. (75->22), div. (0->0), fcn. (35->2), ass. (0->18)
t17 = pkin(2) * qJD(2);
t16 = pkin(2) * qJD(3);
t11 = sin(qJ(3));
t12 = cos(qJ(3));
t5 = t11 * pkin(2) + qJ(4);
t1 = (t5 * t12 + (-t12 * pkin(2) - pkin(3)) * t11) * pkin(2);
t15 = t1 * qJD(2);
t8 = t12 * t16;
t14 = t8 + qJD(4);
t9 = qJD(2) + qJD(3);
t13 = t11 * t16;
t10 = qJ(4) * qJD(4);
t7 = t12 * t17;
t6 = t11 * t17;
t4 = t9 * qJ(4);
t3 = t5 * qJD(4);
t2 = -t6 - t13;
t18 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, -t13, -t8, -t13, t14, t1 * qJD(3) + t3; 0, 0, 0, 0, 0, t2, -t7 - t8, t2, t7 + t14, t15 + t3 + (-pkin(3) * t11 + qJ(4) * t12) * t16; 0, 0, 0, 0, 0, 0, 0, 0, t9, t9 * t5; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, t6, t7, t6, -t7 + qJD(4), t10 - t15; 0, 0, 0, 0, 0, 0, 0, 0, qJD(4), t10; 0, 0, 0, 0, 0, 0, 0, 0, t9, t4; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, -t9, -qJ(4) * qJD(3) - t5 * qJD(2); 0, 0, 0, 0, 0, 0, 0, 0, -t9, -t4; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t18;
