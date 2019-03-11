% Calculate Gravitation load on the joints for
% S6RPRRPR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d6,theta2,theta5]';
% m_mdh [7x1]
%   mass of all robot links (including the base)
% mrSges [7x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% 
% Output:
% taug [6x1]
%   joint torques required to compensate gravitation load

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 05:03
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function taug = S6RPRRPR2_gravloadJ_floatb_twist_slag_vp2(qJ, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(11,1),zeros(7,1),zeros(7,3)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPR2_gravloadJ_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRRPR2_gravloadJ_floatb_twist_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RPRRPR2_gravloadJ_floatb_twist_slag_vp2: pkin has to be [11x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRRPR2_gravloadJ_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RPRRPR2_gravloadJ_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');

%% Symbolic Calculation
% From gravload_joint_floatb_twist_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 05:00:15
% EndTime: 2019-03-09 05:00:17
% DurationCPUTime: 0.71s
% Computational Cost: add. (483->117), mult. (447->146), div. (0->0), fcn. (403->12), ass. (0->66)
t93 = mrSges(5,3) + mrSges(6,3) + mrSges(7,3);
t35 = qJ(4) + pkin(11);
t29 = cos(t35);
t41 = cos(qJ(4));
t32 = t41 * pkin(4);
t19 = pkin(5) * t29 + t32;
t17 = pkin(3) + t19;
t31 = qJ(6) + t35;
t24 = sin(t31);
t25 = cos(t31);
t26 = t32 + pkin(3);
t27 = sin(t35);
t38 = sin(qJ(4));
t92 = -m(5) * pkin(3) - m(6) * t26 - m(7) * t17 - t41 * mrSges(5,1) - t29 * mrSges(6,1) - t25 * mrSges(7,1) + t38 * mrSges(5,2) + t27 * mrSges(6,2) + t24 * mrSges(7,2);
t37 = -qJ(5) - pkin(8);
t34 = -pkin(9) + t37;
t91 = -m(5) * pkin(8) + m(6) * t37 + m(7) * t34 - t93;
t36 = qJ(1) + pkin(10);
t28 = sin(t36);
t30 = cos(t36);
t90 = g(1) * t30 + g(2) * t28;
t82 = m(6) + m(7);
t86 = -t82 - m(4) - m(5);
t83 = m(6) * pkin(4);
t88 = mrSges(5,1) + t83;
t87 = mrSges(3,2) - mrSges(4,3);
t39 = sin(qJ(3));
t42 = cos(qJ(3));
t54 = t42 * mrSges(4,1) - t39 * mrSges(4,2);
t84 = t93 * t39 + mrSges(3,1) + t54;
t66 = t42 * t24;
t5 = t30 * t25 + t28 * t66;
t65 = t42 * t25;
t6 = t30 * t24 - t28 * t65;
t81 = -t5 * mrSges(7,1) + t6 * mrSges(7,2);
t7 = t28 * t25 - t30 * t66;
t8 = t28 * t24 + t30 * t65;
t80 = t7 * mrSges(7,1) - t8 * mrSges(7,2);
t77 = g(3) * t39;
t76 = t38 * pkin(4);
t40 = sin(qJ(1));
t75 = t40 * pkin(1);
t43 = cos(qJ(1));
t33 = t43 * pkin(1);
t18 = pkin(5) * t27 + t76;
t74 = t28 * t18;
t73 = t28 * t38;
t72 = t30 * t18;
t71 = t30 * t38;
t67 = t41 * t42;
t64 = t42 * t27;
t63 = t42 * t29;
t62 = t42 * t38;
t56 = t42 * pkin(3) + t39 * pkin(8);
t52 = -mrSges(7,1) * t24 - mrSges(7,2) * t25;
t51 = t42 * t17 - t39 * t34;
t50 = t42 * t26 - t39 * t37;
t15 = t28 * t41 - t30 * t62;
t13 = t28 * t62 + t30 * t41;
t16 = t30 * t67 + t73;
t14 = -t28 * t67 + t71;
t12 = t28 * t27 + t30 * t63;
t11 = t28 * t29 - t30 * t64;
t10 = t30 * t27 - t28 * t63;
t9 = t28 * t64 + t30 * t29;
t1 = [(-t73 * t83 - m(3) * t33 - m(7) * t74 - t43 * mrSges(2,1) - t16 * mrSges(5,1) - t12 * mrSges(6,1) - t8 * mrSges(7,1) + t40 * mrSges(2,2) - t15 * mrSges(5,2) - t11 * mrSges(6,2) - t7 * mrSges(7,2) + t86 * (t30 * pkin(2) + t28 * pkin(7) + t33) + t87 * t28 + (-m(5) * t56 - m(6) * t50 - m(7) * t51 - t84) * t30) * g(2) + (-t71 * t83 + m(3) * t75 - m(7) * t72 + t40 * mrSges(2,1) - t14 * mrSges(5,1) - t10 * mrSges(6,1) - t6 * mrSges(7,1) + t43 * mrSges(2,2) - t13 * mrSges(5,2) - t9 * mrSges(6,2) - t5 * mrSges(7,2) + t86 * (t30 * pkin(7) - t75) + t87 * t30 + (m(4) * pkin(2) - m(5) * (-pkin(2) - t56) - m(6) * (-pkin(2) - t50) - m(7) * (-pkin(2) - t51) + t84) * t28) * g(1) (-m(3) + t86) * g(3), -g(3) * t54 + (t92 * g(3) + t90 * (mrSges(4,2) + t91)) * t42 + (t91 * g(3) + t90 * (mrSges(4,1) - t92)) * t39 (m(6) * t76 + m(7) * t18 + mrSges(5,1) * t38 + mrSges(6,1) * t27 + mrSges(5,2) * t41 + mrSges(6,2) * t29 - t52) * t77 + (-t14 * mrSges(5,2) + t9 * mrSges(6,1) - t10 * mrSges(6,2) - m(7) * (-t30 * t19 - t42 * t74) - t81 + t88 * t13) * g(2) + (t16 * mrSges(5,2) - t11 * mrSges(6,1) + t12 * mrSges(6,2) - m(7) * (t28 * t19 - t42 * t72) - t80 - t88 * t15) * g(1) (t42 * g(3) - t39 * t90) * t82, -g(1) * t80 - g(2) * t81 - t52 * t77];
taug  = t1(:);
