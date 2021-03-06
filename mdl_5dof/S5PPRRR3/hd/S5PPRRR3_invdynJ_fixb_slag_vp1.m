% Calculate vector of inverse dynamics joint torques for
% S5PPRRR3
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
% tau [5x1]
%   joint torques of inverse dynamics (contains inertial, gravitational coriolis and centrifugal forces)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 15:17
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau = S5PPRRR3_invdynJ_fixb_slag_vp1(qJ, qJD, qJDD, g, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PPRRR3_invdynJ_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PPRRR3_invdynJ_fixb_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5PPRRR3_invdynJ_fixb_slag_vp1: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PPRRR3_invdynJ_fixb_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PPRRR3_invdynJ_fixb_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5PPRRR3_invdynJ_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5PPRRR3_invdynJ_fixb_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5PPRRR3_invdynJ_fixb_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From invdyn_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 15:16:23
% EndTime: 2019-12-05 15:16:58
% DurationCPUTime: 26.31s
% Computational Cost: add. (25141->1134), mult. (51101->1627), div. (0->0), fcn. (56117->10), ass. (0->423)
t393 = cos(pkin(9));
t394 = cos(pkin(8));
t398 = cos(qJ(3));
t496 = t394 * t398;
t392 = sin(pkin(8));
t396 = sin(qJ(3));
t501 = t392 * t396;
t353 = t393 * t496 + t501;
t395 = sin(qJ(4));
t391 = sin(pkin(9));
t397 = cos(qJ(4));
t503 = t391 * t397;
t290 = -t353 * t395 + t394 * t503;
t500 = t392 * t398;
t459 = t393 * t500;
t497 = t394 * t396;
t351 = t459 - t497;
t288 = -t351 * t395 + t392 * t503;
t390 = qJ(4) + qJ(5);
t387 = sin(t390);
t523 = rSges(6,2) * t387;
t388 = cos(t390);
t525 = rSges(6,1) * t388;
t557 = t523 - t525;
t524 = rSges(5,2) * t395;
t526 = rSges(5,1) * t397;
t556 = t524 - t526;
t389 = qJD(4) + qJD(5);
t502 = t391 * t398;
t555 = t389 * t502;
t507 = t391 * t392;
t276 = -t351 * t387 + t388 * t507;
t277 = t351 * t388 + t387 * t507;
t350 = t393 * t501 + t496;
t135 = rSges(6,1) * t277 + rSges(6,2) * t276 + rSges(6,3) * t350;
t506 = t391 * t394;
t278 = -t353 * t387 + t388 * t506;
t279 = t353 * t388 + t387 * t506;
t352 = t393 * t497 - t500;
t136 = rSges(6,1) * t279 + rSges(6,2) * t278 + rSges(6,3) * t352;
t164 = t276 * rSges(6,1) - t277 * rSges(6,2);
t165 = t278 * rSges(6,1) - t279 * rSges(6,2);
t472 = qJD(3) * t391;
t373 = t392 * t472;
t298 = qJD(4) * t350 + t373;
t211 = qJD(5) * t350 + t298;
t374 = t394 * t472;
t299 = qJD(4) * t352 + t374;
t212 = qJD(5) * t352 + t299;
t470 = qJD(3) * t396;
t328 = qJD(3) * t459 - t394 * t470;
t330 = t353 * qJD(3);
t327 = t350 * qJD(3);
t439 = t389 * t507 - t327;
t508 = t388 * t389;
t168 = -t351 * t508 - t387 * t439;
t509 = t387 * t389;
t169 = -t351 * t509 + t388 * t439;
t99 = rSges(6,1) * t169 + rSges(6,2) * t168 + rSges(6,3) * t328;
t554 = t330 * t135 - t136 * t328 - t212 * t164 + t165 * t211 + t352 * t99;
t357 = (-Icges(4,5) * t396 - Icges(4,6) * t398) * t391;
t331 = qJD(3) * t357;
t412 = t288 * qJD(4);
t399 = -pkin(7) - pkin(6);
t527 = -pkin(6) - t399;
t384 = pkin(4) * t397 + pkin(3);
t528 = pkin(3) - t384;
t112 = pkin(4) * t412 + t327 * t528 + t328 * t527;
t455 = t391 * t470;
t416 = t389 * t393 + t455;
t249 = t387 * t416 - t388 * t555;
t250 = -t387 * t555 - t388 * t416;
t469 = qJD(3) * t398;
t454 = t391 * t469;
t127 = rSges(6,1) * t250 + rSges(6,2) * t249 + rSges(6,3) * t454;
t505 = t391 * t395;
t463 = t392 * t505;
t137 = pkin(4) * t463 + t350 * t527 - t351 * t528;
t467 = qJDD(3) * t391;
t370 = t392 * t467;
t206 = qJD(4) * t328 + qJDD(4) * t350 + t370;
t139 = qJD(5) * t328 + qJDD(5) * t350 + t206;
t449 = t528 * t396;
t468 = qJD(4) * t398;
t498 = t393 * t397;
t188 = -qJD(4) * pkin(4) * t498 + (-pkin(4) * t395 * t468 + (t398 * t527 + t449) * qJD(3)) * t391;
t323 = -t387 * t502 - t388 * t393;
t324 = -t393 * t387 + t388 * t502;
t504 = t391 * t396;
t204 = rSges(6,1) * t324 + rSges(6,2) * t323 + rSges(6,3) * t504;
t499 = t393 * t395;
t232 = -pkin(4) * t499 + (t396 * t527 - t398 * t528) * t391;
t453 = t391 * t468;
t466 = qJDD(3) * t393;
t305 = qJD(3) * t453 + qJDD(4) * t504 - t466;
t248 = (qJD(5) * t469 + qJDD(5) * t396) * t391 + t305;
t471 = qJD(3) * t393;
t363 = qJD(4) * t504 - t471;
t314 = qJD(5) * t504 + t363;
t242 = -t327 * pkin(3) + t328 * pkin(6);
t262 = t351 * pkin(3) + t350 * pkin(6);
t345 = (-pkin(3) * t396 + pkin(6) * t398) * t472;
t362 = (pkin(3) * t398 + pkin(6) * t396) * t391;
t385 = qJDD(2) * t392;
t430 = t242 * t471 + t262 * t466 + t345 * t373 + t362 * t370 + t385;
t17 = -t112 * t363 + t127 * t211 - t135 * t248 - t137 * t305 + t139 * t204 + t188 * t298 + t206 * t232 - t314 * t99 + t430;
t490 = t135 + t137;
t522 = t112 + t99;
t386 = qJD(2) * t392;
t456 = t262 * t471 + t362 * t373 + t386;
t53 = -t135 * t314 - t137 * t363 + t204 * t211 + t232 * t298 + t456;
t553 = -t17 * t490 - t522 * t53;
t552 = t139 / 0.2e1;
t371 = t394 * t467;
t207 = qJD(4) * t330 + qJDD(4) * t352 + t371;
t140 = qJD(5) * t330 + qJDD(5) * t352 + t207;
t551 = t140 / 0.2e1;
t550 = t206 / 0.2e1;
t549 = t207 / 0.2e1;
t548 = -t211 / 0.2e1;
t547 = t211 / 0.2e1;
t546 = -t212 / 0.2e1;
t545 = t212 / 0.2e1;
t544 = t248 / 0.2e1;
t543 = -t298 / 0.2e1;
t542 = t298 / 0.2e1;
t541 = -t299 / 0.2e1;
t540 = t299 / 0.2e1;
t539 = t305 / 0.2e1;
t538 = -t314 / 0.2e1;
t537 = t314 / 0.2e1;
t536 = t328 / 0.2e1;
t535 = t330 / 0.2e1;
t534 = t350 / 0.2e1;
t533 = t352 / 0.2e1;
t532 = -t363 / 0.2e1;
t531 = t363 / 0.2e1;
t521 = Icges(4,4) * t351;
t520 = Icges(4,4) * t353;
t519 = Icges(4,4) * t396;
t518 = Icges(4,4) * t398;
t289 = t351 * t397 + t463;
t517 = Icges(5,4) * t289;
t461 = t394 * t505;
t291 = t353 * t397 + t461;
t516 = Icges(5,4) * t291;
t356 = t397 * t502 - t499;
t515 = Icges(5,4) * t356;
t514 = Icges(6,4) * t277;
t513 = Icges(6,4) * t279;
t512 = Icges(6,4) * t324;
t495 = t398 * t399;
t329 = t352 * qJD(3);
t438 = t389 * t506 - t329;
t170 = -t353 * t508 - t387 * t438;
t171 = -t353 * t509 + t388 * t438;
t100 = rSges(6,1) * t171 + rSges(6,2) * t170 + rSges(6,3) * t330;
t411 = t290 * qJD(4);
t113 = pkin(4) * t411 + t329 * t528 + t330 * t527;
t494 = -t100 - t113;
t199 = -qJD(4) * t291 + t329 * t395;
t200 = -t329 * t397 + t411;
t110 = rSges(5,1) * t200 + rSges(5,2) * t199 + rSges(5,3) * t330;
t243 = -t329 * pkin(3) + t330 * pkin(6);
t493 = -t110 - t243;
t492 = t350 * t127 + t328 * t204;
t491 = t127 + t188;
t138 = pkin(4) * t461 + t352 * t527 - t353 * t528;
t489 = -t136 - t138;
t150 = rSges(5,1) * t291 + rSges(5,2) * t290 + rSges(5,3) * t352;
t264 = t353 * pkin(3) + t352 * pkin(6);
t488 = -t150 - t264;
t487 = t204 + t232;
t486 = t393 * t242 + t345 * t507;
t215 = -Icges(4,2) * t350 + Icges(4,6) * t507 + t521;
t485 = -Icges(4,1) * t350 - t215 - t521;
t216 = -Icges(4,2) * t352 + Icges(4,6) * t506 + t520;
t484 = -Icges(4,1) * t352 - t216 - t520;
t339 = Icges(4,4) * t350;
t217 = Icges(4,1) * t351 + Icges(4,5) * t507 - t339;
t483 = Icges(4,2) * t351 - t217 + t339;
t340 = Icges(4,4) * t352;
t218 = Icges(4,1) * t353 + Icges(4,5) * t506 - t340;
t482 = Icges(4,2) * t353 - t218 + t340;
t261 = -t350 * pkin(3) + pkin(6) * t351;
t380 = pkin(6) * t502;
t361 = -pkin(3) * t504 + t380;
t481 = t261 * t471 + t361 * t373;
t480 = t393 * t262 + t362 * t507;
t479 = -t350 * t384 - t351 * t399;
t478 = -t352 * t384 - t353 * t399;
t230 = t323 * rSges(6,1) - t324 * rSges(6,2);
t318 = -Icges(4,6) * t393 + (-Icges(4,2) * t396 + t518) * t391;
t359 = (-Icges(4,1) * t396 - t518) * t391;
t477 = t318 - t359;
t319 = -Icges(4,5) * t393 + (Icges(4,1) * t398 - t519) * t391;
t358 = (-Icges(4,2) * t398 - t519) * t391;
t476 = t319 + t358;
t475 = rSges(6,3) * t502 + t504 * t523;
t474 = rSges(5,3) * t502 + t504 * t524;
t473 = qJD(2) * t394;
t465 = -m(3) - m(4) - m(5) - m(6);
t458 = -t243 + t494;
t457 = -t264 + t489;
t450 = t504 / 0.2e1;
t448 = t472 / 0.2e1;
t263 = -t352 * pkin(3) + pkin(6) * t353;
t444 = t314 * t165 - t212 * t230;
t443 = -t164 * t314 + t211 * t230;
t442 = t398 * t448;
t286 = t288 * pkin(4);
t287 = t290 * pkin(4);
t440 = t100 * t504 + t136 * t454 - t204 * t330;
t197 = -qJD(4) * t289 + t327 * t395;
t198 = -t327 * t397 + t412;
t109 = rSges(5,1) * t198 + rSges(5,2) * t197 + rSges(5,3) * t328;
t149 = rSges(5,1) * t289 + rSges(5,2) * t288 + rSges(5,3) * t350;
t292 = -qJD(4) * t356 + t395 * t455;
t355 = -t395 * t502 - t498;
t293 = qJD(4) * t355 - t397 * t455;
t163 = rSges(5,1) * t293 + rSges(5,2) * t292 + rSges(5,3) * t454;
t231 = rSges(5,1) * t356 + rSges(5,2) * t355 + rSges(5,3) * t504;
t47 = -t109 * t363 - t149 * t305 + t163 * t298 + t206 * t231 + t430;
t76 = -t149 * t363 + t231 * t298 + t456;
t437 = t76 * t109 + t47 * t149;
t234 = -Icges(4,5) * t327 - Icges(4,6) * t328;
t235 = -Icges(4,5) * t329 - Icges(4,6) * t330;
t236 = -Icges(4,4) * t327 - Icges(4,2) * t328;
t237 = -Icges(4,4) * t329 - Icges(4,2) * t330;
t238 = -Icges(4,1) * t327 - Icges(4,4) * t328;
t239 = -Icges(4,1) * t329 - Icges(4,4) * t330;
t436 = t392 * (-t215 * t328 - t217 * t327 + t234 * t507 - t236 * t350 + t238 * t351) + t394 * (-t216 * t328 - t218 * t327 + t235 * t507 - t237 * t350 + t239 * t351);
t435 = t392 * (-t215 * t330 - t217 * t329 + t234 * t506 - t236 * t352 + t238 * t353) + t394 * (-t216 * t330 - t218 * t329 + t235 * t506 - t237 * t352 + t239 * t353);
t434 = t392 * (-t234 * t393 + (-t236 * t396 + t238 * t398 + (-t215 * t398 - t217 * t396) * qJD(3)) * t391) + t394 * (-t235 * t393 + (-t237 * t396 + t239 * t398 + (-t216 * t398 - t218 * t396) * qJD(3)) * t391);
t213 = Icges(4,5) * t351 - Icges(4,6) * t350 + Icges(4,3) * t507;
t214 = Icges(4,5) * t353 - Icges(4,6) * t352 + Icges(4,3) * t506;
t433 = t392 * (t213 * t507 - t215 * t350 + t217 * t351) + t394 * (t214 * t507 - t216 * t350 + t218 * t351);
t432 = t392 * (t213 * t506 - t215 * t352 + t217 * t353) + t394 * (t214 * t506 - t216 * t352 + t218 * t353);
t240 = -rSges(4,1) * t327 - rSges(4,2) * t328;
t360 = (-rSges(4,1) * t396 - rSges(4,2) * t398) * t391;
t338 = qJD(3) * t360;
t220 = rSges(4,1) * t351 - rSges(4,2) * t350 + rSges(4,3) * t507;
t322 = -rSges(4,3) * t393 + (rSges(4,1) * t398 - rSges(4,2) * t396) * t391;
t417 = t220 * t393 + t322 * t507;
t91 = t385 + t417 * qJDD(3) + (t240 * t393 + t338 * t507) * qJD(3);
t221 = rSges(4,1) * t353 - rSges(4,2) * t352 + rSges(4,3) * t506;
t241 = -rSges(4,1) * t329 - rSges(4,2) * t330;
t92 = (-qJD(3) * t241 - qJDD(3) * t221) * t393 + (-qJDD(2) + (-qJD(3) * t338 - qJDD(3) * t322) * t391) * t394;
t431 = t392 * t91 - t394 * t92;
t429 = -Icges(5,1) * t397 + Icges(5,4) * t395;
t428 = -Icges(6,1) * t388 + Icges(6,4) * t387;
t427 = -Icges(5,4) * t397 + Icges(5,2) * t395;
t426 = -Icges(6,4) * t388 + Icges(6,2) * t387;
t425 = -Icges(5,5) * t397 + Icges(5,6) * t395;
t424 = -Icges(6,5) * t388 + Icges(6,6) * t387;
t423 = (-t213 * t393 + (-t215 * t396 + t217 * t398) * t391) * t392 + (-t214 * t393 + (-t216 * t396 + t218 * t398) * t391) * t394;
t141 = qJD(3) * t417 + t386;
t142 = -t473 + (-t221 * t393 - t322 * t506) * qJD(3);
t422 = t141 * t392 - t142 * t394;
t421 = t220 * t394 - t221 * t392;
t420 = t240 * t394 - t241 * t392;
t195 = t351 * rSges(5,3) + t350 * t556;
t196 = t353 * rSges(5,3) + t352 * t556;
t178 = t351 * rSges(6,3) + t350 * t557;
t179 = t353 * rSges(6,3) + t352 * t557;
t419 = -qJD(3) * t243 - qJDD(3) * t264;
t418 = t261 * t374 - t263 * t373;
t415 = t262 * t374 - t264 * t373 + qJD(1);
t349 = t355 * pkin(4);
t414 = (Icges(6,5) * t276 - Icges(6,6) * t277) * t211 + (Icges(6,5) * t278 - Icges(6,6) * t279) * t212 + (Icges(6,5) * t323 - Icges(6,6) * t324) * t314;
t413 = (Icges(5,5) * t288 - Icges(5,6) * t289) * t298 + (Icges(5,5) * t290 - Icges(5,6) * t291) * t299 + (Icges(5,5) * t355 - Icges(5,6) * t356) * t363;
t410 = -t263 * t471 - t361 * t374;
t409 = (-t264 * t393 - t362 * t506) * qJD(3) - t473;
t408 = t242 * t374 + t262 * t371 + t419 * t507 + qJDD(1);
t129 = Icges(6,5) * t277 + Icges(6,6) * t276 + Icges(6,3) * t350;
t131 = Icges(6,2) * t276 + Icges(6,6) * t350 + t514;
t270 = Icges(6,4) * t276;
t133 = Icges(6,1) * t277 + Icges(6,5) * t350 + t270;
t55 = t129 * t350 + t131 * t276 + t133 * t277;
t130 = Icges(6,5) * t279 + Icges(6,6) * t278 + Icges(6,3) * t352;
t132 = Icges(6,2) * t278 + Icges(6,6) * t352 + t513;
t271 = Icges(6,4) * t278;
t134 = Icges(6,1) * t279 + Icges(6,5) * t352 + t271;
t56 = t130 * t350 + t132 * t276 + t134 * t277;
t201 = Icges(6,5) * t324 + Icges(6,6) * t323 + Icges(6,3) * t504;
t202 = Icges(6,2) * t323 + Icges(6,6) * t504 + t512;
t311 = Icges(6,4) * t323;
t203 = Icges(6,1) * t324 + Icges(6,5) * t504 + t311;
t74 = t201 * t350 + t202 * t276 + t203 * t277;
t23 = t211 * t55 + t212 * t56 + t314 * t74;
t57 = t129 * t352 + t131 * t278 + t133 * t279;
t58 = t130 * t352 + t132 * t278 + t134 * t279;
t75 = t201 * t352 + t202 * t278 + t203 * t279;
t24 = t211 * t57 + t212 * t58 + t314 * t75;
t93 = Icges(6,5) * t169 + Icges(6,6) * t168 + Icges(6,3) * t328;
t95 = Icges(6,4) * t169 + Icges(6,2) * t168 + Icges(6,6) * t328;
t97 = Icges(6,1) * t169 + Icges(6,4) * t168 + Icges(6,5) * t328;
t25 = t129 * t328 + t131 * t168 + t133 * t169 + t276 * t95 + t277 * t97 + t350 * t93;
t94 = Icges(6,5) * t171 + Icges(6,6) * t170 + Icges(6,3) * t330;
t96 = Icges(6,4) * t171 + Icges(6,2) * t170 + Icges(6,6) * t330;
t98 = Icges(6,1) * t171 + Icges(6,4) * t170 + Icges(6,5) * t330;
t26 = t130 * t328 + t132 * t168 + t134 * t169 + t276 * t96 + t277 * t98 + t350 * t94;
t27 = t129 * t330 + t131 * t170 + t133 * t171 + t278 * t95 + t279 * t97 + t352 * t93;
t28 = t130 * t330 + t132 * t170 + t134 * t171 + t278 * t96 + t279 * t98 + t352 * t94;
t124 = Icges(6,5) * t250 + Icges(6,6) * t249 + Icges(6,3) * t454;
t125 = Icges(6,4) * t250 + Icges(6,2) * t249 + Icges(6,6) * t454;
t126 = Icges(6,1) * t250 + Icges(6,4) * t249 + Icges(6,5) * t454;
t44 = t124 * t350 + t125 * t276 + t126 * t277 + t168 * t202 + t169 * t203 + t201 * t328;
t3 = t139 * t55 + t140 * t56 + t211 * t25 + t212 * t26 + t248 * t74 + t314 * t44;
t63 = t129 * t504 + t131 * t323 + t133 * t324;
t64 = t130 * t504 + t132 * t323 + t134 * t324;
t81 = t201 * t504 + t202 * t323 + t203 * t324;
t30 = t211 * t63 + t212 * t64 + t314 * t81;
t34 = t131 * t249 + t133 * t250 + t323 * t95 + t324 * t97 + (t129 * t469 + t396 * t93) * t391;
t35 = t132 * t249 + t134 * t250 + t323 * t96 + t324 * t98 + (t130 * t469 + t396 * t94) * t391;
t45 = t124 * t352 + t125 * t278 + t126 * t279 + t170 * t202 + t171 * t203 + t201 * t330;
t4 = t139 * t57 + t140 * t58 + t211 * t27 + t212 * t28 + t248 * t75 + t314 * t45;
t405 = (-Icges(6,2) * t279 + t134 + t271) * t212 + (-Icges(6,2) * t277 + t133 + t270) * t211 + (-Icges(6,2) * t324 + t203 + t311) * t314;
t406 = (Icges(6,1) * t278 - t132 - t513) * t212 + (Icges(6,1) * t276 - t131 - t514) * t211 + (Icges(6,1) * t323 - t202 - t512) * t314;
t49 = t125 * t323 + t126 * t324 + t202 * t249 + t203 * t250 + (t124 * t396 + t201 * t469) * t391;
t8 = t139 * t63 + t140 * t64 + t211 * t34 + t212 * t35 + t248 * t81 + t314 * t49;
t407 = t3 * t534 + t4 * t533 + (t328 * t63 + t330 * t64 + t34 * t350 + t35 * t352 + (t396 * t49 + t469 * t81) * t391) * t537 + (t276 * t405 + t277 * t406 + t350 * t414) * t548 + (t278 * t405 + t279 * t406 + t352 * t414) * t546 + (t323 * t405 + t324 * t406 + t414 * t504) * t538 + t23 * t536 + t24 * t535 + (t350 * t55 + t352 * t56 + t504 * t74) * t552 + (t350 * t57 + t352 * t58 + t504 * t75) * t551 + t30 * t442 + (t350 * t63 + t352 * t64 + t504 * t81) * t544 + (t25 * t350 + t26 * t352 + t328 * t55 + t330 * t56 + (t396 * t44 + t469 * t74) * t391) * t547 + (t27 * t350 + t28 * t352 + t328 * t57 + t330 * t58 + (t396 * t45 + t469 * t75) * t391) * t545 + t8 * t450;
t145 = Icges(5,2) * t288 + Icges(5,6) * t350 + t517;
t146 = Icges(5,2) * t290 + Icges(5,6) * t352 + t516;
t228 = Icges(5,2) * t355 + Icges(5,6) * t504 + t515;
t404 = (Icges(5,1) * t290 - t146 - t516) * t299 + (Icges(5,1) * t288 - t145 - t517) * t298 + (Icges(5,1) * t355 - t228 - t515) * t363;
t284 = Icges(5,4) * t288;
t147 = Icges(5,1) * t289 + Icges(5,5) * t350 + t284;
t285 = Icges(5,4) * t290;
t148 = Icges(5,1) * t291 + Icges(5,5) * t352 + t285;
t348 = Icges(5,4) * t355;
t229 = Icges(5,1) * t356 + Icges(5,5) * t504 + t348;
t403 = (-Icges(5,2) * t291 + t148 + t285) * t299 + (-Icges(5,2) * t289 + t147 + t284) * t298 + (-Icges(5,2) * t356 + t229 + t348) * t363;
t402 = (-qJDD(2) + (-qJD(3) * t345 - qJDD(3) * t362) * t391) * t394 + t419 * t393;
t401 = (Icges(6,3) * t353 + t132 * t387 - t134 * t388 + t352 * t424) * t212 + (Icges(6,3) * t351 + t131 * t387 - t133 * t388 + t350 * t424) * t211 + (t202 * t387 - t203 * t388 + (Icges(6,3) * t398 + t396 * t424) * t391) * t314;
t400 = (Icges(5,3) * t353 + t146 * t395 - t148 * t397 + t352 * t425) * t299 + (Icges(5,3) * t351 + t145 * t395 - t147 * t397 + t350 * t425) * t298 + (t228 * t395 - t229 * t397 + (Icges(5,3) * t398 + t396 * t425) * t391) * t363;
t333 = qJD(3) * t359;
t332 = qJD(3) * t358;
t317 = -Icges(4,3) * t393 + (Icges(4,5) * t398 - Icges(4,6) * t396) * t391;
t297 = -rSges(5,1) * t396 * t503 + t474;
t296 = (Icges(5,5) * t398 + t396 * t429) * t391;
t295 = (Icges(5,6) * t398 + t396 * t427) * t391;
t283 = -t504 * t525 + t475;
t282 = (Icges(6,5) * t398 + t396 * t428) * t391;
t281 = (Icges(6,6) * t398 + t396 * t426) * t391;
t269 = -t380 + (t449 - t495) * t391;
t268 = rSges(5,1) * t355 - rSges(5,2) * t356;
t260 = -rSges(4,1) * t352 - rSges(4,2) * t353;
t259 = -rSges(4,1) * t350 - rSges(4,2) * t351;
t254 = -Icges(4,5) * t352 - Icges(4,6) * t353;
t253 = -Icges(4,5) * t350 - Icges(4,6) * t351;
t252 = t353 * t389;
t251 = t351 * t389;
t233 = t262 * t506;
t227 = Icges(5,5) * t356 + Icges(5,6) * t355 + Icges(5,3) * t504;
t208 = t242 * t506;
t194 = Icges(5,5) * t353 + t352 * t429;
t193 = Icges(5,5) * t351 + t350 * t429;
t192 = Icges(5,6) * t353 + t352 * t427;
t191 = Icges(5,6) * t351 + t350 * t427;
t187 = rSges(5,1) * t290 - rSges(5,2) * t291;
t186 = rSges(5,1) * t288 - rSges(5,2) * t289;
t177 = Icges(6,5) * t353 + t352 * t428;
t176 = Icges(6,5) * t351 + t350 * t428;
t175 = Icges(6,6) * t353 + t352 * t426;
t174 = Icges(6,6) * t351 + t350 * t426;
t167 = t350 * t204;
t156 = Icges(5,1) * t293 + Icges(5,4) * t292 + Icges(5,5) * t454;
t155 = Icges(5,4) * t293 + Icges(5,2) * t292 + Icges(5,6) * t454;
t154 = Icges(5,5) * t293 + Icges(5,6) * t292 + Icges(5,3) * t454;
t153 = -t263 + t478;
t152 = -t261 + t479;
t151 = -t317 * t393 + (-t318 * t396 + t319 * t398) * t391;
t144 = Icges(5,5) * t291 + Icges(5,6) * t290 + Icges(5,3) * t352;
t143 = Icges(5,5) * t289 + Icges(5,6) * t288 + Icges(5,3) * t350;
t122 = t136 * t504;
t120 = t317 * t506 - t318 * t352 + t319 * t353;
t119 = t317 * t507 - t318 * t350 + t319 * t351;
t118 = t352 * t135;
t117 = t421 * t472 + qJD(1);
t111 = -t331 * t393 + (-t332 * t396 + t333 * t398 + (-t318 * t398 - t319 * t396) * qJD(3)) * t391;
t108 = Icges(5,1) * t200 + Icges(5,4) * t199 + Icges(5,5) * t330;
t107 = Icges(5,1) * t198 + Icges(5,4) * t197 + Icges(5,5) * t328;
t106 = Icges(5,4) * t200 + Icges(5,2) * t199 + Icges(5,6) * t330;
t105 = Icges(5,4) * t198 + Icges(5,2) * t197 + Icges(5,6) * t328;
t104 = Icges(5,5) * t200 + Icges(5,6) * t199 + Icges(5,3) * t330;
t103 = Icges(5,5) * t198 + Icges(5,6) * t197 + Icges(5,3) * t328;
t88 = t227 * t504 + t228 * t355 + t229 * t356;
t83 = -t318 * t330 - t319 * t329 + t331 * t506 - t332 * t352 + t333 * t353;
t82 = -t318 * t328 - t319 * t327 + t331 * t507 - t332 * t350 + t333 * t351;
t80 = qJDD(1) + (qJD(3) * t420 + qJDD(3) * t421) * t391;
t79 = t227 * t352 + t228 * t290 + t229 * t291;
t78 = t227 * t350 + t228 * t288 + t229 * t289;
t77 = t150 * t363 - t231 * t299 + t409;
t71 = t144 * t504 + t146 * t355 + t148 * t356;
t70 = t143 * t504 + t145 * t355 + t147 * t356;
t65 = t149 * t299 - t150 * t298 + t415;
t62 = t144 * t352 + t146 * t290 + t148 * t291;
t61 = t143 * t352 + t145 * t290 + t147 * t291;
t60 = t144 * t350 + t146 * t288 + t148 * t289;
t59 = t143 * t350 + t145 * t288 + t147 * t289;
t54 = t136 * t314 + t138 * t363 - t204 * t212 - t232 * t299 + t409;
t52 = t155 * t355 + t156 * t356 + t228 * t292 + t229 * t293 + (t154 * t396 + t227 * t469) * t391;
t51 = t154 * t352 + t155 * t290 + t156 * t291 + t199 * t228 + t200 * t229 + t227 * t330;
t50 = t154 * t350 + t155 * t288 + t156 * t289 + t197 * t228 + t198 * t229 + t227 * t328;
t48 = t110 * t363 + t150 * t305 - t163 * t299 - t207 * t231 + t402;
t46 = t135 * t212 - t136 * t211 + t137 * t299 - t138 * t298 + t415;
t43 = t106 * t355 + t108 * t356 + t146 * t292 + t148 * t293 + (t104 * t396 + t144 * t469) * t391;
t42 = t105 * t355 + t107 * t356 + t145 * t292 + t147 * t293 + (t103 * t396 + t143 * t469) * t391;
t41 = t109 * t299 - t110 * t298 + t149 * t207 - t150 * t206 + t408;
t40 = t298 * t70 + t299 * t71 + t363 * t88;
t39 = t104 * t352 + t106 * t290 + t108 * t291 + t144 * t330 + t146 * t199 + t148 * t200;
t38 = t103 * t352 + t105 * t290 + t107 * t291 + t143 * t330 + t145 * t199 + t147 * t200;
t37 = t104 * t350 + t106 * t288 + t108 * t289 + t144 * t328 + t146 * t197 + t148 * t198;
t36 = t103 * t350 + t105 * t288 + t107 * t289 + t143 * t328 + t145 * t197 + t147 * t198;
t32 = t298 * t61 + t299 * t62 + t363 * t79;
t31 = t298 * t59 + t299 * t60 + t363 * t78;
t18 = t100 * t314 + t113 * t363 - t127 * t212 + t136 * t248 + t138 * t305 - t140 * t204 - t188 * t299 - t207 * t232 + t402;
t15 = -t100 * t211 + t112 * t299 - t113 * t298 + t135 * t140 - t136 * t139 + t137 * t207 - t138 * t206 + t212 * t99 + t408;
t12 = t206 * t70 + t207 * t71 + t298 * t42 + t299 * t43 + t305 * t88 + t363 * t52;
t10 = t206 * t61 + t207 * t62 + t298 * t38 + t299 * t39 + t305 * t79 + t363 * t51;
t9 = t206 * t59 + t207 * t60 + t298 * t36 + t299 * t37 + t305 * t78 + t363 * t50;
t1 = [(m(2) + m(3)) * qJDD(1) + m(4) * t80 + m(5) * t41 + m(6) * t15 + (-m(2) + t465) * g(3); t465 * (g(1) * t392 - g(2) * t394) + m(4) * t431 + m(5) * (t392 * t47 - t394 * t48) + m(6) * (t17 * t392 - t18 * t394) + m(3) * (t392 ^ 2 + t394 ^ 2) * qJDD(2); (t394 * (-t120 * t393 + t391 * t432) + t392 * (-t119 * t393 + t391 * t433)) * t467 / 0.2e1 + ((-qJD(3) * t83 - qJDD(3) * t120) * t393 + (qJD(3) * t435 + qJDD(3) * t432) * t391 + t10 + t4) * t506 / 0.2e1 + ((-qJD(3) * t82 - qJDD(3) * t119) * t393 + (qJD(3) * t436 + qJDD(3) * t433) * t391 + t9 + t3) * t507 / 0.2e1 - (t351 * t31 + t353 * t32) * qJD(4) / 0.2e1 - ((-qJD(3) * t111 - qJDD(3) * t151) * t393 + (qJD(3) * t434 + qJDD(3) * t423) * t391 + t12 + t8) * t393 / 0.2e1 + (-t53 * (-t135 * t555 - t152 * t363 - t178 * t314 + t204 * t251 + t211 * t283 + t269 * t298 + t481) - t54 * (t136 * t555 + t153 * t363 + t179 * t314 - t204 * t252 - t212 * t283 - t269 * t299 + t410) - t46 * (t135 * t252 - t136 * t251 + t152 * t299 - t153 * t298 + t178 * t212 - t179 * t211 + t418) - (t53 * (-t137 * t502 + t232 * t351) + t54 * (t138 * t502 - t232 * t353) + t46 * (t137 * t353 - t138 * t351)) * qJD(4) + t17 * t480 + t53 * t486 + t15 * t233 + t46 * t208 + (t18 * t457 + t458 * t54 - t553) * t393 + ((t18 * (-t362 - t487) + t54 * (-t345 - t491) + t15 * t490 + t46 * t522) * t394 + (t15 * t457 + t17 * t487 + t458 * t46 + t491 * t53) * t392) * t391 - g(1) * (t179 + t478) - g(2) * (t178 + t479) - (t475 + (-t495 + (-t384 - t525) * t396) * t391) * g(3)) * m(6) - t555 * t30 / 0.2e1 + ((t130 * t353 + t175 * t278 + t177 * t279) * t212 + t58 * t252 + (t129 * t353 + t174 * t278 + t176 * t279) * t211 + t57 * t251 + (t201 * t353 + t278 * t281 + t279 * t282) * t314 + t75 * t555 + t401 * t352) * t546 + ((t130 * t351 + t175 * t276 + t177 * t277) * t212 + t56 * t252 + (t129 * t351 + t174 * t276 + t176 * t277) * t211 + t55 * t251 + (t201 * t351 + t276 * t281 + t277 * t282) * t314 + t74 * t555 + t401 * t350) * t548 + ((t175 * t323 + t177 * t324) * t212 + t64 * t252 + (t174 * t323 + t176 * t324) * t211 + t63 * t251 + (t281 * t323 + t282 * t324) * t314 + t81 * t555 + ((t129 * t211 + t130 * t212 + t201 * t314) * t398 + t401 * t396) * t391) * t538 + (t393 ^ 2 * t331 + (((t392 * t485 + t394 * t484) * t398 + (t392 * t483 + t394 * t482) * t396) * t391 + (-t253 * t392 - t254 * t394 + t396 * t476 + t398 * t477) * t393) * t472) * t471 / 0.2e1 + (t394 * (t391 * t435 - t393 * t83) + t392 * (t391 * t436 - t393 * t82)) * t448 + (-g(1) * t260 - g(2) * t259 - g(3) * t360 + (t141 * t240 - t142 * t241 + t220 * t91 - t221 * t92) * t393 + (t117 * t420 + t322 * t431 + t338 * t422 + t421 * t80) * t391 - ((t141 * t259 - t142 * t260) * t393 + (t117 * (t259 * t394 - t260 * t392) + t422 * t360) * t391) * qJD(3)) * m(4) + (-t393 * t81 + (t392 * t63 + t394 * t64) * t391) * t544 + (-t393 * t45 + (t27 * t392 + t28 * t394) * t391) * t545 + (-t393 * t44 + (t25 * t392 + t26 * t394) * t391) * t547 + (-t393 * t79 + (t392 * t61 + t394 * t62) * t391) * t549 + (-t393 * t78 + (t392 * t59 + t394 * t60) * t391) * t550 + (-t393 * t75 + (t392 * t57 + t394 * t58) * t391) * t551 + (-t393 * t74 + (t392 * t55 + t394 * t56) * t391) * t552 + (-t393 * t52 + (t392 * t42 + t394 * t43) * t391) * t531 + ((t192 * t355 + t194 * t356) * t299 + (t191 * t355 + t193 * t356) * t298 + (t295 * t355 + t296 * t356) * t363 + (t351 * t70 + t353 * t71) * qJD(4) + ((t88 * qJD(4) + t143 * t298 + t144 * t299 + t227 * t363) * t398 + t400 * t396) * t391) * t532 + (-t393 * t49 + (t34 * t392 + t35 * t394) * t391) * t537 + (-t393 * t88 + (t392 * t70 + t394 * t71) * t391) * t539 + (-t393 * t51 + (t38 * t392 + t39 * t394) * t391) * t540 + ((t144 * t353 + t192 * t290 + t194 * t291) * t299 + (t143 * t353 + t191 * t290 + t193 * t291) * t298 + (t227 * t353 + t290 * t295 + t291 * t296) * t363 + (t351 * t61 + t353 * t62 + t502 * t79) * qJD(4) + t400 * t352) * t541 + (-t393 * t50 + (t36 * t392 + t37 * t394) * t391) * t542 + ((t144 * t351 + t192 * t288 + t194 * t289) * t299 + (t143 * t351 + t191 * t288 + t193 * t289) * t298 + (t227 * t351 + t288 * t295 + t289 * t296) * t363 + (t351 * t59 + t353 * t60 + t502 * t78) * qJD(4) + t400 * t350) * t543 - (-t111 * t393 + t391 * t434) * t471 / 0.2e1 - t251 * t23 / 0.2e1 - t252 * t24 / 0.2e1 - (t394 * ((t254 * t506 + t352 * t482 + t353 * t484) * t506 + (t253 * t506 + t352 * t483 + t353 * t485) * t507 - (-t352 * t476 - t353 * t477 + t357 * t506) * t393) + t392 * ((t254 * t507 + t350 * t482 + t351 * t484) * t506 + (t253 * t507 + t350 * t483 + t351 * t485) * t507 - (-t350 * t476 - t351 * t477 + t357 * t507) * t393)) * t391 * qJD(3) ^ 2 / 0.2e1 - (-t151 * t393 + t391 * t423) * t466 / 0.2e1 + (t47 * t480 + t76 * t486 + t41 * t233 + t65 * t208 + (t48 * t488 + t493 * t77 + t437) * t393 + ((t48 * (-t231 - t362) + t77 * (-t163 - t345) + t41 * t149 + t65 * t109) * t394 + (t76 * t163 + t47 * t231 + t41 * t488 + t493 * t65) * t392) * t391 - g(1) * (t196 + t263) - g(2) * (t195 + t261) - g(3) * (t380 + (-pkin(3) - t526) * t504 + t474) - t76 * (-t195 * t363 + t297 * t298 + t481) - t77 * (t196 * t363 - t297 * t299 + t410) - t65 * (t195 * t299 - t196 * t298 + t418) - (t76 * (-t149 * t502 + t231 * t351) + t77 * (t150 * t502 - t231 * t353) + t65 * (t149 * t353 - t150 * t351)) * qJD(4)) * m(5) - t40 * t453 / 0.2e1; (t288 * t403 + t289 * t404 + t350 * t413) * t543 + (t355 * t403 + t356 * t404 + t413 * t504) * t532 + (t290 * t403 + t291 * t404 + t352 * t413) * t541 + (t350 * t59 + t352 * t60 + t504 * t78) * t550 + (t350 * t61 + t352 * t62 + t504 * t79) * t549 + (t350 * t70 + t352 * t71 + t504 * t88) * t539 + t12 * t450 + t407 + (t328 * t59 + t330 * t60 + t350 * t36 + t352 * t37 + (t396 * t50 + t469 * t78) * t391) * t542 + t10 * t533 + t9 * t534 + t32 * t535 + t31 * t536 + (t328 * t70 + t330 * t71 + t350 * t42 + t352 * t43 + (t396 * t52 + t469 * t88) * t391) * t531 + (t328 * t61 + t330 * t62 + t350 * t38 + t352 * t39 + (t396 * t51 + t469 * t79) * t391) * t540 + t40 * t442 + (-t53 * (-t286 * t363 + t298 * t349 + t443) - t54 * (t287 * t363 - t299 * t349 + t444) - g(1) * (t287 + t165) - g(2) * (t286 + t164) - g(3) * (t349 + t230) + t17 * t167 + t53 * (t232 * t328 + t492) + t18 * t122 + t54 * (-t232 * t330 + t440) + t15 * t118 + (t15 * t137 - t18 * t487 - t54 * t491) * t352 + (t15 * t489 + t17 * t232 + t53 * t188) * t350 + ((t54 * t138 - t490 * t53) * t469 + (t54 * t113 + t18 * t138 + t553) * t396) * t391 + (t112 * t352 + t137 * t330 - t138 * t328 - t286 * t299 + t287 * t298 + t350 * t494 + t554) * t46) * m(6) + (-t76 * (-t186 * t363 + t268 * t298) - t77 * (t187 * t363 - t268 * t299) - g(1) * t187 - g(2) * t186 - g(3) * t268 + t41 * (t149 * t352 - t150 * t350) + (t350 * t76 - t352 * t77) * t163 + (t328 * t76 - t330 * t77 + t350 * t47 - t352 * t48) * t231 + ((-t149 * t76 + t150 * t77) * t469 + (t110 * t77 + t150 * t48 - t437) * t396) * t391 + (t109 * t352 - t110 * t350 + t149 * t330 - t150 * t328 - t186 * t299 + t187 * t298) * t65) * m(5); t407 + (t17 * (-t135 * t504 + t167) + t18 * (-t204 * t352 + t122) + t15 * (-t136 * t350 + t118) - g(1) * t165 - g(2) * t164 - g(3) * t230 + (-t127 * t352 + t440 - t444) * t54 + ((-t135 * t469 - t396 * t99) * t391 + t492 - t443) * t53 + (-t100 * t350 + t554) * t46) * m(6);];
tau = t1;
