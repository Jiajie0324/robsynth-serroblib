% Calculate potential energy for
% S6PRRPRR2
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d5,d6,theta1,theta4]';
% m_mdh [7x1]
%   mass of all robot links (including the base)
% rSges [7x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% 
% Output:
% U [1x1]
%   Potential energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 22:01
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S6PRRPRR2_energypot_floatb_twist_slag_vp1(qJ, r_base, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(3,1),zeros(12,1),zeros(7,1),zeros(7,3)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPRR2_energypot_floatb_twist_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S6PRRPRR2_energypot_floatb_twist_slag_vp1: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRRPRR2_energypot_floatb_twist_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRRPRR2_energypot_floatb_twist_slag_vp1: pkin has to be [12x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6PRRPRR2_energypot_floatb_twist_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6PRRPRR2_energypot_floatb_twist_slag_vp1: rSges has to be [7x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 21:55:47
% EndTime: 2019-03-08 21:55:47
% DurationCPUTime: 0.47s
% Computational Cost: add. (376->138), mult. (545->174), div. (0->0), fcn. (633->14), ass. (0->53)
t40 = sin(qJ(3));
t68 = pkin(3) * t40;
t67 = pkin(8) + rSges(4,3);
t66 = pkin(9) + rSges(6,3);
t34 = sin(pkin(11));
t36 = cos(pkin(11));
t41 = sin(qJ(2));
t37 = cos(pkin(6));
t44 = cos(qJ(2));
t56 = t37 * t44;
t11 = t34 * t41 - t36 * t56;
t39 = sin(qJ(5));
t65 = t11 * t39;
t13 = t34 * t56 + t36 * t41;
t64 = t13 * t39;
t35 = sin(pkin(6));
t63 = t34 * t35;
t62 = t35 * t36;
t61 = t35 * t40;
t60 = t35 * t41;
t43 = cos(qJ(3));
t59 = t35 * t43;
t58 = t35 * t44;
t57 = t37 * t41;
t55 = pkin(10) + pkin(9) + rSges(7,3);
t54 = t34 * pkin(1) + r_base(2);
t53 = t34 * t61;
t52 = t39 * t58;
t51 = qJ(1) + r_base(3);
t50 = t36 * pkin(1) + pkin(7) * t63 + r_base(1);
t49 = t37 * pkin(7) + t51;
t14 = -t34 * t57 + t36 * t44;
t24 = t43 * pkin(3) + pkin(2);
t38 = -qJ(4) - pkin(8);
t48 = pkin(3) * t53 - t13 * t38 + t14 * t24 + t50;
t47 = t24 * t60 + t37 * t68 + t38 * t58 + t49;
t12 = t34 * t44 + t36 * t57;
t46 = t12 * t24 + (-pkin(7) - t68) * t62 - t11 * t38 + t54;
t42 = cos(qJ(5));
t33 = qJ(5) + qJ(6);
t32 = qJ(3) + pkin(12);
t28 = cos(t33);
t27 = sin(t33);
t26 = cos(t32);
t25 = sin(t32);
t23 = t42 * pkin(5) + pkin(4);
t8 = t37 * t25 + t26 * t60;
t7 = t25 * t60 - t37 * t26;
t4 = t14 * t26 + t25 * t63;
t3 = t14 * t25 - t26 * t63;
t2 = t12 * t26 - t25 * t62;
t1 = t12 * t25 + t26 * t62;
t5 = -m(1) * (g(1) * (r_base(1) + rSges(1,1)) + g(2) * (r_base(2) + rSges(1,2)) + g(3) * (r_base(3) + rSges(1,3))) - m(2) * (g(1) * (t36 * rSges(2,1) - t34 * rSges(2,2) + r_base(1)) + g(2) * (t34 * rSges(2,1) + t36 * rSges(2,2) + r_base(2)) + g(3) * (rSges(2,3) + t51)) - m(3) * (g(1) * (t14 * rSges(3,1) - t13 * rSges(3,2) + t50) + g(2) * (t12 * rSges(3,1) - t11 * rSges(3,2) + t54) + g(3) * (t37 * rSges(3,3) + t49) + (g(1) * rSges(3,3) * t34 + g(3) * (rSges(3,1) * t41 + rSges(3,2) * t44) + g(2) * (-rSges(3,3) - pkin(7)) * t36) * t35) - m(4) * (g(1) * (t14 * pkin(2) + (t14 * t43 + t53) * rSges(4,1) + (-t14 * t40 + t34 * t59) * rSges(4,2) + t67 * t13 + t50) + g(2) * (t12 * pkin(2) - pkin(7) * t62 + (t12 * t43 - t36 * t61) * rSges(4,1) + (-t12 * t40 - t36 * t59) * rSges(4,2) + t67 * t11 + t54) + g(3) * ((t40 * rSges(4,1) + t43 * rSges(4,2)) * t37 + (-t67 * t44 + (t43 * rSges(4,1) - t40 * rSges(4,2) + pkin(2)) * t41) * t35 + t49)) - m(5) * (g(1) * (t4 * rSges(5,1) - t3 * rSges(5,2) + t13 * rSges(5,3) + t48) + g(2) * (t2 * rSges(5,1) - t1 * rSges(5,2) + t11 * rSges(5,3) + t46) + g(3) * (t8 * rSges(5,1) - t7 * rSges(5,2) - rSges(5,3) * t58 + t47)) - m(6) * (g(1) * (t4 * pkin(4) + (t4 * t42 + t64) * rSges(6,1) + (t13 * t42 - t4 * t39) * rSges(6,2) + t66 * t3 + t48) + g(2) * (t2 * pkin(4) + (t2 * t42 + t65) * rSges(6,1) + (t11 * t42 - t2 * t39) * rSges(6,2) + t66 * t1 + t46) + g(3) * (t8 * pkin(4) + (t8 * t42 - t52) * rSges(6,1) + (-t8 * t39 - t42 * t58) * rSges(6,2) + t66 * t7 + t47)) - m(7) * (g(1) * (t4 * t23 + pkin(5) * t64 + (t13 * t27 + t4 * t28) * rSges(7,1) + (t13 * t28 - t4 * t27) * rSges(7,2) + t55 * t3 + t48) + g(2) * (t2 * t23 + pkin(5) * t65 + (t11 * t27 + t2 * t28) * rSges(7,1) + (t11 * t28 - t2 * t27) * rSges(7,2) + t55 * t1 + t46) + g(3) * (t8 * t23 - pkin(5) * t52 + (-t27 * t58 + t8 * t28) * rSges(7,1) + (-t8 * t27 - t28 * t58) * rSges(7,2) + t55 * t7 + t47));
U  = t5;
