% Calculate potential energy for
% S6RRRRRR7
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,d5,d6]';
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
% Datum: 2019-03-10 04:47
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S6RRRRRR7_energypot_fixb_slag_vp2(qJ, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(12,1),zeros(7,1),zeros(7,3)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRR7_energypot_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRRR7_energypot_fixb_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRRRR7_energypot_fixb_slag_vp2: pkin has to be [12x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRRRR7_energypot_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRRRRR7_energypot_fixb_slag_vp2: mrSges has to be [7x3] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_worldframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-10 04:28:55
% EndTime: 2019-03-10 04:28:56
% DurationCPUTime: 0.72s
% Computational Cost: add. (335->105), mult. (613->121), div. (0->0), fcn. (717->14), ass. (0->46)
t134 = -m(4) - m(5);
t133 = -m(6) - m(7);
t101 = sin(qJ(4));
t117 = pkin(4) * t101 + pkin(9);
t108 = -pkin(11) - pkin(10);
t132 = -m(5) * pkin(10) + m(6) * t108 + m(7) * (-pkin(12) + t108) + mrSges(4,2) - mrSges(5,3) - mrSges(6,3) - mrSges(7,3);
t105 = cos(qJ(4));
t99 = qJ(4) + qJ(5);
t91 = sin(t99);
t129 = pkin(5) * t91 + t117;
t94 = qJ(6) + t99;
t88 = sin(t94);
t89 = cos(t94);
t92 = cos(t99);
t131 = -m(6) * t117 - m(7) * t129 - t101 * mrSges(5,1) - t91 * mrSges(6,1) - t88 * mrSges(7,1) - t105 * mrSges(5,2) - t92 * mrSges(6,2) - t89 * mrSges(7,2) + mrSges(3,2) - mrSges(4,3);
t90 = t105 * pkin(4) + pkin(3);
t81 = pkin(5) * t92 + t90;
t130 = -m(5) * pkin(3) - m(6) * t90 - m(7) * t81 - t105 * mrSges(5,1) - t92 * mrSges(6,1) - t89 * mrSges(7,1) + t101 * mrSges(5,2) + t91 * mrSges(6,2) + t88 * mrSges(7,2) - mrSges(4,1);
t124 = cos(pkin(6));
t128 = t124 * pkin(8) + pkin(7);
t127 = cos(qJ(3));
t107 = cos(qJ(1));
t100 = sin(pkin(6));
t104 = sin(qJ(1));
t122 = t100 * t104;
t125 = t107 * pkin(1) + pkin(8) * t122;
t103 = sin(qJ(2));
t123 = t100 * t103;
t106 = cos(qJ(2));
t121 = t100 * t106;
t120 = t107 * t100;
t119 = pkin(2) * t123 + t128;
t115 = t104 * t124;
t80 = -t103 * t115 + t107 * t106;
t118 = t80 * pkin(2) + t125;
t116 = t100 * t127;
t114 = t107 * t124;
t113 = t104 * pkin(1) - pkin(8) * t120;
t78 = t103 * t114 + t104 * t106;
t111 = t78 * pkin(2) + t113;
t110 = -pkin(9) * t121 + t119;
t102 = sin(qJ(3));
t79 = t107 * t103 + t106 * t115;
t77 = t103 * t104 - t106 * t114;
t76 = t102 * t124 + t103 * t116;
t1 = (-mrSges(1,3) - m(2) * pkin(7) - mrSges(2,3) - m(3) * t128 - t124 * mrSges(3,3) - (t103 * mrSges(3,1) + t106 * mrSges(3,2)) * t100 - m(4) * t110 - t76 * mrSges(4,1) + mrSges(4,3) * t121 - m(5) * (pkin(3) * t76 + t110) - (-t101 * t121 + t105 * t76) * mrSges(5,1) - (-t101 * t76 - t105 * t121) * mrSges(5,2) - m(6) * (-t117 * t121 + t76 * t90 + t119) - (-t121 * t91 + t76 * t92) * mrSges(6,1) - (-t121 * t92 - t76 * t91) * mrSges(6,2) - m(7) * (-t121 * t129 + t76 * t81 + t119) - (-t121 * t88 + t76 * t89) * mrSges(7,1) - (-t121 * t89 - t76 * t88) * mrSges(7,2) + t132 * (t102 * t123 - t124 * t127)) * g(3) + (-m(3) * t113 - t104 * mrSges(2,1) - t78 * mrSges(3,1) - t107 * mrSges(2,2) + mrSges(3,3) * t120 - mrSges(1,2) + t133 * t111 + t134 * (t77 * pkin(9) + t111) + t130 * (-t102 * t120 + t127 * t78) + t131 * t77 + t132 * (t78 * t102 + t107 * t116)) * g(2) + (-m(3) * t125 - t107 * mrSges(2,1) - t80 * mrSges(3,1) + t104 * mrSges(2,2) - mrSges(3,3) * t122 - mrSges(1,1) + t133 * t118 + t134 * (t79 * pkin(9) + t118) + t130 * (t102 * t122 + t127 * t80) + t131 * t79 + t132 * (t102 * t80 - t104 * t116)) * g(1);
U  = t1;
