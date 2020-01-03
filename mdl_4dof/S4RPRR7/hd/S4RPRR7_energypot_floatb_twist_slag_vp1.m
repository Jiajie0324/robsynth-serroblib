% Calculate potential energy for
% S4RPRR7
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% r_base [3x1]
%   Base position in world frame
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d3,d4,theta2]';
% m_mdh [5x1]
%   mass of all robot links (including the base)
% rSges [5x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% 
% Output:
% U [1x1]
%   Potential energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 16:54
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S4RPRR7_energypot_floatb_twist_slag_vp1(qJ, r_base, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(3,1),zeros(3,1),zeros(7,1),zeros(5,1),zeros(5,3)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RPRR7_energypot_floatb_twist_slag_vp1: qJ has to be [4x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S4RPRR7_energypot_floatb_twist_slag_vp1: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4RPRR7_energypot_floatb_twist_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4RPRR7_energypot_floatb_twist_slag_vp1: pkin has to be [7x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4RPRR7_energypot_floatb_twist_slag_vp1: m has to be [5x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [5,3]), ...
  'S4RPRR7_energypot_floatb_twist_slag_vp1: rSges has to be [5x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 16:53:39
% EndTime: 2019-12-31 16:53:39
% DurationCPUTime: 0.29s
% Computational Cost: add. (104->66), mult. (101->74), div. (0->0), fcn. (85->8), ass. (0->25)
t29 = rSges(5,3) + pkin(6);
t8 = pkin(7) + qJ(3);
t5 = sin(t8);
t28 = rSges(4,2) * t5;
t15 = cos(qJ(1));
t6 = cos(t8);
t27 = t15 * t6;
t12 = sin(qJ(4));
t25 = t12 * t15;
t13 = sin(qJ(1));
t24 = t13 * t12;
t14 = cos(qJ(4));
t23 = t13 * t14;
t22 = t14 * t15;
t21 = rSges(3,3) + qJ(2);
t20 = pkin(4) + r_base(3);
t10 = cos(pkin(7));
t3 = pkin(2) * t10 + pkin(1);
t19 = t15 * t3 + r_base(1);
t9 = sin(pkin(7));
t18 = t9 * pkin(2) + t20;
t11 = -pkin(5) - qJ(2);
t17 = t15 * t11 + t13 * t3 + r_base(2);
t16 = rSges(3,1) * t10 - rSges(3,2) * t9 + pkin(1);
t1 = -m(1) * (g(1) * (r_base(1) + rSges(1,1)) + g(2) * (r_base(2) + rSges(1,2)) + g(3) * (r_base(3) + rSges(1,3))) - m(2) * (g(1) * (rSges(2,1) * t15 - t13 * rSges(2,2) + r_base(1)) + g(2) * (t13 * rSges(2,1) + rSges(2,2) * t15 + r_base(2)) + g(3) * (rSges(2,3) + t20)) - m(3) * (g(1) * r_base(1) + g(2) * r_base(2) + g(3) * (rSges(3,1) * t9 + rSges(3,2) * t10 + t20) + (g(1) * t16 - g(2) * t21) * t15 + (g(1) * t21 + g(2) * t16) * t13) - m(4) * (g(1) * (rSges(4,1) * t27 - t15 * t28 + t19) + g(2) * (-rSges(4,3) * t15 + t17) + g(3) * (rSges(4,1) * t5 + rSges(4,2) * t6 + t18) + (g(1) * (rSges(4,3) - t11) + g(2) * (rSges(4,1) * t6 - t28)) * t13) - m(5) * (g(1) * (pkin(3) * t27 - t13 * t11 + (t6 * t22 + t24) * rSges(5,1) + (-t6 * t25 + t23) * rSges(5,2) + t19) + g(2) * (t13 * t6 * pkin(3) + (t6 * t23 - t25) * rSges(5,1) + (-t6 * t24 - t22) * rSges(5,2) + t17) + g(3) * (-t29 * t6 + t18) + (g(3) * (rSges(5,1) * t14 - rSges(5,2) * t12 + pkin(3)) + (g(1) * t15 + g(2) * t13) * t29) * t5);
U = t1;
