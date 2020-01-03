% Calculate potential energy for
% S4PRPR7
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
%   pkin=[a2,a3,a4,d2,d4,theta1]';
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
% Datum: 2019-12-31 16:26
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S4PRPR7_energypot_floatb_twist_slag_vp1(qJ, r_base, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(3,1),zeros(3,1),zeros(6,1),zeros(5,1),zeros(5,3)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PRPR7_energypot_floatb_twist_slag_vp1: qJ has to be [4x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S4PRPR7_energypot_floatb_twist_slag_vp1: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4PRPR7_energypot_floatb_twist_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S4PRPR7_energypot_floatb_twist_slag_vp1: pkin has to be [6x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4PRPR7_energypot_floatb_twist_slag_vp1: m has to be [5x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [5,3]), ...
  'S4PRPR7_energypot_floatb_twist_slag_vp1: rSges has to be [5x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 16:25:33
% EndTime: 2019-12-31 16:25:34
% DurationCPUTime: 0.31s
% Computational Cost: add. (84->65), mult. (112->73), div. (0->0), fcn. (96->6), ass. (0->19)
t12 = sin(qJ(2));
t14 = cos(qJ(2));
t33 = pkin(2) * t14 + qJ(3) * t12;
t32 = rSges(5,3) + pkin(5);
t31 = -rSges(4,2) * t14 + rSges(4,3) * t12;
t30 = rSges(3,1) * t14 - rSges(3,2) * t12;
t11 = sin(qJ(4));
t23 = t11 * t12;
t13 = cos(qJ(4));
t22 = t12 * t13;
t9 = sin(pkin(6));
t20 = t9 * pkin(1) + r_base(2);
t19 = qJ(1) + r_base(3);
t10 = cos(pkin(6));
t18 = t10 * pkin(1) + t9 * pkin(4) + r_base(1);
t17 = t12 * pkin(2) + t19;
t16 = t33 * t9 + t20;
t15 = t10 * t33 + t18;
t1 = -m(1) * (g(1) * (r_base(1) + rSges(1,1)) + g(2) * (r_base(2) + rSges(1,2)) + g(3) * (r_base(3) + rSges(1,3))) - m(2) * (g(1) * (rSges(2,1) * t10 - rSges(2,2) * t9 + r_base(1)) + g(2) * (rSges(2,1) * t9 + rSges(2,2) * t10 + r_base(2)) + g(3) * (rSges(2,3) + t19)) - m(3) * (g(1) * (t9 * rSges(3,3) + t18) + g(2) * (t30 * t9 + t20) + g(3) * (rSges(3,1) * t12 + rSges(3,2) * t14 + t19) + (g(1) * t30 + g(2) * (-rSges(3,3) - pkin(4))) * t10) - m(4) * (g(1) * (t9 * rSges(4,1) + t15) + g(2) * (t31 * t9 + t16) + g(3) * (-t12 * rSges(4,2) + (-rSges(4,3) - qJ(3)) * t14 + t17) + (g(1) * t31 + g(2) * (-rSges(4,1) - pkin(4))) * t10) - m(5) * (g(1) * (t9 * pkin(3) + (t10 * t23 + t13 * t9) * rSges(5,1) + (t10 * t22 - t11 * t9) * rSges(5,2) + t15) + g(2) * (t16 + (rSges(5,1) * t23 + rSges(5,2) * t22) * t9 + (-rSges(5,1) * t13 + rSges(5,2) * t11 - pkin(3) - pkin(4)) * t10) + g(3) * (t32 * t12 + t17) + (g(3) * (-rSges(5,1) * t11 - rSges(5,2) * t13 - qJ(3)) + (g(1) * t10 + g(2) * t9) * t32) * t14);
U = t1;
