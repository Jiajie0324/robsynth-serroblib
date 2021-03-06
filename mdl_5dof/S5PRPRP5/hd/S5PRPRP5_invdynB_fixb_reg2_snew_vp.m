% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S5PRPRP5
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
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d4,theta1,theta3]';
% 
% Output:
% tauB_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 15:39
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S5PRPRP5_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRPRP5_invdynB_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRPRP5_invdynB_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5PRPRP5_invdynB_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PRPRP5_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRPRP5_invdynB_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 15:38:49
% EndTime: 2019-12-05 15:39:01
% DurationCPUTime: 11.14s
% Computational Cost: add. (14557->437), mult. (33494->621), div. (0->0), fcn. (23297->8), ass. (0->328)
t535 = qJD(4) ^ 2;
t529 = cos(pkin(8));
t533 = cos(qJ(4));
t527 = sin(pkin(8));
t531 = sin(qJ(4));
t607 = t527 * t531;
t487 = (-t529 * t533 + t607) * qJD(2);
t613 = t487 ^ 2;
t472 = t613 - t535;
t548 = t527 * t533 + t529 * t531;
t489 = t548 * qJD(2);
t444 = t489 * t487;
t621 = qJDD(4) + t444;
t587 = t533 * t621;
t388 = t531 * t472 + t587;
t596 = t531 * t621;
t394 = t533 * t472 - t596;
t339 = t527 * t388 - t529 * t394;
t576 = qJDD(2) * t529;
t485 = qJDD(2) * t607 - t533 * t576;
t532 = sin(qJ(2));
t534 = cos(qJ(2));
t321 = t534 * t339 + t532 * t485;
t333 = t529 * t388 + t527 * t394;
t528 = sin(pkin(7));
t530 = cos(pkin(7));
t720 = t528 * t321 + t530 * t333;
t719 = t530 * t321 - t528 * t333;
t484 = t489 ^ 2;
t432 = t535 + t484;
t373 = t533 * t432 + t596;
t399 = t531 * t432 - t587;
t313 = t529 * t373 - t527 * t399;
t718 = pkin(1) * t313;
t717 = qJ(3) * t313;
t343 = t527 * t373 + t529 * t399;
t716 = qJ(3) * t343;
t715 = t528 * t313;
t713 = t530 * t313;
t711 = t532 * t343;
t710 = t534 * t343;
t709 = -pkin(2) * t313 - pkin(3) * t373;
t708 = t532 * t339 - t534 * t485;
t622 = qJDD(4) - t444;
t595 = t531 * t622;
t624 = -t613 - t535;
t630 = t533 * t624 - t595;
t425 = t533 * t622;
t636 = t531 * t624 + t425;
t648 = t527 * t630 + t529 * t636;
t581 = t489 * qJD(4);
t438 = t485 + 0.2e1 * t581;
t649 = -t527 * t636 + t529 * t630;
t670 = t532 * t438 + t534 * t649;
t687 = t528 * t648 + t530 * t670;
t707 = qJ(1) * t687;
t623 = t548 * qJDD(2);
t634 = -t533 * t485 + t531 * t623;
t635 = -t531 * t485 - t533 * t623;
t646 = t527 * t634 + t529 * t635;
t413 = -t613 - t484;
t647 = -t527 * t635 + t529 * t634;
t669 = t532 * t413 + t534 * t647;
t688 = t528 * t646 + t530 * t669;
t706 = qJ(1) * t688;
t689 = t528 * t670 - t530 * t648;
t705 = qJ(1) * t689;
t690 = t528 * t669 - t530 * t646;
t704 = qJ(1) * t690;
t473 = -t484 + t535;
t655 = t533 * t473 + t595;
t656 = -t531 * t473 + t425;
t668 = -t527 * t656 - t529 * t655;
t667 = -t527 * t655 + t529 * t656;
t685 = t532 * t623 + t534 * t667;
t703 = t528 * t685 + t530 * t668;
t702 = -t528 * t668 + t530 * t685;
t671 = -t534 * t413 + t532 * t647;
t700 = pkin(5) * t671;
t672 = -t534 * t438 + t532 * t649;
t699 = pkin(5) * t672;
t698 = pkin(6) * t373;
t697 = pkin(6) * t399;
t694 = -pkin(1) * t671 + pkin(2) * t413 - qJ(3) * t647;
t693 = -pkin(1) * t672 + pkin(2) * t438 - qJ(3) * t649;
t692 = -pkin(1) * t646 + pkin(5) * t669;
t691 = -pkin(1) * t648 + pkin(5) * t670;
t686 = t532 * t667 - t534 * t623;
t682 = qJ(3) * t646;
t681 = qJ(3) * t648;
t481 = t487 * qJD(4);
t541 = t623 - t481;
t637 = t481 - t541;
t676 = t637 * qJ(5);
t284 = -pkin(2) * t646 - pkin(3) * t635;
t675 = -pkin(2) * t648 - pkin(3) * t636;
t663 = pkin(6) * t630;
t662 = pkin(6) * t635;
t661 = pkin(6) * t636;
t441 = t484 - t613;
t659 = t532 * t441;
t657 = t534 * t441;
t507 = t530 * g(1) + t528 * g(2);
t583 = g(3) - qJDD(1);
t470 = -t534 * t507 - t532 * t583;
t612 = qJD(2) ^ 2;
t638 = -t612 * pkin(2) + qJDD(2) * qJ(3) + 0.2e1 * qJD(2) * qJD(3) + t470;
t439 = -t485 - t581;
t566 = t533 * t481;
t547 = -t531 * t439 + t566;
t551 = t533 * t439 + t481 * t531;
t614 = -t527 * t547 - t529 * t551;
t568 = t532 * t444;
t615 = -t527 * t551 + t529 * t547;
t629 = t534 * t615 - t568;
t654 = t528 * t629 + t530 * t614;
t546 = (-t531 * t487 - t533 * t489) * qJD(4);
t468 = t531 * t581;
t550 = t468 - t566;
t617 = -t527 * t550 - t529 * t546;
t616 = -t527 * t546 + t529 * t550;
t633 = t532 * qJDD(4) + t534 * t616;
t653 = t528 * t633 + t530 * t617;
t652 = -t528 * t614 + t530 * t629;
t651 = -t528 * t617 + t530 * t633;
t650 = -pkin(3) * t413 + pkin(6) * t634;
t645 = 2 * qJD(5);
t523 = t527 ^ 2;
t537 = t529 ^ 2;
t620 = t612 * (t523 + t537);
t493 = t529 * t620;
t572 = t532 * qJDD(2);
t462 = t534 * t493 + t529 * t572;
t644 = t528 * t462;
t641 = t530 * t462;
t518 = t537 * t612;
t580 = t523 * t612;
t501 = t518 + t580;
t567 = t534 * t444;
t632 = t532 * t615 + t567;
t631 = -t534 * qJDD(4) + t532 * t616;
t628 = t528 * t583;
t627 = t530 * t583;
t506 = t528 * g(1) - t530 * g(2);
t496 = t530 * t506;
t454 = -t528 * t507 + t496;
t495 = t529 * t506;
t384 = -t495 + (pkin(3) * t612 * t529 - pkin(6) * qJDD(2) - t638) * t527;
t412 = -t527 * t506 + t638 * t529;
t387 = -pkin(3) * t518 + pkin(6) * t576 + t412;
t331 = t531 * t384 + t533 * t387;
t429 = t487 * pkin(4) - t489 * qJ(5);
t549 = qJDD(4) * qJ(5) + qJD(4) * t645 - t487 * t429 + t331;
t404 = t531 * t541 + t533 * t581;
t405 = t533 * t541 - t468;
t350 = -t529 * t404 - t527 * t405;
t353 = -t527 * t404 + t529 * t405;
t552 = t534 * t353 + t568;
t619 = t530 * t350 + t528 * t552;
t618 = -t528 * t350 + t530 * t552;
t610 = pkin(4) * t533;
t526 = qJDD(2) * pkin(2);
t330 = -t533 * t384 + t531 * t387;
t276 = -t533 * t330 + t531 * t331;
t609 = t527 * t276;
t608 = t527 * t529;
t571 = t534 * qJDD(2);
t564 = t529 * t571;
t579 = t532 * t612;
t467 = t527 * t564 - t579 * t608;
t605 = t528 * t467;
t505 = t571 - t579;
t604 = t528 * t505;
t603 = t528 * t506;
t601 = t529 * t276;
t600 = t530 * t467;
t599 = t530 * t505;
t598 = t531 * t637;
t556 = t532 * t507 - t534 * t583;
t544 = t612 * qJ(3) - qJDD(3) + t526 + t556;
t542 = pkin(3) * t576 + t501 * pkin(6) + t544;
t597 = t531 * t542;
t594 = t531 * t438;
t590 = t532 * t544;
t588 = t533 * t542;
t586 = t533 * t438;
t585 = t534 * t544;
t582 = -t413 - t535;
t575 = t523 * qJDD(2);
t574 = t528 * qJDD(2);
t573 = t530 * qJDD(2);
t517 = t537 * qJDD(2);
t565 = t527 * t576;
t563 = -qJ(5) * t531 - pkin(3);
t562 = t544 + t526;
t411 = t638 * t527 + t495;
t359 = t527 * t411 + t529 * t412;
t499 = t517 + t575;
t448 = t532 * t499 + t534 * t501;
t449 = t534 * t499 - t532 * t501;
t561 = -pkin(1) * t448 - pkin(2) * t501 + qJ(1) * t449 - qJ(3) * t499 - t359;
t492 = t527 * t620;
t457 = t532 * t492 - t527 * t571;
t460 = t534 * t492 + t527 * t572;
t560 = -pkin(1) * t457 + qJ(1) * t460 - qJ(3) * t492 + t527 * t562;
t459 = -t532 * t493 + t564;
t559 = -pkin(1) * t459 - qJ(1) * t462 + qJ(3) * t493 - t529 * t562;
t504 = t534 * t612 + t572;
t558 = pkin(1) * t505 + qJ(1) * t504 + t556;
t557 = -pkin(1) * t504 + qJ(1) * t505 - t470;
t277 = t531 * t330 + t533 * t331;
t417 = t534 * t470 - t532 * t556;
t455 = -t530 * t507 - t603;
t554 = t489 * t429 + qJDD(5) + t330;
t553 = t532 * t353 - t567;
t461 = pkin(5) * t504 - t534 * t506;
t458 = -pkin(5) * t505 - t532 * t506;
t358 = t529 * t411 - t527 * t412;
t416 = -t532 * t470 - t534 * t556;
t545 = -qJDD(4) * pkin(4) + t554;
t540 = -t439 * pkin(4) - t542 + t676;
t539 = t489 * t645 - t540;
t502 = t518 - t580;
t500 = t517 - t575;
t491 = t530 * t504;
t490 = t528 * t504;
t466 = t504 * t608;
t452 = t530 * t460;
t451 = t528 * t460;
t450 = t534 * t500 - t532 * t502;
t440 = t623 - 0.2e1 * t481;
t386 = t530 * t417 - t603;
t385 = t528 * t417 + t496;
t379 = -t531 * t440 - t586;
t377 = t533 * t440 - t594;
t363 = t586 - t598;
t362 = t533 * t637 + t594;
t356 = -t588 + t698;
t355 = -pkin(5) * t457 - t532 * t412 - t529 * t585;
t354 = -pkin(5) * t459 - t532 * t411 - t527 * t585;
t347 = -t597 - t661;
t328 = -pkin(5) * t448 + t534 * t358;
t327 = t534 * t359 - t590;
t326 = t532 * t359 + t585;
t323 = -pkin(3) * t440 - t597 + t697;
t319 = -t527 * t377 + t529 * t379;
t317 = -t529 * t377 - t527 * t379;
t311 = -pkin(3) * t438 + t588 + t663;
t305 = pkin(4) * t623 + qJ(5) * t485 + t284;
t304 = t532 * t440 + t710;
t302 = -t534 * t440 + t711;
t300 = (pkin(4) * qJD(4) - (2 * qJD(5))) * t489 + t540;
t298 = -t527 * t362 + t529 * t363;
t297 = -t529 * t362 - t527 * t363;
t296 = t535 * qJ(5) - t545;
t295 = -t535 * pkin(4) + t549;
t294 = t534 * t319 + t659;
t291 = (-t438 - t581) * pkin(4) + t539;
t288 = t532 * t637 - t710;
t287 = -t534 * t637 - t711;
t286 = -pkin(4) * t581 + t539 - t676;
t285 = t534 * t298 - t659;
t281 = qJ(5) * t582 + t545;
t280 = pkin(4) * t582 + t549;
t279 = t530 * t327 - t358 * t528;
t278 = t528 * t327 + t358 * t530;
t275 = -pkin(1) * t326 - pkin(2) * t544 - qJ(3) * t359;
t274 = t530 * t304 - t715;
t272 = t528 * t304 + t713;
t270 = -qJ(5) * t586 - t531 * t291 - t661;
t269 = pkin(3) * t542 + pkin(6) * t277;
t268 = t331 - t709;
t267 = t533 * t291 + t438 * t563 + t663;
t266 = -t276 - t662;
t265 = pkin(4) * t598 + t533 * t286 - t698;
t264 = -pkin(5) * t326 - (pkin(2) * t532 - qJ(3) * t534) * t358;
t261 = t330 + t675;
t258 = t530 * t288 + t715;
t257 = t528 * t288 - t713;
t256 = t533 * t295 - t531 * t296;
t255 = t531 * t295 + t533 * t296;
t254 = -t527 * t323 + t529 * t356 + t717;
t253 = t277 + t650;
t252 = -t697 + t531 * t286 - (pkin(3) + t610) * t637;
t251 = (-t624 - t535) * qJ(5) + (-qJDD(4) - t622) * pkin(4) + t554 + t675;
t250 = -t527 * t311 + t529 * t347 - t681;
t249 = -qJ(5) * t621 + (-t432 + t535) * pkin(4) - t549 + t709;
t248 = -t531 * t280 + t533 * t281 - t662;
t247 = t529 * t277 - t609;
t246 = t527 * t277 + t601;
t245 = t533 * t280 + t531 * t281 + t650;
t244 = -pkin(1) * t302 + pkin(2) * t440 - t529 * t323 - t527 * t356 - t716;
t243 = t534 * t247 - t532 * t542;
t242 = t532 * t247 + t534 * t542;
t241 = -t529 * t311 - t527 * t347 + t693;
t240 = -pkin(6) * t255 + (pkin(4) * t531 - qJ(5) * t533) * t300;
t239 = -t527 * t267 + t529 * t270 - t681;
t238 = -t527 * t255 + t529 * t256;
t237 = t529 * t255 + t527 * t256;
t236 = -pkin(2) * t246 - pkin(3) * t276;
t235 = -pkin(5) * t302 + t534 * t254 - t532 * t268;
t234 = -t527 * t253 + t529 * t266 - t682;
t233 = pkin(6) * t256 + (t563 - t610) * t300;
t232 = -t527 * t252 + t529 * t265 - t717;
t231 = t534 * t238 + t532 * t300;
t230 = t532 * t238 - t534 * t300;
t229 = -t529 * t267 - t527 * t270 + t693;
t228 = t534 * t250 - t532 * t261 - t699;
t227 = -pkin(6) * t601 - qJ(3) * t246 - t527 * t269;
t226 = t530 * t243 + t528 * t246;
t225 = t528 * t243 - t530 * t246;
t224 = -t529 * t253 - t527 * t266 + t694;
t223 = -pkin(1) * t287 + pkin(2) * t637 - t529 * t252 - t527 * t265 + t716;
t222 = -t527 * t245 + t529 * t248 - t682;
t221 = t534 * t234 - t532 * t284 - t700;
t220 = -t529 * t245 - t527 * t248 + t694;
t219 = t534 * t239 - t532 * t251 - t699;
t218 = t534 * t222 - t532 * t305 - t700;
t217 = -pkin(2) * t237 - pkin(3) * t255 - pkin(4) * t296 - qJ(5) * t295;
t216 = -pkin(5) * t287 + t534 * t232 - t532 * t249;
t215 = t530 * t231 + t528 * t237;
t214 = t528 * t231 - t530 * t237;
t213 = -pkin(1) * t242 - pkin(2) * t542 + pkin(6) * t609 - qJ(3) * t247 - t529 * t269;
t212 = -qJ(3) * t237 - t527 * t233 + t529 * t240;
t211 = -pkin(5) * t242 + t534 * t227 - t532 * t236;
t210 = -pkin(1) * t230 + pkin(2) * t300 - qJ(3) * t238 - t529 * t233 - t527 * t240;
t209 = -pkin(5) * t230 + t534 * t212 - t532 * t217;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t455, 0, 0, 0, 0, 0, 0, -t491, -t599, 0, t386, 0, 0, 0, 0, 0, 0, -t641, t452, t530 * t449, t279, 0, 0, 0, 0, 0, 0, t687, t274, t688, t226, 0, 0, 0, 0, 0, 0, t687, t688, t258, t215; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t454, 0, 0, 0, 0, 0, 0, -t490, -t604, 0, t385, 0, 0, 0, 0, 0, 0, -t644, t451, t528 * t449, t278, 0, 0, 0, 0, 0, 0, t689, t272, t690, t225, 0, 0, 0, 0, 0, 0, t689, t690, t257, t214; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t583, 0, 0, 0, 0, 0, 0, t505, -t504, 0, -t416, 0, 0, 0, 0, 0, 0, t459, t457, t448, t326, 0, 0, 0, 0, 0, 0, t672, t302, t671, t242, 0, 0, 0, 0, 0, 0, t672, t671, t287, t230; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t628, -t627, -t454, -qJ(1) * t454, 0, 0, t599, 0, -t491, t574, t530 * t458 + t528 * t558, t530 * t461 + t528 * t557, t530 * t416, -qJ(1) * t385 - (pkin(1) * t528 - pkin(5) * t530) * t416, t523 * t574 + t600, t530 * t450 + 0.2e1 * t528 * t565, t452, t517 * t528 - t600, t641, 0, t530 * t354 - t528 * t559, t530 * t355 - t528 * t560, t530 * t328 - t528 * t561, -qJ(1) * t278 + t530 * t264 - t528 * t275, t618, t530 * t294 - t528 * t317, t702, t652, -t719, t651, t530 * t228 - t528 * t241 - t705, -qJ(1) * t272 + t530 * t235 - t528 * t244, t530 * t221 - t528 * t224 - t704, -qJ(1) * t225 + t530 * t211 - t528 * t213, t618, t702, t530 * t285 - t528 * t297, t651, t719, t652, t530 * t219 - t528 * t229 - t705, t530 * t218 - t528 * t220 - t704, -qJ(1) * t257 + t530 * t216 - t528 * t223, -qJ(1) * t214 + t530 * t209 - t528 * t210; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t627, -t628, t455, qJ(1) * t455, 0, 0, t604, 0, -t490, -t573, t528 * t458 - t530 * t558, t528 * t461 - t530 * t557, t528 * t416, qJ(1) * t386 - (-pkin(1) * t530 - pkin(5) * t528) * t416, -t523 * t573 + t605, t528 * t450 - 0.2e1 * t530 * t565, t451, -t517 * t530 - t605, t644, 0, t528 * t354 + t530 * t559, t528 * t355 + t530 * t560, t528 * t328 + t530 * t561, qJ(1) * t279 + t528 * t264 + t530 * t275, t619, t528 * t294 + t530 * t317, t703, t654, -t720, t653, t528 * t228 + t530 * t241 + t707, qJ(1) * t274 + t528 * t235 + t530 * t244, t528 * t221 + t530 * t224 + t706, qJ(1) * t226 + t528 * t211 + t530 * t213, t619, t703, t528 * t285 + t530 * t297, t653, t720, t654, t528 * t219 + t530 * t229 + t707, t528 * t218 + t530 * t220 + t706, qJ(1) * t258 + t528 * t216 + t530 * t223, qJ(1) * t215 + t528 * t209 + t530 * t210; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t506, t507, 0, 0, 0, 0, t504, 0, t505, 0, -t461, t458, t417, pkin(1) * t506 + pkin(5) * t417, t466, t532 * t500 + t534 * t502, t457, -t466, -t459, 0, -pkin(5) * t462 + t534 * t411 - t527 * t590, pkin(5) * t460 + t534 * t412 - t529 * t590, pkin(5) * t449 + t532 * t358, pkin(5) * t327 - (-pkin(2) * t534 - qJ(3) * t532 - pkin(1)) * t358, t553, t532 * t319 - t657, t686, t632, -t708, t631, t532 * t250 + t534 * t261 + t691, pkin(5) * t304 + t532 * t254 + t534 * t268 + t718, t532 * t234 + t534 * t284 + t692, -pkin(1) * t246 + pkin(5) * t243 + t532 * t227 + t534 * t236, t553, t686, t532 * t298 + t657, t631, t708, t632, t532 * t239 + t534 * t251 + t691, t532 * t222 + t534 * t305 + t692, pkin(5) * t288 + t532 * t232 + t534 * t249 - t718, -pkin(1) * t237 + pkin(5) * t231 + t532 * t212 + t534 * t217;];
tauB_reg = t1;
