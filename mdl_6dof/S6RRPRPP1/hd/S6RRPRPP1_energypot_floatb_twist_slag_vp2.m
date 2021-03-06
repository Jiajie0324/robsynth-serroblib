% Calculate potential energy for
% S6RRPRPP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% r_base [3x1]
%   Base position in world frame
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,theta3,theta5]';
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
% Datum: 2019-03-09 09:48
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S6RRPRPP1_energypot_floatb_twist_slag_vp2(qJ, r_base, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(3,1),zeros(10,1),zeros(7,1),zeros(7,3)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPP1_energypot_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S6RRPRPP1_energypot_floatb_twist_slag_vp2: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRPP1_energypot_floatb_twist_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPRPP1_energypot_floatb_twist_slag_vp2: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRPRPP1_energypot_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRPRPP1_energypot_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 09:45:02
% EndTime: 2019-03-09 09:45:03
% DurationCPUTime: 0.52s
% Computational Cost: add. (260->80), mult. (241->73), div. (0->0), fcn. (215->10), ass. (0->39)
t26 = sin(qJ(4));
t29 = cos(qJ(4));
t61 = -m(5) * pkin(3) - t29 * mrSges(5,1) + t26 * mrSges(5,2) - mrSges(4,1);
t60 = -m(5) * pkin(8) + mrSges(4,2) - mrSges(5,3);
t59 = -m(2) - m(3);
t58 = -m(4) - m(5);
t57 = -m(6) - m(7);
t56 = -mrSges(6,3) - mrSges(7,2);
t55 = -m(1) + t59;
t22 = qJ(2) + pkin(9);
t17 = sin(t22);
t19 = cos(t22);
t27 = sin(qJ(2));
t30 = cos(qJ(2));
t53 = -m(3) * pkin(1) - t30 * mrSges(3,1) + t27 * mrSges(3,2) + t60 * t17 + t61 * t19 - mrSges(2,1);
t52 = -m(7) * pkin(5) - mrSges(6,1) - mrSges(7,1);
t51 = -m(7) * qJ(6) + mrSges(6,2) - mrSges(7,3);
t50 = m(3) * pkin(7) + mrSges(5,1) * t26 + mrSges(5,2) * t29 - mrSges(2,2) + mrSges(3,3) + mrSges(4,3);
t49 = pkin(4) * t26;
t28 = sin(qJ(1));
t48 = t17 * t28;
t31 = cos(qJ(1));
t47 = t17 * t31;
t46 = t19 * t31;
t21 = qJ(4) + pkin(10);
t16 = sin(t21);
t45 = t28 * t16;
t18 = cos(t21);
t44 = t28 * t18;
t23 = pkin(6) + r_base(3);
t15 = pkin(2) * t30 + pkin(1);
t43 = t31 * t15 + r_base(1);
t42 = t27 * pkin(2) + t23;
t25 = -qJ(3) - pkin(7);
t41 = t28 * t15 + t31 * t25 + r_base(2);
t38 = -t28 * t25 + t43;
t24 = -qJ(5) - pkin(8);
t14 = pkin(4) * t29 + pkin(3);
t1 = (-m(1) * r_base(3) - t27 * mrSges(3,1) - t30 * mrSges(3,2) - mrSges(1,3) - mrSges(2,3) + t58 * t42 + t57 * (t17 * t14 + t19 * t24 + t42) + t59 * t23 + (-t56 - t60) * t19 + (t51 * t16 + t52 * t18 + t61) * t17) * g(3) + (-mrSges(1,2) + t56 * t48 + t58 * t41 + t57 * (t28 * t19 * t14 - t24 * t48 - t31 * t49 + t41) + t52 * (-t16 * t31 + t19 * t44) + t51 * (t18 * t31 + t19 * t45) + t55 * r_base(2) + t50 * t31 + t53 * t28) * g(2) + (-m(4) * t38 - m(5) * t43 - mrSges(1,1) + t56 * t47 + t57 * (t14 * t46 - t24 * t47 + t28 * t49 + t38) + t52 * (t18 * t46 + t45) + t51 * (t16 * t46 - t44) + t55 * r_base(1) + t53 * t31 + (m(5) * t25 - t50) * t28) * g(1);
U  = t1;
