% Calculate Gravitation load on the joints for
% S5RPPRR12
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d4,d5,theta3]';
% m_mdh [6x1]
%   mass of all robot links (including the base)
% mrSges [6x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% 
% Output:
% taug [5x1]
%   joint torques required to compensate gravitation load

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 18:07
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function taug = S5RPPRR12_gravloadJ_floatb_twist_slag_vp2(qJ, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(8,1),zeros(6,1),zeros(6,3)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPPRR12_gravloadJ_floatb_twist_slag_vp2: qJ has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPPRR12_gravloadJ_floatb_twist_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPPRR12_gravloadJ_floatb_twist_slag_vp2: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPPRR12_gravloadJ_floatb_twist_slag_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RPPRR12_gravloadJ_floatb_twist_slag_vp2: mrSges has to be [6x3] (double)');

%% Symbolic Calculation
% From gravload_joint_floatb_twist_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 18:06:57
% EndTime: 2019-12-31 18:06:58
% DurationCPUTime: 0.31s
% Computational Cost: add. (145->56), mult. (205->68), div. (0->0), fcn. (169->8), ass. (0->30)
t18 = sin(qJ(1));
t20 = cos(qJ(1));
t43 = -g(1) * t18 + g(2) * t20;
t44 = -m(5) - m(6);
t42 = mrSges(2,1) + mrSges(4,3) + mrSges(5,3) - mrSges(3,2);
t14 = sin(pkin(8));
t13 = pkin(8) + qJ(4);
t8 = sin(t13);
t9 = cos(t13);
t26 = t8 * mrSges(5,1) + t9 * mrSges(5,2);
t41 = mrSges(2,2) - mrSges(3,3) - t14 * mrSges(4,1) - cos(pkin(8)) * mrSges(4,2) - t26 - m(6) * (pkin(4) * t8 - pkin(7) * t9) + t9 * mrSges(6,3);
t39 = pkin(3) * t14;
t17 = sin(qJ(5));
t36 = t17 * t20;
t35 = t18 * t17;
t19 = cos(qJ(5));
t34 = t18 * t19;
t33 = t19 * t20;
t32 = t20 * pkin(1) + t18 * qJ(2);
t31 = -m(4) + t44;
t29 = m(6) * pkin(7) + mrSges(6,3);
t11 = t20 * qJ(2);
t28 = -t18 * pkin(1) + t11;
t22 = m(6) * pkin(4) + t19 * mrSges(6,1) - t17 * mrSges(6,2);
t16 = -pkin(6) - qJ(3);
t4 = t8 * t33 - t35;
t3 = t8 * t36 + t34;
t2 = t8 * t34 + t36;
t1 = -t8 * t35 + t33;
t5 = [(-t2 * mrSges(6,1) - t1 * mrSges(6,2) + (-m(3) - m(4)) * t32 + t44 * (-t16 * t20 + t18 * t39 + t32) + (-m(4) * qJ(3) - t42) * t20 + t41 * t18) * g(2) + (-m(3) * t28 - m(4) * t11 - t4 * mrSges(6,1) + t3 * mrSges(6,2) + t44 * (t18 * t16 + t20 * t39 + t28) + (-m(4) * (-pkin(1) - qJ(3)) + t42) * t18 + t41 * t20) * g(1), t43 * (m(3) - t31), (g(1) * t20 + g(2) * t18) * t31, (t22 * t8 - t29 * t9 + t26) * g(3) + ((mrSges(5,1) + t22) * t9 + (-mrSges(5,2) + t29) * t8) * t43, -g(1) * (mrSges(6,1) * t1 - mrSges(6,2) * t2) - g(2) * (mrSges(6,1) * t3 + mrSges(6,2) * t4) - g(3) * (-mrSges(6,1) * t17 - mrSges(6,2) * t19) * t9];
taug = t5(:);
