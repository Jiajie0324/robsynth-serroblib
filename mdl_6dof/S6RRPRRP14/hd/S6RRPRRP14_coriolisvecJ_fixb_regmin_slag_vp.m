% Calculate minimal parameter regressor of coriolis joint torque vector for
% S6RRPRRP14
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d5]';
% 
% Output:
% tauc_reg [6x32]
%   minimal parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 13:11
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S6RRPRRP14_coriolisvecJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP14_coriolisvecJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRP14_coriolisvecJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPRRP14_coriolisvecJ_fixb_regmin_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 13:09:51
% EndTime: 2019-03-09 13:10:10
% DurationCPUTime: 6.90s
% Computational Cost: add. (8029->541), mult. (20291->718), div. (0->0), fcn. (14832->8), ass. (0->256)
t200 = cos(qJ(2));
t193 = sin(pkin(6));
t197 = sin(qJ(2));
t296 = qJD(1) * t197;
t277 = t193 * t296;
t194 = cos(pkin(6));
t297 = qJD(1) * t194;
t283 = pkin(1) * t297;
t301 = -pkin(8) * t277 + t200 * t283;
t285 = qJD(3) - t301;
t196 = sin(qJ(4));
t199 = cos(qJ(4));
t248 = pkin(4) * t199 + pkin(10) * t196;
t358 = t248 * qJD(4) - (-pkin(3) - t248) * t277 + t285;
t182 = qJD(2) + t297;
t195 = sin(qJ(5));
t198 = cos(qJ(5));
t252 = t199 * t277;
t125 = t182 * t195 - t198 * t252;
t298 = qJD(1) * t193;
t276 = t200 * t298;
t311 = t182 * t196;
t130 = t199 * t276 + t311;
t129 = qJD(5) + t130;
t238 = qJD(4) + t277;
t132 = t182 * t199 - t196 * t276;
t79 = t198 * t132 + t195 * t238;
t223 = t238 * t79;
t288 = qJD(5) * t195;
t289 = qJD(4) * t200;
t272 = t193 * t289;
t250 = qJD(1) * t272;
t284 = qJD(1) * qJD(2);
t266 = t193 * t284;
t251 = t197 * t266;
t290 = qJD(4) * t199;
t84 = t182 * t290 - t196 * t250 - t199 * t251;
t320 = t198 * t84;
t227 = -t129 * t288 + t320;
t270 = t198 * t290;
t170 = t200 * t266;
t269 = t199 * t289;
t294 = qJD(2) * t197;
t273 = t196 * t294;
t213 = -t269 + t273;
t210 = t193 * t213;
t291 = qJD(4) * t196;
t271 = t182 * t291;
t207 = -qJD(1) * t210 + t271;
t221 = t198 * t238;
t39 = -qJD(5) * t221 + t132 * t288 - t195 * t170 + t198 * t207;
t319 = t199 * t39;
t357 = (t223 - t227) * t196 - (-t125 + t270) * t129 + t319;
t355 = t358 * t198;
t201 = -pkin(2) - pkin(9);
t349 = qJD(4) * t238;
t282 = pkin(1) * qJD(2) * t194;
t255 = qJD(1) * t282;
t302 = pkin(8) * t251 - t200 * t255;
t105 = -t182 * qJD(3) + t302;
t75 = -pkin(3) * t251 - t105;
t354 = -t201 * t349 + t75;
t286 = pkin(3) * t277 + t285;
t70 = t201 * t182 + t286;
t313 = qJ(3) * t197;
t265 = -pkin(1) - t313;
t352 = t200 * t201;
t115 = (t265 + t352) * t193;
t94 = qJD(1) * t115;
t45 = t196 * t70 + t199 * t94;
t36 = t238 * pkin(10) + t45;
t140 = pkin(8) * t276 + t197 * t283;
t120 = pkin(3) * t276 + t140;
t171 = t182 * qJ(3);
t89 = t171 + t120;
t46 = pkin(4) * t130 - pkin(10) * t132 + t89;
t12 = t195 * t46 + t198 * t36;
t10 = qJ(6) * t129 + t12;
t163 = pkin(2) * t251;
t239 = pkin(9) * t197 - qJ(3) * t200;
t292 = qJD(3) * t197;
t209 = (t239 * qJD(2) - t292) * t193;
t74 = qJD(1) * t209 + t163;
t133 = pkin(8) * t170 + t197 * t255;
t99 = pkin(3) * t170 + t133;
t225 = -t196 * t99 - t199 * t74 - t70 * t290 + t94 * t291;
t16 = pkin(10) * t170 - t225;
t287 = qJD(5) * t198;
t33 = pkin(10) * t271 + t84 * pkin(4) + (-pkin(3) * t294 - pkin(10) * t213) * t298 - t105;
t263 = t195 * t16 - t198 * t33 + t36 * t287 + t46 * t288;
t342 = pkin(5) * t84;
t2 = t263 - t342;
t353 = -t10 * t129 + t2;
t219 = t132 * t238;
t156 = pkin(4) * t196 - pkin(10) * t199 + qJ(3);
t300 = t198 * t196 * t201 + t195 * t156;
t340 = pkin(1) * t197;
t187 = t194 * t340;
t308 = t193 * t200;
t351 = pkin(8) * t308 + t187;
t312 = qJD(5) * t79;
t40 = -t198 * t170 - t195 * t207 + t312;
t180 = pkin(2) * t277;
t118 = t239 * t298 + t180;
t303 = t199 * t118 + t196 * t120;
t55 = pkin(10) * t276 + t303;
t350 = -t156 * t287 - t195 * t358 + t198 * t55 - t201 * t270;
t44 = -t196 * t94 + t199 * t70;
t35 = -t238 * pkin(4) - t44;
t77 = t132 * t195 - t221;
t15 = t77 * pkin(5) - t79 * qJ(6) + t35;
t341 = pkin(10) * t84;
t348 = t129 * t15 - t341;
t309 = t193 * t197;
t184 = pkin(8) * t309;
t278 = -pkin(1) * t200 - pkin(2);
t98 = pkin(3) * t309 + t184 + (-pkin(9) + t278) * t194;
t315 = t199 * t115 + t196 * t98;
t52 = pkin(10) * t309 + t315;
t135 = -t194 * qJ(3) - t351;
t114 = pkin(3) * t308 - t135;
t144 = t194 * t196 + t199 * t308;
t145 = t194 * t199 - t196 * t308;
t59 = pkin(4) * t144 - pkin(10) * t145 + t114;
t236 = t195 * t59 + t198 * t52;
t343 = pkin(3) + pkin(8);
t121 = (t343 * t308 + t187) * qJD(2);
t275 = t193 * t294;
t175 = pkin(2) * t275;
t91 = t175 + t209;
t216 = -t115 * t291 + t196 * t121 + t199 * t91 + t98 * t290;
t293 = qJD(2) * t200;
t274 = t193 * t293;
t24 = pkin(10) * t274 + t216;
t108 = -qJD(4) * t144 + t193 * t273;
t109 = t194 * t290 - t196 * t272 - t199 * t275;
t179 = t200 * t282;
t188 = t194 * qJD(3);
t97 = -t343 * t275 + t179 + t188;
t38 = t109 * pkin(4) - t108 * pkin(10) + t97;
t346 = -t236 * qJD(5) - t195 * t24 + t198 * t38;
t345 = t79 ^ 2;
t344 = t129 ^ 2;
t339 = t15 * t79;
t262 = -t196 * t74 + t199 * t99 - t94 * t290 - t70 * t291;
t17 = -pkin(4) * t170 - t262;
t7 = pkin(5) * t40 + qJ(6) * t39 - qJD(6) * t79 + t17;
t338 = t195 * t7;
t337 = t198 * t7;
t336 = t79 * t77;
t268 = t201 * t288;
t335 = -(qJD(6) - t268) * t196 + t350 + (-t252 - t290) * qJ(6);
t307 = t195 * t201;
t264 = -pkin(5) + t307;
t334 = pkin(5) * t252 - t300 * qJD(5) + t195 * t55 - t264 * t290 + t355;
t253 = t196 * t277;
t126 = t195 * t253 - t198 * t276;
t306 = t197 * t198;
t127 = (t195 * t200 + t196 * t306) * t298;
t240 = pkin(5) * t195 - qJ(6) * t198;
t230 = -t201 + t240;
t241 = pkin(5) * t198 + qJ(6) * t195;
t260 = -t196 * t118 + t120 * t199;
t54 = -pkin(4) * t276 - t260;
t333 = pkin(5) * t126 - qJ(6) * t127 + t54 - (t241 * qJD(5) - qJD(6) * t198) * t199 + t230 * t291;
t69 = pkin(4) * t132 + pkin(10) * t130;
t332 = t195 * t69 + t198 * t44;
t330 = qJ(6) * t84;
t328 = t129 * t77;
t327 = t17 * t195;
t326 = t195 * t77;
t325 = t195 * t79;
t324 = t195 * t84;
t323 = t198 * t40;
t322 = t198 * t77;
t321 = t198 * t79;
t318 = t39 * t195;
t317 = t79 * t129;
t316 = t84 * t196;
t314 = -t195 * qJD(6) + t129 * t240 - t45;
t190 = t193 ^ 2;
t310 = t190 * qJD(1) ^ 2;
t305 = t198 * t156;
t11 = -t195 * t36 + t198 * t46;
t304 = qJD(6) - t11;
t191 = t197 ^ 2;
t299 = -t200 ^ 2 + t191;
t295 = qJD(2) * t196;
t281 = pkin(10) * t288;
t280 = t200 * t310;
t267 = t190 * t284;
t261 = -t196 * t115 + t199 * t98;
t259 = t129 * t198;
t258 = t182 + t297;
t257 = t130 - t295;
t256 = 0.2e1 * t267;
t254 = t197 * t280;
t249 = -0.2e1 * pkin(1) * t267;
t247 = t140 * t182 - t133;
t245 = t195 * t291 + t126;
t244 = t198 * t291 + t127;
t9 = -pkin(5) * t129 + t304;
t243 = t10 * t198 + t195 * t9;
t242 = t10 * t195 - t198 * t9;
t235 = -t195 * t52 + t198 * t59;
t141 = t351 * qJD(2);
t234 = t133 * t194 + t141 * t182;
t233 = -t115 * t290 + t121 * t199 - t196 * t91 - t98 * t291;
t232 = -pkin(8) * t275 + t179;
t231 = -t182 * t276 + t170;
t229 = t12 * t129 - t263;
t228 = -t129 * t287 - t324;
t226 = -t145 * t195 + t193 * t306;
t111 = t145 * t198 + t195 * t309;
t3 = t198 * t16 + t195 * t33 + t46 * t287 - t36 * t288;
t224 = t195 * t38 + t198 * t24 + t59 * t287 - t52 * t288;
t222 = t129 * t35 - t341;
t220 = t199 * t238;
t218 = t238 * t193;
t51 = -pkin(4) * t309 - t261;
t136 = (-pkin(2) * t200 + t265) * t193;
t212 = qJD(1) * t218;
t211 = (-qJ(3) * t293 - t292) * t193;
t25 = -pkin(4) * t274 - t233;
t1 = qJD(6) * t129 + t3 + t330;
t208 = -t242 * qJD(5) + t1 * t198 + t195 * t2;
t206 = -t197 * t212 - t349;
t124 = t182 * t198 + t195 * t252;
t204 = -t195 * t316 - t199 * t40 + (-t195 * t290 - t196 * t287 - t124) * t129 + (t253 + t291) * t77;
t203 = t199 * t170 + t196 * t206;
t157 = -pkin(4) - t241;
t138 = -qJ(3) * t276 + t180;
t137 = t278 * t194 + t184;
t134 = t230 * t199;
t128 = -t188 - t232;
t123 = qJD(1) * t136;
t122 = t175 + t211;
t117 = t264 * t196 - t305;
t116 = -t171 - t140;
t113 = qJ(6) * t196 + t300;
t112 = -pkin(2) * t182 + t285;
t102 = qJD(1) * t211 + t163;
t95 = t123 * t277;
t50 = qJD(5) * t226 + t108 * t198 + t195 * t274;
t49 = qJD(5) * t111 + t108 * t195 - t198 * t274;
t47 = pkin(5) * t79 + qJ(6) * t77;
t29 = -pkin(5) * t226 - qJ(6) * t111 + t51;
t22 = -t39 + t328;
t21 = -pkin(5) * t144 - t235;
t20 = qJ(6) * t144 + t236;
t19 = -pkin(5) * t132 + t195 * t44 - t198 * t69;
t18 = qJ(6) * t132 + t332;
t8 = pkin(5) * t49 - qJ(6) * t50 - qJD(6) * t111 + t25;
t6 = -t109 * pkin(5) - t346;
t5 = qJ(6) * t109 + qJD(6) * t144 + t224;
t4 = [0, 0, 0, t197 * t200 * t256, -t299 * t256, t258 * t274, -t258 * t275, 0, t197 * t249 - t234, -t232 * t182 + t302 * t194 + t200 * t249 (-t105 * t200 + t133 * t197 + (t112 * t200 + t116 * t197) * qJD(2) + (-t128 * t200 + t141 * t197 + (t135 * t197 + t137 * t200) * qJD(2)) * qJD(1)) * t193 (-t123 * t294 + t102 * t200 + (t122 * t200 - t136 * t294) * qJD(1)) * t193 + t234, -t105 * t194 - t128 * t182 + (-t123 * t293 - t102 * t197 + (-t122 * t197 - t136 * t293) * qJD(1)) * t193, t102 * t136 + t105 * t135 + t112 * t141 + t116 * t128 + t122 * t123 + t133 * t137, t132 * t108 - t145 * t207, -t108 * t130 - t132 * t109 + t144 * t207 - t145 * t84, t108 * qJD(4) + ((t145 * qJD(1) + t132) * t293 + (-t271 + (t108 + t210) * qJD(1)) * t197) * t193, -t109 * qJD(4) + (-t130 * t293 - t84 * t197 + (-t109 * t197 - t144 * t293) * qJD(1)) * t193 (t190 * t296 + t218) * t293, t233 * t238 + t262 * t309 + t97 * t130 + t114 * t84 + t75 * t144 + t89 * t109 + (qJD(1) * t261 + t44) * t274, t97 * t132 + t114 * (-t199 * t250 - t271) + t75 * t145 + t89 * t108 - t216 * t238 + t225 * t309 + (-t45 * t200 + (t114 * t196 * t197 - t200 * t315) * qJD(1)) * t193 * qJD(2), -t111 * t39 + t50 * t79, -t111 * t40 - t226 * t39 - t49 * t79 - t50 * t77, t109 * t79 + t111 * t84 + t129 * t50 - t144 * t39, -t109 * t77 - t129 * t49 - t144 * t40 + t226 * t84, t109 * t129 + t144 * t84, t11 * t109 + t129 * t346 - t144 * t263 - t17 * t226 + t235 * t84 + t25 * t77 + t35 * t49 + t51 * t40, -t12 * t109 + t17 * t111 - t129 * t224 - t3 * t144 - t236 * t84 + t25 * t79 + t35 * t50 - t51 * t39, -t109 * t9 - t129 * t6 - t144 * t2 + t15 * t49 - t21 * t84 - t226 * t7 + t29 * t40 + t77 * t8, t1 * t226 - t10 * t49 + t111 * t2 - t20 * t40 - t21 * t39 - t5 * t77 + t50 * t9 + t6 * t79, t1 * t144 + t10 * t109 - t111 * t7 + t129 * t5 - t15 * t50 + t20 * t84 + t29 * t39 - t79 * t8, t1 * t20 + t10 * t5 + t15 * t8 + t2 * t21 + t29 * t7 + t6 * t9; 0, 0, 0, -t254, t299 * t310, t231 (-qJD(2) + t182) * t277, 0, t310 * t340 + t247, pkin(1) * t280 + t182 * t301 + t302 ((-qJ(3) * qJD(2) - t116 - t140) * t197 + (-pkin(2) * qJD(2) - t112 + t285) * t200) * t298, -t138 * t276 - t247 + t95, t285 * t182 + (t123 * t200 + t138 * t197) * t298 - t105, -t133 * pkin(2) - t105 * qJ(3) - t112 * t140 - t285 * t116 - t123 * t138, -t199 ^ 2 * t250 + ((-qJD(4) * t182 + t251) * t199 - t219) * t196 (-t84 - t219) * t199 + ((t130 + t311) * qJD(4) + (t257 * t197 + t269) * t298) * t196, -t132 * t276 + t203, t199 * t206 + t257 * t276, -t200 * t212, qJ(3) * t84 - t260 * t238 + t89 * t220 + (qJD(2) * t199 * t201 - t44) * t276 + t354 * t196 + t286 * t130, t303 * t238 + t45 * t276 + t286 * t132 + (-qJ(3) * t250 + t354) * t199 + ((-t89 - t171) * qJD(4) + (-t197 * t89 + (t313 - t352) * qJD(2)) * t298) * t196, -t198 * t319 + (-t199 * t288 - t244) * t79, t79 * t126 + t127 * t77 + (t322 + t325) * t291 + (t318 - t323 + (-t321 + t326) * qJD(5)) * t199, -t39 * t196 - t244 * t129 + (t223 + t227) * t199, -t40 * t196 + t245 * t129 + (-t238 * t77 + t228) * t199, t129 * t220 + t316, t84 * t305 - t35 * t126 - t54 * t77 + (t355 + (-qJD(5) * t156 + t55) * t195) * t129 + (-t35 * t195 * qJD(4) - t263 + (qJD(4) * t77 + t228) * t201) * t196 + (t11 * t277 + t35 * t287 + t327 - t201 * t40 + (-t129 * t307 + t11) * qJD(4)) * t199, -t300 * t84 - t54 * t79 - t35 * t127 + t350 * t129 + (t129 * t268 - t3 + (-t198 * t35 + t201 * t79) * qJD(4)) * t196 + (-t12 * t238 + t17 * t198 + t201 * t39 - t288 * t35) * t199, -t117 * t84 + t134 * t40 - t196 * t2 - t333 * t77 - t245 * t15 + t334 * t129 + (t15 * t287 - t238 * t9 + t338) * t199, t10 * t126 - t113 * t40 - t117 * t39 - t127 * t9 - t334 * t79 + t335 * t77 + t242 * t291 + (-qJD(5) * t243 - t1 * t195 + t198 * t2) * t199, t1 * t196 + t113 * t84 + t134 * t39 + t333 * t79 + t244 * t15 - t335 * t129 + (t10 * t238 + t15 * t288 - t337) * t199, t1 * t113 - t10 * t335 + t117 * t2 + t134 * t7 - t15 * t333 - t334 * t9; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t231, t254, -t182 ^ 2 - t191 * t310, t116 * t182 + t133 + t95, 0, 0, 0, 0, 0, -t182 * t130 + t203, -t196 * t170 - t182 * t132 + (-t238 * t277 - t349) * t199, 0, 0, 0, 0, 0, t204, t357, t204, t124 * t79 + t125 * t77 + (-t322 + t325) * t290 + (-t318 - t323 + (t321 + t326) * qJD(5)) * t196, -t357, -t10 * t125 + t124 * t9 + (qJD(4) * t243 - t7) * t199 + (t15 * t238 + t208) * t196; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t132 * t130, -t130 ^ 2 + t132 ^ 2 (t130 - t311) * qJD(4) + (-t269 + (t130 + t295) * t197) * t298, -t84 + t219, t170, -t89 * t132 + t238 * t45 + t262, t89 * t130 + t238 * t44 + t225, t259 * t79 - t318 (-t39 - t328) * t198 + (-t40 - t317) * t195, t129 * t259 - t79 * t132 + t324, t77 * t132 - t344 * t195 + t320, -t129 * t132, -pkin(4) * t40 - t11 * t132 - t45 * t77 + (-t17 + (-pkin(10) * qJD(5) - t69) * t129) * t198 + (t44 * t129 + t222) * t195, pkin(4) * t39 + t12 * t132 + t327 - t45 * t79 + (t281 + t332) * t129 + t222 * t198, t132 * t9 + t157 * t40 - t337 + t314 * t77 + (-pkin(10) * t287 + t19) * t129 + t348 * t195, t18 * t77 - t19 * t79 + (t1 + t129 * t9 + (-t40 + t312) * pkin(10)) * t198 + ((qJD(5) * t77 - t39) * pkin(10) + t353) * t195, -t10 * t132 + t157 * t39 - t338 - t314 * t79 + (-t18 - t281) * t129 - t348 * t198, pkin(10) * t208 - t10 * t18 + t15 * t314 + t7 * t157 - t9 * t19; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t336, -t77 ^ 2 + t345, t22, t317 - t40, t84, -t35 * t79 + t229, t11 * t129 + t35 * t77 - t3, -t47 * t77 + t229 - t339 + 0.2e1 * t342, pkin(5) * t39 - t40 * qJ(6) + (t10 - t12) * t79 + (t9 - t304) * t77, 0.2e1 * t330 - t15 * t77 + t47 * t79 + (0.2e1 * qJD(6) - t11) * t129 + t3, -t2 * pkin(5) + t1 * qJ(6) + t10 * t304 - t9 * t12 - t15 * t47; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t84 + t336, t22, -t344 - t345, t339 + t353;];
tauc_reg  = t4;
