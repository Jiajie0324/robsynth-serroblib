% Calculate vector of centrifugal and coriolis load on the joints for
% S6RPRRRP12
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d3,d4,d5,theta2]';
% m_mdh [7x1]
%   mass of all robot links (including the base)
% mrSges [7x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% Ifges [7x6]
%   inertia of all robot links about their respective body frame origins, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertial_parameters_convert_par1_par2.m)
% 
% Output:
% tauc [6x1]
%   joint torques required to compensate coriolis and centrifugal load

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-23 16:31
% Revision: 76f9d5e39f14dc242b53c0d9d3d9db48bd8f37c0
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function tauc = S6RPRRRP12_coriolisvecJ_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(12,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRP12_coriolisvecJ_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRRP12_coriolisvecJ_fixb_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RPRRRP12_coriolisvecJ_fixb_slag_vp2: pkin has to be [12x1] (double)');
assert( isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRRRP12_coriolisvecJ_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RPRRRP12_coriolisvecJ_fixb_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RPRRRP12_coriolisvecJ_fixb_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-23 16:31:23
% EndTime: 2018-11-23 16:31:47
% DurationCPUTime: 24.00s
% Computational Cost: add. (24337->755), mult. (80596->995), div. (0->0), fcn. (68297->12), ass. (0->345)
t262 = sin(pkin(12));
t264 = sin(pkin(6));
t265 = cos(pkin(12));
t267 = cos(pkin(6));
t270 = sin(qJ(3));
t266 = cos(pkin(7));
t273 = cos(qJ(3));
t362 = t266 * t273;
t263 = sin(pkin(7));
t366 = t263 * t273;
t277 = t267 * t366 + t264 * (-t262 * t270 + t265 * t362);
t207 = t277 * qJD(1);
t275 = qJD(4) - t207;
t363 = t266 * t270;
t367 = t263 * t270;
t215 = t267 * t367 + (t262 * t273 + t265 * t363) * t264;
t208 = t215 * qJD(1);
t365 = t264 * t265;
t238 = -t263 * t365 + t266 * t267;
t230 = qJD(1) * t238 + qJD(3);
t269 = sin(qJ(4));
t272 = cos(qJ(4));
t177 = -t208 * t269 + t230 * t272;
t209 = t277 * qJD(3);
t197 = qJD(1) * t209;
t146 = qJD(4) * t177 + t197 * t272;
t435 = t146 / 0.2e1;
t518 = Ifges(5,4) * t435;
t517 = pkin(10) * t269;
t281 = t264 * (-t262 * t363 + t265 * t273);
t228 = qJD(1) * t281;
t346 = qJD(3) * t273;
t516 = t263 * t346 - t228;
t257 = qJ(2) * t365;
t409 = pkin(1) * t267;
t337 = qJD(1) * t409;
t236 = qJD(1) * t257 + t262 * t337;
t284 = (t263 * t267 + t266 * t365) * pkin(9);
t199 = qJD(1) * t284 + t236;
t256 = t265 * t337;
t369 = t262 * t264;
t280 = pkin(2) * t267 + (-pkin(9) * t266 - qJ(2)) * t369;
t206 = qJD(1) * t280 + t256;
t229 = (-pkin(9) * t262 * t263 - pkin(2) * t265 - pkin(1)) * t264;
t220 = qJD(1) * t229 + qJD(2);
t295 = t206 * t266 + t220 * t263;
t139 = t199 * t273 + t270 * t295;
t515 = -pkin(10) * qJD(5) * t272 - t139 + t275 * (pkin(4) * t269 - pkin(11) * t272);
t178 = t208 * t272 + t230 * t269;
t147 = qJD(4) * t178 + t197 * t269;
t433 = t147 / 0.2e1;
t478 = Ifges(6,1) + Ifges(7,1);
t477 = -Ifges(6,4) + Ifges(7,5);
t476 = Ifges(6,5) + Ifges(7,4);
t510 = Ifges(6,6) - Ifges(7,6);
t474 = Ifges(6,3) + Ifges(7,2);
t345 = qJD(4) * t269;
t371 = t207 * t269;
t514 = t345 - t371;
t282 = t264 * (t262 * t362 + t265 * t270);
t279 = qJD(2) * t282;
t112 = qJD(1) * t279 + qJD(3) * t139;
t210 = t215 * qJD(3);
t198 = qJD(1) * t210;
t419 = t198 / 0.2e1;
t434 = -t147 / 0.2e1;
t268 = sin(qJ(5));
t271 = cos(qJ(5));
t341 = t268 * qJD(4);
t149 = t271 * t178 - t207 * t268 + t341;
t79 = qJD(5) * t149 + t268 * t146 - t271 * t198;
t440 = t79 / 0.2e1;
t441 = -t79 / 0.2e1;
t340 = t271 * qJD(4);
t361 = t268 * t178;
t78 = t271 * t146 + t268 * t198 + (-t207 * t271 + t340 - t361) * qJD(5);
t442 = t78 / 0.2e1;
t176 = qJD(5) - t177;
t138 = -t270 * t199 + t295 * t273;
t278 = qJD(2) * t281;
t111 = qJD(1) * t278 + qJD(3) * t138;
t174 = -t206 * t263 + t266 * t220;
t116 = -pkin(3) * t207 - pkin(10) * t208 + t174;
t119 = t230 * pkin(10) + t139;
t348 = qJD(2) * t264;
t331 = t262 * t348;
t322 = qJD(1) * t331;
t292 = t263 * t322;
t159 = pkin(3) * t198 - pkin(10) * t197 + t292;
t339 = t272 * qJD(4);
t27 = t272 * t111 + t116 * t339 - t119 * t345 + t269 * t159;
t22 = pkin(11) * t198 + t27;
t343 = qJD(5) * t271;
t344 = qJD(5) * t268;
t54 = t147 * pkin(4) - t146 * pkin(11) + t112;
t61 = t269 * t116 + t272 * t119;
t56 = pkin(11) * t275 + t61;
t118 = -t230 * pkin(3) - t138;
t72 = -t177 * pkin(4) - t178 * pkin(11) + t118;
t3 = t271 * t22 + t268 * t54 + t72 * t343 - t344 * t56;
t1 = qJ(6) * t147 + qJD(6) * t176 + t3;
t20 = t268 * t72 + t271 * t56;
t4 = -qJD(5) * t20 - t22 * t268 + t271 * t54;
t2 = -pkin(5) * t147 - t4;
t447 = t4 * mrSges(6,1) - t2 * mrSges(7,1) - t3 * mrSges(6,2) + t1 * mrSges(7,3);
t473 = t147 * t474 + t476 * t78 - t510 * t79;
t513 = -t447 - mrSges(5,1) * t112 - Ifges(6,6) * t441 - Ifges(7,6) * t440 - t474 * t433 - t476 * t442 - t473 / 0.2e1 + t518 - (-t198 / 0.2e1 - t419) * Ifges(5,6) - (t433 - t434) * Ifges(5,2);
t12 = qJ(6) * t176 + t20;
t148 = -t271 * t275 + t361;
t60 = t272 * t116 - t269 * t119;
t55 = -pkin(4) * t275 - t60;
t26 = t148 * pkin(5) - t149 * qJ(6) + t55;
t144 = Ifges(7,5) * t149;
t65 = Ifges(7,6) * t176 + Ifges(7,3) * t148 + t144;
t389 = Ifges(6,4) * t149;
t68 = -Ifges(6,2) * t148 + Ifges(6,6) * t176 + t389;
t486 = t68 / 0.2e1 - t65 / 0.2e1;
t512 = mrSges(6,1) * t55 + mrSges(7,1) * t26 - t12 * mrSges(7,2) - t20 * mrSges(6,3) - t486;
t422 = -t178 / 0.2e1;
t466 = t118 * mrSges(5,2);
t511 = Ifges(5,1) * t422 - t466;
t417 = t207 / 0.2e1;
t509 = mrSges(5,2) * t112;
t423 = -t177 / 0.2e1;
t507 = Ifges(5,2) * t423;
t506 = t118 * mrSges(5,1);
t252 = -pkin(4) * t272 - pkin(11) * t269 - pkin(3);
t169 = pkin(3) * t208 - pkin(10) * t207;
t98 = t272 * t138 + t269 * t169;
t87 = pkin(11) * t208 + t98;
t505 = t252 * t343 + t515 * t268 - t271 * t87 - t340 * t517;
t504 = -t252 * t344 + t268 * t87 + t515 * t271 + t341 * t517;
t503 = t207 * (Ifges(5,5) * t272 - Ifges(5,6) * t269);
t241 = -t272 * t266 + t269 * t367;
t349 = qJD(1) * t264;
t332 = t262 * t349;
t324 = t263 * t332;
t459 = -qJD(4) * t241 - t269 * t324 + t516 * t272;
t227 = qJD(1) * t282;
t347 = qJD(3) * t270;
t502 = t263 * t347 - t227;
t501 = -t112 * mrSges(4,1) - t111 * mrSges(4,2);
t500 = Ifges(5,1) * t435 + Ifges(5,5) * t419;
t472 = t147 * t476 + t477 * t79 + t478 * t78;
t499 = mrSges(7,2) * t2 - mrSges(6,3) * t4 + t472 / 0.2e1;
t425 = -t176 / 0.2e1;
t430 = -t149 / 0.2e1;
t431 = t148 / 0.2e1;
t432 = -t148 / 0.2e1;
t498 = Ifges(6,6) * t431 + Ifges(7,6) * t432 + t425 * t474 + t430 * t476;
t66 = t149 * Ifges(6,5) - t148 * Ifges(6,6) + t176 * Ifges(6,3);
t67 = t149 * Ifges(7,4) + t176 * Ifges(7,2) + t148 * Ifges(7,6);
t471 = t67 + t66;
t145 = Ifges(6,4) * t148;
t386 = Ifges(7,5) * t148;
t470 = t149 * t478 + t176 * t476 - t145 + t386;
t493 = Ifges(5,6) * t177;
t492 = t230 * Ifges(4,5);
t491 = t230 * Ifges(4,6);
t490 = t275 * Ifges(5,5);
t489 = qJ(6) * t514 - qJD(6) * t272 + t505;
t488 = -pkin(5) * t514 - t504;
t359 = t268 * t272;
t165 = t207 * t359 - t271 * t208;
t357 = t271 * t272;
t166 = t207 * t357 + t208 * t268;
t302 = pkin(5) * t268 - qJ(6) * t271;
t291 = pkin(10) + t302;
t303 = pkin(5) * t271 + qJ(6) * t268;
t97 = -t269 * t138 + t169 * t272;
t86 = -pkin(4) * t208 - t97;
t487 = -pkin(5) * t165 + qJ(6) * t166 + (qJD(5) * t303 - qJD(6) * t271) * t269 + t291 * t339 - t86;
t350 = t262 * t409 + t257;
t212 = t284 + t350;
t259 = t265 * t409;
t216 = t259 + t280;
t294 = t216 * t266 + t229 * t263;
t152 = -t270 * t212 + t294 * t273;
t457 = -t268 * t510 + t271 * t476;
t385 = Ifges(7,5) * t268;
t388 = Ifges(6,4) * t268;
t454 = t271 * t478 + t385 - t388;
t13 = Ifges(7,5) * t78 + Ifges(7,6) * t147 + Ifges(7,3) * t79;
t16 = Ifges(6,4) * t78 - Ifges(6,2) * t79 + Ifges(6,6) * t147;
t484 = -mrSges(7,2) * t1 - mrSges(6,3) * t3 - t16 / 0.2e1 + t13 / 0.2e1;
t439 = Ifges(5,4) * t434 + t500;
t19 = -t268 * t56 + t271 * t72;
t463 = qJD(6) - t19;
t11 = -pkin(5) * t176 + t463;
t483 = -t19 * mrSges(6,1) + t11 * mrSges(7,1) + t20 * mrSges(6,2) - t12 * mrSges(7,3);
t481 = t275 / 0.2e1;
t480 = t60 * mrSges(5,1);
t479 = t61 * mrSges(5,2);
t469 = Ifges(4,5) * t197;
t468 = Ifges(4,6) * t198;
t465 = -qJD(6) * t268 + t176 * t302 - t61;
t100 = -mrSges(7,2) * t148 + mrSges(7,3) * t176;
t395 = mrSges(6,3) * t148;
t101 = -mrSges(6,2) * t176 - t395;
t462 = t101 + t100;
t394 = mrSges(6,3) * t149;
t102 = mrSges(6,1) * t176 - t394;
t103 = -mrSges(7,1) * t176 + mrSges(7,2) * t149;
t355 = t103 - t102;
t242 = t266 * t269 + t272 * t367;
t336 = t268 * t366;
t461 = qJD(5) * t336 - t242 * t343 - t268 * t459 + t271 * t502;
t221 = t268 * t242 + t271 * t366;
t460 = -qJD(5) * t221 + t268 * t502 + t271 * t459;
t396 = mrSges(4,3) * t208;
t352 = mrSges(4,1) * t230 + mrSges(5,1) * t177 - mrSges(5,2) * t178 - t396;
t458 = qJD(4) * t242 + t516 * t269 + t272 * t324;
t456 = t268 * t476 + t271 * t510;
t384 = Ifges(7,5) * t271;
t387 = Ifges(6,4) * t271;
t455 = t268 * t478 - t384 + t387;
t28 = -t269 * t111 - t116 * t345 - t119 * t339 + t159 * t272;
t453 = -t269 * t28 + t27 * t272;
t452 = -t268 * t4 + t271 * t3;
t451 = t1 * t271 + t2 * t268;
t123 = qJD(3) * t152 + t278;
t179 = -t216 * t263 + t266 * t229;
t130 = -pkin(3) * t277 - pkin(10) * t215 + t179;
t204 = t273 * t212;
t153 = t216 * t363 + t229 * t367 + t204;
t137 = pkin(10) * t238 + t153;
t323 = t263 * t331;
t163 = pkin(3) * t210 - pkin(10) * t209 + t323;
t40 = t272 * t123 + t130 * t339 - t137 * t345 + t269 * t163;
t34 = pkin(11) * t210 + t40;
t83 = t269 * t130 + t272 * t137;
t64 = -pkin(11) * t277 + t83;
t136 = -t238 * pkin(3) - t152;
t183 = t215 * t269 - t272 * t238;
t184 = t215 * t272 + t238 * t269;
t89 = t183 * pkin(4) - t184 * pkin(11) + t136;
t398 = t268 * t89 + t271 * t64;
t124 = t279 + (t270 * t294 + t204) * qJD(3);
t157 = -qJD(4) * t183 + t209 * t272;
t158 = qJD(4) * t184 + t209 * t269;
t58 = t158 * pkin(4) - t157 * pkin(11) + t124;
t8 = -qJD(5) * t398 - t268 * t34 + t271 * t58;
t450 = t28 * mrSges(5,1) - t27 * mrSges(5,2);
t449 = t483 - t506;
t300 = t19 * t271 + t20 * t268;
t301 = t11 * t271 - t12 * t268;
t317 = mrSges(7,1) * t268 - mrSges(7,3) * t271;
t319 = mrSges(6,1) * t268 + mrSges(6,2) * t271;
t448 = -t301 * mrSges(7,2) + t300 * mrSges(6,3) - t26 * t317 - t55 * t319;
t383 = Ifges(5,2) * t177;
t392 = Ifges(5,4) * t178;
t105 = t275 * Ifges(5,6) + t383 + t392;
t437 = -t105 / 0.2e1;
t175 = Ifges(5,4) * t177;
t393 = Ifges(5,1) * t178;
t106 = t175 + t393 + t490;
t436 = t106 / 0.2e1;
t429 = t149 / 0.2e1;
t424 = t176 / 0.2e1;
t421 = t178 / 0.2e1;
t415 = t208 / 0.2e1;
t414 = -t268 / 0.2e1;
t413 = t268 / 0.2e1;
t412 = -t271 / 0.2e1;
t411 = t271 / 0.2e1;
t49 = mrSges(6,1) * t147 - mrSges(6,3) * t78;
t50 = -t147 * mrSges(7,1) + t78 * mrSges(7,2);
t400 = t50 - t49;
t51 = -mrSges(6,2) * t147 - mrSges(6,3) * t79;
t52 = -mrSges(7,2) * t79 + mrSges(7,3) * t147;
t399 = t52 + t51;
t397 = mrSges(4,3) * t207;
t391 = Ifges(5,4) * t269;
t390 = Ifges(5,4) * t272;
t382 = Ifges(5,3) * t208;
t381 = t177 * mrSges(5,3);
t380 = t178 * mrSges(5,3);
t379 = t208 * Ifges(4,4);
t23 = -pkin(4) * t198 - t28;
t378 = t23 * t269;
t109 = mrSges(5,1) * t198 - mrSges(5,3) * t146;
t30 = mrSges(6,1) * t79 + mrSges(6,2) * t78;
t375 = -t109 + t30;
t151 = mrSges(5,1) * t275 - t380;
t95 = mrSges(6,1) * t148 + mrSges(6,2) * t149;
t374 = t151 - t95;
t128 = pkin(4) * t178 - pkin(11) * t177;
t46 = t268 * t128 + t271 * t60;
t373 = t112 * t273;
t370 = t252 * t271;
t364 = t265 * (-mrSges(3,2) * t267 + mrSges(3,3) * t365) * qJD(1);
t351 = -t468 + t469;
t232 = pkin(10) * t357 + t268 * t252;
t333 = Ifges(5,5) * t146 - Ifges(5,6) * t147 + Ifges(5,3) * t198;
t325 = t417 - qJD(4) / 0.2e1;
t82 = t130 * t272 - t269 * t137;
t320 = mrSges(6,1) * t271 - mrSges(6,2) * t268;
t318 = mrSges(7,1) * t271 + mrSges(7,3) * t268;
t312 = -Ifges(6,2) * t268 + t387;
t311 = Ifges(6,2) * t271 + t388;
t305 = Ifges(7,3) * t268 + t384;
t304 = -Ifges(7,3) * t271 + t385;
t31 = -t268 * t64 + t271 * t89;
t296 = t269 * t61 + t272 * t60;
t45 = t128 * t271 - t268 * t60;
t161 = t184 * t271 - t268 * t277;
t160 = t184 * t268 + t271 * t277;
t293 = -(-qJ(2) * t332 + t256) * t262 + t236 * t265;
t41 = -t269 * t123 - t130 * t345 - t137 * t339 + t163 * t272;
t63 = pkin(4) * t277 - t82;
t7 = t268 * t58 + t271 * t34 + t89 * t343 - t344 * t64;
t239 = (mrSges(3,1) * t267 - mrSges(3,3) * t369) * qJD(1);
t35 = -pkin(4) * t210 - t41;
t274 = t305 * t431 + t312 * t432 + t411 * t470 + t413 * t65 + t414 * t68 + t424 * t457 + t429 * t454 - t448;
t249 = -pkin(4) - t303;
t234 = t291 * t269;
t231 = -pkin(10) * t359 + t370;
t226 = -t370 + (pkin(10) * t268 + pkin(5)) * t272;
t225 = -qJ(6) * t272 + t232;
t222 = t271 * t242 - t336;
t205 = Ifges(4,4) * t207;
t180 = -mrSges(4,2) * t230 + t397;
t168 = -mrSges(4,1) * t207 + mrSges(4,2) * t208;
t164 = mrSges(4,1) * t198 + mrSges(4,2) * t197;
t156 = t208 * Ifges(4,1) + t205 + t492;
t155 = t207 * Ifges(4,2) + t379 + t491;
t150 = -mrSges(5,2) * t275 + t381;
t110 = -mrSges(5,2) * t198 - mrSges(5,3) * t147;
t104 = Ifges(5,5) * t178 + Ifges(5,3) * t275 + t493;
t94 = mrSges(7,1) * t148 - mrSges(7,3) * t149;
t93 = pkin(5) * t149 + qJ(6) * t148;
t92 = mrSges(5,1) * t147 + mrSges(5,2) * t146;
t91 = qJD(5) * t161 + t157 * t268 - t271 * t210;
t90 = -qJD(5) * t160 + t157 * t271 + t210 * t268;
t42 = pkin(5) * t160 - qJ(6) * t161 + t63;
t37 = -pkin(5) * t178 - t45;
t36 = qJ(6) * t178 + t46;
t29 = mrSges(7,1) * t79 - mrSges(7,3) * t78;
t25 = -pkin(5) * t183 - t31;
t24 = qJ(6) * t183 + t398;
t10 = pkin(5) * t91 - qJ(6) * t90 - qJD(6) * t161 + t35;
t9 = pkin(5) * t79 - qJ(6) * t78 - qJD(6) * t149 + t23;
t6 = -pkin(5) * t158 - t8;
t5 = qJ(6) * t158 + qJD(6) * t183 + t7;
t14 = [(mrSges(6,1) * t23 + mrSges(7,1) * t9 - Ifges(6,2) * t441 + Ifges(7,3) * t440 - t433 * t510 + t442 * t477 + t484) * t160 + (t158 * t474 + t476 * t90 - t510 * t91) * t424 + (-t158 * t20 + t55 * t90) * mrSges(6,2) + (Ifges(5,5) * t157 - Ifges(5,6) * t158) * t481 + (-t138 * mrSges(4,3) + t492 / 0.2e1 + t156 / 0.2e1 + t174 * mrSges(4,2) + Ifges(4,1) * t415 + Ifges(4,4) * t417) * t209 + (m(3) * ((t265 * t350 + (qJ(2) * t369 - t259) * t262) * qJD(1) + t293) + 0.2e1 * t364) * t348 + (-t157 * t60 - t158 * t61 - t184 * t28) * mrSges(5,3) + (-t468 / 0.2e1 + t469 / 0.2e1 + t351 / 0.2e1 + t501) * t238 + (mrSges(6,2) * t23 - mrSges(7,3) * t9 + Ifges(6,4) * t441 + Ifges(7,5) * t440 + t476 * t433 + t478 * t442 + t499) * t161 + (-Ifges(6,2) * t432 + Ifges(7,3) * t431 + t512) * t91 + t168 * t323 + t177 * (Ifges(5,4) * t157 - Ifges(5,2) * t158) / 0.2e1 + (mrSges(4,2) * t292 + mrSges(4,3) * t112 + Ifges(4,1) * t197 - Ifges(4,4) * t198) * t215 + (t12 * t158 - t26 * t90) * mrSges(7,3) + m(6) * (t19 * t8 + t20 * t7 + t23 * t63 + t3 * t398 + t31 * t4 + t35 * t55) + t398 * t51 + (-m(4) * t138 + m(5) * t118 - t352) * t124 + (Ifges(5,1) * t157 - Ifges(5,4) * t158) * t421 + (Ifges(6,4) * t90 + Ifges(6,6) * t158) * t432 + (-t27 * mrSges(5,3) - t513 - t518) * t183 + (Ifges(7,5) * t90 + Ifges(7,6) * t158) * t431 + (-t152 * t197 - t153 * t198) * mrSges(4,3) + t179 * t164 + t123 * t180 + t11 * (-mrSges(7,1) * t158 + mrSges(7,2) * t90) + t19 * (mrSges(6,1) * t158 - mrSges(6,3) * t90) + t118 * (mrSges(5,1) * t158 + mrSges(5,2) * t157) + t40 * t150 + t41 * t151 + t136 * t92 + m(4) * (t111 * t153 - t112 * t152 + t123 * t139 + (qJD(1) * t179 + t174) * t323) + m(7) * (t1 * t24 + t10 * t26 + t11 * t6 + t12 * t5 + t2 * t25 + t42 * t9) + t82 * t109 + t83 * t110 + t5 * t100 + t7 * t101 + t8 * t102 + t6 * t103 + t10 * t94 + t35 * t95 + t157 * t436 + t158 * t437 - 0.2e1 * t239 * t331 + t63 * t30 + t24 * t52 + t31 * t49 + t25 * t50 + t42 * t29 + (0.2e1 * t439 + t509) * t184 + t470 * t90 / 0.2e1 + t471 * t158 / 0.2e1 + (t158 * t476 + t477 * t91 + t478 * t90) * t429 + (-t139 * mrSges(4,3) - t491 / 0.2e1 + t493 / 0.2e1 + t104 / 0.2e1 + t174 * mrSges(4,1) - t155 / 0.2e1 - Ifges(4,4) * t415 - Ifges(4,2) * t417 + Ifges(5,5) * t421 + Ifges(5,3) * t481 - t479 + t480) * t210 - (-t111 * mrSges(4,3) + Ifges(4,2) * t198 - Ifges(4,4) * t197 + Ifges(5,6) * t434 + Ifges(5,5) * t435 + Ifges(5,3) * t419 + t333 / 0.2e1 + mrSges(4,1) * t292 + t450) * t277 + m(5) * (t112 * t136 + t27 * t83 + t28 * t82 + t40 * t61 + t41 * t60); t459 * t150 + t266 * t164 + t242 * t110 - t228 * t180 + t400 * t221 + t399 * t222 + (t29 + t375) * t241 + t352 * t227 - m(4) * (-t138 * t227 + t139 * t228) - t355 * t461 + t462 * t460 + (-m(3) * t293 + t262 * t239 - t364) * t349 + t458 * (t94 - t374) + (t1 * t222 - t11 * t461 + t12 * t460 + t2 * t221 + t241 * t9 + t26 * t458) * m(7) + (t19 * t461 + t20 * t460 - t221 * t4 + t222 * t3 + t23 * t241 + t458 * t55) * m(6) + (-t118 * t227 - t28 * t241 + t27 * t242 - t458 * t60 + t459 * t61) * m(5) + (m(5) * (t118 * t347 - t373) - t168 * t332 - t273 * t92 + (-t197 * t273 - t198 * t270) * mrSges(4,3) + (t180 * t273 - t270 * t352) * qJD(3) + (t111 * t270 - t138 * t347 + t139 * t346 - t174 * t332 + t266 * t322 - t373) * m(4)) * t263; (-t470 / 0.2e1 - mrSges(6,2) * t55 - t11 * mrSges(7,2) + t19 * mrSges(6,3) + mrSges(7,3) * t26 + Ifges(6,4) * t431 + Ifges(7,5) * t432 + t476 * t425 + t478 * t430) * t166 + (-Ifges(6,2) * t431 + Ifges(7,3) * t432 - t425 * t510 + t430 * t477 - t512) * t165 - (Ifges(4,1) * t207 + t104 - t379) * t208 / 0.2e1 - (-Ifges(4,2) * t208 + t156 + t205) * t207 / 0.2e1 + (t382 + t503) * t417 + (t499 * t271 + (t66 / 0.2e1 + t67 / 0.2e1 + t437 - t392 / 0.2e1 - t383 / 0.2e1 - t61 * mrSges(5,3) + (Ifges(7,2) / 0.2e1 + Ifges(6,3) / 0.2e1) * t176 + (Ifges(7,4) / 0.2e1 + Ifges(6,5) / 0.2e1) * t149 + (-Ifges(6,6) / 0.2e1 + Ifges(7,6) / 0.2e1) * t148 + t325 * Ifges(5,6) - t449 - t150 * pkin(10)) * qJD(4) + t457 * t433 + t454 * t442 + t509 + t484 * t268 + t9 * t317 + t375 * pkin(10) + t439 + t305 * t440 + t312 * t441 + (t311 * t431 + t304 * t432 + t55 * t320 + t26 * t318 + t65 * t411 + t68 * t412 + (t19 * t268 - t20 * t271) * mrSges(6,3) + (-t11 * t268 - t12 * t271) * mrSges(7,2) + t455 * t430 + t456 * t425 + t470 * t414) * qJD(5) + (-t506 - t507) * t207 + t500) * t269 + (-t471 / 0.2e1 + t105 / 0.2e1 + t483 + t498) * t371 + t391 * t434 + (Ifges(5,6) * t208 + t207 * t390) * t423 + ((-t106 / 0.2e1 + t511) * t207 + (t466 - t60 * mrSges(5,3) + t436 + t274 - t325 * Ifges(5,5) + t393 / 0.2e1 + t175 / 0.2e1 + (m(6) * t55 - t374) * pkin(10)) * qJD(4) + t110 * pkin(10) + t513) * t272 + (-pkin(3) * t112 - t118 * t139 - t60 * t97 - t61 * t98 + (-qJD(4) * t296 + t453) * pkin(10)) * m(5) + t501 + t351 + t487 * t94 + t488 * t103 + (t1 * t225 + t11 * t488 + t12 * t489 + t2 * t226 + t234 * t9 + t26 * t487) * m(7) + t489 * t100 + t504 * t102 + t505 * t101 + (pkin(10) * t378 + t19 * t504 + t20 * t505 + t231 * t4 + t232 * t3 - t55 * t86) * m(6) + (-t382 / 0.2e1 - t503 / 0.2e1) * qJD(4) + (t207 * t296 + t453) * mrSges(5,3) + t234 * t29 - t230 * (Ifges(4,5) * t207 - Ifges(4,6) * t208) / 0.2e1 + t231 * t49 + t232 * t51 + t225 * t52 + t226 * t50 - t174 * (mrSges(4,1) * t208 + mrSges(4,2) * t207) + t390 * t435 + (Ifges(5,5) * t208 - t207 * t391) * t422 - t98 * t150 - t97 * t151 + (t352 + t396) * t139 + (-t180 + t397) * t138 - t86 * t95 - pkin(3) * t92 + t155 * t415 + t319 * t378 - t208 * t480 + t208 * t479; t333 + (m(7) * t451 + m(6) * t452 + t268 * t400 + t271 * t399 + (-m(6) * t300 + m(7) * t301 - t268 * t462 + t271 * t355) * qJD(5)) * pkin(11) + t450 + (t486 * t268 + t470 * t412 + t305 * t432 + t312 * t431 - t490 / 0.2e1 + t454 * t430 + t457 * t425 + t448 + t511) * t177 + (t106 + t175) * t423 + (-pkin(4) * t23 - t19 * t45 - t20 * t46 - t55 * t61) * m(6) + t451 * mrSges(7,2) + t452 * mrSges(6,3) + t455 * t442 + t456 * t433 + t249 * t29 + (t374 + t380) * t61 + (-t150 + t381) * t60 - t36 * t100 - t46 * t101 - t45 * t102 - t37 * t103 + t304 * t440 + t311 * t441 + t105 * t421 + t16 * t411 + t13 * t412 - pkin(4) * t30 + (Ifges(5,6) * t481 + t449 + t498 - t507) * t178 + (-t11 * t37 - t12 * t36 + t249 * t9 + t26 * t465) * m(7) + t465 * t94 + (-t392 + t471) * t422 + t472 * t413 - t9 * t318 - t23 * t320 + t274 * qJD(5); (-t148 * t476 - t149 * t510) * t425 + t447 + (-Ifges(6,2) * t149 - t145 + t470) * t431 + (-pkin(5) * t2 + qJ(6) * t1 - t11 * t20 + t12 * t463 - t26 * t93) * m(7) - t26 * (mrSges(7,1) * t149 + mrSges(7,3) * t148) - t55 * (mrSges(6,1) * t149 - mrSges(6,2) * t148) + (-t355 + t394) * t20 + (-t462 - t395) * t19 + (t11 * t148 + t12 * t149) * mrSges(7,2) + qJD(6) * t100 - t93 * t94 + (Ifges(7,3) * t149 - t386) * t432 + t68 * t429 + qJ(6) * t52 - pkin(5) * t50 + (-t148 * t478 + t144 - t389 + t65) * t430 + t473; -t176 * t100 + t149 * t94 + 0.2e1 * (t2 / 0.2e1 + t12 * t425 + t26 * t429) * m(7) + t50;];
tauc  = t14(:);
