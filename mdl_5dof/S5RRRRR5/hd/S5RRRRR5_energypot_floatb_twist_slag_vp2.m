% Calculate potential energy for
% S5RRRRR5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% r_base [3x1]
%   Base position in world frame
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3,d4,d5]';
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
% Datum: 2020-01-03 12:13
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S5RRRRR5_energypot_floatb_twist_slag_vp2(qJ, r_base, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(3,1),zeros(9,1),zeros(6,1),zeros(6,3)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRR5_energypot_floatb_twist_slag_vp2: qJ has to be [5x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S5RRRRR5_energypot_floatb_twist_slag_vp2: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRRRR5_energypot_floatb_twist_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRRRR5_energypot_floatb_twist_slag_vp2: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRRRR5_energypot_floatb_twist_slag_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RRRRR5_energypot_floatb_twist_slag_vp2: mrSges has to be [6x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2020-01-03 12:13:00
% EndTime: 2020-01-03 12:13:01
% DurationCPUTime: 0.29s
% Computational Cost: add. (154->56), mult. (97->43), div. (0->0), fcn. (61->10), ass. (0->22)
t30 = -m(1) - m(2);
t29 = -m(4) - m(5) - m(6);
t14 = sin(qJ(4));
t16 = cos(qJ(4));
t12 = qJ(4) + qJ(5);
t6 = sin(t12);
t8 = cos(t12);
t28 = m(5) * pkin(3) + t16 * mrSges(5,1) - t14 * mrSges(5,2) + mrSges(4,1) + m(6) * (t16 * pkin(4) + pkin(3)) + t8 * mrSges(6,1) - t6 * mrSges(6,2);
t27 = m(5) * pkin(8) - m(6) * (-pkin(9) - pkin(8)) - mrSges(4,2) + mrSges(5,3) + mrSges(6,3);
t13 = qJ(1) + qJ(2);
t26 = pkin(5) + r_base(1);
t15 = sin(qJ(1));
t25 = t15 * pkin(1) + r_base(2);
t24 = pkin(6) + t26;
t17 = cos(qJ(1));
t22 = -t17 * pkin(1) + r_base(3);
t10 = qJ(3) + t13;
t9 = cos(t13);
t7 = sin(t13);
t3 = cos(t10);
t2 = sin(t10);
t1 = (-m(3) * t22 + t17 * mrSges(2,1) + t9 * mrSges(3,1) - t15 * mrSges(2,2) - t7 * mrSges(3,2) - mrSges(1,3) + t30 * r_base(3) + t28 * t3 + t29 * (-pkin(2) * t9 + t22) + t27 * t2) * g(3) + (-m(3) * t25 - t15 * mrSges(2,1) - t7 * mrSges(3,1) - t17 * mrSges(2,2) - t9 * mrSges(3,2) - mrSges(1,2) + t30 * r_base(2) + t29 * (pkin(2) * t7 + t25) + t27 * t3 - t28 * t2) * g(2) + (-m(1) * r_base(1) - m(2) * t26 - m(3) * t24 - t6 * mrSges(6,1) - t16 * mrSges(5,2) - t8 * mrSges(6,2) - mrSges(1,1) - mrSges(2,3) - mrSges(3,3) - mrSges(4,3) + (-m(6) * pkin(4) - mrSges(5,1)) * t14 + t29 * (pkin(7) + t24)) * g(1);
U = t1;
