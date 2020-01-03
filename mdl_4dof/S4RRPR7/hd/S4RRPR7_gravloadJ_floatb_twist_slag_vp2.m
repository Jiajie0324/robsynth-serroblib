% Calculate Gravitation load on the joints for
% S4RRPR7
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d2,d4,theta3]';
% m_mdh [5x1]
%   mass of all robot links (including the base)
% mrSges [5x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% 
% Output:
% taug [4x1]
%   joint torques required to compensate gravitation load

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 17:07
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function taug = S4RRPR7_gravloadJ_floatb_twist_slag_vp2(qJ, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(3,1),zeros(7,1),zeros(5,1),zeros(5,3)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RRPR7_gravloadJ_floatb_twist_slag_vp2: qJ has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4RRPR7_gravloadJ_floatb_twist_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4RRPR7_gravloadJ_floatb_twist_slag_vp2: pkin has to be [7x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4RRPR7_gravloadJ_floatb_twist_slag_vp2: m has to be [5x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [5,3]), ...
  'S4RRPR7_gravloadJ_floatb_twist_slag_vp2: mrSges has to be [5x3] (double)');

%% Symbolic Calculation
% From gravload_joint_floatb_twist_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:05:57
% EndTime: 2019-12-31 17:05:58
% DurationCPUTime: 0.30s
% Computational Cost: add. (134->52), mult. (189->63), div. (0->0), fcn. (161->8), ass. (0->29)
t42 = m(4) + m(5);
t44 = -mrSges(4,2) + mrSges(5,3);
t13 = sin(qJ(2));
t16 = cos(qJ(2));
t10 = qJ(2) + pkin(7);
t7 = sin(t10);
t8 = cos(t10);
t43 = -t16 * mrSges(3,1) - t8 * mrSges(4,1) + t13 * mrSges(3,2) - t44 * t7;
t40 = -m(3) * pkin(5) + mrSges(2,2) - mrSges(3,3) - mrSges(4,3);
t38 = m(3) * pkin(1) + mrSges(2,1) - t43;
t37 = pkin(6) * t7;
t9 = t16 * pkin(2);
t12 = sin(qJ(4));
t17 = cos(qJ(1));
t32 = t12 * t17;
t14 = sin(qJ(1));
t31 = t14 * t12;
t15 = cos(qJ(4));
t30 = t14 * t15;
t29 = t15 * t17;
t26 = pkin(3) * t8 + t37;
t20 = m(5) * pkin(3) + t15 * mrSges(5,1) - t12 * mrSges(5,2);
t11 = -qJ(3) - pkin(5);
t6 = t9 + pkin(1);
t4 = t29 * t8 + t31;
t3 = -t32 * t8 + t30;
t2 = -t30 * t8 + t32;
t1 = t31 * t8 + t29;
t5 = [(-t4 * mrSges(5,1) - t3 * mrSges(5,2) - t42 * (-t14 * t11 + t17 * t6) + t40 * t14 + (-m(5) * t26 - t38) * t17) * g(2) + (-t2 * mrSges(5,1) - t1 * mrSges(5,2) + (t42 * t11 + t40) * t17 + (m(4) * t6 - m(5) * (-t26 - t6) + t38) * t14) * g(1), (-m(4) * t9 - m(5) * (t9 + t37) - t20 * t8 + t43) * g(3) + (g(1) * t17 + g(2) * t14) * (mrSges(3,2) * t16 + (-m(5) * pkin(6) - t44) * t8 + (mrSges(4,1) + t20) * t7 + (t42 * pkin(2) + mrSges(3,1)) * t13), t42 * (-g(1) * t14 + g(2) * t17), -g(1) * (mrSges(5,1) * t3 - mrSges(5,2) * t4) - g(2) * (-mrSges(5,1) * t1 + mrSges(5,2) * t2) - g(3) * (-mrSges(5,1) * t12 - mrSges(5,2) * t15) * t7];
taug = t5(:);
