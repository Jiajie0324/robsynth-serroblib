% Calculate potential energy for
% S5RPRPR15
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d5,theta4]';
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
% Datum: 2019-12-31 18:37
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S5RPRPR15_energypot_fixb_slag_vp2(qJ, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(8,1),zeros(6,1),zeros(6,3)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRPR15_energypot_fixb_slag_vp2: qJ has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPRPR15_energypot_fixb_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPRPR15_energypot_fixb_slag_vp2: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPRPR15_energypot_fixb_slag_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RPRPR15_energypot_fixb_slag_vp2: mrSges has to be [6x3] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_worldframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 18:36:33
% EndTime: 2019-12-31 18:36:34
% DurationCPUTime: 0.33s
% Computational Cost: add. (106->47), mult. (150->37), div. (0->0), fcn. (127->8), ass. (0->17)
t45 = pkin(8) + qJ(5);
t38 = sin(t45);
t39 = cos(t45);
t46 = sin(pkin(8));
t47 = cos(pkin(8));
t69 = mrSges(4,1) + m(5) * pkin(3) + t47 * mrSges(5,1) - t46 * mrSges(5,2) + m(6) * (pkin(4) * t47 + pkin(3)) + t39 * mrSges(6,1) - t38 * mrSges(6,2);
t68 = mrSges(4,2) - m(5) * qJ(4) + m(6) * (-pkin(7) - qJ(4)) - mrSges(5,3) - mrSges(6,3);
t49 = sin(qJ(3));
t51 = cos(qJ(3));
t67 = t49 * t69 + t51 * t68 - mrSges(2,2) + mrSges(3,3);
t65 = -m(4) - m(5) - m(6);
t63 = -t38 * mrSges(6,1) - t47 * mrSges(5,2) - t39 * mrSges(6,2) - mrSges(2,1) + mrSges(3,2) - mrSges(4,3) + (-m(6) * pkin(4) - mrSges(5,1)) * t46;
t50 = sin(qJ(1));
t52 = cos(qJ(1));
t59 = t52 * pkin(1) + t50 * qJ(2);
t42 = t50 * pkin(1);
t1 = (-mrSges(3,1) - mrSges(1,3) - mrSges(2,3) + (-m(2) - m(3)) * pkin(5) + t65 * (pkin(2) + pkin(5)) - t69 * t51 + t68 * t49) * g(3) + (-m(3) * t42 - mrSges(1,2) + t65 * (t50 * pkin(6) + t42) + ((m(3) - t65) * qJ(2) + t67) * t52 + t63 * t50) * g(2) + (-m(3) * t59 - mrSges(1,1) + t65 * (t52 * pkin(6) + t59) + t63 * t52 - t67 * t50) * g(1);
U = t1;
