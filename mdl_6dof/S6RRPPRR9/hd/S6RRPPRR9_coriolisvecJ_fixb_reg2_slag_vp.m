% Calculate inertial parameters regressor of coriolis joint torque vector for
% S6RRPPRR9
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d5,d6]';
% 
% Output:
% tauc_reg [6x(6*10)]
%   inertial parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 09:33
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S6RRPPRR9_coriolisvecJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPRR9_coriolisvecJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPPRR9_coriolisvecJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPPRR9_coriolisvecJ_fixb_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 09:32:07
% EndTime: 2019-03-09 09:32:25
% DurationCPUTime: 6.96s
% Computational Cost: add. (7917->576), mult. (20418->755), div. (0->0), fcn. (14353->8), ass. (0->285)
t190 = sin(pkin(6));
t199 = cos(qJ(2));
t285 = qJD(1) * t199;
t266 = t190 * t285;
t168 = pkin(3) * t266;
t359 = qJD(4) + t168;
t193 = pkin(2) + qJ(4);
t195 = sin(qJ(5));
t198 = cos(qJ(5));
t145 = pkin(5) * t195 - pkin(10) * t198 + t193;
t192 = qJ(3) - pkin(9);
t196 = sin(qJ(2));
t287 = qJD(1) * t190;
t267 = t196 * t287;
t279 = qJD(5) * t198;
t163 = qJ(4) * t267;
t172 = pkin(2) * t267;
t81 = -t192 * t266 + t163 + t172;
t191 = cos(pkin(6));
t334 = pkin(1) * t191;
t181 = t199 * t334;
t170 = qJD(1) * t181;
t335 = pkin(4) + pkin(8);
t257 = t190 * (-pkin(3) - t335);
t239 = t196 * t257;
t82 = qJD(1) * t239 + t170;
t38 = t195 * t82 + t198 * t81;
t358 = pkin(10) * t267 + qJD(3) * t195 + qJD(6) * t145 + t192 * t279 - t38;
t333 = pkin(1) * t196;
t180 = t191 * t333;
t243 = pkin(5) * t198 + pkin(10) * t195;
t298 = t192 * t195;
t299 = t190 * t199;
t357 = -qJD(5) * t243 + qJD(6) * t298 + (-t180 + (-t243 - t335) * t299) * qJD(1) - t359;
t194 = sin(qJ(6));
t197 = cos(qJ(6));
t283 = qJD(2) * t196;
t265 = t190 * t283;
t246 = qJD(1) * t265;
t286 = qJD(1) * t191;
t175 = qJD(2) + t286;
t119 = t175 * t198 + t195 * t267;
t232 = qJD(5) + t266;
t75 = t197 * t119 + t194 * t232;
t306 = qJD(6) * t75;
t280 = qJD(5) * t195;
t142 = t175 * t280;
t262 = t196 * t279;
t282 = qJD(2) * t199;
t347 = -t195 * t282 - t262;
t79 = t287 * t347 + t142;
t30 = -t194 * t79 + t197 * t246 + t306;
t117 = t175 * t195 - t198 * t267;
t116 = qJD(6) + t117;
t311 = t75 * t116;
t356 = t311 - t30;
t281 = qJD(3) * t196;
t203 = (-t281 + (-qJD(2) * t192 - qJD(4)) * t199) * t190;
t152 = pkin(2) * t246;
t293 = qJ(4) * t246 + t152;
t45 = qJD(1) * t203 + t293;
t162 = t175 * qJ(3);
t294 = qJD(1) * (t299 * t335 + t180) + t359;
t50 = -t175 * pkin(9) + t162 + t294;
t337 = -pkin(3) - pkin(4);
t159 = t175 * qJD(3);
t270 = qJD(2) * t334;
t252 = qJD(1) * t270;
t292 = pkin(8) * t246 - t199 * t252;
t91 = -t159 + t292;
t54 = t246 * t337 - t91;
t244 = -t193 * t199 - pkin(1);
t84 = (-t192 * t196 + t244) * t190;
t63 = qJD(1) * t84;
t223 = -t195 * t54 - t198 * t45 - t50 * t279 + t280 * t63;
t25 = -t195 * t63 + t198 * t50;
t355 = -t25 * t232 - t223;
t346 = qJD(5) * t232;
t271 = qJD(1) * qJD(2);
t260 = t199 * t271;
t247 = t190 * t260;
t122 = pkin(8) * t247 + t196 * t252;
t68 = pkin(3) * t247 - t175 * qJD(4) + t122;
t55 = -pkin(4) * t247 - t68;
t354 = -t192 * t346 + t55;
t167 = t175 * pkin(2);
t342 = t175 * qJ(4) - qJD(3) + t167;
t49 = t82 + t342;
t295 = qJD(3) + t49;
t353 = t287 * (-t192 * t283 + t199 * t295) + t295 * qJD(5);
t144 = t198 * t247;
t345 = t119 * qJD(5);
t80 = -t144 + t345;
t22 = pkin(5) * t80 + pkin(10) * t79 + t55;
t26 = t195 * t50 + t198 * t63;
t24 = pkin(10) * t232 + t26;
t28 = pkin(5) * t117 - pkin(10) * t119 + t49;
t231 = t194 * t24 - t197 * t28;
t5 = -pkin(10) * t246 - t223;
t1 = -qJD(6) * t231 + t194 * t22 + t197 * t5;
t352 = -t116 * t231 - t1;
t8 = t194 * t28 + t197 * t24;
t2 = -qJD(6) * t8 - t194 * t5 + t197 * t22;
t238 = -t8 * t116 - t2;
t219 = t197 * t232;
t73 = t119 * t194 - t219;
t351 = t232 * t73;
t29 = t194 * (qJD(6) * t119 + t246) - qJD(6) * t219 + t197 * t79;
t313 = t73 * t116;
t350 = -t29 + t313;
t349 = t117 * t232;
t217 = t119 * t232;
t173 = t175 ^ 2;
t188 = t196 ^ 2;
t187 = t190 ^ 2;
t302 = t187 * qJD(1) ^ 2;
t174 = t188 * t302;
t348 = -t174 - t173;
t289 = pkin(8) * t299 + t180;
t129 = t289 * qJD(1);
t259 = t195 * t45 - t198 * t54;
t10 = -qJD(5) * t26 - t259;
t123 = -t191 * qJ(3) - t289;
t100 = pkin(3) * t299 - t123;
t72 = pkin(4) * t299 - pkin(9) * t191 + t100;
t325 = t195 * t72 + t198 * t84;
t169 = pkin(2) * t265;
t291 = qJ(4) * t265 + t169;
t53 = t203 + t291;
t171 = t199 * t270;
t183 = t191 * qJD(3);
t290 = t171 + t183;
t65 = qJD(2) * t239 + t290;
t14 = -qJD(5) * t325 - t195 * t53 + t198 * t65;
t339 = t117 ^ 2;
t338 = t119 ^ 2;
t336 = pkin(3) + pkin(8);
t6 = pkin(5) * t246 - t10;
t332 = t194 * t6;
t331 = t197 * t6;
t329 = t75 * t73;
t327 = t358 * t194 + t357 * t197;
t326 = t357 * t194 - t358 * t197;
t300 = t190 * t198;
t133 = t191 * t195 - t196 * t300;
t324 = t133 * t80;
t323 = t194 * t73;
t322 = t194 * t75;
t321 = t194 * t80;
t320 = t197 * t73;
t319 = t197 * t75;
t318 = t197 * t80;
t317 = t198 * t29;
t316 = t198 * t30;
t315 = t29 * t194;
t314 = t30 * t197;
t312 = t73 * t119;
t310 = t75 * t119;
t309 = t80 * t195;
t307 = qJ(3) * t196;
t305 = t119 * t117;
t304 = t122 * t196;
t131 = t289 * qJD(2);
t303 = t131 * t196;
t301 = t190 * t196;
t297 = t194 * t199;
t296 = t197 * t199;
t135 = -pkin(8) * t301 + t181;
t288 = qJ(3) * qJD(2);
t284 = qJD(2) * t195;
t278 = qJD(6) * t194;
t277 = qJD(6) * t197;
t276 = qJD(6) * t198;
t275 = t117 * qJD(5);
t274 = qJD(2) - t175;
t128 = pkin(8) * t267 - t170;
t273 = qJD(3) + t128;
t104 = t168 + t129;
t272 = qJD(4) + t104;
t189 = t199 ^ 2;
t269 = t189 * t302;
t268 = t199 * t302;
t125 = -t191 * pkin(2) - t135;
t261 = t187 * t271;
t256 = t116 * t194;
t255 = t116 * t197;
t254 = -qJD(4) - t288;
t253 = t336 * t301;
t251 = t26 * t266;
t250 = t191 * qJ(4) - t125;
t249 = t198 * t266;
t248 = t119 * t266;
t245 = -0.2e1 * pkin(1) * t261;
t242 = t194 * t8 - t197 * t231;
t241 = -t194 * t231 - t197 * t8;
t240 = t129 * t175 - t122;
t111 = (t195 * t297 + t196 * t197) * t287;
t237 = t194 * t280 + t111;
t112 = (-t194 * t196 + t195 * t296) * t287;
t236 = -t197 * t280 - t112;
t233 = t274 * t287;
t32 = pkin(10) * t299 + t325;
t134 = t191 * t198 + t195 * t301;
t71 = t301 * t337 + t250;
t41 = t133 * pkin(5) - t134 * pkin(10) + t71;
t16 = t194 * t41 + t197 * t32;
t15 = -t194 * t32 + t197 * t41;
t35 = -t195 * t84 + t198 * t72;
t37 = -t195 * t81 + t198 * t82;
t228 = t122 * t191 + t131 * t175;
t227 = t187 * t196 * t260;
t130 = -pkin(8) * t265 + t171;
t127 = -qJ(3) * t266 + t172;
t107 = t199 * t233;
t226 = -t116 * t277 - t321;
t225 = -t116 * t278 + t318;
t224 = -t134 * t194 + t190 * t296;
t95 = t134 * t197 + t190 * t297;
t13 = t195 * t65 + t198 * t53 + t72 * t279 - t280 * t84;
t221 = t232 * t75;
t23 = -pkin(5) * t232 - t25;
t220 = -pkin(10) * t80 + t116 * t23;
t218 = t198 * t232;
t216 = t232 * t190;
t215 = qJD(2) * t190 * (t175 + t286);
t124 = (-pkin(2) * t199 - pkin(1) - t307) * t190;
t211 = qJD(1) * t216;
t209 = t116 * t255 + t321;
t208 = (-qJ(3) * t282 - t281) * t190;
t67 = -pkin(3) * t246 - t91;
t99 = (t244 - t307) * t190;
t205 = (t199 * t254 - t281) * t190;
t204 = -qJD(6) * t242 + t1 * t197 - t194 * t2;
t182 = t191 * qJD(4);
t66 = t182 + (t199 * t257 - t180) * qJD(2);
t202 = -t199 * t211 - t346;
t201 = t202 * t195;
t160 = qJD(3) * t266;
t147 = t196 * t268;
t143 = t195 * t246;
t141 = -0.2e1 * t227;
t140 = 0.2e1 * t227;
t132 = -t174 + t269;
t126 = (-t188 + t189) * t261;
t120 = 0.2e1 * t126;
t115 = -t130 - t183;
t114 = t145 * t194 + t197 * t298;
t113 = t145 * t197 - t194 * t298;
t110 = t175 * t194 - t197 * t249;
t109 = t175 * t197 + t194 * t249;
t108 = qJD(1) * t124;
t106 = t196 * t233;
t105 = t169 + t208;
t103 = -qJD(1) * t253 + t170;
t102 = -t162 - t129;
t101 = t127 + t163;
t98 = t199 * t215;
t97 = t196 * t215;
t96 = -t167 + t273;
t93 = qJD(5) * t134 - t282 * t300;
t92 = t190 * t347 + t191 * t280;
t90 = qJD(1) * t208 + t152;
t89 = -t182 + (t299 * t336 + t180) * qJD(2);
t88 = -qJD(2) * t253 + t290;
t87 = pkin(3) * t301 - t250;
t86 = t108 * t267;
t85 = qJD(1) * t99;
t78 = t162 + t272;
t64 = t85 * t266;
t61 = t205 + t291;
t58 = t267 * t336 - t170 - t342;
t57 = pkin(5) * t119 + pkin(10) * t117;
t56 = qJD(1) * t205 + t293;
t40 = qJD(6) * t224 - t194 * t265 - t92 * t197;
t39 = qJD(6) * t95 - t92 * t194 + t197 * t265;
t33 = pkin(5) * t267 - t37;
t31 = -pkin(5) * t299 - t35;
t27 = t93 * pkin(5) + t92 * pkin(10) + t66;
t18 = t194 * t57 + t197 * t25;
t17 = -t194 * t25 + t197 * t57;
t12 = pkin(5) * t265 - t14;
t11 = -pkin(10) * t265 + t13;
t4 = -qJD(6) * t16 - t194 * t11 + t197 * t27;
t3 = qJD(6) * t15 + t197 * t11 + t194 * t27;
t7 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t140, t120, t98, t141, -t97, 0, t196 * t245 - t228, -t130 * t175 + t191 * t292 + t199 * t245 (-t292 * t199 + t304 + (t128 * t199 - t129 * t196) * qJD(2) + (t130 * t199 + t303 + (-t135 * t199 - t196 * t289) * qJD(2)) * qJD(1)) * t190, -t122 * t135 + t128 * t131 + t129 * t130 - t289 * t292, 0, -t98, t97, t140, t120, t141 (t304 - t199 * t91 + (t102 * t196 + t199 * t96) * qJD(2) + (-t115 * t199 + t303 + (t123 * t196 + t125 * t199) * qJD(2)) * qJD(1)) * t190 (-t108 * t283 + t199 * t90 + (t105 * t199 - t124 * t283) * qJD(1)) * t190 + t228, -t115 * t175 - t91 * t191 + (-t108 * t282 - t196 * t90 + (-t105 * t196 - t124 * t282) * qJD(1)) * t190, t102 * t115 + t105 * t108 + t122 * t125 + t123 * t91 + t124 * t90 + t131 * t96, 0, t97, t98, t141, -0.2e1 * t126, t140 (t196 * t68 + t199 * t67 + (-t196 * t78 + t199 * t58) * qJD(2) + (t196 * t89 + t199 * t88 + (-t100 * t196 + t199 * t87) * qJD(2)) * qJD(1)) * t190, t88 * t175 + t67 * t191 + (-t85 * t282 - t196 * t56 + (-t196 * t61 - t282 * t99) * qJD(1)) * t190, -t89 * t175 - t68 * t191 + (t85 * t283 - t199 * t56 + (-t199 * t61 + t283 * t99) * qJD(1)) * t190, t100 * t67 + t56 * t99 + t58 * t89 + t61 * t85 + t68 * t87 + t78 * t88, -t119 * t92 - t134 * t79, t117 * t92 - t119 * t93 + t133 * t79 - t134 * t80, -t92 * qJD(5) + (-t119 * t283 - t79 * t199 + (-t134 * t283 - t199 * t92) * qJD(1)) * t190, t117 * t93 + t324, -t93 * qJD(5) + (t117 * t283 - t80 * t199 + (t133 * t283 - t199 * t93) * qJD(1)) * t190 (-t187 * t285 - t216) * t283, t14 * qJD(5) + t66 * t117 + t55 * t133 + t49 * t93 + t71 * t80 + (-t25 * t283 + t10 * t199 + (t14 * t199 - t283 * t35) * qJD(1)) * t190, -t13 * qJD(5) + t66 * t119 + t55 * t134 - t49 * t92 - t71 * t79 + (t26 * t283 + t223 * t199 + (-t13 * t199 + t283 * t325) * qJD(1)) * t190, -t10 * t134 - t117 * t13 - t119 * t14 + t133 * t223 + t25 * t92 - t26 * t93 - t325 * t80 + t35 * t79, t10 * t35 + t13 * t26 + t14 * t25 - t223 * t325 + t49 * t66 + t55 * t71, -t29 * t95 + t40 * t75, -t224 * t29 - t30 * t95 - t39 * t75 - t40 * t73, t116 * t40 - t133 * t29 + t75 * t93 + t80 * t95, -t224 * t30 + t39 * t73, -t116 * t39 - t133 * t30 + t224 * t80 - t73 * t93, t116 * t93 + t324, t116 * t4 + t12 * t73 + t133 * t2 + t15 * t80 - t224 * t6 + t23 * t39 - t231 * t93 + t30 * t31, -t1 * t133 - t116 * t3 + t12 * t75 - t16 * t80 + t23 * t40 - t29 * t31 + t6 * t95 - t8 * t93, t1 * t224 + t15 * t29 - t16 * t30 - t2 * t95 + t231 * t40 - t3 * t73 - t39 * t8 - t4 * t75, t1 * t16 + t12 * t23 + t15 * t2 - t231 * t4 + t3 * t8 + t31 * t6; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t147, -t132, t107, t147, -t106, 0, t302 * t333 + t240, pkin(1) * t268 - t128 * t175 + t292, 0, 0, 0, -t107, t106, -t147, -t132, t147, t160 + ((-pkin(2) * qJD(2) + t128 - t96) * t199 + (-t102 - t129 - t288) * t196) * t287, -t127 * t266 - t240 + t86, t273 * t175 + (t108 * t199 + t127 * t196) * t287 - t91, -t122 * pkin(2) - t91 * qJ(3) - t102 * t273 - t108 * t127 - t96 * t129, 0, t106, t107, t147, t132, -t147, t160 + ((-qJD(2) * t193 - t103 - t58) * t199 + (-t104 + t254 + t78) * t196) * t287, -t103 * t175 + 0.2e1 * t159 + t64 + (-pkin(3) * qJD(2) + t101) * t267 - t292, t272 * t175 + (t101 * t199 - t196 * t85) * t287 - t68, t67 * qJ(3) - t85 * t101 - t68 * t193 + (qJD(3) - t103) * t78 - t272 * t58, -t195 * t217 - t198 * t79 (-t80 - t217) * t198 + (t79 + t349) * t195 (-qJD(2) * t198 + t119) * t267 + t201, t117 * t218 + t309, -t117 * t267 + t198 * t202 + t143, t196 * t211, t294 * t117 + t193 * t80 + t354 * t195 + t353 * t198 - t37 * t232 + t25 * t267, t294 * t119 - t193 * t79 - t353 * t195 + t354 * t198 + t38 * t232 - t26 * t267, t117 * t38 + t119 * t37 + (-t251 - qJD(3) * t119 + t192 * t79 - t10 + (-t117 * t192 - t26) * qJD(5)) * t198 + (t25 * t266 - qJD(3) * t117 - t192 * t80 + t223 + (t119 * t192 + t25) * qJD(5)) * t195, t193 * t55 - t25 * t37 - t26 * t38 + t294 * t49 + (t195 * t26 + t198 * t25) * qJD(3) + (t10 * t198 - t223 * t195 + (-t195 * t25 + t198 * t26) * qJD(5)) * t192, -t197 * t317 + (-t194 * t276 + t236) * t75, t75 * t111 + t112 * t73 + (t320 + t322) * t280 + (t315 - t314 + (-t319 + t323) * qJD(6)) * t198, -t29 * t195 + t236 * t116 + (t221 + t225) * t198, t194 * t316 + (t197 * t276 - t237) * t73, -t30 * t195 + t237 * t116 + (t226 - t351) * t198, t116 * t218 + t309, -t111 * t23 + t113 * t80 - t33 * t73 - t327 * t116 + (t2 + (t192 * t73 - t194 * t23) * qJD(5)) * t195 + (-qJD(3) * t73 - t192 * t30 + t23 * t277 - t231 * t232 + t332) * t198, -t112 * t23 - t114 * t80 - t33 * t75 + t326 * t116 + (-t1 + (t192 * t75 - t197 * t23) * qJD(5)) * t195 + (-qJD(3) * t75 + t192 * t29 - t23 * t278 - t232 * t8 + t331) * t198, t111 * t8 - t112 * t231 + t113 * t29 - t114 * t30 + t327 * t75 + t326 * t73 + t242 * t280 + (qJD(6) * t241 - t1 * t194 - t2 * t197) * t198, -t192 * t198 * t6 + t1 * t114 + t113 * t2 - t326 * t8 + t327 * t231 + (-qJD(3) * t198 + t192 * t280 - t33) * t23; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t107, t147, t348, t102 * t175 + t122 + t86, 0, 0, 0, 0, 0, 0, t107, t348, -t147, -t175 * t78 + t267 * t85 + t68, 0, 0, 0, 0, 0, 0, t144 - t248 - 0.2e1 * t345, t275 + t142 + (-t262 + (t117 - t284) * t199) * t287, t338 + t339, -t117 * t26 - t119 * t25 - t55, 0, 0, 0, 0, 0, 0, t116 * t256 + t312 - t318, t209 + t310, -t356 * t194 + t350 * t197, t23 * t119 + t194 * t352 + t238 * t197; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t274 * t267, -t147, -t173 - t269, t175 * t58 + t64 + t67, 0, 0, 0, 0, 0, 0, -t175 * t117 - t198 * t246 + t201, -t175 * t119 + t143 + (-t232 * t266 - t346) * t198 (t79 - t349) * t198 + (-t80 + t217) * t195, -t49 * t175 + (t232 * t26 + t10) * t198 + t355 * t195, 0, 0, 0, 0, 0, 0, -t316 + (-t194 * t279 - t109) * t116 + (t226 + t351) * t195, t317 + (-t197 * t279 + t110) * t116 + (t221 - t225) * t195, t109 * t75 + t110 * t73 + (-t320 + t322) * t279 + (-t315 - t314 + (t319 + t323) * qJD(6)) * t195, t109 * t231 - t110 * t8 + (-qJD(5) * t241 - t6) * t198 + (t23 * t232 + t204) * t195; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t305, t338 - t339, t275 - t142 + (t262 + (t117 + t284) * t199) * t287, -t305, t144 + t248, -t246, -t49 * t119 + t251 - t259, t49 * t117 - t355, 0, 0, t255 * t75 - t315 (-t29 - t313) * t197 + (-t30 - t311) * t194, t209 - t310, t256 * t73 - t314, -t116 ^ 2 * t194 + t312 + t318, -t116 * t119, -pkin(5) * t30 + t119 * t231 - t331 - t26 * t73 + (-pkin(10) * t277 - t17) * t116 + t220 * t194, pkin(5) * t29 + t119 * t8 + t332 - t26 * t75 + (pkin(10) * t278 + t18) * t116 + t220 * t197, t17 * t75 + t18 * t73 + ((-t30 + t306) * pkin(10) - t352) * t197 + ((qJD(6) * t73 - t29) * pkin(10) + t238) * t194, -t6 * pkin(5) + pkin(10) * t204 + t17 * t231 - t8 * t18 - t23 * t26; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t329, -t73 ^ 2 + t75 ^ 2, t350, -t329, t356, t80, -t23 * t75 - t238, t23 * t73 + t352, 0, 0;];
tauc_reg  = t7;
