% Calculate potential energy for
% S5RPRPR7
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d5,theta2,theta4]';
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
% Datum: 2019-12-31 18:20
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S5RPRPR7_energypot_fixb_slag_vp2(qJ, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(9,1),zeros(6,1),zeros(6,3)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRPR7_energypot_fixb_slag_vp2: qJ has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPRPR7_energypot_fixb_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RPRPR7_energypot_fixb_slag_vp2: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPRPR7_energypot_fixb_slag_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RPRPR7_energypot_fixb_slag_vp2: mrSges has to be [6x3] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_worldframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 18:18:50
% EndTime: 2019-12-31 18:18:50
% DurationCPUTime: 0.26s
% Computational Cost: add. (149->50), mult. (124->42), div. (0->0), fcn. (97->10), ass. (0->24)
t56 = sin(qJ(5));
t59 = cos(qJ(5));
t76 = -m(6) * pkin(4) - t59 * mrSges(6,1) + t56 * mrSges(6,2) - mrSges(5,1);
t75 = -m(6) * pkin(7) + mrSges(5,2) - mrSges(6,3);
t74 = -m(3) - m(4);
t73 = m(5) + m(6);
t52 = qJ(3) + pkin(9);
t45 = sin(t52);
t47 = cos(t52);
t57 = sin(qJ(3));
t60 = cos(qJ(3));
t71 = -m(4) * pkin(2) - t60 * mrSges(4,1) + t57 * mrSges(4,2) + t75 * t45 + t76 * t47 - mrSges(3,1);
t70 = m(4) * pkin(6) + t56 * mrSges(6,1) + t59 * mrSges(6,2) - mrSges(3,2) + mrSges(4,3) + mrSges(5,3);
t58 = sin(qJ(1));
t50 = t58 * pkin(1);
t61 = cos(qJ(1));
t51 = t61 * pkin(1);
t55 = qJ(2) + pkin(5);
t54 = -qJ(4) - pkin(6);
t53 = qJ(1) + pkin(8);
t48 = cos(t53);
t46 = sin(t53);
t44 = t60 * pkin(3) + pkin(2);
t1 = (-m(2) * pkin(5) - t57 * mrSges(4,1) - t60 * mrSges(4,2) - mrSges(1,3) - mrSges(2,3) - mrSges(3,3) - t73 * (t57 * pkin(3) + t55) + t74 * t55 - t75 * t47 + t76 * t45) * g(3) + (-t58 * mrSges(2,1) - t61 * mrSges(2,2) - mrSges(1,2) - t73 * (t46 * t44 + t48 * t54 + t50) + t74 * t50 + t70 * t48 + t71 * t46) * g(2) + (-t61 * mrSges(2,1) + t58 * mrSges(2,2) - mrSges(1,1) - t73 * (t48 * t44 + t51) + t74 * t51 + t71 * t48 + (t73 * t54 - t70) * t46) * g(1);
U = t1;
