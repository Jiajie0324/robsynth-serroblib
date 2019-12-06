% Calculate kinetic energy for
% S5RPRRP3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% V_base [6x1]
%   Base Velocity (twist: stacked translational and angular velocity) in base frame
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d4,theta2]';
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
% Datum: 2019-12-05 18:04
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S5RPRRP3_energykin_floatb_twist_slag_vp1(qJ, qJD, V_base, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(6,1),zeros(8,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRP3_energykin_floatb_twist_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRP3_energykin_floatb_twist_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S5RPRRP3_energykin_floatb_twist_slag_vp1: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPRRP3_energykin_floatb_twist_slag_vp1: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPRRP3_energykin_floatb_twist_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RPRRP3_energykin_floatb_twist_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RPRRP3_energykin_floatb_twist_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:03:05
% EndTime: 2019-12-05 18:03:08
% DurationCPUTime: 2.25s
% Computational Cost: add. (1212->216), mult. (960->285), div. (0->0), fcn. (740->8), ass. (0->115)
t253 = Icges(5,4) + Icges(6,4);
t252 = Icges(5,1) + Icges(6,1);
t251 = Icges(5,2) + Icges(6,2);
t160 = qJ(3) + qJ(4);
t154 = cos(t160);
t250 = t253 * t154;
t153 = sin(t160);
t249 = t253 * t153;
t248 = Icges(5,5) + Icges(6,5);
t247 = Icges(5,6) + Icges(6,6);
t246 = -t251 * t153 + t250;
t245 = t252 * t154 - t249;
t244 = rSges(6,1) + pkin(4);
t159 = qJ(1) + pkin(8);
t150 = sin(t159);
t151 = cos(t159);
t243 = -t246 * t150 + t247 * t151;
t242 = t247 * t150 + t246 * t151;
t241 = -t245 * t150 + t248 * t151;
t240 = t248 * t150 + t245 * t151;
t239 = Icges(5,3) + Icges(6,3);
t238 = t251 * t154 + t249;
t237 = t252 * t153 + t250;
t236 = -t247 * t153 + t248 * t154;
t235 = rSges(6,3) + qJ(5);
t234 = -rSges(6,2) * t153 + t244 * t154;
t131 = qJD(3) * t150 + V_base(6);
t105 = qJD(4) * t150 + t131;
t132 = qJD(3) * t151 + V_base(5);
t106 = qJD(4) * t151 + t132;
t152 = V_base(4) + qJD(1);
t233 = (t242 * t153 - t240 * t154) * t105 + (t243 * t153 - t241 * t154) * t106 + (t238 * t153 - t237 * t154) * t152;
t230 = (t248 * t153 + t247 * t154) * t152 + (-t236 * t150 + t239 * t151) * t106 + (t239 * t150 + t236 * t151) * t105;
t163 = cos(qJ(3));
t161 = sin(qJ(3));
t210 = Icges(4,4) * t161;
t136 = Icges(4,2) * t163 + t210;
t209 = Icges(4,4) * t163;
t139 = Icges(4,1) * t161 + t209;
t181 = -Icges(4,2) * t161 + t209;
t96 = Icges(4,6) * t151 - t150 * t181;
t97 = Icges(4,6) * t150 + t151 * t181;
t184 = Icges(4,1) * t163 - t210;
t98 = Icges(4,5) * t151 - t150 * t184;
t99 = Icges(4,5) * t150 + t151 * t184;
t226 = (t136 * t161 - t139 * t163) * t152 + (t161 * t96 - t163 * t98) * t132 + (t161 * t97 - t163 * t99) * t131;
t162 = sin(qJ(1));
t222 = pkin(1) * t162;
t164 = cos(qJ(1));
t221 = pkin(1) * t164;
t220 = pkin(3) * t161;
t219 = t163 * pkin(3);
t218 = -pkin(5) - qJ(2);
t216 = t234 * t150 - t235 * t151;
t215 = t235 * t150 + t234 * t151;
t214 = Icges(2,4) * t162;
t213 = Icges(2,4) * t164;
t212 = Icges(3,4) * t150;
t211 = Icges(3,4) * t151;
t202 = V_base(6) * pkin(5) + V_base(2);
t118 = t151 * pkin(2) + t150 * pkin(6);
t199 = -t118 - t221;
t198 = rSges(6,2) * t154 + t244 * t153;
t197 = V_base(6) * qJ(2) + t202;
t76 = pkin(7) * t150 + t151 * t219;
t196 = t199 - t76;
t195 = t131 * t220 + t197;
t194 = V_base(5) * t221 + V_base(6) * t222 + qJD(2) + V_base(1);
t193 = rSges(4,1) * t163 - rSges(4,2) * t161;
t192 = rSges(5,1) * t154 - rSges(5,2) * t153;
t178 = Icges(4,5) * t163 - Icges(4,6) * t161;
t170 = (Icges(4,3) * t150 + t151 * t178) * t131 + (Icges(4,3) * t151 - t150 * t178) * t132 + (Icges(4,5) * t161 + Icges(4,6) * t163) * t152;
t117 = -t150 * pkin(2) + t151 * pkin(6);
t169 = t152 * t117 + t218 * V_base(5) + V_base(3);
t168 = -t117 * V_base(6) + V_base(5) * t118 + t194;
t75 = pkin(7) * t151 - t150 * t219;
t167 = -t132 * t220 + t152 * t75 + t169;
t166 = -t131 * t75 + t132 * t76 + t168;
t144 = rSges(2,1) * t164 - rSges(2,2) * t162;
t143 = -rSges(2,1) * t162 - rSges(2,2) * t164;
t142 = rSges(4,1) * t161 + rSges(4,2) * t163;
t141 = Icges(2,1) * t164 - t214;
t140 = -Icges(2,1) * t162 - t213;
t138 = -Icges(2,2) * t162 + t213;
t137 = -Icges(2,2) * t164 - t214;
t130 = -rSges(1,1) * V_base(5) + rSges(1,2) * V_base(4) + V_base(3);
t129 = rSges(1,1) * V_base(6) - rSges(1,3) * V_base(4) + V_base(2);
t128 = -rSges(1,2) * V_base(6) + rSges(1,3) * V_base(5) + V_base(1);
t126 = rSges(5,1) * t153 + rSges(5,2) * t154;
t116 = rSges(3,1) * t151 - rSges(3,2) * t150;
t115 = -rSges(3,1) * t150 - rSges(3,2) * t151;
t114 = Icges(3,1) * t151 - t212;
t113 = -Icges(3,1) * t150 - t211;
t112 = -Icges(3,2) * t150 + t211;
t111 = -Icges(3,2) * t151 - t212;
t103 = rSges(4,3) * t150 + t151 * t193;
t102 = rSges(4,3) * t151 - t150 * t193;
t101 = V_base(6) * rSges(2,3) - t144 * t152 + t202;
t100 = t143 * t152 + V_base(3) + (-rSges(2,3) - pkin(5)) * V_base(5);
t93 = -t143 * V_base(6) + t144 * V_base(5) + V_base(1);
t92 = rSges(5,3) * t150 + t151 * t192;
t90 = rSges(5,3) * t151 - t150 * t192;
t72 = V_base(6) * rSges(3,3) + (-t116 - t221) * t152 + t197;
t71 = V_base(3) + (t115 - t222) * t152 + (-rSges(3,3) + t218) * V_base(5);
t68 = -t115 * V_base(6) + t116 * V_base(5) + t194;
t67 = t131 * t142 + (-t103 + t199) * t152 + t197;
t66 = -t132 * t142 + (t102 - t222) * t152 + t169;
t65 = -t102 * t131 + t103 * t132 + t168;
t64 = t105 * t126 + (t196 - t92) * t152 + t195;
t63 = -t106 * t126 + (t90 - t222) * t152 + t167;
t62 = -t105 * t90 + t106 * t92 + t166;
t61 = qJD(5) * t151 + t198 * t105 + (t196 - t215) * t152 + t195;
t60 = qJD(5) * t150 - t198 * t106 + (-t216 - t222) * t152 + t167;
t59 = t105 * t216 + t106 * t215 + t166;
t1 = m(1) * (t128 ^ 2 + t129 ^ 2 + t130 ^ 2) / 0.2e1 + m(2) * (t100 ^ 2 + t101 ^ 2 + t93 ^ 2) / 0.2e1 + m(3) * (t68 ^ 2 + t71 ^ 2 + t72 ^ 2) / 0.2e1 + m(4) * (t65 ^ 2 + t66 ^ 2 + t67 ^ 2) / 0.2e1 + t132 * (t226 * t150 + t170 * t151) / 0.2e1 + t131 * (t170 * t150 - t226 * t151) / 0.2e1 + m(5) * (t62 ^ 2 + t63 ^ 2 + t64 ^ 2) / 0.2e1 + m(6) * (t59 ^ 2 + t60 ^ 2 + t61 ^ 2) / 0.2e1 + (t230 * t150 - t233 * t151) * t105 / 0.2e1 + (t233 * t150 + t230 * t151) * t106 / 0.2e1 + ((-t112 * t151 - t114 * t150 - t138 * t164 - t141 * t162 + Icges(1,6)) * V_base(6) + (-t151 * t111 - t150 * t113 - t164 * t137 - t162 * t140 + Icges(1,2)) * V_base(5)) * V_base(5) / 0.2e1 + ((-t150 * t112 + t151 * t114 - t162 * t138 + t164 * t141 + Icges(1,3)) * V_base(6) + (-t111 * t150 + t113 * t151 - t137 * t162 + t140 * t164 + Icges(1,6)) * V_base(5)) * V_base(6) / 0.2e1 + ((t161 * t98 + t163 * t96) * t132 + (t161 * t99 + t163 * t97) * t131 + (t241 * t153 + t243 * t154) * t106 + (t240 * t153 + t242 * t154) * t105 + (t163 * t136 + t161 * t139 + t237 * t153 + t238 * t154 + Icges(2,3) + Icges(3,3)) * t152) * t152 / 0.2e1 + t152 * V_base(6) * (Icges(2,5) * t164 + Icges(3,5) * t151 - Icges(2,6) * t162 - Icges(3,6) * t150) + t152 * V_base(5) * (-Icges(2,5) * t162 - Icges(3,5) * t150 - Icges(2,6) * t164 - Icges(3,6) * t151) + (Icges(1,4) * V_base(5) + Icges(1,5) * V_base(6) + Icges(1,1) * V_base(4) / 0.2e1) * V_base(4);
T = t1;
