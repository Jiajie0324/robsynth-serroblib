% Calculate Gravitation load on the joints for
% S6RPRRRP8
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d5]';
% m_mdh [7x1]
%   mass of all robot links (including the base)
% rSges [7x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% 
% Output:
% taug [6x1]
%   joint torques required to compensate gravitation load

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 06:25
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function taug = S6RPRRRP8_gravloadJ_floatb_twist_slag_vp1(qJ, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(9,1),zeros(7,1),zeros(7,3)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRP8_gravloadJ_floatb_twist_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRRRP8_gravloadJ_floatb_twist_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPRRRP8_gravloadJ_floatb_twist_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRRRP8_gravloadJ_floatb_twist_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RPRRRP8_gravloadJ_floatb_twist_slag_vp1: rSges has to be [7x3] (double)');

%% Symbolic Calculation
% From gravload_joint_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 06:22:57
% EndTime: 2019-03-09 06:22:58
% DurationCPUTime: 0.68s
% Computational Cost: add. (368->135), mult. (481->177), div. (0->0), fcn. (447->8), ass. (0->59)
t71 = rSges(7,1) + pkin(5);
t57 = rSges(7,3) + qJ(6);
t35 = sin(qJ(5));
t38 = cos(qJ(5));
t43 = -t57 * t35 - t71 * t38 - pkin(4);
t40 = cos(qJ(1));
t73 = g(2) * t40;
t34 = qJ(3) + qJ(4);
t29 = sin(t34);
t30 = cos(t34);
t82 = t29 * t35 * rSges(6,2) + t30 * rSges(6,3);
t37 = sin(qJ(1));
t76 = g(1) * t37;
t81 = -t73 + t76;
t80 = (g(1) * t40 + g(2) * t37) * t30;
t62 = t35 * t40;
t79 = g(2) * t30 * rSges(6,2) * t62;
t36 = sin(qJ(3));
t78 = pkin(3) * t36;
t39 = cos(qJ(3));
t77 = pkin(3) * t39;
t72 = g(3) * t30;
t70 = -rSges(7,2) - pkin(9);
t69 = rSges(4,3) + pkin(7);
t68 = -rSges(6,3) - pkin(9);
t67 = rSges(5,2) * t30;
t66 = t29 * t37;
t65 = t29 * t40;
t64 = t30 * t37;
t63 = t35 * t37;
t61 = t37 * t38;
t60 = t40 * t38;
t59 = pkin(4) * t64 + pkin(9) * t66;
t58 = t40 * pkin(1) + t37 * qJ(2);
t56 = t30 * t63;
t55 = t30 * t61;
t54 = t37 * t78 + t58;
t32 = t40 * qJ(2);
t41 = -pkin(8) - pkin(7);
t53 = t37 * t41 + t40 * t78 + t32;
t52 = -rSges(6,1) * t38 - pkin(4);
t26 = t30 * pkin(9);
t51 = t26 - t78;
t49 = rSges(4,1) * t36 + rSges(4,2) * t39;
t48 = rSges(5,1) * t29 + t67;
t47 = rSges(7,2) * t66 + t71 * t55 + t57 * t56 + t59;
t46 = -pkin(1) * t37 + pkin(4) * t65 + t53;
t45 = pkin(4) * t66 - t40 * t41 + t54;
t44 = rSges(6,1) * t55 - rSges(6,2) * t56 + rSges(6,3) * t66 + t59;
t42 = m(5) * rSges(5,1) - m(6) * t52 - m(7) * t43;
t25 = t30 * rSges(7,2);
t22 = t37 * t77;
t16 = rSges(5,2) * t65;
t15 = rSges(5,1) * t64;
t4 = t29 * t60 - t63;
t3 = t29 * t62 + t61;
t2 = t29 * t61 + t62;
t1 = t29 * t63 - t60;
t5 = [-m(2) * (g(1) * (-rSges(2,1) * t37 - rSges(2,2) * t40) + g(2) * (rSges(2,1) * t40 - rSges(2,2) * t37)) - m(3) * (g(1) * (rSges(3,3) * t40 + t32 + (rSges(3,2) - pkin(1)) * t37) + g(2) * (-rSges(3,2) * t40 + rSges(3,3) * t37 + t58)) - m(4) * (g(1) * t32 + g(2) * t58 + (g(1) * t49 + g(2) * t69) * t40 + (g(1) * (-pkin(1) - t69) + g(2) * t49) * t37) - m(5) * (g(1) * t53 + g(2) * t54 + (g(1) * t48 + g(2) * (rSges(5,3) - t41)) * t40 + (g(1) * (-rSges(5,3) - pkin(1)) + g(2) * t48) * t37) - m(6) * (g(1) * (rSges(6,1) * t4 - rSges(6,2) * t3 + t46) + g(2) * (t2 * rSges(6,1) - t1 * rSges(6,2) + t45) + t68 * t80) - m(7) * (g(1) * (t57 * t3 + t71 * t4 + t46) + g(2) * (t57 * t1 + t71 * t2 + t45) + t70 * t80) (-m(3) - m(4) - m(5) - m(6) - m(7)) * t81, -m(4) * (-g(3) * t49 + t81 * (rSges(4,1) * t39 - rSges(4,2) * t36)) - m(5) * (g(1) * (-rSges(5,2) * t66 + t15 + t22) + g(2) * (t16 + (-rSges(5,1) * t30 - t77) * t40) + g(3) * (-t48 - t78)) - m(6) * (g(1) * (t22 + t44) + t79 + g(3) * (t52 * t29 + t51 + t82) + (t68 * t29 + t52 * t30 - t77) * t73) - m(7) * (g(1) * (t22 + t47) + (t70 * t29 + t43 * t30 - t77) * t73 + (t43 * t29 + t25 + t51) * g(3)) -m(5) * (g(1) * t15 + g(2) * t16 - g(3) * t67) - m(6) * (g(1) * t44 + t79 + g(3) * (t26 + t82)) - m(7) * (g(1) * t47 + g(3) * (t25 + t26)) + (m(5) * rSges(5,2) * t76 + t42 * g(3)) * t29 + ((-m(6) * t68 - m(7) * t70) * t29 + t42 * t30) * t73, -m(6) * (g(1) * (-rSges(6,1) * t1 - rSges(6,2) * t2) + g(2) * (rSges(6,1) * t3 + rSges(6,2) * t4)) - m(7) * (g(1) * (-t71 * t1 + t57 * t2) + g(2) * (t71 * t3 - t57 * t4)) + (-m(6) * (-rSges(6,1) * t35 - rSges(6,2) * t38) - m(7) * (-t71 * t35 + t57 * t38)) * t72, -m(7) * (g(1) * t1 - g(2) * t3 + t35 * t72)];
taug  = t5(:);
