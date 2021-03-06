% Calculate Gravitation load on the joints for
% S4RPRP7
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [5x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d3]';
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
% Datum: 2019-12-31 16:47
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function taug = S4RPRP7_gravloadJ_floatb_twist_slag_vp2(qJ, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(3,1),zeros(5,1),zeros(5,1),zeros(5,3)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RPRP7_gravloadJ_floatb_twist_slag_vp2: qJ has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4RPRP7_gravloadJ_floatb_twist_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [5 1]), ...
  'S4RPRP7_gravloadJ_floatb_twist_slag_vp2: pkin has to be [5x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4RPRP7_gravloadJ_floatb_twist_slag_vp2: m has to be [5x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [5,3]), ...
  'S4RPRP7_gravloadJ_floatb_twist_slag_vp2: mrSges has to be [5x3] (double)');

%% Symbolic Calculation
% From gravload_joint_floatb_twist_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 16:47:03
% EndTime: 2019-12-31 16:47:03
% DurationCPUTime: 0.20s
% Computational Cost: add. (63->24), mult. (125->28), div. (0->0), fcn. (93->4), ass. (0->14)
t30 = m(5) * pkin(3) + mrSges(4,1) + mrSges(5,1);
t29 = m(5) * qJ(4) - mrSges(4,2) + mrSges(5,3);
t5 = sin(qJ(3));
t7 = cos(qJ(3));
t28 = -t29 * t7 + t30 * t5;
t6 = sin(qJ(1));
t8 = cos(qJ(1));
t26 = -g(1) * t6 + g(2) * t8;
t27 = -m(4) - m(5);
t25 = m(3) - t27;
t23 = mrSges(2,2) - mrSges(3,3) - t28;
t22 = -mrSges(2,1) + mrSges(3,2) - mrSges(4,3) - mrSges(5,2);
t18 = t8 * pkin(1) + t6 * qJ(2);
t1 = [(-m(3) * t18 + t27 * (t8 * pkin(5) + t18) + t22 * t8 + t23 * t6) * g(2) + ((m(3) * pkin(1) + t27 * (-pkin(1) - pkin(5)) - t22) * t6 + (-t25 * qJ(2) + t23) * t8) * g(1), t26 * t25, t28 * g(3) + (t29 * t5 + t30 * t7) * t26, (-g(3) * t5 - t26 * t7) * m(5)];
taug = t1(:);
