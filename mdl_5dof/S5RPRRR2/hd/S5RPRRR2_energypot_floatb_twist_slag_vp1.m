% Calculate potential energy for
% S5RPRRR2
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
%   pkin=[a2,a3,a4,a5,d1,d3,d4,d5,theta2]';
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
% Datum: 2019-12-05 18:13
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S5RPRRR2_energypot_floatb_twist_slag_vp1(qJ, r_base, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(3,1),zeros(9,1),zeros(6,1),zeros(6,3)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRR2_energypot_floatb_twist_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S5RPRRR2_energypot_floatb_twist_slag_vp1: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPRRR2_energypot_floatb_twist_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RPRRR2_energypot_floatb_twist_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPRRR2_energypot_floatb_twist_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RPRRR2_energypot_floatb_twist_slag_vp1: rSges has to be [6x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:11:12
% EndTime: 2019-12-05 18:11:13
% DurationCPUTime: 0.22s
% Computational Cost: add. (156->70), mult. (110->68), div. (0->0), fcn. (86->10), ass. (0->30)
t20 = cos(pkin(9));
t9 = t20 * pkin(2) + pkin(1);
t21 = -pkin(6) - qJ(2);
t35 = rSges(4,3) - t21;
t17 = -pkin(7) + t21;
t34 = rSges(5,3) - t17;
t33 = rSges(6,3) + pkin(8) - t17;
t32 = rSges(3,3) + qJ(2);
t31 = pkin(5) + r_base(3);
t18 = pkin(9) + qJ(3);
t12 = cos(t18);
t2 = pkin(3) * t12 + t9;
t19 = sin(pkin(9));
t30 = t19 * pkin(2) + t31;
t13 = qJ(4) + t18;
t11 = sin(t18);
t29 = pkin(3) * t11 + t30;
t7 = sin(t13);
t8 = cos(t13);
t28 = rSges(5,1) * t8 - rSges(5,2) * t7 + t2;
t10 = qJ(5) + t13;
t3 = sin(t10);
t4 = cos(t10);
t27 = rSges(6,1) * t4 - rSges(6,2) * t3 + pkin(4) * t8 + t2;
t26 = rSges(3,1) * t20 - rSges(3,2) * t19 + pkin(1);
t25 = rSges(4,1) * t12 - rSges(4,2) * t11 + t9;
t24 = g(1) * r_base(1) + g(2) * r_base(2);
t23 = cos(qJ(1));
t22 = sin(qJ(1));
t1 = -m(1) * (g(1) * (r_base(1) + rSges(1,1)) + g(2) * (r_base(2) + rSges(1,2)) + g(3) * (r_base(3) + rSges(1,3))) - m(2) * (g(1) * (rSges(2,1) * t23 - t22 * rSges(2,2) + r_base(1)) + g(2) * (t22 * rSges(2,1) + rSges(2,2) * t23 + r_base(2)) + g(3) * (rSges(2,3) + t31)) - m(3) * (g(3) * (rSges(3,1) * t19 + rSges(3,2) * t20 + t31) + (g(1) * t26 - g(2) * t32) * t23 + (g(1) * t32 + g(2) * t26) * t22 + t24) - m(4) * (g(3) * (rSges(4,1) * t11 + rSges(4,2) * t12 + t30) + (g(1) * t25 - g(2) * t35) * t23 + (g(1) * t35 + g(2) * t25) * t22 + t24) - m(5) * (g(3) * (rSges(5,1) * t7 + rSges(5,2) * t8 + t29) + (g(1) * t28 - g(2) * t34) * t23 + (g(1) * t34 + g(2) * t28) * t22 + t24) - m(6) * (g(3) * (rSges(6,1) * t3 + rSges(6,2) * t4 + pkin(4) * t7 + t29) + (g(1) * t27 - g(2) * t33) * t23 + (g(1) * t33 + g(2) * t27) * t22 + t24);
U = t1;
