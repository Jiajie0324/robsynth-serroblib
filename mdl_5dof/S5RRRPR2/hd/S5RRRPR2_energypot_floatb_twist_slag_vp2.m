% Calculate potential energy for
% S5RRRPR2
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
%   pkin=[a2,a3,a4,a5,d1,d2,d3,d5,theta4]';
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
% Datum: 2019-12-05 18:41
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S5RRRPR2_energypot_floatb_twist_slag_vp2(qJ, r_base, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(3,1),zeros(9,1),zeros(6,1),zeros(6,3)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRPR2_energypot_floatb_twist_slag_vp2: qJ has to be [5x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S5RRRPR2_energypot_floatb_twist_slag_vp2: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRRPR2_energypot_floatb_twist_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRRPR2_energypot_floatb_twist_slag_vp2: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRRPR2_energypot_floatb_twist_slag_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RRRPR2_energypot_floatb_twist_slag_vp2: mrSges has to be [6x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:40:41
% EndTime: 2019-12-05 18:40:42
% DurationCPUTime: 0.29s
% Computational Cost: add. (152->57), mult. (86->44), div. (0->0), fcn. (50->10), ass. (0->25)
t31 = -m(1) - m(2);
t30 = -m(5) - m(6);
t14 = sin(qJ(5));
t16 = cos(qJ(5));
t29 = m(6) * pkin(4) + mrSges(6,1) * t16 - mrSges(6,2) * t14 + mrSges(5,1);
t28 = -m(6) * pkin(8) + mrSges(5,2) - mrSges(6,3);
t13 = qJ(1) + qJ(2);
t27 = pkin(5) + r_base(1);
t17 = cos(qJ(1));
t26 = t17 * pkin(1) + r_base(3);
t25 = pkin(6) + t27;
t11 = qJ(3) + t13;
t10 = cos(t13);
t24 = pkin(2) * t10 + t26;
t23 = pkin(7) + t25;
t15 = sin(qJ(1));
t22 = -pkin(1) * t15 + r_base(2);
t9 = sin(t13);
t20 = -pkin(2) * t9 + t22;
t8 = cos(t11);
t7 = sin(t11);
t6 = pkin(9) + t11;
t2 = cos(t6);
t1 = sin(t6);
t3 = (-m(3) * t26 - m(4) * t24 - mrSges(2,1) * t17 - t10 * mrSges(3,1) - t8 * mrSges(4,1) + t15 * mrSges(2,2) + t9 * mrSges(3,2) + t7 * mrSges(4,2) - mrSges(1,3) + t31 * r_base(3) + t30 * (pkin(3) * t8 + t24) - t29 * t2 + t28 * t1) * g(3) + (-m(3) * t22 - m(4) * t20 + t15 * mrSges(2,1) + t9 * mrSges(3,1) + t7 * mrSges(4,1) + mrSges(2,2) * t17 + t10 * mrSges(3,2) + t8 * mrSges(4,2) - mrSges(1,2) + t31 * r_base(2) + t30 * (-pkin(3) * t7 + t20) + t28 * t2 + t29 * t1) * g(2) + (-m(1) * r_base(1) - m(2) * t27 - m(3) * t25 - m(4) * t23 - mrSges(6,1) * t14 - mrSges(6,2) * t16 - mrSges(1,1) - mrSges(2,3) - mrSges(3,3) - mrSges(4,3) - mrSges(5,3) + t30 * (qJ(4) + t23)) * g(1);
U = t3;
