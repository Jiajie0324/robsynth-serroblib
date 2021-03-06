% Calculate potential energy for
% S6PRRPRP3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d5,theta1,theta4]';
% m_mdh [7x1]
%   mass of all robot links (including the base)
% rSges [7x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% 
% Output:
% U [1x1]
%   Potential energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 21:39
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S6PRRPRP3_energypot_fixb_slag_vp1(qJ, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(11,1),zeros(7,1),zeros(7,3)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPRP3_energypot_fixb_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRRPRP3_energypot_fixb_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRRPRP3_energypot_fixb_slag_vp1: pkin has to be [11x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6PRRPRP3_energypot_fixb_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6PRRPRP3_energypot_fixb_slag_vp1: rSges has to be [7x3] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 21:34:06
% EndTime: 2019-03-08 21:34:06
% DurationCPUTime: 0.35s
% Computational Cost: add. (346->120), mult. (660->157), div. (0->0), fcn. (793->12), ass. (0->56)
t150 = rSges(7,1) + pkin(5);
t149 = rSges(4,3) + pkin(8);
t119 = sin(pkin(6));
t148 = pkin(7) * t119;
t117 = sin(pkin(11));
t118 = sin(pkin(10));
t121 = cos(pkin(10));
t125 = sin(qJ(2));
t122 = cos(pkin(6));
t127 = cos(qJ(2));
t138 = t122 * t127;
t99 = t118 * t125 - t121 * t138;
t147 = t117 * t99;
t146 = rSges(7,3) + qJ(6);
t145 = qJ(4) + rSges(5,3);
t101 = t118 * t138 + t121 * t125;
t144 = t101 * t117;
t124 = sin(qJ(3));
t143 = t119 * t124;
t142 = t119 * t125;
t126 = cos(qJ(3));
t141 = t119 * t126;
t140 = t119 * t127;
t139 = t122 * t125;
t137 = t122 * pkin(7) + qJ(1);
t136 = t121 * pkin(1) + t118 * t148;
t102 = -t118 * t139 + t121 * t127;
t135 = t102 * pkin(2) + t136;
t134 = pkin(2) * t142 + t137;
t100 = t118 * t127 + t121 * t139;
t113 = t118 * pkin(1);
t133 = t100 * pkin(2) - t121 * t148 + t113;
t132 = t101 * pkin(8) + t135;
t131 = t99 * pkin(8) + t133;
t120 = cos(pkin(11));
t110 = pkin(4) * t120 + pkin(3);
t123 = -pkin(9) - qJ(4);
t89 = t102 * t124 - t118 * t141;
t90 = t102 * t126 + t118 * t143;
t130 = pkin(4) * t144 + t90 * t110 - t89 * t123 + t132;
t87 = t100 * t124 + t121 * t141;
t88 = t100 * t126 - t121 * t143;
t129 = pkin(4) * t147 + t88 * t110 - t87 * t123 + t131;
t103 = -t122 * t126 + t124 * t142;
t104 = t122 * t124 + t125 * t141;
t128 = t104 * t110 + (-pkin(4) * t117 - pkin(8)) * t140 - t103 * t123 + t134;
t116 = pkin(11) + qJ(5);
t112 = cos(t116);
t111 = sin(t116);
t84 = t104 * t112 - t111 * t140;
t83 = t104 * t111 + t112 * t140;
t80 = t101 * t111 + t112 * t90;
t79 = -t101 * t112 + t111 * t90;
t78 = t111 * t99 + t112 * t88;
t77 = t111 * t88 - t99 * t112;
t1 = -m(1) * (g(1) * rSges(1,1) + g(2) * rSges(1,2) + g(3) * rSges(1,3)) - m(2) * (g(1) * (rSges(2,1) * t121 - rSges(2,2) * t118) + g(2) * (rSges(2,1) * t118 + rSges(2,2) * t121) + g(3) * (qJ(1) + rSges(2,3))) - m(3) * (g(1) * (rSges(3,1) * t102 - rSges(3,2) * t101 + t136) + g(2) * (rSges(3,1) * t100 - rSges(3,2) * t99 + t113) + g(3) * (t122 * rSges(3,3) + t137) + (g(1) * rSges(3,3) * t118 + g(3) * (rSges(3,1) * t125 + rSges(3,2) * t127) + g(2) * (-rSges(3,3) - pkin(7)) * t121) * t119) - m(4) * (g(1) * (rSges(4,1) * t90 - rSges(4,2) * t89 + t101 * t149 + t135) + g(2) * (rSges(4,1) * t88 - rSges(4,2) * t87 + t149 * t99 + t133) + g(3) * (t104 * rSges(4,1) - t103 * rSges(4,2) - t140 * t149 + t134)) - m(5) * (g(1) * (t90 * pkin(3) + (t120 * t90 + t144) * rSges(5,1) + (t101 * t120 - t117 * t90) * rSges(5,2) + t145 * t89 + t132) + g(2) * (t88 * pkin(3) + (t120 * t88 + t147) * rSges(5,1) + (-t117 * t88 + t120 * t99) * rSges(5,2) + t145 * t87 + t131) + g(3) * (t104 * pkin(3) - pkin(8) * t140 + (t104 * t120 - t117 * t140) * rSges(5,1) + (-t104 * t117 - t120 * t140) * rSges(5,2) + t145 * t103 + t134)) - m(6) * (g(1) * (rSges(6,1) * t80 - rSges(6,2) * t79 + rSges(6,3) * t89 + t130) + g(2) * (rSges(6,1) * t78 - rSges(6,2) * t77 + rSges(6,3) * t87 + t129) + g(3) * (t84 * rSges(6,1) - t83 * rSges(6,2) + t103 * rSges(6,3) + t128)) - m(7) * (g(1) * (rSges(7,2) * t89 + t146 * t79 + t150 * t80 + t130) + g(2) * (rSges(7,2) * t87 + t146 * t77 + t150 * t78 + t129) + g(3) * (t103 * rSges(7,2) + t146 * t83 + t150 * t84 + t128));
U  = t1;
