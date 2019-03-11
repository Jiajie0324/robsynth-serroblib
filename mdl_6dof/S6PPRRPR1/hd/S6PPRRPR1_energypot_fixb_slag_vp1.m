% Calculate potential energy for
% S6PPRRPR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d3,d4,d6,theta1,theta2,theta5]';
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
% Datum: 2019-03-08 18:48
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S6PPRRPR1_energypot_fixb_slag_vp1(qJ, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(13,1),zeros(7,1),zeros(7,3)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PPRRPR1_energypot_fixb_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PPRRPR1_energypot_fixb_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6PPRRPR1_energypot_fixb_slag_vp1: pkin has to be [13x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6PPRRPR1_energypot_fixb_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6PPRRPR1_energypot_fixb_slag_vp1: rSges has to be [7x3] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 18:45:12
% EndTime: 2019-03-08 18:45:12
% DurationCPUTime: 0.53s
% Computational Cost: add. (563->128), mult. (1388->178), div. (0->0), fcn. (1753->16), ass. (0->61)
t131 = sin(pkin(7));
t136 = cos(pkin(7));
t137 = cos(pkin(6));
t132 = sin(pkin(6));
t134 = cos(pkin(12));
t163 = t132 * t134;
t148 = -t131 * t163 + t136 * t137;
t129 = sin(pkin(12));
t135 = cos(pkin(11));
t130 = sin(pkin(11));
t164 = t130 * t137;
t112 = -t129 * t135 - t134 * t164;
t161 = t132 * t136;
t149 = -t112 * t131 + t130 * t161;
t172 = rSges(5,3) + pkin(9);
t171 = cos(qJ(3));
t170 = cos(qJ(4));
t169 = qJ(5) + rSges(6,3);
t168 = pkin(10) + qJ(5) + rSges(7,3);
t166 = t129 * t132;
t165 = t130 * t132;
t162 = t132 * t135;
t160 = t135 * t137;
t158 = t137 * qJ(2) + qJ(1);
t157 = t135 * pkin(1) + qJ(2) * t165;
t154 = t131 * t171;
t153 = t136 * t171;
t152 = t132 * t154;
t127 = pkin(13) + qJ(6);
t122 = sin(t127);
t123 = cos(t127);
t133 = cos(pkin(13));
t151 = rSges(7,1) * t123 - rSges(7,2) * t122 + pkin(5) * t133 + pkin(4);
t110 = -t129 * t130 + t134 * t160;
t150 = -t110 * t131 - t135 * t161;
t113 = -t129 * t164 + t134 * t135;
t147 = t113 * pkin(2) + pkin(8) * t149 + t157;
t128 = sin(pkin(13));
t146 = rSges(7,1) * t122 + rSges(7,2) * t123 + pkin(5) * t128 + pkin(9);
t140 = sin(qJ(3));
t97 = t113 * t171 + (t112 * t136 + t131 * t165) * t140;
t145 = t97 * pkin(3) + t147;
t144 = pkin(2) * t166 + pkin(8) * t148 + t158;
t104 = t137 * t131 * t140 + (t134 * t136 * t140 + t171 * t129) * t132;
t143 = t104 * pkin(3) + t144;
t111 = t129 * t160 + t130 * t134;
t125 = t130 * pkin(1);
t142 = t111 * pkin(2) + t150 * pkin(8) - qJ(2) * t162 + t125;
t95 = t111 * t171 + (t110 * t136 - t131 * t162) * t140;
t141 = t95 * pkin(3) + t142;
t139 = sin(qJ(4));
t103 = -t137 * t154 + t140 * t166 - t153 * t163;
t99 = t104 * t170 + t148 * t139;
t98 = t104 * t139 - t148 * t170;
t96 = -t112 * t153 + t113 * t140 - t130 * t152;
t94 = -t110 * t153 + t111 * t140 + t135 * t152;
t91 = t149 * t139 + t97 * t170;
t90 = t139 * t97 - t149 * t170;
t89 = t150 * t139 + t95 * t170;
t88 = t139 * t95 - t150 * t170;
t1 = -m(1) * (g(1) * rSges(1,1) + g(2) * rSges(1,2) + g(3) * rSges(1,3)) - m(2) * (g(1) * (rSges(2,1) * t135 - rSges(2,2) * t130) + g(2) * (rSges(2,1) * t130 + rSges(2,2) * t135) + g(3) * (qJ(1) + rSges(2,3))) - m(3) * (g(1) * (rSges(3,1) * t113 + rSges(3,2) * t112 + t157) + g(2) * (rSges(3,1) * t111 + rSges(3,2) * t110 + t125) + g(3) * (rSges(3,3) * t137 + t158) + (g(1) * rSges(3,3) * t130 + g(3) * (rSges(3,1) * t129 + rSges(3,2) * t134) + g(2) * (-rSges(3,3) - qJ(2)) * t135) * t132) - m(4) * (g(1) * (t97 * rSges(4,1) - t96 * rSges(4,2) + t149 * rSges(4,3) + t147) + g(2) * (t95 * rSges(4,1) - t94 * rSges(4,2) + t150 * rSges(4,3) + t142) + g(3) * (t104 * rSges(4,1) - t103 * rSges(4,2) + t148 * rSges(4,3) + t144)) - m(5) * (g(1) * (rSges(5,1) * t91 - rSges(5,2) * t90 + t172 * t96 + t145) + g(2) * (rSges(5,1) * t89 - rSges(5,2) * t88 + t172 * t94 + t141) + g(3) * (rSges(5,1) * t99 - rSges(5,2) * t98 + t172 * t103 + t143)) - m(6) * (g(1) * (t91 * pkin(4) + t96 * pkin(9) + (t128 * t96 + t133 * t91) * rSges(6,1) + (-t128 * t91 + t133 * t96) * rSges(6,2) + t169 * t90 + t145) + g(2) * (t89 * pkin(4) + t94 * pkin(9) + (t128 * t94 + t133 * t89) * rSges(6,1) + (-t128 * t89 + t133 * t94) * rSges(6,2) + t169 * t88 + t141) + g(3) * (t99 * pkin(4) + t103 * pkin(9) + (t103 * t128 + t133 * t99) * rSges(6,1) + (t103 * t133 - t128 * t99) * rSges(6,2) + t169 * t98 + t143)) - m(7) * (g(1) * (t146 * t96 + t151 * t91 + t168 * t90 + t145) + g(2) * (t146 * t94 + t151 * t89 + t168 * t88 + t141) + g(3) * (t146 * t103 + t151 * t99 + t168 * t98 + t143));
U  = t1;
