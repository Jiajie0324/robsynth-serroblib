% Calculate vector of centrifugal and Coriolis load on the joints for
% S4RRRR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d2,d3,d4]';
% m_mdh [5x1]
%   mass of all robot links (including the base)
% rSges [5x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% Icges [5x6]
%   inertia of all robot links about their respective center of mass, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertiavector2matrix.m)
% 
% Output:
% tauc [4x1]
%   joint torques required to compensate Coriolis and centrifugal load

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 17:24
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S4RRRR3_coriolisvecJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(7,1),zeros(5,1),zeros(5,3),zeros(5,6)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RRRR3_coriolisvecJ_fixb_slag_vp1: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RRRR3_coriolisvecJ_fixb_slag_vp1: qJD has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4RRRR3_coriolisvecJ_fixb_slag_vp1: pkin has to be [7x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4RRRR3_coriolisvecJ_fixb_slag_vp1: m has to be [5x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [5,3]), ...
  'S4RRRR3_coriolisvecJ_fixb_slag_vp1: rSges has to be [5x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [5 6]), ...
  'S4RRRR3_coriolisvecJ_fixb_slag_vp1: Icges has to be [5x6] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:24:17
% EndTime: 2019-12-31 17:24:34
% DurationCPUTime: 12.85s
% Computational Cost: add. (15106->757), mult. (17106->1005), div. (0->0), fcn. (13520->8), ass. (0->440)
t361 = qJ(2) + qJ(3);
t346 = qJ(4) + t361;
t324 = cos(t346);
t363 = sin(qJ(1));
t552 = t324 * t363;
t323 = sin(t346);
t554 = t323 * t363;
t365 = cos(qJ(1));
t578 = Icges(5,6) * t365;
t173 = Icges(5,4) * t552 - Icges(5,2) * t554 - t578;
t310 = Icges(5,4) * t324;
t240 = Icges(5,1) * t323 + t310;
t646 = -t240 * t363 - t173;
t420 = -Icges(5,2) * t323 + t310;
t174 = Icges(5,6) * t363 + t365 * t420;
t645 = -t240 * t365 - t174;
t587 = Icges(5,4) * t323;
t241 = Icges(5,1) * t324 - t587;
t176 = Icges(5,5) * t363 + t241 * t365;
t238 = Icges(5,2) * t324 + t587;
t644 = -t238 * t365 + t176;
t335 = cos(t361);
t547 = t335 * t363;
t334 = sin(t361);
t550 = t334 * t363;
t579 = Icges(4,6) * t365;
t191 = Icges(4,4) * t547 - Icges(4,2) * t550 - t579;
t318 = Icges(4,4) * t335;
t262 = Icges(4,1) * t334 + t318;
t643 = -t262 * t363 - t191;
t421 = -Icges(4,2) * t334 + t318;
t192 = Icges(4,6) * t363 + t365 * t421;
t642 = -t262 * t365 - t192;
t588 = Icges(4,4) * t334;
t263 = Icges(4,1) * t335 - t588;
t194 = Icges(4,5) * t363 + t263 * t365;
t260 = Icges(4,2) * t335 + t588;
t641 = -t260 * t365 + t194;
t640 = t240 + t420;
t639 = t262 + t421;
t638 = 2 * qJD(2);
t362 = sin(qJ(2));
t637 = rSges(3,2) * t362;
t285 = rSges(5,2) * t554;
t357 = qJD(2) + qJD(3);
t331 = qJD(4) + t357;
t595 = rSges(5,2) * t324;
t486 = t331 * t595;
t494 = qJD(1) * t365;
t406 = rSges(5,3) * t494 + qJD(1) * t285 - t365 * t486;
t254 = t331 * t365;
t483 = t323 * t254;
t495 = qJD(1) * t363;
t101 = (-t324 * t495 - t483) * rSges(5,1) + t406;
t597 = rSges(5,1) * t324;
t244 = -rSges(5,2) * t323 + t597;
t180 = t244 * t331;
t490 = qJD(1) * qJD(2);
t322 = t365 * t490;
t489 = qJD(1) * qJD(3);
t267 = t365 * t489 + t322;
t488 = qJD(1) * qJD(4);
t226 = t365 * t488 + t267;
t598 = rSges(5,1) * t323;
t243 = t595 + t598;
t333 = qJD(2) * t363;
t282 = qJD(3) * t363 + t333;
t253 = qJD(4) * t363 + t282;
t493 = qJD(2) * t365;
t473 = t362 * t493;
t436 = pkin(2) * t473;
t364 = cos(qJ(2));
t541 = t364 * (qJD(2) ^ 2);
t482 = t363 * t541;
t366 = -pkin(6) - pkin(5);
t329 = t365 * t366;
t330 = pkin(5) * t494;
t325 = t364 * pkin(2) + pkin(1);
t601 = pkin(1) - t325;
t139 = -t436 - t330 + (t363 * t601 - t329) * qJD(1);
t257 = qJD(1) * (-pkin(1) * t495 + t330);
t536 = qJD(1) * t139 + t257;
t548 = t335 * t357;
t594 = pkin(2) * qJD(2);
t485 = t362 * t594;
t604 = pkin(3) * t334;
t242 = -t357 * t604 - t485;
t222 = t365 * t242;
t358 = -pkin(7) + t366;
t499 = -t358 + t366;
t273 = pkin(3) * t335 + t325;
t508 = t273 - t325;
t84 = t436 + t222 + (-t363 * t508 + t365 * t499) * qJD(1);
t26 = -pkin(2) * t482 - t180 * t253 - t226 * t243 + (-t267 * t334 - t282 * t548) * pkin(3) + (t101 + t84 - t436) * qJD(1) + t536;
t636 = t26 * t363;
t355 = t365 * pkin(5);
t298 = pkin(1) * t363 - t355;
t503 = t363 * t325 + t329;
t187 = t298 - t503;
t276 = qJD(1) * t298;
t635 = qJD(1) * t187 - t276;
t345 = Icges(3,4) * t364;
t422 = -Icges(3,2) * t362 + t345;
t291 = Icges(3,1) * t362 + t345;
t353 = t363 * pkin(5);
t299 = t365 * pkin(1) + t353;
t478 = t334 * t495;
t284 = pkin(3) * t478;
t208 = t243 * t363;
t438 = qJD(1) * t208 - t254 * t244;
t283 = t357 * t365;
t557 = t283 * t335;
t634 = pkin(3) * t557 + t243 * t495 + t284 - t438;
t264 = rSges(4,1) * t334 + rSges(4,2) * t335;
t233 = t264 * t363;
t234 = t264 * t365;
t599 = rSges(4,1) * t335;
t265 = -rSges(4,2) * t334 + t599;
t196 = rSges(4,1) * t547 - rSges(4,2) * t550 - t365 * rSges(4,3);
t348 = t363 * rSges(4,3);
t546 = t335 * t365;
t549 = t334 * t365;
t197 = rSges(4,1) * t546 - rSges(4,2) * t549 + t348;
t304 = t365 * t325;
t439 = -t363 * t366 + t304;
t188 = t439 - t299;
t527 = -t187 * t333 + t188 * t493;
t64 = t196 * t282 + t197 * t283 + t527;
t397 = -t264 * t283 - t436;
t519 = t187 - t298;
t69 = (-t196 + t519) * qJD(1) + t397;
t308 = t363 * t485;
t518 = -t188 - t197;
t70 = -t264 * t282 - t308 + (t299 - t518) * qJD(1);
t633 = -t69 * (qJD(1) * t233 - t283 * t265) - t64 * (-t282 * t233 - t234 * t283) - t70 * (-qJD(1) * t234 - t265 * t282);
t237 = Icges(5,5) * t324 - Icges(5,6) * t323;
t236 = Icges(5,5) * t323 + Icges(5,6) * t324;
t563 = t236 * t365;
t569 = t174 * t323;
t575 = Icges(5,3) * t365;
t632 = -t331 * t563 + (-t176 * t324 - t237 * t363 + t569 + t575) * qJD(1);
t281 = Icges(5,4) * t554;
t584 = Icges(5,5) * t365;
t175 = Icges(5,1) * t552 - t281 - t584;
t418 = t173 * t323 - t175 * t324;
t172 = Icges(5,3) * t363 + t237 * t365;
t498 = qJD(1) * t172;
t564 = t236 * t363;
t631 = qJD(1) * t418 - t331 * t564 + t498;
t543 = t363 * t364;
t545 = t362 * t363;
t577 = Icges(3,3) * t365;
t216 = Icges(3,5) * t543 - Icges(3,6) * t545 - t577;
t314 = Icges(3,4) * t545;
t586 = Icges(3,5) * t365;
t220 = Icges(3,1) * t543 - t314 - t586;
t580 = Icges(3,6) * t365;
t218 = Icges(3,4) * t543 - Icges(3,2) * t545 - t580;
t566 = t218 * t362;
t414 = -t220 * t364 + t566;
t77 = -t216 * t365 - t363 * t414;
t259 = Icges(4,5) * t335 - Icges(4,6) * t334;
t258 = Icges(4,5) * t334 + Icges(4,6) * t335;
t560 = t258 * t365;
t568 = t192 * t334;
t576 = Icges(4,3) * t365;
t630 = -t357 * t560 + (-t194 * t335 - t259 * t363 + t568 + t576) * qJD(1);
t302 = Icges(4,4) * t550;
t585 = Icges(4,5) * t365;
t193 = Icges(4,1) * t547 - t302 - t585;
t416 = t191 * t334 - t193 * t335;
t190 = Icges(4,3) * t363 + t259 * t365;
t497 = qJD(1) * t190;
t561 = t258 * t363;
t629 = qJD(1) * t416 - t357 * t561 + t497;
t288 = Icges(3,5) * t364 - Icges(3,6) * t362;
t287 = Icges(3,5) * t362 + Icges(3,6) * t364;
t398 = qJD(2) * t287;
t589 = Icges(3,4) * t362;
t292 = Icges(3,1) * t364 - t589;
t221 = Icges(3,5) * t363 + t292 * t365;
t219 = Icges(3,6) * t363 + t365 * t422;
t565 = t219 * t362;
t413 = -t221 * t364 + t565;
t628 = -t365 * t398 + (-t288 * t363 + t413 + t577) * qJD(1);
t217 = Icges(3,3) * t363 + t288 * t365;
t496 = qJD(1) * t217;
t627 = qJD(1) * t414 - t363 * t398 + t496;
t412 = t238 * t323 - t240 * t324;
t626 = qJD(1) * t412 + t237 * t331;
t411 = t260 * t334 - t262 * t335;
t625 = qJD(1) * t411 + t259 * t357;
t289 = Icges(3,2) * t364 + t589;
t410 = t362 * t289 - t291 * t364;
t624 = t410 * qJD(1) + t288 * qJD(2);
t623 = t363 * (-t289 * t365 + t221) - t365 * (-Icges(3,2) * t543 + t220 - t314);
t347 = t363 * rSges(5,3);
t102 = -t331 * t208 + (t244 * t365 + t347) * qJD(1);
t321 = t363 * t490;
t266 = t363 * t489 + t321;
t225 = t363 * t488 + t266;
t409 = -pkin(2) * t365 * t541 + qJD(1) * t308;
t501 = t366 * t495 + t308;
t140 = (-t365 * t601 - t353) * qJD(1) - t501;
t274 = t299 * qJD(1);
t535 = -t140 - t274;
t85 = t242 * t363 + (-t358 * t363 + t365 * t508) * qJD(1) + t501;
t27 = -t180 * t254 + t225 * t243 + (t266 * t334 - t283 * t548) * pkin(3) + (-t102 - t85 + t535) * qJD(1) + t409;
t246 = t365 * t273;
t142 = t363 * t499 + t246 - t304;
t551 = t324 * t365;
t553 = t323 * t365;
t185 = rSges(5,1) * t551 - rSges(5,2) * t553 + t347;
t533 = -t142 - t185;
t479 = -t188 + t533;
t59 = -t282 * t604 - t243 * t253 - t308 + (t299 - t479) * qJD(1);
t622 = (qJD(1) * t59 + t27) * t365 + t636;
t621 = qJD(1) * t640 + t253 * t644 - t254 * (-Icges(5,2) * t552 + t175 - t281);
t620 = qJD(1) * t639 + t282 * t641 - t283 * (-Icges(4,2) * t547 + t193 - t302);
t619 = t225 / 0.2e1;
t618 = t226 / 0.2e1;
t617 = -t253 / 0.2e1;
t616 = t253 / 0.2e1;
t615 = -t254 / 0.2e1;
t614 = t254 / 0.2e1;
t613 = t266 / 0.2e1;
t612 = t267 / 0.2e1;
t611 = -t282 / 0.2e1;
t610 = t282 / 0.2e1;
t609 = -t283 / 0.2e1;
t608 = t283 / 0.2e1;
t607 = t363 / 0.2e1;
t606 = -t365 / 0.2e1;
t605 = pkin(2) * t362;
t603 = -qJD(1) / 0.2e1;
t602 = qJD(1) / 0.2e1;
t600 = rSges(3,1) * t364;
t596 = rSges(3,2) * t364;
t349 = t363 * rSges(3,3);
t593 = t69 * t264;
t510 = -t363 * t273 - t365 * t358;
t141 = t503 + t510;
t506 = t365 * rSges(5,3) + t285;
t184 = rSges(5,1) * t552 - t506;
t41 = -t141 * t282 + t142 * t283 + t184 * t253 + t185 * t254 + t527;
t574 = qJD(1) * t41;
t500 = rSges(3,2) * t545 + t365 * rSges(3,3);
t223 = rSges(3,1) * t543 - t500;
t294 = rSges(3,1) * t362 + t596;
t474 = t294 * t493;
t117 = -t474 + (-t223 - t298) * qJD(1);
t572 = t117 * t363;
t571 = t117 * t365;
t475 = t294 * t333;
t542 = t364 * t365;
t544 = t362 * t365;
t224 = rSges(3,1) * t542 - rSges(3,2) * t544 + t349;
t512 = t224 + t299;
t118 = qJD(1) * t512 - t475;
t256 = t294 * t365;
t570 = t118 * t256;
t562 = t238 * t331;
t559 = t260 * t357;
t558 = t282 * t335;
t556 = t287 * t363;
t555 = t287 * t365;
t171 = Icges(5,5) * t552 - Icges(5,6) * t554 - t575;
t540 = t365 * t171;
t189 = Icges(4,5) * t547 - Icges(4,6) * t550 - t576;
t539 = t365 * t189;
t86 = -t363 * t412 - t563;
t538 = t86 * qJD(1);
t93 = -t363 * t411 - t560;
t537 = t93 * qJD(1);
t534 = t141 - t184;
t532 = -t363 * t171 - t175 * t551;
t531 = t363 * t172 + t176 * t551;
t530 = -t363 * t189 - t193 * t546;
t529 = t363 * t190 + t194 * t546;
t526 = t363 * t184 + t365 * t185;
t525 = -t363 * t187 + t365 * t188;
t524 = t363 * t196 + t365 * t197;
t521 = -t363 * t216 - t220 * t542;
t520 = t363 * t217 + t221 * t542;
t507 = rSges(4,2) * t478 + rSges(4,3) * t494;
t505 = -t289 + t292;
t504 = t291 + t422;
t502 = rSges(3,3) * t494 + t495 * t637;
t121 = -t363 * t410 - t555;
t492 = t121 * qJD(1);
t491 = t288 * qJD(1);
t487 = t365 * t101 + t363 * t102 + t184 * t494;
t484 = t364 * t594;
t113 = -rSges(4,2) * t557 + (-t283 * t334 - t335 * t495) * rSges(4,1) + t507;
t114 = -t357 * t233 + (t265 * t365 + t348) * qJD(1);
t481 = t365 * t113 + t363 * t114 + t196 * t494;
t480 = t365 * t139 + t363 * t140 - t187 * t494;
t476 = t362 * t494;
t471 = -pkin(1) - t600;
t470 = t495 / 0.2e1;
t469 = t494 / 0.2e1;
t468 = -t333 / 0.2e1;
t465 = t493 / 0.2e1;
t464 = -t264 - t605;
t277 = -t604 - t605;
t463 = t277 + t605;
t460 = (-t241 * t363 + t584) * qJD(1) + t645 * t331;
t459 = qJD(1) * t174 + t175 * t331 - t363 * t562;
t458 = (-t363 * t420 + t578) * qJD(1) + t644 * t331;
t457 = t362 * (-t363 ^ 2 - t365 ^ 2);
t456 = qJD(1) * t176 + t646 * t331;
t455 = (-t363 * t421 + t579) * qJD(1) + t641 * t357;
t454 = qJD(1) * t192 + t193 * t357 - t363 * t559;
t453 = (-t263 * t363 + t585) * qJD(1) + t642 * t357;
t452 = qJD(1) * t194 + t643 * t357;
t209 = t243 * t365;
t451 = -t253 * t208 - t209 * t254;
t144 = t176 * t552;
t450 = t365 * t172 - t144;
t147 = t194 * t547;
t449 = t365 * t190 - t147;
t448 = -t171 + t569;
t447 = t640 * t331;
t446 = t241 * t331 - t562;
t181 = t221 * t543;
t445 = t217 * t365 - t181;
t444 = -t189 + t568;
t443 = -qJD(1) * t209 - t244 * t253;
t442 = t639 * t357;
t441 = t263 * t357 - t559;
t440 = -t216 + t565;
t435 = -t363 * t141 + t365 * t142 + t526;
t434 = -pkin(3) * t548 - t180;
t215 = t265 * t357;
t431 = -t215 - t484;
t428 = t600 - t637;
t389 = -t254 * t243 - t283 * t604 - t436;
t58 = (t519 + t534) * qJD(1) + t389;
t427 = -t363 * t59 - t365 * t58;
t426 = -t363 * t70 - t365 * t69;
t419 = -t118 * t363 - t571;
t88 = t173 * t324 + t175 * t323;
t103 = t191 * t335 + t193 * t334;
t119 = t218 * t364 + t220 * t362;
t120 = t219 * t364 + t221 * t362;
t408 = -t141 * t494 + t363 * t85 + t365 * t84 + t487;
t255 = t294 * t363;
t78 = -t219 * t545 - t445;
t404 = (t363 * t78 - t365 * t77) * qJD(2);
t79 = -t218 * t544 - t521;
t80 = -t219 * t544 + t520;
t403 = (t363 * t80 - t365 * t79) * qJD(2);
t402 = t418 * t363;
t401 = t416 * t363;
t400 = qJD(2) * t291;
t399 = qJD(2) * t289;
t115 = (t223 * t363 + t224 * t365) * qJD(2);
t396 = t434 - t484;
t395 = qJD(1) * t237 - t253 * t563 + t254 * t564;
t394 = qJD(1) * t259 - t282 * t560 + t283 * t561;
t393 = t139 * t493 + t140 * t333 - t187 * t322 - t188 * t321;
t392 = t218 * t365 - t219 * t363;
t380 = qJD(1) * t171 - t323 * t459 + t324 * t456;
t16 = t631 * t363 + t380 * t365;
t381 = -t323 * t458 + t324 * t460 + t498;
t17 = t632 * t363 + t381 * t365;
t18 = t380 * t363 - t631 * t365;
t19 = t381 * t363 - t632 * t365;
t65 = -t402 - t540;
t66 = -t174 * t554 - t450;
t31 = t253 * t66 - t254 * t65 + t538;
t67 = -t173 * t553 - t532;
t68 = -t174 * t553 + t531;
t87 = -t365 * t412 + t564;
t83 = t87 * qJD(1);
t32 = t253 * t68 - t254 * t67 + t83;
t385 = t645 * t253 - t646 * t254 + (-t238 + t241) * qJD(1);
t370 = -t621 * t323 + t385 * t324;
t377 = qJD(1) * t236 - t323 * t447 + t324 * t446;
t42 = t626 * t363 + t377 * t365;
t43 = t377 * t363 - t626 * t365;
t46 = t323 * t456 + t324 * t459;
t47 = t323 * t460 + t324 * t458;
t89 = t174 * t324 + t176 * t323;
t391 = (qJD(1) * t42 - t16 * t254 + t17 * t253 + t225 * t67 + t226 * t68) * t607 + (t363 * t47 - t365 * t46 + (t363 * t88 + t365 * t89) * qJD(1)) * t602 + (t363 * t395 + t365 * t370) * t617 + (t363 * t370 - t365 * t395) * t614 + (qJD(1) * t43 - t18 * t254 + t19 * t253 + t225 * t65 + t226 * t66) * t606 + (t385 * t323 + t621 * t324) * t603 + t31 * t470 + t32 * t469 + (t363 * t66 - t365 * t65) * t619 + (t363 * t68 - t365 * t67) * t618 + (-t16 * t365 + t17 * t363 + (t363 * t67 + t365 * t68) * qJD(1)) * t616 + (-t18 * t365 + t19 * t363 + (t363 * t65 + t365 * t66) * qJD(1)) * t615;
t390 = (-t362 * t504 + t364 * t505) * qJD(1);
t388 = t41 * t451 + t443 * t59;
t384 = t642 * t282 - t643 * t283 + (-t260 + t263) * qJD(1);
t379 = qJD(1) * t189 - t334 * t454 + t335 * t452;
t378 = -t334 * t455 + t335 * t453 + t497;
t376 = qJD(1) * t258 - t334 * t442 + t335 * t441;
t131 = qJD(1) * t219 - t363 * t399;
t133 = qJD(1) * t221 - t363 * t400;
t375 = qJD(1) * t216 - qJD(2) * t119 - t131 * t362 + t133 * t364;
t130 = -t365 * t399 + (-t363 * t422 + t580) * qJD(1);
t132 = -t365 * t400 + (-t292 * t363 + t586) * qJD(1);
t374 = -qJD(2) * t120 - t130 * t362 + t132 * t364 + t496;
t269 = t422 * qJD(2);
t270 = t292 * qJD(2);
t373 = qJD(1) * t287 - t269 * t362 + t270 * t364 + (-t289 * t364 - t291 * t362) * qJD(2);
t104 = t192 * t335 + t194 * t334;
t22 = t629 * t363 + t379 * t365;
t23 = t630 * t363 + t378 * t365;
t24 = t379 * t363 - t629 * t365;
t25 = t378 * t363 - t630 * t365;
t369 = -t620 * t334 + t384 * t335;
t71 = -t401 - t539;
t72 = -t192 * t550 - t449;
t39 = t282 * t72 - t283 * t71 + t537;
t73 = -t191 * t549 - t530;
t74 = -t192 * t549 + t529;
t94 = -t365 * t411 + t561;
t92 = t94 * qJD(1);
t40 = t282 * t74 - t283 * t73 + t92;
t52 = t625 * t363 + t376 * t365;
t53 = t376 * t363 - t625 * t365;
t56 = t334 * t452 + t335 * t454;
t57 = t334 * t453 + t335 * t455;
t372 = t391 + (-t24 * t365 + t25 * t363 + (t363 * t71 + t365 * t72) * qJD(1)) * t609 + (qJD(1) * t53 - t24 * t283 + t25 * t282 + t266 * t71 + t267 * t72) * t606 + (-t22 * t365 + t23 * t363 + (t363 * t73 + t365 * t74) * qJD(1)) * t610 + (t363 * t369 - t365 * t394) * t608 + (t363 * t74 - t365 * t73) * t612 + (t363 * t72 - t365 * t71) * t613 + (t363 * t394 + t365 * t369) * t611 + t40 * t469 + t39 * t470 + (t363 * t57 - t365 * t56 + (t103 * t363 + t104 * t365) * qJD(1)) * t602 + (t384 * t334 + t620 * t335) * t603 + (qJD(1) * t52 - t22 * t283 + t23 * t282 + t266 * t73 + t267 * t74) * t607;
t371 = -t623 * t362 + t392 * t364;
t271 = t428 * qJD(2);
t201 = t463 * t365;
t200 = t463 * t363;
t137 = -qJD(2) * t255 + (t365 * t428 + t349) * qJD(1);
t136 = -t493 * t596 + (-t364 * t495 - t473) * rSges(3,1) + t502;
t122 = -t365 * t410 + t556;
t116 = t122 * qJD(1);
t76 = -t271 * t493 + (-t137 - t274 + t475) * qJD(1);
t75 = -t271 * t333 + t257 + (t136 - t474) * qJD(1);
t63 = t373 * t363 - t624 * t365;
t62 = t624 * t363 + t373 * t365;
t61 = -qJD(2) * t413 + t130 * t364 + t132 * t362;
t60 = -t414 * qJD(2) + t131 * t364 + t133 * t362;
t55 = -t215 * t283 + t264 * t266 + (-t114 + t535) * qJD(1) + t409;
t54 = qJD(1) * t113 - t215 * t282 - t264 * t267 + (-t322 * t362 - t482) * pkin(2) + t536;
t49 = t116 + t403;
t48 = t404 + t492;
t21 = t113 * t283 + t114 * t282 + t196 * t267 - t197 * t266 + t393;
t9 = t101 * t254 + t102 * t253 - t141 * t267 - t142 * t266 + t184 * t226 - t185 * t225 + t282 * t85 + t283 * t84 + t393;
t1 = [(t92 + (t72 + (t191 * t365 + t192 * t363) * t334 + t449 + t530) * t283 + (-t193 * t547 + t539 + t71 + (t191 * t363 - t192 * t365) * t334 + t529) * t282) * t608 + (t83 + (t66 + (t173 * t365 + t174 * t363) * t323 + t450 + t532) * t254 + (-t175 * t552 + t540 + t65 + (t173 * t363 - t174 * t365) * t323 + t531) * t253) * t614 + (t116 + ((t78 - t181 + (t217 + t566) * t365 + t521) * t365 + t520 * t363) * qJD(2)) * t465 + (t88 + t86) * t619 + (t89 + t87) * t618 + (-t538 + (t68 - t402 - t531) * t254 + (t448 * t363 - t144 + t67) * t253 + ((t172 + t418) * t253 + t448 * t254) * t365 + t31) * t617 + (t47 + t42) * t616 + (t103 + t93) * t613 + (t104 + t94) * t612 + (-t537 + (t74 - t401 - t529) * t283 + (t444 * t363 - t147 + t73) * t282 + ((t190 + t416) * t282 + t444 * t283) * t365 + t39) * t611 + (t57 + t52) * t610 + (-t492 + ((t365 * t440 - t520 + t80) * t365 + (t363 * t440 + t445 + t79) * t363) * qJD(2) + t48) * t468 + (t61 + t62) * t333 / 0.2e1 + (-t410 * qJD(2) + t269 * t364 + t270 * t362 + t446 * t323 + t447 * t324 + t441 * t334 + t442 * t335) * qJD(1) + (t27 * (t506 + t510) + t26 * (t185 + t246) + t59 * (-rSges(5,1) * t483 + t222 + t406) + (-t27 * t597 + t58 * (t331 * t598 - t242 + t486) - t26 * t358) * t363 + ((t58 * (-t244 - t273) - t59 * t358) * t365 + (t58 * (-rSges(5,3) + t358) + t59 * (-t273 - t597)) * t363) * qJD(1) - (qJD(1) * t534 + t389 - t58 + t635) * t59) * m(5) + (t55 * (-t196 - t503) + t69 * t501 + t54 * (t197 + t439) + t70 * (-t436 + t507) + (-t234 * t70 + t363 * t593) * t357 + ((-t69 * rSges(4,3) + t70 * (-t325 - t599)) * t363 + (t69 * (-t265 - t325) - t70 * t366) * t365) * qJD(1) - (-qJD(1) * t196 + t397 + t635 - t69) * t70) * m(4) + (-(-qJD(1) * t223 - t117 - t276 - t474) * t118 + t76 * (t363 * t471 + t355 + t500) + t75 * t512 + t118 * (t330 + t502) + (t294 * t572 - t570) * qJD(2) + ((-pkin(1) - t428) * t571 + (t117 * (-rSges(3,3) - pkin(5)) + t118 * t471) * t363) * qJD(1)) * m(3) + (t43 + t32 + t46) * t615 + (t56 + t53 + t40) * t609 - (t60 + t63 + t49) * t493 / 0.2e1 + ((t119 + t121) * t363 + (t120 + t122) * t365) * t490 / 0.2e1; t372 + ((t362 * t505 + t364 * t504) * qJD(1) + (t392 * t362 + t623 * t364) * qJD(2)) * t603 + ((-t493 * t556 - t491) * t365 + (t390 + (t365 * t555 + t371) * qJD(2)) * t363) * t465 + ((-t333 * t555 + t491) * t363 + (t390 + (t363 * t556 + t371) * qJD(2)) * t365) * t468 + (t363 * t61 - t365 * t60 + (t119 * t363 + t120 * t365) * qJD(1)) * t602 + (qJD(1) * t62 + (-(t627 * t363 + t375 * t365) * t365 + (t628 * t363 + t374 * t365) * t363 + (t79 * t363 + t80 * t365) * qJD(1)) * t638) * t607 + (qJD(1) * t63 + (t363 * (t374 * t363 - t628 * t365) - t365 * (t375 * t363 - t627 * t365) + (t77 * t363 + t78 * t365) * qJD(1)) * t638) * t606 + (t404 + t48) * t470 + (t403 + t49) * t469 + (t9 * (t435 + t525) + t41 * (t408 + t480) + (t396 * t59 + t479 * t574) * t363 - t59 * (-pkin(3) * t558 + qJD(1) * t201 + t443) - t41 * (t200 * t282 + t201 * t283 + t451) - (-t59 * t476 + (t364 * t427 + t41 * t457) * qJD(2)) * pkin(2) + t622 * (-t243 + t277) + (qJD(1) * t200 + t365 * t396 + t634) * t58) * m(5) + (t21 * (t524 + t525) + t64 * (t480 + t481) + (t431 * t69 + (qJD(1) * t70 + t55) * t464) * t365 + (t54 * t464 + t70 * t431 + (t518 * t64 + t593) * qJD(1)) * t363 - (-t70 * t476 + (t364 * t426 + t457 * t64) * qJD(2)) * pkin(2) + t633) * m(4) + (-(t117 * t255 - t570) * qJD(1) - (t115 * (-t255 * t363 - t256 * t365) + t419 * t428) * qJD(2) + 0.2e1 * t115 * (t136 * t365 + t137 * t363 + (t223 * t365 - t224 * t363) * qJD(1)) + t419 * t271 + (-t75 * t363 - t76 * t365 + (-t118 * t365 + t572) * qJD(1)) * t294) * m(3); t372 + (t9 * t435 + t41 * t408 + (t434 * t59 + t533 * t574) * t363 - (-t59 * t558 + (-t59 * t494 + t41 * (-t282 * t363 - t283 * t365)) * t334) * pkin(3) - t388 + t622 * (-t243 - t604) + (t365 * t434 - t284 + t634) * t58) * m(5) + (t21 * t524 + t64 * (-t197 * t495 + t481) + t426 * t215 + (-t54 * t363 - t55 * t365 + (t363 * t69 - t365 * t70) * qJD(1)) * t264 + t633) * m(4); t391 + (-t58 * t438 - t388 + t9 * t526 + t41 * (-t185 * t495 + t487) + t427 * t180 + (-t636 - t27 * t365 + (t363 * t58 - t365 * t59) * qJD(1)) * t243) * m(5);];
tauc = t1(:);