% Calculate inertial parameters regressor of potential energy for
% S6RRPRRR12
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d5,d6]';
% 
% Output:
% U_reg [1x(6*10)]
%   inertial parameter regressor of Potential energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 14:43
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U_reg = S6RRPRRR12_energypot_fixb_reg2_slag_vp(qJ, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRR12_energypot_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRRR12_energypot_fixb_reg2_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPRRR12_energypot_fixb_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 14:41:42
% EndTime: 2019-03-09 14:41:42
% DurationCPUTime: 0.22s
% Computational Cost: add. (260->97), mult. (470->133), div. (0->0), fcn. (547->12), ass. (0->54)
t111 = sin(qJ(1));
t142 = g(1) * t111;
t115 = cos(qJ(1));
t141 = g(2) * t115;
t107 = cos(pkin(6));
t140 = t107 * pkin(8) + pkin(7);
t109 = sin(qJ(4));
t114 = cos(qJ(2));
t129 = t115 * t114;
t110 = sin(qJ(2));
t132 = t111 * t110;
t89 = -t107 * t129 + t132;
t139 = t89 * t109;
t130 = t115 * t110;
t131 = t111 * t114;
t91 = t107 * t131 + t130;
t138 = t91 * t109;
t106 = sin(pkin(6));
t135 = t106 * t111;
t137 = t115 * pkin(1) + pkin(8) * t135;
t136 = t106 * t110;
t134 = t106 * t114;
t133 = t106 * t115;
t128 = pkin(2) * t136 + t140;
t127 = pkin(8) * t133;
t113 = cos(qJ(4));
t99 = t113 * pkin(4) + pkin(3);
t126 = t107 * t99 + t128;
t103 = t111 * pkin(1);
t90 = t107 * t130 + t131;
t125 = t90 * pkin(2) + t89 * qJ(3) + t103;
t124 = -t141 + t142;
t92 = -t107 * t132 + t129;
t123 = t92 * pkin(2) + t91 * qJ(3) + t137;
t116 = -pkin(10) - pkin(9);
t122 = pkin(4) * t139 - t90 * t116 + t125;
t105 = qJ(4) + qJ(5);
t100 = sin(t105);
t101 = cos(t105);
t75 = t100 * t135 - t91 * t101;
t77 = t100 * t133 + t89 * t101;
t80 = t107 * t100 + t101 * t134;
t121 = g(1) * t75 - g(2) * t77 + g(3) * t80;
t120 = g(1) * t92 + g(2) * t90 + g(3) * t136;
t119 = -g(1) * t91 - g(2) * t89 + g(3) * t134;
t118 = pkin(4) * t138 - t92 * t116 + t99 * t135 + t123;
t117 = (-g(3) * (-t110 * t116 + (-pkin(4) * t109 - qJ(3)) * t114) - (-pkin(8) - t99) * t141) * t106;
t112 = cos(qJ(6));
t108 = sin(qJ(6));
t84 = -g(3) * t107 - t124 * t106;
t81 = -t100 * t134 + t107 * t101;
t78 = t89 * t100 - t101 * t133;
t76 = t91 * t100 + t101 * t135;
t1 = [0, 0, 0, 0, 0, 0, -g(1) * t115 - g(2) * t111, t124, -g(3), -g(3) * pkin(7), 0, 0, 0, 0, 0, 0, -t120, -t119, t84, -g(1) * t137 - g(2) * (t103 - t127) - g(3) * t140, 0, 0, 0, 0, 0, 0, t84, t120, t119, -g(1) * t123 - g(2) * (t125 - t127) - g(3) * (-qJ(3) * t134 + t128) 0, 0, 0, 0, 0, 0, -g(1) * (t113 * t135 + t138) - g(2) * (-t113 * t133 + t139) - g(3) * (t107 * t113 - t109 * t134) -g(1) * (-t109 * t135 + t91 * t113) - g(2) * (t109 * t133 + t89 * t113) - g(3) * (-t107 * t109 - t113 * t134) -t120, -g(1) * (t92 * pkin(9) + t123) - g(2) * (t90 * pkin(9) + t125) - g(3) * (t107 * pkin(3) + t128) + (-pkin(3) * t142 - g(3) * (pkin(9) * t110 - qJ(3) * t114) - (-pkin(3) - pkin(8)) * t141) * t106, 0, 0, 0, 0, 0, 0, -g(1) * t76 - g(2) * t78 - g(3) * t81, t121, -t120, -g(1) * t118 - g(2) * t122 - g(3) * t126 + t117, 0, 0, 0, 0, 0, 0, -g(1) * (t92 * t108 + t76 * t112) - g(2) * (t90 * t108 + t78 * t112) - g(3) * (t108 * t136 + t81 * t112) -g(1) * (-t76 * t108 + t92 * t112) - g(2) * (-t78 * t108 + t90 * t112) - g(3) * (-t81 * t108 + t112 * t136) -t121, -g(1) * (t76 * pkin(5) + t75 * pkin(11) + t118) - g(2) * (t78 * pkin(5) - t77 * pkin(11) + t122) - g(3) * (t81 * pkin(5) + t80 * pkin(11) + t126) + t117;];
U_reg  = t1;
