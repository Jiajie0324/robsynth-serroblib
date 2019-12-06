% Calculate kinetic energy for
% S5RRPPR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% V_base [6x1]
%   Base Velocity (twist: stacked translational and angular velocity) in base frame
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d5,theta3,theta4]';
% m_mdh [6x1]
%   mass of all robot links (including the base)
% rSges [6x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% Icges [6x6]
%   inertia of all robot links about their respective center of mass, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertiavector2matrix.m)
% 
% Output:
% T [1x1]
%   kinetic energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 18:20
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S5RRPPR2_energykin_floatb_twist_slag_vp1(qJ, qJD, V_base, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(6,1),zeros(9,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPPR2_energykin_floatb_twist_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPPR2_energykin_floatb_twist_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S5RRPPR2_energykin_floatb_twist_slag_vp1: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRPPR2_energykin_floatb_twist_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRPPR2_energykin_floatb_twist_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RRPPR2_energykin_floatb_twist_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RRPPR2_energykin_floatb_twist_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:20:01
% EndTime: 2019-12-05 18:20:02
% DurationCPUTime: 1.70s
% Computational Cost: add. (1211->254), mult. (946->339), div. (0->0), fcn. (780->10), ass. (0->122)
t161 = qJ(1) + qJ(2);
t154 = pkin(8) + t161;
t151 = sin(t154);
t152 = cos(t154);
t156 = sin(t161);
t157 = cos(t161);
t212 = -Icges(3,5) * t156 - Icges(4,5) * t151 - Icges(3,6) * t157 - Icges(4,6) * t152;
t211 = Icges(3,5) * t157 + Icges(4,5) * t152 - Icges(3,6) * t156 - Icges(4,6) * t151;
t162 = sin(pkin(9));
t163 = cos(pkin(9));
t197 = Icges(4,4) * t152;
t195 = Icges(5,4) * t163;
t177 = -Icges(5,2) * t162 + t195;
t87 = Icges(5,6) * t152 - t177 * t151;
t196 = Icges(5,4) * t162;
t178 = Icges(5,1) * t163 - t196;
t89 = Icges(5,5) * t152 - t178 * t151;
t210 = -Icges(4,1) * t151 - t162 * t87 + t163 * t89 - t197;
t198 = Icges(4,4) * t151;
t88 = Icges(5,6) * t151 + t177 * t152;
t90 = Icges(5,5) * t151 + t178 * t152;
t209 = Icges(4,1) * t152 - t162 * t88 + t163 * t90 - t198;
t208 = -pkin(5) - pkin(6);
t165 = sin(qJ(1));
t206 = pkin(1) * t165;
t167 = cos(qJ(1));
t205 = pkin(1) * t167;
t204 = pkin(2) * t156;
t203 = pkin(2) * t157;
t202 = Icges(2,4) * t165;
t201 = Icges(2,4) * t167;
t200 = Icges(3,4) * t156;
t199 = Icges(3,4) * t157;
t194 = t151 * t162;
t193 = t152 * t162;
t164 = sin(qJ(5));
t192 = t163 * t164;
t166 = cos(qJ(5));
t191 = t163 * t166;
t190 = qJD(5) * t162;
t189 = -qJ(3) + t208;
t188 = V_base(6) * pkin(5) + V_base(2);
t155 = V_base(4) + qJD(1);
t116 = pkin(3) * t152 + qJ(4) * t151;
t185 = -t116 - t203;
t184 = V_base(5) * t205 + V_base(6) * t206 + V_base(1);
t153 = qJD(2) + t155;
t183 = pkin(4) * t163 + pkin(7) * t162;
t182 = rSges(5,1) * t163 - rSges(5,2) * t162;
t181 = -t155 * t206 + V_base(3);
t176 = Icges(5,5) * t163 - Icges(5,6) * t162;
t133 = Icges(5,2) * t163 + t196;
t134 = Icges(5,1) * t162 + t195;
t175 = t133 * t162 - t134 * t163;
t174 = V_base(5) * t203 + V_base(6) * t204 + qJD(3) + t184;
t114 = -pkin(3) * t151 + qJ(4) * t152;
t173 = qJD(4) * t151 + t153 * t114 + t181;
t172 = V_base(6) * pkin(6) - t155 * t205 + t188;
t171 = V_base(5) * t116 + t174;
t170 = V_base(6) * qJ(3) + t172;
t169 = qJD(4) * t152 + t170;
t168 = (Icges(5,5) * t162 + Icges(5,6) * t163) * t153 + (Icges(5,3) * t152 - t176 * t151) * V_base(5) + (Icges(5,3) * t151 + t176 * t152) * V_base(6);
t144 = rSges(2,1) * t167 - t165 * rSges(2,2);
t143 = -t165 * rSges(2,1) - rSges(2,2) * t167;
t142 = Icges(2,1) * t167 - t202;
t141 = -Icges(2,1) * t165 - t201;
t140 = -Icges(2,2) * t165 + t201;
t139 = -Icges(2,2) * t167 - t202;
t136 = pkin(4) * t162 - pkin(7) * t163;
t135 = rSges(5,1) * t162 + rSges(5,2) * t163;
t131 = -qJD(5) * t163 + t153;
t130 = -V_base(5) * rSges(1,1) + V_base(4) * rSges(1,2) + V_base(3);
t129 = V_base(6) * rSges(1,1) - V_base(4) * rSges(1,3) + V_base(2);
t128 = -V_base(6) * rSges(1,2) + V_base(5) * rSges(1,3) + V_base(1);
t127 = rSges(3,1) * t157 - rSges(3,2) * t156;
t126 = -rSges(3,1) * t156 - rSges(3,2) * t157;
t125 = Icges(3,1) * t157 - t200;
t124 = -Icges(3,1) * t156 - t199;
t123 = -Icges(3,2) * t156 + t199;
t122 = -Icges(3,2) * t157 - t200;
t119 = -t151 * t190 + V_base(5);
t118 = t152 * t190 + V_base(6);
t117 = rSges(4,1) * t152 - rSges(4,2) * t151;
t115 = -rSges(4,1) * t151 - rSges(4,2) * t152;
t111 = -Icges(4,2) * t151 + t197;
t110 = -Icges(4,2) * t152 - t198;
t106 = -rSges(6,3) * t163 + (rSges(6,1) * t166 - rSges(6,2) * t164) * t162;
t105 = -Icges(6,5) * t163 + (Icges(6,1) * t166 - Icges(6,4) * t164) * t162;
t104 = -Icges(6,6) * t163 + (Icges(6,4) * t166 - Icges(6,2) * t164) * t162;
t103 = -Icges(6,3) * t163 + (Icges(6,5) * t166 - Icges(6,6) * t164) * t162;
t102 = t183 * t152;
t101 = t183 * t151;
t100 = t151 * t164 + t152 * t191;
t99 = t151 * t166 - t152 * t192;
t98 = -t151 * t191 + t152 * t164;
t97 = t151 * t192 + t152 * t166;
t95 = V_base(6) * rSges(2,3) - t144 * t155 + t188;
t94 = t143 * t155 + V_base(3) + (-rSges(2,3) - pkin(5)) * V_base(5);
t93 = -t143 * V_base(6) + t144 * V_base(5) + V_base(1);
t92 = rSges(5,3) * t151 + t182 * t152;
t91 = rSges(5,3) * t152 - t182 * t151;
t84 = V_base(6) * rSges(3,3) - t153 * t127 + t172;
t83 = t126 * t153 + (-rSges(3,3) + t208) * V_base(5) + t181;
t82 = -t126 * V_base(6) + t127 * V_base(5) + t184;
t81 = rSges(6,1) * t100 + rSges(6,2) * t99 + rSges(6,3) * t193;
t80 = rSges(6,1) * t98 + rSges(6,2) * t97 - rSges(6,3) * t194;
t79 = Icges(6,1) * t100 + Icges(6,4) * t99 + Icges(6,5) * t193;
t78 = Icges(6,1) * t98 + Icges(6,4) * t97 - Icges(6,5) * t194;
t77 = Icges(6,4) * t100 + Icges(6,2) * t99 + Icges(6,6) * t193;
t76 = Icges(6,4) * t98 + Icges(6,2) * t97 - Icges(6,6) * t194;
t75 = Icges(6,5) * t100 + Icges(6,6) * t99 + Icges(6,3) * t193;
t74 = Icges(6,5) * t98 + Icges(6,6) * t97 - Icges(6,3) * t194;
t73 = V_base(6) * rSges(4,3) + (-t117 - t203) * t153 + t170;
t72 = (t115 - t204) * t153 + (-rSges(4,3) + t189) * V_base(5) + t181;
t71 = -t115 * V_base(6) + t117 * V_base(5) + t174;
t70 = V_base(6) * t135 + (t185 - t92) * t153 + t169;
t69 = (t91 - t204) * t153 + (-t135 + t189) * V_base(5) + t173;
t68 = t92 * V_base(5) + (-t114 - t91) * V_base(6) + t171;
t67 = t118 * t106 - t131 * t81 + V_base(6) * t136 + (-t102 + t185) * t153 + t169;
t66 = -t106 * t119 + t131 * t80 + (-t101 - t204) * t153 + (-t136 + t189) * V_base(5) + t173;
t65 = t102 * V_base(5) - t118 * t80 + t119 * t81 + (t101 - t114) * V_base(6) + t171;
t1 = m(1) * (t128 ^ 2 + t129 ^ 2 + t130 ^ 2) / 0.2e1 + m(2) * (t93 ^ 2 + t94 ^ 2 + t95 ^ 2) / 0.2e1 + m(3) * (t82 ^ 2 + t83 ^ 2 + t84 ^ 2) / 0.2e1 + m(4) * (t71 ^ 2 + t72 ^ 2 + t73 ^ 2) / 0.2e1 + m(5) * (t68 ^ 2 + t69 ^ 2 + t70 ^ 2) / 0.2e1 + m(6) * (t65 ^ 2 + t66 ^ 2 + t67 ^ 2) / 0.2e1 + t131 * ((-t103 * t131 - t118 * t75 - t119 * t74) * t163 + ((-t104 * t164 + t105 * t166) * t131 + (-t164 * t76 + t166 * t78) * t119 + (-t164 * t77 + t166 * t79) * t118) * t162) / 0.2e1 + t119 * ((-t103 * t194 + t104 * t97 + t105 * t98) * t131 + (-t194 * t74 + t97 * t76 + t98 * t78) * t119 + (-t194 * t75 + t77 * t97 + t79 * t98) * t118) / 0.2e1 + t118 * ((t100 * t105 + t103 * t193 + t104 * t99) * t131 + (t100 * t78 + t193 * t74 + t76 * t99) * t119 + (t100 * t79 + t193 * t75 + t99 * t77) * t118) / 0.2e1 + ((t162 * t90 + t163 * t88 + t211) * V_base(6) + (t162 * t89 + t163 * t87 + t212) * V_base(5) + (t163 * t133 + t162 * t134 + Icges(3,3) + Icges(4,3)) * t153) * t153 / 0.2e1 + (t168 * t152 + (t175 * t151 + t212) * t153 + (-t111 * t152 - t123 * t157 - t125 * t156 - t140 * t167 - t165 * t142 - t209 * t151 + Icges(1,6)) * V_base(6) + (-t152 * t110 - t157 * t122 - t156 * t124 - t167 * t139 - t165 * t141 - t210 * t151 + Icges(1,2)) * V_base(5)) * V_base(5) / 0.2e1 + (t168 * t151 + (-t175 * t152 + t211) * t153 + (-t151 * t111 - t156 * t123 + t157 * t125 - t165 * t140 + t167 * t142 + t209 * t152 + Icges(1,3)) * V_base(6) + (-t110 * t151 - t122 * t156 + t124 * t157 - t165 * t139 + t141 * t167 + t210 * t152 + Icges(1,6)) * V_base(5)) * V_base(6) / 0.2e1 + (Icges(1,4) * V_base(5) + Icges(1,5) * V_base(6) + Icges(1,1) * V_base(4) / 0.2e1) * V_base(4) + ((-Icges(2,5) * t165 - Icges(2,6) * t167) * V_base(5) + (Icges(2,5) * t167 - Icges(2,6) * t165) * V_base(6) + Icges(2,3) * t155 / 0.2e1) * t155;
T = t1;
