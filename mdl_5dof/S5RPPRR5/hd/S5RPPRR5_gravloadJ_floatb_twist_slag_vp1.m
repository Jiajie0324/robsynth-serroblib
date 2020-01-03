% Calculate Gravitation load on the joints for
% S5RPPRR5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d4,d5,theta2]';
% m_mdh [6x1]
%   mass of all robot links (including the base)
% rSges [6x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% 
% Output:
% taug [5x1]
%   joint torques required to compensate gravitation load

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 17:56
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function taug = S5RPPRR5_gravloadJ_floatb_twist_slag_vp1(qJ, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(8,1),zeros(6,1),zeros(6,3)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPPRR5_gravloadJ_floatb_twist_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPPRR5_gravloadJ_floatb_twist_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPPRR5_gravloadJ_floatb_twist_slag_vp1: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPPRR5_gravloadJ_floatb_twist_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RPPRR5_gravloadJ_floatb_twist_slag_vp1: rSges has to be [6x3] (double)');

%% Symbolic Calculation
% From gravload_joint_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:56:29
% EndTime: 2019-12-31 17:56:29
% DurationCPUTime: 0.23s
% Computational Cost: add. (202->48), mult. (184->66), div. (0->0), fcn. (184->8), ass. (0->25)
t27 = qJ(1) + pkin(8);
t11 = cos(t27);
t24 = sin(t27);
t29 = sin(qJ(4));
t30 = cos(qJ(4));
t1 = -t11 * t30 - t24 * t29;
t13 = sin(qJ(5));
t15 = cos(qJ(5));
t21 = -rSges(6,1) * t15 + rSges(6,2) * t13;
t19 = pkin(4) - t21;
t2 = t11 * t29 - t24 * t30;
t31 = rSges(6,3) + pkin(7);
t35 = -(g(1) * t31 - g(2) * t19) * t1 - (g(1) * t19 + g(2) * t31) * t2;
t14 = sin(qJ(1));
t32 = t14 * pkin(1);
t28 = -m(4) - m(5) - m(6);
t16 = cos(qJ(1));
t12 = t16 * pkin(1);
t26 = t11 * pkin(2) + t24 * qJ(3) + t12;
t25 = t11 * pkin(3) + t26;
t23 = -t2 * rSges(5,1) + t1 * rSges(5,2);
t22 = rSges(5,1) * t1 + rSges(5,2) * t2;
t18 = -t24 * pkin(2) + t11 * qJ(3) - t32;
t17 = -t24 * pkin(3) + t18;
t3 = [-m(2) * (g(1) * (-t14 * rSges(2,1) - rSges(2,2) * t16) + g(2) * (rSges(2,1) * t16 - t14 * rSges(2,2))) - m(3) * (g(1) * (-t24 * rSges(3,1) - t11 * rSges(3,2) - t32) + g(2) * (t11 * rSges(3,1) - t24 * rSges(3,2) + t12)) - m(4) * (g(1) * (-t24 * rSges(4,1) + t11 * rSges(4,3) + t18) + g(2) * (t11 * rSges(4,1) + t24 * rSges(4,3) + t26)) - m(5) * (g(1) * (t17 - t23) + g(2) * (-t22 + t25)) - m(6) * (g(1) * t17 + g(2) * t25 - t35), (-m(3) + t28) * g(3), t28 * (g(1) * t24 - g(2) * t11), -m(5) * (g(1) * t23 + g(2) * t22) - m(6) * t35, -m(6) * (g(3) * t21 + (g(1) * t1 + g(2) * t2) * (rSges(6,1) * t13 + rSges(6,2) * t15))];
taug = t3(:);
