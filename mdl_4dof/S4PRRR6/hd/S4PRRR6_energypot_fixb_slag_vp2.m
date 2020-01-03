% Calculate potential energy for
% S4PRRR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d2,d3,d4,theta1]';
% m_mdh [5x1]
%   mass of all robot links (including the base)
% mrSges [5x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% 
% Output:
% U [1x1]
%   Potential energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 16:35
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S4PRRR6_energypot_fixb_slag_vp2(qJ, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(3,1),zeros(7,1),zeros(5,1),zeros(5,3)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PRRR6_energypot_fixb_slag_vp2: qJ has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4PRRR6_energypot_fixb_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4PRRR6_energypot_fixb_slag_vp2: pkin has to be [7x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4PRRR6_energypot_fixb_slag_vp2: m has to be [5x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [5,3]), ...
  'S4PRRR6_energypot_fixb_slag_vp2: mrSges has to be [5x3] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_worldframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 16:34:36
% EndTime: 2019-12-31 16:34:36
% DurationCPUTime: 0.21s
% Computational Cost: add. (87->37), mult. (130->31), div. (0->0), fcn. (113->8), ass. (0->15)
t40 = qJ(3) + qJ(4);
t35 = sin(t40);
t36 = cos(t40);
t43 = sin(qJ(3));
t45 = cos(qJ(3));
t63 = -mrSges(3,1) - m(4) * pkin(2) - t45 * mrSges(4,1) + t43 * mrSges(4,2) - m(5) * (t45 * pkin(3) + pkin(2)) - t36 * mrSges(5,1) + t35 * mrSges(5,2);
t62 = mrSges(3,2) + m(5) * (-pkin(6) - pkin(5)) - mrSges(5,3) - m(4) * pkin(5) - mrSges(4,3);
t61 = m(3) + m(4) + m(5);
t44 = sin(qJ(2));
t46 = cos(qJ(2));
t58 = t62 * t44 + t63 * t46 - mrSges(2,1);
t57 = t35 * mrSges(5,1) + t45 * mrSges(4,2) + t36 * mrSges(5,2) - mrSges(2,2) + mrSges(3,3) + (m(5) * pkin(3) + mrSges(4,1)) * t43;
t42 = cos(pkin(7));
t41 = sin(pkin(7));
t1 = (-mrSges(1,3) - mrSges(2,3) + (-m(2) - t61) * qJ(1) - t62 * t46 + t63 * t44) * g(3) + (-mrSges(1,2) + (t61 * pkin(4) + t57) * t42 + (-t61 * pkin(1) + t58) * t41) * g(2) + (-mrSges(1,1) - t61 * (t42 * pkin(1) + t41 * pkin(4)) + t58 * t42 - t57 * t41) * g(1);
U = t1;
