% Calculate time derivative of joint inertia matrix for
% S6PRRRPP3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d4,theta1]';
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
% Datum: 2019-03-08 22:59
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S6PRRRPP3_inertiaDJ_slag_vp11(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRPP3_inertiaDJ_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRRPP3_inertiaDJ_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6PRRRPP3_inertiaDJ_slag_vp1: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6PRRRPP3_inertiaDJ_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6PRRRPP3_inertiaDJ_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6PRRRPP3_inertiaDJ_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 22:54:30
% EndTime: 2019-03-08 22:55:03
% DurationCPUTime: 21.46s
% Computational Cost: add. (77544->1325), mult. (219509->1777), div. (0->0), fcn. (252465->10), ass. (0->495)
t537 = m(6) / 0.2e1 + m(7) / 0.2e1;
t598 = 0.2e1 * t537;
t597 = rSges(7,1) + pkin(5);
t596 = rSges(7,3) + qJ(6);
t454 = sin(pkin(6));
t595 = t454 / 0.2e1;
t456 = cos(pkin(6));
t594 = t456 / 0.2e1;
t453 = sin(pkin(10));
t455 = cos(pkin(10));
t458 = sin(qJ(2));
t459 = cos(qJ(2));
t572 = t456 * t459;
t470 = -t453 * t458 + t455 * t572;
t428 = t470 * qJD(2);
t573 = t456 * t458;
t438 = t453 * t459 + t455 * t573;
t457 = sin(qJ(3));
t587 = cos(qJ(3));
t519 = t454 * t587;
t466 = -t438 * t457 - t455 * t519;
t370 = qJD(3) * t466 + t428 * t587;
t575 = t454 * t457;
t413 = t438 * t587 - t455 * t575;
t585 = sin(qJ(4));
t586 = cos(qJ(4));
t374 = t413 * t586 - t470 * t585;
t429 = t438 * qJD(2);
t286 = qJD(4) * t374 + t370 * t585 - t429 * t586;
t515 = qJD(4) * t585;
t516 = qJD(4) * t586;
t287 = t370 * t586 - t413 * t515 + t429 * t585 - t470 * t516;
t373 = t413 * t585 + t470 * t586;
t215 = pkin(4) * t287 + qJ(5) * t286 + qJD(5) * t373;
t320 = pkin(4) * t374 + qJ(5) * t373;
t536 = t453 * t573;
t440 = t455 * t459 - t536;
t415 = t440 * t587 + t453 * t575;
t439 = t453 * t572 + t455 * t458;
t430 = t439 * qJD(2);
t371 = qJD(3) * t415 - t430 * t457;
t467 = -t440 * t457 + t453 * t519;
t571 = -t215 * t467 + t371 * t320;
t404 = pkin(2) * t428 + pkin(8) * t429;
t540 = qJD(2) * t459;
t431 = -qJD(2) * t536 + t455 * t540;
t405 = -pkin(2) * t430 + pkin(8) * t431;
t576 = t454 * t455;
t577 = t453 * t454;
t544 = t404 * t577 + t405 * t576;
t372 = qJD(3) * t467 - t430 * t587;
t297 = rSges(4,1) * t372 - rSges(4,2) * t371 + rSges(4,3) * t431;
t376 = t415 * t586 + t439 * t585;
t288 = qJD(4) * t376 + t372 * t585 - t431 * t586;
t289 = t372 * t586 - t415 * t515 + t431 * t585 + t439 * t516;
t210 = rSges(5,1) * t289 - rSges(5,2) * t288 + rSges(5,3) * t371;
t214 = rSges(6,1) * t371 - rSges(6,2) * t289 + rSges(6,3) * t288;
t567 = rSges(7,2) * t288 + qJD(6) * t376 + t289 * t596 + t371 * t597;
t463 = -m(5) * t210 - m(6) * t214 - m(7) * t567;
t593 = -m(4) * t297 + t463;
t592 = -0.2e1 * t429;
t591 = 0.2e1 * t470;
t590 = m(5) / 0.2e1;
t583 = Icges(3,4) * t458;
t582 = Icges(3,4) * t459;
t328 = Icges(4,5) * t413 + Icges(4,6) * t466 - Icges(4,3) * t470;
t330 = Icges(4,4) * t413 + Icges(4,2) * t466 - Icges(4,6) * t470;
t332 = Icges(4,1) * t413 + Icges(4,4) * t466 - Icges(4,5) * t470;
t217 = -t328 * t470 + t330 * t466 + t332 * t413;
t581 = t217 * t429;
t329 = Icges(4,5) * t415 + Icges(4,6) * t467 + Icges(4,3) * t439;
t331 = Icges(4,4) * t415 + Icges(4,2) * t467 + Icges(4,6) * t439;
t333 = Icges(4,1) * t415 + Icges(4,4) * t467 + Icges(4,5) * t439;
t220 = t329 * t439 + t331 * t467 + t333 * t415;
t580 = t220 * t431;
t441 = -t456 * t587 + t458 * t575;
t442 = t456 * t457 + t458 * t519;
t574 = t454 * t459;
t390 = Icges(4,5) * t442 - Icges(4,6) * t441 - Icges(4,3) * t574;
t391 = Icges(4,4) * t442 - Icges(4,2) * t441 - Icges(4,6) * t574;
t392 = Icges(4,1) * t442 - Icges(4,4) * t441 - Icges(4,5) * t574;
t234 = -t390 * t470 + t391 * t466 + t392 * t413;
t579 = t429 * t234;
t235 = t390 * t439 + t391 * t467 + t392 * t415;
t578 = t431 * t235;
t375 = t415 * t585 - t439 * t586;
t216 = pkin(4) * t289 + qJ(5) * t288 + qJD(5) * t375;
t321 = pkin(4) * t376 + qJ(5) * t375;
t517 = t454 * t540;
t416 = qJD(3) * t442 + t457 * t517;
t570 = t441 * t216 + t416 * t321;
t319 = pkin(3) * t372 + pkin(9) * t371;
t569 = -t210 - t319;
t369 = qJD(3) * t413 + t428 * t457;
t568 = rSges(7,2) * t286 + qJD(6) * t374 + t287 * t596 + t369 * t597;
t566 = -t214 - t216;
t417 = -qJD(3) * t441 + t517 * t587;
t489 = t585 * t574;
t541 = qJD(2) * t458;
t518 = t454 * t541;
t353 = -qJD(4) * t489 + t417 * t585 + t442 * t516 - t586 * t518;
t490 = t586 * t574;
t354 = -qJD(4) * t490 + t417 * t586 - t442 * t515 + t518 * t585;
t418 = t442 * t585 + t490;
t249 = pkin(4) * t354 + qJ(5) * t353 + qJD(5) * t418;
t419 = t442 * t586 - t489;
t367 = pkin(4) * t419 + qJ(5) * t418;
t565 = -t249 * t466 + t369 * t367;
t252 = rSges(6,1) * t416 - rSges(6,2) * t354 + rSges(6,3) * t353;
t564 = -t249 - t252;
t250 = rSges(5,1) * t354 - rSges(5,2) * t353 + rSges(5,3) * t416;
t366 = pkin(3) * t417 + pkin(9) * t416;
t563 = -t250 - t366;
t562 = rSges(7,2) * t353 + qJD(6) * t419 + t354 * t596 + t416 * t597;
t561 = rSges(7,2) * t373 + t374 * t596 - t466 * t597;
t278 = -rSges(6,1) * t466 - rSges(6,2) * t374 + rSges(6,3) * t373;
t560 = -t278 - t320;
t559 = rSges(7,2) * t375 + t376 * t596 - t467 * t597;
t280 = -rSges(6,1) * t467 - rSges(6,2) * t376 + rSges(6,3) * t375;
t558 = -t280 - t321;
t281 = rSges(5,1) * t374 - rSges(5,2) * t373 - rSges(5,3) * t466;
t364 = pkin(3) * t413 - pkin(9) * t466;
t557 = -t281 - t364;
t282 = rSges(5,1) * t376 - rSges(5,2) * t375 - rSges(5,3) * t467;
t365 = pkin(3) * t415 - pkin(9) * t467;
t556 = -t282 - t365;
t318 = pkin(3) * t370 + pkin(9) * t369;
t303 = t439 * t318;
t327 = t431 * t364;
t555 = t303 + t327;
t346 = t439 * t364;
t554 = t439 * t320 + t346;
t359 = t365 * t518;
t553 = t321 * t518 + t359;
t383 = t456 * t405;
t552 = t456 * t319 + t383;
t551 = -t318 - t404;
t550 = rSges(7,2) * t418 + t419 * t596 + t441 * t597;
t348 = rSges(6,1) * t441 - rSges(6,2) * t419 + rSges(6,3) * t418;
t549 = -t348 - t367;
t349 = rSges(5,1) * t419 - rSges(5,2) * t418 + rSges(5,3) * t441;
t409 = pkin(3) * t442 + pkin(9) * t441;
t548 = -t349 - t409;
t547 = t364 * t574 - t409 * t470;
t408 = pkin(2) * t440 + pkin(8) * t439;
t406 = t456 * t408;
t546 = t456 * t365 + t406;
t545 = 0.2e1 * t544;
t407 = pkin(2) * t438 - pkin(8) * t470;
t543 = t407 * t577 + t408 * t576;
t542 = qJD(2) * t454;
t534 = t456 * t216 + t552;
t533 = -t216 - t567;
t532 = -t319 + t566;
t531 = -t215 + t551;
t530 = -t249 - t562;
t529 = -t366 + t564;
t528 = -t320 - t561;
t527 = -t364 + t560;
t526 = -t321 - t559;
t525 = -t365 + t558;
t524 = t318 * t574 - t366 * t470 + t429 * t409;
t523 = t456 * t321 + t546;
t522 = -t367 - t550;
t521 = -t409 + t549;
t514 = 0.2e1 * m(4);
t512 = 0.2e1 * m(5);
t510 = 0.2e1 * m(6);
t508 = 0.2e1 * m(7);
t358 = rSges(4,1) * t417 - rSges(4,2) * t416 + rSges(4,3) * t518;
t436 = (pkin(2) * t459 + pkin(8) * t458) * t542;
t507 = t454 * (-t358 - t436);
t393 = t442 * rSges(4,1) - t441 * rSges(4,2) - rSges(4,3) * t574;
t443 = (pkin(2) * t458 - pkin(8) * t459) * t454;
t506 = (-t393 - t443) * t454;
t263 = Icges(5,5) * t374 - Icges(5,6) * t373 - Icges(5,3) * t466;
t269 = Icges(5,4) * t374 - Icges(5,2) * t373 - Icges(5,6) * t466;
t275 = Icges(5,1) * t374 - Icges(5,4) * t373 - Icges(5,5) * t466;
t143 = -t263 * t466 - t269 * t373 + t275 * t374;
t264 = Icges(5,5) * t376 - Icges(5,6) * t375 - Icges(5,3) * t467;
t270 = Icges(5,4) * t376 - Icges(5,2) * t375 - Icges(5,6) * t467;
t276 = Icges(5,1) * t376 - Icges(5,4) * t375 - Icges(5,5) * t467;
t144 = -t264 * t466 - t270 * t373 + t276 * t374;
t339 = Icges(5,5) * t419 - Icges(5,6) * t418 + Icges(5,3) * t441;
t342 = Icges(5,4) * t419 - Icges(5,2) * t418 + Icges(5,6) * t441;
t345 = Icges(5,1) * t419 - Icges(5,4) * t418 + Icges(5,5) * t441;
t173 = -t339 * t466 - t342 * t373 + t345 * t374;
t195 = Icges(5,5) * t287 - Icges(5,6) * t286 + Icges(5,3) * t369;
t201 = Icges(5,4) * t287 - Icges(5,2) * t286 + Icges(5,6) * t369;
t207 = Icges(5,1) * t287 - Icges(5,4) * t286 + Icges(5,5) * t369;
t43 = -t195 * t466 - t201 * t373 + t207 * t374 + t263 * t369 - t269 * t286 + t275 * t287;
t196 = Icges(5,5) * t289 - Icges(5,6) * t288 + Icges(5,3) * t371;
t202 = Icges(5,4) * t289 - Icges(5,2) * t288 + Icges(5,6) * t371;
t208 = Icges(5,1) * t289 - Icges(5,4) * t288 + Icges(5,5) * t371;
t44 = -t196 * t466 - t202 * t373 + t208 * t374 + t264 * t369 - t270 * t286 + t276 * t287;
t242 = Icges(5,5) * t354 - Icges(5,6) * t353 + Icges(5,3) * t416;
t245 = Icges(5,4) * t354 - Icges(5,2) * t353 + Icges(5,6) * t416;
t248 = Icges(5,1) * t354 - Icges(5,4) * t353 + Icges(5,5) * t416;
t98 = -t242 * t466 - t245 * t373 + t248 * t374 - t286 * t342 + t287 * t345 + t339 * t369;
t1 = t143 * t369 + t144 * t371 + t173 * t416 - t43 * t466 - t44 * t467 + t441 * t98;
t240 = Icges(7,5) * t416 + Icges(7,6) * t353 + Icges(7,3) * t354;
t243 = Icges(7,4) * t416 + Icges(7,2) * t353 + Icges(7,6) * t354;
t246 = Icges(7,1) * t416 + Icges(7,4) * t353 + Icges(7,5) * t354;
t337 = Icges(7,5) * t441 + Icges(7,6) * t418 + Icges(7,3) * t419;
t340 = Icges(7,4) * t441 + Icges(7,2) * t418 + Icges(7,6) * t419;
t343 = Icges(7,1) * t441 + Icges(7,4) * t418 + Icges(7,5) * t419;
t100 = t240 * t374 + t243 * t373 - t246 * t466 + t286 * t340 + t287 * t337 + t343 * t369;
t259 = -Icges(7,5) * t466 + Icges(7,6) * t373 + Icges(7,3) * t374;
t265 = -Icges(7,4) * t466 + Icges(7,2) * t373 + Icges(7,6) * t374;
t271 = -Icges(7,1) * t466 + Icges(7,4) * t373 + Icges(7,5) * t374;
t135 = t259 * t374 + t265 * t373 - t271 * t466;
t260 = -Icges(7,5) * t467 + Icges(7,6) * t375 + Icges(7,3) * t376;
t266 = -Icges(7,4) * t467 + Icges(7,2) * t375 + Icges(7,6) * t376;
t272 = -Icges(7,1) * t467 + Icges(7,4) * t375 + Icges(7,5) * t376;
t136 = t260 * t374 + t266 * t373 - t272 * t466;
t169 = t337 * t374 + t340 * t373 - t343 * t466;
t191 = Icges(7,5) * t369 + Icges(7,6) * t286 + Icges(7,3) * t287;
t197 = Icges(7,4) * t369 + Icges(7,2) * t286 + Icges(7,6) * t287;
t203 = Icges(7,1) * t369 + Icges(7,4) * t286 + Icges(7,5) * t287;
t47 = t191 * t374 + t197 * t373 - t203 * t466 + t259 * t287 + t265 * t286 + t271 * t369;
t192 = Icges(7,5) * t371 + Icges(7,6) * t288 + Icges(7,3) * t289;
t198 = Icges(7,4) * t371 + Icges(7,2) * t288 + Icges(7,6) * t289;
t204 = Icges(7,1) * t371 + Icges(7,4) * t288 + Icges(7,5) * t289;
t48 = t192 * t374 + t198 * t373 - t204 * t466 + t260 * t287 + t266 * t286 + t272 * t369;
t3 = t100 * t441 + t135 * t369 + t136 * t371 + t169 * t416 - t466 * t47 - t467 * t48;
t241 = Icges(6,5) * t416 - Icges(6,6) * t354 + Icges(6,3) * t353;
t244 = Icges(6,4) * t416 - Icges(6,2) * t354 + Icges(6,6) * t353;
t247 = Icges(6,1) * t416 - Icges(6,4) * t354 + Icges(6,5) * t353;
t338 = Icges(6,5) * t441 - Icges(6,6) * t419 + Icges(6,3) * t418;
t341 = Icges(6,4) * t441 - Icges(6,2) * t419 + Icges(6,6) * t418;
t344 = Icges(6,1) * t441 - Icges(6,4) * t419 + Icges(6,5) * t418;
t101 = t241 * t373 - t244 * t374 - t247 * t466 + t286 * t338 - t287 * t341 + t344 * t369;
t261 = -Icges(6,5) * t466 - Icges(6,6) * t374 + Icges(6,3) * t373;
t267 = -Icges(6,4) * t466 - Icges(6,2) * t374 + Icges(6,6) * t373;
t273 = -Icges(6,1) * t466 - Icges(6,4) * t374 + Icges(6,5) * t373;
t137 = t261 * t373 - t267 * t374 - t273 * t466;
t262 = -Icges(6,5) * t467 - Icges(6,6) * t376 + Icges(6,3) * t375;
t268 = -Icges(6,4) * t467 - Icges(6,2) * t376 + Icges(6,6) * t375;
t274 = -Icges(6,1) * t467 - Icges(6,4) * t376 + Icges(6,5) * t375;
t138 = t262 * t373 - t268 * t374 - t274 * t466;
t170 = t338 * t373 - t341 * t374 - t344 * t466;
t193 = Icges(6,5) * t369 - Icges(6,6) * t287 + Icges(6,3) * t286;
t199 = Icges(6,4) * t369 - Icges(6,2) * t287 + Icges(6,6) * t286;
t205 = Icges(6,1) * t369 - Icges(6,4) * t287 + Icges(6,5) * t286;
t49 = t193 * t373 - t199 * t374 - t205 * t466 + t261 * t286 - t267 * t287 + t273 * t369;
t194 = Icges(6,5) * t371 - Icges(6,6) * t289 + Icges(6,3) * t288;
t200 = Icges(6,4) * t371 - Icges(6,2) * t289 + Icges(6,6) * t288;
t206 = Icges(6,1) * t371 - Icges(6,4) * t289 + Icges(6,5) * t288;
t50 = t194 * t373 - t200 * t374 - t206 * t466 + t262 * t286 - t268 * t287 + t274 * t369;
t4 = t101 * t441 + t137 * t369 + t138 * t371 + t170 * t416 - t466 * t49 - t467 * t50;
t505 = t1 / 0.2e1 + t3 / 0.2e1 + t4 / 0.2e1;
t145 = -t263 * t467 - t269 * t375 + t275 * t376;
t146 = -t264 * t467 - t270 * t375 + t276 * t376;
t174 = -t339 * t467 - t342 * t375 + t345 * t376;
t45 = -t195 * t467 - t201 * t375 + t207 * t376 + t263 * t371 - t269 * t288 + t275 * t289;
t46 = -t196 * t467 - t202 * t375 + t208 * t376 + t264 * t371 - t270 * t288 + t276 * t289;
t99 = -t242 * t467 - t245 * t375 + t248 * t376 - t288 * t342 + t289 * t345 + t339 * t371;
t2 = t145 * t369 + t146 * t371 + t174 * t416 + t441 * t99 - t45 * t466 - t46 * t467;
t102 = t240 * t376 + t243 * t375 - t246 * t467 + t288 * t340 + t289 * t337 + t343 * t371;
t139 = t259 * t376 + t265 * t375 - t271 * t467;
t140 = t260 * t376 + t266 * t375 - t272 * t467;
t171 = t337 * t376 + t340 * t375 - t343 * t467;
t51 = t191 * t376 + t197 * t375 - t203 * t467 + t259 * t289 + t265 * t288 + t271 * t371;
t52 = t192 * t376 + t198 * t375 - t204 * t467 + t260 * t289 + t266 * t288 + t272 * t371;
t5 = t102 * t441 + t139 * t369 + t140 * t371 + t171 * t416 - t466 * t51 - t467 * t52;
t103 = t241 * t375 - t244 * t376 - t247 * t467 + t288 * t338 - t289 * t341 + t344 * t371;
t141 = t261 * t375 - t267 * t376 - t273 * t467;
t142 = t262 * t375 - t268 * t376 - t274 * t467;
t172 = t338 * t375 - t341 * t376 - t344 * t467;
t53 = t193 * t375 - t199 * t376 - t205 * t467 + t261 * t288 - t267 * t289 + t273 * t371;
t54 = t194 * t375 - t200 * t376 - t206 * t467 + t262 * t288 - t268 * t289 + t274 * t371;
t6 = t103 * t441 + t141 * t369 + t142 * t371 + t172 * t416 - t466 * t53 - t467 * t54;
t504 = t2 / 0.2e1 + t5 / 0.2e1 + t6 / 0.2e1;
t10 = t137 * t429 + t138 * t431 - t49 * t470 + t50 * t439 + (-t101 * t459 + t170 * t541) * t454;
t7 = t143 * t429 + t144 * t431 - t43 * t470 + t44 * t439 + (t173 * t541 - t459 * t98) * t454;
t9 = t135 * t429 + t136 * t431 - t47 * t470 + t48 * t439 + (-t100 * t459 + t169 * t541) * t454;
t503 = t7 / 0.2e1 + t9 / 0.2e1 + t10 / 0.2e1;
t182 = t439 * t215;
t302 = t431 * t320;
t501 = t182 + t302 + t555;
t500 = -t319 + t533;
t499 = -t366 + t530;
t498 = -t364 + t528;
t497 = -t365 + t526;
t496 = t319 * t591 + t365 * t592 + 0.2e1 * t303 + 0.2e1 * t327;
t308 = t318 * t577;
t309 = t319 * t576;
t495 = 0.2e1 * t308 + 0.2e1 * t309 + t545;
t494 = t308 + t309 + t544;
t493 = t320 * t574 - t367 * t470 + t547;
t492 = -t409 + t522;
t491 = t364 * t577 + t365 * t576 + t543;
t11 = t139 * t429 + t140 * t431 - t51 * t470 + t52 * t439 + (-t102 * t459 + t171 * t541) * t454;
t12 = t141 * t429 + t142 * t431 - t53 * t470 + t54 * t439 + (-t103 * t459 + t172 * t541) * t454;
t8 = t145 * t429 + t146 * t431 - t45 * t470 + t46 * t439 + (t174 * t541 - t459 * t99) * t454;
t488 = t8 / 0.2e1 + t11 / 0.2e1 + t12 / 0.2e1;
t107 = t242 * t441 - t245 * t418 + t248 * t419 + t339 * t416 - t342 * t353 + t345 * t354;
t157 = t263 * t441 - t269 * t418 + t275 * t419;
t158 = t264 * t441 - t270 * t418 + t276 * t419;
t223 = t339 * t441 - t342 * t418 + t345 * t419;
t62 = t195 * t441 - t201 * t418 + t207 * t419 + t263 * t416 - t269 * t353 + t275 * t354;
t63 = t196 * t441 - t202 * t418 + t208 * t419 + t264 * t416 - t270 * t353 + t276 * t354;
t13 = t107 * t441 + t157 * t369 + t158 * t371 + t223 * t416 - t466 * t62 - t467 * t63;
t108 = t240 * t419 + t243 * t418 + t246 * t441 + t337 * t354 + t340 * t353 + t343 * t416;
t153 = t259 * t419 + t265 * t418 + t271 * t441;
t154 = t260 * t419 + t266 * t418 + t272 * t441;
t221 = t337 * t419 + t340 * t418 + t343 * t441;
t64 = t191 * t419 + t197 * t418 + t203 * t441 + t259 * t354 + t265 * t353 + t271 * t416;
t65 = t192 * t419 + t198 * t418 + t204 * t441 + t260 * t354 + t266 * t353 + t272 * t416;
t14 = t108 * t441 + t153 * t369 + t154 * t371 + t221 * t416 - t466 * t64 - t467 * t65;
t109 = t241 * t418 - t244 * t419 + t247 * t441 + t338 * t353 - t341 * t354 + t344 * t416;
t155 = t261 * t418 - t267 * t419 + t273 * t441;
t156 = t262 * t418 - t268 * t419 + t274 * t441;
t222 = t338 * t418 - t341 * t419 + t344 * t441;
t66 = t193 * t418 - t199 * t419 + t205 * t441 + t261 * t353 - t267 * t354 + t273 * t416;
t67 = t194 * t418 - t200 * t419 + t206 * t441 + t262 * t353 - t268 * t354 + t274 * t416;
t15 = t109 * t441 + t155 * t369 + t156 * t371 + t222 * t416 - t466 * t66 - t467 * t67;
t487 = t15 / 0.2e1 + t13 / 0.2e1 + t14 / 0.2e1;
t16 = t157 * t429 + t158 * t431 - t62 * t470 + t63 * t439 + (-t107 * t459 + t223 * t541) * t454;
t17 = t153 * t429 + t154 * t431 - t64 * t470 + t65 * t439 + (-t108 * t459 + t221 * t541) * t454;
t18 = t155 * t429 + t156 * t431 - t66 * t470 + t67 * t439 + (-t109 * t459 + t222 * t541) * t454;
t486 = t18 / 0.2e1 + t17 / 0.2e1 + t16 / 0.2e1;
t19 = t456 * t98 + (-t43 * t455 + t44 * t453) * t454;
t21 = t100 * t456 + (t453 * t48 - t455 * t47) * t454;
t22 = t101 * t456 + (t453 * t50 - t455 * t49) * t454;
t485 = t22 / 0.2e1 + t21 / 0.2e1 + t19 / 0.2e1;
t20 = t456 * t99 + (-t45 * t455 + t453 * t46) * t454;
t23 = t102 * t456 + (t453 * t52 - t455 * t51) * t454;
t24 = t103 * t456 + (t453 * t54 - t455 * t53) * t454;
t484 = t24 / 0.2e1 + t23 / 0.2e1 + t20 / 0.2e1;
t25 = t107 * t456 + (t453 * t63 - t455 * t62) * t454;
t26 = t108 * t456 + (t453 * t65 - t455 * t64) * t454;
t27 = t109 * t456 + (t453 * t67 - t455 * t66) * t454;
t483 = t27 / 0.2e1 + t26 / 0.2e1 + t25 / 0.2e1;
t482 = ((-t135 - t137 - t143) * t455 + (t136 + t138 + t144) * t453) * t595 + (t173 + t169 + t170) * t594;
t481 = ((-t139 - t141 - t145) * t455 + (t140 + t142 + t146) * t453) * t595 + (t174 + t171 + t172) * t594;
t480 = ((-t153 - t155 - t157) * t455 + (t154 + t156 + t158) * t453) * t595 + (t223 + t221 + t222) * t594;
t479 = (-t436 + t563) * t454;
t478 = (-t443 + t548) * t454;
t476 = (-t436 + t529) * t454;
t475 = (-t443 + t521) * t454;
t187 = t215 * t577;
t188 = t216 * t576;
t473 = t187 + t188 + t494;
t472 = t215 * t574 - t249 * t470 + t429 * t367 + t524;
t471 = t320 * t577 + t321 * t576 + t491;
t469 = (-t436 + t499) * t454;
t468 = (-t443 + t492) * t454;
t209 = rSges(5,1) * t287 - rSges(5,2) * t286 + rSges(5,3) * t369;
t212 = rSges(6,1) * t369 - rSges(6,2) * t287 + rSges(6,3) * t286;
t464 = m(5) * t209 + m(6) * t212 + m(7) * t568;
t462 = m(5) * t281 + m(6) * t278 + m(7) * t561;
t461 = -m(5) * t282 - m(6) * t280 - m(7) * t559;
t296 = rSges(4,1) * t370 - rSges(4,2) * t369 + rSges(4,3) * t429;
t460 = m(4) * t296 + t464;
t435 = (rSges(3,1) * t459 - rSges(3,2) * t458) * t542;
t434 = (Icges(3,1) * t459 - t583) * t542;
t433 = (-Icges(3,2) * t458 + t582) * t542;
t432 = (Icges(3,5) * t459 - Icges(3,6) * t458) * t542;
t425 = t456 * rSges(3,3) + (rSges(3,1) * t458 + rSges(3,2) * t459) * t454;
t423 = Icges(3,5) * t456 + (Icges(3,1) * t458 + t582) * t454;
t422 = Icges(3,6) * t456 + (Icges(3,2) * t459 + t583) * t454;
t403 = -rSges(3,1) * t430 - rSges(3,2) * t431;
t402 = rSges(3,1) * t428 - rSges(3,2) * t429;
t401 = -Icges(3,1) * t430 - Icges(3,4) * t431;
t400 = Icges(3,1) * t428 - Icges(3,4) * t429;
t399 = -Icges(3,4) * t430 - Icges(3,2) * t431;
t398 = Icges(3,4) * t428 - Icges(3,2) * t429;
t397 = -Icges(3,5) * t430 - Icges(3,6) * t431;
t396 = Icges(3,5) * t428 - Icges(3,6) * t429;
t389 = rSges(3,1) * t440 - rSges(3,2) * t439 + rSges(3,3) * t577;
t388 = rSges(3,1) * t438 + rSges(3,2) * t470 - rSges(3,3) * t576;
t387 = Icges(3,1) * t440 - Icges(3,4) * t439 + Icges(3,5) * t577;
t386 = Icges(3,1) * t438 + Icges(3,4) * t470 - Icges(3,5) * t576;
t385 = Icges(3,4) * t440 - Icges(3,2) * t439 + Icges(3,6) * t577;
t384 = Icges(3,4) * t438 + Icges(3,2) * t470 - Icges(3,6) * t576;
t357 = Icges(4,1) * t417 - Icges(4,4) * t416 + Icges(4,5) * t518;
t356 = Icges(4,4) * t417 - Icges(4,2) * t416 + Icges(4,6) * t518;
t355 = Icges(4,5) * t417 - Icges(4,6) * t416 + Icges(4,3) * t518;
t336 = rSges(4,1) * t415 + rSges(4,2) * t467 + rSges(4,3) * t439;
t335 = rSges(4,1) * t413 + rSges(4,2) * t466 - rSges(4,3) * t470;
t322 = t466 * t367;
t305 = t441 * t321;
t295 = Icges(4,1) * t372 - Icges(4,4) * t371 + Icges(4,5) * t431;
t294 = Icges(4,1) * t370 - Icges(4,4) * t369 + Icges(4,5) * t429;
t293 = Icges(4,4) * t372 - Icges(4,2) * t371 + Icges(4,6) * t431;
t292 = Icges(4,4) * t370 - Icges(4,2) * t369 + Icges(4,6) * t429;
t291 = Icges(4,5) * t372 - Icges(4,6) * t371 + Icges(4,3) * t431;
t290 = Icges(4,5) * t370 - Icges(4,6) * t369 + Icges(4,3) * t429;
t283 = t467 * t320;
t258 = -t336 * t574 - t439 * t393;
t257 = t335 * t574 - t393 * t470;
t253 = -t390 * t574 - t441 * t391 + t442 * t392;
t239 = t335 * t439 + t336 * t470;
t238 = (-t335 - t407) * t456 + t455 * t506;
t237 = t336 * t456 + t453 * t506 + t406;
t230 = (t335 * t453 + t336 * t455) * t454 + t543;
t229 = t282 * t441 + t349 * t467;
t228 = -t281 * t441 - t349 * t466;
t227 = -t329 * t574 - t441 * t331 + t442 * t333;
t226 = -t328 * t574 - t441 * t330 + t442 * t332;
t225 = (-t296 - t404) * t456 + t455 * t507;
t224 = t297 * t456 + t453 * t507 + t383;
t219 = t328 * t439 + t330 * t467 + t332 * t415;
t218 = -t329 * t470 + t331 * t466 + t333 * t413;
t184 = -t281 * t467 + t282 * t466;
t176 = t439 * t548 + t556 * t574;
t175 = t281 * t574 - t349 * t470 + t547;
t168 = (t296 * t453 + t297 * t455) * t454 + t544;
t167 = -t439 * t358 - t431 * t393 + (-t297 * t459 + t336 * t541) * t454;
t166 = -t470 * t358 + t429 * t393 + (t296 * t459 - t335 * t541) * t454;
t165 = (-t407 + t557) * t456 + t455 * t478;
t164 = t282 * t456 + t453 * t478 + t546;
t163 = -t441 * t356 + t442 * t357 - t416 * t391 + t417 * t392 + (-t355 * t459 + t390 * t541) * t454;
t162 = t281 * t439 - t470 * t556 + t346;
t160 = t280 * t441 - t467 * t549 + t305;
t159 = -t348 * t466 + t441 * t560 - t322;
t152 = t296 * t439 + t297 * t470 + t335 * t431 - t336 * t429;
t151 = (t281 * t453 + t282 * t455) * t454 + t491;
t150 = t355 * t439 + t356 * t467 + t357 * t415 - t371 * t391 + t372 * t392 + t390 * t431;
t149 = -t355 * t470 + t356 * t466 + t357 * t413 - t369 * t391 + t370 * t392 + t390 * t429;
t148 = t439 * t521 + t525 * t574;
t147 = t278 * t574 - t348 * t470 + t493;
t134 = (-t407 + t527) * t456 + t455 * t475;
t133 = t280 * t456 + t453 * t475 + t523;
t132 = -t278 * t467 - t466 * t558 - t283;
t131 = t441 * t559 - t467 * t522 + t305;
t130 = t441 * t528 - t466 * t550 - t322;
t129 = t439 * t492 + t497 * t574;
t128 = -t470 * t550 + t561 * t574 + t493;
t127 = (-t407 + t498) * t456 + t455 * t468;
t126 = t453 * t468 + t456 * t559 + t523;
t125 = t278 * t439 - t470 * t525 + t554;
t124 = (t278 * t453 + t280 * t455) * t454 + t471;
t123 = -t441 * t293 + t442 * t295 - t416 * t331 + t417 * t333 + (-t291 * t459 + t329 * t541) * t454;
t122 = -t441 * t292 + t442 * t294 - t416 * t330 + t417 * t332 + (-t290 * t459 + t328 * t541) * t454;
t121 = (-t209 + t551) * t456 + t455 * t479;
t120 = t210 * t456 + t453 * t479 + t552;
t119 = t291 * t439 + t293 * t467 + t295 * t415 + t329 * t431 - t331 * t371 + t333 * t372;
t118 = t290 * t439 + t292 * t467 + t294 * t415 + t328 * t431 - t330 * t371 + t332 * t372;
t117 = -t291 * t470 + t293 * t466 + t295 * t413 + t329 * t429 - t331 * t369 + t333 * t370;
t116 = -t290 * t470 + t292 * t466 + t294 * t413 + t328 * t429 - t330 * t369 + t332 * t370;
t115 = -t466 * t526 - t467 * t561 - t283;
t114 = t210 * t441 + t250 * t467 + t282 * t416 - t349 * t371;
t113 = -t209 * t441 - t250 * t466 - t281 * t416 + t349 * t369;
t112 = t439 * t561 - t470 * t497 + t554;
t111 = (t453 * t561 + t455 * t559) * t454 + t471;
t110 = (t209 * t453 + t210 * t455) * t454 + t494;
t106 = t359 + t563 * t439 + t548 * t431 + (t282 * t541 + t459 * t569) * t454;
t105 = -t470 * t250 + t429 * t349 + (t209 * t459 + t541 * t557) * t454 + t524;
t104 = -t209 * t467 + t210 * t466 + t281 * t371 - t282 * t369;
t97 = (-t212 + t531) * t456 + t455 * t476;
t96 = t214 * t456 + t453 * t476 + t534;
t92 = -t157 * t470 + t158 * t439 - t223 * t574;
t91 = -t155 * t470 + t156 * t439 - t222 * t574;
t90 = -t153 * t470 + t154 * t439 - t221 * t574;
t89 = -t157 * t466 - t158 * t467 + t223 * t441;
t88 = -t155 * t466 - t156 * t467 + t222 * t441;
t87 = -t153 * t466 - t154 * t467 + t221 * t441;
t86 = t209 * t439 + t281 * t431 + t429 * t556 - t470 * t569 + t555;
t79 = -t145 * t470 + t146 * t439 - t174 * t574;
t78 = -t143 * t470 + t144 * t439 - t173 * t574;
t77 = -t141 * t470 + t142 * t439 - t172 * t574;
t76 = -t139 * t470 + t140 * t439 - t171 * t574;
t75 = -t137 * t470 + t138 * t439 - t170 * t574;
t74 = -t135 * t470 + t136 * t439 - t169 * t574;
t73 = -t145 * t466 - t146 * t467 + t174 * t441;
t72 = -t143 * t466 - t144 * t467 + t173 * t441;
t71 = -t141 * t466 - t142 * t467 + t172 * t441;
t70 = -t139 * t466 - t140 * t467 + t171 * t441;
t69 = -t137 * t466 - t138 * t467 + t170 * t441;
t68 = -t135 * t466 - t136 * t467 + t169 * t441;
t61 = t214 * t441 + t280 * t416 + t371 * t549 - t467 * t564 + t570;
t60 = -t252 * t466 + t348 * t369 + (-t212 - t215) * t441 + t560 * t416 + t565;
t59 = (t212 * t453 + t214 * t455) * t454 + t473;
t58 = (t531 - t568) * t456 + t455 * t469;
t57 = t453 * t469 + t456 * t567 + t534;
t56 = t529 * t439 + t521 * t431 + (t280 * t541 + t459 * t532) * t454 + t553;
t55 = -t470 * t252 + t429 * t348 + (t212 * t459 + t527 * t541) * t454 + t472;
t42 = t163 * t456 + (-t122 * t455 + t123 * t453) * t454;
t41 = -t212 * t467 + t278 * t371 + t369 * t558 - t466 * t566 + t571;
t40 = (t453 * t568 + t455 * t567) * t454 + t473;
t39 = t150 * t456 + (-t118 * t455 + t119 * t453) * t454;
t38 = t149 * t456 + (-t116 * t455 + t117 * t453) * t454;
t37 = t371 * t522 + t416 * t559 + t441 * t567 - t467 * t530 + t570;
t36 = -t562 * t466 + t550 * t369 + (-t215 - t568) * t441 + t528 * t416 + t565;
t35 = t212 * t439 + t278 * t431 + t429 * t525 - t470 * t532 + t501;
t34 = t499 * t439 + t492 * t431 + (t459 * t500 + t541 * t559) * t454 + t553;
t33 = -t562 * t470 + t550 * t429 + (t459 * t568 + t498 * t541) * t454 + t472;
t32 = -t122 * t470 + t123 * t439 + t226 * t429 + t227 * t431 + (-t163 * t459 + t253 * t541) * t454;
t31 = t369 * t526 + t371 * t561 - t466 * t533 - t467 * t568 + t571;
t30 = t429 * t497 + t431 * t561 + t439 * t568 - t470 * t500 + t501;
t29 = -t118 * t470 + t119 * t439 + t219 * t429 + t580 + (-t150 * t459 + t235 * t541) * t454;
t28 = -t116 * t470 + t117 * t439 + t581 + t218 * t431 + (-t149 * t459 + t234 * t541) * t454;
t80 = [0; m(4) * t545 / 0.2e1 + t495 * t590 + (m(3) * t403 - t593) * t576 + (m(3) * t402 + t460) * t577 + t537 * (0.2e1 * t187 + 0.2e1 * t188 + t495); t23 * t577 - t21 * t576 + t20 * t577 - t19 * t576 + t24 * t577 - t22 * t576 + t39 * t577 - t38 * t576 + ((-t385 * t431 - t387 * t430 + t397 * t577 - t399 * t439 + t401 * t440) * t577 - (-t384 * t431 - t386 * t430 + t396 * t577 - t398 * t439 + t400 * t440) * t576 + (-t422 * t431 - t423 * t430 + t432 * t577 - t433 * t439 + t434 * t440) * t456) * t577 - ((-t385 * t429 + t387 * t428 - t397 * t576 + t399 * t470 + t401 * t438) * t577 - (-t384 * t429 + t386 * t428 - t396 * t576 + t398 * t470 + t400 * t438) * t576 + (-t422 * t429 + t423 * t428 - t432 * t576 + t433 * t470 + t434 * t438) * t456) * t576 + (t111 * t40 + t126 * t57 + t127 * t58) * t508 + (t124 * t59 + t133 * t96 + t134 * t97) * t510 + t456 * t26 + t456 * t25 + t456 * t27 + (t110 * t151 + t120 * t164 + t121 * t165) * t512 + t456 * t42 + (t168 * t230 + t224 * t237 + t225 * t238) * t514 + t456 * (t456 ^ 2 * t432 + (((t399 * t459 + t401 * t458) * t453 - (t398 * t459 + t400 * t458) * t455 + ((-t385 * t458 + t387 * t459) * t453 - (-t384 * t458 + t386 * t459) * t455) * qJD(2)) * t454 + (-t396 * t455 + t397 * t453 + t433 * t459 + t434 * t458 + (-t422 * t458 + t423 * t459) * qJD(2)) * t456) * t454) + 0.2e1 * m(3) * ((-t388 * t456 - t425 * t576) * (-t402 * t456 - t435 * t576) + (t389 * t456 - t425 * t577) * (t403 * t456 - t435 * t577) + (t388 * t453 + t389 * t455) * t454 ^ 2 * (t402 * t453 + t403 * t455)); t496 * t590 + t460 * t439 - t593 * t470 + (m(4) * t335 + t462) * t431 + (-m(4) * t336 + t461) * t429 + t537 * (t216 * t591 + t321 * t592 + 0.2e1 * t182 + 0.2e1 * t302 + t496); m(4) * (t152 * t230 + t166 * t238 + t167 * t237 + t168 * t239 + t224 * t258 + t225 * t257) + (t105 * t165 + t106 * t164 + t110 * t162 + t120 * t176 + t121 * t175 + t151 * t86) * m(5) + (t124 * t35 + t125 * t59 + t133 * t56 + t134 * t55 + t147 * t97 + t148 * t96) * m(6) + (t111 * t30 + t112 * t40 + t126 * t34 + t127 * t33 + t128 * t58 + t129 * t57) * m(7) + t481 * t431 + t482 * t429 + (t39 / 0.2e1 + t484) * t439 - (t38 / 0.2e1 + t485) * t470 + (t578 / 0.2e1 + t579 / 0.2e1 + t32 / 0.2e1 + t486) * t456 + ((-t431 * t219 / 0.2e1 - t581 / 0.2e1 - t28 / 0.2e1 - t503) * t455 + (t580 / 0.2e1 + t429 * t218 / 0.2e1 + t29 / 0.2e1 + t488) * t453 + (-t42 / 0.2e1 - t483) * t459 + (t253 * t594 + (-t226 * t455 + t227 * t453) * t595 + t480) * t541) * t454; (t152 * t239 + t166 * t257 + t167 * t258) * t514 + (t105 * t175 + t106 * t176 + t162 * t86) * t512 + (t125 * t35 + t147 * t55 + t148 * t56) * t510 + (t112 * t30 + t128 * t33 + t129 * t34) * t508 + (t29 + t8 + t11 + t12) * t439 - (t28 + t7 + t9 + t10) * t470 + (-t219 * t470 + t220 * t439 + t76 + t77 + t79) * t431 + (-t217 * t470 + t218 * t439 + t74 + t75 + t78) * t429 + ((-t226 * t470 + t227 * t439 + t90 + t91 + t92) * t541 + (-t253 * t518 - t16 - t17 - t18 - t32 - t578 - t579) * t459) * t454; t461 * t369 + t462 * t371 - t463 * t466 - t464 * t467 + (t216 * t466 - t369 * t321 + t571) * t598; (t104 * t151 + t110 * t184 + t113 * t165 + t114 * t164 + t120 * t229 + t121 * t228) * m(5) + (t124 * t41 + t132 * t59 + t133 * t61 + t134 * t60 + t159 * t97 + t160 * t96) * m(6) + (t111 * t31 + t115 * t40 + t126 * t37 + t127 * t36 + t130 * t58 + t131 * t57) * m(7) + t487 * t456 + t483 * t441 + t480 * t416 - t484 * t467 - t485 * t466 + t481 * t371 + t482 * t369 + (t453 * t504 - t455 * t505) * t454; (t104 * t162 + t105 * t228 + t106 * t229 + t113 * t175 + t114 * t176 + t184 * t86) * m(5) + (t125 * t41 + t132 * t35 + t147 * t60 + t148 * t61 + t159 * t55 + t160 * t56) * m(6) + (t112 * t31 + t115 * t30 + t128 * t36 + t129 * t37 + t130 * t33 + t131 * t34) * m(7) + t486 * t441 + t504 * t439 - t505 * t470 + (t73 / 0.2e1 + t71 / 0.2e1 + t70 / 0.2e1) * t431 + (t72 / 0.2e1 + t69 / 0.2e1 + t68 / 0.2e1) * t429 + (t90 / 0.2e1 + t91 / 0.2e1 + t92 / 0.2e1) * t416 - t488 * t467 - t503 * t466 + (t77 / 0.2e1 + t79 / 0.2e1 + t76 / 0.2e1) * t371 + (t78 / 0.2e1 + t74 / 0.2e1 + t75 / 0.2e1) * t369 + (-t487 * t459 + (t87 / 0.2e1 + t88 / 0.2e1 + t89 / 0.2e1) * t541) * t454; (t115 * t31 + t130 * t36 + t131 * t37) * t508 + (t132 * t41 + t159 * t60 + t160 * t61) * t510 + (t104 * t184 + t113 * t228 + t114 * t229) * t512 + (t14 + t15 + t13) * t441 + (t87 + t88 + t89) * t416 - (t2 + t5 + t6) * t467 - (t4 + t3 + t1) * t466 + (t73 + t70 + t71) * t371 + (t69 + t68 + t72) * t369; t353 * t598; (m(6) * t59 + m(7) * t40) * t418 + (m(6) * t97 + m(7) * t58) * t375 + (m(6) * t96 + m(7) * t57) * t373 + (m(6) * t124 + m(7) * t111) * t353 + (m(6) * t134 + m(7) * t127) * t288 + (m(6) * t133 + m(7) * t126) * t286; (m(6) * t35 + m(7) * t30) * t418 + (m(6) * t55 + m(7) * t33) * t375 + (m(6) * t56 + m(7) * t34) * t373 + (m(6) * t125 + m(7) * t112) * t353 + (m(6) * t147 + m(7) * t128) * t288 + (m(6) * t148 + m(7) * t129) * t286; (m(6) * t41 + m(7) * t31) * t418 + (m(6) * t60 + m(7) * t36) * t375 + (m(6) * t61 + m(7) * t37) * t373 + (m(6) * t132 + m(7) * t115) * t353 + (m(6) * t159 + m(7) * t130) * t288 + (m(6) * t160 + m(7) * t131) * t286; 0.4e1 * t537 * (t286 * t373 + t288 * t375 + t353 * t418); t354 * m(7); (t111 * t354 + t126 * t287 + t127 * t289 + t374 * t57 + t376 * t58 + t40 * t419) * m(7); (t112 * t354 + t128 * t289 + t129 * t287 + t30 * t419 + t33 * t376 + t34 * t374) * m(7); (t115 * t354 + t130 * t289 + t131 * t287 + t31 * t419 + t36 * t376 + t37 * t374) * m(7); (t286 * t374 + t287 * t373 + t288 * t376 + t289 * t375 + t353 * t419 + t354 * t418) * m(7); (t287 * t374 + t289 * t376 + t354 * t419) * t508;];
%% Postprocessing: Reshape Output
% From vec2symmat_6_matlab.m
res = [t80(1) t80(2) t80(4) t80(7) t80(11) t80(16); t80(2) t80(3) t80(5) t80(8) t80(12) t80(17); t80(4) t80(5) t80(6) t80(9) t80(13) t80(18); t80(7) t80(8) t80(9) t80(10) t80(14) t80(19); t80(11) t80(12) t80(13) t80(14) t80(15) t80(20); t80(16) t80(17) t80(18) t80(19) t80(20) t80(21);];
Mq  = res;
