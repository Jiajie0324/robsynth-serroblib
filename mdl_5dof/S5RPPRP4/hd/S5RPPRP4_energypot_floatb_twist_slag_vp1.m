% Calculate potential energy for
% S5RPPRP4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% r_base [3x1]
%   Base position in world frame
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d4,theta3]';
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
% Datum: 2019-12-31 17:52
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S5RPPRP4_energypot_floatb_twist_slag_vp1(qJ, r_base, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(3,1),zeros(7,1),zeros(6,1),zeros(6,3)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPPRP4_energypot_floatb_twist_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S5RPPRP4_energypot_floatb_twist_slag_vp1: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPPRP4_energypot_floatb_twist_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S5RPPRP4_energypot_floatb_twist_slag_vp1: pkin has to be [7x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPPRP4_energypot_floatb_twist_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RPPRP4_energypot_floatb_twist_slag_vp1: rSges has to be [6x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:52:00
% EndTime: 2019-12-31 17:52:00
% DurationCPUTime: 0.27s
% Computational Cost: add. (118->64), mult. (141->64), div. (0->0), fcn. (141->6), ass. (0->21)
t30 = -rSges(6,1) - pkin(4);
t29 = rSges(5,3) + pkin(6);
t28 = sin(qJ(1));
t27 = rSges(6,3) + qJ(5) + pkin(6);
t26 = cos(pkin(7));
t25 = sin(pkin(7));
t24 = pkin(5) + r_base(3);
t23 = t28 * pkin(1) + r_base(2);
t15 = cos(qJ(1));
t22 = t15 * pkin(1) + t28 * qJ(2) + r_base(1);
t21 = -qJ(3) + t24;
t20 = t15 * pkin(2) + t22;
t13 = sin(qJ(4));
t14 = cos(qJ(4));
t19 = -rSges(5,1) * t14 + rSges(5,2) * t13 - pkin(3);
t18 = rSges(6,2) * t13 + t30 * t14 - pkin(3);
t17 = t28 * pkin(2) - t15 * qJ(2) + t23;
t16 = g(1) * t20 + g(2) * t17;
t2 = t15 * t25 - t28 * t26;
t1 = -t15 * t26 - t28 * t25;
t3 = -m(1) * (g(1) * (r_base(1) + rSges(1,1)) + g(2) * (r_base(2) + rSges(1,2)) + g(3) * (r_base(3) + rSges(1,3))) - m(2) * (g(1) * (t15 * rSges(2,1) - t28 * rSges(2,2) + r_base(1)) + g(2) * (t28 * rSges(2,1) + t15 * rSges(2,2) + r_base(2)) + g(3) * (rSges(2,3) + t24)) - m(3) * (g(1) * (t15 * rSges(3,1) + t28 * rSges(3,3) + t22) + g(2) * (t28 * rSges(3,1) + (-rSges(3,3) - qJ(2)) * t15 + t23) + g(3) * (rSges(3,2) + t24)) - m(4) * (g(1) * (-t1 * rSges(4,1) - t2 * rSges(4,2) + t20) + g(2) * (-t2 * rSges(4,1) + t1 * rSges(4,2) + t17) + g(3) * (-rSges(4,3) + t21)) - m(5) * (g(3) * (-t13 * rSges(5,1) - t14 * rSges(5,2) + t21) + (g(1) * t29 + g(2) * t19) * t2 + (g(1) * t19 - g(2) * t29) * t1 + t16) - m(6) * (g(3) * (-t14 * rSges(6,2) + t30 * t13 + t21) + (g(1) * t27 + g(2) * t18) * t2 + (g(1) * t18 - g(2) * t27) * t1 + t16);
U = t3;
