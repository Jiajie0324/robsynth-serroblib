% Calculate potential energy for
% S6PRRRPR5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% r_base [3x1]
%   Base position in world frame
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d2,d3,d4,d6,theta1,theta5]';
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
% Datum: 2019-03-08 23:30
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S6PRRRPR5_energypot_floatb_twist_slag_vp2(qJ, r_base, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(3,1),zeros(13,1),zeros(7,1),zeros(7,3)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRPR5_energypot_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S6PRRRPR5_energypot_floatb_twist_slag_vp2: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRRRPR5_energypot_floatb_twist_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6PRRRPR5_energypot_floatb_twist_slag_vp2: pkin has to be [13x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6PRRRPR5_energypot_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6PRRRPR5_energypot_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 23:22:52
% EndTime: 2019-03-08 23:22:53
% DurationCPUTime: 0.95s
% Computational Cost: add. (547->123), mult. (1205->156), div. (0->0), fcn. (1486->16), ass. (0->58)
t51 = sin(pkin(7));
t54 = cos(pkin(7));
t55 = cos(pkin(6));
t52 = sin(pkin(6));
t63 = cos(qJ(2));
t82 = t52 * t63;
t31 = -t51 * t82 + t55 * t54;
t50 = sin(pkin(12));
t53 = cos(pkin(12));
t60 = sin(qJ(2));
t79 = t55 * t63;
t34 = -t50 * t79 - t53 * t60;
t84 = t52 * t54;
t24 = -t34 * t51 + t50 * t84;
t96 = -m(1) - m(2);
t95 = -m(6) - m(7);
t94 = -m(7) * pkin(11) + mrSges(6,2) - mrSges(7,3);
t57 = sin(qJ(6));
t61 = cos(qJ(6));
t93 = -m(7) * pkin(5) - t61 * mrSges(7,1) + t57 * mrSges(7,2) - mrSges(6,1);
t92 = -m(5) * pkin(10) - t57 * mrSges(7,1) - t61 * mrSges(7,2) + mrSges(4,2) - mrSges(5,3) - mrSges(6,3);
t91 = cos(qJ(3));
t32 = -t50 * t60 + t53 * t79;
t23 = -t32 * t51 - t53 * t84;
t58 = sin(qJ(4));
t90 = t23 * t58;
t89 = t24 * t58;
t88 = t31 * t58;
t86 = t50 * t52;
t85 = t52 * t53;
t83 = t52 * t60;
t80 = t55 * t60;
t76 = qJ(1) + r_base(3);
t75 = t51 * t91;
t74 = t54 * t91;
t73 = t53 * pkin(1) + pkin(8) * t86 + r_base(1);
t72 = t55 * pkin(8) + t76;
t71 = t52 * t75;
t70 = t50 * pkin(1) - pkin(8) * t85 + r_base(2);
t35 = -t50 * t80 + t53 * t63;
t69 = t35 * pkin(2) + t24 * pkin(9) + t73;
t68 = pkin(2) * t83 + t31 * pkin(9) + t72;
t33 = t50 * t63 + t53 * t80;
t65 = t33 * pkin(2) + pkin(9) * t23 + t70;
t62 = cos(qJ(4));
t59 = sin(qJ(3));
t56 = -qJ(5) - pkin(10);
t49 = qJ(4) + pkin(13);
t45 = cos(t49);
t44 = sin(t49);
t43 = pkin(4) * t62 + pkin(3);
t22 = t55 * t51 * t59 + (t54 * t59 * t63 + t60 * t91) * t52;
t21 = -t55 * t75 + t59 * t83 - t74 * t82;
t14 = t35 * t91 + (t34 * t54 + t51 * t86) * t59;
t13 = -t34 * t74 + t35 * t59 - t50 * t71;
t12 = t33 * t91 + (t32 * t54 - t51 * t85) * t59;
t11 = -t32 * t74 + t33 * t59 + t53 * t71;
t1 = (-m(1) * r_base(3) - mrSges(1,3) - m(2) * t76 - mrSges(2,3) - m(3) * t72 - t55 * mrSges(3,3) - (t60 * mrSges(3,1) + t63 * mrSges(3,2)) * t52 - m(4) * t68 - t22 * mrSges(4,1) - t31 * mrSges(4,3) - m(5) * (t22 * pkin(3) + t68) - (t22 * t62 + t88) * mrSges(5,1) - (-t22 * t58 + t31 * t62) * mrSges(5,2) + t95 * (pkin(4) * t88 - t21 * t56 + t22 * t43 + t68) + t94 * (t22 * t44 - t31 * t45) + t93 * (t22 * t45 + t31 * t44) + t92 * t21) * g(3) + (-(t12 * t62 + t90) * mrSges(5,1) + mrSges(3,3) * t85 - m(3) * t70 - m(5) * (pkin(3) * t12 + t65) - m(4) * t65 - (-t12 * t58 + t23 * t62) * mrSges(5,2) - t53 * mrSges(2,2) - t50 * mrSges(2,1) - t32 * mrSges(3,2) - t33 * mrSges(3,1) - t23 * mrSges(4,3) - t12 * mrSges(4,1) - mrSges(1,2) + t96 * r_base(2) + t95 * (pkin(4) * t90 - t11 * t56 + t12 * t43 + t65) + t94 * (t12 * t44 - t23 * t45) + t93 * (t12 * t45 + t23 * t44) + t92 * t11) * g(2) + (-mrSges(3,3) * t86 - (t14 * t62 + t89) * mrSges(5,1) - m(3) * t73 - m(5) * (pkin(3) * t14 + t69) - m(4) * t69 - (-t14 * t58 + t24 * t62) * mrSges(5,2) - t53 * mrSges(2,1) + t50 * mrSges(2,2) - t35 * mrSges(3,1) - t34 * mrSges(3,2) - t24 * mrSges(4,3) - t14 * mrSges(4,1) - mrSges(1,1) + t96 * r_base(1) + t95 * (pkin(4) * t89 - t13 * t56 + t14 * t43 + t69) + t94 * (t14 * t44 - t24 * t45) + t93 * (t14 * t45 + t24 * t44) + t92 * t13) * g(1);
U  = t1;
