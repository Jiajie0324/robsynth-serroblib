% Calculate inertial parameters regressor of inverse dynamics joint torque vector for
% S5RRRPR7
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% qJDD [5x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3,d5,theta4]';
% 
% Output:
% tau_reg [5x(5*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 21:18
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S5RRRPR7_invdynJ_fixb_reg2_slag_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRPR7_invdynJ_fixb_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRPR7_invdynJ_fixb_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RRRPR7_invdynJ_fixb_reg2_slag_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRRPR7_invdynJ_fixb_reg2_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRRPR7_invdynJ_fixb_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 21:17:22
% EndTime: 2019-12-31 21:17:36
% DurationCPUTime: 6.69s
% Computational Cost: add. (9451->522), mult. (21547->674), div. (0->0), fcn. (15644->14), ass. (0->263)
t243 = sin(qJ(2));
t242 = sin(qJ(3));
t246 = cos(qJ(2));
t328 = t242 * t246;
t366 = cos(qJ(3));
t182 = t243 * t366 + t328;
t170 = t182 * qJD(1);
t234 = qJD(2) + qJD(3);
t238 = sin(pkin(9));
t239 = cos(pkin(9));
t146 = t170 * t239 + t234 * t238;
t241 = sin(qJ(5));
t245 = cos(qJ(5));
t160 = t238 * t170;
t376 = t234 * t239 - t160;
t274 = t245 * t376;
t92 = -t146 * t241 + t274;
t384 = t92 ^ 2;
t307 = t366 * t246;
t213 = qJD(1) * t307;
t320 = qJD(1) * t243;
t306 = t242 * t320;
t168 = -t213 + t306;
t162 = qJD(5) + t168;
t383 = t162 * t92;
t91 = t146 * t245 + t241 * t376;
t382 = t91 ^ 2;
t180 = t238 * t245 + t239 * t241;
t167 = t180 * qJD(5);
t380 = t168 * t180 + t167;
t327 = t245 * t239;
t370 = -t238 * t241 + t327;
t318 = qJD(5) * t241;
t372 = qJD(5) * t327 - t238 * t318;
t379 = t168 * t370 + t372;
t237 = qJ(2) + qJ(3);
t229 = sin(t237);
t247 = cos(qJ(1));
t337 = t229 * t247;
t244 = sin(qJ(1));
t338 = t229 * t244;
t378 = g(1) * t337 + g(2) * t338;
t230 = cos(t237);
t223 = g(3) * t230;
t369 = t223 - t378;
t248 = -pkin(7) - pkin(6);
t232 = qJDD(2) + qJDD(3);
t316 = qJD(1) * qJD(2);
t301 = t246 * t316;
t315 = t243 * qJDD(1);
t141 = qJDD(2) * pkin(2) - t248 * (-t301 - t315);
t302 = t243 * t316;
t314 = t246 * qJDD(1);
t148 = t248 * (-t302 + t314);
t195 = t248 * t243;
t184 = qJD(1) * t195;
t355 = qJD(2) * pkin(2);
t176 = t184 + t355;
t196 = t248 * t246;
t186 = qJD(1) * t196;
t303 = qJD(3) * t366;
t319 = qJD(3) * t242;
t294 = -t141 * t366 - t148 * t242 + t176 * t319 - t186 * t303;
t56 = -pkin(3) * t232 + qJDD(4) + t294;
t377 = -t56 - t223;
t375 = t195 * t366 + t196 * t242;
t359 = t239 * pkin(4);
t220 = pkin(3) + t359;
t240 = -pkin(8) - qJ(4);
t374 = t220 * t230 - t229 * t240;
t373 = pkin(3) * t230 + qJ(4) * t229;
t172 = t366 * t186;
t134 = t184 * t242 - t172;
t371 = -pkin(2) * t319 + t134;
t284 = g(1) * t247 + g(2) * t244;
t138 = t234 * t182;
t298 = qJDD(1) * t366;
t280 = t242 * t315 - t246 * t298;
t100 = qJD(1) * t138 + t280;
t364 = pkin(2) * t246;
t226 = pkin(1) + t364;
t163 = pkin(2) * t302 - qJDD(1) * t226;
t329 = t242 * t243;
t282 = t234 * t329;
t293 = -t213 * t234 - t242 * t314 - t243 * t298;
t99 = qJD(1) * t282 + t293;
t40 = pkin(3) * t100 + qJ(4) * t99 - qJD(4) * t170 + t163;
t295 = -t141 * t242 + t148 * t366 - t176 * t303 - t186 * t319;
t52 = qJ(4) * t232 + qJD(4) * t234 - t295;
t18 = -t238 * t52 + t239 * t40;
t86 = t232 * t238 - t239 * t99;
t11 = pkin(4) * t100 - pkin(8) * t86 + t18;
t19 = t238 * t40 + t239 * t52;
t85 = -t232 * t239 - t238 * t99;
t12 = -pkin(8) * t85 + t19;
t194 = t226 * qJD(1);
t110 = pkin(3) * t168 - qJ(4) * t170 - t194;
t130 = t176 * t242 - t172;
t115 = qJ(4) * t234 + t130;
t63 = t110 * t239 - t115 * t238;
t41 = pkin(4) * t168 - pkin(8) * t146 + t63;
t64 = t110 * t238 + t115 * t239;
t44 = pkin(8) * t376 + t64;
t276 = t241 * t44 - t245 * t41;
t3 = -qJD(5) * t276 + t11 * t241 + t12 * t245;
t368 = t168 ^ 2;
t367 = pkin(4) * t85;
t365 = pkin(2) * t243;
t200 = t247 * t226;
t362 = g(2) * t200;
t222 = g(3) * t229;
t360 = g(3) * t246;
t231 = t239 * pkin(8);
t358 = t91 * t92;
t219 = pkin(2) * t242 + qJ(4);
t174 = (-pkin(8) - t219) * t238;
t340 = t219 * t239;
t175 = t231 + t340;
t123 = t174 * t245 - t175 * t241;
t208 = pkin(2) * t303 + qJD(4);
t342 = t168 * t239;
t289 = pkin(4) * t170 + pkin(8) * t342;
t126 = pkin(3) * t170 + qJ(4) * t168;
t114 = pkin(2) * t320 + t126;
t171 = t242 * t186;
t135 = t184 * t366 + t171;
t71 = t114 * t239 - t135 * t238;
t45 = t289 + t71;
t343 = t168 * t238;
t313 = pkin(8) * t343;
t72 = t114 * t238 + t135 * t239;
t57 = t313 + t72;
t357 = qJD(5) * t123 + t208 * t370 - t241 * t45 - t245 * t57;
t124 = t174 * t241 + t175 * t245;
t356 = -qJD(5) * t124 - t180 * t208 + t241 * t57 - t245 * t45;
t292 = qJD(2) * t307;
t137 = -t246 * t303 + t282 - t292;
t312 = t243 * t355;
t70 = pkin(3) * t138 + qJ(4) * t137 - qJD(4) * t182 + t312;
t308 = qJD(2) * t248;
t185 = t243 * t308;
t93 = qJD(3) * t375 + t185 * t366 + t308 * t328;
t37 = t238 * t70 + t239 * t93;
t17 = t19 * t239;
t354 = t238 * t86;
t353 = t85 * t239;
t192 = t240 * t238;
t349 = qJ(4) * t239;
t193 = t231 + t349;
t143 = t192 * t245 - t193 * t241;
t129 = t176 * t366 + t171;
t73 = t126 * t239 - t129 * t238;
t49 = t289 + t73;
t74 = t126 * t238 + t129 * t239;
t61 = t313 + t74;
t352 = qJD(4) * t370 + qJD(5) * t143 - t241 * t49 - t245 * t61;
t144 = t192 * t241 + t193 * t245;
t351 = -qJD(4) * t180 - qJD(5) * t144 + t241 * t61 - t245 * t49;
t350 = pkin(6) * qJDD(1);
t348 = t100 * t238;
t347 = t130 * t234;
t346 = t137 * t238;
t345 = t162 * t170;
t344 = t168 * t170;
t341 = t182 * t238;
t336 = t230 * t238;
t335 = t230 * t244;
t334 = t230 * t247;
t331 = t239 * t100;
t113 = -t234 * pkin(3) + qJD(4) - t129;
t324 = t113 - t208;
t181 = -t307 + t329;
t128 = pkin(3) * t181 - qJ(4) * t182 - t226;
t150 = t195 * t242 - t196 * t366;
t81 = t128 * t238 + t150 * t239;
t235 = t243 ^ 2;
t236 = t246 ^ 2;
t322 = t235 - t236;
t321 = t235 + t236;
t317 = -qJD(4) + t113;
t250 = qJD(1) ^ 2;
t310 = t243 * t250 * t246;
t309 = g(1) * t334 + g(2) * t335 + t222;
t300 = pkin(4) * t238 - t248;
t36 = -t238 * t93 + t239 * t70;
t299 = t241 * t86 + t245 * t85;
t80 = t128 * t239 - t150 * t238;
t225 = -pkin(2) * t366 - pkin(3);
t291 = t243 * t301;
t157 = pkin(4) * t343;
t290 = t157 - t371;
t288 = -g(1) * t338 + g(2) * t337;
t286 = -t63 * t170 + t239 * t378;
t285 = -pkin(3) * t229 - t365;
t283 = g(1) * t244 - g(2) * t247;
t278 = -t18 * t238 + t17;
t277 = -t238 * t63 + t239 * t64;
t16 = t241 * t41 + t245 * t44;
t58 = pkin(4) * t181 - t182 * t231 + t80;
t69 = -pkin(8) * t341 + t81;
t30 = -t241 * t69 + t245 * t58;
t31 = t241 * t58 + t245 * t69;
t275 = t239 * t376;
t273 = t100 * t182 - t137 * t168;
t272 = t100 * t181 + t138 * t168;
t270 = t220 * t229 + t230 * t240;
t269 = -t342 * t63 - t343 * t64 + t17 - t309;
t268 = t284 * t229;
t267 = t283 * t230;
t266 = -0.2e1 * pkin(1) * t316 - pkin(6) * qJDD(2);
t28 = -qJD(5) * t274 + t146 * t318 + t241 * t85 - t245 * t86;
t262 = -t146 * t238 + t275;
t249 = qJD(2) ^ 2;
t261 = 0.2e1 * qJDD(1) * pkin(1) - pkin(6) * t249 + t283;
t260 = pkin(1) * t250 + t284 - t350;
t259 = -t113 * t137 + t182 * t56 - t284;
t258 = -t194 * t168 + t295 + t309;
t257 = t194 * t170 - t294 - t369;
t4 = -qJD(5) * t16 + t11 * t245 - t12 * t241;
t256 = t56 + t369;
t255 = -t16 * t380 - t4 * t180 + t276 * t379 + t3 * t370 - t309;
t233 = pkin(9) + qJ(5);
t228 = cos(t233);
t35 = t56 + t367;
t77 = -pkin(4) * t376 + t113;
t254 = t170 * t276 - t228 * t369 - t35 * t370 + t380 * t77;
t253 = g(3) * t336 + t170 * t64 + (-t268 + t56) * t238;
t94 = qJD(3) * t150 + t242 * t185 - t248 * t292;
t29 = qJD(5) * t91 + t299;
t227 = sin(t233);
t252 = t16 * t170 + t35 * t180 + t379 * t77 + (t223 - t268) * t227;
t198 = qJ(4) * t334;
t197 = qJ(4) * t335;
t191 = t225 - t359;
t154 = t227 * t244 + t228 * t334;
t153 = -t227 * t334 + t228 * t244;
t152 = t227 * t247 - t228 * t335;
t151 = t227 * t335 + t228 * t247;
t119 = t370 * t182;
t118 = t180 * t182;
t112 = pkin(4) * t341 - t375;
t101 = t170 ^ 2 - t368;
t97 = qJDD(5) + t100;
t96 = -t157 + t130;
t75 = -t293 + (t168 - t306) * t234;
t62 = -pkin(4) * t346 + t94;
t51 = t146 * t342 + t354;
t50 = -t343 * t376 - t353;
t48 = -t137 * t180 + t182 * t372;
t47 = t137 * t370 + t167 * t182;
t43 = -t170 * t376 - t238 * t368 + t331;
t42 = -t146 * t170 + t239 * t368 + t348;
t32 = pkin(8) * t346 + t37;
t27 = pkin(4) * t138 + t137 * t231 + t36;
t22 = t168 * t262 - t238 * t85 + t86 * t239;
t21 = -t162 * t380 - t170 * t92 + t370 * t97;
t20 = t162 * t379 - t170 * t91 + t180 * t97;
t9 = -t29 * t370 - t380 * t92;
t8 = -t180 * t28 + t379 * t91;
t7 = -qJD(5) * t31 - t241 * t32 + t245 * t27;
t6 = qJD(5) * t30 + t241 * t27 + t245 * t32;
t5 = -t180 * t29 - t28 * t370 + t379 * t92 - t380 * t91;
t1 = [0, 0, 0, 0, 0, qJDD(1), t283, t284, 0, 0, qJDD(1) * t235 + 0.2e1 * t291, 0.2e1 * t243 * t314 - 0.2e1 * t316 * t322, qJDD(2) * t243 + t246 * t249, qJDD(1) * t236 - 0.2e1 * t291, qJDD(2) * t246 - t243 * t249, 0, t243 * t266 + t246 * t261, -t243 * t261 + t246 * t266, 0.2e1 * t321 * t350 - t284, -g(1) * (-pkin(1) * t244 + pkin(6) * t247) - g(2) * (pkin(1) * t247 + pkin(6) * t244) + (pkin(6) ^ 2 * t321 + pkin(1) ^ 2) * qJDD(1), -t137 * t170 - t182 * t99, -t138 * t170 + t181 * t99 - t273, -t137 * t234 + t182 * t232, t272, -t138 * t234 - t181 * t232, 0, -t100 * t226 - t138 * t194 + t163 * t181 + t168 * t312 + t232 * t375 - t94 * t234 + t267, t137 * t194 - t150 * t232 + t163 * t182 + t170 * t312 + t226 * t99 - t234 * t93 + t288, -t100 * t150 + t129 * t137 - t130 * t138 - t168 * t93 + t170 * t94 + t181 * t295 + t182 * t294 + t375 * t99 - t284, -t295 * t150 + t130 * t93 - t294 * t375 - t129 * t94 - t163 * t226 - t194 * t312 - g(1) * (-t226 * t244 - t247 * t248) - g(2) * (-t244 * t248 + t200), (-t137 * t146 + t182 * t86) * t239, (-t353 - t354) * t182 - t262 * t137, t138 * t146 + t181 * t86 + t239 * t273, (t137 * t376 + t85 * t182) * t238, t138 * t376 - t85 * t181 - t238 * t273, t272, t80 * t100 + t63 * t138 + t36 * t168 + t18 * t181 + t238 * t259 + t239 * t267 - t375 * t85 - t376 * t94, -t81 * t100 - t64 * t138 + t94 * t146 - t37 * t168 - t19 * t181 + t239 * t259 - t283 * t336 - t375 * t86, -t36 * t146 - t80 * t86 + t37 * t376 - t81 * t85 + (-t18 * t239 - t19 * t238) * t182 + (t238 * t64 + t239 * t63) * t137 - t288, -t362 + t113 * t94 - t56 * t375 + t18 * t80 + t19 * t81 + t63 * t36 + t64 * t37 + (g(1) * t248 - g(2) * t373) * t247 + (-g(1) * (-t226 - t373) + g(2) * t248) * t244, -t119 * t28 - t47 * t91, t118 * t28 - t119 * t29 - t47 * t92 - t48 * t91, t119 * t97 + t138 * t91 - t162 * t47 - t181 * t28, t118 * t29 - t48 * t92, -t118 * t97 + t138 * t92 - t162 * t48 - t181 * t29, t138 * t162 + t181 * t97, -g(1) * t152 - g(2) * t154 + t112 * t29 + t118 * t35 - t138 * t276 + t162 * t7 + t181 * t4 + t30 * t97 + t48 * t77 - t62 * t92, -g(1) * t151 - g(2) * t153 - t112 * t28 + t119 * t35 - t138 * t16 - t162 * t6 - t181 * t3 - t31 * t97 - t47 * t77 + t62 * t91, -t118 * t3 - t119 * t4 - t16 * t48 - t276 * t47 + t28 * t30 - t29 * t31 + t6 * t92 - t7 * t91 - t288, -t362 + t35 * t112 - t276 * t7 + t16 * t6 + t3 * t31 + t4 * t30 + t77 * t62 + (-g(1) * t300 - g(2) * t374) * t247 + (-g(1) * (-t226 - t374) - g(2) * t300) * t244; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t310, t322 * t250, t315, t310, t314, qJDD(2), t243 * t260 - t360, g(3) * t243 + t246 * t260, 0, 0, t344, t101, t75, -t344, -t280, t232, t134 * t234 + (-t168 * t320 + t232 * t366 - t234 * t319) * pkin(2) + t257, t135 * t234 + (-t170 * t320 - t232 * t242 - t234 * t303) * pkin(2) + t258, (t130 - t134) * t170 + (-t129 + t135) * t168 + (t366 * t99 - t100 * t242 + (-t168 * t366 + t170 * t242) * qJD(3)) * pkin(2), t129 * t134 - t130 * t135 + (-t366 * t294 - t360 - t242 * t295 + (-t129 * t242 + t130 * t366) * qJD(3) + (qJD(1) * t194 + t284) * t243) * pkin(2), t51, t22, t42, t50, t43, -t344, -t219 * t348 + t225 * t85 + (t238 * t324 - t71) * t168 + t286 + t371 * t376 + t377 * t239, -t219 * t331 + t225 * t86 - t371 * t146 + (t239 * t324 + t72) * t168 + t253, t208 * t275 - t85 * t340 + t71 * t146 - t72 * t376 + (t146 * t208 + t219 * t86 - t18) * t238 + t269, t56 * t225 - t64 * t72 - t63 * t71 - g(1) * (t247 * t285 + t198) - g(2) * (t244 * t285 + t197) - g(3) * (t373 + t364) + t278 * t219 + t277 * t208 - t371 * t113, t8, t5, t20, t9, t21, -t345, t123 * t97 + t162 * t356 + t191 * t29 - t290 * t92 + t254, -t124 * t97 - t162 * t357 - t191 * t28 + t290 * t91 + t252, t123 * t28 - t124 * t29 - t356 * t91 + t357 * t92 + t255, t3 * t124 + t4 * t123 + t35 * t191 - g(3) * (t374 + t364) + t290 * t77 + t357 * t16 - t356 * t276 + t284 * (t270 + t365); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t344, t101, t75, -t344, -t280, t232, t257 + t347, t129 * t234 + t258, 0, 0, t51, t22, t42, t50, t43, -t344, -qJ(4) * t348 - pkin(3) * t85 - t130 * t160 + (t347 + t377) * t239 + (t238 * t317 - t73) * t168 + t286, -qJ(4) * t331 - pkin(3) * t86 - t130 * t146 + (t239 * t317 + t74) * t168 + t253, qJD(4) * t275 - t85 * t349 + t73 * t146 - t74 * t376 + (qJ(4) * t86 + qJD(4) * t146 - t18) * t238 + t269, -t56 * pkin(3) - t64 * t74 - t63 * t73 - t113 * t130 - g(1) * (-pkin(3) * t337 + t198) - g(2) * (-pkin(3) * t338 + t197) - g(3) * t373 + t277 * qJD(4) + t278 * qJ(4), t8, t5, t20, t9, t21, -t345, t143 * t97 + t162 * t351 - t220 * t29 + t92 * t96 + t254, -t144 * t97 - t162 * t352 + t220 * t28 - t91 * t96 + t252, t143 * t28 - t144 * t29 - t351 * t91 + t352 * t92 + t255, -g(3) * t374 + t4 * t143 + t3 * t144 + t16 * t352 - t35 * t220 + t270 * t284 - t276 * t351 - t77 * t96; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t146 * t168 + t85, t168 * t376 + t86, -t146 ^ 2 - t376 ^ 2, t146 * t63 - t376 * t64 + t256, 0, 0, 0, 0, 0, 0, t91 * t162 + t29, -t28 + t383, -t382 - t384, -t16 * t92 - t276 * t91 + t256 + t367; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t358, t382 - t384, -t28 - t383, t358, -t299 + (-qJD(5) + t162) * t91, t97, -g(1) * t153 + g(2) * t151 + t16 * t162 + t222 * t227 - t77 * t91 + t4, g(1) * t154 - g(2) * t152 - t162 * t276 + t222 * t228 - t77 * t92 - t3, 0, 0;];
tau_reg = t1;