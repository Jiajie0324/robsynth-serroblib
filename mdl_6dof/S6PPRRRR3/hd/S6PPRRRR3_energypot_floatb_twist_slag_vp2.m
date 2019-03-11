% Calculate potential energy for
% S6PPRRRR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% r_base [3x1]
%   Base position in world frame
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [14x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,alpha4,d3,d4,d5,d6,theta1,theta2]';
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
% Datum: 2019-03-08 19:12
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S6PPRRRR3_energypot_floatb_twist_slag_vp2(qJ, r_base, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(3,1),zeros(14,1),zeros(7,1),zeros(7,3)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PPRRRR3_energypot_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S6PPRRRR3_energypot_floatb_twist_slag_vp2: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PPRRRR3_energypot_floatb_twist_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [14 1]), ...
  'S6PPRRRR3_energypot_floatb_twist_slag_vp2: pkin has to be [14x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6PPRRRR3_energypot_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6PPRRRR3_energypot_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 19:07:11
% EndTime: 2019-03-08 19:07:12
% DurationCPUTime: 0.96s
% Computational Cost: add. (972->128), mult. (2579->170), div. (0->0), fcn. (3324->18), ass. (0->68)
t61 = cos(pkin(14));
t64 = cos(pkin(7));
t65 = cos(pkin(6));
t59 = sin(pkin(7));
t60 = sin(pkin(6));
t99 = t59 * t60;
t44 = -t61 * t99 + t64 * t65;
t57 = sin(pkin(13));
t100 = t57 * t65;
t56 = sin(pkin(14));
t62 = cos(pkin(13));
t47 = -t100 * t61 - t56 * t62;
t96 = t60 * t64;
t39 = -t47 * t59 + t57 * t96;
t69 = sin(qJ(3));
t72 = cos(qJ(3));
t95 = t61 * t64;
t98 = t59 * t65;
t36 = t72 * t98 + (-t56 * t69 + t72 * t95) * t60;
t58 = sin(pkin(8));
t63 = cos(pkin(8));
t29 = -t36 * t58 + t44 * t63;
t48 = -t100 * t56 + t61 * t62;
t83 = t47 * t64 + t57 * t99;
t27 = -t48 * t69 + t72 * t83;
t19 = -t27 * t58 + t39 * t63;
t94 = t62 * t65;
t46 = t56 * t94 + t57 * t61;
t45 = -t56 * t57 + t61 * t94;
t97 = t60 * t62;
t84 = t45 * t64 - t59 * t97;
t25 = -t46 * t69 + t72 * t84;
t38 = -t45 * t59 - t62 * t96;
t18 = -t25 * t58 + t38 * t63;
t113 = -m(1) - m(2);
t112 = -m(6) - m(7);
t111 = -m(7) * pkin(12) + mrSges(6,2) - mrSges(7,3);
t66 = sin(qJ(6));
t70 = cos(qJ(6));
t110 = -t66 * mrSges(7,1) - t70 * mrSges(7,2) + mrSges(5,2) - mrSges(6,3);
t109 = -m(7) * pkin(5) - t70 * mrSges(7,1) + t66 * mrSges(7,2) - mrSges(6,1);
t108 = cos(qJ(4));
t92 = qJ(2) * t60;
t89 = qJ(1) + r_base(3);
t88 = t58 * t108;
t87 = t63 * t108;
t86 = t62 * pkin(1) + t57 * t92 + r_base(1);
t85 = t65 * qJ(2) + t89;
t82 = t57 * pkin(1) - t62 * t92 + r_base(2);
t81 = t48 * pkin(2) + t39 * pkin(9) + t86;
t80 = t60 * t56 * pkin(2) + t44 * pkin(9) + t85;
t28 = t48 * t72 + t69 * t83;
t79 = t28 * pkin(3) + t19 * pkin(10) + t81;
t37 = t69 * t98 + (t56 * t72 + t69 * t95) * t60;
t78 = t37 * pkin(3) + t29 * pkin(10) + t80;
t77 = t46 * pkin(2) + pkin(9) * t38 + t82;
t26 = t46 * t72 + t69 * t84;
t74 = t26 * pkin(3) + t18 * pkin(10) + t77;
t71 = cos(qJ(5));
t68 = sin(qJ(4));
t67 = sin(qJ(5));
t17 = t37 * t108 + (t36 * t63 + t44 * t58) * t68;
t16 = -t36 * t87 + t37 * t68 - t44 * t88;
t10 = t28 * t108 + (t27 * t63 + t39 * t58) * t68;
t9 = -t27 * t87 + t28 * t68 - t39 * t88;
t8 = t26 * t108 + (t25 * t63 + t38 * t58) * t68;
t7 = -t25 * t87 + t26 * t68 - t38 * t88;
t1 = (-m(1) * r_base(3) - mrSges(1,3) - m(2) * t89 - mrSges(2,3) - m(3) * t85 - t65 * mrSges(3,3) - (t56 * mrSges(3,1) + t61 * mrSges(3,2)) * t60 - m(4) * t80 - t37 * mrSges(4,1) - t36 * mrSges(4,2) - t44 * mrSges(4,3) - m(5) * t78 - t17 * mrSges(5,1) - t29 * mrSges(5,3) + t112 * (t17 * pkin(4) + pkin(11) * t16 + t78) + t109 * (t17 * t71 + t29 * t67) + t110 * t16 + t111 * (t17 * t67 - t29 * t71)) * g(3) + (-m(3) * t82 - m(4) * t77 - m(5) * t74 - t57 * mrSges(2,1) - t46 * mrSges(3,1) - t26 * mrSges(4,1) - t8 * mrSges(5,1) - t62 * mrSges(2,2) - t45 * mrSges(3,2) - t25 * mrSges(4,2) + mrSges(3,3) * t97 - t38 * mrSges(4,3) - t18 * mrSges(5,3) - mrSges(1,2) + t113 * r_base(2) + t112 * (t8 * pkin(4) + pkin(11) * t7 + t74) + t109 * (t18 * t67 + t71 * t8) + t110 * t7 + t111 * (-t18 * t71 + t67 * t8)) * g(2) + (-m(3) * t86 - m(4) * t81 - m(5) * t79 - t62 * mrSges(2,1) - t48 * mrSges(3,1) - t28 * mrSges(4,1) - t10 * mrSges(5,1) - t47 * mrSges(3,2) - t27 * mrSges(4,2) - t39 * mrSges(4,3) - t19 * mrSges(5,3) - mrSges(1,1) + t113 * r_base(1) + t112 * (t10 * pkin(4) + pkin(11) * t9 + t79) + t109 * (t10 * t71 + t19 * t67) + t110 * t9 + (-t60 * mrSges(3,3) + mrSges(2,2)) * t57 + t111 * (t10 * t67 - t19 * t71)) * g(1);
U  = t1;
