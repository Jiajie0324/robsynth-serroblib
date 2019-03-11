% Calculate potential energy for
% S6RRPRPR12
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d6,theta5]';
% m_mdh [7x1]
%   mass of all robot links (including the base)
% mrSges [7x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% 
% Output:
% U [1x1]
%   Potential energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 11:23
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S6RRPRPR12_energypot_fixb_slag_vp2(qJ, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(11,1),zeros(7,1),zeros(7,3)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPR12_energypot_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRPR12_energypot_fixb_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPRPR12_energypot_fixb_slag_vp2: pkin has to be [11x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRPRPR12_energypot_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRPRPR12_energypot_fixb_slag_vp2: mrSges has to be [7x3] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_worldframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 11:17:09
% EndTime: 2019-03-09 11:17:10
% DurationCPUTime: 0.78s
% Computational Cost: add. (284->91), mult. (491->96), div. (0->0), fcn. (547->12), ass. (0->44)
t139 = -m(4) - m(5);
t138 = m(6) + m(7);
t137 = m(7) * pkin(10) - mrSges(6,2) + mrSges(7,3);
t110 = cos(qJ(4));
t136 = mrSges(5,2) * t110 - mrSges(3,2) + mrSges(4,3);
t106 = sin(qJ(4));
t135 = t110 * mrSges(5,1) - t106 * mrSges(5,2) + mrSges(4,1) + mrSges(3,3);
t105 = sin(qJ(6));
t109 = cos(qJ(6));
t134 = -m(7) * pkin(5) - t109 * mrSges(7,1) + t105 * mrSges(7,2) - mrSges(6,1);
t133 = -m(5) * pkin(3) - t135;
t132 = -m(5) * pkin(9) - t105 * mrSges(7,1) - t109 * mrSges(7,2) - mrSges(3,1) + mrSges(4,2) - mrSges(5,3) - mrSges(6,3);
t103 = cos(pkin(6));
t131 = t103 * pkin(8) + pkin(7);
t108 = sin(qJ(1));
t111 = cos(qJ(2));
t121 = t108 * t111;
t107 = sin(qJ(2));
t112 = cos(qJ(1));
t122 = t107 * t112;
t87 = t103 * t121 + t122;
t129 = t106 * t87;
t120 = t111 * t112;
t123 = t107 * t108;
t85 = -t103 * t120 + t123;
t128 = t85 * t106;
t102 = sin(pkin(6));
t126 = t102 * t108;
t127 = t112 * pkin(1) + pkin(8) * t126;
t125 = t102 * t111;
t124 = t102 * t112;
t119 = t102 * t107 * pkin(2) + t131;
t118 = pkin(8) * t124;
t86 = t103 * t122 + t121;
t99 = t108 * pkin(1);
t116 = t86 * pkin(2) + t85 * qJ(3) + t99;
t88 = -t103 * t123 + t120;
t115 = t88 * pkin(2) + qJ(3) * t87 + t127;
t104 = -qJ(5) - pkin(9);
t101 = qJ(4) + pkin(11);
t97 = cos(t101);
t96 = sin(t101);
t95 = pkin(4) * t110 + pkin(3);
t1 = (-m(2) * pkin(7) - m(3) * t131 - mrSges(1,3) - mrSges(2,3) + t134 * (t103 * t97 - t125 * t96) - t138 * (t103 * t95 + t119) - t137 * (t103 * t96 + t125 * t97) + t139 * t119 + t133 * t103 + (((t138 - t139) * qJ(3) + t136 + (t138 * pkin(4) + mrSges(5,1)) * t106) * t111 + (t138 * t104 + t132) * t107) * t102) * g(3) + (-mrSges(1,2) - t108 * mrSges(2,1) - mrSges(2,2) * t112 - m(3) * (t99 - t118) - m(4) * (t116 - t118) - m(5) * t116 - t128 * mrSges(5,1) - t138 * (pkin(4) * t128 - t86 * t104 + (-pkin(8) - t95) * t124 + t116) + t137 * (t124 * t96 + t85 * t97) - t136 * t85 + (-m(5) * (-pkin(3) - pkin(8)) + t135) * t124 + t134 * (-t124 * t97 + t85 * t96) + t132 * t86) * g(2) + (-m(3) * t127 - mrSges(2,1) * t112 - t129 * mrSges(5,1) + t108 * mrSges(2,2) - mrSges(1,1) - t138 * (pkin(4) * t129 - t88 * t104 + t95 * t126 + t115) - t137 * (t126 * t96 - t87 * t97) + t139 * t115 - t136 * t87 + t133 * t126 + t134 * (t126 * t97 + t87 * t96) + t132 * t88) * g(1);
U  = t1;
