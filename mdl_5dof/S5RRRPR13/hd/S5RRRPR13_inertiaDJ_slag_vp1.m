% Calculate time derivative of joint inertia matrix for
% S5RRRPR13
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,d1,d2,d3,d5]';
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
% MqD [5x5]
%   time derivative of inertia matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 21:48
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S5RRRPR13_inertiaDJ_slag_vp11(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRPR13_inertiaDJ_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRPR13_inertiaDJ_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRRPR13_inertiaDJ_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRRPR13_inertiaDJ_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RRRPR13_inertiaDJ_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RRRPR13_inertiaDJ_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 21:43:20
% EndTime: 2019-12-31 21:44:07
% DurationCPUTime: 24.55s
% Computational Cost: add. (49111->1125), mult. (136880->1526), div. (0->0), fcn. (152299->10), ass. (0->441)
t421 = cos(pkin(5));
t423 = sin(qJ(2));
t420 = sin(pkin(5));
t527 = cos(qJ(3));
t477 = t420 * t527;
t526 = sin(qJ(3));
t397 = t421 * t526 + t423 * t477;
t528 = cos(qJ(2));
t466 = qJD(2) * t528;
t454 = t420 * t466;
t364 = qJD(3) * t397 + t454 * t526;
t464 = qJD(3) * t526;
t453 = t420 * t464;
t465 = qJD(3) * t527;
t365 = t421 * t465 - t423 * t453 + t454 * t527;
t493 = qJD(2) * t423;
t467 = t420 * t493;
t291 = Icges(5,5) * t467 - Icges(5,6) * t365 + Icges(5,3) * t364;
t292 = Icges(5,4) * t467 - Icges(5,2) * t365 + Icges(5,6) * t364;
t293 = Icges(5,1) * t467 - Icges(5,4) * t365 + Icges(5,5) * t364;
t476 = t420 * t526;
t396 = -t421 * t527 + t423 * t476;
t478 = t420 * t528;
t320 = -Icges(5,5) * t478 - Icges(5,6) * t397 + Icges(5,3) * t396;
t321 = -Icges(5,4) * t478 - Icges(5,2) * t397 + Icges(5,6) * t396;
t322 = -Icges(5,1) * t478 - Icges(5,4) * t397 + Icges(5,5) * t396;
t105 = t396 * t291 - t397 * t292 - t293 * t478 + t364 * t320 - t365 * t321 + t322 * t467;
t294 = Icges(4,5) * t365 - Icges(4,6) * t364 + Icges(4,3) * t467;
t295 = Icges(4,4) * t365 - Icges(4,2) * t364 + Icges(4,6) * t467;
t296 = Icges(4,1) * t365 - Icges(4,4) * t364 + Icges(4,5) * t467;
t323 = Icges(4,5) * t397 - Icges(4,6) * t396 - Icges(4,3) * t478;
t324 = Icges(4,4) * t397 - Icges(4,2) * t396 - Icges(4,6) * t478;
t325 = Icges(4,1) * t397 - Icges(4,4) * t396 - Icges(4,5) * t478;
t106 = -t294 * t478 - t396 * t295 + t397 * t296 + t323 * t467 - t364 * t324 + t365 * t325;
t547 = t105 + t106;
t424 = sin(qJ(1));
t475 = t424 * t528;
t426 = cos(qJ(1));
t518 = t426 * t423;
t439 = -t421 * t518 - t475;
t457 = t426 * t477;
t368 = -t439 * t526 + t457;
t473 = t426 * t526;
t369 = -t420 * t473 - t439 * t527;
t474 = t426 * t528;
t456 = t421 * t474;
t519 = t424 * t423;
t438 = t456 - t519;
t263 = -Icges(5,5) * t438 - Icges(5,6) * t369 + Icges(5,3) * t368;
t267 = -Icges(5,4) * t438 - Icges(5,2) * t369 + Icges(5,6) * t368;
t271 = -Icges(5,1) * t438 - Icges(5,4) * t369 + Icges(5,5) * t368;
t139 = t396 * t263 - t397 * t267 - t271 * t478;
t265 = Icges(4,5) * t369 - Icges(4,6) * t368 - Icges(4,3) * t438;
t269 = Icges(4,4) * t369 - Icges(4,2) * t368 - Icges(4,6) * t438;
t273 = Icges(4,1) * t369 - Icges(4,4) * t368 - Icges(4,5) * t438;
t141 = -t265 * t478 - t396 * t269 + t397 * t273;
t545 = t139 + t141;
t401 = -t421 * t519 + t474;
t370 = t401 * t526 - t424 * t477;
t458 = t424 * t476;
t371 = t401 * t527 + t458;
t440 = -t421 * t475 - t518;
t264 = -Icges(5,5) * t440 - Icges(5,6) * t371 + Icges(5,3) * t370;
t268 = -Icges(5,4) * t440 - Icges(5,2) * t371 + Icges(5,6) * t370;
t272 = -Icges(5,1) * t440 - Icges(5,4) * t371 + Icges(5,5) * t370;
t140 = t396 * t264 - t397 * t268 - t272 * t478;
t266 = Icges(4,5) * t371 - Icges(4,6) * t370 - Icges(4,3) * t440;
t270 = Icges(4,4) * t371 - Icges(4,2) * t370 - Icges(4,6) * t440;
t274 = Icges(4,1) * t371 - Icges(4,4) * t370 - Icges(4,5) * t440;
t142 = -t266 * t478 - t396 * t270 + t397 * t274;
t544 = t140 + t142;
t546 = t547 * t421;
t350 = qJD(1) * t439 + qJD(2) * t440;
t455 = qJD(1) * t477;
t253 = qJD(3) * t371 + t350 * t526 - t426 * t455;
t422 = sin(qJ(5));
t425 = cos(qJ(5));
t317 = t370 * t422 - t425 * t440;
t349 = -qJD(1) * t456 - t426 * t466 + (qJD(2) * t421 + qJD(1)) * t519;
t194 = -qJD(5) * t317 + t253 * t425 + t349 * t422;
t316 = t370 * t425 + t422 * t440;
t195 = qJD(5) * t316 + t253 * t422 - t349 * t425;
t254 = t350 * t527 - t401 * t464 + (qJD(1) * t473 + t424 * t465) * t420;
t113 = t195 * rSges(6,1) + t194 * rSges(6,2) + t254 * rSges(6,3);
t517 = -t349 * pkin(4) + pkin(9) * t254 + t113;
t352 = qJD(1) * t401 + qJD(2) * t438;
t256 = qJD(1) * t458 - qJD(3) * t457 + t352 * t527 + t439 * t464;
t255 = t352 * t526 - t424 * t455 - t426 * t453 - t439 * t465;
t315 = t368 * t422 - t425 * t438;
t351 = -qJD(1) * t440 - qJD(2) * t439;
t196 = -qJD(5) * t315 + t255 * t425 - t351 * t422;
t314 = t368 * t425 + t422 * t438;
t197 = qJD(5) * t314 + t255 * t422 + t351 * t425;
t447 = -t197 * rSges(6,1) - t196 * rSges(6,2);
t114 = t256 * rSges(6,3) - t447;
t524 = t351 * pkin(4);
t516 = t256 * pkin(9) + t114 + t524;
t446 = -rSges(6,1) * t315 - rSges(6,2) * t314;
t218 = rSges(6,3) * t369 - t446;
t525 = pkin(4) * t438;
t511 = pkin(9) * t369 + t218 - t525;
t219 = t317 * rSges(6,1) + t316 * rSges(6,2) + t371 * rSges(6,3);
t510 = -pkin(4) * t440 + pkin(9) * t371 + t219;
t419 = t426 * pkin(1);
t521 = t420 * t424;
t497 = pkin(7) * t521 + t419;
t159 = Icges(5,5) * t351 - Icges(5,6) * t256 + Icges(5,3) * t255;
t163 = Icges(5,4) * t351 - Icges(5,2) * t256 + Icges(5,6) * t255;
t167 = Icges(5,1) * t351 - Icges(5,4) * t256 + Icges(5,5) * t255;
t61 = t396 * t159 - t397 * t163 + t364 * t263 - t365 * t267 + (-t167 * t528 + t271 * t493) * t420;
t158 = -Icges(5,5) * t349 - Icges(5,6) * t254 + Icges(5,3) * t253;
t162 = -Icges(5,4) * t349 - Icges(5,2) * t254 + Icges(5,6) * t253;
t166 = -Icges(5,1) * t349 - Icges(5,4) * t254 + Icges(5,5) * t253;
t62 = t396 * t158 - t397 * t162 + t364 * t264 - t365 * t268 + (-t166 * t528 + t272 * t493) * t420;
t161 = Icges(4,5) * t256 - Icges(4,6) * t255 + Icges(4,3) * t351;
t165 = Icges(4,4) * t256 - Icges(4,2) * t255 + Icges(4,6) * t351;
t169 = Icges(4,1) * t256 - Icges(4,4) * t255 + Icges(4,5) * t351;
t63 = -t396 * t165 + t397 * t169 - t364 * t269 + t365 * t273 + (-t161 * t528 + t265 * t493) * t420;
t160 = Icges(4,5) * t254 - Icges(4,6) * t253 - Icges(4,3) * t349;
t164 = Icges(4,4) * t254 - Icges(4,2) * t253 - Icges(4,6) * t349;
t168 = Icges(4,1) * t254 - Icges(4,4) * t253 - Icges(4,5) * t349;
t64 = -t396 * t164 + t397 * t168 - t364 * t270 + t365 * t274 + (-t160 * t528 + t266 * t493) * t420;
t108 = Icges(6,5) * t197 + Icges(6,6) * t196 + Icges(6,3) * t256;
t110 = Icges(6,4) * t197 + Icges(6,2) * t196 + Icges(6,6) * t256;
t112 = Icges(6,1) * t197 + Icges(6,4) * t196 + Icges(6,5) * t256;
t212 = Icges(6,5) * t315 + Icges(6,6) * t314 + Icges(6,3) * t369;
t214 = Icges(6,4) * t315 + Icges(6,2) * t314 + Icges(6,6) * t369;
t216 = Icges(6,1) * t315 + Icges(6,4) * t314 + Icges(6,5) * t369;
t441 = -t396 * t422 + t425 * t478;
t282 = qJD(5) * t441 + t364 * t425 - t422 * t467;
t366 = t396 * t425 + t422 * t478;
t283 = qJD(5) * t366 + t364 * t422 + t425 * t467;
t28 = t108 * t397 + t110 * t366 - t112 * t441 + t212 * t365 + t214 * t282 + t216 * t283;
t107 = Icges(6,5) * t195 + Icges(6,6) * t194 + Icges(6,3) * t254;
t109 = Icges(6,4) * t195 + Icges(6,2) * t194 + Icges(6,6) * t254;
t111 = Icges(6,1) * t195 + Icges(6,4) * t194 + Icges(6,5) * t254;
t213 = Icges(6,5) * t317 + Icges(6,6) * t316 + Icges(6,3) * t371;
t215 = Icges(6,4) * t317 + Icges(6,2) * t316 + Icges(6,6) * t371;
t217 = Icges(6,1) * t317 + Icges(6,4) * t316 + Icges(6,5) * t371;
t29 = t107 * t397 + t109 * t366 - t111 * t441 + t213 * t365 + t215 * t282 + t217 * t283;
t186 = Icges(6,5) * t283 + Icges(6,6) * t282 + Icges(6,3) * t365;
t187 = Icges(6,4) * t283 + Icges(6,2) * t282 + Icges(6,6) * t365;
t188 = Icges(6,1) * t283 + Icges(6,4) * t282 + Icges(6,5) * t365;
t258 = -Icges(6,5) * t441 + Icges(6,6) * t366 + Icges(6,3) * t397;
t259 = -Icges(6,4) * t441 + Icges(6,2) * t366 + Icges(6,6) * t397;
t260 = -Icges(6,1) * t441 + Icges(6,4) * t366 + Icges(6,5) * t397;
t58 = t397 * t186 + t366 * t187 - t188 * t441 + t365 * t258 + t282 * t259 + t283 * t260;
t57 = t58 * t421;
t91 = t212 * t397 + t214 * t366 - t216 * t441;
t92 = t213 * t397 + t215 * t366 - t217 * t441;
t9 = t57 + (-t28 * t426 + t29 * t424 + (t91 * t424 + t92 * t426) * qJD(1)) * t420;
t543 = t9 + t546 + ((-t61 - t63) * t426 + (t62 + t64) * t424 + (t545 * t424 + t544 * t426) * qJD(1)) * t420;
t542 = -t58 - t547;
t541 = 2 * m(3);
t540 = 2 * m(4);
t539 = 2 * m(5);
t538 = 2 * m(6);
t537 = t254 / 0.2e1;
t536 = t256 / 0.2e1;
t535 = t365 / 0.2e1;
t534 = t369 / 0.2e1;
t533 = t371 / 0.2e1;
t532 = t397 / 0.2e1;
t531 = t424 / 0.2e1;
t530 = -t426 / 0.2e1;
t529 = rSges(5,2) - pkin(3);
t124 = t258 * t397 + t259 * t366 - t260 * t441;
t523 = t124 * t365 + t58 * t397;
t522 = Icges(3,4) * t423;
t520 = t420 * t426;
t509 = -t255 * qJ(4) - t368 * qJD(4);
t180 = t256 * pkin(3) - t509;
t357 = t368 * qJ(4);
t305 = pkin(3) * t369 + t357;
t515 = -t180 * t440 - t349 * t305;
t179 = t254 * pkin(3) + qJ(4) * t253 + qJD(4) * t370;
t280 = t350 * pkin(2) - pkin(8) * t349;
t262 = t421 * t280;
t514 = t421 * t179 + t262;
t281 = t352 * pkin(2) + t351 * pkin(8);
t513 = -t180 - t281;
t189 = rSges(6,1) * t283 + rSges(6,2) * t282 + rSges(6,3) * t365;
t512 = pkin(4) * t467 + pkin(9) * t365 + t189;
t257 = pkin(3) * t365 + qJ(4) * t364 + qJD(4) * t396;
t297 = rSges(5,1) * t467 - rSges(5,2) * t365 + rSges(5,3) * t364;
t508 = -t257 - t297;
t261 = -rSges(6,1) * t441 + rSges(6,2) * t366 + rSges(6,3) * t397;
t507 = -pkin(4) * t478 + t397 * pkin(9) + t261;
t448 = rSges(5,1) * t438 - rSges(5,3) * t368;
t275 = -rSges(5,2) * t369 - t448;
t506 = -t275 - t305;
t276 = -rSges(5,1) * t440 - t371 * rSges(5,2) + t370 * rSges(5,3);
t306 = t371 * pkin(3) + qJ(4) * t370;
t505 = -t276 - t306;
t298 = rSges(4,1) * t365 - rSges(4,2) * t364 + rSges(4,3) * t467;
t494 = qJD(2) * t420;
t388 = (pkin(2) * t528 + pkin(8) * t423) * t494;
t504 = -t298 - t388;
t353 = pkin(3) * t397 + qJ(4) * t396;
t503 = t305 * t478 - t353 * t438;
t355 = t401 * pkin(2) - pkin(8) * t440;
t341 = t421 * t355;
t502 = t421 * t306 + t341;
t402 = (pkin(2) * t423 - pkin(8) * t528) * t420;
t496 = qJD(1) * t424;
t469 = t420 * t496;
t376 = t402 * t469;
t501 = t353 * t469 + t376;
t327 = -rSges(5,1) * t478 - t397 * rSges(5,2) + t396 * rSges(5,3);
t500 = t327 + t353;
t328 = t397 * rSges(4,1) - t396 * rSges(4,2) - rSges(4,3) * t478;
t499 = -t328 - t402;
t354 = -pkin(2) * t439 - pkin(8) * t438;
t498 = t354 * t521 + t355 * t520;
t495 = qJD(1) * t426;
t492 = -rSges(6,3) - pkin(3) - pkin(9);
t491 = -t528 / 0.2e1;
t43 = t186 * t371 + t187 * t316 + t188 * t317 + t194 * t259 + t195 * t260 + t254 * t258;
t490 = t43 / 0.2e1 + t29 / 0.2e1;
t44 = t186 * t369 + t187 * t314 + t188 * t315 + t196 * t259 + t197 * t260 + t256 * t258;
t489 = t44 / 0.2e1 + t28 / 0.2e1;
t118 = t258 * t369 + t259 * t314 + t260 * t315;
t488 = t118 / 0.2e1 + t91 / 0.2e1;
t119 = t258 * t371 + t259 * t316 + t260 * t317;
t487 = t119 / 0.2e1 + t92 / 0.2e1;
t486 = t180 * t478 - t257 * t438 + t351 * t353;
t485 = -t257 - t512;
t484 = -t305 - t511;
t483 = -t306 - t510;
t172 = t254 * rSges(4,1) - t253 * rSges(4,2) - t349 * rSges(4,3);
t468 = t420 * t495;
t482 = t280 * t520 + t281 * t521 + t354 * t468;
t481 = -t388 + t508;
t480 = t353 + t507;
t479 = -t402 - t500;
t170 = -t349 * rSges(5,1) - t254 * rSges(5,2) + t253 * rSges(5,3);
t242 = t350 * rSges(3,1) + t349 * rSges(3,2) + rSges(3,3) * t468;
t278 = t371 * rSges(4,1) - t370 * rSges(4,2) - rSges(4,3) * t440;
t336 = t401 * rSges(3,1) + rSges(3,2) * t440 + rSges(3,3) * t521;
t472 = t528 * Icges(3,4);
t471 = t528 * t179;
t470 = t528 * t306;
t463 = -t424 * pkin(1) + pkin(7) * t520;
t462 = t499 * t426;
t461 = -t388 + t485;
t460 = -t402 - t480;
t459 = t305 * t521 + t306 * t520 + t498;
t452 = -pkin(1) * t496 + pkin(7) * t468;
t451 = t479 * t426;
t450 = -t352 * rSges(3,1) + t351 * rSges(3,2);
t449 = -t351 * rSges(5,1) - t255 * rSges(5,3);
t445 = t355 + t497;
t444 = t460 * t426;
t443 = t179 * t520 + t180 * t521 + t305 * t468 + t482;
t442 = -t354 + t463;
t173 = t256 * rSges(4,1) - t255 * rSges(4,2) + t351 * rSges(4,3);
t277 = rSges(4,1) * t369 - rSges(4,2) * t368 - rSges(4,3) * t438;
t437 = -t357 + t442;
t436 = t280 + t452;
t335 = -rSges(3,1) * t439 + rSges(3,2) * t438 - rSges(3,3) * t520;
t82 = t255 * t320 - t256 * t321 + t291 * t368 - t292 * t369 - t293 * t438 + t322 * t351;
t84 = -t255 * t324 + t256 * t325 - t294 * t438 - t295 * t368 + t296 * t369 + t323 * t351;
t435 = t63 / 0.2e1 + t61 / 0.2e1 + t82 / 0.2e1 + t84 / 0.2e1 + t489;
t81 = t253 * t320 - t254 * t321 + t291 * t370 - t292 * t371 - t293 * t440 - t322 * t349;
t83 = -t253 * t324 + t254 * t325 - t294 * t440 - t295 * t370 + t296 * t371 - t323 * t349;
t434 = t64 / 0.2e1 + t62 / 0.2e1 + t81 / 0.2e1 + t83 / 0.2e1 + t490;
t379 = Icges(3,6) * t421 + (Icges(3,2) * t528 + t522) * t420;
t380 = Icges(3,5) * t421 + (Icges(3,1) * t423 + t472) * t420;
t384 = (Icges(3,5) * t528 - Icges(3,6) * t423) * t494;
t385 = (-Icges(3,2) * t423 + t472) * t494;
t386 = (Icges(3,1) * t528 - t522) * t494;
t433 = t420 * t423 * t386 - t379 * t467 + t380 * t454 + t421 * t384 + t385 * t478;
t432 = t306 + t445;
t155 = t320 * t370 - t321 * t371 - t322 * t440;
t157 = -t323 * t440 - t324 * t370 + t325 * t371;
t431 = -t142 / 0.2e1 - t140 / 0.2e1 - t155 / 0.2e1 - t157 / 0.2e1 - t487;
t154 = t320 * t368 - t321 * t369 - t322 * t438;
t156 = -t323 * t438 - t324 * t368 + t325 * t369;
t430 = t154 / 0.2e1 + t156 / 0.2e1 + t141 / 0.2e1 + t139 / 0.2e1 + t488;
t429 = -t497 * qJD(1) - t281;
t428 = t429 + t509;
t427 = t179 + t436;
t387 = (rSges(3,1) * t528 - rSges(3,2) * t423) * t494;
t383 = t421 * rSges(3,3) + (rSges(3,1) * t423 + rSges(3,2) * t528) * t420;
t378 = Icges(3,3) * t421 + (Icges(3,5) * t423 + Icges(3,6) * t528) * t420;
t334 = Icges(3,1) * t401 + Icges(3,4) * t440 + Icges(3,5) * t521;
t333 = -Icges(3,1) * t439 + Icges(3,4) * t438 - Icges(3,5) * t520;
t332 = Icges(3,4) * t401 + Icges(3,2) * t440 + Icges(3,6) * t521;
t331 = -Icges(3,4) * t439 + Icges(3,2) * t438 - Icges(3,6) * t520;
t330 = Icges(3,5) * t401 + Icges(3,6) * t440 + Icges(3,3) * t521;
t329 = -Icges(3,5) * t439 + Icges(3,6) * t438 - Icges(3,3) * t520;
t308 = t336 + t497;
t307 = -t335 + t463;
t299 = t306 * t467;
t289 = -t421 * t335 - t383 * t520;
t288 = t336 * t421 - t383 * t521;
t279 = t440 * t305;
t243 = rSges(3,3) * t469 - t450;
t241 = Icges(3,1) * t352 - Icges(3,4) * t351 + Icges(3,5) * t469;
t240 = Icges(3,1) * t350 + Icges(3,4) * t349 + Icges(3,5) * t468;
t239 = Icges(3,4) * t352 - Icges(3,2) * t351 + Icges(3,6) * t469;
t238 = Icges(3,4) * t350 + Icges(3,2) * t349 + Icges(3,6) * t468;
t237 = Icges(3,5) * t352 - Icges(3,6) * t351 + Icges(3,3) * t469;
t236 = Icges(3,5) * t350 + Icges(3,6) * t349 + Icges(3,3) * t468;
t229 = (-t419 + (-rSges(3,3) - pkin(7)) * t521) * qJD(1) + t450;
t228 = t452 + t242;
t227 = t378 * t521 + t379 * t440 + t380 * t401;
t226 = -t378 * t520 + t379 * t438 - t380 * t439;
t222 = t445 + t278;
t221 = -t277 + t442;
t220 = t433 * t421;
t211 = t421 * t242 + (-t383 * t495 - t387 * t424) * t420;
t210 = -t421 * t243 + (t383 * t496 - t387 * t426) * t420;
t209 = -t278 * t478 + t328 * t440;
t208 = t277 * t478 - t328 * t438;
t207 = t421 * t330 + (t332 * t528 + t334 * t423) * t420;
t206 = t421 * t329 + (t331 * t528 + t333 * t423) * t420;
t203 = t330 * t521 + t332 * t440 + t334 * t401;
t202 = t329 * t521 + t331 * t440 + t333 * t401;
t201 = -t330 * t520 + t332 * t438 - t334 * t439;
t200 = -t329 * t520 + t331 * t438 - t333 * t439;
t199 = -t323 * t478 - t396 * t324 + t397 * t325;
t198 = t396 * t320 - t397 * t321 - t322 * t478;
t191 = t199 * t467;
t190 = t198 * t467;
t185 = t432 + t276;
t184 = t369 * t529 + t437 + t448;
t183 = -t277 * t440 + t278 * t438;
t182 = (-t277 - t354) * t421 + t420 * t462;
t181 = t278 * t421 + t499 * t521 + t341;
t171 = -t256 * rSges(5,2) - t449;
t150 = -t351 * t379 + t352 * t380 + t438 * t385 - t439 * t386 + (t378 * t496 - t384 * t426) * t420;
t149 = t349 * t379 + t350 * t380 + t440 * t385 + t401 * t386 + (t378 * t495 + t384 * t424) * t420;
t148 = (t277 * t424 + t278 * t426) * t420 + t498;
t147 = t219 * t397 - t261 * t371;
t146 = -t218 * t397 + t261 * t369;
t145 = (-t276 * t528 - t470) * t420 + t500 * t440;
t144 = t275 * t478 - t327 * t438 + t503;
t138 = t432 + t510;
t137 = t369 * t492 + t437 + t446 + t525;
t136 = -t173 + t429;
t135 = t436 + t172;
t134 = (-t354 + t506) * t421 + t420 * t451;
t133 = t276 * t421 + t479 * t521 + t502;
t132 = -t266 * t440 - t270 * t370 + t274 * t371;
t131 = -t265 * t440 - t269 * t370 + t273 * t371;
t130 = -t266 * t438 - t270 * t368 + t274 * t369;
t129 = -t265 * t438 - t269 * t368 + t273 * t369;
t128 = t264 * t370 - t268 * t371 - t272 * t440;
t127 = t263 * t370 - t267 * t371 - t271 * t440;
t126 = t264 * t368 - t268 * t369 - t272 * t438;
t125 = t263 * t368 - t267 * t369 - t271 * t438;
t123 = t124 * t467;
t122 = t218 * t371 - t219 * t369;
t121 = -t275 * t440 - t438 * t505 - t279;
t117 = t421 * t236 + (t528 * t238 + t240 * t423 + (-t332 * t423 + t334 * t528) * qJD(2)) * t420;
t116 = t421 * t237 + (t528 * t239 + t241 * t423 + (-t331 * t423 + t333 * t528) * qJD(2)) * t420;
t115 = (t275 * t424 + t276 * t426) * t420 + t459;
t104 = (-t510 * t528 - t470) * t420 + t480 * t440;
t103 = -t438 * t507 + t511 * t478 + t503;
t100 = t421 * t172 + t262 + (qJD(1) * t462 + t424 * t504) * t420;
t99 = t376 + (-t173 - t281) * t421 + (t328 * t496 + t426 * t504) * t420;
t98 = -t438 * t298 + t351 * t328 + (t173 * t528 - t277 * t493) * t420;
t97 = t440 * t298 + t349 * t328 + (-t172 * t528 + t278 * t493) * t420;
t96 = (-t354 + t484) * t421 + t420 * t444;
t95 = t421 * t510 + t460 * t521 + t502;
t94 = t256 * t529 + t428 + t449;
t93 = t427 + t170;
t90 = t213 * t371 + t215 * t316 + t217 * t317;
t89 = t212 * t371 + t214 * t316 + t216 * t317;
t88 = t213 * t369 + t215 * t314 + t217 * t315;
t87 = t212 * t369 + t214 * t314 + t216 * t315;
t86 = -t438 * t483 - t440 * t511 - t279;
t85 = (t424 * t511 + t426 * t510) * t420 + t459;
t80 = t172 * t438 - t173 * t440 - t277 * t349 - t278 * t351;
t79 = t421 * t170 + (qJD(1) * t451 + t424 * t481) * t420 + t514;
t78 = (-t171 + t513) * t421 + (t327 * t496 + t426 * t481) * t420 + t501;
t77 = (t172 * t426 + t173 * t424 + (t277 * t426 + (-t278 - t355) * t424) * qJD(1)) * t420 + t482;
t76 = t256 * t492 + t428 + t447 - t524;
t75 = t427 + t517;
t74 = t157 * t421 + (-t131 * t426 + t132 * t424) * t420;
t73 = t156 * t421 + (-t129 * t426 + t130 * t424) * t420;
t72 = t155 * t421 + (-t127 * t426 + t128 * t424) * t420;
t71 = t154 * t421 + (-t125 * t426 + t126 * t424) * t420;
t70 = -t131 * t438 - t132 * t440 - t157 * t478;
t69 = -t129 * t438 - t130 * t440 - t156 * t478;
t68 = -t127 * t438 - t128 * t440 - t155 * t478;
t67 = -t125 * t438 - t126 * t440 - t154 * t478;
t66 = -t438 * t297 + t351 * t327 + (t171 * t528 + t493 * t506) * t420 + t486;
t65 = t299 - t508 * t440 + t500 * t349 + (-t170 * t528 + t276 * t493 - t471) * t420;
t60 = -t114 * t397 + t189 * t369 - t218 * t365 + t256 * t261;
t59 = t113 * t397 - t189 * t371 + t219 * t365 - t254 * t261;
t55 = -t160 * t438 - t164 * t368 + t168 * t369 - t255 * t270 + t256 * t274 + t266 * t351;
t54 = -t161 * t438 - t165 * t368 + t169 * t369 - t255 * t269 + t256 * t273 + t265 * t351;
t53 = -t160 * t440 - t164 * t370 + t168 * t371 - t253 * t270 + t254 * t274 - t266 * t349;
t52 = -t161 * t440 - t165 * t370 + t169 * t371 - t253 * t269 + t254 * t273 - t265 * t349;
t51 = t158 * t368 - t162 * t369 - t166 * t438 + t255 * t264 - t256 * t268 + t272 * t351;
t50 = t159 * t368 - t163 * t369 - t167 * t438 + t255 * t263 - t256 * t267 + t271 * t351;
t49 = t158 * t370 - t162 * t371 - t166 * t440 + t253 * t264 - t254 * t268 - t272 * t349;
t48 = t159 * t370 - t163 * t371 - t167 * t440 + t253 * t263 - t254 * t267 - t271 * t349;
t47 = -t171 * t440 - t275 * t349 - (-t170 - t179) * t438 + t505 * t351 + t515;
t46 = t124 * t421 + (t424 * t92 - t426 * t91) * t420;
t45 = -t124 * t478 - t438 * t91 - t440 * t92;
t42 = t124 * t397 + t369 * t91 + t371 * t92;
t41 = -t113 * t369 + t114 * t371 + t218 * t254 - t219 * t256;
t40 = t517 * t421 + (qJD(1) * t444 + t424 * t461) * t420 + t514;
t39 = (t513 - t516) * t421 + (t426 * t461 + t496 * t507) * t420 + t501;
t38 = (t170 * t426 + t171 * t424 + (t275 * t426 + (-t355 + t505) * t424) * qJD(1)) * t420 + t443;
t37 = t119 * t421 + (t424 * t90 - t426 * t89) * t420;
t36 = t118 * t421 + (t424 * t88 - t426 * t87) * t420;
t35 = -t119 * t478 - t438 * t89 - t440 * t90;
t34 = -t118 * t478 - t438 * t87 - t440 * t88;
t33 = t119 * t397 + t369 * t89 + t371 * t90;
t32 = t118 * t397 + t369 * t87 + t371 * t88;
t31 = -t512 * t438 + t507 * t351 + (t484 * t493 + t516 * t528) * t420 + t486;
t30 = t299 - t485 * t440 + t480 * t349 + (t493 * t510 - t517 * t528 - t471) * t420;
t27 = t107 * t369 + t109 * t314 + t111 * t315 + t196 * t215 + t197 * t217 + t213 * t256;
t26 = t108 * t369 + t110 * t314 + t112 * t315 + t196 * t214 + t197 * t216 + t212 * t256;
t25 = t107 * t371 + t109 * t316 + t111 * t317 + t194 * t215 + t195 * t217 + t213 * t254;
t24 = t108 * t371 + t110 * t316 + t112 * t317 + t194 * t214 + t195 * t216 + t212 * t254;
t23 = -t516 * t440 - t511 * t349 - (-t179 - t517) * t438 + t483 * t351 + t515;
t22 = (t517 * t426 + t516 * t424 + (t511 * t426 + (-t355 + t483) * t424) * qJD(1)) * t420 + t443;
t19 = -t106 * t478 + t141 * t351 - t142 * t349 - t438 * t63 - t440 * t64 + t191;
t18 = -t105 * t478 + t139 * t351 - t140 * t349 - t438 * t61 - t440 * t62 + t190;
t17 = t84 * t421 + (t424 * t55 - t426 * t54 + (t129 * t424 + t130 * t426) * qJD(1)) * t420;
t16 = t83 * t421 + (t424 * t53 - t426 * t52 + (t131 * t424 + t132 * t426) * qJD(1)) * t420;
t15 = t82 * t421 + (t424 * t51 - t426 * t50 + (t125 * t424 + t126 * t426) * qJD(1)) * t420;
t14 = t81 * t421 + (t424 * t49 - t426 * t48 + (t127 * t424 + t128 * t426) * qJD(1)) * t420;
t13 = t129 * t351 - t130 * t349 - t54 * t438 - t55 * t440 + (t156 * t493 - t528 * t84) * t420;
t12 = t131 * t351 - t132 * t349 - t52 * t438 - t53 * t440 + (t157 * t493 - t528 * t83) * t420;
t11 = t125 * t351 - t126 * t349 - t50 * t438 - t51 * t440 + (t154 * t493 - t528 * t82) * t420;
t10 = t127 * t351 - t128 * t349 - t48 * t438 - t49 * t440 + (t155 * t493 - t528 * t81) * t420;
t8 = -t28 * t438 - t29 * t440 - t92 * t349 + t91 * t351 - t478 * t58 + t123;
t7 = t92 * t254 + t91 * t256 + t28 * t369 + t29 * t371 + t523;
t6 = t44 * t421 + (-t26 * t426 + t27 * t424 + (t424 * t87 + t426 * t88) * qJD(1)) * t420;
t5 = t43 * t421 + (-t24 * t426 + t25 * t424 + (t424 * t89 + t426 * t90) * qJD(1)) * t420;
t4 = -t26 * t438 - t27 * t440 - t88 * t349 + t87 * t351 + (t118 * t493 - t44 * t528) * t420;
t3 = -t24 * t438 - t25 * t440 - t90 * t349 + t89 * t351 + (t119 * t493 - t43 * t528) * t420;
t2 = t118 * t365 + t254 * t88 + t256 * t87 + t26 * t369 + t27 * t371 + t397 * t44;
t1 = t119 * t365 + t24 * t369 + t25 * t371 + t254 * t90 + t256 * t89 + t397 * t43;
t20 = [(t228 * t308 + t229 * t307) * t541 + (t135 * t222 + t136 * t221) * t540 + (t184 * t94 + t185 * t93) * t539 + (t137 * t76 + t138 * t75) * t538 + t433 - t542; t57 + t220 + m(3) * (t210 * t307 + t211 * t308 + t228 * t288 + t229 * t289) + m(4) * (t100 * t222 + t135 * t181 + t136 * t182 + t221 * t99) + m(5) * (t133 * t93 + t134 * t94 + t184 * t78 + t185 * t79) + m(6) * (t137 * t39 + t138 * t40 + t75 * t95 + t76 * t96) + ((-t150 / 0.2e1 - t116 / 0.2e1 - t435) * t426 + (t149 / 0.2e1 + t117 / 0.2e1 + t434) * t424 + ((t227 / 0.2e1 + t207 / 0.2e1 - t431) * t426 + (t226 / 0.2e1 + t206 / 0.2e1 + t430) * t424) * qJD(1)) * t420 + t546; (t115 * t38 + t133 * t79 + t134 * t78) * t539 + (t100 * t181 + t148 * t77 + t182 * t99) * t540 + (t289 * t210 + t288 * t211) * t541 + (t22 * t85 + t39 * t96 + t40 * t95) * t538 + (t5 + t16 + t14) * t521 + (-t6 - t17 - t15) * t520 + (t36 + t73 + t71) * t469 + (t37 + t74 + t72) * t468 + ((-t202 * t426 + t203 * t424) * t468 + ((t238 * t440 + t401 * t240 + t349 * t332 + t350 * t334) * t424 + t203 * t495 - (t239 * t440 + t401 * t241 + t349 * t331 + t350 * t333) * t426 + t202 * t496) * t521 + (-t200 * t426 + t201 * t424) * t469 - ((t238 * t438 - t240 * t439 - t351 * t332 + t352 * t334) * t424 + t201 * t495 - (t239 * t438 - t241 * t439 - t351 * t331 + t352 * t333) * t426 + t200 * t496) * t520 + (((t236 * t424 + t330 * t495) * t424 - (t237 * t424 + t329 * t495) * t426) * t521 - ((-t236 * t426 + t330 * t496) * t424 - (-t237 * t426 + t329 * t496) * t426) * t520 + (t335 * t424 + t336 * t426) * (t242 * t426 + t243 * t424 + (t335 * t426 - t336 * t424) * qJD(1)) * t541) * t420) * t420 + (t227 * t468 + t149 * t521 + t226 * t469 - t150 * t520 + t220 + (-t116 * t426 + t117 * t424 + (t206 * t424 + t207 * t426) * qJD(1)) * t420 + t543) * t421; t123 + t190 + t191 + m(4) * (t135 * t209 + t136 * t208 + t221 * t98 + t222 * t97) + m(5) * (t144 * t94 + t145 * t93 + t184 * t66 + t185 * t65) + m(6) * (t103 * t76 + t104 * t75 + t137 * t31 + t138 * t30) - t434 * t440 - t435 * t438 + t430 * t351 + t431 * t349 + t542 * t478; (t19 / 0.2e1 + t18 / 0.2e1 + t8 / 0.2e1) * t421 - (t16 / 0.2e1 + t14 / 0.2e1 + t5 / 0.2e1) * t440 - (t17 / 0.2e1 + t15 / 0.2e1 + t6 / 0.2e1) * t438 + (t36 / 0.2e1 + t71 / 0.2e1 + t73 / 0.2e1) * t351 + (-t37 / 0.2e1 - t72 / 0.2e1 - t74 / 0.2e1) * t349 + m(4) * (t100 * t209 + t148 * t80 + t181 * t97 + t182 * t98 + t183 * t77 + t208 * t99) + m(5) * (t115 * t47 + t121 * t38 + t133 * t65 + t134 * t66 + t144 * t78 + t145 * t79) + m(6) * (t103 * t39 + t104 * t40 + t22 * t86 + t23 * t85 + t30 * t95 + t31 * t96) + ((-t11 / 0.2e1 - t13 / 0.2e1 - t4 / 0.2e1) * t426 + (t10 / 0.2e1 + t12 / 0.2e1 + t3 / 0.2e1) * t424 + (t46 / 0.2e1 + (t545 * t530 + t544 * t531) * t420 + (t198 / 0.2e1 + t199 / 0.2e1) * t421) * t493 + ((t35 / 0.2e1 + t68 / 0.2e1 + t70 / 0.2e1) * t426 + (t67 / 0.2e1 + t69 / 0.2e1 + t34 / 0.2e1) * t424) * qJD(1) + t543 * t491) * t420; (-t18 - t19 - t8) * t478 - (t10 + t12 + t3) * t440 - (t11 + t13 + t4) * t438 + (t34 + t69 + t67) * t351 + (-t35 - t68 - t70) * t349 + (t45 - t544 * t440 - t545 * t438 + (-t198 - t199) * t478) * t467 + (t103 * t31 + t104 * t30 + t23 * t86) * t538 + (t121 * t47 + t144 * t66 + t145 * t65) * t539 + (t183 * t80 + t208 * t98 + t209 * t97) * t540; m(6) * (t137 * t253 + t138 * t255 + t368 * t75 + t370 * t76) + m(5) * (t184 * t253 + t185 * t255 + t368 * t93 + t370 * t94); m(6) * (t22 * t396 + t253 * t96 + t255 * t95 + t364 * t85 + t368 * t40 + t370 * t39) + m(5) * (t115 * t364 + t133 * t255 + t134 * t253 + t368 * t79 + t370 * t78 + t38 * t396); m(6) * (t103 * t253 + t104 * t255 + t23 * t396 + t30 * t368 + t31 * t370 + t364 * t86) + m(5) * (t121 * t364 + t144 * t253 + t145 * t255 + t368 * t65 + t370 * t66 + t396 * t47); 0.4e1 * (m(5) / 0.2e1 + m(6) / 0.2e1) * (t253 * t370 + t255 * t368 + t364 * t396); m(6) * (t137 * t60 + t138 * t59 + t146 * t76 + t147 * t75) + t490 * t371 + t489 * t369 + t488 * t256 + t487 * t254 + t523; m(6) * (t122 * t22 + t146 * t39 + t147 * t40 + t41 * t85 + t59 * t95 + t60 * t96) + t37 * t537 + t5 * t533 + t36 * t536 + t6 * t534 + t46 * t535 + t9 * t532 + t421 * t7 / 0.2e1 + (t1 * t531 + t2 * t530 + (t426 * t33 / 0.2e1 + t32 * t531) * qJD(1)) * t420; m(6) * (t103 * t60 + t104 * t59 + t122 * t23 + t146 * t31 + t147 * t30 + t41 * t86) + t351 * t32 / 0.2e1 - t438 * t2 / 0.2e1 + t45 * t535 + t8 * t532 + t34 * t536 + t4 * t534 - t349 * t33 / 0.2e1 - t440 * t1 / 0.2e1 + t35 * t537 + t3 * t533 + (t42 * t493 / 0.2e1 + t7 * t491) * t420; m(6) * (t122 * t364 + t146 * t253 + t147 * t255 + t368 * t59 + t370 * t60 + t396 * t41); (t122 * t41 + t146 * t60 + t147 * t59) * t538 + t254 * t33 + t371 * t1 + t256 * t32 + t369 * t2 + t365 * t42 + t397 * t7;];
%% Postprocessing: Reshape Output
% From vec2symmat_5_matlab.m
res = [t20(1), t20(2), t20(4), t20(7), t20(11); t20(2), t20(3), t20(5), t20(8), t20(12); t20(4), t20(5), t20(6), t20(9), t20(13); t20(7), t20(8), t20(9), t20(10), t20(14); t20(11), t20(12), t20(13), t20(14), t20(15);];
Mq = res;
