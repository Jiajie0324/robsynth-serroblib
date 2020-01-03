% Calculate potential energy for
% S4RRRR1
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
%   pkin=[a2,a3,a4,d1,d2,d3,d4]';
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
% Datum: 2019-12-31 17:22
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S4RRRR1_energypot_floatb_twist_slag_vp1(qJ, r_base, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(3,1),zeros(3,1),zeros(7,1),zeros(5,1),zeros(5,3)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RRRR1_energypot_floatb_twist_slag_vp1: qJ has to be [4x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S4RRRR1_energypot_floatb_twist_slag_vp1: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4RRRR1_energypot_floatb_twist_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4RRRR1_energypot_floatb_twist_slag_vp1: pkin has to be [7x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4RRRR1_energypot_floatb_twist_slag_vp1: m has to be [5x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [5,3]), ...
  'S4RRRR1_energypot_floatb_twist_slag_vp1: rSges has to be [5x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:22:06
% EndTime: 2019-12-31 17:22:06
% DurationCPUTime: 0.13s
% Computational Cost: add. (99->50), mult. (58->46), div. (0->0), fcn. (38->8), ass. (0->20)
t23 = rSges(5,3) + pkin(7);
t10 = qJ(1) + qJ(2);
t22 = pkin(4) + r_base(3);
t12 = sin(qJ(1));
t21 = t12 * pkin(1) + r_base(2);
t14 = cos(qJ(1));
t20 = t14 * pkin(1) + r_base(1);
t19 = pkin(5) + t22;
t5 = sin(t10);
t18 = pkin(2) * t5 + t21;
t6 = cos(t10);
t17 = pkin(2) * t6 + t20;
t16 = pkin(6) + t19;
t11 = sin(qJ(4));
t13 = cos(qJ(4));
t15 = rSges(5,1) * t13 - rSges(5,2) * t11 + pkin(3);
t7 = qJ(3) + t10;
t4 = cos(t7);
t3 = sin(t7);
t1 = -m(1) * (g(1) * (r_base(1) + rSges(1,1)) + g(2) * (r_base(2) + rSges(1,2)) + g(3) * (r_base(3) + rSges(1,3))) - m(2) * (g(1) * (rSges(2,1) * t14 - t12 * rSges(2,2) + r_base(1)) + g(2) * (t12 * rSges(2,1) + rSges(2,2) * t14 + r_base(2)) + g(3) * (rSges(2,3) + t22)) - m(3) * (g(1) * (rSges(3,1) * t6 - rSges(3,2) * t5 + t20) + g(2) * (rSges(3,1) * t5 + rSges(3,2) * t6 + t21) + g(3) * (rSges(3,3) + t19)) - m(4) * (g(1) * (rSges(4,1) * t4 - rSges(4,2) * t3 + t17) + g(2) * (rSges(4,1) * t3 + rSges(4,2) * t4 + t18) + g(3) * (rSges(4,3) + t16)) - m(5) * (g(1) * t17 + g(2) * t18 + g(3) * (rSges(5,1) * t11 + t13 * rSges(5,2) + t16) + (g(1) * t15 - g(2) * t23) * t4 + (g(1) * t23 + g(2) * t15) * t3);
U = t1;
