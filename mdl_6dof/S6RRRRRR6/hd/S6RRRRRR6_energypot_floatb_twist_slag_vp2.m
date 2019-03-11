% Calculate potential energy for
% S6RRRRRR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% r_base [3x1]
%   Base position in world frame
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,d5,d6]';
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
% Datum: 2019-03-10 04:27
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S6RRRRRR6_energypot_floatb_twist_slag_vp2(qJ, r_base, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(3,1),zeros(12,1),zeros(7,1),zeros(7,3)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRR6_energypot_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S6RRRRRR6_energypot_floatb_twist_slag_vp2: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRRR6_energypot_floatb_twist_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRRRR6_energypot_floatb_twist_slag_vp2: pkin has to be [12x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRRRR6_energypot_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRRRRR6_energypot_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-10 04:11:45
% EndTime: 2019-03-10 04:11:46
% DurationCPUTime: 0.91s
% Computational Cost: add. (376->115), mult. (559->126), div. (0->0), fcn. (633->14), ass. (0->46)
t32 = qJ(5) + qJ(6);
t25 = sin(t32);
t27 = cos(t32);
t36 = sin(qJ(5));
t40 = cos(qJ(5));
t45 = -pkin(10) - pkin(9);
t71 = m(4) * pkin(9) - mrSges(3,2) + mrSges(4,3);
t72 = -m(5) - m(6) - m(7);
t74 = -t25 * mrSges(7,1) - t40 * mrSges(6,2) - t27 * mrSges(7,2) - t72 * t45 - mrSges(5,3) + (-m(7) * pkin(5) - mrSges(6,1)) * t36 - t71;
t73 = -m(1) - m(2);
t69 = -m(6) * pkin(11) + m(7) * (-pkin(12) - pkin(11)) + mrSges(5,2) - mrSges(6,3) - mrSges(7,3);
t23 = pkin(5) * t40 + pkin(4);
t67 = -m(6) * pkin(4) - m(7) * t23 - t40 * mrSges(6,1) - t27 * mrSges(7,1) + t36 * mrSges(6,2) + t25 * mrSges(7,2) - mrSges(5,1);
t37 = sin(qJ(3));
t66 = pkin(3) * t37;
t34 = sin(pkin(6));
t38 = sin(qJ(2));
t63 = t34 * t38;
t39 = sin(qJ(1));
t62 = t34 * t39;
t42 = cos(qJ(2));
t61 = t34 * t42;
t43 = cos(qJ(1));
t60 = t34 * t43;
t59 = t38 * t39;
t58 = t38 * t43;
t57 = t39 * t42;
t56 = t42 * t43;
t55 = pkin(7) + r_base(3);
t54 = t39 * pkin(1) + r_base(2);
t53 = t36 * t61;
t52 = t37 * t62;
t35 = cos(pkin(6));
t51 = t35 * pkin(8) + t55;
t50 = t43 * pkin(1) + pkin(8) * t62 + r_base(1);
t49 = -pkin(8) * t60 + t54;
t41 = cos(qJ(3));
t24 = pkin(3) * t41 + pkin(2);
t48 = t24 * t63 + t35 * t66 + t45 * t61 + t51;
t33 = qJ(3) + qJ(4);
t28 = cos(t33);
t26 = sin(t33);
t14 = -t35 * t59 + t56;
t12 = t35 * t58 + t57;
t8 = t26 * t35 + t28 * t63;
t1 = (-m(1) * r_base(3) - mrSges(1,3) - m(2) * t55 - mrSges(2,3) - m(5) * t48 - t8 * mrSges(5,1) + mrSges(5,3) * t61 - m(6) * (pkin(4) * t8 + t48) - (t40 * t8 - t53) * mrSges(6,1) - (-t36 * t8 - t40 * t61) * mrSges(6,2) - m(7) * (-pkin(5) * t53 + t23 * t8 + t48) - (-t25 * t61 + t27 * t8) * mrSges(7,1) - (-t25 * t8 - t27 * t61) * mrSges(7,2) + (-m(3) - m(4)) * t51 + (-t37 * mrSges(4,1) - t41 * mrSges(4,2) - mrSges(3,3)) * t35 + (t71 * t42 + (-m(4) * pkin(2) - t41 * mrSges(4,1) + t37 * mrSges(4,2) - mrSges(3,1)) * t38) * t34 + t69 * (t26 * t63 - t35 * t28)) * g(3) + (-mrSges(1,2) - m(4) * (pkin(2) * t12 + t49) - m(3) * t49 + mrSges(3,3) * t60 - (-t12 * t37 - t41 * t60) * mrSges(4,2) - (t12 * t41 - t37 * t60) * mrSges(4,1) - t12 * mrSges(3,1) - t39 * mrSges(2,1) - t43 * mrSges(2,2) + t73 * r_base(2) + t72 * (t12 * t24 + (-pkin(8) - t66) * t60 + t54) + t67 * (t12 * t28 - t26 * t60) + t69 * (t12 * t26 + t28 * t60) + t74 * (-t35 * t56 + t59)) * g(2) + (-mrSges(3,3) * t62 - mrSges(1,1) - m(4) * (pkin(2) * t14 + t50) - m(3) * t50 - (t14 * t41 + t52) * mrSges(4,1) - (-t14 * t37 + t41 * t62) * mrSges(4,2) - t14 * mrSges(3,1) + t39 * mrSges(2,2) - t43 * mrSges(2,1) + t73 * r_base(1) + t72 * (pkin(3) * t52 + t14 * t24 + t50) + t69 * (t14 * t26 - t28 * t62) + t67 * (t14 * t28 + t26 * t62) + t74 * (t35 * t57 + t58)) * g(1);
U  = t1;
