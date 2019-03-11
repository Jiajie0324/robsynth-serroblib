% Calculate potential energy for
% S6RPRRPR9
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d3,d4,d6,theta2,theta5]';
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
% Datum: 2019-03-09 05:33
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S6RPRRPR9_energypot_floatb_twist_slag_vp2(qJ, r_base, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(3,1),zeros(13,1),zeros(7,1),zeros(7,3)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPR9_energypot_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S6RPRRPR9_energypot_floatb_twist_slag_vp2: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRRPR9_energypot_floatb_twist_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6RPRRPR9_energypot_floatb_twist_slag_vp2: pkin has to be [13x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRRPR9_energypot_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RPRRPR9_energypot_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 05:26:43
% EndTime: 2019-03-09 05:26:44
% DurationCPUTime: 0.91s
% Computational Cost: add. (547->123), mult. (1205->155), div. (0->0), fcn. (1486->16), ass. (0->59)
t50 = sin(pkin(12));
t55 = cos(pkin(6));
t63 = cos(qJ(1));
t53 = cos(pkin(12));
t60 = sin(qJ(1));
t80 = t60 * t53;
t34 = -t50 * t63 - t55 * t80;
t51 = sin(pkin(7));
t54 = cos(pkin(7));
t52 = sin(pkin(6));
t85 = t52 * t60;
t24 = -t34 * t51 + t54 * t85;
t86 = t52 * t53;
t31 = -t51 * t86 + t54 * t55;
t97 = -m(1) - m(2);
t96 = -m(6) - m(7);
t95 = -m(7) * pkin(11) + mrSges(6,2) - mrSges(7,3);
t57 = sin(qJ(6));
t61 = cos(qJ(6));
t94 = -m(7) * pkin(5) - t61 * mrSges(7,1) + t57 * mrSges(7,2) - mrSges(6,1);
t93 = -m(5) * pkin(10) - t57 * mrSges(7,1) - t61 * mrSges(7,2) + mrSges(4,2) - mrSges(5,3) - mrSges(6,3);
t92 = cos(qJ(3));
t81 = t60 * t50;
t82 = t55 * t63;
t32 = t53 * t82 - t81;
t84 = t52 * t63;
t23 = -t32 * t51 - t54 * t84;
t58 = sin(qJ(4));
t91 = t23 * t58;
t90 = t24 * t58;
t89 = t31 * t58;
t87 = t50 * t52;
t79 = qJ(2) * t52;
t78 = pkin(8) + r_base(3);
t75 = t51 * t92;
t74 = t54 * t92;
t73 = t55 * qJ(2) + t78;
t72 = t63 * pkin(1) + t60 * t79 + r_base(1);
t71 = t52 * t75;
t70 = t60 * pkin(1) - t63 * t79 + r_base(2);
t35 = t53 * t63 - t55 * t81;
t69 = t35 * pkin(2) + t24 * pkin(9) + t72;
t68 = pkin(2) * t87 + t31 * pkin(9) + t73;
t33 = t50 * t82 + t80;
t65 = t33 * pkin(2) + pkin(9) * t23 + t70;
t62 = cos(qJ(4));
t59 = sin(qJ(3));
t56 = -qJ(5) - pkin(10);
t49 = qJ(4) + pkin(13);
t45 = cos(t49);
t44 = sin(t49);
t43 = pkin(4) * t62 + pkin(3);
t22 = t55 * t51 * t59 + (t53 * t54 * t59 + t50 * t92) * t52;
t21 = -t55 * t75 + t59 * t87 - t74 * t86;
t14 = t35 * t92 + (t34 * t54 + t51 * t85) * t59;
t13 = -t34 * t74 + t35 * t59 - t60 * t71;
t12 = t33 * t92 + (t32 * t54 - t51 * t84) * t59;
t11 = -t32 * t74 + t33 * t59 + t63 * t71;
t1 = (-m(1) * r_base(3) - mrSges(1,3) - m(2) * t78 - mrSges(2,3) - m(3) * t73 - t55 * mrSges(3,3) - (t50 * mrSges(3,1) + t53 * mrSges(3,2)) * t52 - m(4) * t68 - t22 * mrSges(4,1) - t31 * mrSges(4,3) - m(5) * (pkin(3) * t22 + t68) - (t22 * t62 + t89) * mrSges(5,1) - (-t22 * t58 + t31 * t62) * mrSges(5,2) + t96 * (pkin(4) * t89 - t21 * t56 + t22 * t43 + t68) + t95 * (t22 * t44 - t31 * t45) + t94 * (t22 * t45 + t31 * t44) + t93 * t21) * g(3) + (-(t12 * t62 + t91) * mrSges(5,1) + mrSges(3,3) * t84 - m(3) * t70 - m(5) * (t12 * pkin(3) + t65) - m(4) * t65 - (-t12 * t58 + t23 * t62) * mrSges(5,2) - t63 * mrSges(2,2) - t60 * mrSges(2,1) - t32 * mrSges(3,2) - t33 * mrSges(3,1) - t23 * mrSges(4,3) - t12 * mrSges(4,1) - mrSges(1,2) + t97 * r_base(2) + t96 * (pkin(4) * t91 - t11 * t56 + t12 * t43 + t65) + t95 * (t12 * t44 - t23 * t45) + t94 * (t12 * t45 + t23 * t44) + t93 * t11) * g(2) + (-mrSges(3,3) * t85 - (t14 * t62 + t90) * mrSges(5,1) - m(3) * t72 - m(5) * (pkin(3) * t14 + t69) - m(4) * t69 - (-t14 * t58 + t24 * t62) * mrSges(5,2) - t63 * mrSges(2,1) + t60 * mrSges(2,2) - t35 * mrSges(3,1) - t34 * mrSges(3,2) - t24 * mrSges(4,3) - t14 * mrSges(4,1) - mrSges(1,1) + t97 * r_base(1) + t96 * (pkin(4) * t90 - t13 * t56 + t14 * t43 + t69) + t95 * (t14 * t44 - t24 * t45) + t94 * (t14 * t45 + t24 * t44) + t93 * t13) * g(1);
U  = t1;
