% Calculate inertial parameters regressor of potential energy for
% S6PRRRPR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d4,d6,theta1]';
% 
% Output:
% U_reg [1x(6*10)]
%   inertial parameter regressor of Potential energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 23:14
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U_reg = S6PRRRPR3_energypot_fixb_reg2_slag_vp(qJ, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRPR3_energypot_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRRRPR3_energypot_fixb_reg2_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRRRPR3_energypot_fixb_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 23:14:00
% EndTime: 2019-03-08 23:14:00
% DurationCPUTime: 0.23s
% Computational Cost: add. (308->91), mult. (511->133), div. (0->0), fcn. (603->12), ass. (0->50)
t103 = cos(pkin(11));
t101 = sin(pkin(11));
t102 = sin(pkin(6));
t131 = t101 * t102;
t133 = t103 * pkin(1) + pkin(7) * t131;
t104 = cos(pkin(6));
t132 = t104 * pkin(7) + qJ(1);
t130 = t102 * t103;
t106 = sin(qJ(3));
t129 = t102 * t106;
t107 = sin(qJ(2));
t128 = t102 * t107;
t109 = cos(qJ(3));
t127 = t102 * t109;
t110 = cos(qJ(2));
t126 = t102 * t110;
t125 = t104 * t106;
t124 = t104 * t107;
t123 = t104 * t110;
t122 = t101 * t129;
t97 = t101 * pkin(1);
t121 = -pkin(7) * t130 + t97;
t111 = -pkin(9) - pkin(8);
t83 = t101 * t123 + t103 * t107;
t84 = -t101 * t124 + t103 * t110;
t94 = t109 * pkin(3) + pkin(2);
t120 = pkin(3) * t122 - t83 * t111 + t84 * t94 + t133;
t119 = pkin(3) * t125 + t111 * t126 + t94 * t128 + t132;
t118 = g(1) * t101 - g(2) * t103;
t82 = t101 * t110 + t103 * t124;
t100 = qJ(3) + qJ(4);
t95 = sin(t100);
t96 = cos(t100);
t70 = t96 * t130 + t82 * t95;
t72 = -t96 * t131 + t84 * t95;
t77 = -t104 * t96 + t95 * t128;
t117 = g(1) * t72 + g(2) * t70 + g(3) * t77;
t71 = -t95 * t130 + t82 * t96;
t73 = t95 * t131 + t84 * t96;
t78 = t104 * t95 + t96 * t128;
t116 = g(1) * t73 + g(2) * t71 + g(3) * t78;
t81 = t101 * t107 - t103 * t123;
t67 = -g(1) * t83 - g(2) * t81 + g(3) * t126;
t115 = t73 * pkin(4) + t72 * qJ(5) + t120;
t114 = t78 * pkin(4) + t77 * qJ(5) + t119;
t113 = t82 * t94 - t81 * t111 + t97 + (-pkin(3) * t106 - pkin(7)) * t130;
t112 = t71 * pkin(4) + t70 * qJ(5) + t113;
t108 = cos(qJ(6));
t105 = sin(qJ(6));
t1 = [0, 0, 0, 0, 0, 0, -g(1) * t103 - g(2) * t101, t118, -g(3), -g(3) * qJ(1), 0, 0, 0, 0, 0, 0, -g(1) * t84 - g(2) * t82 - g(3) * t128, -t67, -g(3) * t104 - t118 * t102, -g(1) * t133 - g(2) * t121 - g(3) * t132, 0, 0, 0, 0, 0, 0, -g(1) * (t84 * t109 + t122) - g(2) * (-t103 * t129 + t82 * t109) - g(3) * (t107 * t127 + t125) -g(1) * (t101 * t127 - t84 * t106) - g(2) * (-t103 * t127 - t82 * t106) - g(3) * (t104 * t109 - t106 * t128) t67, -g(1) * (t84 * pkin(2) + t83 * pkin(8) + t133) - g(2) * (t82 * pkin(2) + t81 * pkin(8) + t121) - g(3) * ((pkin(2) * t107 - pkin(8) * t110) * t102 + t132) 0, 0, 0, 0, 0, 0, -t116, t117, t67, -g(1) * t120 - g(2) * t113 - g(3) * t119, 0, 0, 0, 0, 0, 0, t67, t116, -t117, -g(1) * t115 - g(2) * t112 - g(3) * t114, 0, 0, 0, 0, 0, 0, -g(1) * (t72 * t105 + t83 * t108) - g(2) * (t70 * t105 + t81 * t108) - g(3) * (t77 * t105 - t108 * t126) -g(1) * (-t83 * t105 + t72 * t108) - g(2) * (-t81 * t105 + t70 * t108) - g(3) * (t105 * t126 + t77 * t108) -t116, -g(1) * (t83 * pkin(5) + t73 * pkin(10) + t115) - g(2) * (t81 * pkin(5) + t71 * pkin(10) + t112) - g(3) * (-pkin(5) * t126 + t78 * pkin(10) + t114);];
U_reg  = t1;
