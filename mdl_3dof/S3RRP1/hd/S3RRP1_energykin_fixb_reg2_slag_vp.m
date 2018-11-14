% Calculate inertial parameters regressor of fixed base kinetic energy for
% S3RRP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [3x1]
%   Generalized joint coordinates (joint angles)
% qJD [3x1]
%   Generalized joint velocities
% pkin [4x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,d1,d2]';
% 
% Output:
% T_reg [1x(3*10)]
%   minimal parameter regressor of kinetic energy

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 10:15
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function T_reg = S3RRP1_energykin_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(3,1),zeros(3,1),zeros(4,1)}
assert(isreal(qJ) && all(size(qJ) == [3 1]), ...
  'S3RRP1_energykin_fixb_reg2_slag_vp: qJ has to be [3x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [3 1]), ...
  'S3RRP1_energykin_fixb_reg2_slag_vp: qJD has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [4 1]), ...
  'S3RRP1_energykin_fixb_reg2_slag_vp: pkin has to be [4x1] (double)');

%% Symbolic Calculation
% From energy_kinetic_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-14 10:15:08
% EndTime: 2018-11-14 10:15:08
% DurationCPUTime: 0.05s
% Computational Cost: add. (20->8), mult. (42->23), div. (0->0), fcn. (8->2), ass. (0->11)
t11 = pkin(1) * qJD(1);
t5 = sin(qJ(2));
t10 = t5 * t11;
t6 = cos(qJ(2));
t9 = t6 * t11;
t7 = qJD(1) ^ 2;
t4 = qJD(1) + qJD(2);
t3 = t4 ^ 2 / 0.2e1;
t2 = t4 * qJ(3) + t10;
t1 = -t4 * pkin(2) + qJD(3) - t9;
t8 = [0, 0, 0, 0, 0, t7 / 0.2e1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t3, t4 * t9, -t4 * t10, 0 (t5 ^ 2 / 0.2e1 + t6 ^ 2 / 0.2e1) * pkin(1) ^ 2 * t7, 0, 0, 0, t3, 0, 0, -t1 * t4, 0, t2 * t4, t2 ^ 2 / 0.2e1 + t1 ^ 2 / 0.2e1;];
T_reg  = t8;
