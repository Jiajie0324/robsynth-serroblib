% Calculate potential energy for
% S5RPRRR9
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d4,d5,theta2]';
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
% Datum: 2019-12-31 19:08
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S5RPRRR9_energypot_fixb_slag_vp1(qJ, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(9,1),zeros(6,1),zeros(6,3)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRR9_energypot_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPRRR9_energypot_fixb_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RPRRR9_energypot_fixb_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPRRR9_energypot_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RPRRR9_energypot_fixb_slag_vp1: rSges has to be [6x3] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 19:07:15
% EndTime: 2019-12-31 19:07:15
% DurationCPUTime: 0.32s
% Computational Cost: add. (150->70), mult. (130->86), div. (0->0), fcn. (110->10), ass. (0->32)
t77 = rSges(6,3) + pkin(8);
t56 = sin(pkin(9));
t75 = t56 * pkin(2) + pkin(5);
t57 = cos(pkin(9));
t48 = t57 * pkin(2) + pkin(1);
t55 = pkin(9) + qJ(3);
t51 = qJ(4) + t55;
t46 = sin(t51);
t74 = rSges(5,2) * t46;
t59 = sin(qJ(5));
t60 = sin(qJ(1));
t73 = t60 * t59;
t61 = cos(qJ(5));
t72 = t60 * t61;
t47 = cos(t51);
t62 = cos(qJ(1));
t71 = t62 * t47;
t70 = t62 * t59;
t69 = t62 * t61;
t58 = -pkin(6) - qJ(2);
t68 = rSges(4,3) - t58;
t50 = cos(t55);
t43 = pkin(3) * t50 + t48;
t54 = -pkin(7) + t58;
t67 = t60 * t43 + t62 * t54;
t66 = rSges(3,3) + qJ(2);
t49 = sin(t55);
t65 = pkin(3) * t49 + t75;
t64 = rSges(3,1) * t57 - rSges(3,2) * t56 + pkin(1);
t63 = rSges(4,1) * t50 - rSges(4,2) * t49 + t48;
t42 = t62 * t43;
t1 = -m(1) * (g(1) * rSges(1,1) + g(2) * rSges(1,2) + g(3) * rSges(1,3)) - m(2) * (g(1) * (t62 * rSges(2,1) - t60 * rSges(2,2)) + g(2) * (t60 * rSges(2,1) + t62 * rSges(2,2)) + g(3) * (pkin(5) + rSges(2,3))) - m(3) * (g(3) * (t56 * rSges(3,1) + t57 * rSges(3,2) + pkin(5)) + (g(1) * t64 - g(2) * t66) * t62 + (g(1) * t66 + g(2) * t64) * t60) - m(4) * (g(3) * (t49 * rSges(4,1) + t50 * rSges(4,2) + t75) + (g(1) * t63 - g(2) * t68) * t62 + (g(1) * t68 + g(2) * t63) * t60) - m(5) * (g(1) * (rSges(5,1) * t71 - t62 * t74 + t42) + g(2) * (-t62 * rSges(5,3) + t67) + g(3) * (t46 * rSges(5,1) + t47 * rSges(5,2) + t65) + (g(1) * (rSges(5,3) - t54) + g(2) * (rSges(5,1) * t47 - t74)) * t60) - m(6) * (g(1) * (pkin(4) * t71 + t42 - t60 * t54 + (t47 * t69 + t73) * rSges(6,1) + (-t47 * t70 + t72) * rSges(6,2)) + g(2) * (t60 * t47 * pkin(4) + (t47 * t72 - t70) * rSges(6,1) + (-t47 * t73 - t69) * rSges(6,2) + t67) + g(3) * (-t77 * t47 + t65) + (g(3) * (rSges(6,1) * t61 - rSges(6,2) * t59 + pkin(4)) + (g(1) * t62 + g(2) * t60) * t77) * t46);
U = t1;
