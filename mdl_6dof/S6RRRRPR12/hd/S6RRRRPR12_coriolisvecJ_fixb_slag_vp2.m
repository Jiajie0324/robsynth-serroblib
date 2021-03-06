% Calculate vector of centrifugal and Coriolis load on the joints for
% S6RRRRPR12
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d2,d3,d4,d6,theta5]';
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
%   joint torques required to compensate Coriolis and centrifugal load

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 23:49
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S6RRRRPR12_coriolisvecJ_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(13,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR12_coriolisvecJ_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPR12_coriolisvecJ_fixb_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6RRRRPR12_coriolisvecJ_fixb_slag_vp2: pkin has to be [13x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRRPR12_coriolisvecJ_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRRRPR12_coriolisvecJ_fixb_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RRRRPR12_coriolisvecJ_fixb_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 23:29:17
% EndTime: 2019-03-09 23:30:50
% DurationCPUTime: 48.83s
% Computational Cost: add. (48673->1097), mult. (144738->1546), div. (0->0), fcn. (121243->14), ass. (0->489)
t429 = cos(qJ(2));
t421 = cos(pkin(6));
t580 = pkin(1) * t421;
t412 = t429 * t580;
t404 = qJD(1) * t412;
t425 = sin(qJ(2));
t419 = sin(pkin(6));
t420 = cos(pkin(7));
t493 = pkin(10) * t420 + pkin(9);
t469 = t419 * t493;
t452 = t425 * t469;
t336 = -qJD(1) * t452 + t404;
t411 = t425 * t580;
t436 = -t429 * t469 - t411;
t337 = t436 * qJD(1);
t418 = sin(pkin(7));
t577 = pkin(10) * t418;
t440 = (pkin(2) * t425 - t429 * t577) * t419;
t366 = qJD(1) * t440;
t424 = sin(qJ(3));
t526 = t418 * t424;
t407 = pkin(10) * t526;
t428 = cos(qJ(3));
t521 = t420 * t428;
t390 = pkin(2) * t521 - t407;
t522 = t420 * t424;
t646 = qJD(3) * t390 - t336 * t428 - t337 * t522 - t366 * t526;
t275 = -t337 * t418 + t366 * t420;
t517 = t425 * t428;
t518 = t424 * t429;
t449 = t420 * t517 + t518;
t505 = qJD(1) * t419;
t354 = t449 * t505;
t515 = t428 * t429;
t519 = t424 * t425;
t447 = -t420 * t519 + t515;
t355 = t447 * t505;
t686 = -pkin(3) * t354 + pkin(11) * t355 - t275 + (pkin(3) * t424 - pkin(11) * t428) * t418 * qJD(3);
t491 = t425 * t505;
t473 = t418 * t491;
t685 = pkin(11) * t473 - t646;
t423 = sin(qJ(4));
t427 = cos(qJ(4));
t295 = -t355 * t423 + t427 * t473;
t389 = t420 * t423 + t427 * t526;
t502 = qJD(3) * t428;
t488 = t418 * t502;
t341 = -qJD(4) * t389 - t423 * t488;
t508 = t295 - t341;
t296 = t355 * t427 + t423 * t473;
t388 = t420 * t427 - t423 * t526;
t340 = qJD(4) * t388 + t427 * t488;
t507 = t296 - t340;
t503 = qJD(3) * t424;
t489 = t418 * t503;
t679 = t354 - t489;
t525 = t418 * t428;
t392 = pkin(2) * t522 + pkin(10) * t525;
t372 = pkin(11) * t420 + t392;
t373 = (-pkin(3) * t428 - pkin(11) * t424 - pkin(2)) * t418;
t500 = qJD(4) * t427;
t501 = qJD(4) * t423;
t649 = -t372 * t501 + t373 * t500 + t423 * t686 - t427 * t685;
t283 = t372 * t427 + t373 * t423;
t648 = -qJD(4) * t283 + t423 * t685 + t427 * t686;
t684 = -pkin(4) * t679 + qJ(5) * t507 - qJD(5) * t389 + t648;
t683 = qJ(5) * t508 - qJD(5) * t388 - t649;
t682 = -qJD(3) * t392 + t336 * t424;
t417 = sin(pkin(13));
t531 = cos(pkin(13));
t238 = -t295 * t531 + t296 * t417;
t265 = t340 * t417 - t341 * t531;
t681 = t238 - t265;
t239 = t295 * t417 + t296 * t531;
t266 = t340 * t531 + t341 * t417;
t680 = t239 - t266;
t406 = qJD(1) * t421 + qJD(2);
t450 = t420 * t515 - t519;
t304 = t406 * t525 + t450 * t505;
t480 = t531 * t423;
t395 = t417 * t427 + t480;
t240 = t395 * t304;
t386 = t395 * qJD(4);
t510 = t240 - t386;
t527 = t417 * t423;
t444 = t427 * t531 - t527;
t241 = t444 * t304;
t387 = t444 * qJD(4);
t509 = t241 - t387;
t644 = t337 * t521 - (-pkin(3) * t491 - t366 * t428) * t418 - t682;
t570 = -qJ(5) - pkin(11);
t481 = qJD(4) * t570;
t384 = qJD(5) * t427 + t423 * t481;
t438 = -qJD(5) * t423 + t427 * t481;
t292 = t384 * t531 + t417 * t438;
t523 = t419 * t429;
t297 = t406 * t577 + (t493 * t523 + t411) * qJD(1);
t303 = pkin(2) * t406 + t336;
t362 = (-pkin(2) * t429 - t425 * t577 - pkin(1)) * t419;
t350 = qJD(1) * t362;
t214 = -t424 * t297 + t428 * (t303 * t420 + t350 * t418);
t448 = t420 * t518 + t517;
t439 = t448 * t419;
t305 = qJD(1) * t439 + t406 * t526;
t247 = pkin(3) * t305 - pkin(11) * t304;
t145 = -t214 * t423 + t247 * t427;
t121 = -qJ(5) * t304 * t427 + pkin(4) * t305 + t145;
t146 = t214 * t427 + t247 * t423;
t528 = t304 * t423;
t131 = -qJ(5) * t528 + t146;
t70 = t121 * t417 + t131 * t531;
t678 = t292 - t70;
t651 = t417 * t684 - t531 * t683;
t647 = pkin(4) * t508 + t644;
t432 = (qJD(2) * t449 + qJD(3) * t448) * t419;
t263 = qJD(1) * t432 + t406 * t489;
t591 = t263 / 0.2e1;
t490 = t429 * t505;
t357 = t406 * t420 - t418 * t490 + qJD(3);
t260 = -t305 * t423 + t357 * t427;
t433 = (qJD(2) * t447 + qJD(3) * t450) * t419;
t262 = qJD(1) * t433 + t406 * t488;
t504 = qJD(2) * t419;
t482 = qJD(1) * t504;
t471 = t425 * t482;
t453 = t418 * t471;
t171 = qJD(4) * t260 + t262 * t427 + t423 * t453;
t261 = t305 * t427 + t357 * t423;
t172 = -qJD(4) * t261 - t262 * t423 + t427 * t453;
t107 = t171 * t531 + t172 * t417;
t612 = t107 / 0.2e1;
t106 = t171 * t417 - t172 * t531;
t614 = -t106 / 0.2e1;
t624 = Ifges(6,1) * t612 + Ifges(6,4) * t614 + Ifges(6,5) * t591;
t249 = -t303 * t418 + t350 * t420;
t181 = -pkin(3) * t304 - pkin(11) * t305 + t249;
t215 = t297 * t428 + t303 * t522 + t350 * t526;
t187 = pkin(11) * t357 + t215;
t112 = t181 * t423 + t187 * t427;
t400 = qJD(2) * t404;
t442 = qJD(2) * t452;
t320 = -qJD(1) * t442 + t400;
t339 = t436 * qJD(2);
t321 = qJD(1) * t339;
t367 = qJD(2) * t440;
t358 = qJD(1) * t367;
t486 = t420 * t502;
t135 = -t297 * t503 + t303 * t486 + t320 * t428 + t321 * t522 + t350 * t488 + t358 * t526;
t133 = pkin(11) * t453 + t135;
t269 = -t321 * t418 + t358 * t420;
t149 = pkin(3) * t263 - pkin(11) * t262 + t269;
t46 = -qJD(4) * t112 - t133 * t423 + t149 * t427;
t24 = pkin(4) * t263 - qJ(5) * t171 - qJD(5) * t261 + t46;
t45 = t133 * t427 + t149 * t423 + t181 * t500 - t187 * t501;
t27 = qJ(5) * t172 + qJD(5) * t260 + t45;
t7 = t24 * t531 - t27 * t417;
t487 = t420 * t503;
t475 = -t297 * t502 - t303 * t487 - t320 * t424 - t350 * t489;
t134 = -t321 * t521 + (-pkin(3) * t471 - t358 * t428) * t418 - t475;
t80 = -pkin(4) * t172 + t134;
t677 = t80 * mrSges(6,2) - t7 * mrSges(6,3) + 0.2e1 * t624;
t676 = -pkin(12) * t679 + t651;
t675 = -pkin(5) * t681 + pkin(12) * t680 + t647;
t674 = -pkin(12) * t305 + t678;
t165 = pkin(4) * t528 + t215;
t673 = pkin(4) * t501 - pkin(5) * t510 + pkin(12) * t509 - t165;
t672 = t262 / 0.2e1;
t671 = -t263 / 0.2e1;
t670 = t357 / 0.2e1;
t291 = t384 * t417 - t438 * t531;
t69 = t121 * t531 - t131 * t417;
t669 = -t291 - t69;
t652 = t417 * t683 + t531 * t684;
t302 = qJD(4) - t304;
t422 = sin(qJ(6));
t426 = cos(qJ(6));
t445 = t260 * t417 + t261 * t531;
t154 = t302 * t422 + t426 * t445;
t64 = -qJD(6) * t154 - t107 * t422 + t263 * t426;
t61 = Ifges(7,6) * t64;
t153 = t302 * t426 - t422 * t445;
t63 = qJD(6) * t153 + t107 * t426 + t263 * t422;
t62 = Ifges(7,5) * t63;
t13 = Ifges(7,3) * t106 + t61 + t62;
t111 = t181 * t427 - t187 * t423;
t89 = -qJ(5) * t261 + t111;
t78 = pkin(4) * t302 + t89;
t90 = qJ(5) * t260 + t112;
t87 = t531 * t90;
t42 = t417 * t78 + t87;
t40 = pkin(12) * t302 + t42;
t186 = -pkin(3) * t357 - t214;
t141 = -pkin(4) * t260 + qJD(5) + t186;
t477 = t260 * t531 - t261 * t417;
t74 = -pkin(5) * t477 - pkin(12) * t445 + t141;
t16 = -t40 * t422 + t426 * t74;
t25 = pkin(5) * t106 - pkin(12) * t107 + t80;
t8 = t24 * t417 + t27 * t531;
t6 = pkin(12) * t263 + t8;
t1 = qJD(6) * t16 + t25 * t422 + t426 * t6;
t17 = t40 * t426 + t422 * t74;
t2 = -qJD(6) * t17 + t25 * t426 - t422 * t6;
t470 = mrSges(7,1) * t2 - mrSges(7,2) * t1;
t613 = t106 / 0.2e1;
t640 = Ifges(6,6) * t671 - t107 * Ifges(6,4) / 0.2e1;
t668 = t470 + t80 * mrSges(6,1) - t8 * mrSges(6,3) + Ifges(6,2) * t613 + t13 / 0.2e1 + t640;
t537 = t357 * Ifges(4,6);
t540 = t305 * Ifges(4,4);
t543 = t304 * Ifges(4,2);
t230 = t537 + t540 + t543;
t534 = t417 * t90;
t41 = t531 * t78 - t534;
t667 = -t249 * mrSges(4,1) - t111 * mrSges(5,1) - t41 * mrSges(6,1) + t112 * mrSges(5,2) + t42 * mrSges(6,2) + t215 * mrSges(4,3) + t230 / 0.2e1 + t540 / 0.2e1;
t301 = Ifges(4,4) * t304;
t666 = t249 * mrSges(4,2) - t214 * mrSges(4,3) + t301 / 0.2e1;
t607 = t171 / 0.2e1;
t606 = t172 / 0.2e1;
t665 = Ifges(4,3) * t670;
t663 = -Ifges(3,6) * t406 / 0.2e1;
t662 = Ifges(6,3) + Ifges(5,3);
t282 = -t372 * t423 + t373 * t427;
t252 = -pkin(4) * t525 - qJ(5) * t389 + t282;
t270 = qJ(5) * t388 + t283;
t195 = t252 * t417 + t270 * t531;
t183 = -pkin(12) * t525 + t195;
t298 = -t388 * t531 + t389 * t417;
t299 = t388 * t417 + t389 * t531;
t371 = t407 + (-pkin(2) * t428 - pkin(3)) * t420;
t309 = -pkin(4) * t388 + t371;
t216 = pkin(5) * t298 - pkin(12) * t299 + t309;
t123 = t183 * t426 + t216 * t422;
t661 = -qJD(6) * t123 - t422 * t676 + t426 * t675;
t122 = -t183 * t422 + t216 * t426;
t660 = qJD(6) * t122 + t422 * t675 + t426 * t676;
t104 = Ifges(6,6) * t106;
t105 = Ifges(6,5) * t107;
t49 = Ifges(6,3) * t263 - t104 + t105;
t169 = Ifges(5,6) * t172;
t170 = Ifges(5,5) * t171;
t83 = Ifges(5,3) * t263 + t169 + t170;
t659 = t83 + t49;
t541 = t305 * Ifges(4,1);
t156 = mrSges(6,1) * t302 - mrSges(6,3) * t445;
t86 = -mrSges(7,1) * t153 + mrSges(7,2) * t154;
t658 = t156 - t86;
t549 = t261 * Ifges(5,5);
t550 = t260 * Ifges(5,6);
t158 = Ifges(5,3) * t302 + t549 + t550;
t551 = t445 * Ifges(6,5);
t552 = t477 * Ifges(6,6);
t99 = Ifges(6,3) * t302 + t551 + t552;
t657 = t158 + t99;
t416 = -pkin(4) * t427 - pkin(3);
t317 = -pkin(5) * t444 - pkin(12) * t395 + t416;
t401 = t570 * t427;
t349 = -t401 * t531 + t527 * t570;
t258 = t317 * t426 - t349 * t422;
t656 = qJD(6) * t258 + t422 * t673 + t426 * t674;
t259 = t317 * t422 + t349 * t426;
t655 = -qJD(6) * t259 - t422 * t674 + t426 * t673;
t654 = pkin(5) * t305 - t669;
t653 = pkin(5) * t679 - t652;
t100 = Ifges(6,4) * t445 + Ifges(6,2) * t477 + Ifges(6,6) * t302;
t188 = qJD(6) - t477;
t71 = Ifges(7,5) * t154 + Ifges(7,6) * t153 + Ifges(7,3) * t188;
t650 = t71 - t100;
t335 = pkin(2) * t421 + t412 - t452;
t271 = -t335 * t418 + t362 * t420;
t329 = -t419 * t450 - t421 * t525;
t330 = t421 * t526 + t439;
t210 = pkin(3) * t329 - pkin(11) * t330 + t271;
t506 = pkin(9) * t523 + t411;
t323 = (t418 * t421 + t420 * t523) * pkin(10) + t506;
t233 = t323 * t428 + t335 * t522 + t362 * t526;
t385 = -t418 * t523 + t420 * t421;
t218 = pkin(11) * t385 + t233;
t130 = t210 * t423 + t218 * t427;
t645 = -(t337 * t420 + t366 * t418) * t428 + t682;
t643 = -t423 * t46 + t427 * t45;
t642 = t1 * t426 - t2 * t422;
t538 = t357 * Ifges(4,5);
t231 = t301 + t538 + t541;
t596 = t231 / 0.2e1;
t641 = t596 + t538 / 0.2e1 + t666;
t639 = Ifges(4,1) * t672 + Ifges(4,4) * t671;
t566 = Ifges(5,4) * t261;
t159 = Ifges(5,2) * t260 + Ifges(5,6) * t302 + t566;
t253 = Ifges(5,4) * t260;
t160 = Ifges(5,1) * t261 + Ifges(5,5) * t302 + t253;
t456 = t111 * t427 + t112 * t423;
t564 = Ifges(5,4) * t427;
t565 = Ifges(5,4) * t423;
t581 = t427 / 0.2e1;
t588 = t302 / 0.2e1;
t592 = t261 / 0.2e1;
t594 = t260 / 0.2e1;
t638 = -t456 * mrSges(5,3) + t186 * (mrSges(5,1) * t423 + mrSges(5,2) * t427) + (-Ifges(5,2) * t423 + t564) * t594 + (Ifges(5,1) * t427 - t565) * t592 + (Ifges(5,5) * t427 - Ifges(5,6) * t423) * t588 - t423 * t159 / 0.2e1 + t160 * t581;
t496 = -Ifges(6,3) / 0.2e1 - Ifges(5,3) / 0.2e1;
t637 = t496 * t302 - t158 / 0.2e1 - t99 / 0.2e1 - t552 / 0.2e1 - t551 / 0.2e1 - t550 / 0.2e1 - t549 / 0.2e1 + t537 / 0.2e1 + t667;
t232 = -t424 * t323 + t428 * (t335 * t420 + t362 * t418);
t636 = -mrSges(6,2) * t141 + mrSges(6,3) * t41;
t632 = mrSges(6,1) * t141 + mrSges(7,1) * t16 - mrSges(7,2) * t17 - mrSges(6,3) * t42;
t630 = t100 / 0.2e1 - t71 / 0.2e1 - t632;
t622 = t64 / 0.2e1;
t623 = t63 / 0.2e1;
t629 = -Ifges(6,4) * t612 + Ifges(7,5) * t623 - Ifges(6,2) * t614 - Ifges(6,6) * t591 + Ifges(7,6) * t622 + Ifges(7,3) * t613 + t668;
t14 = Ifges(7,4) * t63 + Ifges(7,2) * t64 + Ifges(7,6) * t106;
t627 = t14 / 0.2e1;
t15 = Ifges(7,1) * t63 + Ifges(7,4) * t64 + Ifges(7,5) * t106;
t626 = t15 / 0.2e1;
t563 = Ifges(7,4) * t154;
t72 = Ifges(7,2) * t153 + Ifges(7,6) * t188 + t563;
t621 = -t72 / 0.2e1;
t620 = t72 / 0.2e1;
t152 = Ifges(7,4) * t153;
t73 = Ifges(7,1) * t154 + Ifges(7,5) * t188 + t152;
t619 = t73 / 0.2e1;
t84 = Ifges(5,4) * t171 + Ifges(5,2) * t172 + Ifges(5,6) * t263;
t618 = t84 / 0.2e1;
t617 = Ifges(5,1) * t607 + Ifges(5,4) * t606 + Ifges(5,5) * t591;
t616 = pkin(1) * mrSges(3,1);
t615 = pkin(1) * mrSges(3,2);
t611 = -t153 / 0.2e1;
t610 = t153 / 0.2e1;
t609 = -t154 / 0.2e1;
t608 = t154 / 0.2e1;
t256 = Ifges(4,6) * t263;
t257 = Ifges(4,5) * t262;
t177 = Ifges(4,3) * t453 - t256 + t257;
t605 = t177 / 0.2e1;
t604 = Ifges(4,5) * t453 / 0.2e1 + t639;
t603 = -t188 / 0.2e1;
t602 = t188 / 0.2e1;
t601 = -t477 / 0.2e1;
t600 = t477 / 0.2e1;
t599 = -t445 / 0.2e1;
t598 = t445 / 0.2e1;
t595 = -t260 / 0.2e1;
t593 = -t261 / 0.2e1;
t589 = -t302 / 0.2e1;
t585 = -t357 / 0.2e1;
t584 = t421 / 0.2e1;
t583 = -t422 / 0.2e1;
t582 = t426 / 0.2e1;
t579 = pkin(4) * t261;
t578 = pkin(4) * t417;
t572 = qJD(2) / 0.2e1;
t273 = t421 * t488 + t433;
t277 = -t330 * t423 + t385 * t427;
t485 = t425 * t504;
t472 = t418 * t485;
t205 = qJD(4) * t277 + t273 * t427 + t423 * t472;
t272 = t421 * t489 + t432;
t278 = t330 * t427 + t385 * t423;
t405 = qJD(2) * t412;
t338 = t405 - t442;
t150 = -t323 * t503 + t335 * t486 + t338 * t428 + t339 * t522 + t362 * t488 + t367 * t526;
t143 = pkin(11) * t472 + t150;
t276 = -t339 * t418 + t367 * t420;
t163 = pkin(3) * t272 - pkin(11) * t273 + t276;
t57 = -qJD(4) * t130 - t143 * t423 + t163 * t427;
t35 = pkin(4) * t272 - qJ(5) * t205 - qJD(5) * t278 + t57;
t204 = -qJD(4) * t278 - t273 * t423 + t427 * t472;
t56 = t143 * t427 + t163 * t423 + t210 * t500 - t218 * t501;
t38 = qJ(5) * t204 + qJD(5) * t277 + t56;
t12 = t35 * t417 + t38 * t531;
t569 = mrSges(5,3) * t260;
t568 = mrSges(5,3) * t261;
t567 = Ifges(3,4) * t425;
t562 = Ifges(7,4) * t422;
t561 = Ifges(7,4) * t426;
t554 = t135 * mrSges(4,2);
t136 = (t321 * t420 + t358 * t418) * t428 + t475;
t553 = t136 * mrSges(4,1);
t547 = t262 * Ifges(4,4);
t110 = qJ(5) * t277 + t130;
t129 = t210 * t427 - t218 * t423;
t97 = pkin(4) * t329 - qJ(5) * t278 + t129;
t55 = t110 * t531 + t417 * t97;
t530 = t477 * t422;
t529 = t477 * t426;
t524 = t419 * t425;
t520 = t422 * t387;
t516 = t426 * t387;
t279 = -t299 * t422 - t426 * t525;
t200 = qJD(6) * t279 + t266 * t426 + t422 * t489;
t213 = t239 * t426 + t354 * t422;
t514 = t200 - t213;
t451 = -t299 * t426 + t422 * t525;
t201 = qJD(6) * t451 - t266 * t422 + t426 * t489;
t212 = -t239 * t422 + t354 * t426;
t513 = t201 - t212;
t499 = qJD(6) * t422;
t498 = qJD(6) * t426;
t492 = t531 * pkin(4);
t58 = mrSges(6,1) * t106 + mrSges(6,2) * t107;
t202 = -t241 * t422 + t305 * t426;
t479 = t202 + t520;
t203 = t241 * t426 + t305 * t422;
t478 = -t203 + t516;
t379 = t506 * qJD(1);
t476 = t663 - (Ifges(3,2) * t429 + t567) * t505 / 0.2e1 - t379 * mrSges(3,3);
t474 = -t323 * t502 - t335 * t487 - t338 * t424 - t362 * t489;
t468 = -t1 * t422 - t2 * t426;
t467 = t553 - t554;
t466 = mrSges(7,1) * t426 - mrSges(7,2) * t422;
t465 = mrSges(7,1) * t422 + mrSges(7,2) * t426;
t464 = Ifges(7,1) * t426 - t562;
t463 = Ifges(7,1) * t422 + t561;
t462 = -Ifges(7,2) * t422 + t561;
t461 = Ifges(7,2) * t426 + t562;
t460 = Ifges(7,5) * t426 - Ifges(7,6) * t422;
t459 = Ifges(7,5) * t422 + Ifges(7,6) * t426;
t458 = t16 * t422 - t17 * t426;
t53 = pkin(12) * t329 + t55;
t217 = -pkin(3) * t385 - t232;
t164 = -pkin(4) * t277 + t217;
t219 = -t277 * t531 + t278 * t417;
t220 = t277 * t417 + t278 * t531;
t79 = pkin(5) * t219 - pkin(12) * t220 + t164;
t22 = t422 * t79 + t426 * t53;
t21 = -t422 * t53 + t426 * t79;
t95 = -mrSges(7,2) * t188 + mrSges(7,3) * t153;
t96 = mrSges(7,1) * t188 - mrSges(7,3) * t154;
t457 = -t422 * t96 + t426 * t95;
t175 = t220 * t426 + t329 * t422;
t174 = -t220 * t422 + t329 * t426;
t39 = -pkin(5) * t302 - t41;
t446 = t39 * t465;
t11 = t35 * t531 - t38 * t417;
t54 = -t110 * t417 + t531 * t97;
t194 = t252 * t531 - t270 * t417;
t377 = -pkin(9) * t491 + t404;
t403 = Ifges(3,4) * t490;
t441 = Ifges(3,1) * t491 / 0.2e1 + t403 / 0.2e1 + t406 * Ifges(3,5) - t377 * mrSges(3,3);
t383 = t506 * qJD(2);
t437 = -t46 * mrSges(5,1) - t7 * mrSges(6,1) + t45 * mrSges(5,2) + t8 * mrSges(6,2);
t434 = t214 * mrSges(4,1) - t215 * mrSges(4,2) + t305 * Ifges(4,5) + t304 * Ifges(4,6) + t665;
t144 = -t339 * t521 + (-pkin(3) * t485 - t367 * t428) * t418 - t474;
t92 = -pkin(4) * t204 + t144;
t415 = -t492 - pkin(5);
t399 = Ifges(3,5) * t429 * t482;
t391 = -pkin(9) * t524 + t412;
t382 = -pkin(9) * t485 + t405;
t376 = -mrSges(3,2) * t406 + mrSges(3,3) * t490;
t375 = mrSges(3,1) * t406 - mrSges(3,3) * t491;
t369 = qJD(1) * t383;
t368 = -pkin(9) * t471 + t400;
t348 = -t401 * t417 - t480 * t570;
t268 = mrSges(4,1) * t357 - mrSges(4,3) * t305;
t267 = -mrSges(4,2) * t357 + mrSges(4,3) * t304;
t246 = -mrSges(4,1) * t304 + mrSges(4,2) * t305;
t243 = -mrSges(4,2) * t453 - mrSges(4,3) * t263;
t242 = mrSges(4,1) * t453 - mrSges(4,3) * t262;
t224 = mrSges(5,1) * t302 - t568;
t223 = -mrSges(5,2) * t302 + t569;
t197 = mrSges(4,1) * t263 + mrSges(4,2) * t262;
t196 = -mrSges(5,1) * t260 + mrSges(5,2) * t261;
t182 = pkin(5) * t525 - t194;
t178 = -t263 * Ifges(4,2) + Ifges(4,6) * t453 + t547;
t155 = -mrSges(6,2) * t302 + mrSges(6,3) * t477;
t151 = (t339 * t420 + t367 * t418) * t428 + t474;
t138 = -mrSges(5,2) * t263 + mrSges(5,3) * t172;
t137 = mrSges(5,1) * t263 - mrSges(5,3) * t171;
t125 = t204 * t417 + t205 * t531;
t124 = -t204 * t531 + t205 * t417;
t118 = -mrSges(6,1) * t477 + mrSges(6,2) * t445;
t108 = -mrSges(5,1) * t172 + mrSges(5,2) * t171;
t101 = Ifges(6,1) * t445 + Ifges(6,4) * t477 + Ifges(6,5) * t302;
t91 = pkin(5) * t445 - pkin(12) * t477 + t579;
t82 = mrSges(6,1) * t263 - mrSges(6,3) * t107;
t81 = -mrSges(6,2) * t263 - mrSges(6,3) * t106;
t76 = -qJD(6) * t175 - t125 * t422 + t272 * t426;
t75 = qJD(6) * t174 + t125 * t426 + t272 * t422;
t52 = -pkin(5) * t329 - t54;
t48 = t531 * t89 - t534;
t47 = t417 * t89 + t87;
t36 = pkin(5) * t124 - pkin(12) * t125 + t92;
t33 = -mrSges(7,2) * t106 + mrSges(7,3) * t64;
t32 = mrSges(7,1) * t106 - mrSges(7,3) * t63;
t20 = t422 * t91 + t426 * t48;
t19 = -t422 * t48 + t426 * t91;
t18 = -mrSges(7,1) * t64 + mrSges(7,2) * t63;
t10 = pkin(12) * t272 + t12;
t9 = -pkin(5) * t272 - t11;
t5 = -pkin(5) * t263 - t7;
t4 = -qJD(6) * t22 - t10 * t422 + t36 * t426;
t3 = qJD(6) * t21 + t10 * t426 + t36 * t422;
t23 = [(Ifges(7,5) * t75 + Ifges(7,6) * t76) * t602 + (Ifges(7,5) * t175 + Ifges(7,6) * t174) * t613 + ((Ifges(3,5) * t584 - t391 * mrSges(3,3) + (-0.2e1 * t615 + 0.3e1 / 0.2e1 * Ifges(3,4) * t429) * t419) * t429 + (-Ifges(3,6) * t421 - t506 * mrSges(3,3) + t418 * (Ifges(4,5) * t330 - Ifges(4,6) * t329 + Ifges(4,3) * t385) / 0.2e1 + (-0.2e1 * t616 - 0.3e1 / 0.2e1 * t567 + (0.3e1 / 0.2e1 * Ifges(3,1) - 0.3e1 / 0.2e1 * Ifges(3,2)) * t429) * t419) * t425) * t482 + m(3) * (t368 * t506 - t369 * t391 - t377 * t383 + t379 * t382) + (Ifges(7,4) * t75 + Ifges(7,2) * t76) * t610 + (Ifges(7,4) * t175 + Ifges(7,2) * t174) * t622 + (Ifges(6,4) * t125 + Ifges(6,6) * t272) * t600 + (Ifges(6,4) * t220 + Ifges(6,6) * t329) * t614 + (t1 * t174 - t16 * t75 + t17 * t76 - t175 * t2) * mrSges(7,3) + (Ifges(7,1) * t75 + Ifges(7,4) * t76) * t608 + (Ifges(7,1) * t175 + Ifges(7,4) * t174) * t623 + t629 * t219 + (-Ifges(6,4) * t598 + Ifges(7,5) * t608 - Ifges(6,2) * t600 - Ifges(6,6) * t588 + Ifges(7,6) * t610 + Ifges(7,3) * t602 - t630) * t124 + t657 * t272 / 0.2e1 + t304 * (Ifges(4,4) * t273 - Ifges(4,2) * t272) / 0.2e1 + t368 * (-mrSges(3,2) * t421 + mrSges(3,3) * t523) - t369 * (mrSges(3,1) * t421 - mrSges(3,3) * t524) + (t441 * t429 + (t663 + (t665 + t434) * t418 + t476) * t425) * t504 + (-t135 * t329 - t136 * t330 - t214 * t273 - t215 * t272) * mrSges(4,3) - t385 * t554 + t659 * t329 / 0.2e1 + (Ifges(5,5) * t205 + Ifges(6,5) * t125 + Ifges(5,6) * t204 + t272 * t662) * t588 + (Ifges(5,5) * t278 + Ifges(6,5) * t220 + Ifges(5,6) * t277 + t329 * t662) * t591 + t305 * (Ifges(4,1) * t273 - Ifges(4,4) * t272) / 0.2e1 + m(4) * (t135 * t233 + t136 * t232 + t150 * t215 + t151 * t214 + t249 * t276 + t269 * t271) + m(5) * (t111 * t57 + t112 * t56 + t129 * t46 + t130 * t45 + t134 * t217 + t144 * t186) + m(6) * (t11 * t41 + t12 * t42 + t141 * t92 + t164 * t80 + t54 * t7 + t55 * t8) + m(7) * (t1 * t22 + t16 * t4 + t17 * t3 + t2 * t21 + t39 * t9 + t5 * t52) + (t125 * t141 + t220 * t80 - t272 * t42 - t329 * t8) * mrSges(6,2) + t382 * t376 - t383 * t375 + t46 * (mrSges(5,1) * t329 - mrSges(5,3) * t278) + t7 * (mrSges(6,1) * t329 - mrSges(6,3) * t220) - t329 * t178 / 0.2e1 + t269 * (mrSges(4,1) * t329 + mrSges(4,2) * t330) + t45 * (-mrSges(5,2) * t329 + mrSges(5,3) * t277) + t134 * (-mrSges(5,1) * t277 + mrSges(5,2) * t278) + t111 * (mrSges(5,1) * t272 - mrSges(5,3) * t205) + t112 * (-mrSges(5,2) * t272 + mrSges(5,3) * t204) + t41 * (mrSges(6,1) * t272 - mrSges(6,3) * t125) - t272 * t230 / 0.2e1 + t249 * (mrSges(4,1) * t272 + mrSges(4,2) * t273) + t276 * t246 + t150 * t267 + t151 * t268 + t271 * t197 + t233 * t243 + t232 * t242 + t56 * t223 + t57 * t224 + t217 * t108 + t186 * (-mrSges(5,1) * t204 + mrSges(5,2) * t205) + t205 * t160 / 0.2e1 + t204 * t159 / 0.2e1 + t144 * t196 + t5 * (-mrSges(7,1) * t174 + mrSges(7,2) * t175) + t164 * t58 + (Ifges(4,5) * t273 - Ifges(4,6) * t272) * t670 + (Ifges(4,4) * t330 - Ifges(4,2) * t329 + Ifges(4,6) * t385) * t671 + (Ifges(4,1) * t330 - Ifges(4,4) * t329 + Ifges(4,5) * t385) * t672 + t385 * t553 + t399 * t584 + (Ifges(5,1) * t205 + Ifges(5,4) * t204 + Ifges(5,5) * t272) * t592 + (Ifges(5,4) * t205 + Ifges(5,2) * t204 + Ifges(5,6) * t272) * t594 + t273 * t596 + t21 * t32 + t22 * t33 + (Ifges(6,1) * t125 + Ifges(6,5) * t272) * t598 + (Ifges(6,1) * t220 + Ifges(6,5) * t329) * t612 + t52 * t18 + t39 * (-mrSges(7,1) * t76 + mrSges(7,2) * t75) + t55 * t81 + t54 * t82 + t9 * t86 + t3 * t95 + t4 * t96 + t92 * t118 + t330 * t604 + t385 * t605 + (Ifges(5,4) * t278 + Ifges(5,2) * t277 + Ifges(5,6) * t329) * t606 + (Ifges(5,1) * t278 + Ifges(5,4) * t277 + Ifges(5,5) * t329) * t607 + t278 * t617 + t277 * t618 + t75 * t619 + t76 * t620 + t220 * t624 + t175 * t626 + t174 * t627 + t125 * t101 / 0.2e1 + t129 * t137 + t130 * t138 + t12 * t155 + t11 * t156; (Ifges(5,5) * t296 + Ifges(6,5) * t239 + Ifges(5,6) * t295 - Ifges(6,6) * t238) * t589 + (-Ifges(7,4) * t451 + Ifges(7,2) * t279) * t622 + (-Ifges(7,1) * t451 + Ifges(7,4) * t279) * t623 + (t1 * t279 - t16 * t514 + t17 * t513 + t2 * t451) * mrSges(7,3) + t5 * (-mrSges(7,1) * t279 - mrSges(7,2) * t451) + (-Ifges(7,5) * t451 + Ifges(7,6) * t279) * t613 - t451 * t626 + t677 * t299 + (Ifges(5,5) * t340 + Ifges(6,5) * t266 + Ifges(5,6) * t341 - Ifges(6,6) * t265) * t588 + (Ifges(5,4) * t296 + Ifges(5,2) * t295) * t595 + (Ifges(6,4) * t239 - Ifges(6,2) * t238) * t601 + t636 * t680 - t632 * t681 + (mrSges(5,1) * t508 - mrSges(5,2) * t507) * t186 + (t111 * t507 - t112 * t508 + t388 * t45 - t389 * t46) * mrSges(5,3) + (-pkin(2) * t197 + (t269 * mrSges(4,2) - t136 * mrSges(4,3) + t604 + t639) * t424 + (t135 * mrSges(4,3) + t104 / 0.2e1 - t105 / 0.2e1 - t170 / 0.2e1 - t169 / 0.2e1 + t178 / 0.2e1 - t49 / 0.2e1 - t83 / 0.2e1 + t547 / 0.2e1 - t269 * mrSges(4,1) + (-Ifges(4,2) / 0.2e1 + t496) * t263 + t437) * t428 + ((t541 / 0.2e1 + t641) * t428 + (-t543 / 0.2e1 - t637) * t424) * qJD(3)) * t418 + t648 * t224 + (t111 * t648 + t112 * t649 + t134 * t371 + t186 * t644 + t282 * t46 + t283 * t45) * m(5) + t649 * t223 + t399 + t629 * t298 + t650 * (t265 / 0.2e1 - t238 / 0.2e1) + t651 * t155 + (t141 * t647 + t194 * t7 + t195 * t8 + t309 * t80 + t41 * t652 + t42 * t651) * m(6) + t652 * t156 + t653 * t86 + (t257 / 0.2e1 - t256 / 0.2e1 + t605 + t467) * t420 + (Ifges(6,1) * t239 - Ifges(6,4) * t238) * t599 + ((-t403 / 0.2e1 + t505 * t615 - t441) * t429 + ((t616 + t567 / 0.2e1 + (Ifges(3,2) / 0.2e1 - Ifges(3,1) / 0.2e1) * t429) * t505 + (t406 / 0.2e1 - qJD(2)) * Ifges(3,6) + ((Ifges(4,5) * t424 + Ifges(4,6) * t428) * t418 * t572 + (t420 * t572 + t585) * Ifges(4,3) - t434) * t418 - t476) * t425) * t505 + (t340 / 0.2e1 - t296 / 0.2e1) * t160 + (Ifges(5,1) * t296 + Ifges(5,4) * t295) * t593 + t644 * t196 + t645 * t268 + (-pkin(2) * t269 * t418 + t135 * t392 + t136 * t390 + t214 * t645 + t215 * t646 - t249 * t275) * m(4) + t646 * t267 + t647 * t118 + (-t212 / 0.2e1 + t201 / 0.2e1) * t72 + t660 * t95 + t661 * t96 + (t1 * t123 + t122 * t2 + t16 * t661 + t17 * t660 + t182 * t5 + t39 * t653) * m(7) + (t266 / 0.2e1 - t239 / 0.2e1) * t101 + (t341 / 0.2e1 - t295 / 0.2e1) * t159 + t134 * (-mrSges(5,1) * t388 + mrSges(5,2) * t389) + t390 * t242 + t392 * t243 + t371 * t108 - t377 * t376 + t379 * t375 - t368 * mrSges(3,2) - t369 * mrSges(3,1) + t309 * t58 + t282 * t137 + t283 * t138 - t275 * t246 + t194 * t82 + t195 * t81 + t182 * t18 + (-t213 / 0.2e1 + t200 / 0.2e1) * t73 + (-mrSges(7,1) * t513 + mrSges(7,2) * t514) * t39 + (Ifges(5,5) * t389 + Ifges(5,6) * t388) * t591 + (Ifges(5,1) * t340 + Ifges(5,4) * t341) * t592 + (Ifges(5,4) * t340 + Ifges(5,2) * t341) * t594 + (Ifges(6,1) * t266 - Ifges(6,4) * t265) * t598 + (Ifges(6,4) * t266 - Ifges(6,2) * t265) * t600 + (Ifges(7,5) * t200 + Ifges(7,6) * t201 + Ifges(7,3) * t265) * t602 + (Ifges(7,5) * t213 + Ifges(7,6) * t212 + Ifges(7,3) * t238) * t603 + (-t231 / 0.2e1 + Ifges(4,5) * t585 - t541 / 0.2e1 - t666) * t355 + (-t657 / 0.2e1 + t543 / 0.2e1 - Ifges(4,6) * t585 + Ifges(5,5) * t593 + Ifges(5,6) * t595 + Ifges(6,5) * t599 + Ifges(6,6) * t601 + t662 * t589 + t667) * t354 + (Ifges(5,4) * t389 + Ifges(5,2) * t388) * t606 + (Ifges(5,1) * t389 + Ifges(5,4) * t388) * t607 + (Ifges(7,1) * t200 + Ifges(7,4) * t201 + Ifges(7,5) * t265) * t608 + (Ifges(7,1) * t213 + Ifges(7,4) * t212 + Ifges(7,5) * t238) * t609 + (Ifges(7,4) * t200 + Ifges(7,2) * t201 + Ifges(7,6) * t265) * t610 + (Ifges(7,4) * t213 + Ifges(7,2) * t212 + Ifges(7,6) * t238) * t611 + t389 * t617 + t388 * t618 + t279 * t627 + t122 * t32 + t123 * t33; (t5 * t465 + t464 * t623 + t462 * t622 + t460 * t613 + t14 * t583 + t15 * t582 + t468 * mrSges(7,3) + (mrSges(7,3) * t458 + t39 * t466 + t426 * t621 + t459 * t603 + t461 * t611 + t463 * t609 + t583 * t73) * qJD(6) + t677) * t395 + (-pkin(3) * t134 - t111 * t145 - t112 * t146 - t186 * t215) * m(5) + t678 * t155 + (t41 * t509 + t42 * t510) * mrSges(6,3) + (mrSges(7,2) * t510 - mrSges(7,3) * t479) * t17 + (-mrSges(6,1) * t510 - mrSges(6,2) * t509) * t141 + (-mrSges(7,1) * t510 - mrSges(7,3) * t478) * t16 + ((Ifges(4,2) / 0.2e1 - Ifges(4,1) / 0.2e1) * t305 - t638 - t641) * t304 + ((m(6) * t141 + t118) * t423 * pkin(4) + t638) * qJD(4) + (mrSges(7,1) * t479 + mrSges(7,2) * t478) * t39 + t650 * (t386 / 0.2e1 - t240 / 0.2e1) + t654 * t86 + t655 * t96 + (t1 * t259 + t16 * t655 + t17 * t656 + t2 * t258 + t348 * t5 + t39 * t654) * m(7) + t656 * t95 + t177 + t467 + (t268 - t196) * t215 + (-t203 / 0.2e1 + t516 / 0.2e1) * t73 + t637 * t305 - m(6) * (t141 * t165 + t41 * t69 + t42 * t70) + (-t82 + t18) * t348 + (m(5) * t643 + (-m(5) * t456 - t423 * t223 - t427 * t224) * qJD(4) - t137 * t423 + t138 * t427) * pkin(11) + t643 * mrSges(5,3) + (-t202 / 0.2e1 - t520 / 0.2e1) * t72 + t134 * (-mrSges(5,1) * t427 + mrSges(5,2) * t423) + t416 * t58 + t349 * t81 - t214 * t267 + t258 * t32 + t259 * t33 - t146 * t223 - t145 * t224 + (t387 / 0.2e1 - t241 / 0.2e1) * t101 - t165 * t118 + m(6) * (-t291 * t41 + t292 * t42 - t348 * t7 + t349 * t8 + t416 * t80) + t84 * t581 + (Ifges(6,5) * t387 - Ifges(6,6) * t386) * t588 + (Ifges(6,5) * t241 - Ifges(6,6) * t240) * t589 + (Ifges(5,5) * t423 + Ifges(5,6) * t427) * t591 + (Ifges(6,1) * t387 - Ifges(6,4) * t386) * t598 + (Ifges(6,1) * t241 - Ifges(6,4) * t240) * t599 + (Ifges(6,4) * t387 - Ifges(6,2) * t386) * t600 + (Ifges(6,4) * t241 - Ifges(6,2) * t240) * t601 + (Ifges(7,5) * t516 - Ifges(7,6) * t520 + Ifges(7,3) * t386) * t602 + (Ifges(7,5) * t203 + Ifges(7,6) * t202 + Ifges(7,3) * t240) * t603 - (t61 / 0.2e1 + t62 / 0.2e1 + (Ifges(6,2) / 0.2e1 + Ifges(7,3) / 0.2e1) * t106 + t640 + t668) * t444 + t669 * t156 - pkin(3) * t108 + (Ifges(5,2) * t427 + t565) * t606 + (Ifges(5,1) * t423 + t564) * t607 + (Ifges(7,1) * t516 - Ifges(7,4) * t520 + Ifges(7,5) * t386) * t608 + (Ifges(7,1) * t203 + Ifges(7,4) * t202 + Ifges(7,5) * t240) * t609 + (Ifges(7,4) * t516 - Ifges(7,2) * t520 + Ifges(7,6) * t386) * t610 + (Ifges(7,4) * t203 + Ifges(7,2) * t202 + Ifges(7,6) * t240) * t611 + t423 * t617; (t153 * t462 + t154 * t464 + t188 * t460) * qJD(6) / 0.2e1 + (-t16 * t19 - t17 * t20 - t39 * t47 + t415 * t5) * m(7) + (t224 + t568) * t112 + (-t223 + t569) * t111 + (-t141 * t579 + t41 * t47 - t42 * t48 + (t417 * t8 + t531 * t7) * pkin(4)) * m(6) + (-Ifges(5,2) * t261 + t160 + t253) * t595 + (-Ifges(6,4) * t599 + Ifges(7,5) * t609 - Ifges(6,2) * t601 - Ifges(6,6) * t589 + Ifges(7,6) * t611 + Ifges(7,3) * t603 + t630) * t445 + t658 * t47 + t659 + t82 * t492 + (-t446 - t101 / 0.2e1 + Ifges(6,5) * t589 + Ifges(6,1) * t599 + Ifges(6,4) * t601 + t460 * t603 + t464 * t609 + t462 * t611 + t636) * t477 - t437 - t118 * t579 - t73 * t529 / 0.2e1 + ((-t499 + t530) * t17 + (-t498 + t529) * t16 + t642) * mrSges(7,3) + (m(7) * ((-t16 * t426 - t17 * t422) * qJD(6) + t642) - t96 * t498 - t95 * t499 - t422 * t32 + t426 * t33) * (pkin(12) + t578) - t5 * t466 + qJD(6) * t446 + t415 * t18 - t186 * (mrSges(5,1) * t261 + mrSges(5,2) * t260) + t81 * t578 + t14 * t582 + (Ifges(5,5) * t260 - Ifges(5,6) * t261) * t589 + t159 * t592 + (Ifges(5,1) * t260 - t566) * t593 - t20 * t95 - t19 * t96 + t459 * t613 + t498 * t619 + t530 * t620 + t499 * t621 + t461 * t622 + t463 * t623 + t422 * t626 - t48 * t155; t426 * t32 + t422 * t33 + t658 * t445 + t457 * qJD(6) + (-t155 - t457) * t477 + t58 + (-t188 * t458 - t39 * t445 - t468) * m(7) + (t41 * t445 - t42 * t477 + t80) * m(6); -t39 * (mrSges(7,1) * t154 + mrSges(7,2) * t153) - t16 * t95 + t17 * t96 + (Ifges(7,1) * t153 - t563) * t609 + t72 * t608 + (Ifges(7,5) * t153 - Ifges(7,6) * t154) * t603 + (t153 * t16 + t154 * t17) * mrSges(7,3) + t470 + t13 + (-Ifges(7,2) * t154 + t152 + t73) * t611;];
tauc  = t23(:);
