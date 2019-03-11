% Calculate potential energy for
% S6PRRRPR5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d2,d3,d4,d6,theta1,theta5]';
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
% Datum: 2019-03-08 23:30
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S6PRRRPR5_energypot_fixb_slag_vp1(qJ, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(13,1),zeros(7,1),zeros(7,3)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRPR5_energypot_fixb_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRRRPR5_energypot_fixb_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6PRRRPR5_energypot_fixb_slag_vp1: pkin has to be [13x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6PRRRPR5_energypot_fixb_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6PRRRPR5_energypot_fixb_slag_vp1: rSges has to be [7x3] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 23:22:53
% EndTime: 2019-03-08 23:22:54
% DurationCPUTime: 0.57s
% Computational Cost: add. (526->135), mult. (1191->191), div. (0->0), fcn. (1486->16), ass. (0->63)
t144 = sin(pkin(7));
t147 = cos(pkin(7));
t148 = cos(pkin(6));
t145 = sin(pkin(6));
t156 = cos(qJ(2));
t173 = t145 * t156;
t124 = -t144 * t173 + t148 * t147;
t143 = sin(pkin(12));
t146 = cos(pkin(12));
t153 = sin(qJ(2));
t170 = t148 * t156;
t127 = -t143 * t170 - t146 * t153;
t175 = t145 * t147;
t117 = -t127 * t144 + t143 * t175;
t184 = pkin(10) + rSges(5,3);
t183 = pkin(11) + rSges(7,3);
t182 = cos(qJ(3));
t125 = -t143 * t153 + t146 * t170;
t116 = -t125 * t144 - t146 * t175;
t151 = sin(qJ(4));
t181 = t116 * t151;
t180 = t117 * t151;
t179 = t124 * t151;
t177 = t143 * t145;
t176 = t145 * t146;
t174 = t145 * t153;
t171 = t148 * t153;
t169 = t148 * pkin(8) + qJ(1);
t168 = t146 * pkin(1) + pkin(8) * t177;
t165 = t144 * t182;
t164 = t147 * t182;
t163 = t145 * t165;
t128 = -t143 * t171 + t146 * t156;
t162 = t128 * pkin(2) + t117 * pkin(9) + t168;
t161 = pkin(2) * t174 + t124 * pkin(9) + t169;
t152 = sin(qJ(3));
t106 = -t127 * t164 + t128 * t152 - t143 * t163;
t107 = t128 * t182 + (t127 * t147 + t144 * t177) * t152;
t155 = cos(qJ(4));
t136 = pkin(4) * t155 + pkin(3);
t149 = -qJ(5) - pkin(10);
t160 = pkin(4) * t180 - t106 * t149 + t107 * t136 + t162;
t114 = -t148 * t165 + t152 * t174 - t164 * t173;
t115 = t148 * t144 * t152 + (t147 * t152 * t156 + t182 * t153) * t145;
t159 = pkin(4) * t179 - t114 * t149 + t115 * t136 + t161;
t126 = t143 * t156 + t146 * t171;
t139 = t143 * pkin(1);
t158 = t126 * pkin(2) - pkin(8) * t176 + t116 * pkin(9) + t139;
t104 = -t125 * t164 + t126 * t152 + t146 * t163;
t105 = t126 * t182 + (t125 * t147 - t144 * t176) * t152;
t157 = pkin(4) * t181 - t104 * t149 + t105 * t136 + t158;
t154 = cos(qJ(6));
t150 = sin(qJ(6));
t142 = qJ(4) + pkin(13);
t138 = cos(t142);
t137 = sin(t142);
t101 = t115 * t138 + t124 * t137;
t100 = t115 * t137 - t124 * t138;
t97 = t107 * t138 + t117 * t137;
t96 = t107 * t137 - t117 * t138;
t95 = t105 * t138 + t116 * t137;
t94 = t105 * t137 - t116 * t138;
t1 = -m(1) * (g(1) * rSges(1,1) + g(2) * rSges(1,2) + g(3) * rSges(1,3)) - m(2) * (g(1) * (rSges(2,1) * t146 - rSges(2,2) * t143) + g(2) * (rSges(2,1) * t143 + rSges(2,2) * t146) + g(3) * (qJ(1) + rSges(2,3))) - m(3) * (g(1) * (rSges(3,1) * t128 + rSges(3,2) * t127 + t168) + g(2) * (t126 * rSges(3,1) + t125 * rSges(3,2) + t139) + g(3) * (t148 * rSges(3,3) + t169) + (g(1) * rSges(3,3) * t143 + g(3) * (rSges(3,1) * t153 + rSges(3,2) * t156) + g(2) * (-rSges(3,3) - pkin(8)) * t146) * t145) - m(4) * (g(1) * (rSges(4,1) * t107 - rSges(4,2) * t106 + rSges(4,3) * t117 + t162) + g(2) * (rSges(4,1) * t105 - rSges(4,2) * t104 + rSges(4,3) * t116 + t158) + g(3) * (t115 * rSges(4,1) - t114 * rSges(4,2) + t124 * rSges(4,3) + t161)) - m(5) * (g(1) * (t107 * pkin(3) + (t107 * t155 + t180) * rSges(5,1) + (-t107 * t151 + t117 * t155) * rSges(5,2) + t184 * t106 + t162) + g(2) * (t105 * pkin(3) + (t105 * t155 + t181) * rSges(5,1) + (-t105 * t151 + t116 * t155) * rSges(5,2) + t184 * t104 + t158) + g(3) * (t115 * pkin(3) + (t115 * t155 + t179) * rSges(5,1) + (-t115 * t151 + t124 * t155) * rSges(5,2) + t184 * t114 + t161)) - m(6) * (g(1) * (rSges(6,1) * t97 - rSges(6,2) * t96 + rSges(6,3) * t106 + t160) + g(2) * (rSges(6,1) * t95 - rSges(6,2) * t94 + rSges(6,3) * t104 + t157) + g(3) * (t101 * rSges(6,1) - t100 * rSges(6,2) + t114 * rSges(6,3) + t159)) - m(7) * (g(1) * (t97 * pkin(5) + (t106 * t150 + t154 * t97) * rSges(7,1) + (t106 * t154 - t150 * t97) * rSges(7,2) + t183 * t96 + t160) + g(2) * (t95 * pkin(5) + (t104 * t150 + t154 * t95) * rSges(7,1) + (t104 * t154 - t150 * t95) * rSges(7,2) + t183 * t94 + t157) + g(3) * (t101 * pkin(5) + (t101 * t154 + t114 * t150) * rSges(7,1) + (-t101 * t150 + t114 * t154) * rSges(7,2) + t183 * t100 + t159));
U  = t1;
