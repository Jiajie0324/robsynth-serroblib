% Calculate inertial parameters regressor of coriolis joint torque vector for
% S6RRPRRP2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d5,theta3]';
% 
% Output:
% tauc_reg [6x(6*10)]
%   inertial parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 11:46
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S6RRPRRP2_coriolisvecJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP2_coriolisvecJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRP2_coriolisvecJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPRRP2_coriolisvecJ_fixb_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 11:45:13
% EndTime: 2019-03-09 11:45:31
% DurationCPUTime: 7.30s
% Computational Cost: add. (15164->516), mult. (39101->630), div. (0->0), fcn. (29828->8), ass. (0->270)
t217 = cos(qJ(5));
t295 = qJD(5) * t217;
t216 = sin(qJ(2));
t218 = cos(qJ(2));
t330 = cos(pkin(10));
t272 = qJD(1) * t330;
t262 = t218 * t272;
t329 = sin(pkin(10));
t271 = qJD(1) * t329;
t179 = -t216 * t271 + t262;
t235 = -t216 * t330 - t218 * t329;
t180 = t235 * qJD(1);
t215 = sin(qJ(4));
t361 = cos(qJ(4));
t132 = t361 * t179 + t180 * t215;
t390 = t132 * t217;
t406 = t295 - t390;
t214 = sin(qJ(5));
t240 = -t215 * t179 + t361 * t180;
t291 = qJD(2) + qJD(4);
t118 = t214 * t291 - t217 * t240;
t322 = t118 * t214;
t264 = t217 * t291;
t115 = -t214 * t240 - t264;
t326 = t115 * t217;
t247 = t322 + t326;
t260 = qJD(2) * t271;
t198 = t216 * t260;
t261 = qJD(2) * t272;
t166 = t218 * t261 - t198;
t281 = qJD(4) * t361;
t298 = qJD(4) * t215;
t303 = t216 * t261 + t218 * t260;
t223 = -t361 * t166 - t179 * t281 - t180 * t298 + t215 * t303;
t65 = qJD(5) * t118 - t214 * t223;
t337 = -t115 * t295 - t214 * t65;
t296 = qJD(5) * t214;
t64 = -qJD(5) * t264 + t217 * t223 - t240 * t296;
t339 = t118 * t296 + t217 * t64;
t400 = t132 * t247 + t337 - t339;
t357 = -qJ(3) - pkin(7);
t196 = t357 * t218;
t192 = qJD(1) * t196;
t182 = t329 * t192;
t195 = t357 * t216;
t191 = qJD(1) * t195;
t353 = qJD(2) * pkin(2);
t186 = t191 + t353;
t135 = t330 * t186 + t182;
t359 = t180 * pkin(8);
t106 = qJD(2) * pkin(3) + t135 + t359;
t276 = t330 * t192;
t136 = t329 * t186 - t276;
t360 = t179 * pkin(8);
t113 = t136 + t360;
t73 = t215 * t106 + t361 * t113;
t70 = pkin(9) * t291 + t73;
t208 = -t218 * pkin(2) - pkin(1);
t301 = qJD(1) * t208;
t193 = qJD(3) + t301;
t141 = -t179 * pkin(3) + t193;
t77 = -pkin(4) * t132 + pkin(9) * t240 + t141;
t33 = t214 * t77 + t217 * t70;
t386 = qJD(5) - t132;
t22 = qJ(6) * t386 + t33;
t405 = t22 * t386;
t140 = t330 * t191 + t182;
t120 = t140 + t359;
t207 = pkin(2) * t330 + pkin(3);
t286 = t329 * pkin(2);
t173 = t215 * t207 + t361 * t286;
t139 = -t191 * t329 + t276;
t238 = t139 - t360;
t333 = t173 * qJD(4) - t215 * t120 + t361 * t238;
t404 = -t73 - t333;
t369 = t132 * t291;
t403 = -t223 - t369;
t269 = t215 * t166 + t361 * t303;
t387 = qJD(4) * t240;
t92 = t269 - t387;
t89 = t214 * t92;
t336 = t295 * t386 + t89;
t244 = -t386 * t390 + t336;
t323 = t118 * t240;
t402 = t244 + t323;
t91 = t217 * t92;
t331 = -t296 * t386 + t91;
t391 = t132 * t214;
t289 = t386 * t391 + t331;
t319 = t240 * t115;
t245 = t289 - t319;
t317 = t132 ^ 2;
t318 = t240 ^ 2;
t399 = -t317 + t318;
t32 = -t214 * t70 + t217 * t77;
t304 = qJD(6) - t32;
t21 = -pkin(5) * t386 + t304;
t340 = t92 * qJ(6);
t277 = qJD(2) * t357;
t174 = t218 * qJD(3) + t216 * t277;
t152 = t174 * qJD(1);
t175 = -t216 * qJD(3) + t218 * t277;
t153 = t175 * qJD(1);
t114 = -t152 * t329 + t330 * t153;
t100 = -t166 * pkin(8) + t114;
t117 = t330 * t152 + t329 * t153;
t101 = -pkin(8) * t303 + t117;
t224 = -t215 * t100 - t361 * t101 - t106 * t281 + t113 * t298;
t292 = qJD(1) * qJD(2);
t280 = t216 * t292;
t205 = pkin(2) * t280;
t142 = pkin(3) * t303 + t205;
t49 = t92 * pkin(4) + pkin(9) * t223 + t142;
t6 = t214 * t49 - t217 * t224 + t77 * t295 - t296 * t70;
t2 = qJD(6) * t386 + t340 + t6;
t275 = -t214 * t224 - t217 * t49 + t70 * t295 + t77 * t296;
t362 = pkin(5) * t92;
t4 = t275 - t362;
t376 = t2 * t217 + t4 * t214;
t398 = t406 * t21 + t376;
t243 = t33 * t386 - t275;
t63 = t65 * t217;
t397 = -t63 + (t296 - t391) * t115;
t61 = t64 * t214;
t396 = t406 * t118 - t61;
t395 = pkin(5) * t240;
t394 = t132 * t32;
t393 = qJ(6) * t240;
t392 = t386 * t240;
t312 = t132 * t240;
t294 = t240 * qJD(2);
t388 = -t294 - t269;
t274 = -t361 * t100 + t215 * t101;
t27 = qJD(4) * t73 + t274;
t11 = t65 * pkin(5) + t64 * qJ(6) - t118 * qJD(6) + t27;
t72 = t361 * t106 - t215 * t113;
t69 = -pkin(4) * t291 - t72;
t37 = t115 * pkin(5) - t118 * qJ(6) + t69;
t279 = -t11 * t217 + t37 * t296;
t385 = -t21 * t240 + t279;
t352 = t11 * t214;
t384 = t22 * t240 - t352;
t278 = -t27 * t217 + t69 * t296;
t383 = t32 * t240 + t278;
t356 = t27 * t214 + t69 * t295;
t382 = -t33 * t240 + t356;
t381 = -t141 * t132 + t224;
t257 = pkin(5) * t214 - qJ(6) * t217;
t380 = pkin(5) * t296 - qJ(6) * t295 - t214 * qJD(6) - t132 * t257;
t236 = t216 * t329 - t218 * t330;
t232 = t215 * t236;
t138 = -t235 * t361 - t232;
t327 = t115 * t214;
t228 = t361 * t236;
t229 = qJD(2) * t235;
t96 = -t215 * t229 + t291 * t228 - t235 * t298;
t379 = t138 * (qJD(5) * (-t118 * t217 + t327) - t63 + t61) + t247 * t96;
t378 = t141 * t240 - t274;
t95 = -pkin(4) * t240 - pkin(9) * t132;
t377 = -0.2e1 * t292;
t375 = -t4 + t405;
t374 = -t32 * t386 + t6;
t172 = t361 * t207 - t215 * t286;
t159 = t172 * qJD(4);
t80 = t361 * t120 + t215 * t238;
t334 = t159 - t80;
t372 = -t118 * t386 + t65;
t368 = qJD(2) * t236;
t137 = -t215 * t235 + t228;
t343 = t214 * t96;
t242 = t138 * t295 - t343;
t311 = t138 * t214;
t97 = -qJD(4) * t232 - t215 * t368 - t361 * t229 - t235 * t281;
t367 = t97 * t115 + t137 * t65 + t242 * t386 + t311 * t92;
t155 = pkin(3) * t236 + t208;
t86 = t137 * pkin(4) - t138 * pkin(9) + t155;
t144 = t330 * t195 + t196 * t329;
t126 = pkin(8) * t235 + t144;
t145 = t329 * t195 - t330 * t196;
t127 = -pkin(8) * t236 + t145;
t88 = t215 * t126 + t361 * t127;
t354 = t214 * t86 + t217 * t88;
t125 = t330 * t174 + t329 * t175;
t103 = pkin(8) * t229 + t125;
t124 = -t174 * t329 + t330 * t175;
t221 = pkin(8) * t368 + t124;
t43 = t361 * t103 + t126 * t281 - t127 * t298 + t215 * t221;
t211 = t216 * t353;
t150 = -pkin(3) * t229 + t211;
t55 = t97 * pkin(4) + t96 * pkin(9) + t150;
t13 = -qJD(5) * t354 - t214 * t43 + t217 * t55;
t365 = t118 ^ 2;
t364 = t386 ^ 2;
t363 = t180 ^ 2;
t219 = qJD(2) ^ 2;
t87 = -t361 * t126 + t215 * t127;
t358 = t27 * t87;
t5 = t6 * t217;
t170 = pkin(9) + t173;
t309 = t159 * t217;
t355 = -t115 * t309 - t170 * t63;
t48 = t214 * t95 + t217 * t72;
t300 = qJD(1) * t216;
t209 = pkin(2) * t300;
t149 = -pkin(3) * t180 + t209;
t81 = t149 + t95;
t42 = t214 * t81 + t217 * t80;
t350 = t118 * t37;
t346 = t137 * t92;
t345 = t170 * t92;
t342 = t217 * t96;
t335 = t333 + t380;
t332 = t380 - t73;
t328 = t115 * t170;
t325 = t118 * t115;
t310 = t138 * t217;
t308 = t180 * t179;
t220 = qJD(1) ^ 2;
t307 = t218 * t220;
t306 = t219 * t216;
t305 = t219 * t218;
t302 = t216 ^ 2 - t218 ^ 2;
t299 = qJD(2) * t180;
t288 = t216 * t307;
t285 = t170 * t296;
t284 = t170 * t295;
t282 = t115 ^ 2 - t365;
t270 = pkin(1) * t377;
t267 = t386 * t214;
t263 = t218 * t280;
t259 = (qJD(5) * t115 - t64) * pkin(9);
t258 = t217 * pkin(5) + t214 * qJ(6);
t256 = -t132 * t69 - t345;
t255 = t21 * t217 - t214 * t22;
t254 = t21 * t214 + t217 * t22;
t253 = t214 * t33 + t217 * t32;
t252 = t214 * t32 - t217 * t33;
t47 = -t214 * t72 + t217 * t95;
t41 = -t214 * t80 + t217 * t81;
t52 = -t214 * t88 + t217 * t86;
t248 = t118 * t159 - t170 * t64;
t194 = -pkin(4) - t258;
t241 = -t138 * t296 - t342;
t12 = t214 * t55 + t217 * t43 + t86 * t295 - t296 * t88;
t239 = -t159 * t214 - t284;
t237 = t336 * pkin(9);
t227 = t115 * t242 + t311 * t65;
t226 = qJD(5) * t255 + t376;
t225 = -qJD(5) * t253 + t214 * t275 + t5;
t44 = qJD(4) * t88 + t215 * t103 - t361 * t221;
t177 = t179 ^ 2;
t169 = -pkin(4) - t172;
t143 = t194 - t172;
t82 = pkin(5) * t118 + qJ(6) * t115;
t58 = pkin(9) * t63;
t56 = t138 * t257 + t87;
t39 = -pkin(5) * t137 - t52;
t38 = qJ(6) * t137 + t354;
t35 = t115 * t386 - t64;
t34 = t386 * t97 + t346;
t31 = -t47 + t395;
t30 = t48 - t393;
t29 = -t41 + t395;
t28 = t42 - t393;
t15 = t118 * t241 - t310 * t64;
t14 = -t257 * t96 + (qJD(5) * t258 - qJD(6) * t217) * t138 + t44;
t10 = t118 * t97 - t64 * t137 + t241 * t386 + t310 * t92;
t9 = -t97 * pkin(5) - t13;
t8 = qJ(6) * t97 + qJD(6) * t137 + t12;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t263, t302 * t377, t305, -0.2e1 * t263, -t306, 0, -pkin(7) * t305 + t216 * t270, pkin(7) * t306 + t218 * t270, 0, 0, -t166 * t235 + t180 * t368, -t166 * t236 - t179 * t368 - t180 * t229 + t235 * t303, -t236 * t219, t179 * t229 + t236 * t303, t235 * t219, 0, -t179 * t211 + t208 * t303 + t209 * t368 + (-t193 * t235 + t124) * qJD(2), -t125 * qJD(2) + t208 * t166 - t180 * t211 - t193 * t368 - t205 * t235, t114 * t235 - t117 * t236 + t124 * t180 + t125 * t179 + t135 * t368 + t136 * t229 - t144 * t166 - t145 * t303, t114 * t144 + t117 * t145 + t135 * t124 + t136 * t125 + (t193 + t301) * t211, -t138 * t223 + t240 * t96, -t132 * t96 + t137 * t223 - t138 * t92 + t240 * t97, -t96 * t291, -t132 * t97 + t346, -t97 * t291, 0, -t132 * t150 + t142 * t137 + t141 * t97 + t155 * t92 - t291 * t44, t142 * t138 - t141 * t96 - t150 * t240 - t155 * t223 - t291 * t43, t132 * t43 + t137 * t224 + t27 * t138 - t223 * t87 - t240 * t44 + t72 * t96 - t73 * t97 - t88 * t92, t141 * t150 + t142 * t155 - t224 * t88 + t43 * t73 - t44 * t72 + t358, t15, t379, t10, t227, -t367, t34, t44 * t115 + t13 * t386 - t137 * t275 + t356 * t138 + t32 * t97 - t69 * t343 + t52 * t92 + t87 * t65, t44 * t118 - t12 * t386 - t6 * t137 - t278 * t138 - t33 * t97 - t69 * t342 - t354 * t92 - t87 * t64, -t12 * t115 - t13 * t118 + t52 * t64 - t354 * t65 + t253 * t96 + (qJD(5) * t252 - t6 * t214 + t217 * t275) * t138, t12 * t33 + t13 * t32 - t275 * t52 + t354 * t6 + t44 * t69 + t358, t15, t10, -t379, t34, t367, t227, -t37 * t343 + t14 * t115 - t9 * t386 - t4 * t137 - t21 * t97 - t39 * t92 + t56 * t65 + (t295 * t37 + t352) * t138, -t8 * t115 + t9 * t118 - t38 * t65 - t39 * t64 - t255 * t96 + (-qJD(5) * t254 - t2 * t214 + t4 * t217) * t138, -t14 * t118 + t2 * t137 + t279 * t138 + t22 * t97 + t37 * t342 + t38 * t92 + t386 * t8 + t56 * t64, t11 * t56 + t14 * t37 + t2 * t38 + t21 * t9 + t22 * t8 + t39 * t4; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t288, t302 * t220, 0, t288, 0, 0, t220 * pkin(1) * t216, pkin(1) * t307, 0, 0, t308, -t177 + t363, -t198 + (t262 - t179) * qJD(2), -t308, -t299 - t303, 0, -t139 * qJD(2) + t179 * t209 + t193 * t180 + t114, qJD(2) * t140 - t179 * t193 + t180 * t209 - t117 -(t136 + t139) * t180 + (-t140 + t135) * t179 + (-t166 * t330 - t303 * t329) * pkin(2), -t135 * t139 - t136 * t140 + (t114 * t330 + t117 * t329 - t193 * t300) * pkin(2), t312, t399, t403, -t312, t388, 0, -t333 * qJD(2) + t404 * qJD(4) + t149 * t132 + t378, t149 * t240 - t334 * t291 + t381, t172 * t223 - t173 * t92 + t404 * t240 + (t334 + t72) * t132, -t141 * t149 - t27 * t172 - t173 * t224 - t333 * t72 + t334 * t73, t396, t400, t402, t115 * t267 - t63, t245, t392, t169 * t65 + t256 * t214 + t333 * t115 + (t239 - t41) * t386 + t383, -t169 * t64 + t256 * t217 + t333 * t118 + (t285 + t42 - t309) * t386 + t382, t42 * t115 + t41 * t118 + t5 + (t394 + (t118 * t170 - t32) * qJD(5)) * t217 + (t132 * t33 + t275 + (-t33 + t328) * qJD(5) + t248) * t214 + t355, -t252 * t159 + t27 * t169 + t225 * t170 - t32 * t41 - t33 * t42 + t333 * t69, t396, t402, -t400, t392, -t245, t397, t143 * t65 + (-t132 * t37 - t345) * t214 + t335 * t115 + (t239 + t29) * t386 + t385, t28 * t115 + (-t29 + t284) * t118 + (t132 * t22 + (-t22 + t328) * qJD(5) + t248) * t214 + t355 + t398, -t335 * t118 + t143 * t64 + t345 * t217 + (-t28 - t285 + (t159 - t37) * t217) * t386 + t384, t11 * t143 + t159 * t254 + t170 * t226 - t21 * t29 - t22 * t28 + t335 * t37; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t299 + t303, -t198 + (t262 + t179) * qJD(2), -t177 - t363, -t135 * t180 - t136 * t179 + t205, 0, 0, 0, 0, 0, 0, t269 - t294 - 0.2e1 * t387, -t223 + t369, -t317 - t318, -t73 * t132 - t240 * t72 + t142, 0, 0, 0, 0, 0, 0, t289 + t319, -t217 * t364 + t323 - t89 (t115 * t132 + t64) * t217 + t118 * t267 + t337, t374 * t214 + t243 * t217 + t69 * t240, 0, 0, 0, 0, 0, 0, -t214 * t364 + t319 + t91 (-t322 + t326) * t132 + t337 + t339, t244 - t323, t37 * t240 + t375 * t217 + (t21 * t386 + t2) * t214; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t312, t399, t403, -t312, t388, 0, t73 * qJD(2) + t378, t291 * t72 + t381, 0, 0, t396, t400, t402, t327 * t386 - t63, t245, t392, -pkin(4) * t65 - t73 * t115 - t386 * t47 - t391 * t69 - t237 + t383, pkin(4) * t64 - t331 * pkin(9) - t73 * t118 + t386 * t48 - t390 * t69 + t382, t48 * t115 + t47 * t118 + t5 - t58 + (t394 + (pkin(9) * t118 - t32) * qJD(5)) * t217 + (-t243 + t259) * t214, -t27 * pkin(4) + pkin(9) * t225 - t32 * t47 - t33 * t48 - t69 * t73, t396, t402, -t400, t392, -t245, t397, t115 * t332 + t194 * t65 + t31 * t386 - t37 * t391 - t237 + t385, t30 * t115 - t58 + (pkin(9) * t295 - t31) * t118 + (t259 - t405) * t214 + t398, t194 * t64 + (-pkin(9) * t296 - t30) * t386 - t332 * t118 + (pkin(9) * t92 - t37 * t386) * t217 + t384, pkin(9) * t226 + t11 * t194 - t21 * t31 - t22 * t30 + t332 * t37; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t325, -t282, t35, -t325, -t372, t92, -t118 * t69 + t243, t115 * t69 - t374, 0, 0, t325, t35, t282, t92, t372, -t325, -t115 * t82 + t243 - t350 + 0.2e1 * t362, pkin(5) * t64 - t65 * qJ(6) + (t22 - t33) * t118 + (t21 - t304) * t115, 0.2e1 * t340 - t37 * t115 + t82 * t118 + (0.2e1 * qJD(6) - t32) * t386 + t6, -t4 * pkin(5) + t2 * qJ(6) - t21 * t33 + t22 * t304 - t37 * t82; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t325 - t92, t35, -t364 - t365, t350 - t375;];
tauc_reg  = t1;
