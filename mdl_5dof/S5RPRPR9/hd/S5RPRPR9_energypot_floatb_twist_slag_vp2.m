% Calculate potential energy for
% S5RPRPR9
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% r_base [3x1]
%   Base position in world frame
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d5,theta2]';
% m_mdh [6x1]
%   mass of all robot links (including the base)
% mrSges [6x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% 
% Output:
% U [1x1]
%   Potential energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 18:25
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S5RPRPR9_energypot_floatb_twist_slag_vp2(qJ, r_base, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(3,1),zeros(8,1),zeros(6,1),zeros(6,3)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRPR9_energypot_floatb_twist_slag_vp2: qJ has to be [5x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S5RPRPR9_energypot_floatb_twist_slag_vp2: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPRPR9_energypot_floatb_twist_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPRPR9_energypot_floatb_twist_slag_vp2: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPRPR9_energypot_floatb_twist_slag_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RPRPR9_energypot_floatb_twist_slag_vp2: mrSges has to be [6x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 18:23:37
% EndTime: 2019-12-31 18:23:38
% DurationCPUTime: 0.41s
% Computational Cost: add. (155->63), mult. (140->53), div. (0->0), fcn. (108->8), ass. (0->28)
t45 = -mrSges(4,1) + mrSges(5,2) - mrSges(6,3);
t15 = sin(qJ(5));
t18 = cos(qJ(5));
t44 = -t15 * mrSges(6,1) - t18 * mrSges(6,2) + mrSges(4,2) - mrSges(5,3);
t41 = -m(1) - m(2);
t40 = m(5) + m(6);
t16 = sin(qJ(3));
t31 = qJ(4) * t16;
t19 = cos(qJ(3));
t14 = qJ(1) + pkin(8);
t8 = sin(t14);
t36 = t8 * t19;
t39 = pkin(3) * t36 + t8 * t31;
t38 = t18 * mrSges(6,1) - t15 * mrSges(6,2) + mrSges(5,1) - mrSges(3,2) + mrSges(4,3);
t37 = t16 * t44 + t19 * t45 - mrSges(3,1);
t9 = cos(t14);
t35 = t9 * t19;
t30 = pkin(5) + r_base(3);
t17 = sin(qJ(1));
t29 = t17 * pkin(1) + r_base(2);
t20 = cos(qJ(1));
t28 = t20 * pkin(1) + r_base(1);
t27 = t8 * pkin(2) + t29;
t10 = qJ(2) + t30;
t26 = t9 * pkin(2) + t8 * pkin(6) + t28;
t22 = -pkin(6) * t9 + t27;
t21 = pkin(3) * t35 + t9 * t31 + t26;
t1 = (-m(1) * r_base(3) - m(2) * t30 - mrSges(1,3) - mrSges(2,3) - mrSges(3,3) - t40 * (t16 * pkin(3) + t10) + (-m(3) - m(4)) * t10 + (qJ(4) * t40 - t44) * t19 + (-m(6) * pkin(7) + t45) * t16) * g(3) + (-mrSges(1,2) - t17 * mrSges(2,1) - mrSges(2,2) * t20 - m(3) * t29 - m(4) * t22 - m(5) * (t22 + t39) - m(6) * (pkin(7) * t36 + t27 + t39) + t41 * r_base(2) + (-m(6) * (-pkin(4) - pkin(6)) + t38) * t9 + t37 * t8) * g(2) + (-mrSges(1,1) - mrSges(2,1) * t20 + t17 * mrSges(2,2) - m(3) * t28 - m(4) * t26 - m(5) * t21 - m(6) * (pkin(7) * t35 + t21) + t41 * r_base(1) + (-m(6) * pkin(4) - t38) * t8 + t37 * t9) * g(1);
U = t1;
