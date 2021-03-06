% Calculate Gravitation load on the joints for
% S4RRPP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [6x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d2,theta3]';
% m_mdh [5x1]
%   mass of all robot links (including the base)
% rSges [5x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% 
% Output:
% taug [4x1]
%   joint torques required to compensate gravitation load

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 18:33
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function taug = S4RRPP1_gravloadJ_floatb_twist_slag_vp1(qJ, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(3,1),zeros(6,1),zeros(5,1),zeros(5,3)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RRPP1_gravloadJ_floatb_twist_slag_vp1: qJ has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4RRPP1_gravloadJ_floatb_twist_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S4RRPP1_gravloadJ_floatb_twist_slag_vp1: pkin has to be [6x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4RRPP1_gravloadJ_floatb_twist_slag_vp1: m has to be [5x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [5,3]), ...
  'S4RRPP1_gravloadJ_floatb_twist_slag_vp1: rSges has to be [5x3] (double)');

%% Symbolic Calculation
% From gravload_joint_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 18:33:08
% EndTime: 2019-03-08 18:33:08
% DurationCPUTime: 0.11s
% Computational Cost: add. (119->37), mult. (76->45), div. (0->0), fcn. (52->6), ass. (0->21)
t28 = rSges(5,1) + pkin(3);
t27 = qJ(4) + rSges(5,3);
t17 = sin(qJ(1));
t26 = pkin(1) * t17;
t16 = qJ(1) + qJ(2);
t13 = sin(t16);
t25 = pkin(2) * t13;
t14 = cos(t16);
t24 = t14 * rSges(3,1) - rSges(3,2) * t13;
t12 = pkin(6) + t16;
t10 = cos(t12);
t11 = pkin(2) * t14;
t9 = sin(t12);
t23 = t28 * t10 + t27 * t9 + t11;
t22 = t10 * rSges(4,1) - rSges(4,2) * t9 + t11;
t21 = -rSges(3,1) * t13 - rSges(3,2) * t14;
t20 = -rSges(4,1) * t9 - rSges(4,2) * t10 - t25;
t19 = t27 * t10 - t28 * t9 - t25;
t18 = cos(qJ(1));
t15 = t18 * pkin(1);
t1 = [-m(2) * (g(1) * (-t17 * rSges(2,1) - rSges(2,2) * t18) + g(2) * (rSges(2,1) * t18 - t17 * rSges(2,2))) - m(3) * (g(1) * (t21 - t26) + g(2) * (t15 + t24)) - m(4) * (g(1) * (t20 - t26) + g(2) * (t15 + t22)) - m(5) * (g(1) * (t19 - t26) + g(2) * (t15 + t23)) -m(3) * (g(1) * t21 + g(2) * t24) - m(4) * (g(1) * t20 + g(2) * t22) - m(5) * (g(1) * t19 + g(2) * t23) (-m(4) - m(5)) * g(3), -m(5) * (g(1) * t9 - g(2) * t10)];
taug  = t1(:);
