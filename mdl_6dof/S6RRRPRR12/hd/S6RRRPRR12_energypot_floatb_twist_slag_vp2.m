% Calculate potential energy for
% S6RRRPRR12
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d5,d6,theta4]';
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
% Datum: 2019-03-09 19:50
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S6RRRPRR12_energypot_floatb_twist_slag_vp2(qJ, r_base, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(3,1),zeros(12,1),zeros(7,1),zeros(7,3)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRR12_energypot_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S6RRRPRR12_energypot_floatb_twist_slag_vp2: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRPRR12_energypot_floatb_twist_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRPRR12_energypot_floatb_twist_slag_vp2: pkin has to be [12x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRPRR12_energypot_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRRPRR12_energypot_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 19:38:03
% EndTime: 2019-03-09 19:38:04
% DurationCPUTime: 0.78s
% Computational Cost: add. (356->112), mult. (618->124), div. (0->0), fcn. (717->14), ass. (0->48)
t68 = -m(1) - m(2);
t67 = -m(4) - m(5);
t66 = -m(6) - m(7);
t32 = sin(pkin(12));
t53 = pkin(4) * t32 + pkin(9);
t35 = -pkin(10) - qJ(4);
t65 = -m(5) * qJ(4) + m(6) * t35 + m(7) * (-pkin(11) + t35) + mrSges(4,2) - mrSges(5,3) - mrSges(6,3) - mrSges(7,3);
t31 = pkin(12) + qJ(5);
t25 = qJ(6) + t31;
t20 = sin(t25);
t21 = cos(t25);
t23 = sin(t31);
t24 = cos(t31);
t34 = cos(pkin(12));
t61 = pkin(5) * t23 + t53;
t64 = -m(6) * t53 - m(7) * t61 - t32 * mrSges(5,1) - t23 * mrSges(6,1) - t20 * mrSges(7,1) - t34 * mrSges(5,2) - t24 * mrSges(6,2) - t21 * mrSges(7,2) + mrSges(3,2) - mrSges(4,3);
t22 = t34 * pkin(4) + pkin(3);
t13 = pkin(5) * t24 + t22;
t63 = -m(5) * pkin(3) - m(6) * t22 - m(7) * t13 - mrSges(5,1) * t34 - mrSges(6,1) * t24 - mrSges(7,1) * t21 + mrSges(5,2) * t32 + mrSges(6,2) * t23 + mrSges(7,2) * t20 - mrSges(4,1);
t60 = cos(qJ(3));
t33 = sin(pkin(6));
t37 = sin(qJ(2));
t59 = t33 * t37;
t38 = sin(qJ(1));
t58 = t33 * t38;
t39 = cos(qJ(2));
t57 = t33 * t39;
t40 = cos(qJ(1));
t56 = t33 * t40;
t55 = cos(pkin(6));
t54 = pkin(7) + r_base(3);
t52 = t33 * t60;
t51 = t55 * pkin(8) + t54;
t50 = t38 * t55;
t49 = t40 * t55;
t48 = t40 * pkin(1) + pkin(8) * t58 + r_base(1);
t47 = pkin(2) * t59 + t51;
t12 = -t37 * t50 + t40 * t39;
t46 = t12 * pkin(2) + t48;
t45 = t38 * pkin(1) - pkin(8) * t56 + r_base(2);
t10 = t37 * t49 + t38 * t39;
t44 = t10 * pkin(2) + t45;
t42 = -pkin(9) * t57 + t47;
t36 = sin(qJ(3));
t11 = t40 * t37 + t39 * t50;
t9 = t37 * t38 - t39 * t49;
t8 = t36 * t55 + t37 * t52;
t1 = (-m(1) * r_base(3) - mrSges(1,3) - m(2) * t54 - mrSges(2,3) - m(3) * t51 - t55 * mrSges(3,3) - (t37 * mrSges(3,1) + t39 * mrSges(3,2)) * t33 - m(4) * t42 - t8 * mrSges(4,1) + mrSges(4,3) * t57 - m(5) * (pkin(3) * t8 + t42) - (-t32 * t57 + t34 * t8) * mrSges(5,1) - (-t32 * t8 - t34 * t57) * mrSges(5,2) - m(6) * (t22 * t8 - t53 * t57 + t47) - (-t23 * t57 + t24 * t8) * mrSges(6,1) - (-t23 * t8 - t24 * t57) * mrSges(6,2) - m(7) * (t13 * t8 - t57 * t61 + t47) - (-t20 * t57 + t21 * t8) * mrSges(7,1) - (-t20 * t8 - t21 * t57) * mrSges(7,2) + t65 * (t36 * t59 - t55 * t60)) * g(3) + (-m(3) * t45 - t38 * mrSges(2,1) - t10 * mrSges(3,1) - t40 * mrSges(2,2) + mrSges(3,3) * t56 - mrSges(1,2) + t68 * r_base(2) + t66 * t44 + t67 * (t9 * pkin(9) + t44) + t63 * (t10 * t60 - t36 * t56) + t64 * t9 + t65 * (t10 * t36 + t40 * t52)) * g(2) + (-m(3) * t48 - t40 * mrSges(2,1) - t12 * mrSges(3,1) + t38 * mrSges(2,2) - mrSges(3,3) * t58 - mrSges(1,1) + t68 * r_base(1) + t66 * t46 + t67 * (pkin(9) * t11 + t46) + t63 * (t12 * t60 + t36 * t58) + t64 * t11 + t65 * (t12 * t36 - t38 * t52)) * g(1);
U  = t1;
