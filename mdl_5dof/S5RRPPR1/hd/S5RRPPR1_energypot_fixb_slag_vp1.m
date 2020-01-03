% Calculate potential energy for
% S5RRPPR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d5,theta3,theta4]';
% m_mdh [6x1]
%   mass of all robot links (including the base)
% rSges [6x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% 
% Output:
% U [1x1]
%   Potential energy

% Quelle: HybrDyn-Toolbox
% Datum: 2020-01-03 11:56
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S5RRPPR1_energypot_fixb_slag_vp1(qJ, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(9,1),zeros(6,1),zeros(6,3)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPPR1_energypot_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRPPR1_energypot_fixb_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRPPR1_energypot_fixb_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRPPR1_energypot_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RRPPR1_energypot_fixb_slag_vp1: rSges has to be [6x3] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2020-01-03 11:55:40
% EndTime: 2020-01-03 11:55:41
% DurationCPUTime: 0.19s
% Computational Cost: add. (136->56), mult. (85->60), div. (0->0), fcn. (61->10), ass. (0->25)
t56 = pkin(5) + pkin(6);
t46 = cos(qJ(1));
t55 = pkin(1) * t46;
t54 = -rSges(6,3) - pkin(7) - qJ(4);
t41 = qJ(1) + qJ(2);
t37 = sin(t41);
t45 = sin(qJ(1));
t39 = t45 * pkin(1);
t53 = pkin(2) * t37 + t39;
t52 = -rSges(5,3) - qJ(4);
t51 = qJ(3) + t56;
t38 = cos(t41);
t50 = -pkin(2) * t38 - t55;
t42 = sin(pkin(9));
t43 = cos(pkin(9));
t49 = rSges(5,1) * t43 - rSges(5,2) * t42 + pkin(3);
t40 = pkin(9) + qJ(5);
t34 = sin(t40);
t35 = cos(t40);
t48 = rSges(6,1) * t35 - rSges(6,2) * t34 + pkin(4) * t43 + pkin(3);
t47 = g(2) * t53 + g(3) * t50;
t36 = pkin(8) + t41;
t31 = cos(t36);
t30 = sin(t36);
t1 = -m(1) * (g(1) * rSges(1,1) + g(2) * rSges(1,2) + g(3) * rSges(1,3)) - m(2) * (g(1) * (pkin(5) + rSges(2,3)) + g(2) * (t45 * rSges(2,1) + rSges(2,2) * t46) + g(3) * (-rSges(2,1) * t46 + t45 * rSges(2,2))) - m(3) * (g(1) * (rSges(3,3) + t56) + g(2) * (rSges(3,1) * t37 + rSges(3,2) * t38 + t39) + g(3) * (-t38 * rSges(3,1) + t37 * rSges(3,2) - t55)) - m(4) * (g(1) * (rSges(4,3) + t51) + g(2) * (rSges(4,1) * t30 + rSges(4,2) * t31 + t53) + g(3) * (-t31 * rSges(4,1) + t30 * rSges(4,2) + t50)) - m(5) * (g(1) * (rSges(5,1) * t42 + rSges(5,2) * t43 + t51) + (g(2) * t52 - g(3) * t49) * t31 + (g(2) * t49 + g(3) * t52) * t30 + t47) - m(6) * (g(1) * (rSges(6,1) * t34 + rSges(6,2) * t35 + pkin(4) * t42 + t51) + (g(2) * t54 - g(3) * t48) * t31 + (g(2) * t48 + g(3) * t54) * t30 + t47);
U = t1;
