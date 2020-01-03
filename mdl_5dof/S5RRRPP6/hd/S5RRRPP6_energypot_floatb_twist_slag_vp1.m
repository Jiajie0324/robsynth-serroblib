% Calculate potential energy for
% S5RRRPP6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% r_base [3x1]
%   Base position in world frame
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3,theta4]';
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
% Datum: 2019-12-31 21:03
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S5RRRPP6_energypot_floatb_twist_slag_vp1(qJ, r_base, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(3,1),zeros(8,1),zeros(6,1),zeros(6,3)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRPP6_energypot_floatb_twist_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S5RRRPP6_energypot_floatb_twist_slag_vp1: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRRPP6_energypot_floatb_twist_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RRRPP6_energypot_floatb_twist_slag_vp1: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRRPP6_energypot_floatb_twist_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RRRPP6_energypot_floatb_twist_slag_vp1: rSges has to be [6x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 20:59:54
% EndTime: 2019-12-31 20:59:54
% DurationCPUTime: 0.44s
% Computational Cost: add. (167->89), mult. (195->101), div. (0->0), fcn. (187->8), ass. (0->32)
t45 = rSges(6,1) + pkin(4);
t44 = rSges(4,3) + pkin(7);
t21 = sin(qJ(1));
t24 = cos(qJ(1));
t43 = g(1) * t24 + g(2) * t21;
t42 = rSges(6,3) + qJ(5);
t20 = sin(qJ(2));
t38 = rSges(3,2) * t20;
t19 = sin(qJ(3));
t37 = t21 * t19;
t23 = cos(qJ(2));
t36 = t21 * t23;
t35 = t24 * t19;
t34 = t24 * t23;
t31 = pkin(5) + r_base(3);
t30 = t21 * pkin(1) + r_base(2);
t29 = t24 * pkin(1) + t21 * pkin(6) + r_base(1);
t22 = cos(qJ(3));
t11 = t22 * pkin(3) + pkin(2);
t18 = -qJ(4) - pkin(7);
t28 = t20 * t11 + t23 * t18 + t31;
t27 = -t24 * pkin(6) + t30;
t26 = pkin(3) * t37 + t11 * t34 + t29;
t25 = -pkin(3) * t35 + t11 * t36 + t27;
t17 = qJ(3) + pkin(8);
t13 = cos(t17);
t12 = sin(t17);
t4 = t21 * t12 + t13 * t34;
t3 = t12 * t34 - t21 * t13;
t2 = -t24 * t12 + t13 * t36;
t1 = t12 * t36 + t24 * t13;
t5 = -m(1) * (g(1) * (r_base(1) + rSges(1,1)) + g(2) * (r_base(2) + rSges(1,2)) + g(3) * (r_base(3) + rSges(1,3))) - m(2) * (g(1) * (t24 * rSges(2,1) - t21 * rSges(2,2) + r_base(1)) + g(2) * (t21 * rSges(2,1) + t24 * rSges(2,2) + r_base(2)) + g(3) * (rSges(2,3) + t31)) - m(3) * (g(1) * (t21 * rSges(3,3) + t29) + g(2) * (rSges(3,1) * t36 - t21 * t38 + t30) + g(3) * (t20 * rSges(3,1) + t23 * rSges(3,2) + t31) + (g(1) * (rSges(3,1) * t23 - t38) + g(2) * (-rSges(3,3) - pkin(6))) * t24) - m(4) * (g(1) * (pkin(2) * t34 + (t22 * t34 + t37) * rSges(4,1) + (-t19 * t34 + t21 * t22) * rSges(4,2) + t29) + g(2) * (pkin(2) * t36 + (t22 * t36 - t35) * rSges(4,1) + (-t19 * t36 - t24 * t22) * rSges(4,2) + t27) + g(3) * (-t44 * t23 + t31) + (g(3) * (rSges(4,1) * t22 - rSges(4,2) * t19 + pkin(2)) + t43 * t44) * t20) - m(5) * (g(1) * (t4 * rSges(5,1) - t3 * rSges(5,2) + t26) + g(2) * (t2 * rSges(5,1) - t1 * rSges(5,2) + t25) + g(3) * (-t23 * rSges(5,3) + t28) + (g(3) * (rSges(5,1) * t13 - rSges(5,2) * t12) + t43 * (rSges(5,3) - t18)) * t20) - m(6) * (g(1) * (t42 * t3 + t45 * t4 + t26) + g(2) * (t42 * t1 + t45 * t2 + t25) + g(3) * (-t23 * rSges(6,2) + t28) + (g(3) * (t42 * t12 + t45 * t13) + t43 * (rSges(6,2) - t18)) * t20);
U = t5;
