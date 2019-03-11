% Calculate potential energy for
% S6RPRRRR4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% r_base [3x1]
%   Base position in world frame
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d5,d6,theta2]';
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
% Datum: 2019-03-09 07:07
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S6RPRRRR4_energypot_floatb_twist_slag_vp2(qJ, r_base, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(3,1),zeros(11,1),zeros(7,1),zeros(7,3)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRR4_energypot_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S6RPRRRR4_energypot_floatb_twist_slag_vp2: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRRRR4_energypot_floatb_twist_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RPRRRR4_energypot_floatb_twist_slag_vp2: pkin has to be [11x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRRRR4_energypot_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RPRRRR4_energypot_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 07:04:42
% EndTime: 2019-03-09 07:04:43
% DurationCPUTime: 0.40s
% Computational Cost: add. (252->69), mult. (176->54), div. (0->0), fcn. (138->12), ass. (0->32)
t27 = sin(qJ(6));
t29 = cos(qJ(6));
t50 = -m(7) * pkin(5) - t29 * mrSges(7,1) + t27 * mrSges(7,2) - mrSges(6,1);
t49 = -m(7) * pkin(10) + mrSges(6,2) - mrSges(7,3);
t48 = -m(2) - m(3);
t47 = m(6) + m(7);
t45 = -m(1) - m(4) - m(5) + t48;
t22 = pkin(11) + qJ(3);
t17 = qJ(4) + t22;
t11 = sin(t17);
t12 = cos(t17);
t25 = cos(pkin(11));
t13 = t25 * pkin(2) + pkin(1);
t15 = sin(t22);
t16 = cos(t22);
t24 = sin(pkin(11));
t4 = pkin(3) * t16 + t13;
t14 = qJ(5) + t17;
t7 = sin(t14);
t8 = cos(t14);
t44 = -m(3) * pkin(1) - m(4) * t13 - m(5) * t4 - t25 * mrSges(3,1) - t16 * mrSges(4,1) - t12 * mrSges(5,1) + t24 * mrSges(3,2) + t15 * mrSges(4,2) + t11 * mrSges(5,2) + t49 * t7 + t50 * t8 - mrSges(2,1);
t26 = -pkin(7) - qJ(2);
t21 = -pkin(8) + t26;
t43 = m(3) * qJ(2) - m(4) * t26 - m(5) * t21 + t27 * mrSges(7,1) + t29 * mrSges(7,2) - mrSges(2,2) + mrSges(3,3) + mrSges(4,3) + mrSges(5,3) + mrSges(6,3);
t23 = pkin(6) + r_base(3);
t40 = t24 * pkin(2) + t23;
t39 = pkin(3) * t15 + t40;
t30 = cos(qJ(1));
t28 = sin(qJ(1));
t18 = -pkin(9) + t21;
t3 = pkin(4) * t12 + t4;
t1 = (-m(1) * r_base(3) - m(4) * t40 - m(5) * t39 - t24 * mrSges(3,1) - t15 * mrSges(4,1) - t11 * mrSges(5,1) - t25 * mrSges(3,2) - t16 * mrSges(4,2) - t12 * mrSges(5,2) - mrSges(1,3) - mrSges(2,3) - t47 * (pkin(4) * t11 + t39) - t49 * t8 + t50 * t7 + t48 * t23) * g(3) + (-mrSges(1,2) - t47 * (t30 * t18 + t28 * t3 + r_base(2)) + t45 * r_base(2) + t43 * t30 + t44 * t28) * g(2) + (-mrSges(1,1) - t47 * (t30 * t3 + r_base(1)) + t45 * r_base(1) + t44 * t30 + (t18 * t47 - t43) * t28) * g(1);
U  = t1;
