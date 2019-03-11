% Calculate potential energy for
% S6RPPRPR4
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
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d6,theta3,theta5]';
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
% Datum: 2019-03-09 01:47
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S6RPPRPR4_energypot_floatb_twist_slag_vp1(qJ, r_base, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(3,1),zeros(10,1),zeros(7,1),zeros(7,3)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRPR4_energypot_floatb_twist_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S6RPPRPR4_energypot_floatb_twist_slag_vp1: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPPRPR4_energypot_floatb_twist_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPPRPR4_energypot_floatb_twist_slag_vp1: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPPRPR4_energypot_floatb_twist_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RPPRPR4_energypot_floatb_twist_slag_vp1: rSges has to be [7x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 01:46:10
% EndTime: 2019-03-09 01:46:11
% DurationCPUTime: 0.38s
% Computational Cost: add. (196->89), mult. (229->99), div. (0->0), fcn. (247->10), ass. (0->32)
t44 = rSges(7,3) + pkin(8);
t18 = qJ(4) + pkin(10);
t12 = cos(t18);
t43 = t12 * pkin(5);
t42 = rSges(5,3) + pkin(7);
t40 = cos(qJ(1));
t39 = sin(qJ(1));
t20 = sin(qJ(6));
t38 = t12 * t20;
t22 = cos(qJ(6));
t37 = t12 * t22;
t36 = cos(pkin(9));
t35 = sin(pkin(9));
t34 = pkin(6) + r_base(3);
t33 = -qJ(3) + t34;
t32 = t40 * pkin(1) + t39 * qJ(2) + r_base(1);
t31 = t40 * pkin(2) + t32;
t11 = sin(t18);
t30 = -rSges(6,1) * t12 + rSges(6,2) * t11;
t21 = sin(qJ(4));
t23 = cos(qJ(4));
t29 = -rSges(5,1) * t23 + rSges(5,2) * t21 - pkin(3);
t28 = -t21 * pkin(4) + t33;
t10 = t23 * pkin(4) + pkin(3);
t19 = -qJ(5) - pkin(7);
t5 = -t35 * t39 - t36 * t40;
t6 = t35 * t40 - t36 * t39;
t27 = -t5 * t10 - t6 * t19 + t31;
t26 = t39 * pkin(1) - qJ(2) * t40 + r_base(2);
t25 = t39 * pkin(2) + t26;
t24 = -t6 * t10 + t5 * t19 + t25;
t1 = -m(1) * (g(1) * (r_base(1) + rSges(1,1)) + g(2) * (r_base(2) + rSges(1,2)) + g(3) * (r_base(3) + rSges(1,3))) - m(2) * (g(1) * (rSges(2,1) * t40 - rSges(2,2) * t39 + r_base(1)) + g(2) * (rSges(2,1) * t39 + rSges(2,2) * t40 + r_base(2)) + g(3) * (rSges(2,3) + t34)) - m(3) * (g(1) * (rSges(3,1) * t40 + rSges(3,3) * t39 + t32) + g(2) * (rSges(3,1) * t39 - rSges(3,3) * t40 + t26) + g(3) * (rSges(3,2) + t34)) - m(4) * (g(1) * (-t5 * rSges(4,1) - t6 * rSges(4,2) + t31) + g(2) * (-t6 * rSges(4,1) + t5 * rSges(4,2) + t25) + g(3) * (-rSges(4,3) + t33)) - m(5) * (g(1) * t31 + g(2) * t25 + g(3) * (-t21 * rSges(5,1) - t23 * rSges(5,2) + t33) + (g(1) * t42 + g(2) * t29) * t6 + (g(1) * t29 - g(2) * t42) * t5) - m(6) * (g(1) * (t6 * rSges(6,3) + t30 * t5 + t27) + g(2) * (-t5 * rSges(6,3) + t30 * t6 + t24) + g(3) * (-t11 * rSges(6,1) - t12 * rSges(6,2) + t28)) - m(7) * (g(1) * (-t5 * t43 + (t6 * t20 - t37 * t5) * rSges(7,1) + (t6 * t22 + t38 * t5) * rSges(7,2) + t27) + g(2) * (-t6 * t43 + (-t5 * t20 - t37 * t6) * rSges(7,1) + (-t5 * t22 + t38 * t6) * rSges(7,2) + t24) + g(3) * (t44 * t12 + t28) + (g(3) * (-rSges(7,1) * t22 + rSges(7,2) * t20 - pkin(5)) - (g(1) * t5 + g(2) * t6) * t44) * t11);
U  = t1;
