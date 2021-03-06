% Calculate potential energy for
% S4RPPR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% r_base [3x1]
%   Base position in world frame
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [6x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d4,theta3]';
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
% Datum: 2019-03-08 18:28
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S4RPPR2_energypot_floatb_twist_slag_vp1(qJ, r_base, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(3,1),zeros(3,1),zeros(6,1),zeros(5,1),zeros(5,3)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RPPR2_energypot_floatb_twist_slag_vp1: qJ has to be [4x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S4RPPR2_energypot_floatb_twist_slag_vp1: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4RPPR2_energypot_floatb_twist_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S4RPPR2_energypot_floatb_twist_slag_vp1: pkin has to be [6x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4RPPR2_energypot_floatb_twist_slag_vp1: m has to be [5x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [5,3]), ...
  'S4RPPR2_energypot_floatb_twist_slag_vp1: rSges has to be [5x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 18:28:25
% EndTime: 2019-03-08 18:28:25
% DurationCPUTime: 0.13s
% Computational Cost: add. (80->58), mult. (74->56), div. (0->0), fcn. (62->6), ass. (0->18)
t12 = sin(pkin(6));
t14 = sin(qJ(1));
t20 = t14 * t12;
t19 = pkin(4) + r_base(3);
t18 = t14 * pkin(1) + r_base(2);
t15 = cos(qJ(1));
t17 = t15 * pkin(1) + t14 * qJ(2) + r_base(1);
t16 = -qJ(3) + t19;
t13 = cos(pkin(6));
t11 = pkin(6) + qJ(4);
t7 = cos(t11);
t6 = sin(t11);
t5 = pkin(3) * t13 + pkin(2);
t4 = -t12 * t15 + t14 * t13;
t3 = -t13 * t15 - t20;
t2 = t14 * t7 - t15 * t6;
t1 = -t14 * t6 - t15 * t7;
t8 = -m(1) * (g(1) * (r_base(1) + rSges(1,1)) + g(2) * (r_base(2) + rSges(1,2)) + g(3) * (r_base(3) + rSges(1,3))) - m(2) * (g(1) * (rSges(2,1) * t15 - t14 * rSges(2,2) + r_base(1)) + g(2) * (t14 * rSges(2,1) + rSges(2,2) * t15 + r_base(2)) + g(3) * (rSges(2,3) + t19)) - m(3) * (g(1) * (rSges(3,1) * t15 + t14 * rSges(3,3) + t17) + g(2) * (t14 * rSges(3,1) + (-rSges(3,3) - qJ(2)) * t15 + t18) + g(3) * (rSges(3,2) + t19)) - m(4) * (g(1) * (-t3 * rSges(4,1) + t4 * rSges(4,2) + pkin(2) * t15 + t17) + g(2) * (t4 * rSges(4,1) + t3 * rSges(4,2) + t14 * pkin(2) - qJ(2) * t15 + t18) + g(3) * (-rSges(4,3) + t16)) - m(5) * (g(1) * (-t1 * rSges(5,1) + t2 * rSges(5,2) + pkin(3) * t20 + t15 * t5 + t17) + g(2) * (t2 * rSges(5,1) + t1 * rSges(5,2) + t14 * t5 + (-pkin(3) * t12 - qJ(2)) * t15 + t18) + g(3) * (-pkin(5) - rSges(5,3) + t16));
U  = t8;
