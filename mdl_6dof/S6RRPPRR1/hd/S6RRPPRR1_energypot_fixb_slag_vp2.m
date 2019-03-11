% Calculate potential energy for
% S6RRPPRR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d5,d6,theta3]';
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
% Datum: 2019-03-09 08:48
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S6RRPPRR1_energypot_fixb_slag_vp2(qJ, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(10,1),zeros(7,1),zeros(7,3)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPRR1_energypot_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPPRR1_energypot_fixb_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPPRR1_energypot_fixb_slag_vp2: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRPPRR1_energypot_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRPPRR1_energypot_fixb_slag_vp2: mrSges has to be [7x3] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_worldframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 08:45:52
% EndTime: 2019-03-09 08:45:53
% DurationCPUTime: 0.44s
% Computational Cost: add. (231->69), mult. (256->64), div. (0->0), fcn. (244->10), ass. (0->34)
t127 = -mrSges(4,1) - mrSges(5,1);
t126 = mrSges(4,2) - mrSges(5,3);
t121 = -m(7) * pkin(9) + mrSges(6,2) - mrSges(7,3);
t93 = sin(qJ(5));
t125 = t121 * t93;
t90 = qJ(2) + pkin(10);
t86 = sin(t90);
t97 = cos(qJ(5));
t114 = t86 * t97;
t92 = sin(qJ(6));
t96 = cos(qJ(6));
t119 = -m(7) * pkin(5) - mrSges(7,1) * t96 + mrSges(7,2) * t92 - mrSges(6,1);
t87 = cos(t90);
t70 = t86 * t93 + t87 * t97;
t94 = sin(qJ(2));
t98 = cos(qJ(2));
t124 = -m(3) * pkin(1) - t98 * mrSges(3,1) + t94 * mrSges(3,2) - t114 * t121 + t119 * t70 + t126 * t86 + t127 * t87 - mrSges(2,1);
t123 = -m(6) - m(7);
t110 = qJ(4) * t86;
t99 = cos(qJ(1));
t113 = t87 * t99;
t122 = pkin(3) * t113 + t110 * t99;
t117 = -m(3) * pkin(7) + t92 * mrSges(7,1) + t96 * mrSges(7,2) + mrSges(2,2) - mrSges(5,2) - mrSges(3,3) - mrSges(4,3) + mrSges(6,3);
t115 = pkin(2) * t94 + pkin(6);
t95 = sin(qJ(1));
t112 = t95 * t87;
t85 = pkin(2) * t98 + pkin(1);
t91 = -qJ(3) - pkin(7);
t111 = t85 * t95 + t91 * t99;
t81 = t99 * t85;
t108 = -t91 * t95 + t81;
t106 = pkin(3) * t112 + t110 * t95 + t111;
t103 = pkin(3) * t86 - qJ(4) * t87 + t115;
t1 = (-m(4) * t115 - m(5) * t103 - mrSges(3,1) * t94 - t98 * mrSges(3,2) - mrSges(1,3) - mrSges(2,3) - t126 * t87 + t127 * t86 + t119 * (-t87 * t93 + t114) + t123 * (pkin(4) * t86 + t103) + t121 * t70 + (-m(2) - m(3)) * pkin(6)) * g(3) + (-m(4) * t111 - m(5) * t106 - mrSges(1,2) + t123 * (pkin(4) * t112 + pkin(8) * t99 + t106) + t112 * t125 - t117 * t99 + t124 * t95) * g(2) + (-mrSges(1,1) - m(4) * t108 - m(5) * (t108 + t122) + t123 * (pkin(4) * t113 + t122 + t81) + t113 * t125 + (t123 * (-pkin(8) - t91) + t117) * t95 + t124 * t99) * g(1);
U  = t1;
