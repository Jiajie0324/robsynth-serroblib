% Calculate minimal parameter regressor of coriolis joint torque vector for
% S6RPRRPR11
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d3,d4,d6,theta2,theta5]';
% 
% Output:
% tauc_reg [6x32]
%   minimal parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 05:47
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S6RPRRPR11_coriolisvecJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(13,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPR11_coriolisvecJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRPR11_coriolisvecJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6RPRRPR11_coriolisvecJ_fixb_regmin_slag_vp: pkin has to be [13x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 05:44:32
% EndTime: 2019-03-09 05:44:55
% DurationCPUTime: 8.36s
% Computational Cost: add. (18279->535), mult. (60801->784), div. (0->0), fcn. (52542->14), ass. (0->246)
t252 = sin(pkin(12));
t254 = sin(pkin(6));
t256 = cos(pkin(12));
t259 = sin(qJ(3));
t253 = sin(pkin(7));
t359 = cos(pkin(6));
t315 = t359 * t253;
t358 = cos(pkin(7));
t316 = t259 * t358;
t370 = cos(qJ(3));
t189 = t254 * (t370 * t252 + t256 * t316) + t259 * t315;
t182 = qJD(1) * t189;
t261 = cos(qJ(4));
t293 = t359 * t358;
t333 = qJD(1) * t254;
t320 = t256 * t333;
t230 = t253 * t320;
t326 = qJD(3) - t230;
t273 = -qJD(1) * t293 - t326;
t203 = t261 * t273;
t258 = sin(qJ(4));
t150 = t182 * t258 + t203;
t149 = qJD(6) + t150;
t152 = t261 * t182 - t258 * t273;
t321 = t252 * t333;
t300 = t358 * t370;
t286 = t256 * t300;
t287 = t370 * t315;
t384 = t254 * t286 + t287;
t377 = qJD(1) * t384 - t259 * t321;
t176 = qJD(4) - t377;
t251 = sin(pkin(13));
t255 = cos(pkin(13));
t128 = t152 * t251 - t255 * t176;
t260 = cos(qJ(6));
t130 = t152 * t255 + t176 * t251;
t257 = sin(qJ(6));
t356 = t130 * t257;
t382 = -t260 * t128 - t356;
t386 = t149 * t382;
t276 = t252 * t316 - t370 * t256;
t272 = t254 * t276;
t202 = qJD(1) * t272;
t318 = qJD(3) * t370;
t385 = t253 * t318 + t202;
t313 = qJD(1) * t359;
t304 = pkin(1) * t313;
t211 = qJ(2) * t320 + t252 * t304;
t346 = t254 * t256;
t270 = (t358 * t346 + t315) * pkin(9);
t171 = qJD(1) * t270 + t211;
t163 = t370 * t171;
t350 = t252 * t253;
t204 = (-pkin(2) * t256 - pkin(9) * t350 - pkin(1)) * t254;
t198 = qJD(1) * t204 + qJD(2);
t239 = t256 * t304;
t349 = t252 * t254;
t265 = t359 * pkin(2) + (-t358 * pkin(9) - qJ(2)) * t349;
t177 = qJD(1) * t265 + t239;
t314 = t358 * t177;
t347 = t253 * t259;
t122 = t198 * t347 + t259 * t314 + t163;
t383 = -qJD(5) * t258 - t122 + t176 * (pkin(4) * t258 - qJ(5) * t261);
t289 = t128 * t257 - t130 * t260;
t381 = t149 * t289;
t218 = t258 * t347 - t261 * t358;
t307 = t253 * t321;
t379 = qJD(4) * t218 + t258 * t307 - t261 * t385;
t274 = t252 * t300 + t256 * t259;
t271 = t254 * t274;
t201 = qJD(1) * t271;
t331 = qJD(3) * t259;
t378 = -t253 * t331 + t201;
t330 = qJD(4) * t258;
t325 = pkin(10) * t330;
t147 = pkin(3) * t182 - pkin(10) * t377;
t322 = t253 * t370;
t373 = -t259 * t171 + t177 * t300 + t198 * t322;
t340 = t258 * t147 + t261 * t373;
t67 = qJ(5) * t182 + t340;
t363 = t383 * t255 + (t325 + t67) * t251;
t376 = -t251 * t383 + t255 * t67;
t375 = t176 * t258;
t374 = t254 ^ 2 * (t252 ^ 2 + t256 ^ 2);
t323 = pkin(1) * t359;
t335 = qJ(2) * t346 + t252 * t323;
t185 = t270 + t335;
t243 = t256 * t323;
t190 = t243 + t265;
t372 = -t259 * t185 + t190 * t300 + t204 * t322;
t181 = t189 * qJD(3);
t371 = t259 * (t198 * t253 + t314) + t163;
t169 = t377 * qJD(3);
t126 = qJD(4) * t152 + t258 * t169;
t125 = -qJD(4) * t203 + t261 * t169 - t182 * t330;
t170 = qJD(1) * t181;
t83 = t125 * t251 - t255 * t170;
t84 = t125 * t255 + t170 * t251;
t30 = -qJD(6) * t289 + t257 * t84 + t260 * t83;
t369 = pkin(5) * t258;
t368 = pkin(11) + qJ(5);
t332 = qJD(2) * t254;
t305 = t332 * t350;
t136 = pkin(3) * t170 - pkin(10) * t169 + qJD(1) * t305;
t329 = qJD(4) * t261;
t267 = qJD(2) * t272;
t87 = -qJD(1) * t267 + qJD(3) * t373;
t148 = -t177 * t253 + t358 * t198;
t93 = -pkin(3) * t377 - pkin(10) * t182 + t148;
t97 = -pkin(10) * t273 + t122;
t281 = t258 * t136 + t261 * t87 + t93 * t329 - t330 * t97;
t20 = qJ(5) * t170 + qJD(5) * t176 + t281;
t266 = qJD(2) * t271;
t88 = qJD(1) * t266 + t371 * qJD(3);
t43 = t126 * pkin(4) - t125 * qJ(5) - t152 * qJD(5) + t88;
t11 = t255 * t20 + t251 * t43;
t348 = t252 * t259;
t188 = t254 * t348 - t384;
t107 = qJD(3) * t372 - t267;
t153 = -t190 * t253 + t358 * t204;
t113 = pkin(3) * t188 - pkin(10) * t189 + t153;
t215 = t253 * t346 - t293;
t264 = t370 * t185 + (t358 * t190 + t204 * t253) * t259;
t120 = -t215 * pkin(10) + t264;
t180 = (t287 + (t286 - t348) * t254) * qJD(3);
t140 = pkin(3) * t181 - pkin(10) * t180 + t305;
t277 = t261 * t107 + t113 * t329 - t120 * t330 + t258 * t140;
t28 = qJ(5) * t181 + qJD(5) * t188 + t277;
t108 = qJD(3) * t264 + t266;
t155 = t189 * t261 - t215 * t258;
t134 = qJD(4) * t155 + t180 * t258;
t154 = t189 * t258 + t215 * t261;
t135 = -qJD(4) * t154 + t180 * t261;
t48 = t134 * pkin(4) - t135 * qJ(5) - t155 * qJD(5) + t108;
t13 = t251 * t48 + t255 * t28;
t57 = t258 * t93 + t261 * t97;
t53 = qJ(5) * t176 + t57;
t96 = pkin(3) * t273 - t373;
t63 = t150 * pkin(4) - t152 * qJ(5) + t96;
t23 = t251 * t63 + t255 * t53;
t341 = t258 * t113 + t261 * t120;
t59 = qJ(5) * t188 + t341;
t119 = t215 * pkin(3) - t372;
t69 = t154 * pkin(4) - t155 * qJ(5) + t119;
t32 = t251 * t69 + t255 * t59;
t312 = -t261 * t136 + t258 * t87 + t97 * t329 + t93 * t330;
t24 = -pkin(4) * t170 + t312;
t367 = t24 * t251;
t366 = t24 * t255;
t351 = t251 * t261;
t142 = -t255 * t182 + t351 * t377;
t344 = t255 * t261;
t143 = t182 * t251 + t344 * t377;
t352 = t251 * t257;
t225 = -t260 * t255 + t352;
t226 = t251 * t260 + t255 * t257;
t328 = qJD(6) * t258;
t365 = t142 * t257 - t143 * t260 - t225 * t329 - t226 * t328;
t327 = qJD(6) * t260;
t345 = t255 * t258;
t364 = -t260 * t142 - t143 * t257 + t226 * t329 + t327 * t345 - t328 * t352;
t362 = -t255 * t325 - t376;
t361 = t149 * t226;
t324 = pkin(5) * t251 + pkin(10);
t117 = t258 * t373;
t68 = -pkin(4) * t182 - t147 * t261 + t117;
t360 = -pkin(5) * t142 + t324 * t329 - t68;
t111 = pkin(4) * t152 + qJ(5) * t150;
t56 = -t258 * t97 + t261 * t93;
t45 = t251 * t111 + t255 * t56;
t357 = qJ(5) * t126;
t355 = t150 * t176;
t354 = t150 * t251;
t353 = t152 * t176;
t52 = -pkin(4) * t176 + qJD(5) - t56;
t342 = -qJD(5) + t52;
t339 = -t379 * t251 + t378 * t255;
t338 = t378 * t251 + t379 * t255;
t219 = t258 * t358 + t261 * t347;
t337 = qJD(4) * t219 + t258 * t385 + t261 * t307;
t336 = t149 * t225;
t232 = -pkin(4) * t261 - qJ(5) * t258 - pkin(3);
t206 = pkin(10) * t344 + t251 * t232;
t10 = -t20 * t251 + t255 * t43;
t12 = -t251 * t28 + t255 * t48;
t22 = -t251 * t53 + t255 * t63;
t31 = -t251 * t59 + t255 * t69;
t44 = t255 * t111 - t251 * t56;
t311 = t113 * t261 - t258 * t120;
t310 = t261 * t176;
t262 = qJD(1) ^ 2;
t302 = t254 * t262 * t359;
t6 = pkin(5) * t126 - pkin(11) * t84 + t10;
t7 = -pkin(11) * t83 + t11;
t299 = t257 * t6 + t260 * t7;
t197 = -pkin(11) * t251 * t258 + t206;
t298 = -pkin(11) * t143 + qJD(6) * t197 + t377 * t369 - (-pkin(11) * t344 + t369) * qJD(4) - t363;
t223 = t255 * t232;
t186 = -pkin(11) * t345 + t223 + (-pkin(10) * t251 - pkin(5)) * t261;
t297 = -pkin(11) * t142 - qJD(6) * t186 - (-pkin(10) * t345 - pkin(11) * t351) * qJD(4) + t376;
t194 = t255 * t219 - t251 * t322;
t295 = qJD(6) * t194 + t339;
t193 = -t251 * t219 - t255 * t322;
t294 = -qJD(6) * t193 + t338;
t14 = pkin(5) * t150 - pkin(11) * t130 + t22;
t16 = -pkin(11) * t128 + t23;
t3 = t14 * t260 - t16 * t257;
t4 = t14 * t257 + t16 * t260;
t138 = t155 * t255 + t188 * t251;
t17 = pkin(5) * t154 - pkin(11) * t138 + t31;
t137 = t155 * t251 - t188 * t255;
t21 = -pkin(11) * t137 + t32;
t291 = t17 * t260 - t21 * t257;
t290 = t17 * t257 + t21 * t260;
t76 = t260 * t137 + t138 * t257;
t77 = -t137 * t257 + t138 * t260;
t288 = (-qJ(2) * t321 + t239) * t252 - t211 * t256;
t285 = -t258 * t107 - t113 * t330 - t120 * t329 + t140 * t261;
t60 = -pkin(4) * t188 - t311;
t284 = -0.2e1 * t313 * t332;
t234 = t368 * t251;
t283 = pkin(11) * t354 - qJD(5) * t255 + qJD(6) * t234 + t45;
t235 = t368 * t255;
t282 = pkin(11) * t150 * t255 + pkin(5) * t152 + qJD(5) * t251 + qJD(6) * t235 + t44;
t280 = -pkin(10) * t170 + t176 * t96;
t29 = -qJD(6) * t356 - t128 * t327 - t257 * t83 + t260 * t84;
t34 = -pkin(4) * t181 - t285;
t2 = -qJD(6) * t4 - t257 * t7 + t260 * t6;
t247 = -pkin(5) * t255 - pkin(4);
t228 = t324 * t258;
t213 = t225 * t258;
t212 = t226 * t258;
t205 = -pkin(10) * t351 + t223;
t102 = t135 * t255 + t181 * t251;
t101 = t135 * t251 - t181 * t255;
t50 = -pkin(5) * t354 + t57;
t49 = pkin(5) * t137 + t60;
t40 = pkin(5) * t128 + t52;
t37 = qJD(6) * t77 + t260 * t101 + t102 * t257;
t36 = -qJD(6) * t76 - t101 * t257 + t102 * t260;
t18 = pkin(5) * t101 + t34;
t15 = pkin(5) * t83 + t24;
t9 = -pkin(11) * t101 + t13;
t8 = pkin(5) * t134 - pkin(11) * t102 + t12;
t1 = qJD(6) * t3 + t299;
t5 = [0, 0, 0, t252 * t284, t256 * t284, 0.2e1 * qJD(2) * qJD(1) * t374 ((t256 * t335 + (qJ(2) * t349 - t243) * t252) * qJD(1) - t288) * t332, t169 * t189 + t180 * t182, -t169 * t188 - t170 * t189 + t180 * t377 - t181 * t182, -t169 * t215 - t180 * t273, t170 * t215 + t181 * t273, 0, t108 * t273 + t88 * t215 + t153 * t170 + t148 * t181 + (qJD(1) * t188 - t377) * t305, t107 * t273 + t148 * t180 + t153 * t169 + 0.2e1 * t182 * t305 + t87 * t215, t125 * t155 + t135 * t152, -t125 * t154 - t126 * t155 - t134 * t152 - t135 * t150, t125 * t188 + t135 * t176 + t152 * t181 + t155 * t170, -t126 * t188 - t134 * t176 - t150 * t181 - t154 * t170, t170 * t188 + t176 * t181, t108 * t150 + t119 * t126 + t96 * t134 + t88 * t154 + t170 * t311 + t176 * t285 + t56 * t181 - t188 * t312, t108 * t152 + t119 * t125 + t96 * t135 + t88 * t155 - t170 * t341 - t176 * t277 - t57 * t181 - t188 * t281, t10 * t154 + t101 * t52 + t12 * t150 + t126 * t31 + t128 * t34 + t134 * t22 + t137 * t24 + t60 * t83, t102 * t52 - t11 * t154 - t126 * t32 - t13 * t150 + t130 * t34 - t134 * t23 + t138 * t24 + t60 * t84, -t10 * t138 - t101 * t23 - t102 * t22 - t11 * t137 - t12 * t130 - t128 * t13 - t31 * t84 - t32 * t83, t10 * t31 + t11 * t32 + t12 * t22 + t13 * t23 + t24 * t60 + t34 * t52, -t289 * t36 + t29 * t77, t289 * t37 - t29 * t76 - t30 * t77 + t36 * t382, t126 * t77 - t134 * t289 + t149 * t36 + t154 * t29, -t126 * t76 + t134 * t382 - t149 * t37 - t154 * t30, t126 * t154 + t134 * t149 (-qJD(6) * t290 - t257 * t9 + t260 * t8) * t149 + t291 * t126 + t2 * t154 + t3 * t134 - t18 * t382 + t49 * t30 + t15 * t76 + t40 * t37 -(qJD(6) * t291 + t257 * t8 + t260 * t9) * t149 - t290 * t126 - t1 * t154 - t4 * t134 - t18 * t289 + t49 * t29 + t15 * t77 + t40 * t36; 0, 0, 0, t252 * t302, t256 * t302, -t262 * t374, t288 * t333, 0, 0, 0, 0, 0, t358 * t170 - t201 * t273 + (t273 * t331 + t321 * t377) * t253, t358 * t169 + t202 * t273 + (-t182 * t321 + t273 * t318) * t253, 0, 0, 0, 0, 0, -t126 * t322 - t150 * t378 - t218 * t170 - t176 * t337, -t125 * t322 - t152 * t378 - t219 * t170 + t379 * t176, t193 * t126 + t128 * t337 - t150 * t339 + t218 * t83, -t194 * t126 + t130 * t337 + t150 * t338 + t218 * t84, t128 * t338 + t130 * t339 - t193 * t84 - t194 * t83, t10 * t193 + t11 * t194 + t218 * t24 - t22 * t339 - t23 * t338 + t337 * t52, 0, 0, 0, 0, 0 (t193 * t260 - t194 * t257) * t126 + t218 * t30 - t337 * t382 + (t257 * t294 - t260 * t295) * t149 -(t193 * t257 + t194 * t260) * t126 + t218 * t29 - t337 * t289 + (t257 * t295 + t260 * t294) * t149; 0, 0, 0, 0, 0, 0, 0, -t182 * t377, t182 ^ 2 - t377 ^ 2, t273 * t377 + t169, t182 * t326 + (t182 * t293 - t181) * qJD(1), 0, -t122 * t230 - t148 * t182 + (t122 * t293 - t274 * t332) * qJD(1) + (t122 - t371) * qJD(3), -t373 * t230 - t148 * t377 + (t276 * t332 + t293 * t373) * qJD(1), t125 * t258 + t152 * t310 (t125 - t355) * t261 + (-t126 - t353) * t258, -t152 * t182 + t258 * t170 + t176 * t310, t150 * t182 + t261 * t170 - t176 * t375, -t176 * t182, -pkin(3) * t126 - t122 * t150 - t56 * t182 - t88 * t261 + (t117 + (-pkin(10) * qJD(4) - t147) * t261) * t176 + t280 * t258, -pkin(3) * t125 - t122 * t152 + t57 * t182 + t88 * t258 + (t325 + t340) * t176 + t280 * t261, t126 * t205 - t128 * t68 - t142 * t52 + t363 * t150 + (-t10 + (pkin(10) * t128 + t251 * t52) * qJD(4)) * t261 + (pkin(10) * t83 + t176 * t22 + t367) * t258, -t126 * t206 - t130 * t68 - t143 * t52 - t362 * t150 + (t11 + (pkin(10) * t130 + t255 * t52) * qJD(4)) * t261 + (pkin(10) * t84 - t176 * t23 + t366) * t258, t142 * t23 + t143 * t22 - t205 * t84 - t206 * t83 + (-t10 * t255 - t11 * t251) * t258 - t363 * t130 - t362 * t128 + (-t22 * t255 - t23 * t251) * t329, t10 * t205 + t11 * t206 - t52 * t68 + t362 * t23 + t363 * t22 + (t24 * t258 + t329 * t52) * pkin(10), -t213 * t29 - t289 * t365, -t212 * t29 + t213 * t30 + t289 * t364 + t365 * t382, -t126 * t213 + t149 * t365 - t261 * t29 - t289 * t375, -t126 * t212 - t149 * t364 + t261 * t30 + t375 * t382, -t126 * t261 + t149 * t375 (t186 * t260 - t197 * t257) * t126 - t2 * t261 + t228 * t30 + t15 * t212 - t360 * t382 + t364 * t40 + t3 * t375 + (t257 * t297 - t260 * t298) * t149 -(t186 * t257 + t197 * t260) * t126 + t1 * t261 + t228 * t29 - t15 * t213 - t360 * t289 + t365 * t40 - t4 * t375 + (t257 * t298 + t260 * t297) * t149; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t152 * t150, -t150 ^ 2 + t152 ^ 2, t125 + t355, -t126 + t353, t170, -t152 * t96 + t176 * t57 - t312, t150 * t96 + t176 * t56 - t281, -t251 * t357 - pkin(4) * t83 - t128 * t57 - t152 * t22 - t366 + (t251 * t342 - t44) * t150, -t255 * t357 - pkin(4) * t84 - t130 * t57 + t152 * t23 + t367 + (t255 * t342 + t45) * t150, t128 * t45 + t130 * t44 + (-qJ(5) * t83 - qJD(5) * t128 - t150 * t22 + t11) * t255 + (qJ(5) * t84 + qJD(5) * t130 - t150 * t23 - t10) * t251, -pkin(4) * t24 - t22 * t44 - t23 * t45 - t52 * t57 + (-t22 * t251 + t23 * t255) * qJD(5) + (-t10 * t251 + t11 * t255) * qJ(5), t226 * t29 + t289 * t336, -t225 * t29 - t226 * t30 + t289 * t361 - t336 * t382, t126 * t226 - t149 * t336 + t152 * t289, -t126 * t225 - t149 * t361 - t152 * t382, -t149 * t152 (-t234 * t260 - t235 * t257) * t126 + t247 * t30 + t15 * t225 - t3 * t152 + t50 * t382 + t361 * t40 + (t257 * t283 - t260 * t282) * t149 -(-t234 * t257 + t235 * t260) * t126 + t247 * t29 + t15 * t226 + t4 * t152 + t50 * t289 - t336 * t40 + (t257 * t282 + t260 * t283) * t149; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t130 * t150 + t83, -t128 * t150 + t84, -t128 ^ 2 - t130 ^ 2, t128 * t23 + t130 * t22 + t24, 0, 0, 0, 0, 0, t30 - t381, t29 + t386; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t289 * t382, t289 ^ 2 - t382 ^ 2, t29 - t386, -t30 - t381, t126, t149 * t4 + t289 * t40 + t2, -t40 * t382 - t299 + (-qJD(6) + t149) * t3;];
tauc_reg  = t5;
