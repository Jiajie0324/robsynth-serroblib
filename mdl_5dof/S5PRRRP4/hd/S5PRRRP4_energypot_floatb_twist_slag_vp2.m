% Calculate potential energy for
% S5PRRRP4
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
%   pkin=[a2,a3,a4,a5,d2,d3,d4,theta1]';
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
% Datum: 2019-12-05 16:46
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S5PRRRP4_energypot_floatb_twist_slag_vp2(qJ, r_base, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(3,1),zeros(8,1),zeros(6,1),zeros(6,3)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRRP4_energypot_floatb_twist_slag_vp2: qJ has to be [5x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S5PRRRP4_energypot_floatb_twist_slag_vp2: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PRRRP4_energypot_floatb_twist_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRRRP4_energypot_floatb_twist_slag_vp2: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5PRRRP4_energypot_floatb_twist_slag_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5PRRRP4_energypot_floatb_twist_slag_vp2: mrSges has to be [6x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 16:45:32
% EndTime: 2019-12-05 16:45:32
% DurationCPUTime: 0.38s
% Computational Cost: add. (167->65), mult. (179->60), div. (0->0), fcn. (155->8), ass. (0->31)
t49 = -m(2) - m(3);
t48 = -m(5) - m(6);
t47 = -mrSges(5,3) - mrSges(6,2);
t46 = -m(1) + t49;
t19 = qJ(2) + qJ(3);
t15 = sin(t19);
t16 = cos(t19);
t23 = sin(qJ(2));
t25 = cos(qJ(2));
t45 = -m(3) * pkin(1) - t25 * mrSges(3,1) - t16 * mrSges(4,1) + t23 * mrSges(3,2) + t15 * mrSges(4,2) - mrSges(2,1);
t44 = -m(6) * pkin(4) - mrSges(5,1) - mrSges(6,1);
t43 = -m(6) * qJ(5) + mrSges(5,2) - mrSges(6,3);
t42 = m(3) * pkin(5) - mrSges(2,2) + mrSges(3,3) + mrSges(4,3);
t41 = pkin(3) * t16;
t20 = sin(pkin(8));
t40 = t20 * t15;
t22 = sin(qJ(4));
t39 = t20 * t22;
t24 = cos(qJ(4));
t38 = t20 * t24;
t21 = cos(pkin(8));
t37 = t21 * t15;
t36 = t21 * t22;
t35 = t21 * t24;
t18 = qJ(1) + r_base(3);
t14 = t25 * pkin(2) + pkin(1);
t26 = -pkin(6) - pkin(5);
t34 = t20 * t14 + t21 * t26 + r_base(2);
t33 = t23 * pkin(2) + t18;
t30 = t21 * t14 - t20 * t26 + r_base(1);
t1 = (-m(1) * r_base(3) - m(4) * t33 - t23 * mrSges(3,1) - t25 * mrSges(3,2) - mrSges(1,3) - mrSges(2,3) + t48 * (t15 * pkin(3) - t16 * pkin(7) + t33) + t49 * t18 + (-mrSges(4,2) - t47) * t16 + (t43 * t22 + t44 * t24 - mrSges(4,1)) * t15) * g(3) + (-m(4) * t34 - mrSges(1,2) + t47 * t40 + t48 * (pkin(7) * t40 + t20 * t41 + t34) + t44 * (t16 * t38 - t36) + t43 * (t16 * t39 + t35) + t46 * r_base(2) + t42 * t21 + t45 * t20) * g(2) + (-m(4) * t30 - mrSges(1,1) + t48 * (pkin(7) * t37 + t21 * t41 + t30) + t44 * (t16 * t35 + t39) + t47 * t37 + t43 * (t16 * t36 - t38) + t46 * r_base(1) + t45 * t21 - t42 * t20) * g(1);
U = t1;
