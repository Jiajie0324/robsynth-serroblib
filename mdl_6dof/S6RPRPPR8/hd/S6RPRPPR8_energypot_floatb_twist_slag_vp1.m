% Calculate potential energy for
% S6RPRPPR8
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% r_base [3x1]
%   Base position in world frame
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d6]';
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
% Datum: 2019-03-09 03:00
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S6RPRPPR8_energypot_floatb_twist_slag_vp1(qJ, r_base, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(3,1),zeros(8,1),zeros(7,1),zeros(7,3)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPPR8_energypot_floatb_twist_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S6RPRPPR8_energypot_floatb_twist_slag_vp1: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRPPR8_energypot_floatb_twist_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S6RPRPPR8_energypot_floatb_twist_slag_vp1: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRPPR8_energypot_floatb_twist_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RPRPPR8_energypot_floatb_twist_slag_vp1: rSges has to be [7x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 02:58:41
% EndTime: 2019-03-09 02:58:41
% DurationCPUTime: 0.37s
% Computational Cost: add. (142->94), mult. (179->97), div. (0->0), fcn. (155->6), ass. (0->30)
t40 = -pkin(3) - pkin(4);
t14 = sin(qJ(1));
t39 = g(1) * t14;
t17 = cos(qJ(1));
t38 = g(2) * t17;
t37 = rSges(7,3) + pkin(8);
t16 = cos(qJ(3));
t36 = rSges(6,1) * t16;
t35 = rSges(4,2) * t16;
t13 = sin(qJ(3));
t34 = t14 * t13;
t33 = t16 * qJ(4);
t32 = -rSges(6,3) - qJ(5);
t31 = pkin(6) + r_base(3);
t30 = t14 * pkin(1) + r_base(2);
t29 = pkin(2) + t31;
t28 = t14 * pkin(7) + t30;
t27 = t17 * pkin(1) + t14 * qJ(2) + r_base(1);
t26 = t17 * pkin(7) + t27;
t25 = t16 * pkin(3) + t13 * qJ(4) + t29;
t24 = rSges(5,1) * t13 - rSges(5,3) * t16;
t23 = pkin(3) * t34 + t26;
t22 = g(2) * (t17 * t33 + t28);
t21 = t16 * pkin(4) + t25;
t12 = sin(qJ(6));
t15 = cos(qJ(6));
t20 = rSges(7,1) * t15 - rSges(7,2) * t12 + pkin(5);
t19 = -t12 * rSges(7,1) - t15 * rSges(7,2) - qJ(5);
t18 = g(1) * (pkin(4) * t34 + t23) + t22;
t1 = -m(1) * (g(1) * (r_base(1) + rSges(1,1)) + g(2) * (r_base(2) + rSges(1,2)) + g(3) * (r_base(3) + rSges(1,3))) - m(2) * (g(1) * (t17 * rSges(2,1) - t14 * rSges(2,2) + r_base(1)) + g(2) * (t14 * rSges(2,1) + t17 * rSges(2,2) + r_base(2)) + g(3) * (rSges(2,3) + t31)) - m(3) * (g(1) * (-t17 * rSges(3,2) + t14 * rSges(3,3) + t27) + g(2) * (-t14 * rSges(3,2) + (-rSges(3,3) - qJ(2)) * t17 + t30) + g(3) * (rSges(3,1) + t31)) - m(4) * (g(1) * (rSges(4,1) * t34 + t14 * t35 + t26) + g(2) * (t14 * rSges(4,3) + t28) + g(3) * (t16 * rSges(4,1) - t13 * rSges(4,2) + t29) + (g(1) * rSges(4,3) + g(2) * (-rSges(4,1) * t13 - qJ(2) - t35)) * t17) - m(5) * (g(1) * t23 + t22 + g(3) * (t16 * rSges(5,1) + t13 * rSges(5,3) + t25) + (g(1) * (t24 - t33) + g(2) * rSges(5,2)) * t14 + (g(1) * rSges(5,2) + g(2) * (-t13 * pkin(3) - qJ(2) - t24)) * t17) - m(6) * (g(3) * (t13 * rSges(6,1) - t16 * rSges(6,2) + t21) + (g(1) * (-rSges(6,2) * t13 - t33 - t36) + g(2) * t32) * t14 + (g(1) * t32 + (-qJ(2) + t36 + (rSges(6,2) + t40) * t13) * g(2)) * t17 + t18) - m(7) * (g(3) * t21 + (g(1) * t19 - g(2) * qJ(2)) * t17 + g(2) * t19 * t14 + (g(3) * t37 + t20 * t38 + (-qJ(4) - t20) * t39) * t16 + (g(3) * t20 + t37 * t39 + (-t37 + t40) * t38) * t13 + t18);
U  = t1;
