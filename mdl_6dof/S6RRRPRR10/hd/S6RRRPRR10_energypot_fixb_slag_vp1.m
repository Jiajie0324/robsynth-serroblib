% Calculate potential energy for
% S6RRRPRR10
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d5,d6]';
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
% Datum: 2019-03-09 19:23
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S6RRRPRR10_energypot_fixb_slag_vp1(qJ, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(10,1),zeros(7,1),zeros(7,3)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRR10_energypot_fixb_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRPRR10_energypot_fixb_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPRR10_energypot_fixb_slag_vp1: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRPRR10_energypot_fixb_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RRRPRR10_energypot_fixb_slag_vp1: rSges has to be [7x3] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 19:15:31
% EndTime: 2019-03-09 19:15:32
% DurationCPUTime: 0.57s
% Computational Cost: add. (206->114), mult. (362->146), div. (0->0), fcn. (388->10), ass. (0->40)
t81 = sin(qJ(1));
t85 = cos(qJ(1));
t110 = g(1) * t85 + g(2) * t81;
t84 = cos(qJ(2));
t107 = g(3) * t84;
t106 = -rSges(6,3) - pkin(9);
t80 = sin(qJ(2));
t105 = t80 * pkin(2) + pkin(6);
t79 = sin(qJ(3));
t83 = cos(qJ(3));
t99 = t81 * t84;
t59 = t79 * t99 + t83 * t85;
t78 = sin(qJ(5));
t104 = t59 * t78;
t98 = t84 * t85;
t61 = t79 * t98 - t81 * t83;
t103 = t61 * t78;
t102 = t78 * t79;
t101 = t80 * t81;
t100 = t80 * t85;
t97 = -rSges(7,3) - pkin(10) - pkin(9);
t96 = t85 * pkin(1) + t81 * pkin(7);
t95 = rSges(5,3) + qJ(4);
t94 = t105 + (pkin(3) * t83 + qJ(4) * t79) * t80;
t93 = pkin(2) * t98 + pkin(8) * t100 + t96;
t62 = t79 * t81 + t83 * t98;
t92 = t62 * pkin(3) + t93;
t91 = g(3) * t94;
t75 = t81 * pkin(1);
t90 = pkin(2) * t99 - t85 * pkin(7) + pkin(8) * t101 + t75;
t60 = -t79 * t85 + t83 * t99;
t89 = t60 * pkin(3) + t90;
t88 = t61 * qJ(4) + t92;
t87 = t59 * qJ(4) + t89;
t82 = cos(qJ(5));
t77 = qJ(5) + qJ(6);
t72 = cos(t77);
t71 = sin(t77);
t70 = pkin(5) * t82 + pkin(4);
t1 = -m(1) * (g(1) * rSges(1,1) + g(2) * rSges(1,2) + g(3) * rSges(1,3)) - m(2) * (g(1) * (rSges(2,1) * t85 - rSges(2,2) * t81) + g(2) * (rSges(2,1) * t81 + rSges(2,2) * t85) + g(3) * (pkin(6) + rSges(2,3))) - m(3) * (g(1) * (rSges(3,3) * t81 + t96) + g(2) * (rSges(3,1) * t99 - rSges(3,2) * t101 + t75) + g(3) * (rSges(3,1) * t80 + rSges(3,2) * t84 + pkin(6)) + (g(1) * (rSges(3,1) * t84 - rSges(3,2) * t80) + g(2) * (-rSges(3,3) - pkin(7))) * t85) - m(4) * (g(1) * (rSges(4,1) * t62 - rSges(4,2) * t61 + rSges(4,3) * t100 + t93) + g(2) * (rSges(4,1) * t60 - rSges(4,2) * t59 + rSges(4,3) * t101 + t90) + g(3) * ((-rSges(4,3) - pkin(8)) * t84 + (rSges(4,1) * t83 - rSges(4,2) * t79) * t80 + t105)) - m(5) * (g(1) * (rSges(5,1) * t62 + rSges(5,2) * t100 + t95 * t61 + t92) + g(2) * (rSges(5,1) * t60 + rSges(5,2) * t101 + t95 * t59 + t89) + g(3) * ((-rSges(5,2) - pkin(8)) * t84 + (rSges(5,1) * t83 + rSges(5,3) * t79) * t80 + t94)) - m(6) * (g(1) * (t62 * pkin(4) + (t62 * t82 + t103) * rSges(6,1) + (t61 * t82 - t62 * t78) * rSges(6,2) + t88) + g(2) * (t60 * pkin(4) + (t60 * t82 + t104) * rSges(6,1) + (t59 * t82 - t60 * t78) * rSges(6,2) + t87) + t91 + (-pkin(8) - t106) * t107 + (g(3) * (t83 * pkin(4) + (t82 * t83 + t102) * rSges(6,1) + (-t78 * t83 + t79 * t82) * rSges(6,2)) + t110 * t106) * t80) - m(7) * (g(1) * (t62 * t70 + pkin(5) * t103 + (t61 * t71 + t62 * t72) * rSges(7,1) + (t61 * t72 - t62 * t71) * rSges(7,2) + t88) + g(2) * (t60 * t70 + pkin(5) * t104 + (t59 * t71 + t60 * t72) * rSges(7,1) + (t59 * t72 - t60 * t71) * rSges(7,2) + t87) + t91 + (-pkin(8) - t97) * t107 + (g(3) * (t83 * t70 + pkin(5) * t102 + (t71 * t79 + t72 * t83) * rSges(7,1) + (-t71 * t83 + t72 * t79) * rSges(7,2)) + t110 * t97) * t80);
U  = t1;
