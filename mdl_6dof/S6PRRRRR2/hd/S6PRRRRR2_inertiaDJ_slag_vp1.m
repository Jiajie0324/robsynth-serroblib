% Calculate time derivative of joint inertia matrix for
% S6PRRRRR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d4,d5,d6,theta1]';
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
% Datum: 2019-03-09 00:46
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S6PRRRRR2_inertiaDJ_slag_vp11(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(12,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRRR2_inertiaDJ_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRRRR2_inertiaDJ_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRRRRR2_inertiaDJ_slag_vp1: pkin has to be [12x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6PRRRRR2_inertiaDJ_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6PRRRRR2_inertiaDJ_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6PRRRRR2_inertiaDJ_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 00:42:29
% EndTime: 2019-03-09 00:43:21
% DurationCPUTime: 30.82s
% Computational Cost: add. (202575->1383), mult. (308205->1873), div. (0->0), fcn. (352223->14), ass. (0->601)
t610 = qJ(5) + qJ(6);
t605 = sin(t610);
t607 = cos(t610);
t611 = sin(pkin(12));
t613 = cos(pkin(12));
t620 = cos(qJ(2));
t614 = cos(pkin(6));
t617 = sin(qJ(2));
t758 = t614 * t617;
t592 = t611 * t620 + t613 * t758;
t754 = qJ(3) + qJ(4);
t687 = cos(t754);
t606 = sin(t754);
t612 = sin(pkin(6));
t763 = t612 * t613;
t711 = t606 * t763;
t566 = t592 * t687 - t711;
t583 = t592 * qJD(2);
t608 = qJD(5) + qJD(6);
t674 = -t566 * t608 + t583;
t756 = t614 * t620;
t643 = -t611 * t617 + t613 * t756;
t582 = t643 * qJD(2);
t609 = qJD(3) + qJD(4);
t655 = t612 * t687;
t633 = -t592 * t606 - t613 * t655;
t505 = t582 * t687 + t609 * t633;
t676 = -t608 * t643 + t505;
t359 = -t605 * t676 + t607 * t674;
t360 = t605 * t674 + t607 * t676;
t656 = t609 * t687;
t504 = t582 * t606 + t592 * t656 - t609 * t711;
t256 = rSges(7,1) * t360 + rSges(7,2) * t359 + rSges(7,3) * t504;
t615 = sin(qJ(5));
t618 = cos(qJ(5));
t517 = -t566 * t615 - t618 * t643;
t631 = qJD(5) * t517 + t583 * t615;
t778 = pkin(5) * t618;
t281 = pkin(5) * t631 + pkin(11) * t504 + t505 * t778;
t751 = t256 + t281;
t714 = t611 * t758;
t594 = t613 * t620 - t714;
t764 = t611 * t612;
t568 = t594 * t687 + t606 * t764;
t719 = qJD(2) * t620;
t585 = -qJD(2) * t714 + t613 * t719;
t673 = -t568 * t608 + t585;
t593 = t611 * t756 + t613 * t617;
t584 = t593 * qJD(2);
t634 = -t594 * t606 + t611 * t655;
t507 = -t584 * t687 + t609 * t634;
t675 = t593 * t608 + t507;
t361 = -t605 * t675 + t607 * t673;
t362 = t605 * t673 + t607 * t675;
t506 = t594 * t656 + (t609 * t764 - t584) * t606;
t257 = rSges(7,1) * t362 + rSges(7,2) * t361 + rSges(7,3) * t506;
t519 = -t568 * t615 + t593 * t618;
t630 = qJD(5) * t519 + t585 * t615;
t282 = pkin(5) * t630 + pkin(11) * t506 + t507 * t778;
t750 = t257 + t282;
t651 = t617 * t655;
t581 = t614 * t606 + t651;
t720 = qJD(2) * t617;
t692 = t612 * t720;
t642 = -t581 * t608 + t692;
t580 = t612 * t617 * t606 - t614 * t687;
t560 = -t580 * t609 + t655 * t719;
t760 = t612 * t620;
t657 = t608 * t760 - t560;
t443 = t605 * t657 + t607 * t642;
t444 = t605 * t642 - t607 * t657;
t691 = t612 * t719;
t559 = t609 * t651 + (t609 * t614 + t691) * t606;
t311 = rSges(7,1) * t444 + rSges(7,2) * t443 + rSges(7,3) * t559;
t569 = -t581 * t615 - t618 * t760;
t627 = qJD(5) * t569 + t615 * t692;
t323 = pkin(5) * t627 + pkin(11) * t559 + t560 * t778;
t747 = -t311 - t323;
t766 = t643 * t615;
t353 = -pkin(5) * t766 - pkin(11) * t633 + t566 * t778;
t511 = -t566 * t605 - t607 * t643;
t512 = t566 * t607 - t605 * t643;
t369 = rSges(7,1) * t512 + rSges(7,2) * t511 - rSges(7,3) * t633;
t743 = t353 + t369;
t765 = t593 * t615;
t354 = pkin(5) * t765 - pkin(11) * t634 + t568 * t778;
t513 = -t568 * t605 + t593 * t607;
t514 = t568 * t607 + t593 * t605;
t370 = rSges(7,1) * t514 + rSges(7,2) * t513 - rSges(7,3) * t634;
t742 = t354 + t370;
t712 = t615 * t760;
t442 = -pkin(5) * t712 + pkin(11) * t580 + t581 * t778;
t561 = -t581 * t605 - t607 * t760;
t562 = t581 * t607 - t605 * t760;
t448 = rSges(7,1) * t562 + rSges(7,2) * t561 + rSges(7,3) * t580;
t805 = t442 + t448;
t381 = rSges(5,1) * t507 - rSges(5,2) * t506 + rSges(5,3) * t585;
t475 = rSges(5,1) * t568 + rSges(5,2) * t634 + rSges(5,3) * t593;
t380 = rSges(5,1) * t505 - rSges(5,2) * t504 + rSges(5,3) * t583;
t474 = rSges(5,1) * t566 + rSges(5,2) * t633 - rSges(5,3) * t643;
t745 = t593 * t380 + t585 * t474;
t220 = t381 * t643 - t583 * t475 + t745;
t753 = -t256 * t634 + t506 * t369;
t158 = t257 * t633 - t504 * t370 + t753;
t308 = Icges(7,5) * t444 + Icges(7,6) * t443 + Icges(7,3) * t559;
t309 = Icges(7,4) * t444 + Icges(7,2) * t443 + Icges(7,6) * t559;
t310 = Icges(7,1) * t444 + Icges(7,4) * t443 + Icges(7,5) * t559;
t445 = Icges(7,5) * t562 + Icges(7,6) * t561 + Icges(7,3) * t580;
t446 = Icges(7,4) * t562 + Icges(7,2) * t561 + Icges(7,6) * t580;
t447 = Icges(7,1) * t562 + Icges(7,4) * t561 + Icges(7,5) * t580;
t143 = -t308 * t633 + t309 * t511 + t310 * t512 + t359 * t446 + t360 * t447 + t445 * t504;
t363 = Icges(7,5) * t512 + Icges(7,6) * t511 - Icges(7,3) * t633;
t365 = Icges(7,4) * t512 + Icges(7,2) * t511 - Icges(7,6) * t633;
t367 = Icges(7,1) * t512 + Icges(7,4) * t511 - Icges(7,5) * t633;
t205 = -t363 * t633 + t365 * t511 + t367 * t512;
t364 = Icges(7,5) * t514 + Icges(7,6) * t513 - Icges(7,3) * t634;
t366 = Icges(7,4) * t514 + Icges(7,2) * t513 - Icges(7,6) * t634;
t368 = Icges(7,1) * t514 + Icges(7,4) * t513 - Icges(7,5) * t634;
t206 = -t364 * t633 + t366 * t511 + t368 * t512;
t232 = -t445 * t633 + t446 * t511 + t447 * t512;
t250 = Icges(7,5) * t360 + Icges(7,6) * t359 + Icges(7,3) * t504;
t252 = Icges(7,4) * t360 + Icges(7,2) * t359 + Icges(7,6) * t504;
t254 = Icges(7,1) * t360 + Icges(7,4) * t359 + Icges(7,5) * t504;
t82 = -t250 * t633 + t252 * t511 + t254 * t512 + t359 * t365 + t360 * t367 + t363 * t504;
t251 = Icges(7,5) * t362 + Icges(7,6) * t361 + Icges(7,3) * t506;
t253 = Icges(7,4) * t362 + Icges(7,2) * t361 + Icges(7,6) * t506;
t255 = Icges(7,1) * t362 + Icges(7,4) * t361 + Icges(7,5) * t506;
t83 = -t251 * t633 + t253 * t511 + t255 * t512 + t359 * t366 + t360 * t368 + t364 * t504;
t15 = t205 * t583 + t206 * t585 - t643 * t82 + t593 * t83 + (-t143 * t620 + t232 * t720) * t612;
t374 = Icges(5,5) * t505 - Icges(5,6) * t504 + Icges(5,3) * t583;
t376 = Icges(5,4) * t505 - Icges(5,2) * t504 + Icges(5,6) * t583;
t378 = Icges(5,1) * t505 - Icges(5,4) * t504 + Icges(5,5) * t583;
t468 = Icges(5,5) * t566 + Icges(5,6) * t633 - Icges(5,3) * t643;
t470 = Icges(5,4) * t566 + Icges(5,2) * t633 - Icges(5,6) * t643;
t472 = Icges(5,1) * t566 + Icges(5,4) * t633 - Icges(5,5) * t643;
t176 = -t374 * t643 + t376 * t633 + t378 * t566 + t468 * t583 - t470 * t504 + t472 * t505;
t375 = Icges(5,5) * t507 - Icges(5,6) * t506 + Icges(5,3) * t585;
t377 = Icges(5,4) * t507 - Icges(5,2) * t506 + Icges(5,6) * t585;
t379 = Icges(5,1) * t507 - Icges(5,4) * t506 + Icges(5,5) * t585;
t469 = Icges(5,5) * t568 + Icges(5,6) * t634 + Icges(5,3) * t593;
t471 = Icges(5,4) * t568 + Icges(5,2) * t634 + Icges(5,6) * t593;
t473 = Icges(5,1) * t568 + Icges(5,4) * t634 + Icges(5,5) * t593;
t177 = -t375 * t643 + t377 * t633 + t379 * t566 + t469 * t583 - t471 * t504 + t473 * t505;
t460 = Icges(5,5) * t560 - Icges(5,6) * t559 + Icges(5,3) * t692;
t461 = Icges(5,4) * t560 - Icges(5,2) * t559 + Icges(5,6) * t692;
t462 = Icges(5,1) * t560 - Icges(5,4) * t559 + Icges(5,5) * t692;
t525 = Icges(5,5) * t581 - Icges(5,6) * t580 - Icges(5,3) * t760;
t526 = Icges(5,4) * t581 - Icges(5,2) * t580 - Icges(5,6) * t760;
t527 = Icges(5,1) * t581 - Icges(5,4) * t580 - Icges(5,5) * t760;
t203 = -t460 * t643 + t461 * t633 + t462 * t566 - t504 * t526 + t505 * t527 + t525 * t583;
t645 = -t581 * t618 + t712;
t478 = qJD(5) * t645 - t560 * t615 + t618 * t692;
t479 = t560 * t618 + t627;
t319 = Icges(6,5) * t479 + Icges(6,6) * t478 + Icges(6,3) * t559;
t320 = Icges(6,4) * t479 + Icges(6,2) * t478 + Icges(6,6) * t559;
t321 = Icges(6,1) * t479 + Icges(6,4) * t478 + Icges(6,5) * t559;
t518 = t566 * t618 - t766;
t392 = -qJD(5) * t518 - t505 * t615 + t583 * t618;
t393 = t505 * t618 + t631;
t457 = -Icges(6,5) * t645 + Icges(6,6) * t569 + Icges(6,3) * t580;
t458 = -Icges(6,4) * t645 + Icges(6,2) * t569 + Icges(6,6) * t580;
t459 = -Icges(6,1) * t645 + Icges(6,4) * t569 + Icges(6,5) * t580;
t154 = -t319 * t633 + t320 * t517 + t321 * t518 + t392 * t458 + t393 * t459 + t457 * t504;
t382 = Icges(6,5) * t518 + Icges(6,6) * t517 - Icges(6,3) * t633;
t384 = Icges(6,4) * t518 + Icges(6,2) * t517 - Icges(6,6) * t633;
t386 = Icges(6,1) * t518 + Icges(6,4) * t517 - Icges(6,5) * t633;
t211 = -t382 * t633 + t384 * t517 + t386 * t518;
t520 = t568 * t618 + t765;
t383 = Icges(6,5) * t520 + Icges(6,6) * t519 - Icges(6,3) * t634;
t385 = Icges(6,4) * t520 + Icges(6,2) * t519 - Icges(6,6) * t634;
t387 = Icges(6,1) * t520 + Icges(6,4) * t519 - Icges(6,5) * t634;
t212 = -t383 * t633 + t385 * t517 + t387 * t518;
t240 = -t457 * t633 + t458 * t517 + t459 * t518;
t271 = Icges(6,5) * t393 + Icges(6,6) * t392 + Icges(6,3) * t504;
t273 = Icges(6,4) * t393 + Icges(6,2) * t392 + Icges(6,6) * t504;
t275 = Icges(6,1) * t393 + Icges(6,4) * t392 + Icges(6,5) * t504;
t88 = -t271 * t633 + t273 * t517 + t275 * t518 + t382 * t504 + t384 * t392 + t386 * t393;
t394 = -qJD(5) * t520 - t507 * t615 + t585 * t618;
t395 = t507 * t618 + t630;
t272 = Icges(6,5) * t395 + Icges(6,6) * t394 + Icges(6,3) * t506;
t274 = Icges(6,4) * t395 + Icges(6,2) * t394 + Icges(6,6) * t506;
t276 = Icges(6,1) * t395 + Icges(6,4) * t394 + Icges(6,5) * t506;
t89 = -t272 * t633 + t274 * t517 + t276 * t518 + t383 * t504 + t385 * t392 + t387 * t393;
t27 = t211 * t583 + t212 * t585 - t643 * t88 + t593 * t89 + (-t154 * t620 + t240 * t720) * t612;
t285 = -t468 * t643 + t470 * t633 + t472 * t566;
t286 = -t469 * t643 + t471 * t633 + t473 * t566;
t312 = -t525 * t643 + t526 * t633 + t527 * t566;
t804 = -t176 * t643 + t177 * t593 + t285 * t583 + t286 * t585 + (-t203 * t620 + t312 * t720) * t612 + t27 + t15;
t144 = -t308 * t634 + t309 * t513 + t310 * t514 + t361 * t446 + t362 * t447 + t445 * t506;
t207 = -t363 * t634 + t365 * t513 + t367 * t514;
t208 = -t364 * t634 + t366 * t513 + t368 * t514;
t233 = -t445 * t634 + t446 * t513 + t447 * t514;
t84 = -t250 * t634 + t252 * t513 + t254 * t514 + t361 * t365 + t362 * t367 + t363 * t506;
t85 = -t251 * t634 + t253 * t513 + t255 * t514 + t361 * t366 + t362 * t368 + t364 * t506;
t16 = t207 * t583 + t208 * t585 - t643 * t84 + t593 * t85 + (-t144 * t620 + t233 * t720) * t612;
t178 = t374 * t593 + t376 * t634 + t378 * t568 + t468 * t585 - t470 * t506 + t472 * t507;
t179 = t375 * t593 + t377 * t634 + t379 * t568 + t469 * t585 - t471 * t506 + t473 * t507;
t204 = t460 * t593 + t461 * t634 + t462 * t568 - t506 * t526 + t507 * t527 + t525 * t585;
t155 = -t319 * t634 + t320 * t519 + t321 * t520 + t394 * t458 + t395 * t459 + t457 * t506;
t213 = -t382 * t634 + t384 * t519 + t386 * t520;
t214 = -t383 * t634 + t385 * t519 + t387 * t520;
t241 = -t457 * t634 + t458 * t519 + t459 * t520;
t90 = -t271 * t634 + t273 * t519 + t275 * t520 + t382 * t506 + t384 * t394 + t386 * t395;
t91 = -t272 * t634 + t274 * t519 + t276 * t520 + t383 * t506 + t385 * t394 + t387 * t395;
t28 = t213 * t583 + t214 * t585 - t643 * t90 + t593 * t91 + (-t155 * t620 + t241 * t720) * t612;
t287 = t468 * t593 + t470 * t634 + t472 * t568;
t288 = t469 * t593 + t471 * t634 + t473 * t568;
t313 = t525 * t593 + t526 * t634 + t527 * t568;
t803 = -t178 * t643 + t179 * t593 + t287 * t583 + t288 * t585 + (-t204 * t620 + t313 * t720) * t612 + t28 + t16;
t186 = -t376 * t580 + t378 * t581 - t470 * t559 + t472 * t560 + (-t374 * t620 + t468 * t720) * t612;
t187 = -t377 * t580 + t379 * t581 - t471 * t559 + t473 * t560 + (-t375 * t620 + t469 * t720) * t612;
t219 = -t461 * t580 + t462 * t581 - t526 * t559 + t527 * t560 + (-t460 * t620 + t525 * t720) * t612;
t295 = -t468 * t760 - t470 * t580 + t472 * t581;
t296 = -t469 * t760 - t471 * t580 + t473 * t581;
t327 = -t525 * t760 - t526 * t580 + t527 * t581;
t157 = t308 * t580 + t309 * t561 + t310 * t562 + t443 * t446 + t444 * t447 + t445 * t559;
t217 = t363 * t580 + t365 * t561 + t367 * t562;
t218 = t364 * t580 + t366 * t561 + t368 * t562;
t258 = t445 * t580 + t446 * t561 + t447 * t562;
t94 = t250 * t580 + t252 * t561 + t254 * t562 + t363 * t559 + t365 * t443 + t367 * t444;
t95 = t251 * t580 + t253 * t561 + t255 * t562 + t364 * t559 + t366 * t443 + t368 * t444;
t35 = t217 * t583 + t218 * t585 - t643 * t94 + t593 * t95 + (-t157 * t620 + t258 * t720) * t612;
t100 = t272 * t580 + t274 * t569 - t276 * t645 + t383 * t559 + t385 * t478 + t387 * t479;
t162 = t319 * t580 + t320 * t569 - t321 * t645 + t457 * t559 + t458 * t478 + t459 * t479;
t225 = t382 * t580 + t384 * t569 - t386 * t645;
t226 = t383 * t580 + t385 * t569 - t387 * t645;
t279 = t457 * t580 + t458 * t569 - t459 * t645;
t99 = t271 * t580 + t273 * t569 - t275 * t645 + t382 * t559 + t384 * t478 + t386 * t479;
t40 = t100 * t593 + t225 * t583 + t226 * t585 - t643 * t99 + (-t162 * t620 + t279 * t720) * t612;
t802 = -t186 * t643 + t187 * t593 + t295 * t583 + t296 * t585 + (-t219 * t620 + t327 * t720) * t612 + t40 + t35;
t556 = t582 * pkin(2) + t583 * pkin(8);
t557 = -t584 * pkin(2) + t585 * pkin(8);
t723 = t556 * t764 + t557 * t763;
t799 = -0.2e1 * t583;
t798 = 0.2e1 * t643;
t797 = m(5) / 0.2e1;
t796 = m(6) / 0.2e1;
t795 = m(7) / 0.2e1;
t794 = t504 / 0.2e1;
t793 = t506 / 0.2e1;
t792 = t559 / 0.2e1;
t791 = -t633 / 0.2e1;
t790 = -t634 / 0.2e1;
t789 = t580 / 0.2e1;
t788 = t583 / 0.2e1;
t787 = t585 / 0.2e1;
t786 = -t643 / 0.2e1;
t785 = t593 / 0.2e1;
t784 = t611 / 0.2e1;
t783 = -t613 / 0.2e1;
t782 = t614 / 0.2e1;
t277 = rSges(6,1) * t393 + rSges(6,2) * t392 + rSges(6,3) * t504;
t781 = m(6) * t277;
t278 = rSges(6,1) * t395 + rSges(6,2) * t394 + rSges(6,3) * t506;
t780 = m(6) * t278;
t619 = cos(qJ(3));
t779 = pkin(3) * t619;
t775 = pkin(3) * qJD(3);
t774 = Icges(3,4) * t617;
t773 = Icges(3,4) * t620;
t616 = sin(qJ(3));
t755 = t616 * t617;
t757 = t614 * t619;
t595 = -t612 * t755 + t757;
t759 = t614 * t616;
t761 = t612 * t619;
t596 = t617 * t761 + t759;
t540 = Icges(4,5) * t596 + Icges(4,6) * t595 - Icges(4,3) * t760;
t541 = Icges(4,4) * t596 + Icges(4,2) * t595 - Icges(4,6) * t760;
t542 = Icges(4,1) * t596 + Icges(4,4) * t595 - Icges(4,5) * t760;
t571 = -t592 * t616 - t613 * t761;
t762 = t612 * t616;
t713 = t613 * t762;
t644 = -t592 * t619 + t713;
t325 = -t540 * t643 + t541 * t571 - t542 * t644;
t770 = t583 * t325;
t573 = -t594 * t616 + t611 * t761;
t715 = t611 * t762;
t574 = t594 * t619 + t715;
t326 = t540 * t593 + t541 * t573 + t542 * t574;
t768 = t585 * t326;
t752 = t580 * t257 + t559 * t370;
t417 = pkin(4) * t507 + pkin(10) * t506;
t749 = -t278 - t417;
t748 = -t311 * t633 + t504 * t448;
t322 = rSges(6,1) * t479 + rSges(6,2) * t478 + rSges(6,3) * t559;
t487 = pkin(4) * t560 + pkin(10) * t559;
t746 = -t322 - t487;
t388 = rSges(6,1) * t518 + rSges(6,2) * t517 - rSges(6,3) * t633;
t501 = pkin(4) * t566 - pkin(10) * t633;
t480 = t593 * t501;
t744 = t593 * t388 + t480;
t389 = rSges(6,1) * t520 + rSges(6,2) * t519 - rSges(6,3) * t634;
t502 = pkin(4) * t568 - pkin(10) * t634;
t490 = t502 * t692;
t741 = t389 * t692 + t490;
t637 = t573 * qJD(3);
t426 = pkin(3) * t637 + pkin(9) * t585 - t584 * t779;
t740 = -t381 - t426;
t739 = -t388 - t501;
t738 = -t389 - t502;
t416 = pkin(4) * t505 + pkin(10) * t504;
t396 = t593 * t416;
t467 = t585 * t501;
t737 = t396 + t467;
t638 = t571 * qJD(3);
t425 = pkin(3) * t638 + pkin(9) * t583 + t582 * t779;
t403 = t593 * t425;
t476 = -pkin(3) * t713 - pkin(9) * t643 + t592 * t779;
t437 = t585 * t476;
t736 = t403 + t437;
t533 = t614 * t557;
t735 = t614 * t426 + t533;
t734 = -t425 - t556;
t545 = pkin(3) * t759 + (-pkin(9) * t620 + t617 * t779) * t612;
t732 = t476 * t760 - t545 * t643;
t477 = pkin(3) * t715 + pkin(9) * t593 + t594 * t779;
t564 = t594 * pkin(2) + t593 * pkin(8);
t558 = t614 * t564;
t731 = t614 * t477 + t558;
t463 = -rSges(6,1) * t645 + rSges(6,2) * t569 + rSges(6,3) * t580;
t544 = pkin(4) * t581 + pkin(10) * t580;
t730 = -t463 - t544;
t466 = rSges(5,1) * t560 - rSges(5,2) * t559 + rSges(5,3) * t692;
t510 = t757 * t775 + (-t755 * t775 + (pkin(9) * t617 + t620 * t779) * qJD(2)) * t612;
t729 = -t466 - t510;
t728 = -t474 - t476;
t727 = -t475 - t477;
t726 = t501 * t760 - t544 * t643;
t528 = rSges(5,1) * t581 - rSges(5,2) * t580 - rSges(5,3) * t760;
t357 = t474 * t760 - t528 * t643;
t725 = -t528 - t545;
t724 = 0.2e1 * t723;
t563 = t592 * pkin(2) - pkin(8) * t643;
t722 = t563 * t764 + t564 * t763;
t721 = qJD(2) * t612;
t710 = -t417 - t750;
t709 = -t426 + t749;
t708 = -t487 + t747;
t707 = -t510 + t746;
t706 = t593 * t743 + t480;
t705 = t692 * t742 + t490;
t704 = -t501 - t743;
t703 = -t502 - t742;
t702 = t380 * t760 - t466 * t643 + t583 * t528;
t701 = -t476 + t739;
t700 = -t477 + t738;
t699 = t416 * t760 - t487 * t643 + t583 * t544;
t698 = t614 * t417 + t735;
t697 = -t416 + t734;
t696 = t425 * t760 - t510 * t643 + t583 * t545;
t695 = -t544 - t805;
t694 = t614 * t502 + t731;
t693 = -t545 + t730;
t690 = t764 / 0.2e1;
t689 = -t763 / 0.2e1;
t688 = -t760 / 0.2e1;
t685 = 2 * m(4);
t683 = 0.2e1 * m(5);
t681 = 0.2e1 * m(6);
t679 = 0.2e1 * m(7);
t575 = -qJD(3) * t596 - t616 * t691;
t576 = qJD(3) * t595 + t619 * t691;
t499 = rSges(4,1) * t576 + rSges(4,2) * t575 + rSges(4,3) * t692;
t590 = (pkin(2) * t620 + pkin(8) * t617) * t721;
t678 = t612 * (-t499 - t590);
t543 = rSges(4,1) * t596 + rSges(4,2) * t595 - rSges(4,3) * t760;
t597 = (pkin(2) * t617 - pkin(8) * t620) * t612;
t677 = (-t543 - t597) * t612;
t672 = -t426 + t710;
t262 = t593 * t277;
t346 = t585 * t388;
t671 = t262 + t346 + t737;
t670 = -t510 + t708;
t669 = -t476 + t704;
t668 = -t477 + t703;
t667 = t417 * t798 + t502 * t799 + 0.2e1 * t396 + 0.2e1 * t467;
t666 = t426 * t798 + t477 * t799 + 0.2e1 * t403 + 0.2e1 * t437;
t421 = t425 * t764;
t422 = t426 * t763;
t665 = 0.2e1 * t421 + 0.2e1 * t422 + t724;
t664 = t421 + t422 + t723;
t663 = 0.2e1 * t220;
t662 = -t545 + t695;
t661 = t476 * t764 + t477 * t763 + t722;
t247 = t388 * t760 - t463 * t643 + t726;
t660 = t692 / 0.2e1;
t659 = (-t590 + t729) * t612;
t658 = (-t597 + t725) * t612;
t105 = -t205 * t633 - t206 * t634 + t232 * t580;
t106 = -t207 * t633 - t208 * t634 + t233 * t580;
t135 = -t217 * t633 - t218 * t634 + t258 * t580;
t32 = t157 * t580 + t217 * t504 + t218 * t506 + t258 * t559 - t633 * t94 - t634 * t95;
t7 = t143 * t580 + t205 * t504 + t206 * t506 + t232 * t559 - t633 * t82 - t634 * t83;
t8 = t144 * t580 + t207 * t504 + t208 * t506 + t233 * t559 - t633 * t84 - t634 * t85;
t654 = t504 * t105 + t506 * t106 + t559 * t135 + t580 * t32 - t633 * t7 - t634 * t8;
t653 = (-t590 + t707) * t612;
t652 = (-t597 + t693) * t612;
t246 = t593 * t256;
t270 = t593 * t281;
t335 = t585 * t353;
t340 = t585 * t369;
t650 = t246 + t270 + t335 + t340 + t737;
t649 = t277 * t760 - t322 * t643 + t583 * t463 + t699;
t404 = t416 * t764;
t405 = t417 * t763;
t647 = t404 + t405 + t664;
t646 = t501 * t764 + t502 * t763 + t661;
t200 = -t643 * t805 + t743 * t760 + t726;
t641 = 0.2e1 * t158 * t795;
t640 = (-t590 + t670) * t612;
t639 = (-t597 + t662) * t612;
t117 = t232 * t614 + (-t205 * t613 + t206 * t611) * t612;
t118 = t233 * t614 + (-t207 * t613 + t208 * t611) * t612;
t146 = t258 * t614 + (-t217 * t613 + t218 * t611) * t612;
t45 = t143 * t614 + (t611 * t83 - t613 * t82) * t612;
t46 = t144 * t614 + (t611 * t85 - t613 * t84) * t612;
t53 = t157 * t614 + (t611 * t95 - t613 * t94) * t612;
t636 = t117 * t794 + t118 * t793 + t146 * t792 + t32 * t782 + t45 * t791 + t46 * t790 + t53 * t789 + t7 * t689 + t8 * t690;
t635 = t278 * t798 + t389 * t799 + 0.2e1 * t262 + 0.2e1 * t346 + t667;
t632 = t805 * t583 + t747 * t643 + t751 * t760 + t699;
t521 = qJD(3) * t644 - t582 * t616;
t522 = t582 * t619 + t638;
t414 = rSges(4,1) * t522 + rSges(4,2) * t521 + rSges(4,3) * t583;
t523 = -qJD(3) * t574 + t584 * t616;
t524 = -t584 * t619 + t637;
t415 = rSges(4,1) * t524 + rSges(4,2) * t523 + rSges(4,3) * t585;
t488 = -rSges(4,1) * t644 + rSges(4,2) * t571 - rSges(4,3) * t643;
t489 = rSges(4,1) * t574 + rSges(4,2) * t573 + rSges(4,3) * t593;
t230 = t414 * t593 + t415 * t643 + t488 * t585 - t489 * t583;
t111 = -t205 * t643 + t206 * t593 - t232 * t760;
t112 = -t207 * t643 + t208 * t593 - t233 * t760;
t142 = -t217 * t643 + t218 * t593 - t258 * t760;
t629 = t105 * t788 + t106 * t787 + t111 * t794 + t112 * t793 + t135 * t660 + t142 * t792 + t15 * t791 + t16 * t790 + t32 * t688 + t35 * t789 + t7 * t786 + t8 * t785;
t628 = t742 * t799 + t750 * t798 + 0.2e1 * t246 + 0.2e1 * t270 + 0.2e1 * t335 + 0.2e1 * t340 + t667;
t127 = -t211 * t643 + t212 * t593 - t240 * t760;
t128 = -t213 * t643 + t214 * t593 - t241 * t760;
t151 = -t225 * t643 + t226 * t593 - t279 * t760;
t626 = (-t327 * t760 + t142 + t151) * t692 + (t296 * t692 + t803) * t593 + (-t295 * t692 - t804) * t643 + (-t287 * t643 + t288 * t593 - t313 * t760 + t112 + t128) * t585 + (-t285 * t643 + t286 * t593 - t312 * t760 + t111 + t127) * t583;
t625 = -t760 * t802 + t626;
t121 = -t211 * t633 - t212 * t634 + t240 * t580;
t122 = -t213 * t633 - t214 * t634 + t241 * t580;
t148 = -t225 * t633 - t226 * t634 + t279 * t580;
t19 = t154 * t580 + t211 * t504 + t212 * t506 + t240 * t559 - t633 * t88 - t634 * t89;
t20 = t155 * t580 + t213 * t504 + t214 * t506 + t241 * t559 - t633 * t90 - t634 * t91;
t37 = -t100 * t634 + t162 * t580 + t225 * t504 + t226 * t506 + t279 * t559 - t633 * t99;
t624 = t121 * t788 + t122 * t787 + t127 * t794 + t128 * t793 + t148 * t660 + t151 * t792 + t19 * t786 + t20 * t785 + t27 * t791 + t28 * t790 + t37 * t688 + t40 * t789 + t629;
t132 = t240 * t614 + (-t211 * t613 + t212 * t611) * t612;
t133 = t241 * t614 + (-t213 * t613 + t214 * t611) * t612;
t153 = t279 * t614 + (-t225 * t613 + t226 * t611) * t612;
t49 = t154 * t614 + (t611 * t89 - t613 * t88) * t612;
t50 = t155 * t614 + (t611 * t91 - t613 * t90) * t612;
t55 = t162 * t614 + (t100 * t611 - t613 * t99) * t612;
t71 = t203 * t614 + (-t176 * t613 + t177 * t611) * t612;
t72 = t204 * t614 + (-t178 * t613 + t179 * t611) * t612;
t77 = t219 * t614 + (-t186 * t613 + t187 * t611) * t612;
t623 = (t312 * t614 + (-t285 * t613 + t286 * t611) * t612 + t132 + t117) * t788 + (t118 + t313 * t614 + (-t287 * t613 + t288 * t611) * t612 + t133) * t787 + (t71 + t49 + t45) * t786 + (t72 + t50 + t46) * t785 + t802 * t782 + t803 * t690 + t804 * t689 + (t77 + t55 + t53) * t688 + (t327 * t614 + (-t295 * t613 + t296 * t611) * t612 + t153 + t146) * t660;
t589 = (rSges(3,1) * t620 - rSges(3,2) * t617) * t721;
t588 = (Icges(3,1) * t620 - t774) * t721;
t587 = (-Icges(3,2) * t617 + t773) * t721;
t586 = (Icges(3,5) * t620 - Icges(3,6) * t617) * t721;
t579 = rSges(3,3) * t614 + (rSges(3,1) * t617 + rSges(3,2) * t620) * t612;
t578 = Icges(3,5) * t614 + (Icges(3,1) * t617 + t773) * t612;
t577 = Icges(3,6) * t614 + (Icges(3,2) * t620 + t774) * t612;
t555 = -rSges(3,1) * t584 - rSges(3,2) * t585;
t554 = rSges(3,1) * t582 - rSges(3,2) * t583;
t553 = -Icges(3,1) * t584 - Icges(3,4) * t585;
t552 = Icges(3,1) * t582 - Icges(3,4) * t583;
t551 = -Icges(3,4) * t584 - Icges(3,2) * t585;
t550 = Icges(3,4) * t582 - Icges(3,2) * t583;
t549 = -Icges(3,5) * t584 - Icges(3,6) * t585;
t548 = Icges(3,5) * t582 - Icges(3,6) * t583;
t539 = rSges(3,1) * t594 - rSges(3,2) * t593 + rSges(3,3) * t764;
t538 = rSges(3,1) * t592 + rSges(3,2) * t643 - rSges(3,3) * t763;
t537 = Icges(3,1) * t594 - Icges(3,4) * t593 + Icges(3,5) * t764;
t536 = Icges(3,1) * t592 + Icges(3,4) * t643 - Icges(3,5) * t763;
t535 = Icges(3,4) * t594 - Icges(3,2) * t593 + Icges(3,6) * t764;
t534 = Icges(3,4) * t592 + Icges(3,2) * t643 - Icges(3,6) * t763;
t498 = Icges(4,1) * t576 + Icges(4,4) * t575 + Icges(4,5) * t692;
t497 = Icges(4,4) * t576 + Icges(4,2) * t575 + Icges(4,6) * t692;
t496 = Icges(4,5) * t576 + Icges(4,6) * t575 + Icges(4,3) * t692;
t486 = Icges(4,1) * t574 + Icges(4,4) * t573 + Icges(4,5) * t593;
t485 = -Icges(4,1) * t644 + Icges(4,4) * t571 - Icges(4,5) * t643;
t484 = Icges(4,4) * t574 + Icges(4,2) * t573 + Icges(4,6) * t593;
t483 = -Icges(4,4) * t644 + Icges(4,2) * t571 - Icges(4,6) * t643;
t482 = Icges(4,5) * t574 + Icges(4,6) * t573 + Icges(4,3) * t593;
t481 = -Icges(4,5) * t644 + Icges(4,6) * t571 - Icges(4,3) * t643;
t451 = t477 * t692;
t450 = t475 * t692;
t441 = t593 * t476;
t440 = t593 * t474;
t418 = t633 * t448;
t413 = Icges(4,1) * t524 + Icges(4,4) * t523 + Icges(4,5) * t585;
t412 = Icges(4,1) * t522 + Icges(4,4) * t521 + Icges(4,5) * t583;
t411 = Icges(4,4) * t524 + Icges(4,2) * t523 + Icges(4,6) * t585;
t410 = Icges(4,4) * t522 + Icges(4,2) * t521 + Icges(4,6) * t583;
t409 = Icges(4,5) * t524 + Icges(4,6) * t523 + Icges(4,3) * t585;
t408 = Icges(4,5) * t522 + Icges(4,6) * t521 + Icges(4,3) * t583;
t398 = -t489 * t760 - t543 * t593;
t397 = t488 * t760 - t543 * t643;
t358 = -t475 * t760 - t528 * t593;
t349 = -t540 * t760 + t541 * t595 + t542 * t596;
t339 = t580 * t370;
t332 = t634 * t369;
t331 = t488 * t593 + t489 * t643;
t330 = (-t488 - t563) * t614 + t613 * t677;
t329 = t489 * t614 + t611 * t677 + t558;
t324 = t475 * t643 + t440;
t306 = (t488 * t611 + t489 * t613) * t612 + t722;
t304 = -t482 * t760 + t484 * t595 + t486 * t596;
t303 = -t481 * t760 + t483 * t595 + t485 * t596;
t302 = (-t414 - t556) * t614 + t613 * t678;
t301 = t415 * t614 + t611 * t678 + t533;
t300 = t389 * t580 + t463 * t634;
t299 = -t388 * t580 - t463 * t633;
t298 = t448 * t634 + t339;
t297 = -t369 * t580 - t418;
t294 = t593 * t725 + t727 * t760;
t293 = t357 + t732;
t292 = t482 * t593 + t484 * t573 + t486 * t574;
t291 = t481 * t593 + t483 * t573 + t485 * t574;
t290 = -t482 * t643 + t484 * t571 - t486 * t644;
t289 = -t481 * t643 + t483 * t571 - t485 * t644;
t284 = (-t563 + t728) * t614 + t613 * t658;
t283 = t475 * t614 + t611 * t658 + t731;
t267 = -t388 * t634 + t389 * t633;
t265 = (t414 * t611 + t415 * t613) * t612 + t723;
t264 = -t499 * t593 - t543 * t585 + (-t415 * t620 + t489 * t720) * t612;
t263 = -t499 * t643 + t543 * t583 + (t414 * t620 - t488 * t720) * t612;
t259 = t370 * t633 - t332;
t248 = t593 * t730 + t738 * t760;
t242 = -t643 * t727 + t440 + t441;
t236 = -t381 * t760 - t466 * t593 - t528 * t585 + t450;
t235 = -t474 * t692 + t702;
t234 = t497 * t595 + t498 * t596 + t541 * t575 + t542 * t576 + (-t496 * t620 + t540 * t720) * t612;
t231 = (t474 * t611 + t475 * t613) * t612 + t661;
t229 = -t643 * t738 + t744;
t228 = (-t380 + t734) * t614 + t613 * t659;
t227 = t381 * t614 + t611 * t659 + t735;
t224 = t496 * t593 + t497 * t573 + t498 * t574 + t523 * t541 + t524 * t542 + t540 * t585;
t223 = -t496 * t643 + t497 * t571 - t498 * t644 + t521 * t541 + t522 * t542 + t540 * t583;
t222 = t593 * t693 + t700 * t760;
t221 = t247 + t732;
t216 = (-t563 + t701) * t614 + t613 * t652;
t215 = t389 * t614 + t611 * t652 + t694;
t210 = t354 * t580 + t634 * t805 + t339;
t209 = -t442 * t633 - t580 * t743 - t418;
t202 = (t380 * t611 + t381 * t613) * t612 + t664;
t201 = t593 * t695 + t703 * t760;
t199 = -t643 * t700 + t441 + t744;
t198 = (t388 * t611 + t389 * t613) * t612 + t646;
t197 = t411 * t595 + t413 * t596 + t484 * t575 + t486 * t576 + (-t409 * t620 + t482 * t720) * t612;
t196 = t410 * t595 + t412 * t596 + t483 * t575 + t485 * t576 + (-t408 * t620 + t481 * t720) * t612;
t195 = -t353 * t634 + t633 * t742 - t332;
t194 = t585 * t725 + t593 * t729 + t740 * t760 + t450 + t451;
t193 = t692 * t728 + t696 + t702;
t192 = t409 * t593 + t411 * t573 + t413 * t574 + t482 * t585 + t484 * t523 + t486 * t524;
t191 = t408 * t593 + t410 * t573 + t412 * t574 + t481 * t585 + t483 * t523 + t485 * t524;
t190 = -t409 * t643 + t411 * t571 - t413 * t644 + t482 * t583 + t484 * t521 + t486 * t522;
t189 = -t408 * t643 + t410 * t571 - t412 * t644 + t481 * t583 + t483 * t521 + t485 * t522;
t185 = t593 * t662 + t668 * t760;
t184 = t200 + t732;
t183 = (-t563 + t669) * t614 + t613 * t639;
t182 = t611 * t639 + t614 * t742 + t694;
t180 = -t643 * t703 + t706;
t173 = t278 * t580 + t322 * t634 + t389 * t559 - t463 * t506;
t172 = -t277 * t580 - t322 * t633 - t388 * t559 + t463 * t504;
t169 = t583 * t727 - t643 * t740 + t736 + t745;
t168 = t311 * t634 - t448 * t506 + t752;
t167 = -t256 * t580 - t369 * t559 + t748;
t166 = (-t277 + t697) * t614 + t613 * t653;
t165 = t278 * t614 + t611 * t653 + t698;
t164 = -t643 * t668 + t441 + t706;
t163 = (t611 * t743 + t613 * t742) * t612 + t646;
t161 = -t277 * t634 + t278 * t633 + t388 * t506 - t389 * t504;
t160 = t585 * t730 + t593 * t746 + t749 * t760 + t741;
t159 = t692 * t739 + t649;
t156 = (t277 * t611 + t278 * t613) * t612 + t647;
t140 = t583 * t738 - t643 * t749 + t671;
t138 = t585 * t693 + t593 * t707 + t709 * t760 + t451 + t741;
t137 = t692 * t701 + t649 + t696;
t124 = (t697 - t751) * t614 + t613 * t640;
t123 = t611 * t640 + t614 * t750 + t698;
t96 = t234 * t614 + (-t196 * t613 + t197 * t611) * t612;
t93 = t282 * t580 + t354 * t559 - t506 * t805 - t634 * t747 + t752;
t92 = -t323 * t633 + t442 * t504 - t559 * t743 - t580 * t751 + t748;
t87 = t583 * t700 - t643 * t709 + t671 + t736;
t86 = (t611 * t751 + t613 * t750) * t612 + t647;
t81 = t585 * t695 + t593 * t708 + t710 * t760 + t705;
t80 = t692 * t704 + t632;
t79 = t224 * t614 + (-t191 * t613 + t192 * t611) * t612;
t78 = t223 * t614 + (-t189 * t613 + t190 * t611) * t612;
t75 = -t281 * t634 + t353 * t506 - t504 * t742 + t633 * t750 + t753;
t74 = t585 * t662 + t593 * t670 + t672 * t760 + t451 + t705;
t73 = t669 * t692 + t632 + t696;
t68 = t583 * t703 - t643 * t710 + t650;
t67 = -t196 * t643 + t197 * t593 + t303 * t583 + t304 * t585 + (-t234 * t620 + t349 * t720) * t612;
t66 = -t191 * t643 + t192 * t593 + t291 * t583 + t292 * t585 + (-t224 * t620 + t326 * t720) * t612;
t65 = -t189 * t643 + t190 * t593 + t289 * t583 + t290 * t585 + (-t223 * t620 + t325 * t720) * t612;
t62 = t583 * t668 - t643 * t672 + t650 + t736;
t1 = [0; m(4) * t724 / 0.2e1 + t665 * t797 + (m(3) * t555 + m(4) * t415 + m(5) * t381 + m(7) * t750 + t780) * t763 + (m(3) * t554 + m(4) * t414 + m(5) * t380 + m(7) * t751 + t781) * t764 + (t796 + t795) * (0.2e1 * t404 + 0.2e1 * t405 + t665); t46 * t764 - t45 * t763 - t49 * t763 + t50 * t764 + t72 * t764 - t71 * t763 + t79 * t764 - t78 * t763 + ((-t535 * t585 - t537 * t584 + t549 * t764 - t551 * t593 + t553 * t594) * t764 - (-t534 * t585 - t536 * t584 + t548 * t764 - t550 * t593 + t552 * t594) * t763 + (-t577 * t585 - t578 * t584 + t586 * t764 - t587 * t593 + t588 * t594) * t614) * t764 - ((-t535 * t583 + t537 * t582 - t549 * t763 + t551 * t643 + t553 * t592) * t764 - (-t534 * t583 + t536 * t582 - t548 * t763 + t550 * t643 + t552 * t592) * t763 + (-t577 * t583 + t578 * t582 - t586 * t763 + t587 * t643 + t588 * t592) * t614) * t763 + t614 * t53 + (t123 * t182 + t124 * t183 + t163 * t86) * t679 + t614 * t55 + (t156 * t198 + t165 * t215 + t166 * t216) * t681 + (t202 * t231 + t227 * t283 + t228 * t284) * t683 + t614 * t77 + t614 * t96 + (t265 * t306 + t301 * t329 + t302 * t330) * t685 + t614 * (t614 ^ 2 * t586 + (((t551 * t620 + t553 * t617) * t611 - (t550 * t620 + t552 * t617) * t613 + ((-t535 * t617 + t537 * t620) * t611 - (-t534 * t617 + t536 * t620) * t613) * qJD(2)) * t612 + (-t548 * t613 + t549 * t611 + t587 * t620 + t588 * t617 + (-t577 * t617 + t578 * t620) * qJD(2)) * t614) * t612) + 0.2e1 * m(3) * ((-t538 * t614 - t579 * t763) * (-t554 * t614 - t589 * t763) + (t539 * t614 - t579 * t764) * (t555 * t614 - t589 * t764) + (t538 * t611 + t539 * t613) * t612 ^ 2 * (t554 * t611 + t555 * t613)); t230 * m(4) + (t663 + t666) * t797 + (t635 + t666) * t796 + (t628 + t666) * t795; t623 + t79 * t785 + t78 * t786 + ((-t291 * t613 + t292 * t611) * t787 + (-t289 * t613 + t290 * t611) * t788 - t620 * t96 / 0.2e1 + t65 * t783 + t66 * t784 + (t349 * t782 + (-t303 * t613 + t304 * t611) * t612 / 0.2e1) * t720) * t612 + (t67 / 0.2e1 + t768 / 0.2e1 + t770 / 0.2e1) * t614 + (t123 * t185 + t124 * t184 + t163 * t62 + t164 * t86 + t182 * t74 + t183 * t73) * m(7) + (t137 * t216 + t138 * t215 + t156 * t199 + t165 * t222 + t166 * t221 + t198 * t87) * m(6) + (t169 * t231 + t193 * t284 + t194 * t283 + t202 * t242 + t227 * t294 + t228 * t293) * m(5) + (t230 * t306 + t263 * t330 + t264 * t329 + t265 * t331 + t301 * t398 + t302 * t397) * m(4); t626 + t593 * t66 - t643 * t65 + (t137 * t221 + t138 * t222 + t199 * t87) * t681 + ((-t303 * t643 + t304 * t593) * t720 + (-t349 * t692 - t67 - t768 - t770 - t802) * t620) * t612 + t585 * (-t291 * t643 + t292 * t593) + t583 * (-t289 * t643 + t290 * t593) + (t164 * t62 + t184 * t73 + t185 * t74) * t679 + (t169 * t242 + t193 * t293 + t194 * t294) * t683 + (t230 * t331 + t263 * t397 + t264 * t398) * t685; t628 * t795 + t635 * t796 + t663 * t797; t623 + (t123 * t201 + t124 * t200 + t163 * t68 + t180 * t86 + t182 * t81 + t183 * t80) * m(7) + (t140 * t198 + t156 * t229 + t159 * t216 + t160 * t215 + t165 * t248 + t166 * t247) * m(6) + (t202 * t324 + t220 * t231 + t227 * t358 + t228 * t357 + t235 * t284 + t236 * t283) * m(5); t625 + (t137 * t247 + t138 * t248 + t140 * t199 + t159 * t221 + t160 * t222 + t229 * t87) * m(6) + (t164 * t68 + t180 * t62 + t184 * t80 + t185 * t81 + t200 * t73 + t201 * t74) * m(7) + (t169 * t324 + t193 * t357 + t194 * t358 + t220 * t242 + t235 * t293 + t236 * t294) * m(5); (t140 * t229 + t159 * t247 + t160 * t248) * t681 + t625 + (t180 * t68 + t200 * t80 + t201 * t81) * t679 + (t220 * t324 + t235 * t357 + t236 * t358) * t683; t641 - (m(7) * t281 + t781) * t634 - (-m(7) * t282 - t780) * t633 + (m(6) * t388 + m(7) * t353) * t506 + (-m(6) * t389 - m(7) * t354) * t504; t636 + t37 * t782 + t55 * t789 + t50 * t790 + t49 * t791 + t153 * t792 + t133 * t793 + t132 * t794 + (t123 * t210 + t124 * t209 + t163 * t75 + t182 * t93 + t183 * t92 + t195 * t86) * m(7) + (t156 * t267 + t161 * t198 + t165 * t300 + t166 * t299 + t172 * t216 + t173 * t215) * m(6) + (t19 * t783 + t20 * t784) * t612; t624 + (t137 * t299 + t138 * t300 + t161 * t199 + t172 * t221 + t173 * t222 + t267 * t87) * m(6) + (t164 * t75 + t184 * t92 + t185 * t93 + t195 * t62 + t209 * t73 + t210 * t74) * m(7); t624 + (t140 * t267 + t159 * t299 + t160 * t300 + t161 * t229 + t172 * t247 + t173 * t248) * m(6) + (t180 * t75 + t195 * t68 + t200 * t92 + t201 * t93 + t209 * t80 + t210 * t81) * m(7); (t195 * t75 + t209 * t92 + t210 * t93) * t679 + t559 * t148 + t580 * t37 + t506 * t122 - t634 * t20 + (t161 * t267 + t172 * t299 + t173 * t300) * t681 + t504 * t121 - t633 * t19 + t654; t641; (t123 * t298 + t124 * t297 + t158 * t163 + t167 * t183 + t168 * t182 + t259 * t86) * m(7) + t636; t629 + (t158 * t164 + t167 * t184 + t168 * t185 + t259 * t62 + t297 * t73 + t298 * t74) * m(7); t629 + (t158 * t180 + t167 * t200 + t168 * t201 + t259 * t68 + t297 * t80 + t298 * t81) * m(7); (t158 * t195 + t167 * t209 + t168 * t210 + t259 * t75 + t297 * t92 + t298 * t93) * m(7) + t654; (t158 * t259 + t167 * t297 + t168 * t298) * t679 + t654;];
%% Postprocessing: Reshape Output
% From vec2symmat_6_matlab.m
res = [t1(1) t1(2) t1(4) t1(7) t1(11) t1(16); t1(2) t1(3) t1(5) t1(8) t1(12) t1(17); t1(4) t1(5) t1(6) t1(9) t1(13) t1(18); t1(7) t1(8) t1(9) t1(10) t1(14) t1(19); t1(11) t1(12) t1(13) t1(14) t1(15) t1(20); t1(16) t1(17) t1(18) t1(19) t1(20) t1(21);];
Mq  = res;
