% Calculate potential energy for
% S6RRRRRR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d5,d6]';
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
% Datum: 2019-03-10 03:45
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S6RRRRRR3_energypot_fixb_slag_vp2(qJ, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(11,1),zeros(7,1),zeros(7,3)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRR3_energypot_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRRR3_energypot_fixb_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRRR3_energypot_fixb_slag_vp2: pkin has to be [11x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRRRR3_energypot_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRRRRR3_energypot_fixb_slag_vp2: mrSges has to be [7x3] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_worldframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-10 03:39:06
% EndTime: 2019-03-10 03:39:07
% DurationCPUTime: 0.38s
% Computational Cost: add. (236->61), mult. (221->50), div. (0->0), fcn. (196->12), ass. (0->26)
t71 = qJ(4) + qJ(5);
t67 = qJ(6) + t71;
t58 = sin(t67);
t59 = cos(t67);
t76 = cos(qJ(4));
t60 = t76 * pkin(4) + pkin(3);
t63 = sin(t71);
t65 = cos(t71);
t73 = sin(qJ(4));
t103 = -mrSges(4,1) - m(5) * pkin(3) - t76 * mrSges(5,1) + t73 * mrSges(5,2) - m(6) * t60 - t65 * mrSges(6,1) + t63 * mrSges(6,2) - m(7) * (pkin(5) * t65 + t60) - t59 * mrSges(7,1) + t58 * mrSges(7,2);
t79 = -pkin(10) - pkin(9);
t102 = mrSges(4,2) - m(5) * pkin(9) - mrSges(5,3) + m(7) * (-pkin(11) + t79) - mrSges(7,3) + m(6) * t79 - mrSges(6,3);
t101 = m(4) + m(5) + m(6) + m(7);
t72 = qJ(2) + qJ(3);
t64 = sin(t72);
t66 = cos(t72);
t74 = sin(qJ(2));
t77 = cos(qJ(2));
t97 = -m(3) * pkin(1) - t77 * mrSges(3,1) + t74 * mrSges(3,2) + t102 * t64 + t103 * t66 - mrSges(2,1);
t95 = t73 * pkin(4);
t96 = m(6) * t95 + m(7) * (pkin(5) * t63 + t95) - mrSges(2,2) + mrSges(4,3) + t58 * mrSges(7,1) + t59 * mrSges(7,2) + t63 * mrSges(6,1) + t65 * mrSges(6,2) + t73 * mrSges(5,1) + t76 * mrSges(5,2) + m(3) * pkin(7) + mrSges(3,3);
t80 = -pkin(8) - pkin(7);
t78 = cos(qJ(1));
t75 = sin(qJ(1));
t61 = t77 * pkin(2) + pkin(1);
t1 = (-t74 * mrSges(3,1) - t77 * mrSges(3,2) - mrSges(1,3) - mrSges(2,3) + (-m(2) - m(3)) * pkin(6) - t101 * (t74 * pkin(2) + pkin(6)) - t102 * t66 + t103 * t64) * g(3) + (-mrSges(1,2) - t101 * (t75 * t61 + t78 * t80) + t96 * t78 + t97 * t75) * g(2) + (-mrSges(1,1) + (t101 * t80 - t96) * t75 + (-t101 * t61 + t97) * t78) * g(1);
U  = t1;
