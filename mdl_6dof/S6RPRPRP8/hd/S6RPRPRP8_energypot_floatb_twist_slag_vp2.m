% Calculate potential energy for
% S6RPRPRP8
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% r_base [3x1]
%   Base position in world frame
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,theta4]';
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
% Datum: 2019-03-09 03:26
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S6RPRPRP8_energypot_floatb_twist_slag_vp2(qJ, r_base, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(3,1),zeros(9,1),zeros(7,1),zeros(7,3)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRP8_energypot_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S6RPRPRP8_energypot_floatb_twist_slag_vp2: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRPRP8_energypot_floatb_twist_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPRPRP8_energypot_floatb_twist_slag_vp2: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRPRP8_energypot_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RPRPRP8_energypot_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 03:24:14
% EndTime: 2019-03-09 03:24:15
% DurationCPUTime: 0.46s
% Computational Cost: add. (192->77), mult. (207->66), div. (0->0), fcn. (177->8), ass. (0->34)
t53 = -m(1) - m(2);
t52 = m(3) + m(4);
t51 = -m(6) - m(7);
t50 = mrSges(6,3) + mrSges(7,2);
t17 = qJ(3) + pkin(9);
t11 = sin(t17);
t12 = cos(t17);
t21 = sin(qJ(3));
t24 = cos(qJ(3));
t49 = -t21 * mrSges(4,1) - t11 * mrSges(5,1) - t24 * mrSges(4,2) - t12 * mrSges(5,2) + mrSges(2,2) - mrSges(3,3);
t48 = -m(7) * pkin(5) - mrSges(6,1) - mrSges(7,1);
t47 = m(7) * qJ(6) - mrSges(6,2) + mrSges(7,3);
t46 = -m(4) * pkin(7) - mrSges(2,1) + mrSges(3,2) - mrSges(4,3) - mrSges(5,3);
t45 = pkin(3) * t21;
t44 = pkin(4) * t11;
t22 = sin(qJ(1));
t43 = t12 * t22;
t20 = sin(qJ(5));
t25 = cos(qJ(1));
t42 = t20 * t25;
t41 = t22 * t20;
t23 = cos(qJ(5));
t40 = t22 * t23;
t39 = t25 * t23;
t18 = pkin(6) + r_base(3);
t38 = t22 * pkin(1) + r_base(2);
t37 = pkin(2) + t18;
t36 = -qJ(2) - t45;
t35 = t25 * pkin(1) + t22 * qJ(2) + r_base(1);
t34 = t24 * pkin(3) + t37;
t19 = -qJ(4) - pkin(7);
t31 = -t22 * t19 + t38;
t27 = -t19 * t25 + t22 * t45 + t35;
t1 = (-m(1) * r_base(3) - m(4) * t37 - m(5) * t34 - t24 * mrSges(4,1) + t21 * mrSges(4,2) - mrSges(3,1) - mrSges(1,3) - mrSges(2,3) + t51 * (t12 * pkin(4) + t11 * pkin(8) + t34) + (-m(2) - m(3)) * t18 + (-t47 * t20 + t48 * t23 - mrSges(5,1)) * t12 + (mrSges(5,2) - t50) * t11) * g(3) + (-m(5) * t31 - mrSges(1,2) + t53 * r_base(2) + t51 * (t25 * t12 * pkin(8) + t31) + t48 * (-t11 * t39 + t41) - t52 * t38 + t47 * (t11 * t42 + t40) + t46 * t22 + (-m(5) * t36 + t51 * (t36 - t44) - t50 * t12 + t52 * qJ(2) - t49) * t25) * g(2) + (-m(5) * t27 - mrSges(1,1) + t53 * r_base(1) + t50 * t43 - t52 * t35 + t51 * (-pkin(8) * t43 + t22 * t44 + t27) + t48 * (t11 * t40 + t42) - t47 * (t11 * t41 - t39) + t46 * t25 + t49 * t22) * g(1);
U  = t1;
