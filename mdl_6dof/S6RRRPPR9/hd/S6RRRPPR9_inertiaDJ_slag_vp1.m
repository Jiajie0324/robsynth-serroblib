% Calculate time derivative of joint inertia matrix for
% S6RRRPPR9
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d6,theta4]';
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
% MqD [6x6]
%   time derivative of inertia matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 16:20
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S6RRRPPR9_inertiaDJ_slag_vp11(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPPR9_inertiaDJ_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPPR9_inertiaDJ_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRPPR9_inertiaDJ_slag_vp1: pkin has to be [11x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRPPR9_inertiaDJ_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RRRPPR9_inertiaDJ_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RRRPPR9_inertiaDJ_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 16:11:42
% EndTime: 2019-03-09 16:12:34
% DurationCPUTime: 27.23s
% Computational Cost: add. (101095->1464), mult. (282757->1941), div. (0->0), fcn. (323915->12), ass. (0->579)
t547 = cos(pkin(6));
t552 = cos(qJ(2));
t553 = cos(qJ(1));
t696 = t552 * t553;
t549 = sin(qJ(2));
t550 = sin(qJ(1));
t699 = t549 * t550;
t528 = -t547 * t699 + t696;
t546 = sin(pkin(6));
t710 = sin(qJ(3));
t640 = t546 * t710;
t711 = cos(qJ(3));
t501 = t528 * t711 + t550 * t640;
t697 = t550 * t552;
t698 = t549 * t553;
t527 = t547 * t697 + t698;
t545 = sin(pkin(11));
t707 = cos(pkin(11));
t449 = t501 * t545 - t527 * t707;
t450 = t501 * t707 + t527 * t545;
t548 = sin(qJ(6));
t551 = cos(qJ(6));
t354 = t449 * t551 - t450 * t548;
t355 = t449 * t548 + t450 * t551;
t641 = t546 * t711;
t569 = -t528 * t710 + t550 * t641;
t239 = Icges(7,5) * t355 + Icges(7,6) * t354 + Icges(7,3) * t569;
t241 = Icges(7,4) * t355 + Icges(7,2) * t354 + Icges(7,6) * t569;
t243 = Icges(7,1) * t355 + Icges(7,4) * t354 + Icges(7,5) * t569;
t526 = t547 * t698 + t697;
t499 = t526 * t711 - t553 * t640;
t656 = t547 * t696;
t574 = t656 - t699;
t447 = t499 * t545 + t574 * t707;
t448 = t499 * t707 - t545 * t574;
t352 = t447 * t551 - t448 * t548;
t353 = t447 * t548 + t448 * t551;
t568 = -t526 * t710 - t553 * t641;
t100 = t239 * t568 + t241 * t352 + t243 * t353;
t524 = t547 * t710 + t549 * t641;
t632 = t546 * t707;
t494 = t524 * t545 + t552 * t632;
t701 = t546 * t552;
t495 = t524 * t707 - t545 * t701;
t430 = t494 * t551 - t495 * t548;
t431 = t494 * t548 + t495 * t551;
t523 = -t547 * t711 + t549 * t640;
t282 = Icges(7,5) * t431 + Icges(7,6) * t430 - Icges(7,3) * t523;
t283 = Icges(7,4) * t431 + Icges(7,2) * t430 - Icges(7,6) * t523;
t284 = Icges(7,1) * t431 + Icges(7,4) * t430 - Icges(7,5) * t523;
t133 = t282 * t568 + t283 * t352 + t284 * t353;
t482 = qJD(1) * t528 + qJD(2) * t574;
t607 = qJD(1) * t640;
t397 = qJD(3) * t568 + t482 * t711 + t550 * t607;
t481 = qJD(1) * t527 + qJD(2) * t526;
t330 = t397 * t545 - t481 * t707;
t331 = t397 * t707 + t481 * t545;
t190 = -qJD(6) * t353 + t330 * t551 - t331 * t548;
t191 = qJD(6) * t352 + t330 * t548 + t331 * t551;
t608 = qJD(1) * t641;
t396 = qJD(3) * t499 + t482 * t710 - t550 * t608;
t121 = Icges(7,5) * t191 + Icges(7,6) * t190 - Icges(7,3) * t396;
t123 = Icges(7,4) * t191 + Icges(7,2) * t190 - Icges(7,6) * t396;
t125 = Icges(7,1) * t191 + Icges(7,4) * t190 - Icges(7,5) * t396;
t238 = Icges(7,5) * t353 + Icges(7,6) * t352 + Icges(7,3) * t568;
t240 = Icges(7,4) * t353 + Icges(7,2) * t352 + Icges(7,6) * t568;
t242 = Icges(7,1) * t353 + Icges(7,4) * t352 + Icges(7,5) * t568;
t26 = t121 * t568 + t123 * t352 + t125 * t353 + t190 * t240 + t191 * t242 - t238 * t396;
t480 = -qJD(1) * t526 - qJD(2) * t527;
t395 = qJD(3) * t569 + t480 * t711 + t553 * t607;
t662 = qJD(2) * t552;
t479 = -qJD(1) * t656 - t553 * t662 + (qJD(2) * t547 + qJD(1)) * t699;
t328 = t395 * t545 + t479 * t707;
t329 = t395 * t707 - t479 * t545;
t188 = -qJD(6) * t355 + t328 * t551 - t329 * t548;
t189 = qJD(6) * t354 + t328 * t548 + t329 * t551;
t394 = qJD(3) * t501 + t480 * t710 - t553 * t608;
t120 = Icges(7,5) * t189 + Icges(7,6) * t188 - Icges(7,3) * t394;
t122 = Icges(7,4) * t189 + Icges(7,2) * t188 - Icges(7,6) * t394;
t124 = Icges(7,1) * t189 + Icges(7,4) * t188 - Icges(7,5) * t394;
t27 = t120 * t568 + t122 * t352 + t124 * t353 + t190 * t241 + t191 * t243 - t239 * t396;
t636 = t546 * t662;
t497 = -qJD(3) * t523 + t636 * t711;
t663 = qJD(2) * t549;
t453 = t497 * t545 - t632 * t663;
t637 = t546 * t663;
t454 = t497 * t707 + t545 * t637;
t280 = -qJD(6) * t431 + t453 * t551 - t454 * t548;
t281 = qJD(6) * t430 + t453 * t548 + t454 * t551;
t496 = qJD(3) * t524 + t636 * t710;
t192 = Icges(7,5) * t281 + Icges(7,6) * t280 - Icges(7,3) * t496;
t193 = Icges(7,4) * t281 + Icges(7,2) * t280 - Icges(7,6) * t496;
t194 = Icges(7,1) * t281 + Icges(7,4) * t280 - Icges(7,5) * t496;
t47 = t190 * t283 + t191 * t284 + t192 * t568 + t193 * t352 + t194 * t353 - t282 * t396;
t99 = t238 * t568 + t240 * t352 + t242 * t353;
t2 = -t100 * t394 - t133 * t496 + t26 * t568 + t27 * t569 - t396 * t99 - t47 * t523;
t724 = -t2 / 0.2e1;
t126 = t189 * rSges(7,1) + t188 * rSges(7,2) - t394 * rSges(7,3);
t723 = t329 * pkin(5) + t126;
t245 = t355 * rSges(7,1) + t354 * rSges(7,2) + rSges(7,3) * t569;
t722 = t450 * pkin(5) + t245;
t544 = t553 * pkin(1);
t702 = t546 * t550;
t667 = pkin(8) * t702 + t544;
t721 = -pkin(4) - pkin(5);
t720 = -t394 / 0.2e1;
t719 = -t396 / 0.2e1;
t718 = -t496 / 0.2e1;
t717 = t568 / 0.2e1;
t716 = t569 / 0.2e1;
t715 = -t523 / 0.2e1;
t714 = t550 / 0.2e1;
t713 = -rSges(6,1) - pkin(4);
t712 = rSges(7,3) + pkin(10);
t709 = -pkin(10) + qJ(4);
t144 = -t282 * t523 + t283 * t430 + t284 * t431;
t56 = -t523 * t192 + t430 * t193 + t431 * t194 + t280 * t283 + t281 * t284 - t496 * t282;
t708 = -t144 * t496 - t56 * t523;
t706 = Icges(3,4) * t549;
t705 = Icges(3,4) * t552;
t704 = qJ(4) * t394;
t703 = qJ(4) * t569;
t700 = t546 * t553;
t695 = -pkin(10) * t394 + t723;
t585 = -t191 * rSges(7,1) - t190 * rSges(7,2);
t127 = -t396 * rSges(7,3) - t585;
t694 = t331 * pkin(5) - t396 * pkin(10) + t127;
t195 = rSges(7,1) * t281 + rSges(7,2) * t280 - rSges(7,3) * t496;
t693 = pkin(5) * t454 - pkin(10) * t496 + t195;
t213 = t329 * rSges(5,1) - t328 * rSges(5,2) + t394 * rSges(5,3);
t621 = t395 * pkin(3) - qJD(4) * t569;
t268 = t621 + t704;
t692 = -t213 - t268;
t231 = t329 * pkin(4) + qJ(5) * t328 + qJD(5) * t449;
t691 = -t231 - t268;
t584 = -rSges(7,1) * t353 - rSges(7,2) * t352;
t244 = rSges(7,3) * t568 - t584;
t690 = pkin(5) * t448 + pkin(10) * t568 + t244;
t689 = pkin(10) * t569 + t722;
t269 = t397 * pkin(3) + t396 * qJ(4) - qJD(4) * t568;
t434 = pkin(3) * t499 - qJ(4) * t568;
t688 = t527 * t269 - t479 * t434;
t413 = t480 * pkin(2) - pkin(9) * t479;
t401 = t547 * t413;
t687 = t547 * t268 + t401;
t414 = t482 * pkin(2) + t481 * pkin(9);
t686 = -t269 - t414;
t285 = rSges(7,1) * t431 + rSges(7,2) * t430 - rSges(7,3) * t523;
t685 = pkin(5) * t495 - pkin(10) * t523 + t285;
t313 = rSges(5,1) * t448 - rSges(5,2) * t447 - rSges(5,3) * t568;
t684 = -t313 - t434;
t315 = t450 * rSges(5,1) - t449 * rSges(5,2) - rSges(5,3) * t569;
t493 = t501 * pkin(3);
t435 = t493 - t703;
t683 = -t315 - t435;
t682 = -t330 * qJ(5) - t447 * qJD(5);
t439 = t447 * qJ(5);
t358 = pkin(4) * t448 + t439;
t411 = t527 * t434;
t681 = t527 * t358 + t411;
t335 = pkin(4) * t454 + qJ(5) * t453 + qJD(5) * t494;
t400 = pkin(3) * t497 + qJ(4) * t496 + qJD(4) * t523;
t680 = -t335 - t400;
t343 = rSges(5,1) * t454 - rSges(5,2) * t453 + rSges(5,3) * t496;
t679 = -t343 - t400;
t359 = t450 * pkin(4) + qJ(5) * t449;
t425 = t435 * t637;
t678 = t359 * t637 + t425;
t677 = -t358 - t434;
t676 = -t359 - t435;
t399 = rSges(5,1) * t495 - rSges(5,2) * t494 + rSges(5,3) * t523;
t483 = pkin(3) * t524 + qJ(4) * t523;
t675 = t399 + t483;
t423 = rSges(4,1) * t497 - rSges(4,2) * t496 + rSges(4,3) * t637;
t664 = qJD(2) * t546;
t517 = (pkin(2) * t552 + pkin(9) * t549) * t664;
t674 = -t423 - t517;
t673 = t434 * t701 - t483 * t574;
t485 = t528 * pkin(2) + pkin(9) * t527;
t473 = t547 * t485;
t672 = t547 * t435 + t473;
t433 = pkin(4) * t495 + qJ(5) * t494;
t671 = t433 + t483;
t529 = (pkin(2) * t549 - pkin(9) * t552) * t546;
t666 = qJD(1) * t550;
t639 = t546 * t666;
t505 = t529 * t639;
t670 = t483 * t639 + t505;
t459 = rSges(4,1) * t524 - rSges(4,2) * t523 - rSges(4,3) * t701;
t669 = -t459 - t529;
t484 = pkin(2) * t526 - pkin(9) * t574;
t668 = t484 * t702 + t485 * t700;
t665 = qJD(1) * t553;
t659 = m(6) / 0.2e1 + m(7) / 0.2e1;
t30 = -t121 * t523 + t123 * t430 + t125 * t431 - t238 * t496 + t240 * t280 + t242 * t281;
t658 = -t30 / 0.2e1 - t47 / 0.2e1;
t31 = -t120 * t523 + t122 * t430 + t124 * t431 - t239 * t496 + t241 * t280 + t243 * t281;
t46 = t188 * t283 + t189 * t284 + t192 * t569 + t193 * t354 + t194 * t355 - t282 * t394;
t657 = -t46 / 0.2e1 - t31 / 0.2e1;
t212 = t329 * rSges(6,1) + t394 * rSges(6,2) + t328 * rSges(6,3);
t655 = -t212 + t691;
t654 = t547 * t231 + t687;
t232 = t331 * pkin(4) - t682;
t653 = -t232 + t686;
t652 = t269 * t701 - t400 * t574 + t481 * t483;
t582 = rSges(6,2) * t568 - rSges(6,3) * t447;
t312 = rSges(6,1) * t448 - t582;
t651 = -t312 + t677;
t314 = t450 * rSges(6,1) - rSges(6,2) * t569 + t449 * rSges(6,3);
t650 = -t314 + t676;
t342 = rSges(6,1) * t454 + rSges(6,2) * t496 + rSges(6,3) * t453;
t649 = -t342 + t680;
t648 = -t517 + t679;
t647 = t547 * t359 + t672;
t262 = t395 * rSges(4,1) - t394 * rSges(4,2) - t479 * rSges(4,3);
t638 = t546 * t665;
t646 = t413 * t700 + t414 * t702 + t484 * t638;
t398 = rSges(6,1) * t495 + rSges(6,2) * t523 + rSges(6,3) * t494;
t645 = t398 + t671;
t644 = -t529 - t675;
t643 = t433 * t639 + t670;
t375 = t480 * rSges(3,1) + t479 * rSges(3,2) + rSges(3,3) * t638;
t410 = t501 * rSges(4,1) + rSges(4,2) * t569 + t527 * rSges(4,3);
t467 = t528 * rSges(3,1) - t527 * rSges(3,2) + rSges(3,3) * t702;
t109 = -t238 * t523 + t240 * t430 + t242 * t431;
t635 = -t109 / 0.2e1 - t133 / 0.2e1;
t110 = -t239 * t523 + t241 * t430 + t243 * t431;
t134 = t282 * t569 + t283 * t354 + t284 * t355;
t634 = -t134 / 0.2e1 - t110 / 0.2e1;
t633 = -t550 * pkin(1) + pkin(8) * t700;
t631 = 2 * m(3);
t629 = 2 * m(4);
t627 = 2 * m(5);
t625 = 0.2e1 * m(6);
t623 = 0.2e1 * m(7);
t622 = t669 * t553;
t336 = Icges(6,5) * t454 + Icges(6,6) * t496 + Icges(6,3) * t453;
t338 = Icges(6,4) * t454 + Icges(6,2) * t496 + Icges(6,6) * t453;
t340 = Icges(6,1) * t454 + Icges(6,4) * t496 + Icges(6,5) * t453;
t388 = Icges(6,5) * t495 + Icges(6,6) * t523 + Icges(6,3) * t494;
t390 = Icges(6,4) * t495 + Icges(6,2) * t523 + Icges(6,6) * t494;
t392 = Icges(6,1) * t495 + Icges(6,4) * t523 + Icges(6,5) * t494;
t130 = t494 * t336 + t523 * t338 + t495 * t340 + t453 * t388 + t496 * t390 + t454 * t392;
t337 = Icges(5,5) * t454 - Icges(5,6) * t453 + Icges(5,3) * t496;
t339 = Icges(5,4) * t454 - Icges(5,2) * t453 + Icges(5,6) * t496;
t341 = Icges(5,1) * t454 - Icges(5,4) * t453 + Icges(5,5) * t496;
t389 = Icges(5,5) * t495 - Icges(5,6) * t494 + Icges(5,3) * t523;
t391 = Icges(5,4) * t495 - Icges(5,2) * t494 + Icges(5,6) * t523;
t393 = Icges(5,1) * t495 - Icges(5,4) * t494 + Icges(5,5) * t523;
t131 = t523 * t337 - t494 * t339 + t495 * t341 + t496 * t389 - t453 * t391 + t454 * t393;
t420 = Icges(4,5) * t497 - Icges(4,6) * t496 + Icges(4,3) * t637;
t421 = Icges(4,4) * t497 - Icges(4,2) * t496 + Icges(4,6) * t637;
t422 = Icges(4,1) * t497 - Icges(4,4) * t496 + Icges(4,5) * t637;
t455 = Icges(4,5) * t524 - Icges(4,6) * t523 - Icges(4,3) * t701;
t456 = Icges(4,4) * t524 - Icges(4,2) * t523 - Icges(4,6) * t701;
t457 = Icges(4,1) * t524 - Icges(4,4) * t523 - Icges(4,5) * t701;
t173 = -t420 * t701 - t523 * t421 + t524 * t422 + t455 * t637 - t496 * t456 + t497 * t457;
t620 = -t130 - t131 - t173 - t56;
t619 = t691 - t695;
t618 = t680 - t693;
t617 = t527 * t232 - t479 * t358 + t688;
t616 = t677 - t690;
t615 = t676 - t689;
t614 = t671 + t685;
t613 = -t517 + t649;
t612 = t358 * t701 - t433 * t574 + t673;
t611 = -t529 - t645;
t610 = t434 * t702 + t435 * t700 + t668;
t22 = -t479 * t690 + t481 * t615 + t527 * t694 - t574 * t619 + t617;
t583 = -t396 * rSges(6,2) - t330 * rSges(6,3);
t214 = t331 * rSges(6,1) - t583;
t49 = t214 * t527 - t312 * t479 + t481 * t650 - t574 * t655 + t617;
t606 = m(6) * t49 + m(7) * t22;
t576 = t268 * t700 + t269 * t702 + t434 * t638 + t646;
t566 = t231 * t700 + t232 * t702 + t358 * t638 + t576;
t23 = (t695 * t553 + t694 * t550 + (t690 * t553 + (-t485 + t615) * t550) * qJD(1)) * t546 + t566;
t48 = (t212 * t553 + t214 * t550 + (t312 * t553 + (-t485 + t650) * t550) * qJD(1)) * t546 + t566;
t605 = m(6) * t48 + m(7) * t23;
t34 = t618 * t527 + t614 * t479 + (t552 * t619 + t663 * t689) * t546 + t678;
t65 = t649 * t527 + t645 * t479 + (t314 * t663 + t552 * t655) * t546 + t678;
t604 = m(6) * t65 + m(7) * t34;
t577 = t232 * t701 - t335 * t574 + t481 * t433 + t652;
t35 = -t693 * t574 + t685 * t481 + (t552 * t694 + t616 * t663) * t546 + t577;
t66 = -t342 * t574 + t398 * t481 + (t214 * t552 + t651 * t663) * t546 + t577;
t603 = m(6) * t66 + m(7) * t35;
t581 = -t517 + t618;
t44 = (t653 - t694) * t547 + (t553 * t581 + t666 * t685) * t546 + t643;
t77 = (-t214 + t653) * t547 + (t398 * t666 + t553 * t613) * t546 + t643;
t602 = m(6) * t77 + m(7) * t44;
t580 = -t529 - t614;
t572 = t580 * t553;
t45 = t695 * t547 + (qJD(1) * t572 + t550 * t581) * t546 + t654;
t578 = t611 * t553;
t78 = t547 * t212 + (qJD(1) * t578 + t550 * t613) * t546 + t654;
t601 = m(6) * t78 + m(7) * t45;
t596 = -pkin(1) * t666 + pkin(8) * t638;
t570 = t413 + t596;
t561 = t570 + t621;
t554 = t231 + t561;
t107 = t212 + t554 + t704;
t71 = t394 * t709 + t554 + t723;
t600 = m(6) * t107 + m(7) * t71;
t562 = -qJD(1) * t667 - t414;
t556 = -t269 + t562;
t555 = t556 + t682;
t108 = t331 * t713 + t555 + t583;
t72 = t331 * t721 + t712 * t396 + t555 + t585;
t599 = m(6) * t108 + m(7) * t72;
t575 = t358 * t702 + t359 * t700 + t610;
t132 = (t312 * t550 + t314 * t553) * t546 + t575;
t89 = (t550 * t690 + t553 * t689) * t546 + t575;
t598 = m(6) * t132 + m(7) * t89;
t135 = t312 * t527 - t574 * t650 + t681;
t90 = t527 * t690 - t574 * t615 + t681;
t597 = m(6) * t135 + m(7) * t90;
t595 = t644 * t553;
t111 = t547 * t689 + t580 * t702 + t647;
t145 = t314 * t547 + t611 * t702 + t647;
t594 = m(6) * t145 + m(7) * t111;
t112 = (-t484 + t616) * t547 + t546 * t572;
t146 = (-t484 + t651) * t547 + t546 * t578;
t593 = m(6) * t146 + m(7) * t112;
t113 = -t574 * t685 + t690 * t701 + t612;
t148 = t312 * t701 - t398 * t574 + t612;
t592 = m(6) * t148 + m(7) * t113;
t114 = -t527 * t614 + t615 * t701;
t149 = -t527 * t645 + t650 * t701;
t591 = m(6) * t149 + m(7) * t114;
t571 = -t484 + t633;
t565 = -t434 + t571;
t563 = -t439 + t565;
t150 = t448 * t721 - t568 * t712 + t563 + t584;
t198 = t448 * t713 + t563 + t582;
t590 = m(6) * t198 + m(7) * t150;
t579 = t485 + t667;
t573 = t493 + t579;
t564 = t359 + t573;
t151 = -t569 * t709 + t564 + t722;
t199 = t314 + t564 - t703;
t589 = m(6) * t199 + m(7) * t151;
t300 = Icges(6,5) * t448 - Icges(6,6) * t568 + Icges(6,3) * t447;
t304 = Icges(6,4) * t448 - Icges(6,2) * t568 + Icges(6,6) * t447;
t308 = Icges(6,1) * t448 - Icges(6,4) * t568 + Icges(6,5) * t447;
t161 = t300 * t494 + t304 * t523 + t308 * t495;
t302 = Icges(5,5) * t448 - Icges(5,6) * t447 - Icges(5,3) * t568;
t306 = Icges(5,4) * t448 - Icges(5,2) * t447 - Icges(5,6) * t568;
t310 = Icges(5,1) * t448 - Icges(5,4) * t447 - Icges(5,5) * t568;
t163 = t302 * t523 - t306 * t494 + t310 * t495;
t403 = Icges(4,5) * t499 + Icges(4,6) * t568 - Icges(4,3) * t574;
t405 = Icges(4,4) * t499 + Icges(4,2) * t568 - Icges(4,6) * t574;
t407 = Icges(4,1) * t499 + Icges(4,4) * t568 - Icges(4,5) * t574;
t235 = -t403 * t701 - t405 * t523 + t407 * t524;
t588 = -t235 / 0.2e1 - t161 / 0.2e1 - t163 / 0.2e1;
t301 = Icges(6,5) * t450 - Icges(6,6) * t569 + Icges(6,3) * t449;
t305 = Icges(6,4) * t450 - Icges(6,2) * t569 + Icges(6,6) * t449;
t309 = Icges(6,1) * t450 - Icges(6,4) * t569 + Icges(6,5) * t449;
t162 = t301 * t494 + t305 * t523 + t309 * t495;
t303 = Icges(5,5) * t450 - Icges(5,6) * t449 - Icges(5,3) * t569;
t307 = Icges(5,4) * t450 - Icges(5,2) * t449 - Icges(5,6) * t569;
t311 = Icges(5,1) * t450 - Icges(5,4) * t449 - Icges(5,5) * t569;
t164 = t303 * t523 - t307 * t494 + t311 * t495;
t404 = Icges(4,5) * t501 + Icges(4,6) * t569 + Icges(4,3) * t527;
t406 = Icges(4,4) * t501 + Icges(4,2) * t569 + Icges(4,6) * t527;
t408 = Icges(4,1) * t501 + Icges(4,4) * t569 + Icges(4,5) * t527;
t236 = -t404 * t701 - t406 * t523 + t408 * t524;
t587 = t236 / 0.2e1 + t162 / 0.2e1 + t164 / 0.2e1;
t586 = -t482 * rSges(3,1) + t481 * rSges(3,2);
t263 = t397 * rSges(4,1) - t396 * rSges(4,2) + t481 * rSges(4,3);
t409 = rSges(4,1) * t499 + rSges(4,2) * t568 - rSges(4,3) * t574;
t215 = t331 * rSges(5,1) - t330 * rSges(5,2) + t396 * rSges(5,3);
t466 = t526 * rSges(3,1) + rSges(3,2) * t574 - rSges(3,3) * t700;
t508 = Icges(3,6) * t547 + (Icges(3,2) * t552 + t706) * t546;
t509 = Icges(3,5) * t547 + (Icges(3,1) * t549 + t705) * t546;
t513 = (Icges(3,5) * t552 - Icges(3,6) * t549) * t664;
t514 = (-Icges(3,2) * t549 + t705) * t664;
t515 = (Icges(3,1) * t552 - t706) * t664;
t567 = t546 * t549 * t515 - t508 * t637 + t509 * t636 + t547 * t513 + t514 * t701;
t256 = Icges(4,5) * t395 - Icges(4,6) * t394 - Icges(4,3) * t479;
t258 = Icges(4,4) * t395 - Icges(4,2) * t394 - Icges(4,6) * t479;
t260 = Icges(4,1) * t395 - Icges(4,4) * t394 - Icges(4,5) * t479;
t106 = -t258 * t523 + t260 * t524 - t406 * t496 + t408 * t497 + (-t256 * t552 + t404 * t663) * t546;
t142 = -t394 * t456 + t395 * t457 + t420 * t527 + t421 * t569 + t422 * t501 - t455 * t479;
t200 = Icges(6,5) * t329 + Icges(6,6) * t394 + Icges(6,3) * t328;
t204 = Icges(6,4) * t329 + Icges(6,2) * t394 + Icges(6,6) * t328;
t208 = Icges(6,1) * t329 + Icges(6,4) * t394 + Icges(6,5) * t328;
t74 = t200 * t494 + t204 * t523 + t208 * t495 + t301 * t453 + t305 * t496 + t309 * t454;
t202 = Icges(5,5) * t329 - Icges(5,6) * t328 + Icges(5,3) * t394;
t206 = Icges(5,4) * t329 - Icges(5,2) * t328 + Icges(5,6) * t394;
t210 = Icges(5,1) * t329 - Icges(5,4) * t328 + Icges(5,5) * t394;
t76 = t202 * t523 - t206 * t494 + t210 * t495 + t303 * t496 - t307 * t453 + t311 * t454;
t95 = t328 * t388 + t329 * t392 + t336 * t449 - t338 * t569 + t340 * t450 + t390 * t394;
t96 = -t328 * t391 + t329 * t393 - t337 * t569 - t339 * t449 + t341 * t450 + t389 * t394;
t560 = t106 / 0.2e1 + t76 / 0.2e1 + t74 / 0.2e1 + t142 / 0.2e1 + t96 / 0.2e1 + t95 / 0.2e1 - t657;
t257 = Icges(4,5) * t397 - Icges(4,6) * t396 + Icges(4,3) * t481;
t259 = Icges(4,4) * t397 - Icges(4,2) * t396 + Icges(4,6) * t481;
t261 = Icges(4,1) * t397 - Icges(4,4) * t396 + Icges(4,5) * t481;
t105 = -t259 * t523 + t261 * t524 - t405 * t496 + t407 * t497 + (-t257 * t552 + t403 * t663) * t546;
t143 = -t396 * t456 + t397 * t457 - t420 * t574 + t421 * t568 + t422 * t499 + t455 * t481;
t201 = Icges(6,5) * t331 + Icges(6,6) * t396 + Icges(6,3) * t330;
t205 = Icges(6,4) * t331 + Icges(6,2) * t396 + Icges(6,6) * t330;
t209 = Icges(6,1) * t331 + Icges(6,4) * t396 + Icges(6,5) * t330;
t73 = t201 * t494 + t205 * t523 + t209 * t495 + t300 * t453 + t304 * t496 + t308 * t454;
t203 = Icges(5,5) * t331 - Icges(5,6) * t330 + Icges(5,3) * t396;
t207 = Icges(5,4) * t331 - Icges(5,2) * t330 + Icges(5,6) * t396;
t211 = Icges(5,1) * t331 - Icges(5,4) * t330 + Icges(5,5) * t396;
t75 = t203 * t523 - t207 * t494 + t211 * t495 + t302 * t496 - t306 * t453 + t310 * t454;
t97 = t330 * t388 + t331 * t392 + t336 * t447 - t338 * t568 + t340 * t448 + t390 * t396;
t98 = -t330 * t391 + t331 * t393 - t337 * t568 - t339 * t447 + t341 * t448 + t389 * t396;
t559 = t75 / 0.2e1 + t73 / 0.2e1 + t143 / 0.2e1 + t98 / 0.2e1 + t97 / 0.2e1 + t105 / 0.2e1 - t658;
t180 = t388 * t447 - t390 * t568 + t392 * t448;
t181 = -t389 * t568 - t391 * t447 + t393 * t448;
t254 = -t455 * t574 + t456 * t568 + t457 * t499;
t558 = t254 / 0.2e1 + t180 / 0.2e1 + t181 / 0.2e1 - t588 - t635;
t182 = t388 * t449 - t390 * t569 + t392 * t450;
t183 = -t389 * t569 - t391 * t449 + t393 * t450;
t255 = t455 * t527 + t456 * t569 + t457 * t501;
t557 = -t255 / 0.2e1 - t182 / 0.2e1 - t183 / 0.2e1 - t587 + t634;
t516 = (rSges(3,1) * t552 - rSges(3,2) * t549) * t664;
t510 = rSges(3,3) * t547 + (rSges(3,1) * t549 + rSges(3,2) * t552) * t546;
t507 = Icges(3,3) * t547 + (Icges(3,5) * t549 + Icges(3,6) * t552) * t546;
t465 = Icges(3,1) * t528 - Icges(3,4) * t527 + Icges(3,5) * t702;
t464 = Icges(3,1) * t526 + Icges(3,4) * t574 - Icges(3,5) * t700;
t463 = Icges(3,4) * t528 - Icges(3,2) * t527 + Icges(3,6) * t702;
t462 = Icges(3,4) * t526 + Icges(3,2) * t574 - Icges(3,6) * t700;
t461 = Icges(3,5) * t528 - Icges(3,6) * t527 + Icges(3,3) * t702;
t460 = Icges(3,5) * t526 + Icges(3,6) * t574 - Icges(3,3) * t700;
t438 = t467 + t667;
t437 = -t466 + t633;
t418 = -t547 * t466 - t510 * t700;
t417 = t467 * t547 - t510 * t702;
t376 = rSges(3,3) * t639 - t586;
t374 = Icges(3,1) * t482 - Icges(3,4) * t481 + Icges(3,5) * t639;
t373 = Icges(3,1) * t480 + Icges(3,4) * t479 + Icges(3,5) * t638;
t372 = Icges(3,4) * t482 - Icges(3,2) * t481 + Icges(3,6) * t639;
t371 = Icges(3,4) * t480 + Icges(3,2) * t479 + Icges(3,6) * t638;
t370 = Icges(3,5) * t482 - Icges(3,6) * t481 + Icges(3,3) * t639;
t369 = Icges(3,5) * t480 + Icges(3,6) * t479 + Icges(3,3) * t638;
t364 = (-t544 + (-rSges(3,3) - pkin(8)) * t702) * qJD(1) + t586;
t363 = t596 + t375;
t361 = t507 * t702 - t508 * t527 + t509 * t528;
t360 = -t507 * t700 + t508 * t574 + t526 * t509;
t334 = t579 + t410;
t333 = -t409 + t571;
t316 = t567 * t547;
t296 = t547 * t375 + (-t510 * t665 - t516 * t550) * t546;
t295 = -t547 * t376 + (t510 * t666 - t516 * t553) * t546;
t293 = -t410 * t701 - t459 * t527;
t292 = t409 * t701 - t459 * t574;
t291 = t461 * t547 + (t463 * t552 + t465 * t549) * t546;
t290 = t460 * t547 + (t462 * t552 + t464 * t549) * t546;
t279 = t461 * t702 - t463 * t527 + t465 * t528;
t278 = t460 * t702 - t462 * t527 + t464 * t528;
t277 = -t461 * t700 + t463 * t574 + t526 * t465;
t276 = -t460 * t700 + t462 * t574 + t526 * t464;
t275 = -t455 * t701 - t456 * t523 + t457 * t524;
t274 = t275 * t637;
t272 = t409 * t527 + t410 * t574;
t271 = (-t409 - t484) * t547 + t546 * t622;
t270 = t410 * t547 + t669 * t702 + t473;
t250 = -t481 * t508 + t482 * t509 + t574 * t514 + t526 * t515 + (t507 * t666 - t513 * t553) * t546;
t249 = t479 * t508 + t480 * t509 - t527 * t514 + t528 * t515 + (t507 * t665 + t513 * t550) * t546;
t248 = t315 + t573 - t703;
t247 = -t313 + t565;
t246 = (t409 * t550 + t410 * t553) * t546 + t668;
t234 = -t263 + t562;
t233 = t570 + t262;
t229 = t404 * t527 + t406 * t569 + t408 * t501;
t228 = t403 * t527 + t405 * t569 + t407 * t501;
t227 = -t404 * t574 + t406 * t568 + t408 * t499;
t226 = -t403 * t574 + t405 * t568 + t407 * t499;
t220 = t389 * t523 - t391 * t494 + t393 * t495;
t219 = t388 * t494 + t390 * t523 + t392 * t495;
t217 = t220 * t637;
t216 = t219 * t637;
t197 = -t527 * t675 + t683 * t701;
t196 = t313 * t701 - t399 * t574 + t673;
t185 = t369 * t547 + (t371 * t552 + t373 * t549 + (-t463 * t549 + t465 * t552) * qJD(2)) * t546;
t184 = t370 * t547 + (t372 * t552 + t374 * t549 + (-t462 * t549 + t464 * t552) * qJD(2)) * t546;
t178 = (-t484 + t684) * t547 + t546 * t595;
t177 = t315 * t547 + t644 * t702 + t672;
t172 = t173 * t547;
t171 = -t245 * t523 - t285 * t569;
t170 = t244 * t523 + t285 * t568;
t169 = t547 * t262 + t401 + (qJD(1) * t622 + t550 * t674) * t546;
t168 = t505 + (-t263 - t414) * t547 + (t459 * t666 + t553 * t674) * t546;
t167 = -t423 * t574 + t459 * t481 + (t263 * t552 - t409 * t663) * t546;
t166 = -t423 * t527 + t459 * t479 + (-t262 * t552 + t410 * t663) * t546;
t165 = t313 * t527 - t574 * t683 + t411;
t160 = (t313 * t550 + t315 * t553) * t546 + t610;
t159 = -t303 * t569 - t307 * t449 + t311 * t450;
t158 = -t302 * t569 - t306 * t449 + t310 * t450;
t157 = t301 * t449 - t305 * t569 + t309 * t450;
t156 = t300 * t449 - t304 * t569 + t308 * t450;
t155 = -t303 * t568 - t307 * t447 + t311 * t448;
t154 = -t302 * t568 - t306 * t447 + t310 * t448;
t153 = t301 * t447 - t305 * t568 + t309 * t448;
t152 = t300 * t447 - t304 * t568 + t308 * t448;
t147 = t244 * t569 - t245 * t568;
t141 = -t215 + t556;
t140 = t213 + t561 + t704;
t139 = t144 * t637;
t137 = t262 * t574 + t263 * t527 - t409 * t479 - t410 * t481;
t129 = t131 * t547;
t128 = t130 * t547;
t119 = (t262 * t553 + t263 * t550 + (t409 * t553 + (-t410 - t485) * t550) * qJD(1)) * t546 + t646;
t118 = t255 * t547 + (-t228 * t553 + t229 * t550) * t546;
t117 = t254 * t547 + (-t226 * t553 + t227 * t550) * t546;
t116 = -t228 * t574 + t229 * t527 - t255 * t701;
t115 = -t226 * t574 + t227 * t527 - t254 * t701;
t104 = t547 * t213 + (qJD(1) * t595 + t550 * t648) * t546 + t687;
t103 = (-t215 + t686) * t547 + (t399 * t666 + t553 * t648) * t546 + t670;
t102 = t239 * t569 + t241 * t354 + t243 * t355;
t101 = t238 * t569 + t240 * t354 + t242 * t355;
t94 = -t256 * t574 + t258 * t568 + t260 * t499 - t396 * t406 + t397 * t408 + t404 * t481;
t93 = -t257 * t574 + t259 * t568 + t261 * t499 - t396 * t405 + t397 * t407 + t403 * t481;
t92 = t256 * t527 + t258 * t569 + t260 * t501 - t394 * t406 + t395 * t408 - t404 * t479;
t91 = t257 * t527 + t259 * t569 + t261 * t501 - t394 * t405 + t395 * t407 - t403 * t479;
t88 = -t343 * t574 + t399 * t481 + (t215 * t552 + t663 * t684) * t546 + t652;
t87 = t425 + t679 * t527 + t675 * t479 + (t315 * t663 + t552 * t692) * t546;
t86 = t183 * t547 + (-t158 * t553 + t159 * t550) * t546;
t85 = t182 * t547 + (-t156 * t553 + t157 * t550) * t546;
t84 = t181 * t547 + (-t154 * t553 + t155 * t550) * t546;
t83 = t180 * t547 + (-t152 * t553 + t153 * t550) * t546;
t82 = -t158 * t574 + t159 * t527 - t183 * t701;
t81 = -t156 * t574 + t157 * t527 - t182 * t701;
t80 = -t154 * t574 + t155 * t527 - t181 * t701;
t79 = -t152 * t574 + t153 * t527 - t180 * t701;
t70 = t215 * t527 - t313 * t479 + t481 * t683 - t574 * t692 + t688;
t69 = t127 * t523 + t195 * t568 + t244 * t496 - t285 * t396;
t68 = -t126 * t523 - t195 * t569 - t245 * t496 + t285 * t394;
t67 = (t213 * t553 + t215 * t550 + (t313 * t553 + (-t485 + t683) * t550) * qJD(1)) * t546 + t576;
t64 = -t202 * t568 - t206 * t447 + t210 * t448 + t303 * t396 - t307 * t330 + t311 * t331;
t63 = -t203 * t568 - t207 * t447 + t211 * t448 + t302 * t396 - t306 * t330 + t310 * t331;
t62 = t200 * t447 - t204 * t568 + t208 * t448 + t301 * t330 + t305 * t396 + t309 * t331;
t61 = t201 * t447 - t205 * t568 + t209 * t448 + t300 * t330 + t304 * t396 + t308 * t331;
t60 = -t202 * t569 - t206 * t449 + t210 * t450 + t303 * t394 - t307 * t328 + t311 * t329;
t59 = -t203 * t569 - t207 * t449 + t211 * t450 + t302 * t394 - t306 * t328 + t310 * t329;
t58 = t200 * t449 - t204 * t569 + t208 * t450 + t301 * t328 + t305 * t394 + t309 * t329;
t57 = t201 * t449 - t205 * t569 + t209 * t450 + t300 * t328 + t304 * t394 + t308 * t329;
t55 = t56 * t547;
t53 = -t126 * t568 + t127 * t569 - t244 * t394 + t245 * t396;
t52 = t144 * t547 + (-t109 * t553 + t110 * t550) * t546;
t51 = -t109 * t574 + t110 * t527 - t144 * t701;
t50 = t109 * t568 + t110 * t569 - t144 * t523;
t43 = t134 * t547 + (-t101 * t553 + t102 * t550) * t546;
t42 = t133 * t547 + (t100 * t550 - t553 * t99) * t546;
t41 = -t101 * t574 + t102 * t527 - t134 * t701;
t40 = t100 * t527 - t133 * t701 - t574 * t99;
t39 = t101 * t568 + t102 * t569 - t134 * t523;
t38 = t100 * t569 - t133 * t523 + t568 * t99;
t37 = t172 + (-t105 * t553 + t106 * t550 + (t235 * t550 + t236 * t553) * qJD(1)) * t546;
t36 = -t105 * t574 + t106 * t527 - t173 * t701 + t235 * t481 - t236 * t479 + t274;
t33 = t143 * t547 + (t550 * t94 - t553 * t93 + (t226 * t550 + t227 * t553) * qJD(1)) * t546;
t32 = t142 * t547 + (t550 * t92 - t553 * t91 + (t228 * t550 + t229 * t553) * qJD(1)) * t546;
t29 = t226 * t481 - t227 * t479 - t574 * t93 + t527 * t94 + (-t143 * t552 + t254 * t663) * t546;
t28 = t228 * t481 - t229 * t479 - t574 * t91 + t527 * t92 + (-t142 * t552 + t255 * t663) * t546;
t25 = t120 * t569 + t122 * t354 + t124 * t355 + t188 * t241 + t189 * t243 - t239 * t394;
t24 = t121 * t569 + t123 * t354 + t125 * t355 + t188 * t240 + t189 * t242 - t238 * t394;
t21 = t129 + (t76 * t550 - t75 * t553 + (t163 * t550 + t164 * t553) * qJD(1)) * t546;
t20 = t128 + (t74 * t550 - t73 * t553 + (t161 * t550 + t162 * t553) * qJD(1)) * t546;
t19 = -t131 * t701 + t163 * t481 - t164 * t479 + t76 * t527 - t574 * t75 + t217;
t18 = -t130 * t701 + t161 * t481 - t162 * t479 + t74 * t527 - t574 * t73 + t216;
t17 = t98 * t547 + (t550 * t64 - t553 * t63 + (t154 * t550 + t155 * t553) * qJD(1)) * t546;
t16 = t97 * t547 + (t550 * t62 - t553 * t61 + (t152 * t550 + t153 * t553) * qJD(1)) * t546;
t15 = t96 * t547 + (t550 * t60 - t553 * t59 + (t158 * t550 + t159 * t553) * qJD(1)) * t546;
t14 = t95 * t547 + (t550 * t58 - t553 * t57 + (t156 * t550 + t157 * t553) * qJD(1)) * t546;
t13 = t154 * t481 - t155 * t479 - t574 * t63 + t527 * t64 + (t181 * t663 - t552 * t98) * t546;
t12 = t152 * t481 - t153 * t479 - t574 * t61 + t527 * t62 + (t180 * t663 - t552 * t97) * t546;
t11 = t158 * t481 - t159 * t479 - t574 * t59 + t527 * t60 + (t183 * t663 - t552 * t96) * t546;
t10 = t156 * t481 - t157 * t479 - t574 * t57 + t527 * t58 + (t182 * t663 - t552 * t95) * t546;
t9 = t55 + (-t30 * t553 + t31 * t550 + (t109 * t550 + t110 * t553) * qJD(1)) * t546;
t8 = t109 * t481 - t110 * t479 - t30 * t574 + t31 * t527 - t56 * t701 + t139;
t7 = -t109 * t396 - t110 * t394 + t30 * t568 + t31 * t569 + t708;
t6 = t47 * t547 + (-t26 * t553 + t27 * t550 + (t100 * t553 + t550 * t99) * qJD(1)) * t546;
t5 = t46 * t547 + (-t24 * t553 + t25 * t550 + (t101 * t550 + t102 * t553) * qJD(1)) * t546;
t4 = -t100 * t479 - t26 * t574 + t27 * t527 + t481 * t99 + (t133 * t663 - t47 * t552) * t546;
t3 = t101 * t481 - t102 * t479 - t24 * t574 + t25 * t527 + (t134 * t663 - t46 * t552) * t546;
t1 = -t101 * t396 - t102 * t394 - t134 * t496 + t24 * t568 + t25 * t569 - t46 * t523;
t54 = [(t107 * t199 + t108 * t198) * t625 + (t140 * t248 + t141 * t247) * t627 + (t150 * t72 + t151 * t71) * t623 + (t233 * t334 + t234 * t333) * t629 + (t363 * t438 + t364 * t437) * t631 + t567 - t620; t128 + t55 + m(3) * (t295 * t437 + t296 * t438 + t363 * t417 + t364 * t418) + (t168 * t333 + t169 * t334 + t233 * t270 + t234 * t271) * m(4) + t172 + t316 + (t103 * t247 + t104 * t248 + t140 * t177 + t141 * t178) * m(5) + (t107 * t145 + t108 * t146 + t198 * t77 + t199 * t78) * m(6) + (t111 * t71 + t112 * t72 + t150 * t44 + t151 * t45) * m(7) + t129 + ((-t250 / 0.2e1 - t184 / 0.2e1 - t559) * t553 + (t249 / 0.2e1 + t185 / 0.2e1 + t560) * t550 + ((t361 / 0.2e1 + t291 / 0.2e1 - t557) * t553 + (t360 / 0.2e1 + t290 / 0.2e1 + t558) * t550) * qJD(1)) * t546; (t111 * t45 + t112 * t44 + t23 * t89) * t623 + (t119 * t246 + t168 * t271 + t169 * t270) * t629 + (t418 * t295 + t417 * t296 + (t466 * t550 + t467 * t553) * (t375 * t553 + t376 * t550 + (t466 * t553 - t467 * t550) * qJD(1)) * t546 ^ 2) * t631 + (t132 * t48 + t145 * t78 + t146 * t77) * t625 + (t103 * t178 + t104 * t177 + t160 * t67) * t627 + (((-t527 * t371 + t528 * t373 + t479 * t463 + t480 * t465) * t550 + t279 * t665 - (-t527 * t372 + t528 * t374 + t479 * t462 + t480 * t464) * t553 + t278 * t666 + ((t369 * t550 + t461 * t665) * t550 - (t370 * t550 + t460 * t665) * t553) * t546) * t546 + t32 + t15 + t14 + t5) * t702 + (-((t371 * t574 + t526 * t373 - t481 * t463 + t482 * t465) * t550 + t277 * t665 - (t372 * t574 + t526 * t374 - t481 * t462 + t482 * t464) * t553 + t276 * t666 + ((-t369 * t553 + t461 * t666) * t550 - (-t370 * t553 + t460 * t666) * t553) * t546) * t546 - t33 - t17 - t16 - t6) * t700 + ((-t276 * t553 + t277 * t550) * t546 + t42 + t117 + t84 + t83) * t639 + ((-t278 * t553 + t279 * t550) * t546 + t43 + t118 + t86 + t85) * t638 + (t9 + t37 + t20 + t21 - t250 * t700 + t360 * t639 + t316 + (-t184 * t553 + t185 * t550 + (t290 * t550 + t291 * t553) * qJD(1)) * t546 + t249 * t702 + t361 * t638) * t547; t216 + (t166 * t334 + t167 * t333 + t233 * t293 + t234 * t292) * m(4) + t217 + t139 + (t140 * t197 + t141 * t196 + t247 * t88 + t248 * t87) * m(5) + (t107 * t149 + t108 * t148 + t198 * t66 + t199 * t65) * m(6) + (t113 * t72 + t114 * t71 + t150 * t35 + t151 * t34) * m(7) + t274 + t620 * t701 + t560 * t527 - t559 * t574 + t558 * t481 + t557 * t479; (t119 * t272 + t137 * t246 + t166 * t270 + t167 * t271 + t168 * t292 + t169 * t293) * m(4) + (t103 * t196 + t104 * t197 + t160 * t70 + t165 * t67 + t177 * t87 + t178 * t88) * m(5) + (t132 * t49 + t135 * t48 + t145 * t65 + t146 * t66 + t148 * t77 + t149 * t78) * m(6) + (t111 * t34 + t112 * t35 + t113 * t44 + t114 * t45 + t22 * t89 + t23 * t90) * m(7) + (t8 / 0.2e1 + t36 / 0.2e1 + t18 / 0.2e1 + t19 / 0.2e1) * t547 + (t5 / 0.2e1 + t32 / 0.2e1 + t14 / 0.2e1 + t15 / 0.2e1) * t527 - (t6 / 0.2e1 + t33 / 0.2e1 + t16 / 0.2e1 + t17 / 0.2e1) * t574 + (t117 / 0.2e1 + t83 / 0.2e1 + t84 / 0.2e1 + t42 / 0.2e1) * t481 + (-t118 / 0.2e1 - t85 / 0.2e1 - t86 / 0.2e1 - t43 / 0.2e1) * t479 + ((-t29 / 0.2e1 - t13 / 0.2e1 - t12 / 0.2e1 - t4 / 0.2e1) * t553 + (-t37 / 0.2e1 - t20 / 0.2e1 - t21 / 0.2e1 - t9 / 0.2e1) * t552 + (t28 / 0.2e1 + t10 / 0.2e1 + t11 / 0.2e1 + t3 / 0.2e1) * t550 + (t52 / 0.2e1 + t588 * t700 + t587 * t702 + (t275 / 0.2e1 + t219 / 0.2e1 + t220 / 0.2e1) * t547) * t663 + ((t41 / 0.2e1 + t81 / 0.2e1 + t82 / 0.2e1 + t116 / 0.2e1) * t553 + (t40 / 0.2e1 + t79 / 0.2e1 + t80 / 0.2e1 + t115 / 0.2e1) * t550) * qJD(1)) * t546; (t137 * t272 + t166 * t293 + t167 * t292) * t629 + (t165 * t70 + t196 * t88 + t197 * t87) * t627 + (t135 * t49 + t148 * t66 + t149 * t65) * t625 + (t113 * t35 + t114 * t34 + t22 * t90) * t623 + (-t18 - t19 - t36 - t8) * t701 + (t11 + t10 + t3 + t28) * t527 - (t4 + t29 + t12 + t13) * t574 + (t115 + t79 + t80 + t40) * t481 + (-t116 - t81 - t82 - t41) * t479 + (t51 + (-t219 - t220 - t275) * t701 + (t162 + t164 + t236) * t527 - (t161 + t163 + t235) * t574) * t637; -(m(5) * t141 + t599) * t569 - (m(5) * t140 + t600) * t568 + (m(5) * t248 + t589) * t396 + (m(5) * t247 + t590) * t394; (m(5) * t67 + t605) * t523 - (m(5) * t103 + t602) * t569 - (m(5) * t104 + t601) * t568 + (m(5) * t160 + t598) * t496 + (m(5) * t177 + t594) * t396 + (m(5) * t178 + t593) * t394; (m(5) * t70 + t606) * t523 - (m(5) * t88 + t603) * t569 - (m(5) * t87 + t604) * t568 + (m(5) * t165 + t597) * t496 + (m(5) * t197 + t591) * t396 + (m(5) * t196 + t592) * t394; 0.4e1 * (m(5) / 0.2e1 + t659) * (-t394 * t569 - t396 * t568 + t496 * t523); t328 * t590 + t330 * t589 + t447 * t600 + t449 * t599; t328 * t593 + t330 * t594 + t447 * t601 + t449 * t602 + t453 * t598 + t494 * t605; t328 * t592 + t330 * t591 + t447 * t604 + t449 * t603 + t453 * t597 + t494 * t606; 0.2e1 * t659 * (-t328 * t569 - t330 * t568 + t394 * t449 + t396 * t447 + t453 * t523 + t494 * t496); 0.4e1 * t659 * (t328 * t449 + t330 * t447 + t453 * t494); (t150 * t69 + t151 * t68 + t170 * t72 + t171 * t71) * m(7) - t657 * t569 - t658 * t568 + t635 * t396 + t634 * t394 + t708; (t111 * t68 + t112 * t69 + t147 * t23 + t170 * t44 + t171 * t45 + t53 * t89) * m(7) + t52 * t718 + t9 * t715 + t43 * t720 + t5 * t716 + t42 * t719 + t6 * t717 + t547 * t7 / 0.2e1 + (t1 * t714 + t553 * t724 + (t553 * t39 / 0.2e1 + t38 * t714) * qJD(1)) * t546; (t113 * t69 + t114 * t68 + t147 * t22 + t170 * t35 + t171 * t34 + t53 * t90) * m(7) - t479 * t39 / 0.2e1 + t527 * t1 / 0.2e1 + t481 * t38 / 0.2e1 + t574 * t724 + t40 * t719 + t4 * t717 + t41 * t720 + t3 * t716 + t51 * t718 + t8 * t715 + (t50 * t663 / 0.2e1 - t552 * t7 / 0.2e1) * t546; (t147 * t496 + t170 * t394 + t171 * t396 + t523 * t53 - t568 * t68 - t569 * t69) * m(7); (t147 * t453 + t170 * t328 + t171 * t330 + t447 * t68 + t449 * t69 + t494 * t53) * m(7); -t394 * t39 + t569 * t1 - t396 * t38 + t568 * t2 - t496 * t50 - t523 * t7 + (t147 * t53 + t170 * t69 + t171 * t68) * t623;];
%% Postprocessing: Reshape Output
% From vec2symmat_6_matlab.m
res = [t54(1) t54(2) t54(4) t54(7) t54(11) t54(16); t54(2) t54(3) t54(5) t54(8) t54(12) t54(17); t54(4) t54(5) t54(6) t54(9) t54(13) t54(18); t54(7) t54(8) t54(9) t54(10) t54(14) t54(19); t54(11) t54(12) t54(13) t54(14) t54(15) t54(20); t54(16) t54(17) t54(18) t54(19) t54(20) t54(21);];
Mq  = res;