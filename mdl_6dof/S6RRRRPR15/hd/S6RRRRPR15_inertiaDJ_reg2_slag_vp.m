% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6RRRRPR15
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d2,d3,d4,d6]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-10 00:54
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RRRRPR15_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR15_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPR15_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRRPR15_inertiaDJ_reg2_slag_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-10 00:50:14
% EndTime: 2019-03-10 00:50:56
% DurationCPUTime: 18.11s
% Computational Cost: add. (20196->724), mult. (60760->1267), div. (0->0), fcn. (60972->12), ass. (0->311)
t150 = sin(qJ(3));
t154 = cos(qJ(3));
t146 = sin(pkin(7));
t151 = sin(qJ(2));
t147 = sin(pkin(6));
t344 = cos(pkin(7));
t244 = t147 * (-pkin(10) * t344 - pkin(9));
t155 = cos(qJ(2));
t345 = cos(pkin(6));
t302 = pkin(1) * t345;
t277 = t155 * t302;
t196 = t151 * t244 + t277;
t301 = t345 * pkin(2);
t185 = t301 + t196;
t304 = -pkin(2) * t155 - pkin(1);
t340 = t146 * t151;
t226 = (-pkin(10) * t340 + t304) * t147;
t173 = t146 * t226 + t344 * t185;
t284 = t155 * t344;
t288 = t146 * t345;
t214 = t147 * t284 + t288;
t278 = t151 * t302;
t337 = t147 * t155;
t223 = -pkin(9) * t337 - t278;
t179 = pkin(10) * t214 - t223;
t48 = -t150 * t179 + t154 * t173;
t149 = sin(qJ(4));
t373 = pkin(4) + pkin(12);
t308 = t373 * t149;
t153 = cos(qJ(4));
t342 = qJ(5) * t153;
t404 = t308 - t342;
t228 = t150 * t284 + t151 * t154;
t265 = t150 * t288;
t188 = t147 * t228 + t265;
t264 = t154 * t288;
t266 = t154 * t284;
t334 = t150 * t151;
t88 = -t264 + (-t266 + t334) * t147;
t180 = t88 * pkin(3) - pkin(11) * t188;
t168 = t146 * t185 - t226 * t344 - t180;
t329 = qJD(2) * t151;
t292 = t147 * t329;
t268 = t146 * t292;
t388 = -qJD(2) * t196 - t173 * qJD(3);
t191 = qJD(2) * (t155 * t244 - t278);
t330 = qJD(2) * t147;
t219 = (-pkin(10) * t146 * t155 + pkin(2) * t151) * t330;
t389 = qJD(3) * t179 - t146 * t219 - t344 * t191;
t29 = t150 * t389 + t154 * t388;
t403 = pkin(11) * t268 - qJD(4) * t168 - t29;
t237 = t146 * t337 - t344 * t345;
t227 = t237 * pkin(11);
t49 = t150 * t173 + t154 * t179;
t165 = -t227 + t49;
t285 = t154 * t344;
t68 = qJD(3) * t265 + (t228 * qJD(3) + (t150 * t155 + t151 * t285) * qJD(2)) * t147;
t338 = t147 * t151;
t267 = t344 * t338;
t246 = qJD(2) * t267;
t328 = qJD(2) * t155;
t291 = t147 * t328;
t326 = qJD(3) * t150;
t69 = -t150 * t246 - t326 * t338 + (qJD(3) * t214 + t291) * t154;
t402 = -t68 * pkin(3) + t69 * pkin(11) + qJD(4) * t165 + t146 * t191 - t219 * t344;
t140 = t146 ^ 2;
t217 = t277 + t301;
t313 = pkin(9) * t338;
t202 = t217 - t313;
t245 = -pkin(1) * t147 - pkin(2) * t337;
t287 = t150 * t344;
t341 = t146 * t150;
t368 = pkin(10) * t149;
t22 = -(t264 + (t266 + (-t344 ^ 2 - t140) * t334) * t147) * t368 + t153 * (-t146 * t202 + t245 * t344 + t180) - t149 * (-t154 * t223 + t202 * t287 + t245 * t341 - t227);
t276 = pkin(2) * t287;
t216 = pkin(11) * t344 + t276;
t339 = t146 * t154;
t312 = pkin(10) * t339;
t203 = t216 + t312;
t327 = qJD(3) * t146;
t401 = qJD(4) * t203 - (pkin(3) * t150 - pkin(11) * t154) * t327;
t395 = pkin(2) * t285 - pkin(10) * t341;
t208 = qJD(3) * t395;
t303 = -pkin(11) * t150 - pkin(2);
t249 = -pkin(3) * t154 + t303;
t235 = t249 * t146;
t400 = qJD(4) * t235 + t208;
t45 = pkin(3) * t237 - t48;
t343 = qJ(5) * t149;
t399 = t153 * t373 + t343;
t324 = qJD(4) * t149;
t51 = -t153 * t68 + t324 * t88;
t398 = pkin(11) * t51;
t397 = t68 * qJ(5) + t88 * qJD(5);
t183 = qJD(4) * t188;
t220 = t237 * qJD(4);
t283 = t69 * t149 - t153 * t268;
t171 = -t149 * t220 + t153 * t183 + t283;
t30 = t150 * t388 - t154 * t389;
t28 = -pkin(3) * t268 - t30;
t40 = (t69 - t220) * t153 + (t268 - t183) * t149;
t74 = -t149 * t237 + t153 * t188;
t12 = pkin(4) * t171 - t40 * qJ(5) - t74 * qJD(5) + t28;
t370 = t88 * pkin(4);
t236 = t74 * pkin(5) - t88 * pkin(12) - t370;
t394 = -pkin(12) * t171 - t12 - qJD(6) * (t149 * t165 + t153 * t168 + t236);
t393 = t236 - t22;
t117 = t276 + t312;
t106 = qJD(3) * t117;
t111 = t149 * t344 + t153 * t341;
t110 = t149 * t341 - t153 * t344;
t294 = t154 * t327;
t89 = qJD(4) * t110 - t153 * t294;
t186 = t89 * qJ(5) - t111 * qJD(5) + t106;
t206 = t149 * t216;
t248 = pkin(3) * t153 + pkin(4) + t368;
t263 = t153 * t303;
t391 = (-t263 + (pkin(12) + t248) * t154) * t146 + t111 * pkin(5) + t206;
t90 = qJD(4) * t111 + t149 * t294;
t392 = -qJD(6) * t391 - t373 * t90 - t186;
t138 = qJD(4) * t153;
t52 = t88 * t138 + t149 * t68;
t31 = t74 * t138 + t149 * t40;
t145 = t153 ^ 2;
t282 = qJD(4) * (t149 ^ 2 - t145);
t148 = sin(qJ(6));
t142 = t148 ^ 2;
t152 = cos(qJ(6));
t144 = t152 ^ 2;
t332 = t142 - t144;
t281 = t332 * qJD(6);
t73 = t149 * t188 + t153 * t237;
t390 = 0.2e1 * t73 * t171;
t387 = t171 * t88 + t68 * t73;
t386 = t110 * t171 + t73 * t90;
t385 = -t40 * t110 - t111 * t171 + t89 * t73 - t74 * t90;
t384 = t146 * (-t154 * t40 + t326 * t74) + t111 * t68 - t88 * t89;
t383 = -t138 * t73 - t149 * t171 + t40 * t153 - t324 * t74;
t311 = pkin(11) * t324;
t382 = t73 * t311 + (-t153 * t171 + t31) * pkin(11);
t134 = t146 * t326;
t381 = -t68 * t110 - t134 * t73 + t171 * t339 - t88 * t90;
t372 = pkin(5) + pkin(11);
t131 = t372 * t153;
t320 = qJD(5) * t153;
t380 = qJD(4) * t399 - qJD(6) * t131 - t320;
t379 = -0.2e1 * t171 * t74 - 0.2e1 * t40 * t73;
t378 = -t283 * t153 + (t73 * t149 - t153 * t74) * qJD(4);
t377 = -0.2e1 * t146;
t376 = 0.2e1 * t146;
t375 = 0.2e1 * qJD(3);
t374 = 0.2e1 * qJD(5);
t371 = t68 * pkin(4);
t369 = pkin(2) * t146;
t366 = t146 * pkin(11);
t10 = t402 * t149 - t403 * t153;
t5 = t10 - t397;
t4 = -pkin(5) * t171 - t5;
t365 = t4 * t148;
t364 = t4 * t152;
t23 = -t149 * t168 + t153 * t165;
t80 = t149 * t235 + t153 * t203;
t55 = t148 * t73 + t152 * t88;
t17 = qJD(6) * t55 + t148 * t68 - t152 * t171;
t360 = t148 * t17;
t359 = t148 * t55;
t319 = qJD(6) * t148;
t63 = -t110 * t319 - t148 * t134 + (qJD(6) * t339 + t90) * t152;
t358 = t148 * t63;
t92 = -t148 * t110 + t152 * t339;
t357 = t148 * t92;
t354 = t149 * t89;
t318 = qJD(6) * t152;
t18 = t148 * t171 + t68 * t152 + t318 * t73 - t319 * t88;
t353 = t152 * t18;
t54 = t148 * t88 - t73 * t152;
t352 = t152 * t54;
t91 = t110 * t152 + t148 * t339;
t62 = qJD(6) * t91 + t134 * t152 + t148 * t90;
t351 = t152 * t62;
t350 = t152 * t91;
t349 = t153 * t90;
t269 = qJ(5) * t134;
t293 = qJD(5) * t339;
t56 = t149 * t401 - t400 * t153;
t46 = -t269 + t56 + t293;
t38 = -t90 * pkin(5) - t46;
t348 = t38 * t148;
t347 = t38 * t152;
t336 = t148 * t149;
t335 = t148 * t373;
t333 = t152 * t373;
t325 = qJD(4) * t148;
t323 = qJD(4) * t152;
t322 = qJD(4) * t154;
t321 = qJD(5) * t149;
t317 = qJD(6) * t153;
t316 = qJD(6) * t373;
t33 = 0.2e1 * t74 * t40;
t58 = 0.2e1 * t88 * t68;
t315 = -0.2e1 * pkin(3) * qJD(4);
t314 = 0.2e1 * t110 * t90;
t81 = -0.2e1 * t111 * t89;
t310 = pkin(11) * t138;
t309 = t152 * t372;
t141 = t147 ^ 2;
t300 = t141 * t328;
t299 = t140 * t326;
t298 = t148 * t138;
t297 = t149 * t323;
t296 = t148 * t317;
t295 = t152 * t317;
t290 = t149 * t138;
t289 = t148 * t318;
t280 = pkin(4) * t134;
t279 = t149 * t309;
t274 = t140 * t292;
t273 = t148 * t297;
t272 = t145 * t289;
t271 = t154 * t299;
t270 = t151 * t300;
t20 = -qJ(5) * t88 - t23;
t262 = t345 * t330;
t261 = t344 * t327;
t25 = t73 * pkin(4) - t74 * qJ(5) + t45;
t19 = t73 * pkin(12) + t25;
t8 = -t148 * t19 + t393 * t152;
t9 = t393 * t148 + t152 * t19;
t260 = -t148 * t8 + t152 * t9;
t158 = t403 * t149 + t402 * t153;
t6 = t158 - t371;
t259 = t6 * t149 - t5 * t153;
t258 = t40 * t88 + t68 * t74;
t24 = t111 * t40 - t74 * t89;
t256 = -pkin(4) * t153 - t343;
t255 = -t10 * t153 + t149 * t158;
t104 = -pkin(3) * t344 - t395;
t197 = -t111 * qJ(5) + t104;
t64 = t110 * t373 + t197;
t35 = -t148 * t64 + t391 * t152;
t36 = t391 * t148 + t152 * t64;
t254 = -t148 * t35 + t152 * t36;
t253 = t148 * t54 - t152 * t55;
t119 = -pkin(3) - t399;
t86 = -t148 * t119 + t279;
t87 = t152 * t119 + t336 * t372;
t252 = -t148 * t86 + t152 * t87;
t251 = t148 * t91 - t152 * t92;
t75 = qJ(5) * t339 - t80;
t242 = -t148 * t40 - t318 * t74;
t32 = t152 * t40 - t319 * t74;
t241 = t110 * t326 - t154 * t90;
t240 = t111 * t326 + t154 * t89;
t239 = t110 * t324 - t349;
t78 = t111 * t138 - t354;
t238 = -t111 * t318 + t148 * t89;
t77 = -t111 * t319 - t152 * t89;
t234 = 0.2e1 * t110 * t89 - 0.2e1 * t111 * t90;
t231 = t52 * pkin(11);
t230 = t149 * t322 + t153 * t326;
t229 = t149 * t326 - t153 * t322;
t47 = (-t154 * t68 + t326 * t88) * t146;
t225 = t146 * t237;
t222 = -t277 + t313;
t124 = t372 * t324;
t218 = t404 * qJD(6) - t124;
t98 = t230 * t146;
t99 = t229 * t146;
t213 = qJD(3) * t225;
t207 = qJD(4) * t256 + t320;
t157 = t40 * pkin(5) - t68 * pkin(12) + t6;
t1 = -t148 * t157 + t394 * t152 + t19 * t319;
t2 = t394 * t148 + t152 * t157 - t19 * t318;
t204 = qJD(6) * t260 - t1 * t148 + t2 * t152;
t169 = t400 * t149 + t153 * t401;
t50 = t169 - t280;
t166 = -t89 * pkin(5) - pkin(12) * t134 + t50;
t13 = -t148 * t166 + t392 * t152 + t64 * t319;
t14 = t392 * t148 + t152 * t166 - t64 * t318;
t200 = qJD(6) * t254 - t13 * t148 + t14 * t152;
t60 = t119 * t319 - t372 * t298 - qJD(6) * t279 - t152 * (t404 * qJD(4) - t321);
t61 = -t119 * t318 + (-qJD(6) * t372 + qJD(5)) * t336 + (-t148 * t308 + (t148 * qJ(5) + t309) * t153) * qJD(4);
t26 = qJD(6) * t252 - t148 * t60 + t152 * t61;
t76 = t206 + (t154 * t248 - t263) * t146;
t199 = t149 * t50 - t153 * t46 + (t149 * t75 + t153 * t76) * qJD(4);
t79 = -t206 + (t153 * t249 - t154 * t368) * t146;
t198 = t149 * t169 - t153 * t56 + (-t149 * t80 - t153 * t79) * qJD(4);
t195 = -t149 * t90 - t153 * t89 + (-t110 * t153 - t111 * t149) * qJD(4);
t192 = (-t354 - t349 + (t110 * t149 + t111 * t153) * qJD(4)) * pkin(11);
t184 = t146 * t188;
t181 = qJD(3) * t184;
t139 = qJ(5) * t374;
t133 = -0.2e1 * t290;
t132 = 0.2e1 * t290;
t126 = -pkin(3) + t256;
t125 = -0.2e1 * t271;
t123 = -0.2e1 * t282;
t113 = -t149 * t318 - t298;
t112 = t138 * t152 - t149 * t319;
t109 = -t321 + (t149 * pkin(4) - t342) * qJD(4);
t108 = t223 * qJD(2);
t107 = t222 * qJD(2);
t94 = -t153 * t281 - t273;
t72 = t110 * pkin(4) + t197;
t70 = (pkin(2) * t267 - t146 * t223) * qJD(2);
t67 = -t146 * t217 + (pkin(9) * t340 + t304 * t344) * t147;
t65 = -pkin(5) * t110 - t75;
t53 = t90 * pkin(4) + t186;
t21 = -t22 - t370;
t16 = -pkin(5) * t73 - t20;
t3 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t270, 0.2e1 * (-t151 ^ 2 + t155 ^ 2) * t141 * qJD(2), 0.2e1 * t155 * t262, -0.2e1 * t270, -0.2e1 * t151 * t262, 0, -0.2e1 * pkin(1) * t141 * t329 + 0.2e1 * t108 * t345, -0.2e1 * pkin(1) * t300 + 0.2e1 * t107 * t345, 0.2e1 * (-t107 * t155 - t108 * t151 + (t151 * t223 + t155 * t222) * qJD(2)) * t147, 0.2e1 * t107 * t223 - 0.2e1 * t108 * t222, 0.2e1 * t188 * t69, -0.2e1 * t188 * t68 - 0.2e1 * t69 * t88, 0.2e1 * t184 * t292 - 0.2e1 * t237 * t69, t58, 0.2e1 * t237 * t68 - 0.2e1 * t268 * t88, -0.2e1 * t225 * t292, -0.2e1 * t237 * t30 + 0.2e1 * t268 * t48 + 0.2e1 * t67 * t68 + 0.2e1 * t70 * t88, 0.2e1 * t188 * t70 - 0.2e1 * t237 * t29 - 0.2e1 * t268 * t49 + 0.2e1 * t67 * t69, -0.2e1 * t188 * t30 + 0.2e1 * t29 * t88 - 0.2e1 * t48 * t69 - 0.2e1 * t49 * t68, -0.2e1 * t29 * t49 + 0.2e1 * t30 * t48 + 0.2e1 * t67 * t70, t33, t379, 0.2e1 * t258, t390, -0.2e1 * t387, t58, -0.2e1 * t158 * t88 + 0.2e1 * t171 * t45 + 0.2e1 * t22 * t68 + 0.2e1 * t28 * t73, 0.2e1 * t10 * t88 - 0.2e1 * t23 * t68 + 0.2e1 * t28 * t74 + 0.2e1 * t40 * t45, 0.2e1 * t10 * t73 + 0.2e1 * t158 * t74 - 0.2e1 * t171 * t23 - 0.2e1 * t22 * t40, -0.2e1 * t10 * t23 - 0.2e1 * t158 * t22 + 0.2e1 * t28 * t45, t58, -0.2e1 * t258, 0.2e1 * t387, t33, t379, t390, 0.2e1 * t171 * t20 + 0.2e1 * t21 * t40 + 0.2e1 * t5 * t73 + 0.2e1 * t6 * t74, -0.2e1 * t12 * t73 - 0.2e1 * t171 * t25 + 0.2e1 * t21 * t68 + 0.2e1 * t6 * t88, -0.2e1 * t12 * t74 - 0.2e1 * t20 * t68 - 0.2e1 * t25 * t40 - 0.2e1 * t5 * t88, 0.2e1 * t12 * t25 + 0.2e1 * t20 * t5 + 0.2e1 * t21 * t6, 0.2e1 * t55 * t18, -0.2e1 * t17 * t55 - 0.2e1 * t18 * t54, 0.2e1 * t18 * t74 + 0.2e1 * t40 * t55, 0.2e1 * t54 * t17, -0.2e1 * t17 * t74 - 0.2e1 * t40 * t54, t33, 0.2e1 * t16 * t17 + 0.2e1 * t2 * t74 + 0.2e1 * t4 * t54 + 0.2e1 * t40 * t8, 0.2e1 * t1 * t74 + 0.2e1 * t16 * t18 + 0.2e1 * t4 * t55 - 0.2e1 * t40 * t9, 0.2e1 * t1 * t54 - 0.2e1 * t17 * t9 - 0.2e1 * t18 * t8 - 0.2e1 * t2 * t55, -0.2e1 * t1 * t9 + 0.2e1 * t16 * t4 + 0.2e1 * t2 * t8; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t291, 0, -t292, 0, t108, t107, 0, 0, t154 * t181 + t341 * t69, -t150 * t181 - t294 * t88 + t339 * t69 - t341 * t68, t150 * t274 - t154 * t213 + t344 * t69, t47, t150 * t213 + t154 * t274 - t344 * t68, t146 * t246, t106 * t237 + t30 * t344 + (-pkin(2) * t68 - t154 * t70 + t292 * t395 + t326 * t67) * t146, -t117 * t268 + t208 * t237 + t29 * t344 + t294 * t67 + t341 * t70 - t369 * t69, t106 * t188 - t117 * t68 - t134 * t49 - t208 * t88 - t29 * t339 - t294 * t48 - t30 * t341 - t395 * t69, -t48 * t106 - t29 * t117 + t208 * t49 + t30 * t395 - t369 * t70, t24, t385, t384, t386, t381, t47, t104 * t171 + t106 * t73 + t28 * t110 + t134 * t22 + t158 * t339 - t169 * t88 + t45 * t90 + t79 * t68, t104 * t40 + t106 * t74 + t111 * t28 - t45 * t89 + t56 * t88 - t68 * t80 + (-t10 * t154 - t23 * t326) * t146, t10 * t110 + t111 * t158 + t169 * t74 - t171 * t80 + t22 * t89 - t23 * t90 - t79 * t40 + t56 * t73, -t10 * t80 + t104 * t28 + t106 * t45 - t158 * t79 - t169 * t22 - t23 * t56, t47, -t384, -t381, t24, t385, t386, t5 * t110 + t6 * t111 + t171 * t75 + t20 * t90 - t21 * t89 + t76 * t40 + t46 * t73 + t50 * t74, -t12 * t110 + t134 * t21 - t171 * t72 - t25 * t90 - t339 * t6 + t50 * t88 - t53 * t73 + t76 * t68, -t111 * t12 + t25 * t89 - t40 * t72 - t46 * t88 - t53 * t74 - t68 * t75 + (t154 * t5 - t20 * t326) * t146, t12 * t72 + t20 * t46 + t21 * t50 + t25 * t53 + t5 * t75 + t6 * t76, -t18 * t92 + t55 * t62, t17 * t92 + t18 * t91 - t54 * t62 + t55 * t63, t111 * t18 - t40 * t92 - t55 * t89 + t62 * t74, -t17 * t91 - t54 * t63, -t111 * t17 + t40 * t91 + t54 * t89 + t63 * t74, t24, t111 * t2 + t14 * t74 - t16 * t63 + t17 * t65 + t35 * t40 + t38 * t54 - t4 * t91 - t8 * t89, t1 * t111 + t13 * t74 + t16 * t62 + t18 * t65 - t36 * t40 + t38 * t55 - t4 * t92 + t89 * t9, -t1 * t91 + t13 * t54 - t14 * t55 - t17 * t36 - t18 * t35 + t2 * t92 - t62 * t8 + t63 * t9, -t1 * t36 - t13 * t9 + t14 * t8 + t16 * t38 + t2 * t35 + t4 * t65; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t271 (-t150 ^ 2 + t154 ^ 2) * t140 * t375, 0.2e1 * t154 * t261, t125, -0.2e1 * t150 * t261, 0, -0.2e1 * pkin(2) * t299 - 0.2e1 * t106 * t344 (-t140 * pkin(2) * t154 - t344 * t395) * t375, 0.2e1 * t106 * t341 - 0.2e1 * t117 * t134 + 0.2e1 * t208 * t339 - 0.2e1 * t294 * t395, -0.2e1 * t106 * t395 + 0.2e1 * t117 * t208, t81, t234, t240 * t376, t314, t241 * t377, t125, 0.2e1 * t104 * t90 + 0.2e1 * t106 * t110 + 0.2e1 * (t154 * t169 + t326 * t79) * t146, -0.2e1 * t104 * t89 + 0.2e1 * t106 * t111 + 0.2e1 * (-t154 * t56 - t326 * t80) * t146, 0.2e1 * t110 * t56 + 0.2e1 * t111 * t169 + 0.2e1 * t79 * t89 - 0.2e1 * t80 * t90, 0.2e1 * t104 * t106 - 0.2e1 * t169 * t79 - 0.2e1 * t56 * t80, t125, t240 * t377, t241 * t376, t81, t234, t314, 0.2e1 * t110 * t46 + 0.2e1 * t111 * t50 + 0.2e1 * t75 * t90 - 0.2e1 * t76 * t89, -0.2e1 * t110 * t53 - 0.2e1 * t72 * t90 + 0.2e1 * (-t154 * t50 + t326 * t76) * t146, -0.2e1 * t111 * t53 + 0.2e1 * t72 * t89 + 0.2e1 * (t154 * t46 - t326 * t75) * t146, 0.2e1 * t46 * t75 + 0.2e1 * t50 * t76 + 0.2e1 * t53 * t72, -0.2e1 * t92 * t62, 0.2e1 * t62 * t91 - 0.2e1 * t63 * t92, 0.2e1 * t111 * t62 + 0.2e1 * t89 * t92, 0.2e1 * t91 * t63, 0.2e1 * t111 * t63 - 0.2e1 * t89 * t91, t81, 0.2e1 * t111 * t14 - 0.2e1 * t35 * t89 - 0.2e1 * t38 * t91 - 0.2e1 * t63 * t65, 0.2e1 * t111 * t13 + 0.2e1 * t36 * t89 - 0.2e1 * t38 * t92 + 0.2e1 * t62 * t65, -0.2e1 * t13 * t91 + 0.2e1 * t14 * t92 - 0.2e1 * t35 * t62 + 0.2e1 * t36 * t63, -0.2e1 * t13 * t36 + 0.2e1 * t14 * t35 + 0.2e1 * t38 * t65; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t69, 0, -t68, t268, t30, t29, 0, 0, t31, t383, t52, t378, -t51, 0, -pkin(3) * t171 - t28 * t153 + t324 * t45 - t231, -pkin(3) * t40 + t138 * t45 + t149 * t28 + t398, -t138 * t22 - t23 * t324 + t255 + t382, -pkin(3) * t28 + ((-t23 * t149 - t22 * t153) * qJD(4) + t255) * pkin(11), 0, -t52, t51, t31, t383, t378, t138 * t21 + t20 * t324 + t259 + t382, -t109 * t73 + t12 * t153 - t126 * t171 - t25 * t324 + t231, -t109 * t74 - t12 * t149 - t126 * t40 - t138 * t25 - t398, t109 * t25 + t12 * t126 + ((t149 * t20 + t153 * t21) * qJD(4) + t259) * pkin(11), -t55 * t295 + (-t153 * t18 + t324 * t55) * t148, -t253 * t324 + (t360 - t353 + (t352 + t359) * qJD(6)) * t153 (t325 * t74 + t18) * t149 + (qJD(4) * t55 + t242) * t153, -t54 * t296 + (t153 * t17 - t324 * t54) * t152 (t323 * t74 - t17) * t149 + (-qJD(4) * t54 - t32) * t153, t31, -t124 * t54 + t131 * t17 + t40 * t86 + t61 * t74 + (-t16 * t323 + t2) * t149 + (qJD(4) * t8 - t16 * t319 + t364) * t153, -t124 * t55 + t131 * t18 - t40 * t87 + t60 * t74 + (t16 * t325 + t1) * t149 + (-qJD(4) * t9 - t16 * t318 - t365) * t153, -t17 * t87 - t18 * t86 + t54 * t60 - t55 * t61 + t260 * t324 + (t1 * t152 + t148 * t2 + (t148 * t9 + t152 * t8) * qJD(6)) * t153, -t1 * t87 - t124 * t16 + t131 * t4 + t2 * t86 - t60 * t9 + t61 * t8; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t294, 0, -t134, 0, -t106, -t208, 0, 0, t78, t195, t99, t239, t98, 0, -pkin(3) * t90 - pkin(11) * t99 + t104 * t324 - t106 * t153, pkin(3) * t89 + t104 * t138 + t106 * t149 - t230 * t366, t192 + t198, -pkin(3) * t106 + pkin(11) * t198, 0, -t99, -t98, t78, t195, t239, t192 + t199, -t109 * t110 - t126 * t90 + t153 * t53 + t229 * t366 - t324 * t72, pkin(11) * t98 - t109 * t111 + t126 * t89 - t138 * t72 - t149 * t53, pkin(11) * t199 + t109 * t72 + t126 * t53, t92 * t295 + (-t153 * t62 - t324 * t92) * t148, t251 * t324 + (-t358 - t351 + (-t350 - t357) * qJD(6)) * t153 (t111 * t325 + t62) * t149 + (-qJD(4) * t92 + t238) * t153, t91 * t296 + (-t153 * t63 + t324 * t91) * t152 (t111 * t323 + t63) * t149 + (qJD(4) * t91 - t77) * t153, t78, t111 * t61 + t124 * t91 - t131 * t63 - t86 * t89 + (-t323 * t65 + t14) * t149 + (qJD(4) * t35 - t319 * t65 + t347) * t153, t111 * t60 + t124 * t92 + t131 * t62 + t87 * t89 + (t325 * t65 + t13) * t149 + (-qJD(4) * t36 - t318 * t65 - t348) * t153, -t60 * t91 + t61 * t92 - t62 * t86 + t63 * t87 + t254 * t324 + (t13 * t152 + t14 * t148 + (t148 * t36 + t152 * t35) * qJD(6)) * t153, -t124 * t65 - t13 * t87 + t131 * t38 + t14 * t86 + t35 * t61 - t36 * t60; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t132, t123, 0, t133, 0, 0, t149 * t315, t153 * t315, 0, 0, 0, 0, 0, t132, t123, t133, 0, 0.2e1 * t109 * t153 - 0.2e1 * t126 * t324, -0.2e1 * t109 * t149 - 0.2e1 * t126 * t138, 0.2e1 * t126 * t109, -0.2e1 * t142 * t290 + 0.2e1 * t272, -0.2e1 * t145 * t281 - 0.4e1 * t153 * t273, 0.2e1 * t148 * t282 - 0.2e1 * t149 * t295, -0.2e1 * t144 * t290 - 0.2e1 * t272, 0.2e1 * t149 * t296 + 0.2e1 * t152 * t282, t132, 0.2e1 * (-t131 * t323 + t61) * t149 + 0.2e1 * (qJD(4) * t86 - t124 * t152 - t131 * t319) * t153, 0.2e1 * (t131 * t325 + t60) * t149 + 0.2e1 * (-qJD(4) * t87 + t124 * t148 - t131 * t318) * t153, 0.2e1 * t252 * t324 + 0.2e1 * (t148 * t61 + t152 * t60 + (t148 * t87 + t152 * t86) * qJD(6)) * t153, -0.2e1 * t124 * t131 - 0.2e1 * t60 * t87 + 0.2e1 * t61 * t86; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t40, 0, -t171, t68, -t158, t10, 0, 0, t68, -t40, t171, 0, 0, 0, -t40 * pkin(4) - qJ(5) * t171 - qJD(5) * t73, t158 - 0.2e1 * t371, -t5 + t397, -pkin(4) * t6 - qJ(5) * t5 - qJD(5) * t20, -t319 * t55 + t353, qJD(6) * t253 - t148 * t18 - t152 * t17, t32, t318 * t54 + t360, t242, 0, -t40 * t333 + qJ(5) * t17 + qJD(5) * t54 + t365 + (t152 * t16 + t335 * t74) * qJD(6), t40 * t335 + qJ(5) * t18 + qJD(5) * t55 + t364 + (-t148 * t16 + t333 * t74) * qJD(6) (t18 * t373 - t2) * t152 + (t17 * t373 + t1) * t148 + ((t373 * t54 - t9) * t152 + (-t373 * t55 + t8) * t148) * qJD(6), t4 * qJ(5) + t16 * qJD(5) - t204 * t373; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t89, 0, -t90, t134, -t169, t56, 0, 0, t134, t89, t90, 0, 0, 0, pkin(4) * t89 - qJ(5) * t90 - qJD(5) * t110, t169 - 0.2e1 * t280, 0.2e1 * t269 - t56 - 0.2e1 * t293, -pkin(4) * t50 - qJ(5) * t46 - qJD(5) * t75, t319 * t92 + t351, -qJD(6) * t251 - t148 * t62 + t152 * t63, t77, -t318 * t91 - t358, t238, 0, t89 * t333 - qJ(5) * t63 - qJD(5) * t91 + t348 + (t111 * t335 + t152 * t65) * qJD(6), -t89 * t335 + qJ(5) * t62 - qJD(5) * t92 + t347 + (t111 * t333 - t148 * t65) * qJD(6) (t373 * t62 - t14) * t152 + (-t373 * t63 + t13) * t148 + ((-t373 * t91 - t36) * t152 + (t373 * t92 + t35) * t148) * qJD(6), t38 * qJ(5) + t65 * qJD(5) - t200 * t373; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t138, 0, -t324, 0, -t310, t311, 0, 0, 0, -t138, t324, 0, 0, 0, t207, t310, -t311, t207 * pkin(11), -t94, 0.4e1 * t153 * t289 - t324 * t332, t112, t94, t113, 0, t218 * t148 - t152 * t380, t148 * t380 + t218 * t152, -t26, -t124 * qJ(5) + t131 * qJD(5) - t26 * t373; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t374, t139, -0.2e1 * t289, 0.2e1 * t281, 0, 0.2e1 * t289, 0, 0, 0.2e1 * qJ(5) * t318 + 0.2e1 * qJD(5) * t148, -0.2e1 * qJ(5) * t319 + 0.2e1 * qJD(5) * t152, 0, t139; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t40, t68, 0, t6, 0, 0, 0, 0, 0, 0, t32, t242, -t360 - t353 + (-t352 + t359) * qJD(6), t204; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t89, t134, 0, t50, 0, 0, 0, 0, 0, 0, t77, t238, t358 - t351 + (t350 - t357) * qJD(6), t200; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t138, 0, 0, t310, 0, 0, 0, 0, 0, 0, t112, t113, 0, t26; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t18, 0, -t17, t40, t2, t1, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t62, 0, t63, -t89, t14, t13, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t148 * t324 - t295, 0, t296 + t297, t138, t61, t60, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t319, 0, -t318, 0, t148 * t316, t152 * t316, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t319, -t318, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t3;
