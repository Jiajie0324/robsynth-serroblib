% Calculate Gravitation load on the joints for
% S5RPRPR9
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d5,theta2]';
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
% Datum: 2019-12-31 18:25
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function taug = S5RPRPR9_gravloadJ_floatb_twist_slag_vp1(qJ, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(8,1),zeros(6,1),zeros(6,3)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRPR9_gravloadJ_floatb_twist_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPRPR9_gravloadJ_floatb_twist_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPRPR9_gravloadJ_floatb_twist_slag_vp1: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPRPR9_gravloadJ_floatb_twist_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RPRPR9_gravloadJ_floatb_twist_slag_vp1: rSges has to be [6x3] (double)');

%% Symbolic Calculation
% From gravload_joint_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 18:23:43
% EndTime: 2019-12-31 18:23:44
% DurationCPUTime: 0.34s
% Computational Cost: add. (200->77), mult. (223->102), div. (0->0), fcn. (194->8), ass. (0->35)
t18 = qJ(1) + pkin(8);
t13 = sin(t18);
t14 = cos(t18);
t50 = g(1) * t14 + g(2) * t13;
t44 = rSges(6,3) + pkin(7);
t20 = sin(qJ(3));
t23 = cos(qJ(3));
t26 = -t23 * rSges(5,2) + t20 * rSges(5,3);
t28 = t23 * rSges(4,1) - t20 * rSges(4,2);
t49 = -m(5) - m(6);
t46 = g(3) * t23;
t21 = sin(qJ(1));
t45 = t21 * pkin(1);
t16 = t23 * pkin(3);
t43 = t14 * t23;
t19 = sin(qJ(5));
t42 = t19 * t20;
t22 = cos(qJ(5));
t39 = t20 * t22;
t15 = t20 * qJ(4);
t36 = t15 + t16;
t34 = -pkin(3) - t44;
t24 = cos(qJ(1));
t17 = t24 * pkin(1);
t33 = t14 * pkin(2) + t13 * pkin(6) + t17;
t32 = t14 * pkin(6) - t45;
t31 = -pkin(2) - t15;
t30 = pkin(3) * t43 + t14 * t15 + t33;
t29 = t50 * qJ(4) * t23;
t27 = rSges(6,1) * t19 + rSges(6,2) * t22;
t5 = -t13 * t42 + t14 * t22;
t4 = t13 * t39 + t14 * t19;
t3 = t13 * t22 + t14 * t42;
t2 = -t13 * t19 + t14 * t39;
t1 = [-m(2) * (g(1) * (-t21 * rSges(2,1) - t24 * rSges(2,2)) + g(2) * (t24 * rSges(2,1) - t21 * rSges(2,2))) - m(3) * (g(1) * (-t13 * rSges(3,1) - t14 * rSges(3,2) - t45) + g(2) * (t14 * rSges(3,1) - t13 * rSges(3,2) + t17)) - m(4) * (g(1) * (t14 * rSges(4,3) + t32) + g(2) * (t28 * t14 + t33) + (g(1) * (-pkin(2) - t28) + g(2) * rSges(4,3)) * t13) - m(5) * (g(1) * (t14 * rSges(5,1) + t32) + g(2) * (t26 * t14 + t30) + (g(1) * (-t26 + t31 - t16) + g(2) * rSges(5,1)) * t13) - m(6) * ((t3 * rSges(6,1) + t2 * rSges(6,2) + t13 * pkin(4) + t44 * t43 + t30) * g(2) + (t5 * rSges(6,1) - t4 * rSges(6,2) + t14 * pkin(4) + t32 + (t23 * t34 + t31) * t13) * g(1)), (-m(3) - m(4) + t49) * g(3), -m(4) * g(3) * t28 - m(5) * (g(3) * (t26 + t36) + t29) - m(6) * (g(3) * (t27 * t20 + t44 * t23 + t36) + t29) + t50 * ((m(4) * rSges(4,2) - m(5) * rSges(5,3) - m(6) * t27) * t23 + (m(4) * rSges(4,1) - m(5) * (rSges(5,2) - pkin(3)) - m(6) * t34) * t20), t49 * (t50 * t20 - t46), -m(6) * (g(1) * (t2 * rSges(6,1) - t3 * rSges(6,2)) + g(2) * (t4 * rSges(6,1) + t5 * rSges(6,2)) + (-rSges(6,1) * t22 + rSges(6,2) * t19) * t46)];
taug = t1(:);
