% Calculate matrix of centrifugal and coriolis load on the joints for
% S5PRPRR4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,d2,d4,d5,theta1,theta3]';
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
% Datum: 2019-12-05 15:52
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S5PRPRR4_coriolismatJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(10,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRPRR4_coriolismatJ_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRPRR4_coriolismatJ_fixb_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S5PRPRR4_coriolismatJ_fixb_slag_vp1: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5PRPRR4_coriolismatJ_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5PRPRR4_coriolismatJ_fixb_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5PRPRR4_coriolismatJ_fixb_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 15:49:51
% EndTime: 2019-12-05 15:50:52
% DurationCPUTime: 44.84s
% Computational Cost: add. (176235->1137), mult. (460695->1723), div. (0->0), fcn. (610354->12), ass. (0->539)
t734 = Icges(4,1) - Icges(4,2);
t736 = -2 * Icges(4,4);
t712 = 2 * Icges(4,4);
t469 = sin(pkin(5));
t653 = sin(pkin(9));
t557 = t469 * t653;
t470 = cos(pkin(9));
t627 = t469 * t470;
t655 = cos(pkin(5));
t652 = sin(pkin(10));
t654 = cos(pkin(10));
t675 = sin(qJ(2));
t677 = cos(qJ(2));
t455 = t675 * t652 - t677 * t654;
t440 = t455 * t469;
t482 = t652 * t677 + t654 * t675;
t441 = t482 * t469;
t731 = Icges(4,6) * t655 + t734 * t440 + t441 * t712;
t518 = t655 * t652;
t520 = t655 * t654;
t479 = -t518 * t675 + t520 * t677;
t416 = -t470 * t482 - t479 * t653;
t590 = -t677 * t518 - t675 * t520;
t417 = -t470 * t455 + t590 * t653;
t732 = Icges(4,6) * t557 - t734 * t416 + t417 * t712;
t412 = t653 * t455 + t470 * t590;
t413 = t470 * t479 - t482 * t653;
t733 = -Icges(4,6) * t627 + t412 * t736 - t734 * t413;
t735 = t732 * t557 - t627 * t733 + t731 * t655;
t352 = Icges(4,5) * t413 + Icges(4,6) * t412;
t353 = Icges(4,5) * t416 - Icges(4,6) * t417;
t556 = t470 * t655;
t447 = t556 * t677 - t653 * t675;
t524 = t653 * t677;
t527 = t655 * t675;
t448 = t470 * t527 + t524;
t418 = Icges(3,5) * t447 - Icges(3,6) * t448;
t519 = t655 * t653;
t449 = -t470 * t675 - t519 * t677;
t450 = t470 * t677 - t519 * t675;
t419 = Icges(3,5) * t449 - Icges(3,6) * t450;
t713 = (-Icges(4,5) * t440 - Icges(4,6) * t441 + (Icges(3,5) * t677 - Icges(3,6) * t675) * t469) * t655;
t730 = -t713 - (t419 + t353) * t557 + (t352 + t418) * t627;
t725 = -2 * Icges(3,4);
t727 = Icges(3,1) - Icges(3,2);
t724 = 2 * Icges(3,4);
t585 = 0.2e1 * t469;
t723 = t413 / 0.4e1;
t722 = t416 / 0.4e1;
t721 = -t440 / 0.4e1;
t587 = 2 * m(6);
t538 = t587 / 0.4e1;
t720 = t655 / 0.4e1;
t472 = sin(qJ(4));
t676 = cos(qJ(4));
t383 = -t412 * t472 + t627 * t676;
t384 = -t412 * t676 - t472 * t627;
t282 = Icges(5,5) * t384 - Icges(5,6) * t383 - Icges(5,3) * t413;
t503 = Icges(5,4) * t676 - Icges(5,2) * t472;
t296 = -Icges(5,6) * t412 + t413 * t503;
t504 = Icges(5,1) * t676 - Icges(5,4) * t472;
t298 = -Icges(5,5) * t412 + t413 * t504;
t648 = Icges(5,4) * t384;
t284 = -Icges(5,2) * t383 - Icges(5,6) * t413 + t648;
t381 = Icges(5,4) * t383;
t286 = Icges(5,1) * t384 - Icges(5,5) * t413 - t381;
t502 = Icges(5,5) * t676 - Icges(5,6) * t472;
t499 = Icges(5,3) * t412 - t284 * t472 + t286 * t676 - t413 * t502;
t148 = -t412 * t282 - t383 * t296 + t384 * t298 + t413 * t499;
t385 = t417 * t472 - t557 * t676;
t386 = t417 * t676 + t472 * t557;
t283 = Icges(5,5) * t386 - Icges(5,6) * t385 - Icges(5,3) * t416;
t297 = Icges(5,6) * t417 + t416 * t503;
t299 = Icges(5,5) * t417 + t416 * t504;
t647 = Icges(5,4) * t386;
t285 = -Icges(5,2) * t385 - Icges(5,6) * t416 + t647;
t382 = Icges(5,4) * t385;
t287 = Icges(5,1) * t386 - Icges(5,5) * t416 - t382;
t498 = -Icges(5,3) * t417 - t285 * t472 + t287 * t676 - t416 * t502;
t149 = -t412 * t283 - t383 * t297 + t384 * t299 + t413 * t498;
t427 = t441 * t472 - t655 * t676;
t428 = t441 * t676 + t472 * t655;
t364 = Icges(5,5) * t428 - Icges(5,6) * t427 + Icges(5,3) * t440;
t369 = Icges(5,6) * t441 - t440 * t503;
t370 = Icges(5,5) * t441 - t440 * t504;
t646 = Icges(5,4) * t428;
t365 = -Icges(5,2) * t427 + Icges(5,6) * t440 + t646;
t426 = Icges(5,4) * t427;
t366 = Icges(5,1) * t428 + Icges(5,5) * t440 - t426;
t497 = -Icges(5,3) * t441 - t365 * t472 + t366 * t676 + t440 * t502;
t184 = -t412 * t364 - t383 * t369 + t384 * t370 + t413 * t497;
t471 = sin(qJ(5));
t473 = cos(qJ(5));
t324 = -t384 * t471 - t413 * t473;
t325 = t384 * t473 - t413 * t471;
t241 = Icges(6,5) * t325 + Icges(6,6) * t324 + Icges(6,3) * t383;
t645 = Icges(6,4) * t325;
t243 = Icges(6,2) * t324 + Icges(6,6) * t383 + t645;
t322 = Icges(6,4) * t324;
t245 = Icges(6,1) * t325 + Icges(6,5) * t383 + t322;
t570 = t471 * t676;
t344 = -t412 * t473 - t413 * t570;
t569 = t473 * t676;
t345 = -t412 * t471 + t413 * t569;
t632 = t413 * t472;
t254 = Icges(6,5) * t345 + Icges(6,6) * t344 + Icges(6,3) * t632;
t256 = Icges(6,4) * t345 + Icges(6,2) * t344 + Icges(6,6) * t632;
t258 = Icges(6,1) * t345 + Icges(6,4) * t344 + Icges(6,5) * t632;
t110 = t241 * t632 + t243 * t344 + t245 * t345 + t254 * t383 + t256 * t324 + t258 * t325;
t326 = -t386 * t471 - t416 * t473;
t327 = t386 * t473 - t416 * t471;
t242 = Icges(6,5) * t327 + Icges(6,6) * t326 + Icges(6,3) * t385;
t644 = Icges(6,4) * t327;
t244 = Icges(6,2) * t326 + Icges(6,6) * t385 + t644;
t323 = Icges(6,4) * t326;
t246 = Icges(6,1) * t327 + Icges(6,5) * t385 + t323;
t346 = -t416 * t570 + t417 * t473;
t347 = t416 * t569 + t417 * t471;
t630 = t416 * t472;
t255 = Icges(6,5) * t347 + Icges(6,6) * t346 + Icges(6,3) * t630;
t257 = Icges(6,4) * t347 + Icges(6,2) * t346 + Icges(6,6) * t630;
t259 = Icges(6,1) * t347 + Icges(6,4) * t346 + Icges(6,5) * t630;
t111 = t242 * t632 + t244 * t344 + t246 * t345 + t255 * t383 + t257 * t324 + t259 * t325;
t379 = -t428 * t471 + t440 * t473;
t380 = t428 * t473 + t440 * t471;
t290 = Icges(6,5) * t380 + Icges(6,6) * t379 + Icges(6,3) * t427;
t643 = Icges(6,4) * t380;
t291 = Icges(6,2) * t379 + Icges(6,6) * t427 + t643;
t378 = Icges(6,4) * t379;
t292 = Icges(6,1) * t380 + Icges(6,5) * t427 + t378;
t389 = t440 * t570 + t441 * t473;
t390 = -t440 * t569 + t441 * t471;
t628 = t440 * t472;
t302 = Icges(6,5) * t390 + Icges(6,6) * t389 - Icges(6,3) * t628;
t303 = Icges(6,4) * t390 + Icges(6,2) * t389 - Icges(6,6) * t628;
t304 = Icges(6,1) * t390 + Icges(6,4) * t389 - Icges(6,5) * t628;
t141 = t290 * t632 + t291 * t344 + t292 * t345 + t302 * t383 + t303 * t324 + t304 * t325;
t37 = t141 * t655 + (-t110 * t470 + t111 * t653) * t469;
t719 = t37 + t184 * t655 + (-t148 * t470 + t149 * t653) * t469;
t150 = t282 * t417 - t385 * t296 + t386 * t298 + t416 * t499;
t151 = t283 * t417 - t385 * t297 + t386 * t299 + t416 * t498;
t185 = t364 * t417 - t385 * t369 + t386 * t370 + t416 * t497;
t112 = t241 * t630 + t243 * t346 + t245 * t347 + t254 * t385 + t256 * t326 + t258 * t327;
t113 = t242 * t630 + t244 * t346 + t246 * t347 + t255 * t385 + t257 * t326 + t259 * t327;
t142 = t290 * t630 + t291 * t346 + t292 * t347 + t302 * t385 + t303 * t326 + t304 * t327;
t38 = t142 * t655 + (-t112 * t470 + t113 * t653) * t469;
t718 = t38 + t185 * t655 + (-t150 * t470 + t151 * t653) * t469;
t163 = t441 * t282 - t427 * t296 + t428 * t298 - t440 * t499;
t164 = t441 * t283 - t427 * t297 + t428 * t299 - t440 * t498;
t202 = t441 * t364 - t427 * t369 + t428 * t370 - t440 * t497;
t115 = -t241 * t628 + t243 * t389 + t245 * t390 + t254 * t427 + t256 * t379 + t258 * t380;
t116 = -t242 * t628 + t244 * t389 + t246 * t390 + t255 * t427 + t257 * t379 + t259 * t380;
t157 = -t290 * t628 + t291 * t389 + t292 * t390 + t302 * t427 + t303 * t379 + t304 * t380;
t48 = t157 * t655 + (-t115 * t470 + t116 * t653) * t469;
t717 = t48 + t202 * t655 + (-t163 * t470 + t164 * t653) * t469;
t689 = t413 / 0.2e1;
t685 = t416 / 0.2e1;
t682 = -t440 / 0.2e1;
t310 = -Icges(5,5) * t383 - Icges(5,6) * t384;
t613 = Icges(5,2) * t384 - t286 + t381;
t615 = -Icges(5,1) * t383 - t284 - t648;
t173 = -t310 * t416 + t385 * t613 + t386 * t615;
t311 = -Icges(5,5) * t385 - Icges(5,6) * t386;
t612 = Icges(5,2) * t386 - t287 + t382;
t614 = -Icges(5,1) * t385 - t285 - t647;
t174 = -t311 * t416 + t385 * t612 + t386 * t614;
t372 = -Icges(5,5) * t427 - Icges(5,6) * t428;
t602 = Icges(5,2) * t428 - t366 + t426;
t603 = -Icges(5,1) * t427 - t365 - t646;
t197 = -t372 * t416 + t385 * t602 + t386 * t603;
t106 = t197 * t655 + (-t173 * t470 + t174 * t653) * t469;
t515 = -Icges(6,4) * t473 + Icges(6,2) * t471;
t274 = Icges(6,6) * t384 + t383 * t515;
t516 = -Icges(6,1) * t473 + Icges(6,4) * t471;
t276 = Icges(6,5) * t384 + t383 * t516;
t514 = -Icges(6,5) * t473 + Icges(6,6) * t471;
t507 = Icges(6,3) * t384 + t243 * t471 - t245 * t473 + t383 * t514;
t119 = t386 * t241 + t326 * t274 + t327 * t276 + t385 * t507;
t275 = Icges(6,6) * t386 + t385 * t515;
t277 = Icges(6,5) * t386 + t385 * t516;
t506 = Icges(6,3) * t386 + t244 * t471 - t246 * t473 + t385 * t514;
t120 = t386 * t242 + t326 * t275 + t327 * t277 + t385 * t506;
t329 = Icges(6,6) * t428 + t427 * t515;
t330 = Icges(6,5) * t428 + t427 * t516;
t505 = Icges(6,3) * t428 + t291 * t471 - t292 * t473 + t427 * t514;
t147 = t386 * t290 + t326 * t329 + t327 * t330 + t385 * t505;
t46 = t147 * t655 + (-t119 * t470 + t120 * t653) * t469;
t710 = t106 + t46;
t247 = rSges(6,1) * t325 + rSges(6,2) * t324 + rSges(6,3) * t383;
t709 = pkin(4) * t384 + pkin(8) * t383 + t247;
t248 = rSges(6,1) * t327 + rSges(6,2) * t326 + rSges(6,3) * t385;
t620 = pkin(4) * t386 + pkin(8) * t385 + t248;
t260 = rSges(6,1) * t345 + rSges(6,2) * t344 + rSges(6,3) * t632;
t510 = pkin(4) * t676 + pkin(8) * t472;
t348 = t510 * t413;
t619 = -t260 - t348;
t261 = rSges(6,1) * t347 + rSges(6,2) * t346 + rSges(6,3) * t630;
t618 = t510 * t416 + t261;
t517 = -rSges(6,1) * t473 + rSges(6,2) * t471;
t278 = t384 * rSges(6,3) + t383 * t517;
t318 = -pkin(4) * t383 + pkin(8) * t384;
t617 = -t278 - t318;
t279 = t386 * rSges(6,3) + t385 * t517;
t616 = -pkin(4) * t385 + pkin(8) * t386 + t279;
t293 = rSges(6,1) * t380 + rSges(6,2) * t379 + rSges(6,3) * t427;
t609 = pkin(4) * t428 + pkin(8) * t427 + t293;
t305 = rSges(6,1) * t390 + rSges(6,2) * t389 - rSges(6,3) * t628;
t608 = -t510 * t440 + t305;
t331 = t428 * rSges(6,3) + t427 * t517;
t607 = -pkin(4) * t427 + pkin(8) * t428 + t331;
t599 = Icges(3,6) * t627 + t727 * t447 + t448 * t725;
t598 = -Icges(3,6) * t557 + t727 * t449 + t450 * t725;
t597 = -Icges(3,5) * t627 + t447 * t724 + t727 * t448;
t596 = Icges(3,5) * t557 + t449 * t724 + t727 * t450;
t444 = t447 * pkin(2);
t445 = t449 * pkin(2);
t593 = t444 * t557 + t445 * t627;
t592 = -Icges(3,6) * t655 + (t675 * t725 + t727 * t677) * t469;
t571 = t469 * t675;
t591 = Icges(3,4) * t677 * t585 + Icges(3,5) * t655 + t727 * t571;
t639 = t261 * t383;
t640 = t260 * t385;
t641 = t248 * t413;
t642 = t247 * t416;
t145 = (-t641 + t642) * t472 - t639 + t640;
t708 = t620 * t412 + t619 * t416 + t417 * t709;
t159 = t241 * t383 + t243 * t324 + t245 * t325;
t160 = t242 * t383 + t244 * t324 + t246 * t325;
t190 = t290 * t383 + t291 * t324 + t292 * t325;
t496 = t159 * t413 + t160 * t416 - t190 * t440;
t20 = t110 * t383 + t111 * t385 + t141 * t427 + t472 * t496;
t161 = t241 * t385 + t243 * t326 + t245 * t327;
t162 = t242 * t385 + t244 * t326 + t246 * t327;
t191 = t290 * t385 + t291 * t326 + t292 * t327;
t495 = t161 * t413 + t162 * t416 - t191 * t440;
t21 = t112 * t383 + t113 * t385 + t142 * t427 + t472 * t495;
t166 = t241 * t427 + t243 * t379 + t245 * t380;
t167 = t242 * t427 + t244 * t379 + t246 * t380;
t206 = t290 * t427 + t291 * t379 + t292 * t380;
t494 = t166 * t413 + t167 * t416 - t206 * t440;
t31 = t115 * t383 + t116 * t385 + t157 * t427 + t472 * t494;
t684 = t427 / 0.2e1;
t694 = t385 / 0.2e1;
t696 = t383 / 0.2e1;
t86 = t159 * t383 + t160 * t385 + t190 * t427;
t87 = t161 * t383 + t162 * t385 + t191 * t427;
t98 = t166 * t383 + t167 * t385 + t206 * t427;
t707 = t472 * (t682 * t98 + t685 * t87 + t689 * t86) + t20 * t696 + t21 * t694 + t31 * t684;
t361 = -pkin(3) * t412 - pkin(7) * t413;
t363 = pkin(3) * t417 - pkin(7) * t416;
t446 = pkin(2) * t527 + (-pkin(6) - qJ(3)) * t469;
t584 = t677 * pkin(2);
t402 = (t469 * pkin(6) + t446) * t470 + t584 * t653;
t403 = -pkin(6) * t557 - t653 * t446 + t470 * t584;
t601 = t402 * t557 + t403 * t627;
t530 = t361 * t557 + t363 * t627 + t601;
t158 = (t470 * t620 + t653 * t709) * t469 + t530;
t170 = t413 * t620 - t416 * t709;
t411 = pkin(3) * t441 + pkin(7) * t440;
t457 = pkin(2) * t571 + qJ(3) * t655;
t541 = t653 * t457;
t490 = -t411 * t653 - t541;
t395 = t655 * t403;
t604 = t655 * t363 + t395;
t179 = (-t609 * t653 + t490) * t469 + t604 + t620 * t655;
t554 = t655 * t402;
t491 = -t361 * t655 - t554;
t595 = -t411 - t457;
t180 = (t595 - t609) * t627 + t491 - t709 * t655;
t188 = -t413 * t609 - t440 * t709;
t189 = t416 * t609 + t440 * t620;
t268 = rSges(6,1) * t324 - rSges(6,2) * t325;
t631 = t416 * t268;
t269 = rSges(6,1) * t326 - rSges(6,2) * t327;
t633 = t413 * t269;
t217 = -t631 + t633;
t547 = t653 * t268;
t638 = t269 * t470;
t225 = (t547 + t638) * t469;
t309 = rSges(6,1) * t379 - rSges(6,2) * t380;
t231 = -t268 * t440 - t309 * t413;
t232 = t269 * t440 + t309 * t416;
t236 = t269 * t655 - t309 * t557;
t237 = -t268 * t655 - t309 * t627;
t262 = Icges(6,5) * t324 - Icges(6,6) * t325;
t623 = -Icges(6,2) * t325 + t245 + t322;
t625 = Icges(6,1) * t324 - t243 - t645;
t127 = t262 * t383 + t324 * t623 + t325 * t625;
t263 = Icges(6,5) * t326 - Icges(6,6) * t327;
t622 = -Icges(6,2) * t327 + t246 + t323;
t624 = Icges(6,1) * t326 - t244 - t644;
t128 = t263 * t383 + t324 * t622 + t325 * t624;
t306 = Icges(6,5) * t379 - Icges(6,6) * t380;
t610 = -Icges(6,2) * t380 + t292 + t378;
t611 = Icges(6,1) * t379 - t291 - t643;
t153 = t306 * t383 + t324 * t610 + t325 * t611;
t59 = t153 * t655 + (-t127 * t470 + t128 * t653) * t469;
t129 = t262 * t385 + t326 * t623 + t327 * t625;
t130 = t263 * t385 + t326 * t622 + t327 * t624;
t154 = t306 * t385 + t326 * t610 + t327 * t611;
t60 = t154 * t655 + (-t129 * t470 + t130 * t653) * t469;
t137 = t262 * t427 + t379 * t623 + t380 * t625;
t138 = t263 * t427 + t379 * t622 + t380 * t624;
t175 = t306 * t427 + t379 * t610 + t380 * t611;
t72 = -t137 * t413 - t138 * t416 + t175 * t440;
t75 = t175 * t655 + (-t137 * t470 + t138 * t653) * t469;
t706 = t72 * t720 + t440 * t75 / 0.4e1 - t416 * t60 / 0.4e1 - t413 * t59 / 0.4e1 + (t158 * t217 + t170 * t225 + t179 * t232 + t180 * t231 + t188 * t237 + t189 * t236) * t538;
t104 = t206 * t655 + (-t166 * t470 + t167 * t653) * t469;
t634 = t386 * t247;
t635 = t385 * t278;
t636 = t384 * t248;
t637 = t383 * t279;
t156 = t634 + t635 - t636 - t637;
t177 = -t247 * t428 - t278 * t427 + t293 * t384 + t331 * t383;
t178 = t248 * t428 + t279 * t427 - t293 * t386 - t331 * t385;
t194 = t247 * t385 - t248 * t383;
t545 = t653 * t318;
t546 = t653 * t278;
t205 = (t470 * t616 + t545 + t546) * t469;
t218 = -t247 * t427 + t293 * t383;
t219 = t248 * t427 - t293 * t385;
t220 = -t557 * t607 + t616 * t655;
t221 = -t607 * t627 + t617 * t655;
t134 = t428 * t241 + t379 * t274 + t380 * t276 + t427 * t507;
t135 = t428 * t242 + t379 * t275 + t380 * t277 + t427 * t506;
t165 = t428 * t290 + t379 * t329 + t380 * t330 + t427 * t505;
t35 = t134 * t383 + t135 * t385 + t165 * t427 + t166 * t384 + t167 * t386 + t206 * t428;
t117 = t384 * t241 + t324 * t274 + t325 * t276 + t383 * t507;
t118 = t384 * t242 + t324 * t275 + t325 * t277 + t383 * t506;
t146 = t384 * t290 + t324 * t329 + t325 * t330 + t383 * t505;
t45 = t146 * t655 + (-t117 * t470 + t118 * t653) * t469;
t69 = t165 * t655 + (-t134 * t470 + t135 * t653) * t469;
t93 = t190 * t655 + (-t159 * t470 + t160 * t653) * t469;
t94 = t191 * t655 + (-t161 * t470 + t162 * t653) * t469;
t705 = t35 * t720 + t428 * t104 / 0.4e1 + t427 * t69 / 0.4e1 + t386 * t94 / 0.4e1 + t385 * t46 / 0.4e1 + t384 * t93 / 0.4e1 + t383 * t45 / 0.4e1 + (t156 * t158 + t177 * t180 + t178 * t179 + t194 * t205 + t218 * t221 + t219 * t220) * t538;
t124 = t413 * t618 + t708;
t139 = -t412 * t609 - t413 * t608 + t440 * t619 - t441 * t709;
t140 = t416 * t608 - t417 * t609 + t440 * t618 + t441 * t620;
t168 = -t260 * t427 + t305 * t383 + (t247 * t440 + t293 * t413) * t472;
t169 = t261 * t427 - t305 * t385 + (-t248 * t440 - t293 * t416) * t472;
t22 = -t110 * t413 - t111 * t416 + t141 * t440 - t159 * t412 + t160 * t417 + t190 * t441;
t23 = -t112 * t413 - t113 * t416 + t142 * t440 - t161 * t412 + t162 * t417 + t191 * t441;
t33 = -t115 * t413 - t116 * t416 + t157 * t440 - t166 * t412 + t167 * t417 + t206 * t441;
t704 = -t441 * t98 / 0.4e1 + t31 * t721 - t427 * t33 / 0.4e1 + t21 * t722 - t417 * t87 / 0.4e1 + t20 * t723 + t412 * t86 / 0.4e1 - t385 * t23 / 0.4e1 - t383 * t22 / 0.4e1 - (t124 * t194 + t139 * t218 + t140 * t219 + t145 * t170 + t168 * t188 + t169 * t189) * t587 / 0.4e1;
t468 = t469 ^ 2;
t703 = m(5) / 0.4e1;
t702 = -m(6) / 0.4e1;
t701 = m(6) / 0.2e1;
t700 = m(6) / 0.4e1;
t695 = t384 / 0.2e1;
t693 = t386 / 0.2e1;
t690 = -t413 / 0.2e1;
t686 = -t416 / 0.2e1;
t683 = t428 / 0.2e1;
t681 = t440 / 0.2e1;
t678 = t470 / 0.4e1;
t674 = m(6) * qJD(4);
t673 = m(6) * qJD(5);
t606 = -Icges(4,5) * t627 - t734 * t412 + t413 * t712;
t605 = Icges(4,5) * t557 + t416 * t712 + t734 * t417;
t600 = Icges(4,5) * t655 + t440 * t736 + t734 * t441;
t594 = 0.2e1 * t593;
t588 = 0.2e1 * m(5);
t586 = 0.2e1 * t655;
t198 = -t282 * t413 - t284 * t383 + t286 * t384;
t199 = -t283 * t413 - t285 * t383 + t287 * t384;
t228 = -t364 * t413 - t365 * t383 + t366 * t384;
t39 = -t148 * t413 - t149 * t416 + t184 * t440 - t412 * t198 + t199 * t417 + t228 * t441;
t583 = -t22 / 0.2e1 - t39 / 0.2e1;
t200 = -t282 * t416 - t284 * t385 + t286 * t386;
t201 = -t283 * t416 - t285 * t385 + t287 * t386;
t229 = -t364 * t416 - t365 * t385 + t366 * t386;
t40 = -t150 * t413 - t151 * t416 + t185 * t440 - t200 * t412 + t201 * t417 + t229 * t441;
t582 = -t23 / 0.2e1 - t40 / 0.2e1;
t211 = t282 * t440 - t284 * t427 + t286 * t428;
t212 = t283 * t440 - t285 * t427 + t287 * t428;
t235 = t364 * t440 - t365 * t427 + t366 * t428;
t61 = -t163 * t413 - t164 * t416 + t202 * t440 - t211 * t412 + t212 * t417 + t235 * t441;
t581 = t33 / 0.2e1 + t61 / 0.2e1;
t580 = t655 / 0.2e1;
t579 = -t653 / 0.4e1;
t578 = t653 / 0.2e1;
t171 = -t310 * t413 + t383 * t613 + t384 * t615;
t172 = -t311 * t413 + t383 * t612 + t384 * t614;
t196 = -t372 * t413 + t383 * t602 + t384 * t603;
t41 = -t117 * t413 - t118 * t416 + t146 * t440;
t577 = -t41 / 0.2e1 + t171 * t689 + t172 * t685 + t196 * t682;
t105 = t196 * t655 + (-t171 * t470 + t172 * t653) * t469;
t576 = -t45 / 0.2e1 - t105 / 0.2e1;
t575 = m(5) * t655;
t574 = m(5) * t653;
t573 = m(6) * t655;
t572 = m(6) * t653;
t567 = -t627 / 0.2e1;
t566 = -t627 / 0.4e1;
t562 = t655 * t75;
t561 = t653 * t60;
t560 = t145 * t655;
t559 = t156 * t655;
t558 = t217 * t655;
t555 = t655 * t225;
t553 = t655 * t444;
t552 = t653 * t168;
t551 = t653 * t177;
t550 = t653 * t231;
t549 = t653 * t237;
t548 = t653 * t260;
t544 = t653 * t348;
t410 = -pkin(3) * t440 + pkin(7) * t441;
t543 = t653 * t410;
t539 = t587 / 0.2e1;
t533 = t468 * t584;
t360 = pkin(3) * t413 - pkin(7) * t412;
t340 = t360 * t557;
t362 = pkin(3) * t416 + pkin(7) * t417;
t342 = t362 * t627;
t532 = 0.2e1 * t340 + 0.2e1 * t342 + t594;
t531 = t340 + t342 + t593;
t529 = 0.2e1 * t618;
t528 = 0.2e1 * t616;
t522 = t557 / 0.2e1;
t521 = t557 / 0.4e1;
t316 = -rSges(5,1) * t383 - rSges(5,2) * t384;
t317 = -rSges(5,1) * t385 - rSges(5,2) * t386;
t250 = (t316 * t653 + t317 * t470) * t469;
t375 = -rSges(5,1) * t427 - rSges(5,2) * t428;
t270 = t317 * t655 - t375 * t557;
t271 = -t316 * t655 - t375 * t627;
t475 = (t250 * t586 + (-t270 * t470 + t271 * t653) * t585) * t703 + (t205 * t586 + (-t220 * t470 + t221 * t653) * t585) * t700;
t288 = rSges(5,1) * t384 - rSges(5,2) * t383 - rSges(5,3) * t413;
t289 = rSges(5,1) * t386 - rSges(5,2) * t385 - rSges(5,3) * t416;
t509 = rSges(5,1) * t676 - rSges(5,2) * t472;
t300 = -t412 * rSges(5,3) + t413 * t509;
t301 = rSges(5,3) * t417 + t416 * t509;
t186 = t288 * t417 + t289 * t412 - t300 * t416 + t301 * t413;
t367 = rSges(5,1) * t428 - rSges(5,2) * t427 + rSges(5,3) * t440;
t371 = t441 * rSges(5,3) - t440 * t509;
t209 = -t288 * t441 - t300 * t440 - t367 * t412 - t371 * t413;
t210 = t289 * t441 + t301 * t440 - t367 * t417 + t371 * t416;
t476 = -m(5) * (t186 * t586 + (t209 * t653 - t210 * t470) * t585) / 0.4e1 + (t124 * t586 + (t139 * t653 - t140 * t470) * t585) * t702;
t15 = t475 + t476;
t474 = t186 * t588 / 0.4e1 + (t413 * t529 + 0.2e1 * t708) * t700;
t477 = (t470 * t528 + 0.2e1 * t545 + 0.2e1 * t546) * t469 * t702 - t250 * t588 / 0.4e1;
t77 = t474 + t477;
t513 = t77 * qJD(1) - t15 * qJD(3);
t213 = t268 * t385 - t269 * t383;
t125 = (t640 / 0.2e1 - t639 / 0.2e1 + (t642 / 0.2e1 - t641 / 0.2e1) * t472 + (-t547 / 0.2e1 - t638 / 0.2e1) * t469) * m(6);
t65 = (t555 / 0.2e1 - t560 / 0.2e1 + (t549 / 0.2e1 - t552 / 0.2e1 + (-t236 / 0.2e1 + t169 / 0.2e1) * t470) * t469) * m(6);
t512 = -t125 * qJD(1) + t65 * qJD(3);
t131 = (t634 / 0.2e1 - t636 / 0.2e1 + t635 / 0.2e1 - t637 / 0.2e1 + t631 / 0.2e1 - t633 / 0.2e1) * m(6);
t67 = (t559 / 0.2e1 - t558 / 0.2e1 + (t551 / 0.2e1 - t550 / 0.2e1 + (-t178 / 0.2e1 + t232 / 0.2e1) * t470) * t469) * m(6);
t511 = -t131 * qJD(1) - t67 * qJD(3);
t53 = -t127 * t413 - t128 * t416 + t153 * t440;
t54 = -t129 * t413 - t130 * t416 + t154 * t440;
t508 = t54 * t521 + t53 * t566 + t706;
t424 = rSges(3,1) * t447 - rSges(3,2) * t448;
t425 = rSges(3,1) * t449 - rSges(3,2) * t450;
t501 = t424 * t653 + t425 * t470;
t493 = -pkin(2) * t468 * t524 + t655 * t445;
t492 = -t360 * t655 - t553;
t489 = (t300 * t653 + t301 * t470) * t469;
t358 = rSges(4,1) * t413 + rSges(4,2) * t412;
t359 = rSges(4,1) * t416 - rSges(4,2) * t417;
t488 = (t358 * t653 + t359 * t470) * t469;
t26 = t117 * t383 + t118 * t385 + t146 * t427 + t159 * t384 + t160 * t386 + t190 * t428;
t27 = t119 * t383 + t120 * t385 + t147 * t427 + t161 * t384 + t162 * t386 + t191 * t428;
t487 = t26 * t566 + t27 * t521 + t705;
t486 = t655 * t362 + t493;
t484 = t53 * t690 + t54 * t686 + t681 * t72;
t481 = -t496 * t632 / 0.4e1 - t495 * t630 / 0.4e1 + t494 * t628 / 0.4e1 - t704;
t181 = t310 * t440 + t427 * t613 + t428 * t615;
t182 = t311 * t440 + t427 * t612 + t428 * t614;
t215 = t372 * t440 + t427 * t602 + t428 * t603;
t109 = t215 * t655 + (-t181 * t470 + t182 * t653) * t469;
t203 = (t288 * t653 + t289 * t470) * t469 + t530;
t222 = t655 * t289 + (-t367 * t653 + t490) * t469 + t604;
t223 = -t655 * t288 + (-t367 + t595) * t627 + t491;
t480 = 0.4e1 * (t203 * t250 + t222 * t270 + t223 * t271) * t703 + 0.4e1 * (t158 * t205 + t179 * t220 + t180 * t221) * t700 + (t109 + t69) * t580;
t478 = t26 * t696 + t27 * t694 + t35 * t684 + t683 * t98 + t693 * t87 + t695 * t86;
t454 = (rSges(3,1) * t677 - rSges(3,2) * t675) * t469;
t439 = t655 * rSges(3,3) + (rSges(3,1) * t675 + rSges(3,2) * t677) * t469;
t407 = -rSges(4,1) * t440 - rSges(4,2) * t441;
t401 = t450 * rSges(3,1) + t449 * rSges(3,2) + rSges(3,3) * t557;
t400 = rSges(3,1) * t448 + rSges(3,2) * t447 - rSges(3,3) * t627;
t394 = t441 * rSges(4,1) - t440 * rSges(4,2) + rSges(4,3) * t655;
t337 = t417 * rSges(4,1) + t416 * rSges(4,2) + rSges(4,3) * t557;
t336 = -rSges(4,1) * t412 + rSges(4,2) * t413 - rSges(4,3) * t627;
t281 = -t655 * t358 - t553 + (-t407 * t469 - t533) * t470;
t280 = t359 * t655 - t407 * t557 + t493;
t253 = t488 + t593;
t252 = t317 * t440 + t375 * t416;
t251 = -t316 * t440 - t375 * t413;
t240 = t289 * t440 + t367 * t416;
t239 = -t288 * t440 - t367 * t413;
t238 = -t316 * t416 + t317 * t413;
t234 = -t655 * t300 + (-t533 + (-t371 - t410) * t469) * t470 + t492;
t233 = t655 * t301 + (-t371 * t653 - t543) * t469 + t486;
t230 = -t288 * t416 + t289 * t413;
t227 = t269 * t427 - t309 * t385;
t226 = -t268 * t427 + t309 * t383;
t214 = t489 + t531;
t208 = t416 * t607 + t440 * t616;
t207 = -t413 * t607 + t440 * t617;
t193 = (-t533 + (-t410 - t608) * t469) * t470 + t492 + t619 * t655;
t192 = (-t608 * t653 - t543) * t469 + t486 + t618 * t655;
t187 = t413 * t616 + t416 * t617;
t176 = (t470 * t618 + t544 + t548) * t469 + t531;
t136 = -t211 * t413 - t212 * t416 + t235 * t440;
t132 = (t156 + t217) * t538;
t126 = 0.2e1 * t145 * t700 + t225 * t538;
t122 = -t200 * t413 - t201 * t416 + t229 * t440;
t121 = -t198 * t413 - t199 * t416 + t228 * t440;
t107 = -t181 * t413 - t182 * t416 + t215 * t440;
t102 = -t173 * t413 - t174 * t416 + t197 * t440;
t92 = 0.4e1 * t186 * t230 + 0.4e1 * t209 * t239 + 0.4e1 * t210 * t240;
t78 = t474 - t477;
t76 = 0.4e1 * t170 * t217 + 0.4e1 * t188 * t231 + 0.4e1 * t189 * t232;
t73 = 0.4e1 * t158 * t225 + 0.4e1 * t179 * t236 + 0.4e1 * t180 * t237;
t70 = t137 * t383 + t138 * t385 + t175 * t427;
t68 = (0.2e1 * t558 + 0.2e1 * t559 + (t550 + t551 + (-t178 - t232) * t470) * t585) * t700;
t64 = (0.2e1 * t555 + 0.2e1 * t560 + (t549 + t552 + (-t169 - t236) * t470) * t585) * t700;
t63 = -t134 * t413 - t135 * t416 + t165 * t440;
t55 = 0.4e1 * t156 * t194 + 0.4e1 * t177 * t218 + 0.4e1 * t178 * t219;
t50 = t129 * t383 + t130 * t385 + t154 * t427;
t49 = t127 * t383 + t128 * t385 + t153 * t427;
t47 = 0.4e1 * t145 * t194 + 0.4e1 * t168 * t218 + 0.4e1 * t169 * t219;
t42 = -t119 * t413 - t120 * t416 + t147 * t440;
t36 = 0.4e1 * t124 * t170 + 0.4e1 * t139 * t188 + 0.4e1 * t140 * t189;
t14 = t475 - t476;
t9 = t562 / 0.2e1 + t73 * t700 + (t561 / 0.2e1 - t470 * t59 / 0.2e1) * t469;
t8 = t700 * t76 + t484;
t7 = (t470 * t576 + t578 * t710) * t469 + t480;
t6 = t55 * t700 + t478;
t5 = t47 * t700 + t707;
t4 = t36 * t700 + t92 * t703 + (-t494 / 0.2e1 + t136 / 0.2e1) * t441 + t581 * t440 + t582 * t416 - (t495 / 0.2e1 - t122 / 0.2e1) * t417 + t583 * t413 + (t496 / 0.2e1 - t121 / 0.2e1) * t412;
t3 = t487 + t508 + (t494 * t721 + t495 * t722 + t496 * t723) * t472 + t704;
t2 = t487 + t481 + (t53 * t678 + t54 * t579) * t469 - t706;
t1 = t508 + t481 + (t26 * t678 + t27 * t579) * t469 - t705;
t10 = [0, (m(3) * t501 * t585 / 0.2e1 + m(4) * (0.2e1 * t488 + t594) / 0.2e1 + m(5) * (0.2e1 * t489 + t532) / 0.2e1 + ((t470 * t529 + 0.2e1 * t544 + 0.2e1 * t548) * t469 + t532) * t701) * qJD(2) + t78 * qJD(4) + t126 * qJD(5), 0, t78 * qJD(2) + ((-m(5) * t316 + t539 * t617) * t416 + (m(5) * t317 + t528 * t701) * t413) * qJD(4) + t132 * qJD(5), qJD(5) * t213 * t539 + t126 * qJD(2) + t132 * qJD(4); -qJD(4) * t77 - qJD(5) * t125, t7 * qJD(4) + t9 * qJD(5) + ((t158 * t176 + t179 * t192 + t180 * t193) * m(6) + (t203 * t214 + t222 * t233 + t223 * t234) * m(5) + m(4) * ((-t655 * t336 - t554 + (-t394 - t457) * t627) * t281 + (t655 * t337 + t395 + (-t394 * t653 - t541) * t469) * t280 + ((t336 * t653 + t337 * t470) * t469 + t601) * t253) + m(3) * ((-t400 * t655 - t439 * t627) * (-t424 * t655 - t454 * t627) + (t401 * t655 - t439 * t557) * (t425 * t655 - t454 * t557) + (t400 * t653 + t401 * t470) * t468 * t501) + ((-t600 * t440 - t441 * t731 + t713) * t655 + (t419 * t519 - t418 * t556 + (t591 * t677 + t592 * t675) * t655 + (t655 * t353 - t605 * t440 - t441 * t732) * t653 - (t655 * t352 - t606 * t440 - t441 * t733) * t470 + ((-t470 * t597 + t596 * t653) * t677 + (-t470 * t599 + t598 * t653) * t675) * t469) * t469 + t717) * t580 + ((t413 * t600 + t447 * t591 + t448 * t592) * t655 + (t413 * t605 + t447 * t596 + t448 * t598) * t557 + (-t413 * t606 - t447 * t597 - t448 * t599 + t730) * t627 + t719 + t735 * t412) * t567 + ((t416 * t600 + t449 * t591 + t450 * t592) * t655 + (-t416 * t606 - t449 * t597 - t450 * t599) * t627 + (t416 * t605 + t449 * t596 + t450 * t598 - t730) * t557 + t718 - t735 * t417) * t522) * qJD(2), qJD(4) * t15 + qJD(5) * t65, t7 * qJD(2) + t3 * qJD(5) + (t158 * t187 + t170 * t205 + t179 * t208 + t180 * t207 + t188 * t221 + t189 * t220 - t36 / 0.4e1) * t674 - t513 + ((t470 * t577 + (t102 + t42) * t578) * t469 + (t109 / 0.2e1 + t69 / 0.2e1 - t581) * t440 + (-t106 / 0.2e1 - t46 / 0.2e1 - t582) * t416 + (t576 - t583) * t413 + (t203 * t238 + t222 * t252 + t223 * t251 + t230 * t250 + t239 * t271 + t240 * t270 - t92 / 0.4e1) * m(5) + (t121 - t496) * t412 / 0.2e1 - (t122 - t495) * t417 / 0.2e1 - (-t494 + t136) * t441 / 0.2e1 + (t107 + t63) * t580) * qJD(4), t9 * qJD(2) + t3 * qJD(4) + (t158 * t213 + t179 * t227 + t180 * t226 + t194 * t225 + t218 * t237 + t219 * t236 - t47 / 0.4e1) * t673 + t512 + (t49 * t567 + t50 * t522 + t580 * t70 + t59 * t696 + t60 * t694 + t684 * t75 - t707) * qJD(5); 0, (m(4) * t655 * t253 + t214 * t575 + t176 * t573 + (m(4) * t653 * t281 + t234 * t574 + t193 * t572 + (-m(4) * t280 - m(5) * t233 - m(6) * t192) * t470) * t469) * qJD(2) + t14 * qJD(4) + t64 * qJD(5), 0, t14 * qJD(2) + (t238 * t575 + t187 * t573 + (t251 * t574 + t207 * t572 + (-m(5) * t252 - m(6) * t208) * t470) * t469) * qJD(4) + t68 * qJD(5), t64 * qJD(2) + t68 * qJD(4) + (t213 * t586 + (t226 * t653 - t227 * t470) * t585) * t673 / 0.2e1; qJD(2) * t77 - qJD(5) * t131, ((t124 * t158 + t139 * t180 + t140 * t179 + t170 * t176 + t188 * t193 + t189 * t192) * t539 + (t186 * t203 + t209 * t223 + t210 * t222 + t214 * t230 + t233 * t240 + t234 * t239) * t588 / 0.2e1 - t480 - (t228 * t655 + (-t198 * t470 + t199 * t653) * t469 + t93) * t412 / 0.2e1 + t719 * t690 + (t229 * t655 + (-t200 * t470 + t201 * t653) * t469 + t94) * t417 / 0.2e1 + t718 * t686 + t717 * t681 + (t235 * t655 + (-t211 * t470 + t212 * t653) * t469 + t104) * t441 / 0.2e1 + (t33 + t61) * t580 + (t39 + t22) * t567 + (t105 + t45) * t627 / 0.2e1 - t710 * t557 / 0.2e1 + (t23 + t40) * t522) * qJD(2) + t4 * qJD(4) + t1 * qJD(5) + t513, -qJD(2) * t15 - qJD(5) * t67, t4 * qJD(2) + ((t170 * t187 + t188 * t207 + t189 * t208) * m(6) + (t230 * t238 + t239 * t251 + t240 * t252) * m(5) + (t63 / 0.2e1 + t107 / 0.2e1) * t440 + (-t42 / 0.2e1 - t102 / 0.2e1) * t416 + t577 * t413) * qJD(4) + t8 * qJD(5), t1 * qJD(2) + t8 * qJD(4) + (t49 * t690 + t50 * t686 + t53 * t696 + t54 * t694 + t681 * t70 + t684 * t72 - t478) * qJD(5) + (t170 * t213 + t188 * t226 + t189 * t227 + t194 * t217 + t218 * t231 + t219 * t232 - t55 / 0.4e1) * t673 + t511; qJD(2) * t125 + qJD(4) * t131, t2 * qJD(4) + t5 * qJD(5) - t512 + (t38 * t694 + t37 * t696 + t48 * t684 + t31 * t580 - t562 / 0.2e1 + (t104 * t682 + t685 * t94 + t689 * t93) * t472 + (t21 * t578 - t561 / 0.2e1 + (t59 / 0.2e1 - t20 / 0.2e1) * t470) * t469 + (t145 * t158 + t168 * t180 + t169 * t179 + t176 * t194 + t192 * t219 + t193 * t218 - t73 / 0.4e1) * m(6)) * qJD(2), -qJD(2) * t65 + qJD(4) * t67, t2 * qJD(2) + (t26 * t690 + t27 * t686 + t35 * t681 + t41 * t696 + t42 * t694 - t494 * t683 - t495 * t693 - t496 * t695 + t63 * t684 - t484) * qJD(4) + t6 * qJD(5) + (t156 * t170 + t177 * t188 + t178 * t189 + t187 * t194 + t207 * t218 + t208 * t219 - t76 / 0.4e1) * t674 - t511, t5 * qJD(2) + t6 * qJD(4) + ((t194 * t213 + t218 * t226 + t219 * t227) * m(6) + t50 * t694 + t49 * t696 + t70 * t684) * qJD(5);];
Cq = t10;
