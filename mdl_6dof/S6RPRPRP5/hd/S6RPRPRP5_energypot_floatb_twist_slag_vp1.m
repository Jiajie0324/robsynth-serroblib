% Calculate potential energy for
% S6RPRPRP5
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
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,theta2,theta4]';
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
% Datum: 2019-03-09 03:17
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S6RPRPRP5_energypot_floatb_twist_slag_vp1(qJ, r_base, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(3,1),zeros(10,1),zeros(7,1),zeros(7,3)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRP5_energypot_floatb_twist_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S6RPRPRP5_energypot_floatb_twist_slag_vp1: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRPRP5_energypot_floatb_twist_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRPRP5_energypot_floatb_twist_slag_vp1: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRPRP5_energypot_floatb_twist_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RPRPRP5_energypot_floatb_twist_slag_vp1: rSges has to be [7x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 03:14:21
% EndTime: 2019-03-09 03:14:21
% DurationCPUTime: 0.52s
% Computational Cost: add. (260->105), mult. (227->117), div. (0->0), fcn. (215->10), ass. (0->42)
t56 = rSges(7,1) + pkin(5);
t29 = sin(qJ(1));
t30 = cos(qJ(1));
t55 = g(1) * t30 + g(2) * t29;
t54 = rSges(5,3) + qJ(4);
t53 = rSges(7,3) + qJ(6);
t22 = pkin(9) + qJ(3);
t17 = sin(t22);
t50 = rSges(4,2) * t17;
t19 = cos(t22);
t49 = t29 * t19;
t23 = sin(pkin(10));
t48 = t29 * t23;
t25 = cos(pkin(10));
t47 = t29 * t25;
t46 = t30 * t19;
t45 = t30 * t23;
t44 = t30 * t25;
t41 = rSges(3,3) + qJ(2);
t39 = pkin(6) + r_base(3);
t26 = cos(pkin(9));
t14 = t26 * pkin(2) + pkin(1);
t38 = t30 * t14 + r_base(1);
t24 = sin(pkin(9));
t37 = t24 * pkin(2) + t39;
t28 = -pkin(7) - qJ(2);
t36 = t29 * t14 + t30 * t28 + r_base(2);
t35 = -t29 * t28 + t38;
t13 = t25 * pkin(4) + pkin(3);
t27 = -pkin(8) - qJ(4);
t34 = t17 * t13 + t19 * t27 + t37;
t33 = rSges(3,1) * t26 - rSges(3,2) * t24 + pkin(1);
t32 = pkin(4) * t48 + t13 * t46 + t35;
t31 = -pkin(4) * t45 + t13 * t49 + t36;
t21 = pkin(10) + qJ(5);
t18 = cos(t21);
t16 = sin(t21);
t4 = t29 * t16 + t18 * t46;
t3 = t16 * t46 - t29 * t18;
t2 = -t30 * t16 + t18 * t49;
t1 = t16 * t49 + t30 * t18;
t5 = -m(1) * (g(1) * (r_base(1) + rSges(1,1)) + g(2) * (r_base(2) + rSges(1,2)) + g(3) * (r_base(3) + rSges(1,3))) - m(2) * (g(1) * (t30 * rSges(2,1) - t29 * rSges(2,2) + r_base(1)) + g(2) * (t29 * rSges(2,1) + t30 * rSges(2,2) + r_base(2)) + g(3) * (rSges(2,3) + t39)) - m(3) * (g(1) * r_base(1) + g(2) * r_base(2) + g(3) * (t24 * rSges(3,1) + t26 * rSges(3,2) + t39) + (g(1) * t33 - g(2) * t41) * t30 + (g(1) * t41 + g(2) * t33) * t29) - m(4) * (g(1) * (rSges(4,1) * t46 - t30 * t50 + t38) + g(2) * (-t30 * rSges(4,3) + t36) + g(3) * (t17 * rSges(4,1) + t19 * rSges(4,2) + t37) + (g(1) * (rSges(4,3) - t28) + g(2) * (rSges(4,1) * t19 - t50)) * t29) - m(5) * (g(1) * (pkin(3) * t46 + (t19 * t44 + t48) * rSges(5,1) + (-t19 * t45 + t47) * rSges(5,2) + t35) + g(2) * (pkin(3) * t49 + (t19 * t47 - t45) * rSges(5,1) + (-t19 * t48 - t44) * rSges(5,2) + t36) + g(3) * (-t54 * t19 + t37) + (g(3) * (rSges(5,1) * t25 - rSges(5,2) * t23 + pkin(3)) + t55 * t54) * t17) - m(6) * (g(1) * (t4 * rSges(6,1) - t3 * rSges(6,2) + t32) + g(2) * (t2 * rSges(6,1) - t1 * rSges(6,2) + t31) + g(3) * (-t19 * rSges(6,3) + t34) + (g(3) * (rSges(6,1) * t18 - rSges(6,2) * t16) + t55 * (rSges(6,3) - t27)) * t17) - m(7) * (g(1) * (t53 * t3 + t56 * t4 + t32) + g(2) * (t53 * t1 + t56 * t2 + t31) + g(3) * (-t19 * rSges(7,2) + t34) + (g(3) * (t53 * t16 + t56 * t18) + t55 * (rSges(7,2) - t27)) * t17);
U  = t5;
