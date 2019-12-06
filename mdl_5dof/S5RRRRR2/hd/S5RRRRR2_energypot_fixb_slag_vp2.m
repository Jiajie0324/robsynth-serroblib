% Calculate potential energy for
% S5RRRRR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [2x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a4]';
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
% Datum: 2019-12-05 18:54
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S5RRRRR2_energypot_fixb_slag_vp2(qJ, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(2,1),zeros(6,1),zeros(6,3)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRR2_energypot_fixb_slag_vp2: qJ has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRRRR2_energypot_fixb_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [2 1]), ...
  'S5RRRRR2_energypot_fixb_slag_vp2: pkin has to be [2x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRRRR2_energypot_fixb_slag_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RRRRR2_energypot_fixb_slag_vp2: mrSges has to be [6x3] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_worldframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:52:52
% EndTime: 2019-12-05 18:52:52
% DurationCPUTime: 0.13s
% Computational Cost: add. (100->37), mult. (103->32), div. (0->0), fcn. (79->10), ass. (0->20)
t50 = -m(5) - m(6);
t42 = cos(qJ(3));
t49 = pkin(2) * t42;
t48 = mrSges(5,2) - mrSges(6,3);
t47 = -mrSges(2,1) + (-m(3) - m(4)) * pkin(1);
t38 = sin(qJ(5));
t41 = cos(qJ(5));
t46 = -mrSges(6,1) * t41 + mrSges(6,2) * t38 - mrSges(5,1);
t45 = t38 * mrSges(6,1) + t41 * mrSges(6,2) - mrSges(3,2) + mrSges(4,3) + mrSges(5,3);
t36 = qJ(3) + qJ(4);
t32 = sin(t36);
t34 = cos(t36);
t39 = sin(qJ(3));
t44 = -mrSges(4,1) * t42 + mrSges(4,2) * t39 + t48 * t32 + t46 * t34 - mrSges(3,1);
t43 = cos(qJ(1));
t40 = sin(qJ(1));
t37 = qJ(1) + qJ(2);
t35 = cos(t37);
t33 = sin(t37);
t1 = (-t42 * mrSges(4,2) - mrSges(1,3) - mrSges(2,3) - mrSges(3,3) - t48 * t34 + (t50 * pkin(2) - mrSges(4,1)) * t39 + t46 * t32) * g(3) + (-t43 * mrSges(2,2) - mrSges(1,2) + t50 * (pkin(1) * t40 + t33 * t49) + t47 * t40 + t45 * t35 + t44 * t33) * g(2) + (t40 * mrSges(2,2) - mrSges(1,1) + t50 * (pkin(1) * t43 + t35 * t49) + t47 * t43 - t45 * t33 + t44 * t35) * g(1);
U = t1;
