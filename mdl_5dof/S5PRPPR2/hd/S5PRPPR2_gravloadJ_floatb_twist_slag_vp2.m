% Calculate Gravitation load on the joints for
% S5PRPPR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d5,theta1,theta3,theta4]';
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
% Datum: 2019-12-05 15:25
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function taug = S5PRPPR2_gravloadJ_floatb_twist_slag_vp2(qJ, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(9,1),zeros(6,1),zeros(6,3)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRPPR2_gravloadJ_floatb_twist_slag_vp2: qJ has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PRPPR2_gravloadJ_floatb_twist_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PRPPR2_gravloadJ_floatb_twist_slag_vp2: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5PRPPR2_gravloadJ_floatb_twist_slag_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5PRPPR2_gravloadJ_floatb_twist_slag_vp2: mrSges has to be [6x3] (double)');

%% Symbolic Calculation
% From gravload_joint_floatb_twist_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 15:23:58
% EndTime: 2019-12-05 15:24:00
% DurationCPUTime: 0.30s
% Computational Cost: add. (143->38), mult. (177->49), div. (0->0), fcn. (140->10), ass. (0->20)
t29 = m(5) + m(6);
t23 = m(4) + t29;
t35 = t23 * pkin(2) + mrSges(3,1);
t11 = cos(pkin(9));
t7 = pkin(9) + qJ(5);
t2 = sin(t7);
t4 = cos(t7);
t33 = mrSges(4,1) + m(5) * pkin(3) + t11 * mrSges(5,1) - sin(pkin(9)) * mrSges(5,2) + m(6) * (pkin(4) * t11 + pkin(3)) + t4 * mrSges(6,1) - t2 * mrSges(6,2);
t32 = -m(5) * qJ(4) + m(6) * (-pkin(6) - qJ(4)) + mrSges(4,2) - mrSges(5,3) - mrSges(6,3);
t10 = sin(pkin(7));
t12 = cos(pkin(7));
t31 = g(1) * t12 + g(2) * t10;
t8 = qJ(2) + pkin(8);
t5 = cos(t8);
t25 = t10 * t5;
t24 = t12 * t5;
t15 = cos(qJ(2));
t14 = sin(qJ(2));
t3 = sin(t8);
t1 = [(-m(2) - m(3) - t23) * g(3), (t14 * mrSges(3,2) - t35 * t15 + t32 * t3 - t33 * t5) * g(3) + (mrSges(3,2) * t15 + t35 * t14 + t33 * t3 + t32 * t5) * t31, (-g(1) * t10 + g(2) * t12) * t23, (t5 * g(3) - t3 * t31) * t29, -g(1) * ((t10 * t4 - t2 * t24) * mrSges(6,1) + (-t10 * t2 - t4 * t24) * mrSges(6,2)) - g(2) * ((-t12 * t4 - t2 * t25) * mrSges(6,1) + (t12 * t2 - t4 * t25) * mrSges(6,2)) - g(3) * (-mrSges(6,1) * t2 - mrSges(6,2) * t4) * t3];
taug = t1(:);
