% Calculate kinetic energy for
% S6RRPRPR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% V_base [6x1]
%   Base Velocity (twist: stacked translational and angular velocity) in base frame
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d6,theta3,theta5]';
% m_mdh [7x1]
%   mass of all robot links (including the base)
% rSges [7x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% Icges [7x6]
%   inertia of all robot links about their respective center of mass, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertiavector2matrix.m)
% 
% Output:
% T [1x1]
%   kinetic energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 10:11
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6RRPRPR1_energykin_floatb_twist_slag_vp1(qJ, qJD, V_base, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(11,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPR1_energykin_floatb_twist_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRPR1_energykin_floatb_twist_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S6RRPRPR1_energykin_floatb_twist_slag_vp1: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPRPR1_energykin_floatb_twist_slag_vp1: pkin has to be [11x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRPRPR1_energykin_floatb_twist_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RRPRPR1_energykin_floatb_twist_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RRPRPR1_energykin_floatb_twist_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 10:07:49
% EndTime: 2019-03-09 10:07:52
% DurationCPUTime: 3.20s
% Computational Cost: add. (2252->361), mult. (1990->518), div. (0->0), fcn. (1828->12), ass. (0->180)
t339 = Icges(3,3) + Icges(4,3);
t258 = qJ(2) + pkin(10);
t245 = sin(t258);
t247 = cos(t258);
t263 = sin(qJ(2));
t265 = cos(qJ(2));
t338 = Icges(3,5) * t265 + Icges(4,5) * t247 - Icges(3,6) * t263 - Icges(4,6) * t245;
t264 = sin(qJ(1));
t266 = cos(qJ(1));
t321 = Icges(4,4) * t247;
t288 = -Icges(4,2) * t245 + t321;
t176 = -Icges(4,6) * t266 + t264 * t288;
t177 = Icges(4,6) * t264 + t266 * t288;
t322 = Icges(4,4) * t245;
t291 = Icges(4,1) * t247 - t322;
t178 = -Icges(4,5) * t266 + t264 * t291;
t179 = Icges(4,5) * t264 + t266 * t291;
t323 = Icges(3,4) * t265;
t289 = -Icges(3,2) * t263 + t323;
t192 = -Icges(3,6) * t266 + t264 * t289;
t193 = Icges(3,6) * t264 + t266 * t289;
t324 = Icges(3,4) * t263;
t292 = Icges(3,1) * t265 - t324;
t194 = -Icges(3,5) * t266 + t264 * t292;
t195 = Icges(3,5) * t264 + t266 * t292;
t210 = Icges(4,2) * t247 + t322;
t211 = Icges(4,1) * t245 + t321;
t227 = Icges(3,2) * t265 + t324;
t230 = Icges(3,1) * t263 + t323;
t238 = -qJD(2) * t266 + V_base(5);
t239 = qJD(2) * t264 + V_base(4);
t249 = V_base(6) + qJD(1);
t337 = (-t210 * t245 + t211 * t247 - t227 * t263 + t230 * t265) * t249 + (-t177 * t245 + t179 * t247 - t193 * t263 + t195 * t265) * t239 + (-t176 * t245 + t178 * t247 - t192 * t263 + t194 * t265) * t238;
t336 = (Icges(3,5) * t263 + Icges(4,5) * t245 + Icges(3,6) * t265 + Icges(4,6) * t247) * t249 + (t264 * t339 + t338 * t266) * t239 + (t338 * t264 - t266 * t339) * t238;
t330 = pkin(2) * t263;
t329 = pkin(3) * t245;
t328 = t265 * pkin(2);
t260 = cos(pkin(11));
t327 = pkin(5) * t260;
t325 = Icges(2,4) * t264;
t248 = qJ(4) + t258;
t240 = sin(t248);
t320 = Icges(5,4) * t240;
t241 = cos(t248);
t319 = Icges(5,4) * t241;
t318 = t240 * t264;
t317 = t240 * t266;
t257 = pkin(11) + qJ(6);
t244 = sin(t257);
t316 = t244 * t266;
t246 = cos(t257);
t315 = t246 * t266;
t259 = sin(pkin(11));
t314 = t259 * t266;
t313 = t260 * t266;
t312 = t264 * t244;
t311 = t264 * t246;
t310 = t264 * t259;
t309 = t264 * t260;
t172 = -qJ(3) * t266 + t264 * t328;
t236 = t264 * pkin(1) - pkin(7) * t266;
t307 = -t172 - t236;
t306 = pkin(3) * t247;
t304 = qJD(5) * t240;
t303 = qJD(6) * t240;
t302 = V_base(5) * pkin(6) + V_base(1);
t146 = -pkin(8) * t266 + t264 * t306;
t299 = -t146 + t307;
t293 = pkin(4) * t241 + qJ(5) * t240;
t188 = t293 * t264;
t298 = -t188 + t299;
t215 = qJD(4) * t264 + t239;
t297 = qJD(3) * t264 + t238 * t330 + t302;
t296 = rSges(3,1) * t265 - rSges(3,2) * t263;
t295 = rSges(4,1) * t247 - rSges(4,2) * t245;
t294 = rSges(5,1) * t241 - rSges(5,2) * t240;
t290 = Icges(5,1) * t241 - t320;
t287 = -Icges(5,2) * t240 + t319;
t284 = Icges(5,5) * t241 - Icges(5,6) * t240;
t283 = t238 * t329 + t297;
t237 = pkin(1) * t266 + t264 * pkin(7);
t282 = -V_base(4) * pkin(6) + t249 * t237 + V_base(2);
t281 = V_base(4) * t236 - t237 * V_base(5) + V_base(3);
t214 = V_base(5) + (-qJD(2) - qJD(4)) * t266;
t280 = t239 * t172 + t281;
t205 = pkin(4) * t240 - qJ(5) * t241;
t279 = t214 * t205 + t266 * t304 + t283;
t278 = (-Icges(5,3) * t266 + t264 * t284) * t214 + (Icges(5,3) * t264 + t266 * t284) * t215 + (Icges(5,5) * t240 + Icges(5,6) * t241) * t249;
t275 = pkin(9) * t240 + t241 * t327;
t173 = qJ(3) * t264 + t266 * t328;
t274 = -qJD(3) * t266 + t249 * t173 + t282;
t147 = pkin(8) * t264 + t266 * t306;
t273 = t239 * t146 + (-t147 - t173) * t238 + t280;
t272 = -qJD(5) * t241 + t215 * t188 + t273;
t271 = t249 * t147 + (-t329 - t330) * t239 + t274;
t189 = t293 * t266;
t270 = t249 * t189 + t264 * t304 + t271;
t164 = -Icges(5,6) * t266 + t264 * t287;
t165 = Icges(5,6) * t264 + t266 * t287;
t166 = -Icges(5,5) * t266 + t264 * t290;
t167 = Icges(5,5) * t264 + t266 * t290;
t203 = Icges(5,2) * t241 + t320;
t204 = Icges(5,1) * t240 + t319;
t269 = (-t165 * t240 + t167 * t241) * t215 + (-t164 * t240 + t166 * t241) * t214 + (-t203 * t240 + t204 * t241) * t249;
t253 = Icges(2,4) * t266;
t235 = rSges(2,1) * t266 - t264 * rSges(2,2);
t234 = t264 * rSges(2,1) + rSges(2,2) * t266;
t233 = rSges(3,1) * t263 + rSges(3,2) * t265;
t232 = Icges(2,1) * t266 - t325;
t231 = Icges(2,1) * t264 + t253;
t229 = -Icges(2,2) * t264 + t253;
t228 = Icges(2,2) * t266 + t325;
t221 = -V_base(5) * rSges(1,1) + V_base(4) * rSges(1,2) + V_base(3);
t220 = V_base(6) * rSges(1,1) - V_base(4) * rSges(1,3) + V_base(2);
t219 = -V_base(6) * rSges(1,2) + V_base(5) * rSges(1,3) + V_base(1);
t213 = -qJD(6) * t241 + t249;
t212 = rSges(4,1) * t245 + rSges(4,2) * t247;
t206 = rSges(5,1) * t240 + rSges(5,2) * t241;
t201 = t264 * rSges(3,3) + t266 * t296;
t200 = -rSges(3,3) * t266 + t264 * t296;
t199 = t241 * t313 + t310;
t198 = -t241 * t314 + t309;
t197 = t241 * t309 - t314;
t196 = -t241 * t310 - t313;
t187 = t241 * t315 + t312;
t186 = -t241 * t316 + t311;
t185 = t241 * t311 - t316;
t184 = -t241 * t312 - t315;
t183 = t264 * rSges(4,3) + t266 * t295;
t182 = -rSges(4,3) * t266 + t264 * t295;
t181 = t266 * t303 + t215;
t180 = t264 * t303 + t214;
t171 = t264 * rSges(5,3) + t266 * t294;
t170 = -rSges(5,3) * t266 + t264 * t294;
t169 = V_base(5) * rSges(2,3) - t234 * t249 + t302;
t168 = t235 * t249 + V_base(2) + (-rSges(2,3) - pkin(6)) * V_base(4);
t160 = t234 * V_base(4) - t235 * V_base(5) + V_base(3);
t157 = -rSges(6,3) * t241 + (rSges(6,1) * t260 - rSges(6,2) * t259) * t240;
t156 = -Icges(6,5) * t241 + (Icges(6,1) * t260 - Icges(6,4) * t259) * t240;
t155 = -Icges(6,6) * t241 + (Icges(6,4) * t260 - Icges(6,2) * t259) * t240;
t154 = -Icges(6,3) * t241 + (Icges(6,5) * t260 - Icges(6,6) * t259) * t240;
t152 = -rSges(7,3) * t241 + (rSges(7,1) * t246 - rSges(7,2) * t244) * t240;
t151 = -Icges(7,5) * t241 + (Icges(7,1) * t246 - Icges(7,4) * t244) * t240;
t150 = -Icges(7,6) * t241 + (Icges(7,4) * t246 - Icges(7,2) * t244) * t240;
t149 = -Icges(7,3) * t241 + (Icges(7,5) * t246 - Icges(7,6) * t244) * t240;
t145 = -pkin(9) * t241 + t240 * t327;
t142 = t199 * rSges(6,1) + t198 * rSges(6,2) + rSges(6,3) * t317;
t141 = rSges(6,1) * t197 + rSges(6,2) * t196 + rSges(6,3) * t318;
t140 = Icges(6,1) * t199 + Icges(6,4) * t198 + Icges(6,5) * t317;
t139 = Icges(6,1) * t197 + Icges(6,4) * t196 + Icges(6,5) * t318;
t138 = Icges(6,4) * t199 + Icges(6,2) * t198 + Icges(6,6) * t317;
t137 = Icges(6,4) * t197 + Icges(6,2) * t196 + Icges(6,6) * t318;
t136 = Icges(6,5) * t199 + Icges(6,6) * t198 + Icges(6,3) * t317;
t135 = Icges(6,5) * t197 + Icges(6,6) * t196 + Icges(6,3) * t318;
t134 = pkin(5) * t310 + t266 * t275;
t133 = -pkin(5) * t314 + t264 * t275;
t132 = t187 * rSges(7,1) + t186 * rSges(7,2) + rSges(7,3) * t317;
t131 = rSges(7,1) * t185 + rSges(7,2) * t184 + rSges(7,3) * t318;
t130 = Icges(7,1) * t187 + Icges(7,4) * t186 + Icges(7,5) * t317;
t129 = Icges(7,1) * t185 + Icges(7,4) * t184 + Icges(7,5) * t318;
t128 = Icges(7,4) * t187 + Icges(7,2) * t186 + Icges(7,6) * t317;
t127 = Icges(7,4) * t185 + Icges(7,2) * t184 + Icges(7,6) * t318;
t126 = Icges(7,5) * t187 + Icges(7,6) * t186 + Icges(7,3) * t317;
t125 = Icges(7,5) * t185 + Icges(7,6) * t184 + Icges(7,3) * t318;
t124 = t233 * t238 + (-t200 - t236) * t249 + t302;
t123 = t201 * t249 - t233 * t239 + t282;
t122 = t200 * t239 - t201 * t238 + t281;
t121 = t212 * t238 + (-t182 + t307) * t249 + t297;
t120 = t249 * t183 + (-t212 - t330) * t239 + t274;
t119 = t182 * t239 + (-t173 - t183) * t238 + t280;
t118 = t206 * t214 + (-t170 + t299) * t249 + t283;
t117 = t249 * t171 - t215 * t206 + t271;
t116 = t170 * t215 - t171 * t214 + t273;
t115 = t157 * t214 + (-t141 + t298) * t249 + t279;
t114 = t249 * t142 + (-t157 - t205) * t215 + t270;
t113 = t141 * t215 + (-t142 - t189) * t214 + t272;
t112 = -t131 * t213 + t145 * t214 + t152 * t180 + (-t133 + t298) * t249 + t279;
t111 = t213 * t132 + t249 * t134 - t181 * t152 + (-t145 - t205) * t215 + t270;
t110 = t131 * t181 - t132 * t180 + t133 * t215 + (-t134 - t189) * t214 + t272;
t1 = t181 * ((t126 * t317 + t186 * t128 + t187 * t130) * t181 + (t125 * t317 + t186 * t127 + t187 * t129) * t180 + (t149 * t317 + t186 * t150 + t187 * t151) * t213) / 0.2e1 + t180 * ((t126 * t318 + t128 * t184 + t130 * t185) * t181 + (t125 * t318 + t127 * t184 + t129 * t185) * t180 + (t149 * t318 + t150 * t184 + t151 * t185) * t213) / 0.2e1 + t213 * ((-t125 * t180 - t126 * t181 - t149 * t213) * t241 + ((-t128 * t244 + t130 * t246) * t181 + (-t127 * t244 + t129 * t246) * t180 + (-t150 * t244 + t151 * t246) * t213) * t240) / 0.2e1 + m(1) * (t219 ^ 2 + t220 ^ 2 + t221 ^ 2) / 0.2e1 + m(7) * (t110 ^ 2 + t111 ^ 2 + t112 ^ 2) / 0.2e1 + m(6) * (t113 ^ 2 + t114 ^ 2 + t115 ^ 2) / 0.2e1 + m(5) * (t116 ^ 2 + t117 ^ 2 + t118 ^ 2) / 0.2e1 + m(4) * (t119 ^ 2 + t120 ^ 2 + t121 ^ 2) / 0.2e1 + m(3) * (t122 ^ 2 + t123 ^ 2 + t124 ^ 2) / 0.2e1 + m(2) * (t160 ^ 2 + t168 ^ 2 + t169 ^ 2) / 0.2e1 + ((t136 * t318 + t138 * t196 + t140 * t197) * t215 + (t135 * t318 + t137 * t196 + t139 * t197) * t214 + (t154 * t318 + t155 * t196 + t156 * t197) * t249 + t269 * t264 - t278 * t266) * t214 / 0.2e1 + (t278 * t264 + t269 * t266 + (t136 * t317 + t198 * t138 + t199 * t140) * t215 + (t135 * t317 + t198 * t137 + t199 * t139) * t214 + (t154 * t317 + t198 * t155 + t199 * t156) * t249) * t215 / 0.2e1 + (t337 * t264 - t336 * t266) * t238 / 0.2e1 + (t336 * t264 + t337 * t266) * t239 / 0.2e1 + ((-t264 * t228 + t231 * t266 + Icges(1,4)) * V_base(5) + (-t264 * t229 + t266 * t232 + Icges(1,1)) * V_base(4)) * V_base(4) / 0.2e1 + ((t266 * t228 + t264 * t231 + Icges(1,2)) * V_base(5) + (t229 * t266 + t264 * t232 + Icges(1,4)) * V_base(4)) * V_base(5) / 0.2e1 + ((-t135 * t214 - t136 * t215) * t241 + ((-t138 * t259 + t140 * t260) * t215 + (-t137 * t259 + t139 * t260) * t214) * t240 + (t165 * t241 + t167 * t240) * t215 + (t164 * t241 + t166 * t240) * t214 + (t177 * t247 + t179 * t245 + t193 * t265 + t195 * t263) * t239 + (t176 * t247 + t178 * t245 + t192 * t265 + t194 * t263) * t238 + (t247 * t210 + t245 * t211 + t265 * t227 + t263 * t230 + Icges(2,3) + (-t154 + t203) * t241 + (-t155 * t259 + t156 * t260 + t204) * t240) * t249) * t249 / 0.2e1 + t249 * V_base(4) * (Icges(2,5) * t266 - Icges(2,6) * t264) + V_base(5) * t249 * (Icges(2,5) * t264 + Icges(2,6) * t266) + (Icges(1,5) * V_base(4) + Icges(1,6) * V_base(5) + Icges(1,3) * V_base(6) / 0.2e1) * V_base(6);
T  = t1;
