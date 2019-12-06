% Calculate potential energy for
% S5RRPRR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d4,d5,theta3]';
% m_mdh [6x1]
%   mass of all robot links (including the base)
% mrSges [6x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% 
% Output:
% U [1x1]
%   Potential energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 18:36
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S5RRPRR6_energypot_fixb_slag_vp2(qJ, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(9,1),zeros(6,1),zeros(6,3)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRR6_energypot_fixb_slag_vp2: qJ has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRPRR6_energypot_fixb_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRPRR6_energypot_fixb_slag_vp2: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRPRR6_energypot_fixb_slag_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RRPRR6_energypot_fixb_slag_vp2: mrSges has to be [6x3] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_worldframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:35:37
% EndTime: 2019-12-05 18:35:37
% DurationCPUTime: 0.38s
% Computational Cost: add. (157->49), mult. (148->41), div. (0->0), fcn. (125->10), ass. (0->20)
t48 = qJ(4) + qJ(5);
t43 = sin(t48);
t45 = cos(t48);
t52 = sin(qJ(4));
t54 = cos(qJ(4));
t73 = -mrSges(4,1) - m(5) * pkin(3) - t54 * mrSges(5,1) + t52 * mrSges(5,2) - m(6) * (pkin(4) * t54 + pkin(3)) - t45 * mrSges(6,1) + t43 * mrSges(6,2);
t72 = mrSges(4,2) - m(5) * pkin(7) + m(6) * (-pkin(8) - pkin(7)) - mrSges(5,3) - mrSges(6,3);
t50 = sin(pkin(9));
t51 = cos(pkin(9));
t71 = t72 * t50 + t73 * t51 - mrSges(3,1);
t68 = m(4) + m(5) + m(6);
t67 = -t43 * mrSges(6,1) - t54 * mrSges(5,2) - t45 * mrSges(6,2) + mrSges(3,2) - mrSges(4,3) + (-m(6) * pkin(4) - mrSges(5,1)) * t52;
t53 = sin(qJ(1));
t65 = pkin(1) * t53;
t55 = cos(qJ(1));
t47 = t55 * pkin(1);
t49 = qJ(1) + qJ(2);
t46 = cos(t49);
t44 = sin(t49);
t1 = (-m(3) * t47 - mrSges(2,1) * t55 + mrSges(2,2) * t53 - mrSges(1,3) - t68 * (t46 * pkin(2) + t44 * qJ(3) + t47) + t71 * t46 + t67 * t44) * g(3) + (m(3) * t65 + mrSges(2,1) * t53 + mrSges(2,2) * t55 - mrSges(1,2) - t68 * (t46 * qJ(3) - t65) + t67 * t46 + (t68 * pkin(2) - t71) * t44) * g(2) + (-m(2) * pkin(5) - mrSges(1,1) - mrSges(2,3) - mrSges(3,3) + (-m(3) - t68) * (pkin(6) + pkin(5)) - t72 * t51 + t73 * t50) * g(1);
U = t1;
