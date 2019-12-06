% Calculate potential energy for
% S5PRRPR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% r_base [3x1]
%   Base position in world frame
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d3,d5,theta1,theta4]';
% m_mdh [6x1]
%   mass of all robot links (including the base)
% rSges [6x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% 
% Output:
% U [1x1]
%   Potential energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 16:18
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S5PRRPR2_energypot_floatb_twist_slag_vp1(qJ, r_base, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(3,1),zeros(9,1),zeros(6,1),zeros(6,3)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRPR2_energypot_floatb_twist_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S5PRRPR2_energypot_floatb_twist_slag_vp1: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PRRPR2_energypot_floatb_twist_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PRRPR2_energypot_floatb_twist_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5PRRPR2_energypot_floatb_twist_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5PRRPR2_energypot_floatb_twist_slag_vp1: rSges has to be [6x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 16:17:15
% EndTime: 2019-12-05 16:17:15
% DurationCPUTime: 0.33s
% Computational Cost: add. (170->73), mult. (105->78), div. (0->0), fcn. (85->10), ass. (0->27)
t36 = rSges(6,3) + pkin(7);
t14 = sin(pkin(9));
t16 = cos(pkin(9));
t35 = rSges(5,1) * t16 - rSges(5,2) * t14;
t34 = t16 * pkin(4);
t18 = sin(qJ(5));
t30 = t16 * t18;
t19 = cos(qJ(5));
t29 = t16 * t19;
t13 = pkin(8) + qJ(2);
t15 = sin(pkin(8));
t28 = t15 * pkin(1) + r_base(2);
t17 = cos(pkin(8));
t27 = t17 * pkin(1) + r_base(1);
t26 = qJ(1) + r_base(3);
t8 = sin(t13);
t25 = pkin(2) * t8 + t28;
t9 = cos(t13);
t24 = pkin(2) * t9 + t27;
t23 = pkin(5) + t26;
t10 = qJ(3) + t13;
t6 = sin(t10);
t22 = t6 * pkin(3) + t25;
t21 = pkin(6) + t23;
t7 = cos(t10);
t20 = t7 * pkin(3) + t6 * qJ(4) + t24;
t1 = -m(1) * (g(1) * (r_base(1) + rSges(1,1)) + g(2) * (r_base(2) + rSges(1,2)) + g(3) * (r_base(3) + rSges(1,3))) - m(2) * (g(1) * (rSges(2,1) * t17 - rSges(2,2) * t15 + r_base(1)) + g(2) * (rSges(2,1) * t15 + rSges(2,2) * t17 + r_base(2)) + g(3) * (rSges(2,3) + t26)) - m(3) * (g(1) * (rSges(3,1) * t9 - rSges(3,2) * t8 + t27) + g(2) * (rSges(3,1) * t8 + rSges(3,2) * t9 + t28) + g(3) * (rSges(3,3) + t23)) - m(4) * (g(1) * (rSges(4,1) * t7 - rSges(4,2) * t6 + t24) + g(2) * (rSges(4,1) * t6 + rSges(4,2) * t7 + t25) + g(3) * (rSges(4,3) + t21)) - m(5) * (g(1) * (rSges(5,3) * t6 + t20) + g(2) * (t35 * t6 + t22) + g(3) * (rSges(5,1) * t14 + rSges(5,2) * t16 + t21) + (g(1) * t35 + g(2) * (-rSges(5,3) - qJ(4))) * t7) - m(6) * (g(1) * (t7 * t34 + (t6 * t18 + t7 * t29) * rSges(6,1) + (t19 * t6 - t7 * t30) * rSges(6,2) + t20) + g(2) * (t6 * t34 - t7 * qJ(4) + (-t7 * t18 + t6 * t29) * rSges(6,1) + (-t19 * t7 - t6 * t30) * rSges(6,2) + t22) + g(3) * (-t36 * t16 + t21) + (g(3) * (rSges(6,1) * t19 - rSges(6,2) * t18 + pkin(4)) + (g(1) * t7 + g(2) * t6) * t36) * t14);
U = t1;
