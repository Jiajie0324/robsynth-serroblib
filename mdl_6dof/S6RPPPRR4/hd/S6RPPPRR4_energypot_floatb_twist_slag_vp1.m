% Calculate potential energy for
% S6RPPPRR4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% r_base [3x1]
%   Base position in world frame
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d5,d6,theta3]';
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
% Datum: 2019-03-09 01:36
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S6RPPPRR4_energypot_floatb_twist_slag_vp1(qJ, r_base, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(3,1),zeros(9,1),zeros(7,1),zeros(7,3)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPPRR4_energypot_floatb_twist_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S6RPPPRR4_energypot_floatb_twist_slag_vp1: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPPPRR4_energypot_floatb_twist_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPPPRR4_energypot_floatb_twist_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPPPRR4_energypot_floatb_twist_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RPPPRR4_energypot_floatb_twist_slag_vp1: rSges has to be [7x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 01:35:14
% EndTime: 2019-03-09 01:35:14
% DurationCPUTime: 0.45s
% Computational Cost: add. (170->80), mult. (223->81), div. (0->0), fcn. (243->8), ass. (0->27)
t13 = sin(qJ(6));
t15 = cos(qJ(6));
t42 = rSges(7,1) * t15 - rSges(7,2) * t13 + pkin(5);
t39 = rSges(7,3) + pkin(8);
t38 = -t13 * rSges(7,1) - t15 * rSges(7,2) - pkin(7);
t14 = sin(qJ(5));
t37 = t42 * t14 + qJ(4);
t35 = -rSges(6,3) - pkin(7);
t33 = cos(qJ(1));
t32 = sin(qJ(1));
t29 = rSges(5,3) + qJ(4);
t28 = cos(pkin(9));
t27 = sin(pkin(9));
t26 = pkin(6) + r_base(3);
t25 = t33 * pkin(1) + t32 * qJ(2) + r_base(1);
t24 = -qJ(3) + t26;
t23 = -pkin(4) + t24;
t22 = t33 * pkin(2) + t25;
t3 = -t27 * t32 - t28 * t33;
t21 = -t3 * pkin(3) + t22;
t16 = cos(qJ(5));
t20 = rSges(6,1) * t14 + rSges(6,2) * t16 + qJ(4);
t19 = t32 * pkin(1) - qJ(2) * t33 + r_base(2);
t18 = t32 * pkin(2) + t19;
t4 = t27 * t33 - t28 * t32;
t17 = -t4 * pkin(3) + t18;
t1 = -m(1) * (g(1) * (r_base(1) + rSges(1,1)) + g(2) * (r_base(2) + rSges(1,2)) + g(3) * (r_base(3) + rSges(1,3))) - m(2) * (g(1) * (t33 * rSges(2,1) - t32 * rSges(2,2) + r_base(1)) + g(2) * (rSges(2,1) * t32 + rSges(2,2) * t33 + r_base(2)) + g(3) * (rSges(2,3) + t26)) - m(3) * (g(1) * (rSges(3,1) * t33 + rSges(3,3) * t32 + t25) + g(2) * (rSges(3,1) * t32 - rSges(3,3) * t33 + t19) + g(3) * (rSges(3,2) + t26)) - m(4) * (g(1) * (-t3 * rSges(4,1) - t4 * rSges(4,2) + t22) + g(2) * (-t4 * rSges(4,1) + t3 * rSges(4,2) + t18) + g(3) * (-rSges(4,3) + t24)) - m(5) * (g(1) * (t3 * rSges(5,2) + t29 * t4 + t21) + g(2) * (t4 * rSges(5,2) - t29 * t3 + t17) + g(3) * (-rSges(5,1) + t24)) - m(6) * (g(1) * t21 + g(2) * t17 + g(3) * (-t16 * rSges(6,1) + t14 * rSges(6,2) + t23) + (g(1) * t20 + g(2) * t35) * t4 + (g(1) * t35 - g(2) * t20) * t3) - m(7) * (g(1) * (t38 * t3 + t37 * t4 + t21) + g(2) * (-t37 * t3 + t38 * t4 + t17) + g(3) * (-t39 * t14 + t23) + (-g(3) * t42 + (-g(1) * t4 + g(2) * t3) * t39) * t16);
U  = t1;
