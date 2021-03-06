% Calculate kinetic energy for
% S5RPRRR5
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
%   pkin=[a2,a3,a4,a5,d1,d3,d4,d5,theta2]';
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
% Datum: 2020-01-03 11:54
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S5RPRRR5_energykin_floatb_twist_slag_vp1(qJ, qJD, V_base, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(6,1),zeros(9,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRR5_energykin_floatb_twist_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRR5_energykin_floatb_twist_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S5RPRRR5_energykin_floatb_twist_slag_vp1: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RPRRR5_energykin_floatb_twist_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPRRR5_energykin_floatb_twist_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RPRRR5_energykin_floatb_twist_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RPRRR5_energykin_floatb_twist_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2020-01-03 11:53:44
% EndTime: 2020-01-03 11:53:46
% DurationCPUTime: 1.84s
% Computational Cost: add. (1175->230), mult. (760->311), div. (0->0), fcn. (538->10), ass. (0->118)
t154 = qJ(4) + qJ(5);
t148 = cos(t154);
t147 = sin(t154);
t191 = Icges(6,4) * t147;
t113 = Icges(6,2) * t148 + t191;
t190 = Icges(6,4) * t148;
t114 = Icges(6,1) * t147 + t190;
t146 = V_base(4) + qJD(1);
t141 = qJD(3) + t146;
t153 = qJ(1) + pkin(9);
t145 = qJ(3) + t153;
t139 = sin(t145);
t140 = cos(t145);
t169 = -Icges(6,2) * t147 + t190;
t73 = -Icges(6,6) * t140 + t139 * t169;
t74 = -Icges(6,6) * t139 - t140 * t169;
t171 = Icges(6,1) * t148 - t191;
t75 = -Icges(6,5) * t140 + t139 * t171;
t76 = -Icges(6,5) * t139 - t140 * t171;
t189 = -qJD(4) - qJD(5);
t91 = t139 * t189 + V_base(6);
t92 = t140 * t189 + V_base(5);
t207 = (t113 * t147 - t114 * t148) * t141 + (t147 * t73 - t148 * t75) * t92 + (t147 * t74 - t148 * t76) * t91;
t116 = -qJD(4) * t139 + V_base(6);
t117 = -qJD(4) * t140 + V_base(5);
t157 = cos(qJ(4));
t155 = sin(qJ(4));
t193 = Icges(5,4) * t155;
t126 = Icges(5,2) * t157 + t193;
t192 = Icges(5,4) * t157;
t129 = Icges(5,1) * t155 + t192;
t170 = -Icges(5,2) * t155 + t192;
t81 = -Icges(5,6) * t140 + t139 * t170;
t82 = -Icges(5,6) * t139 - t140 * t170;
t172 = Icges(5,1) * t157 - t193;
t83 = -Icges(5,5) * t140 + t139 * t172;
t84 = -Icges(5,5) * t139 - t140 * t172;
t206 = (t126 * t155 - t129 * t157) * t141 + (t155 * t81 - t157 * t83) * t117 + (t155 * t82 - t157 * t84) * t116;
t156 = sin(qJ(1));
t203 = pkin(1) * t156;
t158 = cos(qJ(1));
t202 = pkin(1) * t158;
t201 = pkin(2) * t146;
t200 = pkin(4) * t155;
t199 = pkin(4) * t157;
t198 = -pkin(5) - qJ(2);
t196 = Icges(2,4) * t158;
t144 = cos(t153);
t195 = Icges(3,4) * t144;
t194 = Icges(4,4) * t140;
t188 = -pkin(6) + t198;
t187 = t146 * t203 + V_base(3);
t186 = V_base(6) * pkin(5) + V_base(2);
t183 = qJD(2) + V_base(1);
t143 = sin(t153);
t182 = t143 * t201 + t187;
t181 = V_base(6) * qJ(2) + t146 * t202 + t186;
t180 = -pkin(2) * t143 - t203;
t179 = -pkin(2) * t144 - t202;
t178 = rSges(5,1) * t157 - rSges(5,2) * t155;
t177 = rSges(6,1) * t148 - rSges(6,2) * t147;
t168 = Icges(5,5) * t157 - Icges(5,6) * t155;
t167 = Icges(6,5) * t148 - Icges(6,6) * t147;
t164 = V_base(6) * pkin(6) + t144 * t201 + t181;
t163 = -(Icges(6,5) * t147 + Icges(6,6) * t148) * t141 - (-Icges(6,3) * t140 + t139 * t167) * t92 - (-Icges(6,3) * t139 - t140 * t167) * t91;
t162 = -t116 * (-Icges(5,3) * t139 - t140 * t168) - t117 * (-Icges(5,3) * t140 + t139 * t168) - (Icges(5,5) * t155 + Icges(5,6) * t157) * t141;
t102 = t139 * pkin(3) - t140 * pkin(7);
t161 = t141 * t102 + t188 * V_base(5) + t182;
t103 = -t140 * pkin(3) - t139 * pkin(7);
t160 = (-t102 + t180) * V_base(6) + t183 + (t103 + t179) * V_base(5);
t150 = Icges(2,4) * t156;
t138 = Icges(3,4) * t143;
t137 = Icges(4,4) * t139;
t134 = -rSges(2,1) * t158 + rSges(2,2) * t156;
t133 = rSges(2,1) * t156 + rSges(2,2) * t158;
t132 = rSges(5,1) * t155 + rSges(5,2) * t157;
t131 = -Icges(2,1) * t158 + t150;
t130 = Icges(2,1) * t156 + t196;
t128 = Icges(2,2) * t156 - t196;
t127 = Icges(2,2) * t158 + t150;
t120 = -V_base(5) * rSges(1,1) + V_base(4) * rSges(1,2) + V_base(3);
t119 = V_base(6) * rSges(1,1) - V_base(4) * rSges(1,3) + V_base(2);
t118 = -V_base(6) * rSges(1,2) + V_base(5) * rSges(1,3) + V_base(1);
t115 = rSges(6,1) * t147 + rSges(6,2) * t148;
t111 = -rSges(3,1) * t144 + rSges(3,2) * t143;
t110 = rSges(3,1) * t143 + rSges(3,2) * t144;
t109 = -Icges(3,1) * t144 + t138;
t108 = Icges(3,1) * t143 + t195;
t107 = Icges(3,2) * t143 - t195;
t106 = Icges(3,2) * t144 + t138;
t101 = -rSges(4,1) * t140 + rSges(4,2) * t139;
t100 = rSges(4,1) * t139 + rSges(4,2) * t140;
t99 = -Icges(4,1) * t140 + t137;
t98 = Icges(4,1) * t139 + t194;
t97 = Icges(4,2) * t139 - t194;
t96 = Icges(4,2) * t140 + t137;
t89 = V_base(6) * rSges(2,3) - t134 * t146 + t186;
t88 = t133 * t146 + V_base(3) + (-rSges(2,3) - pkin(5)) * V_base(5);
t87 = -t133 * V_base(6) + t134 * V_base(5) + V_base(1);
t86 = -rSges(5,3) * t139 - t140 * t178;
t85 = -rSges(5,3) * t140 + t139 * t178;
t78 = -rSges(6,3) * t139 - t140 * t177;
t77 = -rSges(6,3) * t140 + t139 * t177;
t70 = -pkin(8) * t139 - t140 * t199;
t69 = -pkin(8) * t140 + t139 * t199;
t68 = V_base(6) * rSges(3,3) - t111 * t146 + t181;
t67 = t110 * t146 + (-rSges(3,3) + t198) * V_base(5) + t187;
t66 = -t110 * V_base(6) + t111 * V_base(5) + (-t156 * V_base(6) - t158 * V_base(5)) * pkin(1) + t183;
t65 = V_base(6) * rSges(4,3) - t101 * t141 + t164;
t64 = t100 * t141 + (-rSges(4,3) + t188) * V_base(5) + t182;
t63 = (-t100 + t180) * V_base(6) + (t101 + t179) * V_base(5) + t183;
t62 = t116 * t132 + (-t103 - t86) * t141 + t164;
t61 = -t117 * t132 + t141 * t85 + t161;
t60 = -t116 * t85 + t117 * t86 + t160;
t59 = t116 * t200 + t115 * t91 + (-t103 - t70 - t78) * t141 + t164;
t58 = -t117 * t200 - t115 * t92 + (t69 + t77) * t141 + t161;
t57 = -t116 * t69 + t117 * t70 - t77 * t91 + t78 * t92 + t160;
t1 = m(1) * (t118 ^ 2 + t119 ^ 2 + t120 ^ 2) / 0.2e1 + m(2) * (t87 ^ 2 + t88 ^ 2 + t89 ^ 2) / 0.2e1 + m(3) * (t66 ^ 2 + t67 ^ 2 + t68 ^ 2) / 0.2e1 + m(4) * (t63 ^ 2 + t64 ^ 2 + t65 ^ 2) / 0.2e1 + m(5) * (t60 ^ 2 + t61 ^ 2 + t62 ^ 2) / 0.2e1 + t117 * (-t206 * t139 + t162 * t140) / 0.2e1 + t116 * (t162 * t139 + t206 * t140) / 0.2e1 + m(6) * (t57 ^ 2 + t58 ^ 2 + t59 ^ 2) / 0.2e1 + t92 * (-t207 * t139 + t163 * t140) / 0.2e1 + t91 * (t163 * t139 + t207 * t140) / 0.2e1 + ((t155 * t83 + t157 * t81) * t117 + (t155 * t84 + t157 * t82) * t116 + (t147 * t75 + t148 * t73) * t92 + (t147 * t76 + t148 * t74) * t91 + (t113 * t148 + t114 * t147 + t126 * t157 + t129 * t155 + Icges(4,3)) * t141) * t141 / 0.2e1 + ((t107 * t144 + t109 * t143 + t128 * t158 + t131 * t156 + t139 * t99 + t140 * t97 + Icges(1,6)) * V_base(6) + (t106 * t144 + t108 * t143 + t127 * t158 + t130 * t156 + t139 * t98 + t140 * t96 + Icges(1,2)) * V_base(5)) * V_base(5) / 0.2e1 + ((t107 * t143 - t109 * t144 + t128 * t156 - t131 * t158 + t139 * t97 - t140 * t99 + Icges(1,3)) * V_base(6) + (t106 * t143 - t108 * t144 + t127 * t156 - t130 * t158 + t139 * t96 - t140 * t98 + Icges(1,6)) * V_base(5)) * V_base(6) / 0.2e1 + t141 * V_base(6) * (-Icges(4,5) * t140 + Icges(4,6) * t139) + t141 * V_base(5) * (Icges(4,5) * t139 + Icges(4,6) * t140) + ((-Icges(2,5) * t158 - Icges(3,5) * t144 + Icges(2,6) * t156 + Icges(3,6) * t143) * V_base(6) + (Icges(2,5) * t156 + Icges(3,5) * t143 + Icges(2,6) * t158 + Icges(3,6) * t144) * V_base(5) + (Icges(2,3) / 0.2e1 + Icges(3,3) / 0.2e1) * t146) * t146 + (Icges(1,4) * V_base(5) + Icges(1,5) * V_base(6) + Icges(1,1) * V_base(4) / 0.2e1) * V_base(4);
T = t1;
