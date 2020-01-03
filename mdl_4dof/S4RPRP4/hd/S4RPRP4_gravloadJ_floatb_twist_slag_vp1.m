% Calculate Gravitation load on the joints for
% S4RPRP4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [6x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d3,theta2]';
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
% Datum: 2019-12-31 16:44
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function taug = S4RPRP4_gravloadJ_floatb_twist_slag_vp1(qJ, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(3,1),zeros(6,1),zeros(5,1),zeros(5,3)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RPRP4_gravloadJ_floatb_twist_slag_vp1: qJ has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4RPRP4_gravloadJ_floatb_twist_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S4RPRP4_gravloadJ_floatb_twist_slag_vp1: pkin has to be [6x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4RPRP4_gravloadJ_floatb_twist_slag_vp1: m has to be [5x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [5,3]), ...
  'S4RPRP4_gravloadJ_floatb_twist_slag_vp1: rSges has to be [5x3] (double)');

%% Symbolic Calculation
% From gravload_joint_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 16:43:38
% EndTime: 2019-12-31 16:43:38
% DurationCPUTime: 0.22s
% Computational Cost: add. (101->41), mult. (109->56), div. (0->0), fcn. (85->6), ass. (0->17)
t10 = cos(qJ(3));
t22 = rSges(5,3) + qJ(4);
t24 = rSges(5,1) + pkin(3);
t8 = sin(qJ(3));
t13 = t24 * t10 + t22 * t8;
t14 = rSges(4,1) * t10 - rSges(4,2) * t8;
t7 = qJ(1) + pkin(6);
t4 = sin(t7);
t5 = cos(t7);
t23 = g(1) * t5 + g(2) * t4;
t9 = sin(qJ(1));
t21 = pkin(1) * t9;
t11 = cos(qJ(1));
t6 = t11 * pkin(1);
t16 = t5 * pkin(2) + t4 * pkin(5) + t6;
t15 = t5 * pkin(5) - t21;
t1 = [-m(2) * (g(1) * (-t9 * rSges(2,1) - rSges(2,2) * t11) + g(2) * (rSges(2,1) * t11 - t9 * rSges(2,2))) - m(3) * (g(1) * (-rSges(3,1) * t4 - rSges(3,2) * t5 - t21) + g(2) * (rSges(3,1) * t5 - rSges(3,2) * t4 + t6)) - m(4) * (g(1) * (rSges(4,3) * t5 + t15) + g(2) * (t14 * t5 + t16) + (g(1) * (-pkin(2) - t14) + g(2) * rSges(4,3)) * t4) - m(5) * (g(1) * t15 + g(2) * t16 + (g(1) * rSges(5,2) + g(2) * t13) * t5 + (g(1) * (-pkin(2) - t13) + g(2) * rSges(5,2)) * t4), (-m(3) - m(4) - m(5)) * g(3), (-m(4) * t14 - m(5) * t13) * g(3) + t23 * (-m(4) * (-rSges(4,1) * t8 - rSges(4,2) * t10) - m(5) * (t22 * t10 - t24 * t8)), -m(5) * (-g(3) * t10 + t23 * t8)];
taug = t1(:);
