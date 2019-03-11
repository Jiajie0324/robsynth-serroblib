% Calculate potential energy for
% S6RPRRRR8
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
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d5,d6]';
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
% Datum: 2019-03-09 07:22
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S6RPRRRR8_energypot_floatb_twist_slag_vp1(qJ, r_base, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(3,1),zeros(10,1),zeros(7,1),zeros(7,3)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRR8_energypot_floatb_twist_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S6RPRRRR8_energypot_floatb_twist_slag_vp1: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRRRR8_energypot_floatb_twist_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRRR8_energypot_floatb_twist_slag_vp1: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRRRR8_energypot_floatb_twist_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RPRRRR8_energypot_floatb_twist_slag_vp1: rSges has to be [7x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 07:19:40
% EndTime: 2019-03-09 07:19:40
% DurationCPUTime: 0.39s
% Computational Cost: add. (194->91), mult. (180->93), div. (0->0), fcn. (160->10), ass. (0->37)
t43 = rSges(6,3) + pkin(9);
t42 = rSges(7,3) + pkin(10) + pkin(9);
t12 = qJ(3) + qJ(4);
t4 = sin(t12);
t41 = g(1) * t4;
t6 = cos(t12);
t40 = g(1) * t6;
t39 = g(2) * t4;
t38 = g(3) * t6;
t14 = sin(qJ(3));
t37 = t14 * pkin(3);
t36 = rSges(4,3) + pkin(7);
t20 = -pkin(8) - pkin(7);
t35 = rSges(5,3) - t20;
t34 = pkin(6) + r_base(3);
t15 = sin(qJ(1));
t33 = t15 * pkin(1) + r_base(2);
t32 = pkin(2) + t34;
t18 = cos(qJ(1));
t31 = t18 * pkin(1) + t15 * qJ(2) + r_base(1);
t30 = -qJ(2) - t37;
t29 = g(2) * t33;
t17 = cos(qJ(3));
t28 = t17 * pkin(3) + t32;
t27 = rSges(5,1) * t4 + rSges(5,2) * t6;
t26 = rSges(4,1) * t14 + rSges(4,2) * t17;
t16 = cos(qJ(5));
t11 = qJ(5) + qJ(6);
t3 = sin(t11);
t5 = cos(t11);
t25 = rSges(7,1) * t5 - rSges(7,2) * t3 + t16 * pkin(5) + pkin(4);
t13 = sin(qJ(5));
t24 = rSges(6,1) * t16 - rSges(6,2) * t13 + pkin(4);
t23 = t13 * rSges(6,1) + t16 * rSges(6,2) - t20;
t22 = t3 * rSges(7,1) + t5 * rSges(7,2) + t13 * pkin(5) - t20;
t21 = g(1) * (t15 * t37 + t31) + t29;
t1 = -m(1) * (g(1) * (r_base(1) + rSges(1,1)) + g(2) * (r_base(2) + rSges(1,2)) + g(3) * (r_base(3) + rSges(1,3))) - m(2) * (g(1) * (t18 * rSges(2,1) - t15 * rSges(2,2) + r_base(1)) + g(2) * (t15 * rSges(2,1) + t18 * rSges(2,2) + r_base(2)) + g(3) * (rSges(2,3) + t34)) - m(3) * (g(1) * (-t18 * rSges(3,2) + t15 * rSges(3,3) + t31) + g(2) * (-t15 * rSges(3,2) + (-rSges(3,3) - qJ(2)) * t18 + t33) + g(3) * (rSges(3,1) + t34)) - m(4) * (g(1) * t31 + t29 + g(3) * (t17 * rSges(4,1) - t14 * rSges(4,2) + t32) + (g(1) * t26 + g(2) * t36) * t15 + (g(1) * t36 + g(2) * (-qJ(2) - t26)) * t18) - m(5) * (g(3) * (t6 * rSges(5,1) - t4 * rSges(5,2) + t28) + (g(1) * t27 + g(2) * t35) * t15 + (g(1) * t35 + g(2) * (-t27 + t30)) * t18 + t21) - m(6) * (g(3) * (t43 * t4 + t28) + t24 * t38 + (g(2) * t23 + t24 * t41 - t43 * t40) * t15 + (g(1) * t23 + g(2) * (t43 * t6 + t30) - t24 * t39) * t18 + t21) - m(7) * (g(3) * (t42 * t4 + t28) + t25 * t38 + (g(2) * t22 + t25 * t41 - t42 * t40) * t15 + (g(1) * t22 + g(2) * (t42 * t6 + t30) - t25 * t39) * t18 + t21);
U  = t1;
