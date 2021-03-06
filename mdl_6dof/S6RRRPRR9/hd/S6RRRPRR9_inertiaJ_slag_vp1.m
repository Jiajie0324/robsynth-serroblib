% Calculate joint inertia matrix for
% S6RRRPRR9
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d2,d3,d5,d6,theta4]';
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
% Mq [6x6]
%   inertia matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 19:14
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S6RRRPRR9_inertiaJ_slag_vp1(qJ, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(13,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRR9_inertiaJ_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6RRRPRR9_inertiaJ_slag_vp1: pkin has to be [13x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRPRR9_inertiaJ_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RRRPRR9_inertiaJ_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RRRPRR9_inertiaJ_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 18:56:43
% EndTime: 2019-03-09 18:57:08
% DurationCPUTime: 10.64s
% Computational Cost: add. (64902->721), mult. (176042->1001), div. (0->0), fcn. (233147->16), ass. (0->341)
t402 = sin(pkin(13));
t403 = sin(pkin(7));
t337 = t403 * t402;
t404 = cos(pkin(13));
t338 = t404 * t403;
t407 = sin(qJ(3));
t409 = cos(qJ(3));
t285 = t337 * t409 + t338 * t407;
t310 = cos(pkin(7));
t324 = t402 * t409 + t404 * t407;
t287 = t324 * t310;
t311 = cos(pkin(6));
t317 = cos(qJ(2));
t318 = cos(qJ(1));
t393 = t317 * t318;
t314 = sin(qJ(2));
t315 = sin(qJ(1));
t395 = t315 * t314;
t294 = t311 * t393 - t395;
t394 = t315 * t317;
t396 = t314 * t318;
t295 = t311 * t396 + t394;
t299 = -t402 * t407 + t404 * t409;
t309 = sin(pkin(6));
t397 = t309 * t318;
t227 = -t285 * t397 + t294 * t287 + t295 * t299;
t313 = sin(qJ(5));
t408 = cos(qJ(5));
t416 = t294 * t403 + t310 * t397;
t206 = t227 * t313 + t408 * t416;
t296 = -t311 * t394 - t396;
t297 = -t311 * t395 + t393;
t399 = t309 * t315;
t229 = t285 * t399 + t287 * t296 + t297 * t299;
t417 = t296 * t403 - t310 * t399;
t208 = t229 * t313 + t408 * t417;
t240 = t311 * t285 + (t287 * t317 + t299 * t314) * t309;
t398 = t309 * t317;
t293 = t311 * t310 - t398 * t403;
t224 = t240 * t313 - t293 * t408;
t207 = t227 * t408 - t313 * t416;
t286 = t299 * t310;
t320 = -t337 * t407 + t338 * t409;
t319 = t309 * t320;
t226 = t286 * t294 - t295 * t324 - t318 * t319;
t312 = sin(qJ(6));
t316 = cos(qJ(6));
t156 = -t207 * t312 - t226 * t316;
t157 = t207 * t316 - t226 * t312;
t103 = Icges(7,5) * t157 + Icges(7,6) * t156 + Icges(7,3) * t206;
t105 = Icges(7,4) * t157 + Icges(7,2) * t156 + Icges(7,6) * t206;
t107 = Icges(7,1) * t157 + Icges(7,4) * t156 + Icges(7,5) * t206;
t28 = t103 * t206 + t105 * t156 + t107 * t157;
t209 = t229 * t408 - t313 * t417;
t228 = t296 * t286 - t297 * t324 + t315 * t319;
t158 = -t209 * t312 - t228 * t316;
t159 = t209 * t316 - t228 * t312;
t104 = Icges(7,5) * t159 + Icges(7,6) * t158 + Icges(7,3) * t208;
t106 = Icges(7,4) * t159 + Icges(7,2) * t158 + Icges(7,6) * t208;
t108 = Icges(7,1) * t159 + Icges(7,4) * t158 + Icges(7,5) * t208;
t29 = t104 * t206 + t106 * t156 + t108 * t157;
t225 = t240 * t408 + t293 * t313;
t239 = t311 * t320 + (t286 * t317 - t314 * t324) * t309;
t180 = -t225 * t312 - t239 * t316;
t181 = t225 * t316 - t239 * t312;
t118 = Icges(7,5) * t181 + Icges(7,6) * t180 + Icges(7,3) * t224;
t119 = Icges(7,4) * t181 + Icges(7,2) * t180 + Icges(7,6) * t224;
t120 = Icges(7,1) * t181 + Icges(7,4) * t180 + Icges(7,5) * t224;
t41 = t118 * t206 + t119 * t156 + t120 * t157;
t1 = t206 * t28 + t208 * t29 + t224 * t41;
t415 = -t1 / 0.2e1;
t30 = t103 * t208 + t105 * t158 + t107 * t159;
t31 = t104 * t208 + t106 * t158 + t108 * t159;
t42 = t118 * t208 + t119 * t158 + t120 * t159;
t2 = t206 * t30 + t208 * t31 + t224 * t42;
t414 = t2 / 0.2e1;
t36 = t103 * t224 + t105 * t180 + t107 * t181;
t37 = t104 * t224 + t106 * t180 + t108 * t181;
t49 = t224 * t118 + t180 * t119 + t181 * t120;
t43 = t49 * t224;
t9 = t36 * t206 + t37 * t208 + t43;
t413 = t9 / 0.2e1;
t412 = t206 / 0.2e1;
t411 = t208 / 0.2e1;
t410 = t224 / 0.2e1;
t406 = t207 * pkin(5);
t307 = pkin(3) * t409 + pkin(2);
t405 = -pkin(2) + t307;
t254 = Icges(3,5) * t295 + Icges(3,6) * t294 - Icges(3,3) * t397;
t401 = t254 * t318;
t400 = t309 * t314;
t336 = -t157 * rSges(7,1) - t156 * rSges(7,2);
t109 = rSges(7,3) * t206 - t336;
t392 = pkin(12) * t206 + t109 + t406;
t110 = t159 * rSges(7,1) + t158 * rSges(7,2) + t208 * rSges(7,3);
t391 = t209 * pkin(5) + pkin(12) * t208 + t110;
t121 = rSges(7,1) * t181 + rSges(7,2) * t180 + rSges(7,3) * t224;
t390 = pkin(5) * t225 + pkin(12) * t224 + t121;
t166 = rSges(5,1) * t227 + rSges(5,2) * t226 - rSges(5,3) * t416;
t339 = t403 * t407;
t288 = pkin(3) * t339 + (pkin(10) + qJ(4)) * t310;
t355 = t403 * pkin(10);
t356 = t310 * t407;
t289 = pkin(3) * t356 - qJ(4) * t403 - t355;
t345 = -t288 * t397 + t294 * t289;
t378 = t416 * pkin(10);
t210 = t295 * t405 + t345 + t378;
t389 = -t166 - t210;
t176 = t227 * pkin(4) - t226 * pkin(11);
t186 = t417 * t210;
t388 = -t176 * t417 - t186;
t177 = t229 * pkin(4) - pkin(11) * t228;
t327 = -t297 * pkin(2) + pkin(10) * t417;
t359 = t288 * t399 + t296 * t289 + t297 * t307;
t211 = t327 + t359;
t189 = t293 * t211;
t387 = t293 * t177 + t189;
t386 = -t176 - t210;
t385 = -t177 - t211;
t198 = pkin(4) * t240 - pkin(11) * t239;
t235 = (-t310 * pkin(10) + t288) * t311 + ((t355 + t289) * t317 + t405 * t314) * t309;
t214 = t416 * t235;
t384 = -t198 * t416 - t214;
t185 = rSges(5,1) * t240 + rSges(5,2) * t239 + rSges(5,3) * t293;
t383 = -t185 - t235;
t340 = t409 * t403;
t333 = t309 * t340;
t357 = t310 * t409;
t247 = t294 * t357 - t295 * t407 - t318 * t333;
t332 = t309 * t339;
t248 = t294 * t356 + t295 * t409 - t318 * t332;
t196 = rSges(4,1) * t248 + rSges(4,2) * t247 - rSges(4,3) * t416;
t252 = pkin(2) * t295 - t378;
t382 = -t196 - t252;
t381 = -t198 - t235;
t251 = t311 * t327;
t380 = t311 * t211 - t251;
t379 = t252 * t399 - t327 * t397;
t377 = t318 * pkin(1) + pkin(9) * t399;
t127 = Icges(6,5) * t207 - Icges(6,6) * t206 - Icges(6,3) * t226;
t129 = Icges(6,4) * t207 - Icges(6,2) * t206 - Icges(6,6) * t226;
t131 = Icges(6,1) * t207 - Icges(6,4) * t206 - Icges(6,5) * t226;
t58 = -t127 * t226 - t129 * t206 + t131 * t207;
t128 = Icges(6,5) * t209 - Icges(6,6) * t208 - Icges(6,3) * t228;
t130 = Icges(6,4) * t209 - Icges(6,2) * t208 - Icges(6,6) * t228;
t132 = Icges(6,1) * t209 - Icges(6,4) * t208 - Icges(6,5) * t228;
t59 = -t128 * t226 - t130 * t206 + t132 * t207;
t146 = Icges(6,5) * t225 - Icges(6,6) * t224 - Icges(6,3) * t239;
t147 = Icges(6,4) * t225 - Icges(6,2) * t224 - Icges(6,6) * t239;
t148 = Icges(6,1) * t225 - Icges(6,4) * t224 - Icges(6,5) * t239;
t71 = -t146 * t226 - t147 * t206 + t148 * t207;
t13 = -t226 * t58 - t228 * t59 - t239 * t71;
t3 = -t226 * t28 - t228 * t29 - t239 * t41;
t375 = t3 / 0.2e1 + t13 / 0.2e1;
t60 = -t127 * t228 - t129 * t208 + t131 * t209;
t61 = -t128 * t228 - t130 * t208 + t132 * t209;
t72 = -t146 * t228 - t147 * t208 + t148 * t209;
t14 = -t226 * t60 - t228 * t61 - t239 * t72;
t4 = -t226 * t30 - t228 * t31 - t239 * t42;
t374 = t4 / 0.2e1 + t14 / 0.2e1;
t15 = t293 * t71 - t416 * t58 - t417 * t59;
t5 = -t28 * t416 - t29 * t417 + t293 * t41;
t373 = -t5 / 0.2e1 - t15 / 0.2e1;
t16 = t293 * t72 - t416 * t60 - t417 * t61;
t6 = t293 * t42 - t30 * t416 - t31 * t417;
t372 = -t6 / 0.2e1 - t16 / 0.2e1;
t17 = t71 * t311 + (t315 * t59 - t318 * t58) * t309;
t7 = t41 * t311 + (-t28 * t318 + t29 * t315) * t309;
t371 = -t7 / 0.2e1 - t17 / 0.2e1;
t18 = t72 * t311 + (t315 * t61 - t318 * t60) * t309;
t8 = t42 * t311 + (-t30 * t318 + t31 * t315) * t309;
t370 = -t8 / 0.2e1 - t18 / 0.2e1;
t44 = t49 * t239;
t10 = -t36 * t226 - t37 * t228 - t44;
t63 = -t127 * t239 - t129 * t224 + t131 * t225;
t64 = -t128 * t239 - t130 * t224 + t132 * t225;
t78 = -t239 * t146 - t224 * t147 + t225 * t148;
t75 = t78 * t239;
t19 = -t63 * t226 - t64 * t228 - t75;
t369 = t10 / 0.2e1 + t19 / 0.2e1;
t47 = t49 * t293;
t11 = -t36 * t416 - t37 * t417 + t47;
t76 = t78 * t293;
t20 = -t416 * t63 - t417 * t64 + t76;
t368 = -t11 / 0.2e1 - t20 / 0.2e1;
t48 = t49 * t311;
t12 = t48 + (t37 * t315 - t36 * t318) * t309;
t77 = t78 * t311;
t21 = t77 + (t64 * t315 - t63 * t318) * t309;
t367 = -t12 / 0.2e1 - t21 / 0.2e1;
t366 = t37 / 0.2e1 + t42 / 0.2e1;
t365 = t41 / 0.2e1 + t36 / 0.2e1;
t133 = rSges(6,1) * t207 - rSges(6,2) * t206 - rSges(6,3) * t226;
t362 = -t133 + t386;
t149 = rSges(6,1) * t225 - rSges(6,2) * t224 - rSges(6,3) * t239;
t361 = -t149 + t381;
t182 = Icges(5,5) * t240 + Icges(5,6) * t239 + Icges(5,3) * t293;
t183 = Icges(5,4) * t240 + Icges(5,2) * t239 + Icges(5,6) * t293;
t184 = Icges(5,1) * t240 + Icges(5,4) * t239 + Icges(5,5) * t293;
t98 = t293 * t182 + t239 * t183 + t240 * t184;
t360 = t311 * t177 + t380;
t134 = t209 * rSges(6,1) - t208 * rSges(6,2) - t228 * rSges(6,3);
t267 = t311 * t340 + (-t314 * t407 + t317 * t357) * t309;
t268 = t311 * t339 + (t314 * t409 + t317 * t356) * t309;
t230 = Icges(4,5) * t268 + Icges(4,6) * t267 + Icges(4,3) * t293;
t231 = Icges(4,4) * t268 + Icges(4,2) * t267 + Icges(4,6) * t293;
t232 = Icges(4,1) * t268 + Icges(4,4) * t267 + Icges(4,5) * t293;
t138 = t293 * t230 + t267 * t231 + t268 * t232;
t167 = t229 * rSges(5,1) + t228 * rSges(5,2) - rSges(5,3) * t417;
t249 = t296 * t357 - t297 * t407 + t315 * t333;
t250 = t296 * t356 + t297 * t409 + t315 * t332;
t197 = t250 * rSges(4,1) + t249 * rSges(4,2) - rSges(4,3) * t417;
t279 = Icges(3,3) * t311 + (Icges(3,5) * t314 + Icges(3,6) * t317) * t309;
t280 = Icges(3,6) * t311 + (Icges(3,4) * t314 + Icges(3,2) * t317) * t309;
t281 = Icges(3,5) * t311 + (Icges(3,1) * t314 + Icges(3,4) * t317) * t309;
t358 = t311 * t279 + t280 * t398 + t281 * t400;
t261 = t297 * rSges(3,1) + t296 * rSges(3,2) + rSges(3,3) * t399;
t354 = -t315 * pkin(1) + pkin(9) * t397;
t233 = rSges(4,1) * t268 + rSges(4,2) * t267 + rSges(4,3) * t293;
t273 = pkin(2) * t400 + pkin(10) * t293;
t346 = t309 * (-t233 - t273);
t344 = t386 - t392;
t343 = t381 - t390;
t342 = t210 * t399 + t211 * t397 + t379;
t341 = t309 * (-t273 + t383);
t335 = t359 + t377;
t334 = t309 * (-t273 + t361);
t331 = -t64 / 0.2e1 - t72 / 0.2e1 - t366;
t330 = -t71 / 0.2e1 - t63 / 0.2e1 - t365;
t329 = t176 * t399 + t177 * t397 + t342;
t328 = t309 * (-t273 + t343);
t260 = t295 * rSges(3,1) + t294 * rSges(3,2) - rSges(3,3) * t397;
t326 = t177 + t335;
t325 = -t295 * t307 - t345 + t354;
t191 = Icges(4,5) * t250 + Icges(4,6) * t249 - Icges(4,3) * t417;
t193 = Icges(4,4) * t250 + Icges(4,2) * t249 - Icges(4,6) * t417;
t195 = Icges(4,1) * t250 + Icges(4,4) * t249 - Icges(4,5) * t417;
t117 = t191 * t293 + t193 * t267 + t195 * t268;
t124 = -t230 * t417 + t231 * t249 + t232 * t250;
t161 = Icges(5,5) * t229 + Icges(5,6) * t228 - Icges(5,3) * t417;
t163 = Icges(5,4) * t229 + Icges(5,2) * t228 - Icges(5,6) * t417;
t165 = Icges(5,1) * t229 + Icges(5,4) * t228 - Icges(5,5) * t417;
t86 = t161 * t293 + t163 * t239 + t165 * t240;
t91 = -t182 * t417 + t183 * t228 + t184 * t229;
t323 = t91 / 0.2e1 + t124 / 0.2e1 + t117 / 0.2e1 + t86 / 0.2e1 - t331;
t190 = Icges(4,5) * t248 + Icges(4,6) * t247 - Icges(4,3) * t416;
t192 = Icges(4,4) * t248 + Icges(4,2) * t247 - Icges(4,6) * t416;
t194 = Icges(4,1) * t248 + Icges(4,4) * t247 - Icges(4,5) * t416;
t116 = t190 * t293 + t192 * t267 + t194 * t268;
t123 = -t230 * t416 + t231 * t247 + t232 * t248;
t160 = Icges(5,5) * t227 + Icges(5,6) * t226 - Icges(5,3) * t416;
t162 = Icges(5,4) * t227 + Icges(5,2) * t226 - Icges(5,6) * t416;
t164 = Icges(5,1) * t227 + Icges(5,4) * t226 - Icges(5,5) * t416;
t85 = t160 * t293 + t162 * t239 + t164 * t240;
t90 = -t182 * t416 + t183 * t226 + t184 * t227;
t322 = t116 / 0.2e1 + t85 / 0.2e1 + t123 / 0.2e1 + t90 / 0.2e1 - t330;
t321 = -t176 + t325;
t303 = rSges(2,1) * t318 - t315 * rSges(2,2);
t302 = -t315 * rSges(2,1) - rSges(2,2) * t318;
t282 = t311 * rSges(3,3) + (rSges(3,1) * t314 + rSges(3,2) * t317) * t309;
t259 = Icges(3,1) * t297 + Icges(3,4) * t296 + Icges(3,5) * t399;
t258 = Icges(3,1) * t295 + Icges(3,4) * t294 - Icges(3,5) * t397;
t257 = Icges(3,4) * t297 + Icges(3,2) * t296 + Icges(3,6) * t399;
t256 = Icges(3,4) * t295 + Icges(3,2) * t294 - Icges(3,6) * t397;
t255 = Icges(3,5) * t297 + Icges(3,6) * t296 + Icges(3,3) * t399;
t246 = t261 + t377;
t245 = -t260 + t354;
t238 = -t311 * t260 - t282 * t397;
t237 = t261 * t311 - t282 * t399;
t234 = t358 * t311;
t218 = (t260 * t315 + t261 * t318) * t309;
t217 = t279 * t399 + t280 * t296 + t281 * t297;
t216 = -t279 * t397 + t294 * t280 + t295 * t281;
t188 = t311 * t255 + (t257 * t317 + t259 * t314) * t309;
t187 = t311 * t254 + (t256 * t317 + t258 * t314) * t309;
t171 = -t327 + t197 + t377;
t170 = t354 + t382;
t145 = t197 * t293 + t233 * t417;
t144 = -t196 * t293 - t233 * t416;
t143 = t335 + t167;
t142 = -t166 + t325;
t141 = t311 * t382 + t318 * t346;
t140 = t311 * t197 + t315 * t346 - t251;
t137 = t138 * t311;
t136 = -t196 * t417 + t197 * t416;
t135 = t138 * t293;
t122 = (t196 * t315 + t197 * t318) * t309 + t379;
t114 = -t191 * t417 + t193 * t249 + t195 * t250;
t113 = -t190 * t417 + t192 * t249 + t194 * t250;
t112 = -t191 * t416 + t193 * t247 + t195 * t248;
t111 = -t190 * t416 + t192 * t247 + t194 * t248;
t100 = t326 + t134;
t99 = -t133 + t321;
t97 = t98 * t311;
t96 = t98 * t293;
t95 = t293 * t167 - t383 * t417 + t189;
t94 = -t185 * t416 + t293 * t389 - t214;
t93 = (-t252 + t389) * t311 + t318 * t341;
t92 = t311 * t167 + t315 * t341 + t380;
t89 = -t134 * t239 + t149 * t228;
t88 = t133 * t239 - t149 * t226;
t87 = -t417 * t166 - t186 - (-t167 - t211) * t416;
t84 = (t166 * t315 + t167 * t318) * t309 + t342;
t83 = -t161 * t417 + t163 * t228 + t165 * t229;
t82 = -t160 * t417 + t162 * t228 + t164 * t229;
t81 = -t161 * t416 + t163 * t226 + t165 * t227;
t80 = -t160 * t416 + t162 * t226 + t164 * t227;
t79 = -t133 * t228 + t134 * t226;
t74 = t326 + t391;
t73 = -t406 + (-rSges(7,3) - pkin(12)) * t206 + t321 + t336;
t70 = t110 * t224 - t121 * t208;
t69 = -t109 * t224 + t121 * t206;
t68 = (-t252 + t362) * t311 + t318 * t334;
t67 = t311 * t134 + t315 * t334 + t360;
t66 = t293 * t134 - t361 * t417 + t387;
t65 = -t149 * t416 + t293 * t362 + t384;
t62 = t137 + (-t116 * t318 + t117 * t315) * t309;
t57 = -t116 * t416 - t117 * t417 + t135;
t56 = t109 * t208 - t110 * t206;
t55 = (t133 * t315 + t134 * t318) * t309 + t329;
t54 = -t417 * t133 - (-t134 + t385) * t416 + t388;
t53 = t124 * t311 + (-t113 * t318 + t114 * t315) * t309;
t52 = t123 * t311 + (-t111 * t318 + t112 * t315) * t309;
t51 = -t113 * t416 - t114 * t417 + t124 * t293;
t50 = -t111 * t416 - t112 * t417 + t123 * t293;
t46 = t228 * t390 - t239 * t391;
t45 = -t226 * t390 + t239 * t392;
t40 = t226 * t391 - t228 * t392;
t39 = (-t252 + t344) * t311 + t318 * t328;
t38 = t311 * t391 + t315 * t328 + t360;
t35 = t293 * t391 - t343 * t417 + t387;
t34 = t293 * t344 - t390 * t416 + t384;
t33 = t97 + (t86 * t315 - t85 * t318) * t309;
t32 = -t416 * t85 - t417 * t86 + t96;
t27 = t91 * t311 + (t315 * t83 - t318 * t82) * t309;
t26 = t90 * t311 + (t315 * t81 - t318 * t80) * t309;
t25 = (t315 * t392 + t318 * t391) * t309 + t329;
t24 = t293 * t91 - t416 * t82 - t417 * t83;
t23 = t293 * t90 - t416 * t80 - t417 * t81;
t22 = -t392 * t417 - (t385 - t391) * t416 + t388;
t101 = [(t170 ^ 2 + t171 ^ 2) * m(4) + (t245 ^ 2 + t246 ^ 2) * m(3) + t358 + m(2) * (t302 ^ 2 + t303 ^ 2) + (t73 ^ 2 + t74 ^ 2) * m(7) + (t100 ^ 2 + t99 ^ 2) * m(6) + (t142 ^ 2 + t143 ^ 2) * m(5) + Icges(2,3) + t138 + t98 + t78 + t49; (t142 * t93 + t143 * t92) * m(5) + (t140 * t171 + t141 * t170) * m(4) + t48 + (t100 * t67 + t68 * t99) * m(6) + t234 + t97 + t137 + t77 + (t237 * t246 + t238 * t245) * m(3) + (t38 * t74 + t39 * t73) * m(7) + ((-t187 / 0.2e1 - t216 / 0.2e1 - t322) * t318 + (t188 / 0.2e1 + t217 / 0.2e1 + t323) * t315) * t309; (t25 ^ 2 + t38 ^ 2 + t39 ^ 2) * m(7) + (t55 ^ 2 + t67 ^ 2 + t68 ^ 2) * m(6) + (t84 ^ 2 + t92 ^ 2 + t93 ^ 2) * m(5) + (t122 ^ 2 + t140 ^ 2 + t141 ^ 2) * m(4) + (t218 ^ 2 + t237 ^ 2 + t238 ^ 2) * m(3) + (t12 + t21 + t62 + t33 + t234) * t311 + ((-t7 - t17 - t26 - t52 + (t294 * t256 + t295 * t258 - t309 * t401) * t397) * t318 + (t8 + t18 + t27 + t53 + ((t257 * t296 + t259 * t297 + (t255 * t315 - t401) * t309) * t315 + (t255 * t397 - t256 * t296 - t294 * t257 - t258 * t297 - t295 * t259) * t318) * t309) * t315 + ((-t187 - t216) * t318 + (t188 + t217) * t315) * t311) * t309; t47 + (t34 * t73 + t35 * t74) * m(7) + t76 + (t100 * t66 + t65 * t99) * m(6) + (t142 * t94 + t143 * t95) * m(5) + (t144 * t170 + t145 * t171) * m(4) + t135 + t96 - t323 * t417 - t322 * t416; (t84 * t87 + t92 * t95 + t93 * t94) * m(5) + (t122 * t136 + t140 * t145 + t141 * t144) * m(4) + (t22 * t25 + t34 * t39 + t35 * t38) * m(7) + (t54 * t55 + t65 * t68 + t66 * t67) * m(6) + (t32 / 0.2e1 + t57 / 0.2e1 - t368) * t311 + (t33 / 0.2e1 + t62 / 0.2e1 - t367) * t293 - (t27 / 0.2e1 + t53 / 0.2e1 - t370) * t417 - (t26 / 0.2e1 + t52 / 0.2e1 - t371) * t416 + ((-t50 / 0.2e1 - t23 / 0.2e1 + t373) * t318 + (t51 / 0.2e1 + t24 / 0.2e1 - t372) * t315) * t309; (t22 ^ 2 + t34 ^ 2 + t35 ^ 2) * m(7) + (t54 ^ 2 + t65 ^ 2 + t66 ^ 2) * m(6) + (t87 ^ 2 + t94 ^ 2 + t95 ^ 2) * m(5) + (t136 ^ 2 + t144 ^ 2 + t145 ^ 2) * m(4) + (t11 + t20 + t57 + t32) * t293 - (t6 + t16 + t51 + t24) * t417 - (t5 + t15 + t50 + t23) * t416; -(m(5) * t142 + m(6) * t99 + m(7) * t73) * t417 - (m(5) * t143 + m(6) * t100 + m(7) * t74) * t416; (m(5) * t84 + m(6) * t55 + m(7) * t25) * t293 - (m(5) * t93 + m(6) * t68 + m(7) * t39) * t417 - (m(5) * t92 + m(6) * t67 + m(7) * t38) * t416; (m(5) * t87 + m(6) * t54 + m(7) * t22) * t293 - (m(5) * t94 + m(6) * t65 + m(7) * t34) * t417 - (m(5) * t95 + m(6) * t66 + m(7) * t35) * t416; 0.2e1 * (m(5) / 0.2e1 + m(6) / 0.2e1 + m(7) / 0.2e1) * (t293 ^ 2 + t416 ^ 2 + t417 ^ 2); -t44 + (t45 * t73 + t46 * t74) * m(7) - t75 + (t100 * t89 + t88 * t99) * m(6) + t331 * t228 + t330 * t226; (t25 * t40 + t38 * t46 + t39 * t45) * m(7) + (t55 * t79 + t67 * t89 + t68 * t88) * m(6) + t369 * t311 + t367 * t239 + t370 * t228 + t371 * t226 + (t315 * t374 - t318 * t375) * t309; (t22 * t40 + t34 * t45 + t35 * t46) * m(7) + (t54 * t79 + t65 * t88 + t66 * t89) * m(6) + t369 * t293 - t374 * t417 - t375 * t416 + t368 * t239 + t372 * t228 + t373 * t226; (m(6) * t79 + m(7) * t40) * t293 - (m(6) * t88 + m(7) * t45) * t417 - (m(6) * t89 + m(7) * t46) * t416; (t40 ^ 2 + t45 ^ 2 + t46 ^ 2) * m(7) + (t79 ^ 2 + t88 ^ 2 + t89 ^ 2) * m(6) + (-t10 - t19) * t239 + (-t4 - t14) * t228 + (-t3 - t13) * t226; t43 + (t69 * t73 + t70 * t74) * m(7) + t366 * t208 + t365 * t206; t8 * t411 + t7 * t412 + t311 * t413 + t12 * t410 + (t25 * t56 + t38 * t70 + t39 * t69) * m(7) + (t315 * t414 + t318 * t415) * t309; (t22 * t56 + t34 * t69 + t35 * t70) * m(7) + t293 * t413 + t6 * t411 + t11 * t410 + t416 * t415 + t5 * t412 - t417 * t414; (t293 * t56 - t416 * t70 - t417 * t69) * m(7); t226 * t415 - t239 * t9 / 0.2e1 + t4 * t411 + t3 * t412 - t228 * t2 / 0.2e1 + t10 * t410 + (t40 * t56 + t45 * t69 + t46 * t70) * m(7); t208 * t2 + t206 * t1 + t224 * t9 + (t56 ^ 2 + t69 ^ 2 + t70 ^ 2) * m(7);];
%% Postprocessing: Reshape Output
% From vec2symmat_6_matlab.m
res = [t101(1) t101(2) t101(4) t101(7) t101(11) t101(16); t101(2) t101(3) t101(5) t101(8) t101(12) t101(17); t101(4) t101(5) t101(6) t101(9) t101(13) t101(18); t101(7) t101(8) t101(9) t101(10) t101(14) t101(19); t101(11) t101(12) t101(13) t101(14) t101(15) t101(20); t101(16) t101(17) t101(18) t101(19) t101(20) t101(21);];
Mq  = res;
