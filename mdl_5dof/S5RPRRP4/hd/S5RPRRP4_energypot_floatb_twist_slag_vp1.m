% Calculate potential energy for
% S5RPRRP4
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
% Datum: 2020-01-03 11:51
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S5RPRRP4_energypot_floatb_twist_slag_vp1(qJ, r_base, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(3,1),zeros(8,1),zeros(6,1),zeros(6,3)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRP4_energypot_floatb_twist_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S5RPRRP4_energypot_floatb_twist_slag_vp1: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPRRP4_energypot_floatb_twist_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPRRP4_energypot_floatb_twist_slag_vp1: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPRRP4_energypot_floatb_twist_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RPRRP4_energypot_floatb_twist_slag_vp1: rSges has to be [6x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2020-01-03 11:49:08
% EndTime: 2020-01-03 11:49:09
% DurationCPUTime: 0.55s
% Computational Cost: add. (160->97), mult. (180->110), div. (0->0), fcn. (168->8), ass. (0->34)
t41 = rSges(4,3) + pkin(6);
t20 = -pkin(7) - pkin(6);
t40 = rSges(5,3) - t20;
t39 = rSges(6,3) + qJ(5) - t20;
t17 = sin(qJ(1));
t19 = cos(qJ(1));
t38 = g(2) * t17 - g(3) * t19;
t16 = sin(qJ(3));
t35 = t16 * pkin(3);
t18 = cos(qJ(3));
t7 = t18 * pkin(3) + pkin(2);
t15 = cos(pkin(8));
t33 = t15 * t17;
t32 = t15 * t19;
t31 = t17 * t16;
t30 = t17 * t18;
t29 = t19 * t16;
t28 = t19 * t18;
t25 = -rSges(3,3) - qJ(2);
t24 = pkin(5) + r_base(1);
t23 = t17 * pkin(1) + r_base(2);
t22 = -t17 * qJ(2) + r_base(3);
t14 = sin(pkin(8));
t21 = rSges(3,1) * t15 - rSges(3,2) * t14;
t13 = qJ(3) + qJ(4);
t9 = cos(t13);
t8 = sin(t13);
t6 = pkin(4) * t8 + t35;
t5 = pkin(4) * t9 + t7;
t4 = -t17 * t8 - t9 * t32;
t3 = -t17 * t9 + t8 * t32;
t2 = -t19 * t8 + t9 * t33;
t1 = -t19 * t9 - t8 * t33;
t10 = -m(1) * (g(1) * (r_base(1) + rSges(1,1)) + g(2) * (r_base(2) + rSges(1,2)) + g(3) * (r_base(3) + rSges(1,3))) - m(2) * (g(1) * (rSges(2,3) + t24) + g(2) * (t17 * rSges(2,1) + t19 * rSges(2,2) + r_base(2)) + g(3) * (-t19 * rSges(2,1) + t17 * rSges(2,2) + r_base(3))) - m(3) * (g(1) * (t14 * rSges(3,1) + t15 * rSges(3,2) + t24) + g(2) * t23 + g(3) * r_base(3) + (g(2) * t21 + g(3) * t25) * t17 + (g(2) * t25 + g(3) * (-pkin(1) - t21)) * t19) - m(4) * (g(1) * (-t41 * t15 + t24) + g(2) * (pkin(2) * t33 - t19 * qJ(2) + (t15 * t30 - t29) * rSges(4,1) + (-t15 * t31 - t28) * rSges(4,2) + t23) + g(3) * (-pkin(2) * t32 - t19 * pkin(1) + (-t15 * t28 - t31) * rSges(4,1) + (t15 * t29 - t30) * rSges(4,2) + t22) + (g(1) * (rSges(4,1) * t18 - rSges(4,2) * t16 + pkin(2)) + t38 * t41) * t14) - m(5) * (g(1) * (-t40 * t15 + t24) + g(2) * (t2 * rSges(5,1) + t1 * rSges(5,2) + t7 * t33 + t23) + g(3) * (t4 * rSges(5,1) + t3 * rSges(5,2) - pkin(3) * t31 + t22) + (g(2) * (-qJ(2) - t35) + g(3) * (-t15 * t7 - pkin(1))) * t19 + (g(1) * (rSges(5,1) * t9 - rSges(5,2) * t8 + t7) + t38 * t40) * t14) - m(6) * (g(1) * (-t39 * t15 + t24) + g(2) * (t2 * rSges(6,1) + t1 * rSges(6,2) + t5 * t33 + t23) + g(3) * (t4 * rSges(6,1) + t3 * rSges(6,2) - t17 * t6 + t22) + (g(2) * (-qJ(2) - t6) + g(3) * (-t15 * t5 - pkin(1))) * t19 + (g(1) * (rSges(6,1) * t9 - rSges(6,2) * t8 + t5) + t38 * t39) * t14);
U = t10;
