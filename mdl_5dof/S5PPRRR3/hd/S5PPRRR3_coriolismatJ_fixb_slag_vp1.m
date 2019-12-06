% Calculate matrix of centrifugal and coriolis load on the joints for
% S5PPRRR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d3,d4,d5,theta1,theta2]';
% m_mdh [6x1]
%   mass of all robot links (including the base)
% rSges [6x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% Icges [6x6]
%   inertia of all robot links about their respective center of mass, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertiavector2matrix.m)
% 
% Output:
% Cq [5x5]
%   matrix of coriolis and centrifugal joint torques.
%   Gives coriolis joint torques when multiplied with joint velocities

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 15:17
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S5PPRRR3_coriolismatJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PPRRR3_coriolismatJ_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PPRRR3_coriolismatJ_fixb_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PPRRR3_coriolismatJ_fixb_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5PPRRR3_coriolismatJ_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5PPRRR3_coriolismatJ_fixb_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5PPRRR3_coriolismatJ_fixb_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 15:16:25
% EndTime: 2019-12-05 15:16:44
% DurationCPUTime: 12.90s
% Computational Cost: add. (59899->770), mult. (107805->1178), div. (0->0), fcn. (131264->10), ass. (0->401)
t532 = -2 * Icges(4,4);
t531 = 2 * Icges(4,4);
t533 = -Icges(4,1) + Icges(4,2);
t391 = cos(pkin(9));
t392 = cos(pkin(8));
t396 = cos(qJ(3));
t466 = t392 * t396;
t390 = sin(pkin(8));
t394 = sin(qJ(3));
t471 = t390 * t394;
t369 = t391 * t471 + t466;
t507 = t369 / 0.2e1;
t467 = t392 * t394;
t470 = t390 * t396;
t370 = t391 * t470 - t467;
t506 = t370 / 0.2e1;
t371 = t391 * t467 - t470;
t505 = t371 / 0.2e1;
t372 = t391 * t466 + t471;
t504 = t372 / 0.2e1;
t388 = qJ(4) + qJ(5);
t386 = sin(t388);
t387 = cos(t388);
t389 = sin(pkin(9));
t479 = t389 * t390;
t337 = -t370 * t386 + t387 * t479;
t338 = t370 * t387 + t386 * t479;
t235 = rSges(6,1) * t338 + rSges(6,2) * t337 + rSges(6,3) * t369;
t225 = t371 * t235;
t393 = sin(qJ(4));
t477 = t389 * t393;
t433 = t390 * t477;
t395 = cos(qJ(4));
t499 = pkin(4) * t395;
t237 = pkin(4) * t433 + pkin(7) * t369 + t370 * t499;
t478 = t389 * t392;
t339 = -t372 * t386 + t387 * t478;
t340 = t372 * t387 + t386 * t478;
t236 = rSges(6,1) * t340 + rSges(6,2) * t339 + rSges(6,3) * t371;
t432 = t392 * t477;
t238 = pkin(4) * t432 + pkin(7) * t371 + t372 * t499;
t458 = -t236 - t238;
t137 = t237 * t371 + t369 * t458 + t225;
t474 = t389 * t396;
t363 = -t386 * t474 - t387 * t391;
t364 = -t391 * t386 + t387 * t474;
t476 = t389 * t394;
t296 = rSges(6,1) * t364 + rSges(6,2) * t363 + rSges(6,3) * t476;
t264 = t369 * t296;
t468 = t391 * t393;
t313 = -pkin(4) * t468 + (pkin(7) * t394 + t396 * t499) * t389;
t459 = t235 + t237;
t165 = t313 * t369 - t459 * t476 + t264;
t227 = t236 * t476;
t445 = t296 + t313;
t166 = t238 * t476 - t371 * t445 + t227;
t261 = rSges(6,1) * t337 - rSges(6,2) * t338;
t239 = t371 * t261;
t262 = rSges(6,1) * t339 - rSges(6,2) * t340;
t204 = -t262 * t369 + t239;
t311 = rSges(6,1) * t363 - rSges(6,2) * t364;
t284 = t369 * t311;
t217 = -t261 * t476 + t284;
t253 = t262 * t476;
t218 = -t311 * t371 + t253;
t426 = t476 / 0.2e1;
t255 = Icges(6,5) * t337 - Icges(6,6) * t338;
t335 = Icges(6,4) * t337;
t233 = Icges(6,1) * t338 + Icges(6,5) * t369 + t335;
t461 = -Icges(6,2) * t338 + t233 + t335;
t482 = Icges(6,4) * t338;
t231 = Icges(6,2) * t337 + Icges(6,6) * t369 + t482;
t463 = Icges(6,1) * t337 - t231 - t482;
t113 = t255 * t369 + t337 * t461 + t338 * t463;
t256 = Icges(6,5) * t339 - Icges(6,6) * t340;
t336 = Icges(6,4) * t339;
t234 = Icges(6,1) * t340 + Icges(6,5) * t371 + t336;
t460 = -Icges(6,2) * t340 + t234 + t336;
t481 = Icges(6,4) * t340;
t232 = Icges(6,2) * t339 + Icges(6,6) * t371 + t481;
t462 = Icges(6,1) * t339 - t232 - t481;
t114 = t256 * t369 + t337 * t460 + t338 * t462;
t305 = Icges(6,5) * t363 - Icges(6,6) * t364;
t359 = Icges(6,4) * t363;
t295 = Icges(6,1) * t364 + Icges(6,5) * t476 + t359;
t446 = -Icges(6,2) * t364 + t295 + t359;
t480 = Icges(6,4) * t364;
t294 = Icges(6,2) * t363 + Icges(6,6) * t476 + t480;
t447 = Icges(6,1) * t363 - t294 - t480;
t142 = t305 * t369 + t337 * t446 + t338 * t447;
t45 = t113 * t369 + t114 * t371 + t142 * t476;
t115 = t255 * t371 + t339 * t461 + t340 * t463;
t116 = t256 * t371 + t339 * t460 + t340 * t462;
t143 = t305 * t371 + t339 * t446 + t340 * t447;
t46 = t115 * t369 + t116 * t371 + t143 * t476;
t130 = t255 * t476 + t363 * t461 + t364 * t463;
t131 = t256 * t476 + t363 * t460 + t364 * t462;
t160 = t305 * t476 + t363 * t446 + t364 * t447;
t70 = t130 * t369 + t131 * t371 + t160 * t476;
t435 = t70 * t426 + t45 * t507 + t46 * t505;
t7 = t435 + m(6) * (t137 * t204 + t165 * t217 + t166 * t218);
t530 = t7 * qJD(5);
t529 = Icges(4,6) * t391 + (t533 * t394 + t396 * t532) * t389;
t528 = Icges(4,5) * t391 + (t394 * t531 + t533 * t396) * t389;
t229 = Icges(6,5) * t338 + Icges(6,6) * t337 + Icges(6,3) * t369;
t150 = t229 * t369 + t231 * t337 + t233 * t338;
t230 = Icges(6,5) * t340 + Icges(6,6) * t339 + Icges(6,3) * t371;
t151 = t230 * t369 + t232 * t337 + t234 * t338;
t152 = t229 * t371 + t231 * t339 + t233 * t340;
t153 = t230 * t371 + t232 * t339 + t234 * t340;
t293 = Icges(6,5) * t364 + Icges(6,6) * t363 + Icges(6,3) * t476;
t186 = t293 * t369 + t294 * t337 + t295 * t338;
t187 = t293 * t371 + t294 * t339 + t295 * t340;
t418 = -Icges(6,4) * t387 + Icges(6,2) * t386;
t268 = Icges(6,6) * t370 + t369 * t418;
t420 = -Icges(6,1) * t387 + Icges(6,4) * t386;
t270 = Icges(6,5) * t370 + t369 * t420;
t416 = -Icges(6,5) * t387 + Icges(6,6) * t386;
t410 = Icges(6,3) * t370 + t231 * t386 - t233 * t387 + t369 * t416;
t101 = t229 * t370 + t268 * t337 + t270 * t338 + t369 * t410;
t269 = Icges(6,6) * t372 + t371 * t418;
t271 = Icges(6,5) * t372 + t371 * t420;
t409 = Icges(6,3) * t372 + t232 * t386 - t234 * t387 + t371 * t416;
t102 = t230 * t370 + t269 * t337 + t271 * t338 + t369 * t409;
t342 = (Icges(6,6) * t396 + t394 * t418) * t389;
t343 = (Icges(6,5) * t396 + t394 * t420) * t389;
t406 = t294 * t386 - t295 * t387 + (Icges(6,3) * t396 + t394 * t416) * t389;
t139 = t293 * t370 + t337 * t342 + t338 * t343 + t369 * t406;
t24 = t101 * t369 + t102 * t371 + t150 * t370 + t151 * t372 + (t139 * t394 + t186 * t396) * t389;
t103 = t229 * t372 + t268 * t339 + t270 * t340 + t371 * t410;
t104 = t230 * t372 + t269 * t339 + t271 * t340 + t371 * t409;
t140 = t293 * t372 + t339 * t342 + t340 * t343 + t371 * t406;
t25 = t103 * t369 + t104 * t371 + t152 * t370 + t153 * t372 + (t140 * t394 + t187 * t396) * t389;
t527 = (t152 * t369 + t153 * t371 + t187 * t476) * t504 + t25 * t505 + (t150 * t369 + t151 * t371 + t186 * t476) * t506 + t24 * t507;
t526 = (-Icges(4,6) * t478 + t533 * t371 + t372 * t532) * t392 + (-Icges(4,6) * t479 + t533 * t369 + t370 * t532) * t390;
t525 = (-Icges(4,5) * t478 + t371 * t531 + t533 * t372) * t392 + (-Icges(4,5) * t479 + t369 * t531 + t533 * t370) * t390;
t524 = 2 * qJD(3);
t523 = 4 * qJD(3);
t522 = 2 * qJD(4);
t521 = 4 * qJD(4);
t520 = m(4) / 0.2e1;
t519 = m(5) / 0.2e1;
t518 = m(5) / 0.4e1;
t517 = m(6) / 0.2e1;
t516 = m(6) / 0.4e1;
t475 = t389 * t395;
t349 = -t370 * t393 + t390 * t475;
t350 = t370 * t395 + t433;
t247 = rSges(5,1) * t350 + rSges(5,2) * t349 + rSges(5,3) * t369;
t351 = -t372 * t393 + t392 * t475;
t352 = t372 * t395 + t432;
t248 = rSges(5,1) * t352 + rSges(5,2) * t351 + rSges(5,3) * t371;
t424 = -rSges(5,1) * t395 + rSges(5,2) * t393;
t291 = rSges(5,3) * t370 + t369 * t424;
t292 = rSges(5,3) * t372 + t371 * t424;
t156 = t247 * t372 - t248 * t370 + t291 * t371 - t292 * t369;
t373 = -t391 * t395 - t393 * t474;
t374 = t395 * t474 - t468;
t312 = rSges(5,1) * t374 + rSges(5,2) * t373 + rSges(5,3) * t476;
t356 = (rSges(5,3) * t396 + t394 * t424) * t389;
t184 = t312 * t370 + t356 * t369 + (-t247 * t396 - t291 * t394) * t389;
t185 = -t312 * t372 - t356 * t371 + (t248 * t396 + t292 * t394) * t389;
t200 = t247 * t371 - t248 * t369;
t213 = -t247 * t476 + t312 * t369;
t214 = t248 * t476 - t312 * t371;
t515 = m(5) * (t156 * t200 + t184 * t213 + t185 * t214);
t327 = t370 * pkin(3) + t369 * pkin(6);
t315 = t327 * t478;
t329 = t372 * pkin(3) + t371 * pkin(6);
t453 = -t248 - t329;
t183 = t315 + (t247 * t392 + t390 * t453) * t389;
t380 = (pkin(3) * t396 + pkin(6) * t394) * t389;
t440 = t391 * t327 + t380 * t479;
t198 = t247 * t391 + t312 * t479 + t440;
t199 = t453 * t391 + (-t312 - t380) * t478;
t280 = rSges(5,1) * t349 - rSges(5,2) * t350;
t281 = rSges(5,1) * t351 - rSges(5,2) * t352;
t216 = (t280 * t392 - t281 * t390) * t389;
t333 = rSges(5,1) * t373 - rSges(5,2) * t374;
t223 = t280 * t391 + t333 * t479;
t224 = -t281 * t391 - t333 * t478;
t514 = m(5) * (t183 * t216 + t198 * t223 + t199 * t224);
t334 = (pkin(7) * t396 - t394 * t499) * t389;
t423 = -rSges(6,1) * t387 + rSges(6,2) * t386;
t344 = (rSges(6,3) * t396 + t394 * t423) * t389;
t449 = t370 * t296 + t369 * t344;
t250 = pkin(7) * t370 - t369 * t499;
t272 = rSges(6,3) * t370 + t369 * t423;
t452 = t250 + t272;
t107 = t313 * t370 + t334 * t369 + (-t394 * t452 - t396 * t459) * t389 + t449;
t251 = pkin(7) * t372 - t371 * t499;
t439 = t334 + t344;
t273 = rSges(6,3) * t372 + t371 * t423;
t464 = t236 * t474 + t273 * t476;
t108 = (t238 * t396 + t251 * t394) * t389 - t445 * t372 - t439 * t371 + t464;
t465 = t372 * t235 + t371 * t272;
t146 = -t236 * t370 - t273 * t369 + t465;
t177 = (-t235 * t396 - t272 * t394) * t389 + t449;
t178 = -t296 * t372 - t344 * t371 + t464;
t192 = -t236 * t369 + t225;
t206 = -t235 * t476 + t264;
t207 = -t296 * t371 + t227;
t451 = -t251 - t273;
t99 = t237 * t372 + t250 * t371 + t369 * t451 + t370 * t458 + t465;
t513 = m(6) * (t107 * t206 + t108 * t207 + t137 * t146 + t165 * t177 + t166 * t178 + t192 * t99);
t252 = t261 * t478;
t212 = -t262 * t479 + t252;
t219 = t391 * t261 + t311 * t479;
t220 = -t262 * t391 - t311 * t478;
t430 = -t329 + t458;
t132 = t315 + (t390 * t430 + t392 * t459) * t389;
t148 = t391 * t459 + t445 * t479 + t440;
t149 = t430 * t391 + (-t380 - t445) * t478;
t431 = t204 * t132 + t217 * t148 + t218 * t149;
t512 = m(6) * (t137 * t212 + t165 * t219 + t166 * t220 + t431);
t511 = m(6) * (t107 * t165 + t108 * t166 + t137 * t99);
t347 = t349 * pkin(4);
t348 = t351 * pkin(4);
t450 = -t262 - t348;
t190 = t252 + (t347 * t392 + t390 * t450) * t389;
t368 = t373 * pkin(4);
t201 = t347 * t391 + t368 * t479 + t219;
t442 = -t311 - t368;
t202 = t391 * t450 + t442 * t478;
t510 = m(6) * (t190 * t192 + t201 * t206 + t202 * t207 + t431);
t509 = m(6) * (t132 * t190 + t148 * t201 + t149 * t202);
t503 = t390 / 0.2e1;
t502 = -t391 / 0.2e1;
t501 = t392 / 0.2e1;
t500 = t394 / 0.2e1;
t497 = m(6) * qJD(4);
t496 = m(6) * qJD(5);
t74 = -t160 * t391 + (t130 * t390 + t131 * t392) * t389;
t491 = t391 * t74;
t241 = Icges(5,5) * t350 + Icges(5,6) * t349 + Icges(5,3) * t369;
t485 = Icges(5,4) * t350;
t243 = Icges(5,2) * t349 + Icges(5,6) * t369 + t485;
t345 = Icges(5,4) * t349;
t245 = Icges(5,1) * t350 + Icges(5,5) * t369 + t345;
t174 = t241 * t476 + t243 * t373 + t245 * t374;
t242 = Icges(5,5) * t352 + Icges(5,6) * t351 + Icges(5,3) * t371;
t484 = Icges(5,4) * t352;
t244 = Icges(5,2) * t351 + Icges(5,6) * t371 + t484;
t346 = Icges(5,4) * t351;
t246 = Icges(5,1) * t352 + Icges(5,5) * t371 + t346;
t175 = t242 * t476 + t244 * t373 + t246 * t374;
t308 = Icges(5,5) * t374 + Icges(5,6) * t373 + Icges(5,3) * t476;
t483 = Icges(5,4) * t374;
t309 = Icges(5,2) * t373 + Icges(5,6) * t476 + t483;
t367 = Icges(5,4) * t373;
t310 = Icges(5,1) * t374 + Icges(5,5) * t476 + t367;
t205 = t308 * t476 + t309 * t373 + t310 * t374;
t490 = t396 * (t174 * t369 + t175 * t371 + t205 * t476);
t473 = t390 * t391;
t472 = t390 * t392;
t469 = t391 * t392;
t457 = Icges(5,1) * t349 - t243 - t485;
t456 = Icges(5,1) * t351 - t244 - t484;
t455 = -Icges(5,2) * t350 + t245 + t345;
t454 = -Icges(5,2) * t352 + t246 + t346;
t328 = -t371 * pkin(3) + t372 * pkin(6);
t448 = -t292 - t328;
t444 = Icges(5,1) * t373 - t309 - t483;
t443 = -Icges(5,2) * t374 + t310 + t367;
t326 = -t369 * pkin(3) + t370 * pkin(6);
t379 = (-pkin(3) * t394 + pkin(6) * t396) * t389;
t441 = t391 * t326 + t379 * t479;
t438 = qJD(3) * t389;
t437 = qJD(3) * t391;
t427 = t478 / 0.2e1;
t428 = t479 / 0.2e1;
t56 = -t142 * t391 + (t113 * t390 + t114 * t392) * t389;
t57 = -t143 * t391 + (t115 * t390 + t116 * t392) * t389;
t436 = t57 * t427 + t56 * t428 - t491 / 0.2e1;
t419 = -Icges(5,4) * t395 + Icges(5,2) * t393;
t287 = Icges(5,6) * t370 + t369 * t419;
t421 = -Icges(5,1) * t395 + Icges(5,4) * t393;
t289 = Icges(5,5) * t370 + t369 * t421;
t417 = -Icges(5,5) * t395 + Icges(5,6) * t393;
t408 = Icges(5,3) * t370 + t243 * t393 - t245 * t395 + t369 * t417;
t128 = t287 * t373 + t289 * t374 + (t241 * t396 + t394 * t408) * t389;
t288 = Icges(5,6) * t372 + t371 * t419;
t290 = Icges(5,5) * t372 + t371 * t421;
t407 = Icges(5,3) * t372 + t244 * t393 - t246 * t395 + t371 * t417;
t129 = t288 * t373 + t290 * t374 + (t242 * t396 + t394 * t407) * t389;
t354 = (Icges(5,6) * t396 + t394 * t419) * t389;
t355 = (Icges(5,5) * t396 + t394 * t421) * t389;
t405 = t309 * t393 - t310 * t395 + (Icges(5,3) * t396 + t394 * t417) * t389;
t179 = t354 * t373 + t355 * t374 + (t308 * t396 + t394 * t405) * t389;
t34 = t128 * t369 + t129 * t371 + t174 * t370 + t175 * t372 + (t179 * t394 + t205 * t396) * t389;
t274 = Icges(5,5) * t349 - Icges(5,6) * t350;
t135 = t274 * t476 + t373 * t455 + t374 * t457;
t275 = Icges(5,5) * t351 - Icges(5,6) * t352;
t136 = t275 * t476 + t373 * t454 + t374 * t456;
t330 = Icges(5,5) * t373 - Icges(5,6) * t374;
t181 = t330 * t476 + t373 * t443 + t374 * t444;
t78 = -t181 * t391 + (t135 * t390 + t136 * t392) * t389;
t434 = -t34 / 0.2e1 + t78 / 0.2e1;
t429 = -t328 + t451;
t425 = t474 / 0.2e1;
t119 = t268 * t363 + t270 * t364 + (t229 * t396 + t394 * t410) * t389;
t120 = t269 * t363 + t271 * t364 + (t230 * t396 + t394 * t409) * t389;
t159 = t342 * t363 + t343 * t364 + (t293 * t396 + t394 * t406) * t389;
t167 = t229 * t476 + t231 * t363 + t233 * t364;
t168 = t230 * t476 + t232 * t363 + t234 * t364;
t197 = t293 * t476 + t294 * t363 + t295 * t364;
t31 = t119 * t369 + t120 * t371 + t167 * t370 + t168 * t372 + (t159 * t394 + t197 * t396) * t389;
t93 = t167 * t369 + t168 * t371 + t197 * t476;
t422 = t31 * t426 + t93 * t425 + t527;
t398 = -m(5) * (t223 * t390 - t224 * t392) / 0.2e1 - m(6) * (t201 * t390 - t202 * t392) / 0.2e1;
t399 = (t184 * t390 - t185 * t392) * t519 + (t107 * t390 - t108 * t392) * t517;
t32 = t398 + t399;
t50 = 0.2e1 * (t99 / 0.4e1 - t190 / 0.4e1) * m(6) + 0.2e1 * (t156 / 0.4e1 - t216 / 0.4e1) * m(5);
t415 = -t50 * qJD(1) - t32 * qJD(2);
t324 = -rSges(4,1) * t369 - rSges(4,2) * t370;
t378 = (-rSges(4,1) * t394 - rSges(4,2) * t396) * t389;
t282 = t324 * t391 + t378 * t479;
t325 = -rSges(4,1) * t371 - rSges(4,2) * t372;
t283 = -t325 * t391 - t378 * t478;
t414 = t282 * t390 - t283 * t392;
t117 = 0.2e1 * (t146 / 0.4e1 - t212 / 0.4e1) * m(6);
t403 = (t177 * t390 - t178 * t392) * t517;
t404 = m(6) * (t219 * t390 - t220 * t392);
t95 = t403 - t404 / 0.2e1;
t413 = -t117 * qJD(1) - t95 * qJD(2);
t124 = t274 * t369 + t349 * t455 + t350 * t457;
t125 = t275 * t369 + t349 * t454 + t350 * t456;
t157 = t330 * t369 + t349 * t443 + t350 * t444;
t66 = -t157 * t391 + (t124 * t390 + t125 * t392) * t389;
t126 = t274 * t371 + t351 * t455 + t352 * t457;
t127 = t275 * t371 + t351 * t454 + t352 * t456;
t158 = t330 * t371 + t351 * t443 + t352 * t444;
t67 = -t158 * t391 + (t126 * t390 + t127 * t392) * t389;
t412 = t501 * t67 + t503 * t66;
t411 = t513 / 0.2e1 + t422;
t38 = -t139 * t391 + (t101 * t390 + t102 * t392) * t389;
t39 = -t140 * t391 + (t103 * t390 + t104 * t392) * t389;
t62 = -t159 * t391 + (t119 * t390 + t120 * t392) * t389;
t402 = t24 * t428 + t25 * t427 + t31 * t502 + t38 * t507 + t39 * t505 - t56 * t479 / 0.2e1 - t57 * t478 / 0.2e1 + t62 * t426 + t491 / 0.2e1 + (-t186 * t391 + (t150 * t390 + t151 * t392) * t389) * t506 + (-t187 * t391 + (t152 * t390 + t153 * t392) * t389) * t504 + (-t197 * t391 + (t167 * t390 + t168 * t392) * t389) * t425;
t401 = t46 * t427 + t45 * t428 + t57 * t505 + t70 * t502 + t74 * t426 + t56 * t507 - t93 * t474 / 0.2e1 - t31 * t476 / 0.2e1 - t527;
t161 = t241 * t369 + t243 * t349 + t245 * t350;
t162 = t242 * t369 + t244 * t349 + t246 * t350;
t163 = t241 * t371 + t243 * t351 + t245 * t352;
t164 = t242 * t371 + t244 * t351 + t246 * t352;
t195 = t308 * t369 + t309 * t349 + t310 * t350;
t196 = t308 * t371 + t309 * t351 + t310 * t352;
t109 = t241 * t370 + t287 * t349 + t289 * t350 + t369 * t408;
t110 = t242 * t370 + t288 * t349 + t290 * t350 + t369 * t407;
t154 = t308 * t370 + t349 * t354 + t350 * t355 + t369 * t405;
t26 = t109 * t369 + t110 * t371 + t370 * t161 + t162 * t372 + (t154 * t394 + t195 * t396) * t389;
t111 = t241 * t372 + t287 * t351 + t289 * t352 + t371 * t408;
t112 = t242 * t372 + t288 * t351 + t290 * t352 + t371 * t407;
t155 = t308 * t372 + t351 * t354 + t352 * t355 + t371 * t405;
t27 = t111 * t369 + t112 * t371 + t163 * t370 + t372 * t164 + (t155 * t394 + t196 * t396) * t389;
t400 = t26 * t507 + t27 * t505 + t504 * (t163 * t369 + t164 * t371 + t196 * t476) + t506 * (t161 * t369 + t162 * t371 + t195 * t476);
t375 = (-Icges(4,5) * t394 - Icges(4,6) * t396) * t389;
t319 = -Icges(4,5) * t371 - Icges(4,6) * t372;
t318 = -Icges(4,5) * t369 - Icges(4,6) * t370;
t314 = t326 * t478;
t304 = rSges(4,1) * t372 - rSges(4,2) * t371 + rSges(4,3) * t478;
t303 = rSges(4,1) * t370 - rSges(4,2) * t369 + rSges(4,3) * t479;
t240 = (t324 * t392 - t325 * t390) * t389;
t222 = t281 * t476 - t333 * t371;
t221 = -t280 * t476 + t333 * t369;
t211 = t448 * t391 + (-t356 - t379) * t478;
t210 = t291 * t391 + t356 * t479 + t441;
t208 = t280 * t371 - t281 * t369;
t203 = t204 * t496;
t194 = t348 * t476 + t371 * t442 + t253;
t193 = t368 * t369 + t284 + (-t261 - t347) * t476;
t191 = t314 + (t291 * t392 + t390 * t448) * t389;
t180 = t347 * t371 + t369 * t450 + t239;
t176 = t217 * t390 - t218 * t392;
t173 = t176 * t496;
t172 = t429 * t391 + (-t379 - t439) * t478;
t171 = t391 * t452 + t439 * t479 + t441;
t138 = t314 + (t390 * t429 + t392 * t452) * t389;
t118 = (t146 + t212) * t517;
t96 = t404 / 0.2e1 + t403;
t76 = t135 * t369 + t136 * t371 + t181 * t476;
t75 = -t179 * t391 + (t128 * t390 + t129 * t392) * t389;
t65 = t126 * t369 + t127 * t371 + t158 * t476;
t64 = t124 * t369 + t125 * t371 + t157 * t476;
t60 = t146 * t192 + t177 * t206 + t178 * t207;
t59 = -t155 * t391 + (t111 * t390 + t112 * t392) * t389;
t58 = -t154 * t391 + (t109 * t390 + t110 * t392) * t389;
t51 = (t156 + t216) * t519 + (t190 + t99) * t517;
t40 = t132 * t212 + t148 * t219 + t149 * t220;
t33 = -t398 + t399;
t16 = t510 / 0.2e1;
t13 = t512 / 0.2e1;
t10 = m(6) * (t192 * t204 + t206 * t217 + t207 * t218) + t435;
t9 = t10 * qJD(5);
t8 = m(6) * t40 + t436;
t6 = t389 * t412 + t502 * t78 + t436 + t509 + t514;
t5 = m(6) * t60 + t422;
t4 = t16 - t512 / 0.2e1 + t411;
t3 = t13 - t510 / 0.2e1 + t411;
t2 = (t490 / 0.2e1 + t34 * t500) * t389 + t515 + t511 + t400 + t422;
t1 = t16 + t13 + t401 - t513 / 0.2e1;
t11 = [0, 0, t51 * qJD(4) + t118 * qJD(5) + (t138 * t517 + t191 * t519 + t240 * t520) * t524, t51 * qJD(3) + (t180 * t517 + t208 * t519) * t522 + t203, t118 * qJD(3) + t204 * t497 + t203; 0, 0, t33 * qJD(4) + t96 * qJD(5) + (t414 * t520 + (t210 * t390 - t211 * t392) * t519 + (t171 * t390 - t172 * t392) * t517) * t524, t33 * qJD(3) + ((t221 * t390 - t222 * t392) * t519 + (t193 * t390 - t194 * t392) * t517) * t522 + t173, t96 * qJD(3) + t176 * t497 + t173; -qJD(4) * t50 - qJD(5) * t117, -qJD(4) * t32 - qJD(5) * t95, t6 * qJD(4) + t8 * qJD(5) + (-t62 / 0.2e1 - t75 / 0.2e1 - t391 ^ 2 * t375 / 0.2e1) * t437 + (-(t528 * t371 + t529 * t372) * t469 / 0.2e1 - (t528 * t369 + t529 * t370) * t473 / 0.2e1 + (-t319 * t469 - t318 * t473 - (t528 * t394 + t529 * t396) * t391 + (t525 * t394 + t526 * t396) * t389) * t502 + (t38 + t58 + (t525 * t369 + t526 * t370 - t375 * t473 + (t318 * t390 ^ 2 + t319 * t472) * t389) * t389) * t503 + (t39 + t59 + (t525 * t371 + t526 * t372 - t375 * t469 + (t319 * t392 ^ 2 + t318 * t472) * t389) * t389) * t501) * t438 + ((t132 * t138 + t148 * t171 + t149 * t172) * t516 + (t183 * t191 + t198 * t210 + t199 * t211) * t518 + m(4) * ((t282 * t303 - t283 * t304) * t391 + ((t303 * t392 - t304 * t390) * t240 + t414 * (-rSges(4,3) * t391 + (rSges(4,1) * t396 - rSges(4,2) * t394) * t389)) * t389) / 0.4e1) * t523, t6 * qJD(3) + t1 * qJD(5) + (-t515 / 0.4e1 - t511 / 0.4e1) * t521 + ((t183 * t208 + t198 * t221 + t199 * t222 + t200 * t216 + t213 * t223 + t214 * t224) * t519 + (t132 * t180 + t137 * t190 + t148 * t193 + t149 * t194 + t165 * t201 + t166 * t202) * t517) * t522 + t415 + (t76 * t502 + t67 * t505 + t66 * t507 - t400 + t401 + (-t490 / 0.2e1 + t65 * t501 + t64 * t503 + t434 * t394) * t389) * qJD(4), t8 * qJD(3) + t1 * qJD(4) + (t401 + (t192 * t212 + t206 * t219 + t207 * t220 + t431 - t60) * m(6)) * qJD(5) + t413; t50 * qJD(3), t32 * qJD(3), (t505 * t59 + t507 * t58 + t402) * qJD(3) + t2 * qJD(4) + t3 * qJD(5) + (-t514 / 0.4e1 - t509 / 0.4e1) * t523 + ((t156 * t183 + t184 * t198 + t185 * t199 + t191 * t200 + t210 * t213 + t211 * t214) * t519 + (t107 * t148 + t108 * t149 + t132 * t99 + t137 * t138 + t165 * t171 + t166 * t172) * t517) * t524 + (-t372 * t196 / 0.2e1 - t370 * t195 / 0.2e1 + t434) * t437 + ((t163 * t390 + t164 * t392) * t504 + (t161 * t390 + t162 * t392) * t506 + t75 * t500 + t27 * t501 + t26 * t503 + (t205 * t502 + (t174 * t390 + t175 * t392) * t389 / 0.2e1) * t396 - t412) * t438 - t415, t2 * qJD(3) + (t426 * t76 + t505 * t65 + t507 * t64 + t435) * qJD(4) + t530 + ((t137 * t180 + t165 * t193 + t166 * t194) * t516 + (t200 * t208 + t213 * t221 + t214 * t222) * t518) * t521, t3 * qJD(3) + t7 * qJD(4) + t530; t117 * qJD(3), t95 * qJD(3), (t402 + (t132 * t146 + t138 * t192 + t148 * t177 + t149 * t178 + t171 * t206 + t172 * t207 - t40) * m(6)) * qJD(3) + t4 * qJD(4) + t5 * qJD(5) - t413, t4 * qJD(3) + ((t180 * t192 + t193 * t206 + t194 * t207) * m(6) + t435) * qJD(4) + t9, qJD(3) * t5 + qJD(4) * t10 + t9;];
Cq = t11;
