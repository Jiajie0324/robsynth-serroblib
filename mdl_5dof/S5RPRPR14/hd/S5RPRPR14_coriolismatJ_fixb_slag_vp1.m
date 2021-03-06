% Calculate matrix of centrifugal and coriolis load on the joints for
% S5RPRPR14
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d5,theta4]';
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
% Datum: 2019-12-31 18:35
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S5RPRPR14_coriolismatJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(8,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRPR14_coriolismatJ_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRPR14_coriolismatJ_fixb_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPRPR14_coriolismatJ_fixb_slag_vp1: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPRPR14_coriolismatJ_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RPRPR14_coriolismatJ_fixb_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RPRPR14_coriolismatJ_fixb_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 18:34:32
% EndTime: 2019-12-31 18:34:54
% DurationCPUTime: 15.37s
% Computational Cost: add. (30300->635), mult. (41496->918), div. (0->0), fcn. (44511->8), ass. (0->360)
t650 = Icges(5,3) + Icges(4,3);
t391 = qJ(3) + pkin(8);
t379 = sin(t391);
t380 = cos(t391);
t433 = Icges(5,5) * t379 + Icges(5,6) * t380;
t395 = sin(qJ(3));
t398 = cos(qJ(3));
t435 = Icges(4,5) * t395 + Icges(4,6) * t398;
t649 = t433 + t435;
t397 = cos(qJ(5));
t399 = cos(qJ(1));
t499 = t397 * t399;
t394 = sin(qJ(5));
t396 = sin(qJ(1));
t504 = t396 * t394;
t330 = -t379 * t504 + t499;
t503 = t396 * t397;
t507 = t394 * t399;
t331 = t379 * t503 + t507;
t511 = t380 * t396;
t220 = Icges(6,5) * t331 + Icges(6,6) * t330 - Icges(6,3) * t511;
t526 = Icges(6,4) * t331;
t223 = Icges(6,2) * t330 - Icges(6,6) * t511 + t526;
t318 = Icges(6,4) * t330;
t226 = Icges(6,1) * t331 - Icges(6,5) * t511 + t318;
t332 = t379 * t507 + t503;
t333 = t379 * t499 - t504;
t510 = t380 * t399;
t114 = t220 * t510 + t332 * t223 - t333 * t226;
t648 = t114 * t399;
t647 = t396 * t114;
t222 = -Icges(6,5) * t333 + Icges(6,6) * t332 + Icges(6,3) * t510;
t516 = t222 * t379;
t320 = Icges(6,4) * t333;
t225 = Icges(6,2) * t332 + Icges(6,6) * t510 - t320;
t319 = Icges(6,4) * t332;
t227 = Icges(6,1) * t333 - Icges(6,5) * t510 - t319;
t639 = t225 * t394 + t227 * t397;
t127 = t639 * t380 - t516;
t502 = t396 * t398;
t375 = pkin(3) * t502;
t513 = t379 * t396;
t260 = rSges(6,3) * t513 + (rSges(6,1) * t503 - rSges(6,2) * t504) * t380;
t461 = -pkin(4) * t511 - pkin(7) * t513 - t260;
t206 = t375 - t461;
t444 = rSges(6,1) * t397 - rSges(6,2) * t394;
t543 = pkin(3) * t398;
t207 = (t543 + (rSges(6,3) + pkin(7)) * t379 + (pkin(4) + t444) * t380) * t399;
t450 = rSges(5,1) * t511 - rSges(5,2) * t513;
t279 = t375 + t450;
t363 = rSges(4,1) * t398 - rSges(4,2) * t395;
t340 = t363 * t396;
t341 = t363 * t399;
t590 = m(6) / 0.2e1;
t591 = m(5) / 0.2e1;
t348 = rSges(5,1) * t380 - rSges(5,2) * t379;
t448 = (t348 + t543) * t399;
t615 = t396 * t448;
t462 = (-t206 * t399 + t396 * t207) * t590 + (-t279 * t399 + t615) * t591 + m(4) * (-t340 * t399 + t396 * t341) / 0.2e1;
t282 = rSges(6,3) * t379 + t380 * t444;
t350 = pkin(4) * t380 + pkin(7) * t379;
t479 = t282 + t350;
t216 = t396 * t479 + t375;
t218 = (t479 + t543) * t399;
t288 = t348 * t396 + t375;
t494 = (t216 * t399 - t218 * t396) * t590 + (t288 * t399 - t615) * t591;
t40 = t494 - t462;
t646 = qJD(1) * t40;
t609 = t216 * t396 + t399 * t218;
t614 = t399 * t448;
t622 = -m(6) / 0.2e1;
t492 = t609 * t622 + (-t288 * t396 - t614) * t591;
t495 = (t396 * t206 + t207 * t399) * t590 + (t396 * t279 + t614) * t591;
t44 = t495 - t492;
t645 = t44 * qJD(1);
t631 = -t650 * t396 + t649 * t399;
t528 = Icges(5,4) * t379;
t438 = Icges(5,2) * t380 + t528;
t293 = Icges(5,6) * t399 + t396 * t438;
t365 = Icges(5,4) * t511;
t295 = Icges(5,1) * t513 + Icges(5,5) * t399 + t365;
t530 = Icges(4,4) * t395;
t439 = Icges(4,2) * t398 + t530;
t305 = Icges(4,6) * t399 + t396 * t439;
t374 = Icges(4,4) * t502;
t506 = t395 * t396;
t307 = Icges(4,1) * t506 + Icges(4,5) * t399 + t374;
t627 = -t293 * t380 - t295 * t379 - t305 * t398 - t307 * t395;
t427 = -t332 * t225 - t333 * t227;
t488 = t330 * t223 + t331 * t226;
t644 = t427 + t488 + (-t220 * t396 - t222 * t399) * t380;
t643 = Icges(4,5) * t398 + Icges(5,5) * t380 - Icges(4,6) * t395 - Icges(5,6) * t379;
t607 = t333 * rSges(6,1) - t332 * rSges(6,2);
t233 = rSges(6,3) * t510 - t607;
t642 = -t233 * t379 + t282 * t510;
t294 = -Icges(5,6) * t396 + t399 * t438;
t527 = Icges(5,4) * t380;
t441 = Icges(5,1) * t379 + t527;
t296 = -Icges(5,5) * t396 + t399 * t441;
t306 = -Icges(4,6) * t396 + t399 * t439;
t529 = Icges(4,4) * t398;
t442 = Icges(4,1) * t395 + t529;
t308 = -Icges(4,5) * t396 + t399 * t442;
t640 = (-t294 * t380 - t296 * t379 - t306 * t398 - t308 * t395) * t399;
t113 = -t222 * t511 + t330 * t225 - t227 * t331;
t432 = Icges(6,5) * t397 - Icges(6,6) * t394;
t274 = Icges(6,3) * t379 + t380 * t432;
t524 = Icges(6,4) * t397;
t437 = -Icges(6,2) * t394 + t524;
t276 = Icges(6,6) * t379 + t380 * t437;
t525 = Icges(6,4) * t394;
t440 = Icges(6,1) * t397 - t525;
t278 = Icges(6,5) * t379 + t380 * t440;
t145 = t274 * t510 + t332 * t276 - t333 * t278;
t637 = t145 * t379;
t446 = rSges(5,1) * t379 + rSges(5,2) * t380;
t635 = t399 * t446;
t634 = -t631 * t396 - t640;
t633 = t293 * t511 + t295 * t513 + t305 * t502 + t307 * t506 + (t649 * t396 + t650 * t399) * t399;
t632 = -t294 * t511 - t296 * t513 - t306 * t502 - t308 * t506 - t631 * t399;
t630 = t643 * t396;
t629 = t643 * t399;
t372 = pkin(7) * t510;
t544 = pkin(3) * t395;
t376 = t399 * t544;
t381 = t399 * qJ(2);
t541 = -qJ(4) - pkin(6);
t409 = t376 + t381 + (-pkin(1) + t541) * t396;
t538 = rSges(6,3) * t380;
t542 = pkin(4) * t379;
t628 = (-t538 + t542) * t399 - t372 + t409 + t607;
t273 = Icges(6,3) * t380 - t379 * t432;
t346 = Icges(5,1) * t380 - t528;
t358 = -Icges(4,2) * t395 + t529;
t500 = t397 * t278;
t508 = t394 * t276;
t626 = (t442 / 0.2e1 + t358 / 0.2e1) * t398 + (t500 / 0.2e1 - t508 / 0.2e1 - t273 / 0.2e1 + t346 / 0.2e1 - t438 / 0.2e1) * t379;
t625 = t627 * t399;
t313 = -Icges(5,2) * t513 + t365;
t344 = -Icges(5,2) * t379 + t527;
t314 = t344 * t399;
t316 = t346 * t396;
t317 = t346 * t399;
t336 = -Icges(4,2) * t506 + t374;
t337 = t358 * t399;
t360 = Icges(4,1) * t398 - t530;
t338 = t360 * t396;
t339 = t360 * t399;
t623 = -(t396 * (t294 - t317) - t399 * (t293 - t316)) * t379 + (t396 * (t296 + t314) - t399 * (t295 + t313)) * t380 - (t396 * (t306 - t339) - t399 * (t305 - t338)) * t395 + (t396 * (t308 + t337) - t399 * (t307 + t336)) * t398;
t575 = -t396 / 0.2e1;
t574 = t396 / 0.2e1;
t572 = t399 / 0.2e1;
t618 = t113 * t396;
t617 = t113 * t399;
t616 = t282 * t399;
t512 = t379 * t399;
t377 = t399 * t541;
t453 = qJ(2) + t544;
t545 = pkin(1) * t399;
t231 = t331 * rSges(6,1) + t330 * rSges(6,2) - rSges(6,3) * t511;
t608 = -pkin(7) * t511 + t231;
t180 = t545 - t377 + (t453 + t542) * t396 + t608;
t610 = t399 * t180 - t396 * t628;
t175 = t231 * t379 + t282 * t511;
t606 = -t175 * t399 + t396 * t642;
t424 = t500 - t508;
t412 = t273 - t424;
t515 = t274 * t379;
t602 = t380 * t412 - t515;
t413 = -t274 * t399 + t639;
t601 = t380 * t413 - t516;
t428 = -t223 * t394 + t226 * t397;
t414 = t274 * t396 - t428;
t518 = t220 * t379;
t600 = t380 * t414 - t518;
t312 = (-Icges(6,2) * t397 - t525) * t380;
t315 = (-Icges(6,1) * t394 - t524) * t380;
t599 = -t394 * (t278 / 0.2e1 + t312 / 0.2e1) + t397 * (t315 / 0.2e1 - t276 / 0.2e1);
t392 = t396 ^ 2;
t393 = t399 ^ 2;
t373 = t392 + t393;
t594 = 0.2e1 * t373;
t593 = 0.4e1 * qJD(1);
t592 = 2 * qJD(3);
t143 = -t274 * t511 + t276 * t330 + t278 * t331;
t138 = t143 * t379;
t112 = -t220 * t511 + t488;
t431 = -t112 * t396 + t617;
t49 = t380 * t431 + t138;
t589 = -t49 / 0.2e1;
t244 = Icges(6,5) * t332 + Icges(6,6) * t333;
t484 = Icges(6,2) * t333 - t227 + t319;
t486 = -Icges(6,1) * t332 + t225 - t320;
t98 = t244 * t379 + (-t394 * t484 - t397 * t486) * t380;
t588 = t98 / 0.2e1;
t587 = pkin(1) + pkin(6);
t281 = -t379 * t444 + t538;
t129 = (t281 * t396 + t231) * t380 + (-t282 * t396 + t260) * t379;
t130 = (t281 * t399 - t233) * t380;
t585 = m(6) * (t129 * t180 + t130 * t628 + t175 * t206 + t207 * t642);
t249 = rSges(6,1) * t330 - rSges(6,2) * t331;
t250 = rSges(6,1) * t332 + rSges(6,2) * t333;
t321 = (-rSges(6,1) * t394 - rSges(6,2) * t397) * t380;
t583 = m(6) * (-t216 * t250 - t218 * t249 - t610 * t321);
t580 = m(6) * (t180 * t206 + t207 * t628);
t579 = t373 / 0.2e1;
t578 = t379 / 0.2e1;
t577 = t380 / 0.2e1;
t573 = t396 / 0.4e1;
t571 = t399 / 0.4e1;
t570 = m(3) * ((rSges(3,3) * t399 - t396 * pkin(1) + t381) * t399 + (t545 + (rSges(3,3) + qJ(2)) * t396) * t396);
t447 = rSges(4,1) * t395 + rSges(4,2) * t398;
t407 = -t396 * rSges(4,3) + t399 * t447;
t266 = -t587 * t396 + t381 + t407;
t267 = (rSges(4,3) + t587) * t399 + (qJ(2) + t447) * t396;
t569 = m(4) * (t266 * t341 + t267 * t340);
t568 = m(4) * (t266 * t399 + t267 * t396);
t408 = -t396 * rSges(5,3) + t635;
t238 = t408 + t409;
t239 = -t377 + (rSges(5,3) + pkin(1)) * t399 + (t446 + t453) * t396;
t566 = m(5) * (t238 * t448 + t239 * t279);
t565 = m(5) * (-t238 * t396 + t399 * t239);
t564 = m(5) * (t238 * t399 + t396 * t239);
t557 = m(6) * t606;
t556 = m(6) * (t175 * t396 + t399 * t642);
t555 = m(6) * t610;
t554 = m(6) * (t396 * t180 + t399 * t628);
t181 = -t249 * t399 - t396 * t250;
t547 = m(6) * t181;
t183 = t396 * t249 - t250 * t399;
t546 = m(6) * t183;
t540 = m(6) * qJD(5);
t536 = t396 * t49;
t115 = t222 * t510 - t427;
t430 = t115 * t399 - t647;
t50 = t380 * t430 + t637;
t535 = t399 * t50;
t534 = -t112 + t644;
t531 = t115 + t644;
t309 = (-Icges(6,5) * t394 - Icges(6,6) * t397) * t380;
t514 = t379 * t309;
t275 = Icges(6,6) * t380 - t379 * t437;
t509 = t394 * t275;
t277 = Icges(6,5) * t380 - t379 * t440;
t501 = t397 * t277;
t410 = m(6) * (-t129 * t399 + t130 * t396);
t418 = m(6) * t321 * t579;
t64 = -t410 / 0.2e1 + t418;
t498 = t64 * qJD(2);
t78 = t129 * t396 + t130 * t399;
t497 = t78 * qJD(4);
t487 = -Icges(6,1) * t330 + t223 + t526;
t485 = -Icges(6,2) * t331 + t226 + t318;
t482 = t276 - t315;
t481 = t278 + t312;
t480 = -pkin(7) * t380 - t281 + t542;
t469 = qJD(1) * t380;
t468 = qJD(5) * t380;
t235 = (t622 - m(5) / 0.2e1) * t594;
t467 = t235 * qJD(1);
t466 = t78 * t590;
t13 = -t637 + (t534 * t399 + t647) * t380;
t464 = -t13 / 0.2e1 - t50 / 0.2e1;
t12 = t138 + (-t531 * t396 + t617) * t380;
t463 = t589 + t12 / 0.2e1;
t458 = -t511 / 0.4e1;
t457 = t510 / 0.4e1;
t454 = -t433 / 0.2e1 - t435 / 0.2e1;
t452 = t447 * t373;
t451 = t373 * t543;
t108 = -t309 * t511 + t330 * t481 - t331 * t482;
t109 = t309 * t510 + t332 * t481 + t333 * t482;
t243 = Icges(6,5) * t330 - Icges(6,6) * t331;
t97 = t243 * t379 + (-t394 * t485 - t397 * t487) * t380;
t449 = t583 / 0.2e1 + (t109 + t98) * t573 + (t108 + t97) * t571;
t126 = t380 * t428 + t518;
t429 = -t126 * t396 - t127 * t399;
t425 = t231 * t399 + t233 * t396;
t419 = m(6) * (t180 * t249 - t250 * t628) + t514 / 0.2e1;
t85 = -t243 * t511 + t330 * t485 - t331 * t487;
t86 = -t244 * t511 + t330 * t484 - t331 * t486;
t35 = t86 * t396 + t399 * t85;
t87 = t243 * t510 + t332 * t485 + t333 * t487;
t88 = t244 * t510 + t332 * t484 + t333 * t486;
t36 = t88 * t396 + t399 * t87;
t417 = t35 * t572 + t36 * t574;
t19 = t531 * t399 + t618;
t20 = t534 * t396 - t648;
t61 = t112 * t399 + t618;
t62 = t115 * t396 + t648;
t406 = t12 * t573 + t13 * t571 + t19 * t457 - t536 / 0.4e1 + t535 / 0.4e1 - t61 * t510 / 0.4e1 + (t20 + t62) * t458;
t405 = t20 / 0.2e1 + t62 / 0.2e1 + t631 * t392 / 0.2e1 + t634 * t574 + ((-t627 + t631) * t399 + t625 + t632) * t572;
t404 = -t61 / 0.2e1 + t19 / 0.2e1 - t633 * t399 / 0.2e1 + t632 * t575 + (-t625 + t632) * t574 + ((t627 + t631) * t396 + t633 + t634 + t640) * t572;
t101 = t275 * t330 + t277 * t331 - t602 * t396;
t102 = t332 * t275 - t333 * t277 + t602 * t399;
t104 = (t274 + t501 - t509) * t380 + t412 * t379;
t157 = t380 * t424 + t515;
t255 = t276 * t396;
t257 = t278 * t396;
t91 = (-t255 * t394 + t257 * t397 + t220) * t380 + t414 * t379;
t256 = t276 * t399;
t258 = t278 * t399;
t92 = (t256 * t394 - t258 * t397 + t222) * t380 + t413 * t379;
t403 = t104 * t578 + t157 * t577 + t585 / 0.2e1 + (t126 + t143) * t513 / 0.4e1 - (-t127 + t145) * t512 / 0.4e1 + (t91 + t101) * t458 + (t102 + t92) * t457;
t402 = t501 / 0.2e1 - t509 / 0.2e1 + t274 / 0.2e1 - t441 / 0.2e1 - t344 / 0.2e1;
t329 = pkin(3) * t506 - pkin(6) * t399 - t377;
t302 = t399 * (-qJ(4) * t396 + t376);
t289 = t376 + t635;
t287 = (-t446 - t544) * t396;
t234 = (-m(6) / 0.4e1 - m(5) / 0.4e1) * t594 + (m(5) + m(6)) * t579;
t217 = t399 * t480 + t376;
t215 = (-t480 - t544) * t396;
t189 = -t379 * t250 + t321 * t510;
t188 = t249 * t379 + t321 * t511;
t174 = t546 / 0.2e1;
t173 = t547 / 0.2e1;
t161 = t181 * t380;
t154 = t425 * t380;
t137 = t461 * t396 - t451 + (-t350 * t399 - t616) * t399;
t133 = (t514 + (-t394 * t481 - t397 * t482) * t380) * t379;
t119 = t556 / 0.2e1;
t118 = -t557 / 0.2e1;
t117 = -t302 + (-pkin(4) * t512 + t233 + t372) * t399 + (-pkin(4) * t513 - t329 - t608) * t396;
t105 = (-t260 * t399 + t396 * t616) * t380 + t425 * t379;
t93 = t555 + t565;
t82 = -t332 * t256 + t333 * t258 + t601 * t399;
t81 = t332 * t255 - t333 * t257 + t600 * t399;
t80 = -t256 * t330 - t258 * t331 - t601 * t396;
t79 = t255 * t330 + t257 * t331 - t600 * t396;
t76 = qJD(3) * t466;
t63 = t410 / 0.2e1 + t418;
t56 = t554 + t564 + t568 + t570;
t55 = t599 * t380 + t419;
t54 = -t117 * t183 + t609 * t321;
t51 = t157 * t379 + t380 * t429;
t45 = t492 + t495;
t38 = t462 + t494;
t34 = t119 - t547 / 0.2e1;
t33 = t118 - t546 / 0.2e1;
t32 = t174 + t118;
t31 = t174 + t557 / 0.2e1;
t30 = t173 + t119;
t29 = t173 - t556 / 0.2e1;
t28 = t82 * t396 + t399 * t81;
t27 = t80 * t396 + t399 * t79;
t24 = t109 * t379 + (-t396 * t87 + t399 * t88) * t380;
t23 = t108 * t379 + (-t396 * t85 + t399 * t86) * t380;
t22 = -t105 * t154 + t129 * t175 + t130 * t642;
t21 = (-t360 / 0.2e1 + t439 / 0.2e1) * t395 + t569 + t566 + t580 + t402 * t380 - t626;
t14 = (-t91 * t396 + t92 * t399 + t157) * t380 + (t104 - t429) * t379;
t9 = (-t396 * t81 + t399 * t82 + t145) * t380 + (t102 - t430) * t379;
t8 = (-t396 * t79 + t399 * t80 + t143) * t380 + (t101 - t431) * t379;
t7 = m(6) * t54 + t417;
t6 = (t396 * t464 + t399 * t463) * t380;
t5 = m(6) * t22 + (t8 * t575 + t9 * t572 + t51 / 0.2e1) * t380 + (t536 / 0.2e1 - t535 / 0.2e1 + t14 / 0.2e1) * t379;
t4 = t396 * t404 + t399 * t405;
t3 = t403 + ((t61 / 0.4e1 - t19 / 0.4e1) * t399 + (t62 / 0.4e1 + t20 / 0.4e1) * t396) * t380 + (-t50 / 0.4e1 - t13 / 0.4e1) * t399 + (t49 / 0.4e1 - t12 / 0.4e1) * t396 + t449;
t2 = t403 + t406 + (-t108 / 0.4e1 - t97 / 0.4e1) * t399 + (-t109 / 0.4e1 - t98 / 0.4e1) * t396 - t583 / 0.2e1;
t1 = t406 - t585 / 0.2e1 + (-t104 / 0.2e1 + (t145 / 0.4e1 - t127 / 0.4e1) * t399 + (-t143 / 0.4e1 - t126 / 0.4e1) * t396) * t379 + (-t157 / 0.2e1 + (-t102 / 0.4e1 - t92 / 0.4e1) * t399 + (t101 / 0.4e1 + t91 / 0.4e1) * t396) * t380 + t449;
t10 = [t56 * qJD(2) + t21 * qJD(3) + t93 * qJD(4) + t55 * qJD(5), qJD(1) * t56 + qJD(3) * t38 + qJD(4) * t234 + qJD(5) * t30, t21 * qJD(1) + t38 * qJD(2) + t45 * qJD(4) + t3 * qJD(5) + ((t238 * t287 + t239 * t289 + (-t279 + t288) * t448) * t591 + (t180 * t217 - t206 * t218 + t207 * t216 + t215 * t628) * t590) * t592 + ((m(4) * (t267 * t447 - t340 * t363) + t91 / 0.2e1 + t101 / 0.2e1 + t454 * t399 + (-t305 / 0.2e1 + t338 / 0.2e1) * t398 + (-t307 / 0.2e1 - t336 / 0.2e1) * t395 + (-t293 / 0.2e1 + t316 / 0.2e1) * t380 + (-t295 / 0.2e1 - t313 / 0.2e1) * t379 - t405) * t399 + (m(4) * (-t266 * t447 + t341 * t363) + t92 / 0.2e1 + t102 / 0.2e1 + t454 * t396 + (t306 / 0.2e1 - t339 / 0.2e1) * t398 + (t308 / 0.2e1 + t337 / 0.2e1) * t395 + (t294 / 0.2e1 - t317 / 0.2e1) * t380 + (t296 / 0.2e1 + t314 / 0.2e1) * t379 - t404) * t396) * qJD(3), qJD(1) * t93 + qJD(2) * t234 + qJD(3) * t45 + qJD(5) * t32, t55 * qJD(1) + t30 * qJD(2) + t3 * qJD(3) + t32 * qJD(4) + (m(6) * (t175 * t249 + t180 * t188 + t189 * t628 - t250 * t642) + t133) * qJD(5) + ((t109 / 0.2e1 + t588 - t463) * t399 + (-t108 / 0.2e1 - t97 / 0.2e1 - t464) * t396) * t468; -t40 * qJD(3) + t235 * qJD(4) + t29 * qJD(5) + (-t554 / 0.4e1 - t564 / 0.4e1 - t568 / 0.4e1 - t570 / 0.4e1) * t593, 0, -t646 + t63 * qJD(5) + ((t287 * t396 - t289 * t399) * t591 + (t215 * t396 - t217 * t399) * t590 - m(4) * t452 / 0.2e1) * t592, t467, t29 * qJD(1) + t63 * qJD(3) + (-t188 * t399 + t189 * t396) * t540; t40 * qJD(2) + t4 * qJD(3) - t44 * qJD(4) + t1 * qJD(5) + (-t569 / 0.4e1 - t566 / 0.4e1 - t580 / 0.4e1) * t593 - t402 * t469 + ((-t439 + t360) * t395 / 0.2e1 + t626) * qJD(1), qJD(5) * t64 + t646, t4 * qJD(1) + t7 * qJD(5) + (m(6) * (t117 * t137 + t215 * t216 - t217 * t218) + m(5) * (t288 * t287 - t448 * t289 + (-t399 * t408 - t302 + (-rSges(5,3) * t399 - t396 * t446 - t329) * t396) * (-t348 * t393 - t396 * t450 - t451)) + m(4) * ((-t399 * t407 + (-t399 * rSges(4,3) - t396 * t447) * t396) * (-t396 * t340 - t341 * t399) - t363 * t452) + (t28 - t629 * t392 + (t396 * t630 + t623) * t399) * t574 + (t27 + t630 * t393 + (-t399 * t629 - t623) * t396) * t572) * qJD(3), -t645 - t78 * t540 / 0.2e1, t1 * qJD(1) + t498 + t7 * qJD(3) + t497 * t622 + (-t51 / 0.2e1 + (t36 / 0.2e1 - t9 / 0.2e1) * t399 + (-t35 / 0.2e1 + t8 / 0.2e1) * t396) * t468 + (t23 * t572 + t24 * t574 + (-t14 / 0.2e1 + (t97 / 0.2e1 + t50 / 0.2e1) * t399 + (t588 + t589) * t396) * t379 + (t161 * t117 + t154 * t183 - t188 * t218 + t189 * t216 + t606 * t321 - t22) * m(6)) * qJD(5); -t235 * qJD(2) + t44 * qJD(3) + t31 * qJD(5) + (-t555 / 0.4e1 - t565 / 0.4e1) * t593, -t467, t645 + ((t215 * t399 + t396 * t217) * t590 + (t287 * t399 + t396 * t289) * t591) * t592 + qJD(5) * t466, 0, t31 * qJD(1) + t76 + (t188 * t396 + t189 * t399) * t540; -t419 * qJD(1) + t34 * qJD(2) + t2 * qJD(3) + t33 * qJD(4) + t6 * qJD(5) - t599 * t469, qJD(1) * t34 - qJD(3) * t64, t2 * qJD(1) - t498 + ((t126 * t399 - t127 * t396) * t577 + (t92 * t396 + t91 * t399) * t578 + t8 * t572 + t9 * t574 - t62 * t512 / 0.2e1 + t28 * t510 / 0.2e1 + t61 * t513 / 0.2e1 - t27 * t511 / 0.2e1 - t417) * qJD(3) + t5 * qJD(5) + ((t105 * t117 - t129 * t218 + t130 * t216 - t137 * t154 + t175 * t217 + t215 * t642 - t54) * qJD(3) + t497 / 0.2e1) * m(6), qJD(1) * t33 + t76, t6 * qJD(1) + t5 * qJD(3) + (m(6) * (-t154 * t161 + t175 * t188 + t189 * t642) + t133 * t578 + (t23 * t575 + t24 * t572 + (-t396 * t97 + t399 * t98) * t578) * t380) * qJD(5);];
Cq = t10;
