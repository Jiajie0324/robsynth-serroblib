% Calculate potential energy for
% S6PRRPRR5
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
% mrSges [7x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% 
% Output:
% U [1x1]
%   Potential energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 22:21
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S6PRRPRR5_energypot_floatb_twist_slag_vp2(qJ, r_base, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(3,1),zeros(12,1),zeros(7,1),zeros(7,3)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPRR5_energypot_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S6PRRPRR5_energypot_floatb_twist_slag_vp2: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRRPRR5_energypot_floatb_twist_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRRPRR5_energypot_floatb_twist_slag_vp2: pkin has to be [12x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6PRRPRR5_energypot_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6PRRPRR5_energypot_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 22:16:11
% EndTime: 2019-03-08 22:16:12
% DurationCPUTime: 0.78s
% Computational Cost: add. (356->112), mult. (618->125), div. (0->0), fcn. (717->14), ass. (0->49)
t69 = -m(1) - m(2);
t68 = -m(4) - m(5);
t67 = -m(6) - m(7);
t32 = sin(pkin(12));
t53 = pkin(4) * t32 + pkin(8);
t37 = -pkin(9) - qJ(4);
t66 = -m(5) * qJ(4) + m(6) * t37 + m(7) * (-pkin(10) + t37) + mrSges(4,2) - mrSges(5,3) - mrSges(6,3) - mrSges(7,3);
t31 = pkin(12) + qJ(5);
t25 = qJ(6) + t31;
t20 = sin(t25);
t21 = cos(t25);
t23 = sin(t31);
t24 = cos(t31);
t35 = cos(pkin(12));
t62 = pkin(5) * t23 + t53;
t65 = -m(6) * t53 - m(7) * t62 - t32 * mrSges(5,1) - t23 * mrSges(6,1) - t20 * mrSges(7,1) - t35 * mrSges(5,2) - t24 * mrSges(6,2) - t21 * mrSges(7,2) + mrSges(3,2) - mrSges(4,3);
t22 = t35 * pkin(4) + pkin(3);
t13 = pkin(5) * t24 + t22;
t64 = -m(5) * pkin(3) - m(6) * t22 - m(7) * t13 - t35 * mrSges(5,1) - t24 * mrSges(6,1) - t21 * mrSges(7,1) + t32 * mrSges(5,2) + t23 * mrSges(6,2) + t20 * mrSges(7,2) - mrSges(4,1);
t61 = cos(qJ(3));
t33 = sin(pkin(11));
t34 = sin(pkin(6));
t60 = t33 * t34;
t36 = cos(pkin(11));
t59 = t34 * t36;
t38 = sin(qJ(3));
t58 = t34 * t38;
t39 = sin(qJ(2));
t57 = t34 * t39;
t40 = cos(qJ(2));
t56 = t34 * t40;
t55 = cos(pkin(6));
t54 = qJ(1) + r_base(3);
t52 = t34 * t61;
t51 = t39 * t55;
t50 = t40 * t55;
t49 = t36 * pkin(1) + pkin(7) * t60 + r_base(1);
t48 = t55 * pkin(7) + t54;
t10 = -t33 * t51 + t36 * t40;
t47 = t10 * pkin(2) + t49;
t46 = pkin(2) * t57 + t48;
t45 = t33 * pkin(1) - pkin(7) * t59 + r_base(2);
t8 = t33 * t40 + t36 * t51;
t43 = t8 * pkin(2) + t45;
t42 = -pkin(8) * t56 + t46;
t12 = t38 * t55 + t39 * t52;
t9 = t33 * t50 + t36 * t39;
t7 = t33 * t39 - t36 * t50;
t1 = (-m(1) * r_base(3) - mrSges(1,3) - m(2) * t54 - mrSges(2,3) - m(3) * t48 - t55 * mrSges(3,3) - (t39 * mrSges(3,1) + t40 * mrSges(3,2)) * t34 - m(4) * t42 - t12 * mrSges(4,1) + mrSges(4,3) * t56 - m(5) * (t12 * pkin(3) + t42) - (t12 * t35 - t32 * t56) * mrSges(5,1) - (-t12 * t32 - t35 * t56) * mrSges(5,2) - m(6) * (t12 * t22 - t53 * t56 + t46) - (t12 * t24 - t23 * t56) * mrSges(6,1) - (-t12 * t23 - t24 * t56) * mrSges(6,2) - m(7) * (t12 * t13 - t56 * t62 + t46) - (t12 * t21 - t20 * t56) * mrSges(7,1) - (-t12 * t20 - t21 * t56) * mrSges(7,2) + t66 * (t38 * t57 - t55 * t61)) * g(3) + (-m(3) * t45 - t33 * mrSges(2,1) - t8 * mrSges(3,1) - t36 * mrSges(2,2) + mrSges(3,3) * t59 - mrSges(1,2) + t69 * r_base(2) + t67 * t43 + t68 * (pkin(8) * t7 + t43) + t64 * (-t36 * t58 + t61 * t8) + t65 * t7 + t66 * (t36 * t52 + t8 * t38)) * g(2) + (-m(3) * t49 - t36 * mrSges(2,1) - t10 * mrSges(3,1) + t33 * mrSges(2,2) - mrSges(3,3) * t60 - mrSges(1,1) + t69 * r_base(1) + t67 * t47 + t68 * (pkin(8) * t9 + t47) + t64 * (t10 * t61 + t33 * t58) + t65 * t9 + t66 * (t10 * t38 - t33 * t52)) * g(1);
U  = t1;
