% Calculate inertial parameters regressor of coriolis joint torque vector for
% S6RPRPRR13
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d3,d5,d6,theta2]';
% 
% Output:
% tauc_reg [6x(6*10)]
%   inertial parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 04:26
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S6RPRPRR13_coriolisvecJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRR13_coriolisvecJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRR13_coriolisvecJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RPRPRR13_coriolisvecJ_fixb_reg2_slag_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 04:25:22
% EndTime: 2019-03-09 04:25:46
% DurationCPUTime: 10.06s
% Computational Cost: add. (20898->590), mult. (68988->798), div. (0->0), fcn. (58442->12), ass. (0->269)
t216 = sin(qJ(3));
t351 = cos(pkin(7));
t376 = cos(qJ(3));
t281 = t351 * t376;
t211 = sin(pkin(7));
t352 = cos(pkin(6));
t299 = t352 * t211;
t212 = sin(pkin(6));
t213 = cos(pkin(12));
t339 = t212 * t213;
t230 = t281 * t339 + t376 * t299;
t210 = sin(pkin(12));
t341 = t210 * t212;
t155 = t216 * t341 - t230;
t215 = sin(qJ(5));
t218 = cos(qJ(5));
t273 = t352 * t351;
t326 = qJD(1) * t212;
t307 = t213 * t326;
t174 = -qJD(1) * t273 + t211 * t307 - qJD(3);
t301 = t213 * t351;
t385 = t212 * (t210 * t376 + t216 * t301);
t156 = t216 * t299 + t385;
t229 = qJD(1) * t156;
t296 = qJD(1) * t352;
t286 = pkin(1) * t296;
t177 = qJ(2) * t307 + t210 * t286;
t238 = (t212 * t301 + t299) * pkin(9);
t131 = qJD(1) * t238 + t177;
t201 = t213 * t286;
t234 = t352 * pkin(2) + (-pkin(9) * t351 - qJ(2)) * t341;
t141 = qJD(1) * t234 + t201;
t342 = t210 * t211;
t169 = (-pkin(2) * t213 - pkin(9) * t342 - pkin(1)) * t212;
t162 = qJD(1) * t169 + qJD(2);
t310 = t211 * t376;
t81 = t131 * t216 - t141 * t281 - t162 * t310;
t334 = -qJD(4) - t81;
t333 = pkin(4) * t229 - t334;
t377 = pkin(3) + pkin(10);
t45 = t174 * t377 + t333;
t308 = t210 * t326;
t144 = -qJD(1) * t230 + t216 * t308;
t105 = -t141 * t211 + t351 * t162;
t256 = -qJ(4) * t229 + t105;
t50 = t144 * t377 + t256;
t26 = t215 * t45 + t218 * t50;
t396 = qJD(5) + t229;
t402 = t26 * t396;
t239 = t212 * (t210 * t281 + t213 * t216);
t167 = qJD(1) * t239;
t324 = qJD(3) * t216;
t401 = -t211 * t324 + t167;
t340 = t211 * t216;
t400 = (qJD(1) * (-t340 * t352 - t385) - qJD(5)) * t396;
t321 = qJD(5) * t377;
t82 = t216 * (t141 * t351 + t162 * t211) + t376 * t131;
t65 = -t144 * pkin(4) + t82;
t350 = qJ(4) * t144;
t86 = t229 * t377 + t350;
t36 = t215 * t65 + t218 * t86;
t399 = t218 * t321 + t36;
t398 = qJD(3) * t82;
t146 = t155 * qJD(3);
t214 = sin(qJ(6));
t217 = cos(qJ(6));
t147 = t156 * qJD(3);
t130 = qJD(1) * t147;
t290 = t376 * t339;
t193 = qJD(2) * t290;
t284 = t351 * t341;
t248 = t216 * qJD(1) * t284;
t260 = qJD(3) * t281;
t303 = qJD(3) * t376;
t285 = t211 * t303;
t267 = -qJD(1) * t193 + qJD(2) * t248 + t131 * t324 - t141 * t260 - t162 * t285;
t55 = qJD(4) * t174 + t267;
t43 = -pkin(4) * t130 - t55;
t338 = t215 * t130;
t381 = -t218 * t144 - t174 * t215;
t87 = qJD(5) * t381 - t338;
t112 = t144 * t215 - t174 * t218;
t123 = t218 * t130;
t88 = t112 * qJD(5) - t123;
t22 = pkin(5) * t88 + pkin(11) * t87 + t43;
t24 = pkin(11) * t396 + t26;
t171 = t174 * qJ(4);
t51 = -t171 + t65;
t34 = pkin(5) * t381 - t112 * pkin(11) + t51;
t270 = t214 * t24 - t217 * t34;
t129 = t146 * qJD(1);
t322 = qJD(5) * t218;
t323 = qJD(5) * t215;
t235 = qJD(2) * t239;
t69 = qJD(1) * t235 + t398;
t48 = -t129 * pkin(4) + t69;
t325 = qJD(2) * t212;
t191 = t325 * t342;
t251 = qJ(4) * t129 + qJD(1) * t191 - qJD(4) * t229;
t56 = t130 * t377 + t251;
t254 = -t215 * t48 - t218 * t56 - t45 * t322 + t323 * t50;
t5 = -pkin(11) * t129 - t254;
t1 = -qJD(6) * t270 + t214 * t22 + t217 * t5;
t109 = qJD(6) + t381;
t395 = t109 * t270 + t1;
t179 = t211 * t339 - t273;
t311 = pkin(1) * t352;
t328 = qJ(2) * t339 + t210 * t311;
t153 = t238 + t328;
t205 = t213 * t311;
t157 = t205 + t234;
t75 = -t216 * (qJD(2) * t284 + qJD(3) * t153) + t157 * t260 + t169 * t285 + t193;
t70 = t179 * qJD(4) - t75;
t280 = pkin(5) * t218 + pkin(11) * t215;
t394 = qJD(5) * t280 - (-pkin(4) - t280) * t229 - t334;
t393 = -pkin(11) * t144 + t399;
t245 = -t215 * t351 - t218 * t310;
t288 = t211 * t308;
t330 = -qJD(5) * t245 + t215 * t401 + t218 * t288;
t392 = t215 * t129 + t218 * t400;
t25 = -t215 * t50 + t218 * t45;
t391 = -t25 * t396 - t254;
t168 = qJD(1) * t290 - t248;
t259 = t285 - t168;
t10 = t214 * t34 + t217 * t24;
t2 = -qJD(6) * t10 - t214 * t5 + t217 * t22;
t389 = -t10 * t109 - t2;
t89 = t112 * t214 - t217 * t396;
t387 = t396 * t89;
t386 = t212 ^ 2 * (t210 ^ 2 + t213 ^ 2);
t293 = t396 * t381;
t294 = t396 * t112;
t106 = t129 * t156;
t383 = -t146 * t229 - t106;
t382 = t174 * t144 + t129;
t181 = -t215 * t310 + t218 * t351;
t329 = -qJD(5) * t181 + t215 * t288 - t218 * t401;
t302 = t215 * t56 - t218 * t48;
t8 = -t26 * qJD(5) - t302;
t380 = t130 * t351 - t144 * t288 - t174 * t401;
t379 = -t129 * t351 + t174 * t259 - t229 * t288;
t232 = t216 * t153 - t157 * t281 - t169 * t310;
t57 = t156 * pkin(4) + t179 * t377 + t232;
t113 = -t157 * t211 + t351 * t169;
t255 = -qJ(4) * t156 + t113;
t62 = t155 * t377 + t255;
t371 = t215 * t57 + t218 * t62;
t140 = t376 * t153;
t298 = t351 * t157;
t76 = t235 + (t140 + (t169 * t211 + t298) * t216) * qJD(3);
t59 = -t146 * pkin(4) + t76;
t250 = qJ(4) * t146 - qJD(4) * t156 + t191;
t66 = t147 * t377 + t250;
t14 = -qJD(5) * t371 - t215 * t66 + t218 * t59;
t378 = t229 ^ 2;
t6 = pkin(5) * t129 - t8;
t374 = t214 * t6;
t373 = t217 * t6;
t317 = t214 * qJD(5);
t91 = t217 * t112 + t214 * t229 + t317;
t372 = t91 * t89;
t369 = t109 * t89;
t114 = -t155 * t218 - t179 * t215;
t368 = t114 * t88;
t225 = qJD(6) * t396;
t320 = qJD(6) * t214;
t38 = t112 * t320 + t214 * t129 + (-t225 + t87) * t217;
t367 = t214 * t38;
t366 = t214 * t88;
t365 = t214 * t89;
t364 = t214 * t91;
t363 = t215 * t88;
t297 = t217 * t129 - t214 * t87;
t349 = qJD(6) * t91;
t39 = t297 + t349;
t362 = t217 * t39;
t361 = t217 * t88;
t360 = t217 * t89;
t359 = t217 * t91;
t358 = t218 * t38;
t357 = t218 * t39;
t356 = t82 * t174;
t355 = t91 * t109;
t195 = pkin(5) * t215 - pkin(11) * t218 + qJ(4);
t336 = t215 * t377;
t172 = t195 * t217 + t214 * t336;
t354 = qJD(6) * t172 + t214 * t394 - t217 * t393;
t173 = t195 * t214 - t217 * t336;
t353 = -qJD(6) * t173 + t214 * t393 + t217 * t394;
t348 = t112 * t381;
t347 = t144 * t229;
t345 = t229 * t174;
t337 = t215 * t229;
t122 = t218 * t129;
t335 = t218 * t229;
t164 = t181 * t217 + t214 * t340;
t332 = qJD(6) * t164 - t214 * t330 - t217 * t259;
t163 = -t181 * t214 + t217 * t340;
t331 = -qJD(6) * t163 - t214 * t259 + t217 * t330;
t319 = qJD(6) * t217;
t318 = qJD(6) * t218;
t316 = qJD(1) * qJD(2);
t314 = t376 * t69;
t93 = t169 * t340 + t216 * t298 + t140;
t304 = -t144 ^ 2 + t378;
t295 = t396 * t91;
t292 = t109 * t217;
t79 = t179 * qJ(4) - t93;
t220 = qJD(1) ^ 2;
t283 = t212 * t220 * t352;
t98 = t217 * t144 + t214 * t337;
t279 = t215 * t317 + t98;
t99 = -t144 * t214 + t217 * t337;
t278 = -t217 * t323 - t99;
t276 = t10 * t217 + t214 * t270;
t275 = t10 * t214 - t217 * t270;
t272 = t156 * t69 + t229 * t76;
t271 = t174 * t76 + t179 * t69;
t29 = pkin(11) * t156 + t371;
t115 = t155 * t215 - t179 * t218;
t67 = -pkin(4) * t155 - t79;
t37 = pkin(5) * t114 - pkin(11) * t115 + t67;
t16 = t214 * t37 + t217 * t29;
t15 = -t214 * t29 + t217 * t37;
t30 = -t215 * t62 + t218 * t57;
t35 = -t215 * t86 + t218 * t65;
t97 = t115 * t217 + t156 * t214;
t96 = t115 * t214 - t156 * t217;
t266 = t129 * t179 + t146 * t174;
t265 = t130 * t155 + t144 * t147;
t264 = t130 * t179 + t147 * t174;
t262 = (-qJ(2) * t308 + t201) * t210 - t177 * t213;
t258 = -t109 * t319 - t366;
t257 = -t109 * t320 + t361;
t13 = t215 * t59 + t218 * t66 + t57 * t322 - t323 * t62;
t253 = -0.2e1 * t296 * t325;
t23 = -pkin(5) * t396 - t25;
t252 = -pkin(11) * t88 + t109 * t23;
t237 = t129 * t155 - t130 * t156 + t144 * t146 - t147 * t229;
t233 = -qJD(6) * t275 + t1 * t217 - t2 * t214;
t49 = -t147 * pkin(4) - t70;
t224 = t168 * t144 - t167 * t229 + (t376 * t129 - t130 * t216 + (-t144 * t376 + t216 * t229) * qJD(3)) * t211;
t71 = pkin(3) * t144 + t256;
t223 = t229 * t71 + t69;
t221 = t215 * t400 - t122;
t108 = -t174 * t214 - t217 * t335;
t107 = -t174 * t217 + t214 * t335;
t100 = pkin(3) * t229 + t350;
t95 = qJD(5) * t115 - t147 * t218;
t94 = -t147 * t215 - t155 * t322 - t179 * t323;
t83 = pkin(3) * t147 + t250;
t80 = t179 * pkin(3) + t232;
t78 = pkin(3) * t155 + t255;
t77 = pkin(5) * t112 + pkin(11) * t381;
t74 = pkin(3) * t130 + t251;
t73 = t171 - t82;
t72 = pkin(3) * t174 - t334;
t42 = -qJD(6) * t96 - t146 * t214 - t217 * t94;
t41 = qJD(6) * t97 + t146 * t217 - t214 * t94;
t32 = pkin(5) * t144 - t35;
t28 = -pkin(5) * t156 - t30;
t27 = t95 * pkin(5) + t94 * pkin(11) + t49;
t20 = t214 * t77 + t217 * t25;
t19 = -t214 * t25 + t217 * t77;
t12 = pkin(5) * t146 - t14;
t11 = -pkin(11) * t146 + t13;
t4 = -qJD(6) * t16 - t11 * t214 + t217 * t27;
t3 = qJD(6) * t15 + t11 * t217 + t214 * t27;
t7 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t210 * t253, t213 * t253, 0.2e1 * t316 * t386 ((t213 * t328 + (qJ(2) * t341 - t205) * t210) * qJD(1) - t262) * t325, t383, t237, t266, t265, t264, 0, t105 * t147 + t113 * t130 + (qJD(1) * t155 + t144) * t191 + t271, -t105 * t146 - t113 * t129 + t174 * t75 - t179 * t267 + 0.2e1 * t191 * t229, -t129 * t232 - t130 * t93 - t144 * t75 - t146 * t81 - t147 * t82 + t155 * t267 + t272, -t267 * t93 + t69 * t232 + t75 * t82 + t76 * t81 + (qJD(1) * t113 + t105) * t191, 0, -t266, -t264, t383, t237, t265, -t129 * t80 + t130 * t79 + t144 * t70 - t146 * t72 + t147 * t73 + t155 * t55 + t272, -t130 * t78 - t144 * t83 - t147 * t71 - t155 * t74 - t271, t129 * t78 + t146 * t71 - t156 * t74 + t174 * t70 + t179 * t55 - t229 * t83, t55 * t79 + t69 * t80 + t70 * t73 + t71 * t83 + t72 * t76 + t74 * t78, -t112 * t94 - t115 * t87, -t112 * t95 + t114 * t87 - t115 * t88 + t381 * t94, -t112 * t146 - t115 * t129 - t87 * t156 - t396 * t94, t381 * t95 + t368, t114 * t129 + t146 * t381 - t88 * t156 - t396 * t95, -t146 * t396 - t106, t43 * t114 - t30 * t129 + t14 * t396 - t25 * t146 + t8 * t156 + t381 * t49 + t51 * t95 + t67 * t88, t49 * t112 + t43 * t115 + t129 * t371 - t13 * t396 + t26 * t146 + t156 * t254 - t51 * t94 - t67 * t87, -t112 * t14 + t114 * t254 - t115 * t8 - t13 * t381 + t25 * t94 - t26 * t95 + t30 * t87 - t371 * t88, t13 * t26 + t14 * t25 - t254 * t371 + t30 * t8 + t43 * t67 + t49 * t51, -t38 * t97 + t42 * t91, t38 * t96 - t39 * t97 - t41 * t91 - t42 * t89, t109 * t42 - t114 * t38 + t88 * t97 + t91 * t95, t39 * t96 + t41 * t89, -t109 * t41 - t114 * t39 - t88 * t96 - t89 * t95, t109 * t95 + t368, t109 * t4 + t114 * t2 + t12 * t89 + t15 * t88 + t23 * t41 - t270 * t95 + t28 * t39 + t6 * t96, -t1 * t114 - t10 * t95 - t109 * t3 + t12 * t91 - t16 * t88 + t23 * t42 - t28 * t38 + t6 * t97, -t1 * t96 - t10 * t41 + t15 * t38 - t16 * t39 - t2 * t97 + t270 * t42 - t3 * t89 - t4 * t91, t1 * t16 + t10 * t3 + t12 * t23 + t15 * t2 - t270 * t4 + t28 * t6; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t210 * t283, t213 * t283, -t220 * t386, t262 * t326, 0, 0, 0, 0, 0, 0, t380, t379, t224, -t81 * t167 - t82 * t168 + (-t314 - t216 * t267 + (t216 * t81 + t376 * t82) * qJD(3) + (qJD(2) * t351 - t105) * t308) * t211, 0, 0, 0, 0, 0, 0, t224, -t380, -t379, t74 * t351 - t72 * t167 + t73 * t168 + (-t71 * t308 - t314 - t216 * t55 + (t216 * t72 - t376 * t73) * qJD(3)) * t211, 0, 0, 0, 0, 0, 0, -t129 * t245 + t259 * t381 + t329 * t396 + t340 * t88, t112 * t259 + t181 * t129 + t330 * t396 - t340 * t87, -t112 * t329 - t181 * t88 + t245 * t87 + t330 * t381, -t51 * t168 + t8 * t245 - t254 * t181 - t330 * t26 + t329 * t25 + (t216 * t43 + t303 * t51) * t211, 0, 0, 0, 0, 0, 0, -t109 * t332 + t163 * t88 - t245 * t39 - t329 * t89, t109 * t331 - t164 * t88 + t245 * t38 - t329 * t91, t163 * t38 - t164 * t39 + t331 * t89 + t332 * t91, t1 * t164 - t10 * t331 + t163 * t2 - t23 * t329 - t245 * t6 + t270 * t332; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t347, t304, -t382, -t347, -qJD(3) * t229 - t345, 0, -t105 * t229 - t239 * t316 - t356 - t398, t105 * t144 + t174 * t81 + t267, 0, 0, 0, t382, t130 + t345, t347, t304, -t347, pkin(3) * t129 - qJ(4) * t130 + (-t73 - t82) * t229 + (t72 + t334) * t144, t100 * t144 + t223 + t356, t100 * t229 - t144 * t71 + t174 * t334 - t55, -pkin(3) * t69 - qJ(4) * t55 - t100 * t71 + t334 * t73 - t72 * t82, -t215 * t294 - t218 * t87 (-t88 - t294) * t218 + (t87 + t293) * t215, t112 * t144 + t221, t218 * t293 + t363, -t144 * t381 + t392, t396 * t144, qJ(4) * t88 + t122 * t377 + t25 * t144 - t396 * t35 + (t322 + t335) * t51 + (t321 * t396 + t43) * t215 + t333 * t381, -qJ(4) * t87 - t129 * t336 - t26 * t144 + t43 * t218 + (-t323 - t337) * t51 + t399 * t396 + t333 * t112, t381 * t36 + t112 * t35 + (-t229 * t26 - t377 * t87 - t8 + (t377 * t381 - t26) * qJD(5)) * t218 + (t229 * t25 + t377 * t88 + t254 + (-t112 * t377 + t25) * qJD(5)) * t215, qJ(4) * t43 - t25 * t35 - t26 * t36 + t333 * t51 - (-t215 * t254 + t218 * t8 + (-t215 * t25 + t218 * t26) * qJD(5)) * t377, -t217 * t358 + (-t214 * t318 + t278) * t91, t89 * t99 + t91 * t98 + (t360 + t364) * t323 + (t367 - t362 + (-t359 + t365) * qJD(6)) * t218, -t215 * t38 + t278 * t109 + (t295 + t257) * t218, t214 * t357 + (t217 * t318 - t279) * t89, -t215 * t39 + t279 * t109 + (t258 - t387) * t218, t109 * t218 * t396 + t363, t172 * t88 - t23 * t98 - t32 * t89 + t353 * t109 + (t2 + (-t214 * t23 - t377 * t89) * qJD(5)) * t215 + (t23 * t319 - t270 * t396 + t377 * t39 + t374) * t218, -t173 * t88 - t23 * t99 - t32 * t91 - t354 * t109 + (-t1 + (-t217 * t23 - t377 * t91) * qJD(5)) * t215 + (-t10 * t396 - t23 * t320 - t377 * t38 + t373) * t218, t10 * t98 + t172 * t38 - t173 * t39 - t270 * t99 - t353 * t91 - t354 * t89 + t275 * t323 + (-qJD(6) * t276 - t1 * t214 - t2 * t217) * t218, t1 * t173 + t172 * t2 - t23 * t32 - t353 * t270 - (-t218 * t6 + t23 * t323) * t377 + t354 * t10; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t382, -t347, -t174 ^ 2 - t378, -t73 * t174 + t223, 0, 0, 0, 0, 0, 0, t174 * t381 + t221, t174 * t112 + t392 (t87 - t293) * t218 + (-t88 + t294) * t215, t174 * t51 + (t8 + t402) * t218 + t391 * t215, 0, 0, 0, 0, 0, 0, -t357 + (-t218 * t317 - t107) * t109 + (t258 + t387) * t215, t358 + (-t217 * t322 + t108) * t109 + (t295 - t257) * t215, t107 * t91 + t108 * t89 + (-t360 + t364) * t322 + (-t367 - t362 + (t359 + t365) * qJD(6)) * t215, -t10 * t108 + t107 * t270 + (qJD(5) * t276 - t6) * t218 + (t23 * t396 + t233) * t215; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t348, t112 ^ 2 - t381 ^ 2, t229 * t381 + t338, -t348, t112 * t229 + t123, -t129, -t51 * t112 - t322 * t50 - t323 * t45 - t302 + t402, t381 * t51 - t391, 0, 0, t292 * t91 - t367 (-t38 - t369) * t217 + (-t39 - t355) * t214, t109 * t292 - t112 * t91 + t366, t109 * t365 - t362, -t109 ^ 2 * t214 + t112 * t89 + t361, -t109 * t112, -pkin(5) * t39 + t112 * t270 - t373 - t26 * t89 + (-pkin(11) * t319 - t19) * t109 + t252 * t214, pkin(5) * t38 + t10 * t112 + t374 - t26 * t91 + (pkin(11) * t320 + t20) * t109 + t252 * t217, t19 * t91 + t20 * t89 + ((-t39 + t349) * pkin(11) + t395) * t217 + ((qJD(6) * t89 - t38) * pkin(11) + t389) * t214, -pkin(5) * t6 + pkin(11) * t233 - t10 * t20 + t19 * t270 - t23 * t26; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t372, -t89 ^ 2 + t91 ^ 2, -t38 + t369, -t372, -t112 * t319 - t214 * t225 - t297 + t355, t88, -t23 * t91 - t389, t23 * t89 - t395, 0, 0;];
tauc_reg  = t7;