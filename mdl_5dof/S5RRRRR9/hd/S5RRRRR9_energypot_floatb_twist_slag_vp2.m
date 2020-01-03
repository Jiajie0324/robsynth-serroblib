% Calculate potential energy for
% S5RRRRR9
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
% Datum: 2019-12-31 22:31
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S5RRRRR9_energypot_floatb_twist_slag_vp2(qJ, r_base, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(3,1),zeros(9,1),zeros(6,1),zeros(6,3)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRR9_energypot_floatb_twist_slag_vp2: qJ has to be [5x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S5RRRRR9_energypot_floatb_twist_slag_vp2: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRRRR9_energypot_floatb_twist_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRRRR9_energypot_floatb_twist_slag_vp2: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRRRR9_energypot_floatb_twist_slag_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RRRRR9_energypot_floatb_twist_slag_vp2: mrSges has to be [6x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 22:27:38
% EndTime: 2019-12-31 22:27:38
% DurationCPUTime: 0.39s
% Computational Cost: add. (170->56), mult. (192->45), div. (0->0), fcn. (168->10), ass. (0->22)
t16 = sin(qJ(3));
t19 = cos(qJ(3));
t15 = qJ(3) + qJ(4);
t8 = qJ(5) + t15;
t3 = sin(t8);
t4 = cos(t8);
t5 = t19 * pkin(3) + pkin(2);
t6 = sin(t15);
t7 = cos(t15);
t44 = -m(4) * pkin(2) - t19 * mrSges(4,1) + t16 * mrSges(4,2) - mrSges(3,1) - m(6) * (pkin(4) * t7 + t5) - t4 * mrSges(6,1) + t3 * mrSges(6,2) - m(5) * t5 - t7 * mrSges(5,1) + t6 * mrSges(5,2);
t22 = -pkin(8) - pkin(7);
t43 = mrSges(3,2) + m(6) * (-pkin(9) + t22) - mrSges(6,3) + m(5) * t22 - mrSges(5,3) - m(4) * pkin(7) - mrSges(4,3);
t42 = -m(1) - m(2);
t41 = m(3) + m(4) + m(5) + m(6);
t17 = sin(qJ(2));
t20 = cos(qJ(2));
t37 = t43 * t17 + t44 * t20 - mrSges(2,1);
t35 = t16 * pkin(3);
t36 = m(5) * t35 + m(6) * (pkin(4) * t6 + t35) - mrSges(2,2) + mrSges(3,3) + t16 * mrSges(4,1) + t19 * mrSges(4,2) + t3 * mrSges(6,1) + t4 * mrSges(6,2) + t6 * mrSges(5,1) + t7 * mrSges(5,2);
t21 = cos(qJ(1));
t18 = sin(qJ(1));
t1 = (-m(1) * r_base(3) - mrSges(1,3) - mrSges(2,3) + (-m(2) - t41) * (pkin(5) + r_base(3)) - t43 * t20 + t44 * t17) * g(3) + (-mrSges(1,2) + t42 * r_base(2) - t41 * (t18 * pkin(1) + r_base(2)) + (t41 * pkin(6) + t36) * t21 + t37 * t18) * g(2) + (-mrSges(1,1) + t42 * r_base(1) - t41 * (t21 * pkin(1) + t18 * pkin(6) + r_base(1)) + t37 * t21 - t36 * t18) * g(1);
U = t1;
