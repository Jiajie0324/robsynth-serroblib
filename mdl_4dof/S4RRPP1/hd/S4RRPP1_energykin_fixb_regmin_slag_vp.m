% Calculate minimal parameter regressor of fixed base kinetic energy for
% S4RRPP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% pkin [6x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d2,theta3]';
% 
% Output:
% T_reg [1x10]
%   minimal parameter regressor of kinetic energy

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 13:52
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function T_reg = S4RRPP1_energykin_fixb_regmin_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(6,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RRPP1_energykin_fixb_regmin_slag_vp: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RRPP1_energykin_fixb_regmin_slag_vp: qJD has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S4RRPP1_energykin_fixb_regmin_slag_vp: pkin has to be [6x1] (double)');

%% Symbolic Calculation
% From energy_kinetic_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-14 13:51:40
% EndTime: 2018-11-14 13:51:40
% DurationCPUTime: 0.02s
% Computational Cost: add. (39->13), mult. (70->27), div. (0->0), fcn. (26->4), ass. (0->13)
t50 = qJD(1) + qJD(2);
t58 = pkin(1) * qJD(1);
t56 = cos(qJ(2)) * t58;
t48 = t50 * pkin(2) + t56;
t52 = sin(pkin(6));
t53 = cos(pkin(6));
t57 = sin(qJ(2)) * t58;
t46 = t52 * t48 + t53 * t57;
t45 = t53 * t48 - t52 * t57;
t51 = qJD(3) ^ 2 / 0.2e1;
t44 = t50 * qJ(4) + t46;
t43 = -t50 * pkin(3) + qJD(4) - t45;
t1 = [qJD(1) ^ 2 / 0.2e1, 0, 0, t50 ^ 2 / 0.2e1, t50 * t56, -t50 * t57, t46 ^ 2 / 0.2e1 + t45 ^ 2 / 0.2e1 + t51, -t43 * t50, t44 * t50, t44 ^ 2 / 0.2e1 + t51 + t43 ^ 2 / 0.2e1;];
T_reg  = t1;