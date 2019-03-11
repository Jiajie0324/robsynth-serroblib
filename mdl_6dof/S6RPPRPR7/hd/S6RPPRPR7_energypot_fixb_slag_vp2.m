% Calculate potential energy for
% S6RPPRPR7
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d6,theta3,theta5]';
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
% Datum: 2019-03-09 01:54
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S6RPPRPR7_energypot_fixb_slag_vp2(qJ, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(10,1),zeros(7,1),zeros(7,3)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRPR7_energypot_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPPRPR7_energypot_fixb_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPPRPR7_energypot_fixb_slag_vp2: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPPRPR7_energypot_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RPPRPR7_energypot_fixb_slag_vp2: mrSges has to be [7x3] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_worldframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 01:52:47
% EndTime: 2019-03-09 01:52:47
% DurationCPUTime: 0.42s
% Computational Cost: add. (173->59), mult. (189->44), div. (0->0), fcn. (160->10), ass. (0->22)
t56 = pkin(10) + qJ(6);
t48 = sin(t56);
t50 = cos(t56);
t58 = sin(pkin(10));
t60 = cos(pkin(10));
t87 = mrSges(5,1) + m(6) * pkin(4) + t60 * mrSges(6,1) - t58 * mrSges(6,2) + m(7) * (pkin(5) * t60 + pkin(4)) + t50 * mrSges(7,1) - t48 * mrSges(7,2);
t86 = mrSges(5,2) - m(6) * qJ(5) + m(7) * (-pkin(8) - qJ(5)) - mrSges(6,3) - mrSges(7,3);
t85 = m(5) + m(6) + m(7);
t57 = pkin(9) + qJ(4);
t49 = sin(t57);
t51 = cos(t57);
t59 = sin(pkin(9));
t61 = cos(pkin(9));
t84 = t59 * mrSges(4,1) + t61 * mrSges(4,2) + t87 * t49 + t86 * t51 - mrSges(2,2) + mrSges(3,3);
t83 = m(3) + m(4);
t78 = -m(4) * qJ(3) - t48 * mrSges(7,1) - t60 * mrSges(6,2) - t50 * mrSges(7,2) - mrSges(2,1) + mrSges(3,2) - mrSges(4,3) - mrSges(5,3) + (-m(7) * pkin(5) - mrSges(6,1)) * t58 + t85 * (-pkin(7) - qJ(3));
t77 = pkin(2) + pkin(6);
t76 = pkin(3) * t59;
t64 = sin(qJ(1));
t65 = cos(qJ(1));
t75 = t65 * pkin(1) + t64 * qJ(2);
t1 = (-m(4) * t77 - t61 * mrSges(4,1) + t59 * mrSges(4,2) - mrSges(3,1) - mrSges(1,3) - mrSges(2,3) + (-m(2) - m(3)) * pkin(6) - t85 * (t61 * pkin(3) + t77) - t87 * t51 + t86 * t49) * g(3) + (-mrSges(1,2) + (-t85 * (-qJ(2) - t76) + t83 * qJ(2) + t84) * t65 + ((-t85 - t83) * pkin(1) + t78) * t64) * g(2) + (-mrSges(1,1) - t83 * t75 - t85 * (t64 * t76 + t75) + t78 * t65 - t84 * t64) * g(1);
U  = t1;
