% Calculate potential energy for
% S5PRRPP1
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
%   pkin=[a2,a3,a4,a5,d2,d3,theta1,theta4]';
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
% Datum: 2019-12-05 16:07
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S5PRRPP1_energypot_floatb_twist_slag_vp1(qJ, r_base, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(3,1),zeros(8,1),zeros(6,1),zeros(6,3)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRPP1_energypot_floatb_twist_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S5PRRPP1_energypot_floatb_twist_slag_vp1: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PRRPP1_energypot_floatb_twist_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRRPP1_energypot_floatb_twist_slag_vp1: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5PRRPP1_energypot_floatb_twist_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5PRRPP1_energypot_floatb_twist_slag_vp1: rSges has to be [6x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 16:06:07
% EndTime: 2019-12-05 16:06:07
% DurationCPUTime: 0.28s
% Computational Cost: add. (155->69), mult. (104->68), div. (0->0), fcn. (80->8), ass. (0->26)
t33 = rSges(6,1) + pkin(4);
t13 = qJ(3) + pkin(8);
t6 = sin(t13);
t8 = cos(t13);
t32 = rSges(5,1) * t8 - rSges(5,2) * t6;
t31 = rSges(6,3) + qJ(5);
t28 = rSges(4,3) + pkin(6);
t14 = sin(pkin(7));
t27 = t14 * pkin(1) + r_base(2);
t15 = cos(pkin(7));
t26 = t15 * pkin(1) + r_base(1);
t25 = qJ(1) + r_base(3);
t18 = cos(qJ(3));
t4 = pkin(3) * t18 + pkin(2);
t12 = pkin(7) + qJ(2);
t7 = cos(t12);
t24 = t7 * t4 + t26;
t23 = pkin(5) + t25;
t16 = -qJ(4) - pkin(6);
t5 = sin(t12);
t22 = t7 * t16 + t5 * t4 + t27;
t17 = sin(qJ(3));
t21 = t17 * pkin(3) + t23;
t20 = rSges(4,1) * t18 - rSges(4,2) * t17 + pkin(2);
t19 = t31 * t6 + t33 * t8;
t1 = -m(1) * (g(1) * (r_base(1) + rSges(1,1)) + g(2) * (r_base(2) + rSges(1,2)) + g(3) * (r_base(3) + rSges(1,3))) - m(2) * (g(1) * (rSges(2,1) * t15 - rSges(2,2) * t14 + r_base(1)) + g(2) * (rSges(2,1) * t14 + rSges(2,2) * t15 + r_base(2)) + g(3) * (rSges(2,3) + t25)) - m(3) * (g(1) * (rSges(3,1) * t7 - rSges(3,2) * t5 + t26) + g(2) * (rSges(3,1) * t5 + rSges(3,2) * t7 + t27) + g(3) * (rSges(3,3) + t23)) - m(4) * (g(1) * t26 + g(2) * t27 + g(3) * (t17 * rSges(4,1) + rSges(4,2) * t18 + t23) + (g(1) * t20 - g(2) * t28) * t7 + (g(1) * t28 + g(2) * t20) * t5) - m(5) * (g(1) * (t32 * t7 + t24) + g(2) * (-rSges(5,3) * t7 + t22) + g(3) * (rSges(5,1) * t6 + rSges(5,2) * t8 + t21) + (g(1) * (rSges(5,3) - t16) + g(2) * t32) * t5) - m(6) * (g(1) * t24 + g(2) * t22 + g(3) * (-t31 * t8 + t33 * t6 + t21) + (-g(2) * rSges(6,2) + g(1) * t19) * t7 + (g(1) * (rSges(6,2) - t16) + g(2) * t19) * t5);
U = t1;
