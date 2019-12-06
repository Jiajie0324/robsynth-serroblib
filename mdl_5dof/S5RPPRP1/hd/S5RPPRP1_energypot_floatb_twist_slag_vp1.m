% Calculate potential energy for
% S5RPPRP1
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
%   pkin=[a2,a3,a4,a5,d1,d4,theta2,theta3]';
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
% Datum: 2019-12-05 17:36
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S5RPPRP1_energypot_floatb_twist_slag_vp1(qJ, r_base, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(3,1),zeros(8,1),zeros(6,1),zeros(6,3)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPPRP1_energypot_floatb_twist_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S5RPPRP1_energypot_floatb_twist_slag_vp1: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPPRP1_energypot_floatb_twist_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPPRP1_energypot_floatb_twist_slag_vp1: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPPRP1_energypot_floatb_twist_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RPPRP1_energypot_floatb_twist_slag_vp1: rSges has to be [6x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 17:35:31
% EndTime: 2019-12-05 17:35:31
% DurationCPUTime: 0.34s
% Computational Cost: add. (165->80), mult. (141->89), div. (0->0), fcn. (125->8), ass. (0->32)
t40 = rSges(5,3) + pkin(6);
t39 = rSges(6,3) + qJ(5) + pkin(6);
t12 = qJ(1) + pkin(7);
t10 = cos(t12);
t9 = sin(t12);
t38 = -g(2) * t9 + g(3) * t10;
t14 = cos(pkin(8));
t35 = t14 * t9;
t16 = sin(qJ(4));
t34 = t9 * t16;
t13 = sin(pkin(8));
t32 = rSges(4,2) * t13;
t31 = t10 * t14;
t30 = t10 * t16;
t29 = t14 * t16;
t18 = cos(qJ(4));
t28 = t14 * t18;
t26 = pkin(5) + r_base(1);
t19 = cos(qJ(1));
t25 = t19 * pkin(1) + r_base(3);
t24 = qJ(2) + t26;
t17 = sin(qJ(1));
t23 = -t17 * pkin(1) + r_base(2);
t22 = t10 * pkin(2) + t9 * qJ(3) + t25;
t21 = t10 * qJ(3) + t23;
t20 = -t9 * pkin(2) + t21;
t8 = t18 * pkin(4) + pkin(3);
t4 = t10 * t28 + t34;
t3 = -t10 * t29 + t9 * t18;
t2 = -t9 * t28 + t30;
t1 = t10 * t18 + t9 * t29;
t5 = -m(1) * (g(1) * (r_base(1) + rSges(1,1)) + g(2) * (r_base(2) + rSges(1,2)) + g(3) * (r_base(3) + rSges(1,3))) - m(2) * (g(1) * (rSges(2,3) + t26) + g(2) * (-t17 * rSges(2,1) - t19 * rSges(2,2) + r_base(2)) + g(3) * (t19 * rSges(2,1) - t17 * rSges(2,2) + r_base(3))) - m(3) * (g(1) * (rSges(3,3) + t24) + g(2) * (-t9 * rSges(3,1) - t10 * rSges(3,2) + t23) + g(3) * (t10 * rSges(3,1) - t9 * rSges(3,2) + t25)) - m(4) * (g(1) * (t13 * rSges(4,1) + t14 * rSges(4,2) + t24) + g(2) * (t10 * rSges(4,3) + t21) + g(3) * (rSges(4,1) * t31 - t10 * t32 + t22) + (g(2) * (-rSges(4,1) * t14 - pkin(2) + t32) + g(3) * rSges(4,3)) * t9) - m(5) * (g(1) * (-t40 * t14 + t24) + g(2) * (t2 * rSges(5,1) + t1 * rSges(5,2) - pkin(3) * t35 + t20) + g(3) * (t4 * rSges(5,1) + t3 * rSges(5,2) + pkin(3) * t31 + t22) + (g(1) * (rSges(5,1) * t18 - rSges(5,2) * t16 + pkin(3)) + t38 * t40) * t13) - m(6) * (g(1) * (-t39 * t14 + t24) + g(2) * (t2 * rSges(6,1) + t1 * rSges(6,2) + pkin(4) * t30 - t8 * t35 + t20) + g(3) * (t4 * rSges(6,1) + t3 * rSges(6,2) + pkin(4) * t34 + t8 * t31 + t22) + (g(1) * (rSges(6,1) * t18 - rSges(6,2) * t16 + t8) + t38 * t39) * t13);
U = t5;
