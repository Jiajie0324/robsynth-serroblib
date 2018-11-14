% Calculate minimal parameter regressor of joint inertia matrix time derivative for
% S3RPR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [3x1]
%   Generalized joint coordinates (joint angles)
% qJD [3x1]
%   Generalized joint velocities
% pkin [4x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,d1,d3]';
% 
% Output:
% MMD_reg [((3+1)*3/2)x9]
%   minimal parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 10:14
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function MMD_reg = S3RPR1_inertiaDJ_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(3,1),zeros(3,1),zeros(4,1)}
assert(isreal(qJ) && all(size(qJ) == [3 1]), ...
  'S3RPR1_inertiaDJ_regmin_slag_vp: qJ has to be [3x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [3 1]), ...
  'S3RPR1_inertiaDJ_regmin_slag_vp: qJD has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [4 1]), ...
  'S3RPR1_inertiaDJ_regmin_slag_vp: pkin has to be [4x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-14 10:14:28
% EndTime: 2018-11-14 10:14:28
% DurationCPUTime: 0.07s
% Computational Cost: add. (14->8), mult. (33->14), div. (0->0), fcn. (16->2), ass. (0->9)
t8 = 2 * qJD(2);
t3 = sin(qJ(3));
t7 = qJD(3) * t3;
t4 = cos(qJ(3));
t6 = qJD(3) * t4;
t5 = -pkin(1) - pkin(2);
t2 = t3 * qJD(2) + (qJ(2) * t4 + t3 * t5) * qJD(3);
t1 = -t4 * qJD(2) + (qJ(2) * t3 - t4 * t5) * qJD(3);
t9 = [0, 0, 0, 0, t8, qJ(2) * t8, 0, 0.2e1 * t2, -0.2e1 * t1; 0, 0, 0, 0, 0, 0, 0, t7, t6; 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, -t2, t1; 0, 0, 0, 0, 0, 0, 0, -t7, -t6; 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t9;
