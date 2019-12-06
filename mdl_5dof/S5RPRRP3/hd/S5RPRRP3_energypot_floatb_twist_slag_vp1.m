% Calculate potential energy for
% S5RPRRP3
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
%   pkin=[a2,a3,a4,a5,d1,d3,d4,theta2]';
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
% Datum: 2019-12-05 18:04
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S5RPRRP3_energypot_floatb_twist_slag_vp1(qJ, r_base, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(3,1),zeros(8,1),zeros(6,1),zeros(6,3)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRP3_energypot_floatb_twist_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S5RPRRP3_energypot_floatb_twist_slag_vp1: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPRRP3_energypot_floatb_twist_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPRRP3_energypot_floatb_twist_slag_vp1: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPRRP3_energypot_floatb_twist_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RPRRP3_energypot_floatb_twist_slag_vp1: rSges has to be [6x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:03:05
% EndTime: 2019-12-05 18:03:05
% DurationCPUTime: 0.27s
% Computational Cost: add. (147->65), mult. (97->62), div. (0->0), fcn. (73->8), ass. (0->26)
t30 = rSges(6,1) + pkin(4);
t17 = -pkin(7) - pkin(6);
t15 = cos(qJ(3));
t2 = t15 * pkin(3) + pkin(2);
t29 = rSges(4,3) + pkin(6);
t28 = rSges(5,3) - t17;
t27 = rSges(6,3) + qJ(5) - t17;
t26 = pkin(5) + r_base(1);
t16 = cos(qJ(1));
t25 = t16 * pkin(1) + r_base(3);
t24 = qJ(2) + t26;
t14 = sin(qJ(1));
t23 = -t14 * pkin(1) + r_base(2);
t13 = sin(qJ(3));
t22 = t13 * pkin(3) + t24;
t12 = qJ(3) + qJ(4);
t5 = sin(t12);
t6 = cos(t12);
t21 = rSges(5,1) * t6 - rSges(5,2) * t5 + t2;
t20 = -rSges(6,2) * t5 + t30 * t6 + t2;
t19 = rSges(4,1) * t15 - rSges(4,2) * t13 + pkin(2);
t18 = g(2) * t23 + g(3) * t25;
t11 = qJ(1) + pkin(8);
t4 = cos(t11);
t3 = sin(t11);
t1 = -m(1) * (g(1) * (r_base(1) + rSges(1,1)) + g(2) * (r_base(2) + rSges(1,2)) + g(3) * (r_base(3) + rSges(1,3))) - m(2) * (g(1) * (rSges(2,3) + t26) + g(2) * (-rSges(2,1) * t14 - rSges(2,2) * t16 + r_base(2)) + g(3) * (rSges(2,1) * t16 - rSges(2,2) * t14 + r_base(3))) - m(3) * (g(1) * (rSges(3,3) + t24) + g(2) * (-rSges(3,1) * t3 - rSges(3,2) * t4 + t23) + g(3) * (rSges(3,1) * t4 - rSges(3,2) * t3 + t25)) - m(4) * (g(1) * (rSges(4,1) * t13 + rSges(4,2) * t15 + t24) + (g(2) * t29 + g(3) * t19) * t4 + (-g(2) * t19 + g(3) * t29) * t3 + t18) - m(5) * (g(1) * (rSges(5,1) * t5 + rSges(5,2) * t6 + t22) + (g(2) * t28 + g(3) * t21) * t4 + (-g(2) * t21 + g(3) * t28) * t3 + t18) - m(6) * (g(1) * (rSges(6,2) * t6 + t30 * t5 + t22) + (g(2) * t27 + g(3) * t20) * t4 + (-g(2) * t20 + g(3) * t27) * t3 + t18);
U = t1;
