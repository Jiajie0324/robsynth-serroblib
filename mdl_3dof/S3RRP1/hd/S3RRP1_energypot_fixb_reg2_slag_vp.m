% Calculate inertial parameters regressor of potential energy for
% S3RRP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [3x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [4x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,d1,d2]';
% 
% Output:
% U_reg [1x(3*10)]
%   inertial parameter regressor of Potential energy

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 10:15
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function U_reg = S3RRP1_energypot_fixb_reg2_slag_vp(qJ, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(3,1),zeros(3,1),zeros(4,1)}
assert(isreal(qJ) && all(size(qJ) == [3 1]), ...
  'S3RRP1_energypot_fixb_reg2_slag_vp: qJ has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S3RRP1_energypot_fixb_reg2_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [4 1]), ...
  'S3RRP1_energypot_fixb_reg2_slag_vp: pkin has to be [4x1] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-14 10:15:08
% EndTime: 2018-11-14 10:15:08
% DurationCPUTime: 0.03s
% Computational Cost: add. (32->18), mult. (27->19), div. (0->0), fcn. (20->4), ass. (0->10)
t21 = g(3) * (pkin(4) + pkin(3));
t17 = sin(qJ(1));
t18 = cos(qJ(1));
t20 = -g(1) * t18 - g(2) * t17;
t16 = qJ(1) + qJ(2);
t15 = cos(t16);
t14 = sin(t16);
t13 = -g(1) * t15 - g(2) * t14;
t12 = g(1) * t14 - g(2) * t15;
t1 = [0, 0, 0, 0, 0, 0, t20, g(1) * t17 - g(2) * t18, -g(3), -g(3) * pkin(3), 0, 0, 0, 0, 0, 0, t13, t12, -g(3), t20 * pkin(1) - t21, 0, 0, 0, 0, 0, 0, t13, -g(3), -t12, -g(1) * (t18 * pkin(1) + t15 * pkin(2) + t14 * qJ(3)) - g(2) * (t17 * pkin(1) + t14 * pkin(2) - t15 * qJ(3)) - t21;];
U_reg  = t1;
