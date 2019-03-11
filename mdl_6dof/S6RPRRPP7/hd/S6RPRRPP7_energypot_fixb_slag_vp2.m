% Calculate potential energy for
% S6RPRRPP7
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4]';
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
% Datum: 2019-03-09 04:52
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S6RPRRPP7_energypot_fixb_slag_vp2(qJ, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(8,1),zeros(7,1),zeros(7,3)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPP7_energypot_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRRPP7_energypot_fixb_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S6RPRRPP7_energypot_fixb_slag_vp2: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRRPP7_energypot_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RPRRPP7_energypot_fixb_slag_vp2: mrSges has to be [7x3] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_worldframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 04:50:01
% EndTime: 2019-03-09 04:50:02
% DurationCPUTime: 0.47s
% Computational Cost: add. (143->70), mult. (245->65), div. (0->0), fcn. (230->6), ass. (0->33)
t108 = -mrSges(4,2) + mrSges(6,2) + mrSges(5,3);
t106 = -m(6) - m(7);
t107 = -m(5) + t106;
t105 = -mrSges(2,1) + mrSges(3,2) - mrSges(4,3);
t104 = mrSges(5,2) - mrSges(7,2) - mrSges(6,3);
t103 = m(7) * qJ(6) + mrSges(7,3);
t76 = sin(qJ(3));
t79 = cos(qJ(3));
t102 = -t76 * mrSges(4,1) + t108 * t79 + mrSges(2,2) - mrSges(3,3);
t101 = -m(7) * pkin(5) - mrSges(5,1) - mrSges(6,1) - mrSges(7,1);
t100 = pkin(2) + pkin(6);
t77 = sin(qJ(1));
t99 = t77 * t76;
t78 = cos(qJ(4));
t98 = t77 * t78;
t97 = t77 * t79;
t75 = sin(qJ(4));
t80 = cos(qJ(1));
t94 = t80 * t75;
t93 = t80 * t78;
t71 = t77 * pkin(1);
t92 = t77 * pkin(7) + t71;
t91 = t80 * pkin(1) + t77 * qJ(2);
t90 = pkin(8) * t97;
t89 = t80 * t79 * pkin(8) + t92;
t88 = t80 * pkin(7) + t91;
t85 = pkin(3) * t99 + t88;
t59 = t75 * t99 - t93;
t60 = t76 * t98 + t94;
t81 = t60 * pkin(4) + t59 * qJ(5) + t85;
t62 = t77 * t75 - t76 * t93;
t61 = t76 * t94 + t98;
t1 = (-m(4) * t100 - mrSges(3,1) - mrSges(1,3) - mrSges(2,3) + (-m(2) - m(3)) * pkin(6) + (t103 - t108) * t76 + t107 * (t79 * pkin(3) + t76 * pkin(8) + t100) + (t106 * (pkin(4) * t78 + qJ(5) * t75) + t101 * t78 + t104 * t75 - mrSges(4,1)) * t79) * g(3) + (-m(3) * t71 - m(4) * t92 - m(5) * t89 - mrSges(1,2) + t106 * (t62 * pkin(4) - t61 * qJ(5) + t89) + t105 * t77 + t101 * t62 - t104 * t61 + (t103 * t79 + t107 * (-pkin(3) * t76 - qJ(2)) + (m(3) + m(4)) * qJ(2) - t102) * t80) * g(2) + (-mrSges(1,1) - m(3) * t91 - m(4) * t88 - m(5) * (t85 - t90) - m(6) * (t81 - t90) - m(7) * t81 - (m(7) * (-pkin(8) + qJ(6)) + mrSges(7,3)) * t97 + t105 * t80 + t101 * t60 + t104 * t59 + t102 * t77) * g(1);
U  = t1;
