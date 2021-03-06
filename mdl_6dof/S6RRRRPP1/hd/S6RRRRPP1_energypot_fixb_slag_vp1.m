% Calculate potential energy for
% S6RRRRPP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,theta5]';
% m_mdh [7x1]
%   mass of all robot links (including the base)
% rSges [7x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% 
% Output:
% U [1x1]
%   Potential energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 20:47
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S6RRRRPP1_energypot_fixb_slag_vp1(qJ, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(10,1),zeros(7,1),zeros(7,3)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPP1_energypot_fixb_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRPP1_energypot_fixb_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRPP1_energypot_fixb_slag_vp1: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRRPP1_energypot_fixb_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RRRRPP1_energypot_fixb_slag_vp1: rSges has to be [7x3] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 20:43:57
% EndTime: 2019-03-09 20:43:58
% DurationCPUTime: 0.42s
% Computational Cost: add. (239->95), mult. (227->115), div. (0->0), fcn. (215->10), ass. (0->41)
t114 = rSges(7,1) + pkin(5);
t113 = rSges(5,3) + pkin(9);
t112 = rSges(7,3) + qJ(6);
t86 = sin(qJ(1));
t89 = cos(qJ(1));
t111 = g(1) * t89 + g(2) * t86;
t108 = rSges(3,3) + pkin(7);
t85 = sin(qJ(2));
t106 = t85 * pkin(2) + pkin(6);
t82 = qJ(2) + qJ(3);
t78 = sin(t82);
t105 = rSges(4,2) * t78;
t79 = cos(t82);
t104 = t86 * t79;
t84 = sin(qJ(4));
t103 = t86 * t84;
t87 = cos(qJ(4));
t102 = t86 * t87;
t101 = t89 * t79;
t100 = t89 * t84;
t99 = t89 * t87;
t88 = cos(qJ(2));
t74 = t88 * pkin(2) + pkin(1);
t90 = -pkin(8) - pkin(7);
t96 = t86 * t74 + t89 * t90;
t69 = t89 * t74;
t95 = -t86 * t90 + t69;
t73 = t87 * pkin(4) + pkin(3);
t83 = -qJ(5) - pkin(9);
t94 = t78 * t73 + t79 * t83 + t106;
t93 = pkin(4) * t103 + t73 * t101 + t95;
t92 = rSges(3,1) * t88 - rSges(3,2) * t85 + pkin(1);
t91 = -pkin(4) * t100 + t73 * t104 + t96;
t81 = qJ(4) + pkin(10);
t77 = cos(t81);
t76 = sin(t81);
t64 = t77 * t101 + t86 * t76;
t63 = t76 * t101 - t86 * t77;
t62 = t77 * t104 - t89 * t76;
t61 = t76 * t104 + t89 * t77;
t1 = -m(1) * (g(1) * rSges(1,1) + g(2) * rSges(1,2) + g(3) * rSges(1,3)) - m(2) * (g(1) * (t89 * rSges(2,1) - t86 * rSges(2,2)) + g(2) * (t86 * rSges(2,1) + t89 * rSges(2,2)) + g(3) * (pkin(6) + rSges(2,3))) - m(3) * (g(3) * (t85 * rSges(3,1) + t88 * rSges(3,2) + pkin(6)) + (g(1) * t92 - g(2) * t108) * t89 + (g(1) * t108 + g(2) * t92) * t86) - m(4) * (g(1) * (rSges(4,1) * t101 - t89 * t105 + t69) + g(2) * (-t89 * rSges(4,3) + t96) + g(3) * (t78 * rSges(4,1) + t79 * rSges(4,2) + t106) + (g(1) * (rSges(4,3) - t90) + g(2) * (rSges(4,1) * t79 - t105)) * t86) - m(5) * (g(1) * (pkin(3) * t101 + (t79 * t99 + t103) * rSges(5,1) + (-t79 * t100 + t102) * rSges(5,2) + t95) + g(2) * (pkin(3) * t104 + (t79 * t102 - t100) * rSges(5,1) + (-t79 * t103 - t99) * rSges(5,2) + t96) + g(3) * (-t113 * t79 + t106) + (g(3) * (rSges(5,1) * t87 - rSges(5,2) * t84 + pkin(3)) + t111 * t113) * t78) - m(6) * (g(1) * (t64 * rSges(6,1) - t63 * rSges(6,2) + t93) + g(2) * (t62 * rSges(6,1) - t61 * rSges(6,2) + t91) + g(3) * (-t79 * rSges(6,3) + t94) + (g(3) * (rSges(6,1) * t77 - rSges(6,2) * t76) + t111 * (rSges(6,3) - t83)) * t78) - m(7) * (g(1) * (t112 * t63 + t114 * t64 + t93) + g(2) * (t112 * t61 + t114 * t62 + t91) + g(3) * (-t79 * rSges(7,2) + t94) + (g(3) * (t112 * t76 + t114 * t77) + t111 * (rSges(7,2) - t83)) * t78);
U  = t1;
