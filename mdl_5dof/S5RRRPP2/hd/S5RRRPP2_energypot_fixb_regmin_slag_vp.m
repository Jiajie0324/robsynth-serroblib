% Calculate minimal parameter regressor of potential energy for
% S5RRRPP2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3]';
% 
% Output:
% U_reg [1x21]
%   minimal parameter regressor of Potential energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 20:52
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U_reg = S5RRRPP2_energypot_fixb_regmin_slag_vp(qJ, g, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRPP2_energypot_fixb_regmin_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRRPP2_energypot_fixb_regmin_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S5RRRPP2_energypot_fixb_regmin_slag_vp: pkin has to be [7x1] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 20:51:58
% EndTime: 2019-12-31 20:51:58
% DurationCPUTime: 0.06s
% Computational Cost: add. (89->31), mult. (87->36), div. (0->0), fcn. (81->6), ass. (0->18)
t125 = sin(qJ(3));
t136 = qJ(4) * t125 + pkin(2);
t124 = qJ(1) + qJ(2);
t118 = sin(t124);
t127 = cos(qJ(3));
t134 = t118 * t127;
t119 = cos(t124);
t133 = t119 * t127;
t126 = sin(qJ(1));
t132 = t126 * pkin(1) + pkin(3) * t134 + t136 * t118;
t131 = g(1) * t119 + g(2) * t118;
t128 = cos(qJ(1));
t130 = t128 * pkin(1) + pkin(3) * t133 + t118 * pkin(7) + t136 * t119;
t129 = t125 * pkin(3) - t127 * qJ(4) + pkin(5) + pkin(6);
t110 = g(1) * t118 - g(2) * t119;
t109 = -g(3) * t125 - t131 * t127;
t108 = -g(3) * t127 + t131 * t125;
t1 = [0, -g(1) * t128 - g(2) * t126, g(1) * t126 - g(2) * t128, 0, -t131, t110, 0, 0, 0, 0, 0, t109, t108, t109, -t110, -t108, -g(1) * t130 - g(2) * (-t119 * pkin(7) + t132) - g(3) * t129, t109, -t108, t110, -g(1) * (pkin(4) * t133 - t118 * qJ(5) + t130) - g(2) * (pkin(4) * t134 + (-pkin(7) + qJ(5)) * t119 + t132) - g(3) * (t125 * pkin(4) + t129);];
U_reg = t1;
