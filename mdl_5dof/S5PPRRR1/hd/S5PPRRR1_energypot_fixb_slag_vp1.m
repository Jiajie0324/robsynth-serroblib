% Calculate potential energy for
% S5PPRRR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d3,d4,d5,theta1,theta2]';
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
% Datum: 2019-12-05 15:13
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S5PPRRR1_energypot_fixb_slag_vp1(qJ, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(9,1),zeros(6,1),zeros(6,3)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PPRRR1_energypot_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PPRRR1_energypot_fixb_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PPRRR1_energypot_fixb_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5PPRRR1_energypot_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5PPRRR1_energypot_fixb_slag_vp1: rSges has to be [6x3] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 15:12:33
% EndTime: 2019-12-05 15:12:33
% DurationCPUTime: 0.32s
% Computational Cost: add. (150->70), mult. (130->86), div. (0->0), fcn. (110->10), ass. (0->32)
t77 = rSges(6,3) + pkin(7);
t58 = cos(pkin(9));
t48 = t58 * pkin(2) + pkin(1);
t55 = pkin(9) + qJ(3);
t51 = qJ(4) + t55;
t46 = sin(t51);
t75 = rSges(5,2) * t46;
t57 = sin(pkin(8));
t61 = sin(qJ(5));
t74 = t57 * t61;
t62 = cos(qJ(5));
t73 = t57 * t62;
t47 = cos(t51);
t59 = cos(pkin(8));
t72 = t59 * t47;
t71 = t59 * t61;
t70 = t59 * t62;
t60 = -pkin(5) - qJ(2);
t69 = rSges(4,3) - t60;
t50 = cos(t55);
t43 = pkin(3) * t50 + t48;
t54 = -pkin(6) + t60;
t68 = t57 * t43 + t59 * t54;
t67 = rSges(3,3) + qJ(2);
t56 = sin(pkin(9));
t66 = t56 * pkin(2) + qJ(1);
t49 = sin(t55);
t65 = pkin(3) * t49 + t66;
t64 = rSges(3,1) * t58 - rSges(3,2) * t56 + pkin(1);
t63 = rSges(4,1) * t50 - rSges(4,2) * t49 + t48;
t42 = t59 * t43;
t1 = -m(1) * (g(1) * rSges(1,1) + g(2) * rSges(1,2) + g(3) * rSges(1,3)) - m(2) * (g(1) * (t59 * rSges(2,1) - t57 * rSges(2,2)) + g(2) * (t57 * rSges(2,1) + t59 * rSges(2,2)) + g(3) * (qJ(1) + rSges(2,3))) - m(3) * (g(3) * (t56 * rSges(3,1) + t58 * rSges(3,2) + qJ(1)) + (g(1) * t64 - g(2) * t67) * t59 + (g(1) * t67 + g(2) * t64) * t57) - m(4) * (g(3) * (t49 * rSges(4,1) + t50 * rSges(4,2) + t66) + (g(1) * t63 - g(2) * t69) * t59 + (g(1) * t69 + g(2) * t63) * t57) - m(5) * (g(1) * (rSges(5,1) * t72 - t59 * t75 + t42) + g(2) * (-t59 * rSges(5,3) + t68) + g(3) * (t46 * rSges(5,1) + t47 * rSges(5,2) + t65) + (g(1) * (rSges(5,3) - t54) + g(2) * (rSges(5,1) * t47 - t75)) * t57) - m(6) * (g(1) * (pkin(4) * t72 + t42 - t57 * t54 + (t47 * t70 + t74) * rSges(6,1) + (-t47 * t71 + t73) * rSges(6,2)) + g(2) * (t57 * t47 * pkin(4) + (t47 * t73 - t71) * rSges(6,1) + (-t47 * t74 - t70) * rSges(6,2) + t68) + g(3) * (-t77 * t47 + t65) + (g(3) * (rSges(6,1) * t62 - rSges(6,2) * t61 + pkin(4)) + (g(1) * t59 + g(2) * t57) * t77) * t46);
U = t1;
