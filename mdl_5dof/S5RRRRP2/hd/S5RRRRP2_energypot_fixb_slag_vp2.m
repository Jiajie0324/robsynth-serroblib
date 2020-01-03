% Calculate potential energy for
% S5RRRRP2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3,d4]';
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
% Datum: 2020-01-03 12:12
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S5RRRRP2_energypot_fixb_slag_vp2(qJ, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(8,1),zeros(6,1),zeros(6,3)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRP2_energypot_fixb_slag_vp2: qJ has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRRRP2_energypot_fixb_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RRRRP2_energypot_fixb_slag_vp2: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRRRP2_energypot_fixb_slag_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RRRRP2_energypot_fixb_slag_vp2: mrSges has to be [6x3] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_worldframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2020-01-03 12:11:01
% EndTime: 2020-01-03 12:11:01
% DurationCPUTime: 0.26s
% Computational Cost: add. (129->45), mult. (104->31), div. (0->0), fcn. (73->8), ass. (0->20)
t66 = m(5) + m(6);
t65 = -mrSges(5,2) - mrSges(6,2);
t64 = m(6) * pkin(4) + mrSges(5,1) + mrSges(6,1);
t62 = -m(3) - m(4);
t63 = pkin(1) * (t66 - t62) + mrSges(2,1);
t45 = qJ(3) + qJ(4);
t37 = sin(t45);
t39 = cos(t45);
t47 = sin(qJ(3));
t49 = cos(qJ(3));
t59 = m(4) * pkin(2) + t49 * mrSges(4,1) - t47 * mrSges(4,2) + mrSges(3,1) + t66 * (t49 * pkin(3) + pkin(2)) + t64 * t39 + t65 * t37;
t51 = -pkin(8) - pkin(7);
t58 = m(4) * pkin(7) - m(5) * t51 - m(6) * (-qJ(5) + t51) - mrSges(3,2) + mrSges(4,3) + mrSges(5,3) + mrSges(6,3);
t52 = pkin(6) + pkin(5);
t50 = cos(qJ(1));
t48 = sin(qJ(1));
t46 = qJ(1) + qJ(2);
t40 = cos(t46);
t38 = sin(t46);
t1 = (-t48 * mrSges(2,2) + t58 * t38 + t59 * t40 + t63 * t50 - mrSges(1,3)) * g(3) + (-t50 * mrSges(2,2) - t59 * t38 + t58 * t40 - t63 * t48 - mrSges(1,2)) * g(2) + (-m(2) * pkin(5) - t47 * mrSges(4,1) - t49 * mrSges(4,2) - mrSges(1,1) - mrSges(2,3) - mrSges(3,3) - t66 * (t47 * pkin(3) + t52) + t62 * t52 + t65 * t39 - t64 * t37) * g(1);
U = t1;
