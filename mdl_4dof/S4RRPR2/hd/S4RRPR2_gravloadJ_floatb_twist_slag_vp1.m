% Calculate Gravitation load on the joints for
% S4RRPR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [5x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d2]';
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
% Datum: 2019-07-18 18:16
% Revision: 08c8d617a845f5dd194efdf9aca2774760f7818f (2019-07-16)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function taug = S4RRPR2_gravloadJ_floatb_twist_slag_vp1(qJ, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(3,1),zeros(5,1),zeros(5,1),zeros(5,3)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RRPR2_gravloadJ_floatb_twist_slag_vp1: qJ has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4RRPR2_gravloadJ_floatb_twist_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [5 1]), ...
  'S4RRPR2_gravloadJ_floatb_twist_slag_vp1: pkin has to be [5x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4RRPR2_gravloadJ_floatb_twist_slag_vp1: m has to be [5x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [5,3]), ...
  'S4RRPR2_gravloadJ_floatb_twist_slag_vp1: rSges has to be [5x3] (double)');

%% Symbolic Calculation
% From gravload_joint_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-07-18 18:16:31
% EndTime: 2019-07-18 18:16:31
% DurationCPUTime: 0.16s
% Computational Cost: add. (135->42), mult. (112->54), div. (0->0), fcn. (98->6), ass. (0->22)
t22 = qJ(1) + qJ(2);
t19 = sin(t22);
t20 = cos(t22);
t32 = sin(qJ(4));
t33 = cos(qJ(4));
t5 = -t19 * t32 - t20 * t33;
t6 = -t19 * t33 + t20 * t32;
t36 = -t6 * rSges(5,1) + t5 * rSges(5,2);
t35 = t5 * rSges(5,1) + t6 * rSges(5,2);
t23 = sin(qJ(1));
t34 = pkin(1) * t23;
t31 = t20 * pkin(2) + t19 * qJ(3);
t30 = t20 * rSges(3,1) - rSges(3,2) * t19;
t29 = t20 * rSges(4,1) + t19 * rSges(4,3) + t31;
t28 = t20 * pkin(3) + t31 - t35;
t27 = -rSges(3,1) * t19 - rSges(3,2) * t20;
t12 = t20 * qJ(3);
t26 = t12 + t20 * rSges(4,3) + (-rSges(4,1) - pkin(2)) * t19;
t25 = t12 + (-pkin(2) - pkin(3)) * t19 - t36;
t24 = cos(qJ(1));
t21 = t24 * pkin(1);
t1 = [-m(2) * (g(1) * (-t23 * rSges(2,1) - rSges(2,2) * t24) + g(2) * (rSges(2,1) * t24 - t23 * rSges(2,2))) - m(3) * (g(1) * (t27 - t34) + g(2) * (t21 + t30)) - m(4) * (g(1) * (t26 - t34) + g(2) * (t21 + t29)) - m(5) * (g(1) * (t25 - t34) + g(2) * (t21 + t28)), -m(3) * (g(1) * t27 + g(2) * t30) - m(4) * (g(1) * t26 + g(2) * t29) - m(5) * (g(1) * t25 + g(2) * t28), (-m(4) - m(5)) * (g(1) * t19 - g(2) * t20), -m(5) * (g(1) * t36 + g(2) * t35)];
taug  = t1(:);
