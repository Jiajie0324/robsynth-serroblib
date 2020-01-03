% Calculate Gravitation load on the joints for
% S5PPRPR4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d3,d5,theta1,theta4]';
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
% Datum: 2019-12-31 17:32
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function taug = S5PPRPR4_gravloadJ_floatb_twist_slag_vp2(qJ, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(8,1),zeros(6,1),zeros(6,3)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PPRPR4_gravloadJ_floatb_twist_slag_vp2: qJ has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PPRPR4_gravloadJ_floatb_twist_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PPRPR4_gravloadJ_floatb_twist_slag_vp2: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5PPRPR4_gravloadJ_floatb_twist_slag_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5PPRPR4_gravloadJ_floatb_twist_slag_vp2: mrSges has to be [6x3] (double)');

%% Symbolic Calculation
% From gravload_joint_floatb_twist_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:32:16
% EndTime: 2019-12-31 17:32:17
% DurationCPUTime: 0.14s
% Computational Cost: add. (88->26), mult. (150->32), div. (0->0), fcn. (152->8), ass. (0->16)
t27 = m(5) + m(6);
t11 = cos(pkin(8));
t9 = pkin(8) + qJ(5);
t7 = sin(t9);
t8 = cos(t9);
t16 = -t8 * mrSges(6,1) + t7 * mrSges(6,2);
t26 = mrSges(4,1) + m(5) * pkin(3) + t11 * mrSges(5,1) - sin(pkin(8)) * mrSges(5,2) + m(6) * (pkin(4) * t11 + pkin(3)) - t16;
t25 = m(5) * qJ(4) - mrSges(4,2) + mrSges(5,3) - m(6) * (-pkin(6) - qJ(4)) + mrSges(6,3);
t24 = m(3) + m(4) + t27;
t23 = cos(qJ(3));
t22 = sin(qJ(3));
t21 = cos(pkin(7));
t20 = sin(pkin(7));
t2 = -t20 * t23 + t21 * t22;
t1 = -t20 * t22 - t21 * t23;
t3 = [(-m(2) - t24) * g(3), (-t20 * g(1) + t21 * g(2)) * t24, (-t26 * t1 + t25 * t2) * g(2) + (t25 * t1 + t26 * t2) * g(1), t27 * (-g(1) * t2 + g(2) * t1), -g(3) * t16 + (-g(1) * t1 - g(2) * t2) * (mrSges(6,1) * t7 + mrSges(6,2) * t8)];
taug = t3(:);
