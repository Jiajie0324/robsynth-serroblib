% Calculate minimal parameter regressor of joint inertia matrix time derivative for
% S4RPRP2
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
% MMD_reg [((4+1)*4/2)x10]
%   minimal parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 13:50
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function MMD_reg = S4RPRP2_inertiaDJ_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(5,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RPRP2_inertiaDJ_regmin_slag_vp: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RPRP2_inertiaDJ_regmin_slag_vp: qJD has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [5 1]), ...
  'S4RPRP2_inertiaDJ_regmin_slag_vp: pkin has to be [5x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-14 13:49:34
% EndTime: 2018-11-14 13:49:34
% DurationCPUTime: 0.08s
% Computational Cost: add. (44->16), mult. (79->26), div. (0->0), fcn. (44->2), ass. (0->11)
t12 = 2 * qJD(2);
t7 = sin(qJ(3));
t11 = qJD(3) * t7;
t8 = cos(qJ(3));
t10 = qJD(3) * t8;
t9 = -pkin(1) - pkin(2);
t4 = t8 * qJ(2) + t7 * t9;
t3 = -t7 * qJ(2) + t8 * t9 - pkin(3);
t2 = t7 * qJD(2) + qJD(3) * t4;
t1 = qJ(2) * t11 - t8 * qJD(2) - t9 * t10;
t5 = [0, 0, 0, 0, t12, qJ(2) * t12, 0, 0.2e1 * t2, -0.2e1 * t1, -0.2e1 * t4 * t1 - 0.2e1 * t3 * t2; 0, 0, 0, 0, 0, 0, 0, t11, t10, -t1 * t7 - t2 * t8 + (-t3 * t7 + t4 * t8) * qJD(3); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, -t2, t1, -t2 * pkin(3); 0, 0, 0, 0, 0, 0, 0, -t11, -t10, -pkin(3) * t11; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t5;
