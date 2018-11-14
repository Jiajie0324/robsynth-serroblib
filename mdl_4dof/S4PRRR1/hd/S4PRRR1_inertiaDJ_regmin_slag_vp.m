% Calculate minimal parameter regressor of joint inertia matrix time derivative for
% S4PRRR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d2,d3,d4,theta1]';
% 
% Output:
% MMD_reg [((4+1)*4/2)x10]
%   minimal parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 13:45
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function MMD_reg = S4PRRR1_inertiaDJ_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PRRR1_inertiaDJ_regmin_slag_vp: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4PRRR1_inertiaDJ_regmin_slag_vp: qJD has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4PRRR1_inertiaDJ_regmin_slag_vp: pkin has to be [7x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-14 13:44:44
% EndTime: 2018-11-14 13:44:44
% DurationCPUTime: 0.09s
% Computational Cost: add. (30->15), mult. (104->28), div. (0->0), fcn. (58->4), ass. (0->18)
t18 = pkin(2) * qJD(3);
t7 = sin(qJ(3));
t15 = t7 * t18;
t6 = sin(qJ(4));
t17 = qJD(4) * t6;
t19 = t7 * pkin(2) * t17 + t6 * t15;
t8 = cos(qJ(4));
t16 = qJD(4) * t8;
t9 = cos(qJ(3));
t14 = t9 * t18;
t13 = pkin(3) * t17;
t12 = pkin(3) * t16;
t5 = t9 * pkin(2) + pkin(3);
t11 = (-pkin(3) - t5) * qJD(4);
t10 = (-t7 * t16 + (-t6 * t9 - t7 * t8) * qJD(3)) * pkin(2);
t2 = -t5 * t17 + t10;
t1 = (-qJD(4) * t5 - t14) * t8 + t19;
t3 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, -0.2e1 * t15, -0.2e1 * t14, 0, 0.2e1 * t2, 0.2e1 * t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, -t15, -t14, 0, t6 * t11 + t10 (t11 - t14) * t8 + t19; 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t13, -0.2e1 * t12; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, t2, t1; 0, 0, 0, 0, 0, 0, 0, 0, -t13, -t12; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t3;
