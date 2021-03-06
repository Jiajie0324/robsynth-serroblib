% Calculate inertial parameters regressor of inverse dynamics joint torque vector with Newton-Euler for
% S6RRRPRR13
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% qJDD [6x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d2,d3,d5,d6,theta4]';
% 
% Output:
% tauJ_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-07 15:59
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauJ_reg = S6RRRPRR13_invdynJ_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(13,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRR13_invdynJ_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRR13_invdynJ_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRPRR13_invdynJ_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRPRR13_invdynJ_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6RRRPRR13_invdynJ_fixb_reg2_snew_vp: pkin has to be [13x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauJ_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 15:48:58
% EndTime: 2019-05-07 15:50:30
% DurationCPUTime: 53.87s
% Computational Cost: add. (602809->955), mult. (1509277->1518), div. (0->0), fcn. (1288478->16), ass. (0->625)
t438 = cos(pkin(6));
t599 = qJD(1) * t438;
t428 = qJD(2) + t599;
t441 = sin(qJ(3));
t445 = cos(qJ(3));
t437 = cos(pkin(7));
t435 = sin(pkin(6));
t446 = cos(qJ(2));
t597 = qJD(1) * t446;
t567 = t435 * t597;
t558 = t437 * t567;
t442 = sin(qJ(2));
t598 = qJD(1) * t442;
t568 = t435 * t598;
t434 = sin(pkin(7));
t617 = t434 * t445;
t404 = -t428 * t617 + t441 * t568 - t445 * t558;
t586 = qJDD(1) * t446;
t588 = qJD(1) * qJD(2);
t506 = -t442 * t588 + t586;
t479 = t506 * t437;
t564 = t446 * t588;
t587 = qJDD(1) * t442;
t507 = t564 + t587;
t557 = qJDD(1) * t438 + qJDD(2);
t513 = t434 * t557;
t457 = (t441 * t479 + t445 * t507) * t435 + t441 * t513;
t381 = -t404 * qJD(3) + t457;
t414 = -t437 * t428 + t434 * t567 - qJD(3);
t394 = t404 * t414;
t347 = t394 + t381;
t592 = qJD(2) + t428;
t433 = sin(pkin(13));
t600 = qJD(1) * t435;
t613 = t437 * t446;
t619 = t434 * t441;
t406 = t428 * t619 + (t441 * t613 + t442 * t445) * t600;
t436 = cos(pkin(13));
t390 = -t433 * t406 - t414 * t436;
t391 = t406 * t436 - t414 * t433;
t363 = t390 * t391;
t481 = t507 * t435;
t601 = (t435 * t479 + t513) * t445;
t468 = t441 * t481 - t601;
t595 = t406 * qJD(3);
t464 = t468 + t595;
t680 = t363 + t464;
t693 = t433 * t680;
t692 = t436 * t680;
t439 = sin(qJ(6));
t440 = sin(qJ(5));
t444 = cos(qJ(5));
t357 = t390 * t440 + t391 * t444;
t480 = t506 * t435;
t486 = t437 * t557 + qJDD(3);
t460 = -t434 * t480 + t486;
t361 = t436 * t381 + t433 * t460;
t561 = t381 * t433 - t436 * t460;
t562 = t440 * t361 + t444 * t561;
t276 = -t357 * qJD(5) - t562;
t274 = qJDD(6) - t276;
t443 = cos(qJ(6));
t484 = qJD(5) + t404;
t334 = t357 * t439 - t443 * t484;
t336 = t443 * t357 + t439 * t484;
t291 = t336 * t334;
t682 = t274 - t291;
t691 = t439 * t682;
t355 = -t444 * t390 + t391 * t440;
t309 = t357 * t355;
t380 = qJDD(5) + t464;
t681 = -t309 + t380;
t690 = t440 * t681;
t689 = t443 * t682;
t688 = t444 * t681;
t277 = -t355 * qJD(5) + t444 * t361 - t440 * t561;
t339 = t484 * t355;
t687 = -t339 + t277;
t427 = t428 ^ 2;
t667 = sin(qJ(1));
t668 = cos(qJ(1));
t504 = g(1) * t667 - g(2) * t668;
t474 = qJDD(1) * pkin(1) + t504;
t469 = t438 * t474;
t505 = g(1) * t668 + g(2) * t667;
t670 = qJD(1) ^ 2;
t476 = pkin(1) * t670 + t505;
t516 = t557 * pkin(2);
t660 = pkin(10) * t434;
t456 = t427 * t660 + t442 * t476 + t446 * t469 + t516;
t659 = pkin(10) * t437;
t569 = pkin(9) + t659;
t654 = t446 * g(3);
t477 = -t569 * t587 - t654;
t618 = t434 * t442;
t666 = pkin(2) * t446;
t514 = -pkin(10) * t618 - t666;
t498 = t514 * t435;
t555 = (-qJD(2) + t428) * t659;
t661 = pkin(9) * t438;
t674 = (-t442 * t498 + t446 * t661) * qJD(1) + t446 * t555;
t452 = (qJD(1) * t674 + t477) * t435 + t456;
t508 = -pkin(1) + t514;
t554 = t592 * t442 * pkin(2);
t656 = t438 * g(3);
t431 = t442 ^ 2;
t432 = t446 ^ 2;
t678 = -t431 - t432;
t560 = t446 * t592;
t685 = t434 * t560;
t454 = -t656 + (t508 * qJDD(1) + (-pkin(9) * t600 + (t437 * t600 * t678 - t685) * pkin(10) + t554) * qJD(1) - t504) * t435;
t686 = t434 * t454 + t437 * t452;
t478 = t484 ^ 2;
t624 = t406 * t404;
t459 = t460 - t624;
t684 = t441 * t459;
t683 = t445 * t459;
t373 = t404 * t390;
t322 = t373 - t361;
t679 = t373 + t361;
t593 = t435 * t670;
t466 = pkin(9) * t593 + t474;
t465 = t438 * t466;
t662 = pkin(9) * t435;
t467 = qJDD(1) * t662 - t476;
t395 = t442 * t467 + (t435 * g(3) - t465) * t446;
t616 = t435 * t442;
t429 = g(3) * t616;
t396 = t442 * t465 + t446 * t467 - t429;
t677 = t442 * t395 + t446 * t396;
t623 = t414 * t406;
t676 = -pkin(3) * t623 - qJ(4) * t347;
t351 = qJD(6) + t355;
t563 = t277 * t439 - t443 * t380;
t215 = (qJD(6) - t351) * t336 + t563;
t430 = t435 ^ 2;
t675 = (t599 - t592) * t430;
t332 = t334 ^ 2;
t333 = t336 ^ 2;
t350 = t351 ^ 2;
t353 = t355 ^ 2;
t354 = t357 ^ 2;
t673 = t390 ^ 2;
t389 = t391 ^ 2;
t672 = t404 ^ 2;
t403 = t406 ^ 2;
t671 = t414 ^ 2;
t669 = 2 * qJD(4);
t665 = pkin(3) * t441;
t664 = pkin(3) * t445;
t663 = pkin(5) * t440;
t657 = t436 * pkin(3);
t383 = pkin(3) * t404 - qJ(4) * t406;
t358 = -t446 * t476 + t442 * t469 - t429 + pkin(10) * t513 - pkin(2) * t427 + (t569 * t586 + ((t442 * t661 + t446 * t498) * qJD(1) + t442 * t555) * qJD(1)) * t435;
t604 = t445 * t358;
t490 = -pkin(3) * t671 - t404 * t383 + t604;
t449 = qJ(4) * t460 + t441 * t686 + t490;
t365 = t437 * t454;
t450 = pkin(3) * t464 - t434 * t452 + t365 + t676;
t181 = t390 * t669 + t433 * t450 + t436 * t449;
t370 = pkin(4) * t404 - pkin(11) * t391;
t164 = -pkin(4) * t673 - pkin(11) * t561 - t404 * t370 + t181;
t583 = t391 * t669;
t448 = t433 * t449 - t436 * t450 + t583;
t447 = pkin(4) * t680 + pkin(11) * t322 - t448;
t109 = t164 * t440 - t444 * t447;
t307 = pkin(5) * t355 - pkin(12) * t357;
t103 = -t380 * pkin(5) - pkin(12) * t478 + t307 * t357 + t109;
t110 = t444 * t164 + t440 * t447;
t104 = -pkin(5) * t478 + t380 * pkin(12) - t355 * t307 + t110;
t278 = t441 * t358 - t445 * t686;
t258 = -t460 * pkin(3) - t671 * qJ(4) + t406 * t383 + qJDD(4) + t278;
t225 = t561 * pkin(4) - t673 * pkin(11) + t391 * t370 + t258;
t475 = t484 * t357;
t145 = -t687 * pkin(12) + (-t276 + t475) * pkin(5) + t225;
t71 = t104 * t439 - t443 * t145;
t72 = t104 * t443 + t145 * t439;
t51 = t439 * t71 + t443 * t72;
t38 = -t103 * t444 + t440 * t51;
t39 = t103 * t440 + t444 * t51;
t21 = t38 * t436 + t39 * t433;
t22 = -t38 * t433 + t39 * t436;
t50 = t439 * t72 - t443 * t71;
t549 = t22 * t441 - t445 * t50;
t9 = -t21 * t434 + t437 * t549;
t655 = t442 * t9;
t68 = -t109 * t444 + t110 * t440;
t653 = t433 * t68;
t652 = t436 * t68;
t69 = t109 * t440 + t444 * t110;
t44 = t433 * t69 + t652;
t45 = t436 * t69 - t653;
t544 = -t225 * t445 + t441 * t45;
t25 = -t434 * t44 + t437 * t544;
t651 = t442 * t25;
t528 = -t277 * t443 - t380 * t439;
t235 = -qJD(6) * t334 - t528;
t304 = t351 * t334;
t219 = t235 + t304;
t151 = -t215 * t439 - t219 * t443;
t153 = -t215 * t443 + t219 * t439;
t264 = t332 + t333;
t126 = t153 * t440 + t264 * t444;
t127 = t153 * t444 - t264 * t440;
t84 = -t126 * t433 + t127 * t436;
t547 = -t151 * t445 + t441 * t84;
t83 = t126 * t436 + t127 * t433;
t49 = -t434 * t83 + t437 * t547;
t650 = t442 * t49;
t266 = -t350 - t332;
t173 = t266 * t439 + t689;
t174 = t266 * t443 - t691;
t589 = qJD(6) + t351;
t216 = -t336 * t589 - t563;
t136 = t174 * t440 + t216 * t444;
t137 = t174 * t444 - t216 * t440;
t96 = -t136 * t433 + t137 * t436;
t546 = -t173 * t445 + t441 * t96;
t95 = t136 * t436 + t137 * t433;
t54 = -t434 * t95 + t437 * t546;
t649 = t442 * t54;
t271 = -t333 - t350;
t230 = t274 + t291;
t642 = t230 * t439;
t176 = t271 * t443 - t642;
t641 = t230 * t443;
t177 = -t271 * t439 - t641;
t220 = t334 * t589 + t528;
t138 = t177 * t440 + t220 * t444;
t139 = t177 * t444 - t220 * t440;
t98 = -t138 * t433 + t139 * t436;
t545 = -t176 * t445 + t441 * t98;
t97 = t138 * t436 + t139 * t433;
t56 = -t434 * t97 + t437 * t545;
t648 = t442 * t56;
t252 = -t357 * t404 + t562;
t255 = t339 + t277;
t191 = -t252 * t440 - t255 * t444;
t193 = -t252 * t444 + t255 * t440;
t133 = t191 * t436 + t193 * t433;
t135 = -t191 * t433 + t193 * t436;
t275 = -t353 - t354;
t537 = t135 * t441 - t275 * t445;
t86 = -t133 * t434 + t437 * t537;
t647 = t442 * t86;
t646 = t103 * t439;
t645 = t103 * t443;
t644 = t225 * t440;
t643 = t225 * t444;
t640 = t258 * t433;
t639 = t258 * t436;
t284 = t309 + t380;
t638 = t284 * t440;
t637 = t284 * t444;
t455 = t434 * t456 - t365;
t458 = t674 * t434;
t310 = (qJD(1) * t458 + t434 * t477) * t435 + t455;
t636 = t310 * t441;
t635 = t310 * t445;
t324 = -t363 + t464;
t634 = t324 * t433;
t633 = t324 * t436;
t632 = t351 * t439;
t631 = t351 * t443;
t367 = -t460 - t624;
t630 = t367 * t441;
t629 = t367 * t445;
t627 = t391 * t404;
t626 = t404 * t433;
t625 = t404 * t436;
t622 = t414 * t445;
t621 = t433 * t434;
t620 = t434 * t436;
t615 = t435 * t446;
t614 = t437 * t441;
t305 = -t478 - t353;
t236 = t305 * t440 + t688;
t237 = t305 * t444 - t690;
t171 = t236 * t436 + t237 * t433;
t172 = -t236 * t433 + t237 * t436;
t251 = (0.2e1 * qJD(5) + t404) * t357 + t562;
t535 = t172 * t441 - t251 * t445;
t107 = -t171 * t434 + t437 * t535;
t612 = t442 * t107;
t326 = -t354 - t478;
t249 = t326 * t444 - t638;
t250 = -t326 * t440 - t637;
t188 = t249 * t436 + t250 * t433;
t189 = -t249 * t433 + t250 * t436;
t534 = t189 * t441 - t445 * t687;
t115 = -t188 * t434 + t437 * t534;
t611 = t442 * t115;
t318 = t561 - t627;
t268 = -t318 * t433 + t322 * t436;
t270 = -t318 * t436 - t322 * t433;
t330 = -t389 - t673;
t529 = t270 * t441 - t330 * t445;
t195 = -t268 * t434 + t437 * t529;
t610 = t442 * t195;
t341 = -t672 - t673;
t280 = t341 * t433 + t692;
t281 = t341 * t436 - t693;
t317 = t561 + t627;
t526 = t281 * t441 - t317 * t445;
t210 = -t280 * t434 + t437 * t526;
t609 = t442 * t210;
t352 = -t389 - t672;
t286 = t352 * t436 - t634;
t287 = -t352 * t433 - t633;
t525 = t287 * t441 - t445 * t679;
t222 = -t286 * t434 + t437 * t525;
t608 = t442 * t222;
t366 = -t672 - t403;
t348 = -t394 + t381;
t461 = (-qJD(3) - t414) * t406 - t468;
t521 = -t348 * t445 + t441 * t461;
t273 = -t366 * t434 + t437 * t521;
t607 = t442 * t273;
t594 = t430 * t670;
t426 = t446 * t442 * t594;
t416 = t426 + t557;
t605 = t442 * t416;
t417 = -t426 + t557;
t602 = t446 * t417;
t591 = qJD(3) - t414;
t582 = t440 * t291;
t581 = t444 * t291;
t580 = t441 * t309;
t579 = t445 * t309;
t578 = t441 * t363;
t577 = t445 * t363;
t575 = t414 * t619;
t574 = t414 * t617;
t573 = t414 * t614;
t572 = t437 * t622;
t571 = -pkin(1) - t666;
t570 = -pkin(5) * t444 - pkin(4);
t566 = t431 * t594;
t565 = t432 * t594;
t491 = -pkin(10) * t434 ^ 2 - t437 * t569;
t180 = t433 * (qJ(4) * t486 + t456 * t614 - t619 * t656 + t490) - t436 * (-(-t595 + t601) * pkin(3) - t455 + t676) + t583 + (-t620 * t654 + t433 * (-g(3) * t613 - t434 * t504) * t441 + ((-t446 * qJ(4) + t441 * t571) * t621 + (-t569 * t620 + (t433 * t491 - t657) * t441) * t442) * qJDD(1) + (t433 * qJD(2) * qJ(4) * t618 + t458 * t436 + ((-qJD(2) * t657 + ((pkin(2) * t616 + t661) * qJD(1) + t555) * t433 * t437) * t446 + ((-t432 * t659 - pkin(9)) * t600 + t554 - pkin(10) * t685) * t621) * t441) * qJD(1)) * t435;
t129 = t180 * t433 + t436 * t181;
t556 = t435 * t564;
t553 = -pkin(5) * t103 + pkin(12) * t51;
t552 = -qJ(4) * t441 - t664;
t379 = -t672 - t671;
t329 = t379 * t445 - t684;
t551 = pkin(10) * t329 + t635;
t382 = -t403 - t671;
t331 = -t382 * t441 + t629;
t550 = pkin(10) * t331 - t636;
t218 = t235 - t304;
t150 = t216 * t439 + t218 * t443;
t152 = t216 * t443 - t218 * t439;
t290 = t333 - t332;
t130 = t152 * t440 - t290 * t444;
t131 = t152 * t444 + t290 * t440;
t94 = -t130 * t433 + t131 * t436;
t548 = -t150 * t445 + t441 * t94;
t303 = -t333 + t350;
t202 = -t303 * t439 + t689;
t146 = t202 * t440 - t219 * t444;
t148 = t202 * t444 + t219 * t440;
t101 = -t146 * t433 + t148 * t436;
t200 = t303 * t443 + t691;
t543 = t101 * t441 - t200 * t445;
t302 = t332 - t350;
t203 = t302 * t443 - t642;
t147 = t203 * t440 + t215 * t444;
t149 = t203 * t444 - t215 * t440;
t102 = -t147 * t433 + t149 * t436;
t201 = t302 * t439 + t641;
t542 = t102 * t441 - t201 * t445;
t234 = -qJD(6) * t336 - t563;
t212 = -t234 * t439 + t334 * t631;
t167 = t212 * t440 + t581;
t169 = t212 * t444 - t582;
t121 = -t167 * t433 + t169 * t436;
t211 = -t234 * t443 - t334 * t632;
t541 = t121 * t441 + t211 * t445;
t214 = t235 * t443 - t336 * t632;
t168 = t214 * t440 - t581;
t170 = t214 * t444 + t582;
t122 = -t168 * t433 + t170 * t436;
t213 = t235 * t439 + t336 * t631;
t540 = t122 * t441 - t213 * t445;
t539 = t129 * t441 - t258 * t445;
t190 = -t251 * t440 + t444 * t687;
t192 = -t251 * t444 - t440 * t687;
t134 = -t190 * t433 + t192 * t436;
t308 = t354 - t353;
t538 = t134 * t441 - t308 * t445;
t240 = (-t334 * t443 + t336 * t439) * t351;
t207 = t240 * t440 - t274 * t444;
t208 = t240 * t444 + t274 * t440;
t142 = -t207 * t433 + t208 * t436;
t239 = (-t334 * t439 - t336 * t443) * t351;
t536 = t142 * t441 - t239 * t445;
t128 = -t180 * t436 + t181 * t433;
t338 = -t354 + t478;
t260 = t338 * t444 + t690;
t262 = -t338 * t440 + t688;
t198 = -t260 * t433 + t262 * t436;
t533 = t198 * t441 - t255 * t445;
t337 = t353 - t478;
t261 = t337 * t440 + t637;
t263 = t337 * t444 - t638;
t199 = -t261 * t433 + t263 * t436;
t532 = t199 * t441 + t252 * t445;
t470 = t444 * t475;
t473 = t440 * t339;
t292 = -t473 - t470;
t471 = t444 * t339;
t472 = t440 * t475;
t293 = -t471 + t472;
t233 = -t292 * t433 + t293 * t436;
t531 = t233 * t441 - t380 * t445;
t269 = -t317 * t436 - t433 * t679;
t362 = -t389 + t673;
t530 = t269 * t441 + t362 * t445;
t411 = t435 * t466 + t656;
t493 = t428 * t434 + t558;
t279 = t604 + (t437 * (-g(3) * t615 + t446 * t465 + t516) + t434 * (-pkin(2) * t435 * t586 - t411) + (t437 * (t428 * t493 - t437 * t556) + t434 * (-t434 * t556 - t493 * t567)) * pkin(10) + (t437 * t476 + (t491 * qJDD(1) + (t434 * t592 + t558) * qJD(1) * pkin(2)) * t435) * t442) * t441;
t527 = t278 * t445 - t279 * t441;
t228 = t278 * t441 + t279 * t445;
t372 = -t389 + t672;
t298 = -t372 * t433 + t692;
t524 = t298 * t441 + t322 * t445;
t371 = -t672 + t673;
t299 = t371 * t436 - t634;
t523 = t299 * t441 + t318 * t445;
t343 = t406 * t591 + t468;
t522 = -t343 * t441 + t347 * t445;
t520 = t382 * t445 + t630;
t392 = t672 - t671;
t519 = t392 * t441 - t629;
t393 = -t403 + t671;
t518 = t393 * t445 + t684;
t517 = t379 * t441 + t683;
t245 = t444 * t276 + t473;
t246 = -t440 * t276 + t471;
t185 = -t245 * t433 + t246 * t436;
t512 = t185 * t441 + t579;
t247 = t440 * t277 + t470;
t248 = t444 * t277 - t472;
t186 = -t247 * t433 + t248 * t436;
t511 = t186 * t441 - t579;
t312 = -t390 * t625 + t433 * t561;
t510 = t312 * t441 - t577;
t314 = t361 * t436 - t391 * t626;
t509 = t314 * t441 + t577;
t10 = -pkin(3) * t21 - pkin(4) * t38 - t553;
t15 = t22 * t445 + t441 * t50;
t11 = pkin(11) * t39 + (-pkin(12) * t440 + t570) * t50;
t16 = -pkin(11) * t38 + (-pkin(12) * t444 + t663) * t50;
t4 = -qJ(4) * t21 - t11 * t433 + t16 * t436;
t503 = pkin(10) * t15 + t10 * t445 + t4 * t441;
t43 = -pkin(12) * t151 - t50;
t29 = pkin(11) * t127 + t151 * t570 + t43 * t440;
t33 = -pkin(11) * t126 + t151 * t663 + t43 * t444;
t14 = -qJ(4) * t83 - t29 * t433 + t33 * t436;
t485 = pkin(5) * t264 + pkin(12) * t153 + t51;
t27 = -pkin(3) * t83 - pkin(4) * t126 - t485;
t63 = t151 * t441 + t445 * t84;
t502 = pkin(10) * t63 + t14 * t441 + t27 * t445;
t64 = -pkin(5) * t173 + t71;
t87 = -pkin(12) * t173 + t646;
t36 = -pkin(4) * t173 + pkin(11) * t137 + t440 * t87 + t444 * t64;
t40 = -pkin(11) * t136 - t440 * t64 + t444 * t87;
t19 = -qJ(4) * t95 - t36 * t433 + t40 * t436;
t497 = pkin(5) * t216 + pkin(12) * t174 - t645;
t46 = -pkin(3) * t95 - pkin(4) * t136 - t497;
t73 = t173 * t441 + t445 * t96;
t501 = pkin(10) * t73 + t19 * t441 + t445 * t46;
t65 = -pkin(5) * t176 + t72;
t88 = -pkin(12) * t176 + t645;
t37 = -pkin(4) * t176 + pkin(11) * t139 + t440 * t88 + t444 * t65;
t41 = -pkin(11) * t138 - t440 * t65 + t444 * t88;
t20 = -qJ(4) * t97 - t37 * t433 + t41 * t436;
t496 = pkin(5) * t220 + pkin(12) * t177 + t646;
t47 = -pkin(3) * t97 - pkin(4) * t138 - t496;
t75 = t176 * t441 + t445 * t98;
t500 = pkin(10) * t75 + t20 * t441 + t445 * t47;
t62 = -pkin(4) * t225 + pkin(11) * t69;
t26 = -pkin(11) * t652 - qJ(4) * t44 - t433 * t62;
t31 = -pkin(3) * t44 - pkin(4) * t68;
t42 = t225 * t441 + t445 * t45;
t499 = pkin(10) * t42 + t26 * t441 + t31 * t445;
t154 = t172 * t445 + t251 * t441;
t81 = -pkin(3) * t171 - pkin(4) * t236 + t109;
t140 = -pkin(4) * t251 + pkin(11) * t237 - t643;
t159 = -pkin(11) * t236 + t644;
t82 = -qJ(4) * t171 - t140 * t433 + t159 * t436;
t495 = pkin(10) * t154 + t441 * t82 + t445 * t81;
t156 = t189 * t445 + t441 * t687;
t89 = -pkin(3) * t188 - pkin(4) * t249 + t110;
t143 = -pkin(4) * t687 + pkin(11) * t250 + t644;
t165 = -pkin(11) * t249 + t643;
t92 = -qJ(4) * t188 - t143 * t433 + t165 * t436;
t494 = pkin(10) * t156 + t441 * t92 + t445 * t89;
t105 = -pkin(3) * t133 - pkin(4) * t191;
t123 = t135 * t445 + t275 * t441;
t60 = -pkin(4) * t275 + pkin(11) * t193 + t69;
t61 = -pkin(11) * t191 - t68;
t34 = -qJ(4) * t133 - t433 * t60 + t436 * t61;
t492 = pkin(10) * t123 + t105 * t445 + t34 * t441;
t160 = -pkin(3) * t280 + t448;
t223 = -qJ(4) * t280 + t640;
t241 = t281 * t445 + t317 * t441;
t489 = pkin(10) * t241 + t160 * t445 + t223 * t441;
t161 = -pkin(3) * t286 + t181;
t224 = -qJ(4) * t286 + t639;
t244 = t287 * t445 + t441 * t679;
t488 = pkin(10) * t244 + t161 * t445 + t224 * t441;
t306 = t348 * t441 + t445 * t461;
t487 = pkin(10) * t306 + t228;
t116 = -qJ(4) * t268 - t128;
t238 = t270 * t445 + t330 * t441;
t482 = pkin(10) * t238 + t116 * t441 - t268 * t664;
t463 = t441 * t464;
t462 = t445 * t464;
t421 = t428 * t567;
t420 = t428 * t568;
t419 = (t431 - t432) * t594;
t418 = -t427 - t565;
t415 = -t566 - t427;
t410 = -t420 + t480;
t409 = t420 + t480;
t408 = -t421 + t481;
t384 = t403 - t672;
t376 = t437 * t462;
t375 = t434 * t462;
t346 = -t404 * t591 + t457;
t342 = t404 * t575 + t406 * t574 + t437 * t460;
t328 = (t390 * t436 + t391 * t433) * t404;
t327 = (t390 * t433 - t391 * t436) * t404;
t316 = t381 * t619 + (t404 * t437 - t574) * t406;
t315 = -t375 + (-t406 * t437 - t575) * t404;
t313 = t361 * t433 + t391 * t625;
t311 = -t390 * t626 - t436 * t561;
t301 = t434 * t519 + t437 * t461;
t300 = t348 * t437 + t434 * t518;
t297 = t371 * t433 + t633;
t296 = t372 * t436 + t693;
t295 = -t346 * t434 + t437 * t520;
t294 = t346 * t437 + t434 * t520;
t289 = -t343 * t434 + t437 * t517;
t288 = t343 * t437 + t434 * t517;
t282 = t384 * t437 + t434 * t522;
t267 = -t317 * t433 + t436 * t679;
t265 = t327 * t437 + t328 * t619 - t375;
t243 = t313 * t437 + t434 * t509;
t242 = t311 * t437 + t434 * t510;
t232 = t292 * t436 + t293 * t433;
t227 = t297 * t437 + t434 * t523;
t226 = t296 * t437 + t434 * t524;
t221 = t286 * t437 + t434 * t525;
t209 = t280 * t437 + t434 * t526;
t206 = t310 * t434 - t437 * t527;
t205 = -t310 * t437 - t434 * t527;
t204 = t267 * t437 + t434 * t530;
t197 = t261 * t436 + t263 * t433;
t196 = t260 * t436 + t262 * t433;
t194 = t268 * t437 + t434 * t529;
t187 = -pkin(3) * t679 + qJ(4) * t287 + t640;
t184 = t247 * t436 + t248 * t433;
t183 = t245 * t436 + t246 * t433;
t182 = -pkin(3) * t317 + qJ(4) * t281 - t639;
t178 = pkin(2) * t295 - t279 * t437 + t434 * t550;
t175 = pkin(2) * t289 - t278 * t437 + t434 * t551;
t166 = t232 * t437 + t434 * t531;
t162 = pkin(2) * t273 + t434 * t487;
t155 = pkin(2) * t206 + t228 * t660;
t141 = t207 * t436 + t208 * t433;
t132 = t190 * t436 + t192 * t433;
t125 = t184 * t437 + t434 * t511;
t124 = t183 * t437 + t434 * t512;
t120 = t168 * t436 + t170 * t433;
t119 = t167 * t436 + t169 * t433;
t118 = t197 * t437 + t434 * t532;
t117 = t196 * t437 + t434 * t533;
t114 = t188 * t437 + t434 * t534;
t113 = -pkin(3) * t258 + qJ(4) * t129;
t112 = t129 * t445 + t258 * t441;
t111 = -pkin(3) * t330 + qJ(4) * t270 + t129;
t106 = t171 * t437 + t434 * t535;
t100 = t147 * t436 + t149 * t433;
t99 = t146 * t436 + t148 * t433;
t93 = t130 * t436 + t131 * t433;
t91 = t141 * t437 + t434 * t536;
t90 = t132 * t437 + t434 * t538;
t85 = t133 * t437 + t434 * t537;
t80 = pkin(2) * t222 + t187 * t437 + t434 * t488;
t79 = -pkin(3) * t687 + qJ(4) * t189 + t143 * t436 + t165 * t433;
t78 = -t128 * t434 + t437 * t539;
t77 = t128 * t437 + t434 * t539;
t76 = pkin(2) * t210 + t182 * t437 + t434 * t489;
t74 = -pkin(3) * t251 + qJ(4) * t172 + t140 * t436 + t159 * t433;
t67 = t120 * t437 + t434 * t540;
t66 = t119 * t437 + t434 * t541;
t59 = pkin(2) * t195 + t111 * t437 + t434 * t482;
t58 = t100 * t437 + t434 * t542;
t57 = t434 * t543 + t437 * t99;
t55 = t434 * t545 + t437 * t97;
t53 = t434 * t546 + t437 * t95;
t52 = t434 * t548 + t437 * t93;
t48 = t434 * t547 + t437 * t83;
t35 = pkin(2) * t78 + t113 * t437 + (pkin(10) * t112 + t128 * t552) * t434;
t32 = -pkin(3) * t275 + qJ(4) * t135 + t433 * t61 + t436 * t60;
t30 = pkin(2) * t115 + t434 * t494 + t437 * t79;
t28 = pkin(2) * t107 + t434 * t495 + t437 * t74;
t24 = t434 * t544 + t437 * t44;
t23 = -pkin(3) * t225 - pkin(11) * t653 + qJ(4) * t45 + t436 * t62;
t18 = -pkin(3) * t176 + qJ(4) * t98 + t37 * t436 + t41 * t433;
t17 = -pkin(3) * t173 + qJ(4) * t96 + t36 * t436 + t40 * t433;
t13 = -pkin(3) * t151 + qJ(4) * t84 + t29 * t436 + t33 * t433;
t12 = pkin(2) * t86 + t32 * t437 + t434 * t492;
t8 = t21 * t437 + t434 * t549;
t7 = pkin(2) * t56 + t18 * t437 + t434 * t500;
t6 = pkin(2) * t54 + t17 * t437 + t434 * t501;
t5 = pkin(2) * t25 + t23 * t437 + t434 * t499;
t3 = pkin(2) * t49 + t13 * t437 + t434 * t502;
t2 = -pkin(3) * t50 + qJ(4) * t22 + t11 * t436 + t16 * t433;
t1 = pkin(2) * t9 + t2 * t437 + t434 * t503;
t70 = [0, 0, 0, 0, 0, qJDD(1), t504, t505, 0, 0, (t430 * t587 - t597 * t675) * t442, t438 * t419 + (t442 * t410 + (t421 + t481) * t446) * t435, t438 * t408 + (t605 + t446 * (t427 - t566)) * t435, (t430 * t586 + t598 * t675) * t446, t438 * t409 + (t442 * (-t427 + t565) + t602) * t435, t438 * t557, (-t395 + pkin(1) * (t416 * t446 + t418 * t442)) * t438 + (t446 * t411 + pkin(1) * t410 + pkin(9) * (t418 * t446 - t605)) * t435, -t411 * t616 - t438 * t396 + pkin(1) * ((t415 * t446 - t417 * t442) * t438 + (-qJD(1) * t560 - t587) * t430) + (-t442 * t415 - t602) * t662, pkin(1) * ((-t408 * t446 + t409 * t442) * t438 - t678 * t430 * t593) + (t442 * t408 + t409 * t446) * t662 + t677 * t435, pkin(1) * (t435 * t411 + (-t395 * t446 + t396 * t442) * t438) + t677 * t662, t438 * t316 + (t442 * (t381 * t445 + t441 * t623) + t446 * (t381 * t614 + (-t404 * t434 - t572) * t406)) * t435, t438 * t282 + (t442 * (-t343 * t445 - t347 * t441) + t446 * (-t384 * t434 + t437 * t522)) * t435, t438 * t300 + (t442 * (-t393 * t441 + t683) + t446 * (-t348 * t434 + t437 * t518)) * t435, (-t404 * t622 + t463) * t616 + (-t376 + (t406 * t434 - t573) * t404) * t615 + t438 * t315, t438 * t301 + (t442 * (t392 * t445 + t630) + t446 * (-t434 * t461 + t437 * t519)) * t435, (t404 * t445 - t406 * t441) * t414 * t616 + (t404 * t573 + t406 * t572 - t434 * t460) * t615 + t438 * t342, (t175 + pkin(1) * (t289 * t446 + t329 * t442)) * t438 + (t442 * (-t636 + (-t288 * t434 - t289 * t437) * pkin(10)) + t446 * (-pkin(2) * t288 + t278 * t434 + t437 * t551) - pkin(1) * t288 + pkin(9) * (-t442 * t289 + t329 * t446)) * t435, (t178 + pkin(1) * (t295 * t446 + t331 * t442)) * t438 + (t442 * (-t635 + (-t294 * t434 - t295 * t437) * pkin(10)) + t446 * (-pkin(2) * t294 + t279 * t434 + t437 * t550) - pkin(1) * t294 + pkin(9) * (-t442 * t295 + t331 * t446)) * t435, (t162 + pkin(1) * (t273 * t446 + t306 * t442)) * t438 + (t442 * t527 + pkin(9) * (t306 * t446 - t607) + t508 * (t366 * t437 + t434 * t521) + (-pkin(10) * t607 + t446 * t487) * t437) * t435, (t155 + pkin(1) * (t206 * t446 + t228 * t442)) * t438 + (pkin(9) * (-t442 * t206 + t228 * t446) + t571 * t205 + (t442 * (-t205 * t434 - t206 * t437) + t228 * t613) * pkin(10)) * t435, t438 * t243 + (t442 * (t314 * t445 - t578) + t446 * (-t313 * t434 + t437 * t509)) * t435, t438 * t204 + (t442 * (t269 * t445 - t362 * t441) + t446 * (-t267 * t434 + t437 * t530)) * t435, t438 * t226 + (t442 * (t298 * t445 - t322 * t441) + t446 * (-t296 * t434 + t437 * t524)) * t435, t438 * t242 + (t442 * (t312 * t445 + t578) + t446 * (-t311 * t434 + t437 * t510)) * t435, t438 * t227 + (t442 * (t299 * t445 - t318 * t441) + t446 * (-t297 * t434 + t437 * t523)) * t435, (t445 * t328 + t463) * t616 + (-t327 * t434 + t328 * t614 - t376) * t615 + t438 * t265, (t76 + pkin(1) * (t210 * t446 + t241 * t442)) * t438 + (t442 * (-t160 * t441 - t209 * t660 + t223 * t445) + t446 * (-pkin(2) * t209 - t182 * t434) - pkin(1) * t209 + pkin(9) * (t241 * t446 - t609) + (-pkin(10) * t609 + t446 * t489) * t437) * t435, (t80 + pkin(1) * (t222 * t446 + t244 * t442)) * t438 + (t442 * (-t161 * t441 - t221 * t660 + t224 * t445) + t446 * (-pkin(2) * t221 - t187 * t434) - pkin(1) * t221 + pkin(9) * (t244 * t446 - t608) + (-pkin(10) * t608 + t446 * t488) * t437) * t435, (t59 + pkin(1) * (t195 * t446 + t238 * t442)) * t438 + (t442 * (t116 * t445 - t194 * t660 + t268 * t665) + t446 * (-pkin(2) * t194 - t111 * t434) - pkin(1) * t194 + pkin(9) * (t238 * t446 - t610) + (-pkin(10) * t610 + t446 * t482) * t437) * t435, (t35 + pkin(1) * (t112 * t442 + t446 * t78)) * t438 + (t446 * (-pkin(2) * t77 - t113 * t434) - pkin(1) * t77 + pkin(9) * (t112 * t446 - t442 * t78) + (t442 * (-t434 * t77 - t437 * t78) + t112 * t613) * pkin(10) + (t442 * (-qJ(4) * t445 + t665) + t552 * t613) * t128) * t435, t438 * t125 + (t442 * (t186 * t445 + t580) + t446 * (-t184 * t434 + t437 * t511)) * t435, t438 * t90 + (t442 * (t134 * t445 + t308 * t441) + t446 * (-t132 * t434 + t437 * t538)) * t435, t438 * t117 + (t442 * (t198 * t445 + t255 * t441) + t446 * (-t196 * t434 + t437 * t533)) * t435, t438 * t124 + (t442 * (t185 * t445 - t580) + t446 * (-t183 * t434 + t437 * t512)) * t435, t438 * t118 + (t442 * (t199 * t445 - t252 * t441) + t446 * (-t197 * t434 + t437 * t532)) * t435, t438 * t166 + (t442 * (t233 * t445 + t380 * t441) + t446 * (-t232 * t434 + t437 * t531)) * t435, (t28 + pkin(1) * (t107 * t446 + t154 * t442)) * t438 + (t442 * (-t106 * t660 - t441 * t81 + t445 * t82) + t446 * (-pkin(2) * t106 - t434 * t74) - pkin(1) * t106 + pkin(9) * (t154 * t446 - t612) + (-pkin(10) * t612 + t446 * t495) * t437) * t435, (t30 + pkin(1) * (t115 * t446 + t156 * t442)) * t438 + (t442 * (-t114 * t660 - t441 * t89 + t445 * t92) + t446 * (-pkin(2) * t114 - t434 * t79) - pkin(1) * t114 + pkin(9) * (t156 * t446 - t611) + (-pkin(10) * t611 + t446 * t494) * t437) * t435, (t12 + pkin(1) * (t123 * t442 + t446 * t86)) * t438 + (t442 * (-t105 * t441 + t34 * t445 - t660 * t85) + t446 * (-pkin(2) * t85 - t32 * t434) - pkin(1) * t85 + pkin(9) * (t123 * t446 - t647) + (-pkin(10) * t647 + t446 * t492) * t437) * t435, (t5 + pkin(1) * (t25 * t446 + t42 * t442)) * t438 + (t442 * (-t24 * t660 + t26 * t445 - t31 * t441) + t446 * (-pkin(2) * t24 - t23 * t434) - pkin(1) * t24 + pkin(9) * (t42 * t446 - t651) + (-pkin(10) * t651 + t446 * t499) * t437) * t435, t438 * t67 + (t442 * (t122 * t445 + t213 * t441) + t446 * (-t120 * t434 + t437 * t540)) * t435, t438 * t52 + (t442 * (t150 * t441 + t445 * t94) + t446 * (-t434 * t93 + t437 * t548)) * t435, t438 * t57 + (t442 * (t101 * t445 + t200 * t441) + t446 * (-t434 * t99 + t437 * t543)) * t435, t438 * t66 + (t442 * (t121 * t445 - t211 * t441) + t446 * (-t119 * t434 + t437 * t541)) * t435, t438 * t58 + (t442 * (t102 * t445 + t201 * t441) + t446 * (-t100 * t434 + t437 * t542)) * t435, t438 * t91 + (t442 * (t142 * t445 + t239 * t441) + t446 * (-t141 * t434 + t437 * t536)) * t435, (t6 + pkin(1) * (t442 * t73 + t446 * t54)) * t438 + (t442 * (t19 * t445 - t441 * t46 - t53 * t660) + t446 * (-pkin(2) * t53 - t17 * t434) - pkin(1) * t53 + pkin(9) * (t446 * t73 - t649) + (-pkin(10) * t649 + t446 * t501) * t437) * t435, (t7 + pkin(1) * (t442 * t75 + t446 * t56)) * t438 + (t442 * (t20 * t445 - t441 * t47 - t55 * t660) + t446 * (-pkin(2) * t55 - t18 * t434) - pkin(1) * t55 + pkin(9) * (t446 * t75 - t648) + (-pkin(10) * t648 + t446 * t500) * t437) * t435, (t3 + pkin(1) * (t442 * t63 + t446 * t49)) * t438 + (t442 * (t14 * t445 - t27 * t441 - t48 * t660) + t446 * (-pkin(2) * t48 - t13 * t434) - pkin(1) * t48 + pkin(9) * (t446 * t63 - t650) + (-pkin(10) * t650 + t446 * t502) * t437) * t435, (t1 + pkin(1) * (t15 * t442 + t446 * t9)) * t438 + (t442 * (-t10 * t441 + t4 * t445 - t660 * t8) + t446 * (-pkin(2) * t8 - t2 * t434) - pkin(1) * t8 + pkin(9) * (t15 * t446 - t655) + (-pkin(10) * t655 + t446 * t503) * t437) * t435; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t426, t419, t408, t426, t409, t557, -t395, -t396, 0, 0, t316, t282, t300, t315, t301, t342, t175, t178, t162, t155, t243, t204, t226, t242, t227, t265, t76, t80, t59, t35, t125, t90, t117, t124, t118, t166, t28, t30, t12, t5, t67, t52, t57, t66, t58, t91, t6, t7, t3, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t624, t384, t348, -t624, t461, t460, -t278, -t279, 0, 0, t313, t267, t296, t311, t297, t327, t182, t187, t111, t113, t184, t132, t196, t183, t197, t232, t74, t79, t32, t23, t120, t93, t99, t119, t100, t141, t17, t18, t13, t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t317, t679, t330, t258, 0, 0, 0, 0, 0, 0, t251, t687, t275, t225, 0, 0, 0, 0, 0, 0, t173, t176, t151, t50; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t309, t308, t255, -t309, -t252, t380, -t109, -t110, 0, 0, t213, t150, t200, -t211, t201, t239, t497, t496, t485, t553; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t291, t290, t219, -t291, -t215, t274, -t71, -t72, 0, 0;];
tauJ_reg  = t70;
