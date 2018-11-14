% Calculate inertial parameters regressor of potential energy for
% S3PRP2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [3x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [3x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,d2]';
% 
% Output:
% U_reg [1x(3*10)]
%   inertial parameter regressor of Potential energy

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 10:07
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function U_reg = S3PRP2_energypot_fixb_reg2_slag_vp(qJ, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(3,1),zeros(3,1),zeros(3,1)}
assert(isreal(qJ) && all(size(qJ) == [3 1]), ...
  'S3PRP2_energypot_fixb_reg2_slag_vp: qJ has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S3PRP2_energypot_fixb_reg2_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [3 1]), ...
  'S3PRP2_energypot_fixb_reg2_slag_vp: pkin has to be [3x1] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-14 10:07:17
% EndTime: 2018-11-14 10:07:17
% DurationCPUTime: 0.02s
% Computational Cost: add. (16->15), mult. (19->13), div. (0->0), fcn. (12->2), ass. (0->7)
t13 = g(1) * qJ(1);
t12 = g(3) * pkin(3);
t11 = cos(qJ(2));
t10 = sin(qJ(2));
t9 = g(1) * t11 - g(2) * t10;
t8 = -g(1) * t10 - g(2) * t11;
t1 = [0, 0, 0, 0, 0, 0, -g(2), -g(3), -g(1), -t13, 0, 0, 0, 0, 0, 0, t8, -t9, g(3), -g(2) * pkin(1) + t12 - t13, 0, 0, 0, 0, 0, 0, t8, g(3), t9, -g(1) * (t10 * pkin(2) - t11 * qJ(3) + qJ(1)) - g(2) * (t11 * pkin(2) + t10 * qJ(3) + pkin(1)) + t12;];
U_reg  = t1;
