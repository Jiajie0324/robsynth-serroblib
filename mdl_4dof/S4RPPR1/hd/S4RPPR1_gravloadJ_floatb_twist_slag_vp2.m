% Calculate Gravitation load on the joints for
% S4RPPR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [6x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d4,theta2]';
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
% Datum: 2019-03-08 18:27
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function taug = S4RPPR1_gravloadJ_floatb_twist_slag_vp2(qJ, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(3,1),zeros(6,1),zeros(5,1),zeros(5,3)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RPPR1_gravloadJ_floatb_twist_slag_vp2: qJ has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4RPPR1_gravloadJ_floatb_twist_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S4RPPR1_gravloadJ_floatb_twist_slag_vp2: pkin has to be [6x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4RPPR1_gravloadJ_floatb_twist_slag_vp2: m has to be [5x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [5,3]), ...
  'S4RPPR1_gravloadJ_floatb_twist_slag_vp2: mrSges has to be [5x3] (double)');

%% Symbolic Calculation
% From gravload_joint_floatb_twist_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 18:27:25
% EndTime: 2019-03-08 18:27:26
% DurationCPUTime: 0.14s
% Computational Cost: add. (85->31), mult. (79->34), div. (0->0), fcn. (64->6), ass. (0->16)
t25 = m(4) + m(5);
t23 = cos(qJ(4));
t22 = sin(qJ(4));
t21 = mrSges(3,1) + mrSges(4,1);
t20 = mrSges(3,2) - mrSges(4,3);
t19 = m(3) + t25;
t12 = qJ(1) + pkin(6);
t10 = cos(t12);
t9 = sin(t12);
t1 = -t10 * t23 - t9 * t22;
t2 = t10 * t22 - t9 * t23;
t16 = -t2 * mrSges(5,1) + t1 * mrSges(5,2);
t15 = t1 * mrSges(5,1) + t2 * mrSges(5,2);
t14 = cos(qJ(1));
t13 = sin(qJ(1));
t3 = [(t13 * mrSges(2,2) + t20 * t9 + (-m(3) * pkin(1) - mrSges(2,1)) * t14 + (-m(5) * pkin(3) - t21) * t10 + t15 - t25 * (t14 * pkin(1) + t10 * pkin(2) + t9 * qJ(3))) * g(2) + (mrSges(2,2) * t14 + (t19 * pkin(1) + mrSges(2,1)) * t13 + (m(4) * pkin(2) - m(5) * (-pkin(2) - pkin(3)) + t21) * t9 + t16 + (-t25 * qJ(3) + t20) * t10) * g(1), -t19 * g(3), t25 * (-g(1) * t9 + g(2) * t10) -g(1) * t16 - g(2) * t15];
taug  = t3(:);
