% Calculate minimal parameter regressor of fixed base kinetic energy for
% S4PPPR4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% pkin [5x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d4,theta3]';
% 
% Output:
% T_reg [1x6]
%   minimal parameter regressor of kinetic energy

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 14:04
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function T_reg = S4PPPR4_energykin_fixb_regmin_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(5,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PPPR4_energykin_fixb_regmin_slag_vp: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4PPPR4_energykin_fixb_regmin_slag_vp: qJD has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [5 1]), ...
  'S4PPPR4_energykin_fixb_regmin_slag_vp: pkin has to be [5x1] (double)');

%% Symbolic Calculation
% From energy_kinetic_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-14 14:04:12
% EndTime: 2018-11-14 14:04:12
% DurationCPUTime: 0.02s
% Computational Cost: add. (12->8), mult. (32->21), div. (0->0), fcn. (16->4), ass. (0->8)
t26 = cos(qJ(4));
t25 = sin(qJ(4));
t24 = cos(pkin(5));
t23 = sin(pkin(5));
t22 = qJD(1) ^ 2 / 0.2e1;
t21 = t24 * qJD(1) + t23 * qJD(2);
t20 = -t23 * qJD(1) + t24 * qJD(2);
t1 = [t22, t22 + qJD(2) ^ 2 / 0.2e1, t21 ^ 2 / 0.2e1 + t20 ^ 2 / 0.2e1 + qJD(3) ^ 2 / 0.2e1, qJD(4) ^ 2 / 0.2e1 (t26 * t20 - t25 * t21) * qJD(4) -(t25 * t20 + t26 * t21) * qJD(4);];
T_reg  = t1;
