% Calculate time derivative of joint inertia matrix for
% S6PRRRPP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d4,theta1,theta5]';
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
% Datum: 2019-03-08 22:47
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S6PRRRPP1_inertiaDJ_slag_vp11(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRPP1_inertiaDJ_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRRPP1_inertiaDJ_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRRRPP1_inertiaDJ_slag_vp1: pkin has to be [11x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6PRRRPP1_inertiaDJ_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6PRRRPP1_inertiaDJ_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6PRRRPP1_inertiaDJ_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 22:42:54
% EndTime: 2019-03-08 22:43:32
% DurationCPUTime: 22.78s
% Computational Cost: add. (95675->1346), mult. (224952->1809), div. (0->0), fcn. (257136->12), ass. (0->514)
t559 = m(6) / 0.2e1 + m(7) / 0.2e1;
t623 = 0.2e1 * t559;
t622 = rSges(7,1) + pkin(5);
t621 = rSges(7,3) + qJ(6);
t465 = cos(pkin(6));
t468 = sin(qJ(3));
t469 = sin(qJ(2));
t463 = sin(pkin(6));
t612 = cos(qJ(3));
t539 = t463 * t612;
t451 = t465 * t468 + t469 * t539;
t560 = qJ(4) + pkin(11);
t461 = sin(t560);
t529 = cos(t560);
t471 = cos(qJ(2));
t597 = t463 * t471;
t420 = t451 * t529 - t461 * t597;
t620 = t463 / 0.2e1;
t619 = t465 / 0.2e1;
t462 = sin(pkin(10));
t464 = cos(pkin(10));
t596 = t465 * t469;
t447 = t462 * t471 + t464 * t596;
t598 = t463 * t468;
t422 = t447 * t612 - t464 * t598;
t595 = t465 * t471;
t489 = -t462 * t469 + t464 * t595;
t437 = t489 * qJD(2);
t379 = qJD(3) * t422 + t437 * t468;
t485 = -t447 * t468 - t464 * t539;
t380 = qJD(3) * t485 + t437 * t612;
t467 = sin(qJ(4));
t470 = cos(qJ(4));
t383 = -t422 * t467 - t470 * t489;
t438 = t447 * qJD(2);
t479 = qJD(4) * t383 + t438 * t467;
t610 = pkin(4) * t470;
t210 = pkin(4) * t479 + qJ(5) * t379 - qJD(5) * t485 + t380 * t610;
t602 = t489 * t467;
t270 = -pkin(4) * t602 - qJ(5) * t485 + t422 * t610;
t558 = t462 * t596;
t449 = t464 * t471 - t558;
t424 = t449 * t612 + t462 * t598;
t448 = t462 * t595 + t464 * t469;
t439 = t448 * qJD(2);
t381 = qJD(3) * t424 - t439 * t468;
t486 = -t449 * t468 + t462 * t539;
t594 = -t210 * t486 + t381 * t270;
t413 = pkin(2) * t437 + pkin(8) * t438;
t563 = qJD(2) * t471;
t440 = -qJD(2) * t558 + t464 * t563;
t414 = -pkin(2) * t439 + pkin(8) * t440;
t599 = t463 * t464;
t600 = t462 * t463;
t567 = t413 * t600 + t414 * t599;
t382 = qJD(3) * t486 - t439 * t612;
t314 = rSges(4,1) * t382 - rSges(4,2) * t381 + rSges(4,3) * t440;
t377 = t424 * t529 + t448 * t461;
t292 = qJD(4) * t377 + t382 * t461 - t440 * t529;
t482 = -t424 * t461 + t448 * t529;
t293 = qJD(4) * t482 + t382 * t529 + t440 * t461;
t204 = rSges(6,1) * t293 - rSges(6,2) * t292 + rSges(6,3) * t381;
t601 = t448 * t467;
t386 = t424 * t470 + t601;
t305 = -qJD(4) * t386 - t382 * t467 + t440 * t470;
t385 = -t424 * t467 + t448 * t470;
t478 = qJD(4) * t385 + t440 * t467;
t306 = t382 * t470 + t478;
t219 = rSges(5,1) * t306 + rSges(5,2) * t305 + rSges(5,3) * t381;
t591 = rSges(7,2) * t381 - qJD(6) * t482 + t292 * t621 + t293 * t622;
t476 = -m(5) * t219 - m(6) * t204 - m(7) * t591;
t618 = -m(4) * t314 + t476;
t537 = t463 * t563;
t426 = t451 * qJD(3) + t468 * t537;
t617 = -0.2e1 * t438;
t616 = 0.2e1 * t489;
t615 = m(5) / 0.2e1;
t608 = Icges(3,4) * t469;
t607 = Icges(3,4) * t471;
t345 = Icges(4,5) * t422 + Icges(4,6) * t485 - Icges(4,3) * t489;
t347 = Icges(4,4) * t422 + Icges(4,2) * t485 - Icges(4,6) * t489;
t349 = Icges(4,1) * t422 + Icges(4,4) * t485 - Icges(4,5) * t489;
t220 = -t345 * t489 + t347 * t485 + t349 * t422;
t606 = t220 * t438;
t346 = Icges(4,5) * t424 + Icges(4,6) * t486 + Icges(4,3) * t448;
t348 = Icges(4,4) * t424 + Icges(4,2) * t486 + Icges(4,6) * t448;
t350 = Icges(4,1) * t424 + Icges(4,4) * t486 + Icges(4,5) * t448;
t223 = t346 * t448 + t348 * t486 + t350 * t424;
t605 = t223 * t440;
t450 = -t465 * t612 + t469 * t598;
t399 = Icges(4,5) * t451 - Icges(4,6) * t450 - Icges(4,3) * t597;
t400 = Icges(4,4) * t451 - Icges(4,2) * t450 - Icges(4,6) * t597;
t401 = Icges(4,1) * t451 - Icges(4,4) * t450 - Icges(4,5) * t597;
t234 = -t399 * t489 + t400 * t485 + t401 * t422;
t604 = t438 * t234;
t235 = t399 * t448 + t400 * t486 + t401 * t424;
t603 = t440 * t235;
t211 = pkin(4) * t478 + qJ(5) * t381 - qJD(5) * t486 + t382 * t610;
t271 = pkin(4) * t601 - qJ(5) * t486 + t424 * t610;
t593 = t450 * t211 + t426 * t271;
t375 = t422 * t529 - t461 * t489;
t290 = qJD(4) * t375 + t380 * t461 - t438 * t529;
t483 = -t422 * t461 - t489 * t529;
t291 = qJD(4) * t483 + t380 * t529 + t438 * t461;
t592 = rSges(7,2) * t379 - qJD(6) * t483 + t290 * t621 + t291 * t622;
t590 = -t204 - t211;
t328 = pkin(3) * t382 + pkin(9) * t381;
t589 = -t219 - t328;
t427 = -qJD(3) * t450 + t537 * t612;
t428 = -t451 * t467 - t470 * t597;
t564 = qJD(2) * t469;
t538 = t463 * t564;
t472 = qJD(4) * t428 + t467 * t538;
t252 = pkin(4) * t472 + qJ(5) * t426 + t450 * qJD(5) + t427 * t610;
t557 = t467 * t597;
t339 = -pkin(4) * t557 + qJ(5) * t450 + t451 * t610;
t588 = -t252 * t485 + t379 * t339;
t497 = t463 * t529;
t340 = qJD(4) * t420 + t427 * t461 - t497 * t564;
t480 = -t451 * t461 - t471 * t497;
t341 = qJD(4) * t480 + t427 * t529 + t461 * t538;
t587 = rSges(7,2) * t426 - qJD(6) * t480 + t340 * t621 + t341 * t622;
t248 = rSges(6,1) * t341 - rSges(6,2) * t340 + rSges(6,3) * t426;
t586 = -t248 - t252;
t490 = -t451 * t470 + t557;
t359 = qJD(4) * t490 - t427 * t467 + t470 * t538;
t360 = t427 * t470 + t472;
t256 = rSges(5,1) * t360 + rSges(5,2) * t359 + rSges(5,3) * t426;
t373 = t427 * pkin(3) + t426 * pkin(9);
t585 = -t256 - t373;
t371 = pkin(3) * t422 - pkin(9) * t485;
t356 = t448 * t371;
t584 = t448 * t270 + t356;
t372 = pkin(3) * t424 - pkin(9) * t486;
t366 = t372 * t538;
t583 = t271 * t538 + t366;
t285 = rSges(6,1) * t375 + rSges(6,2) * t483 - rSges(6,3) * t485;
t582 = -t270 - t285;
t287 = rSges(6,1) * t377 + rSges(6,2) * t482 - rSges(6,3) * t486;
t581 = -t271 - t287;
t580 = -rSges(7,2) * t485 + t375 * t622 - t483 * t621;
t579 = -rSges(7,2) * t486 + t377 * t622 - t482 * t621;
t384 = t422 * t470 - t602;
t301 = rSges(5,1) * t384 + rSges(5,2) * t383 - rSges(5,3) * t485;
t578 = -t301 - t371;
t302 = rSges(5,1) * t386 + rSges(5,2) * t385 - rSges(5,3) * t486;
t577 = -t302 - t372;
t327 = pkin(3) * t380 + pkin(9) * t379;
t317 = t448 * t327;
t344 = t440 * t371;
t576 = t317 + t344;
t392 = t465 * t414;
t575 = t465 * t328 + t392;
t574 = -t327 - t413;
t573 = rSges(7,2) * t450 + t420 * t622 - t480 * t621;
t338 = rSges(6,1) * t420 + rSges(6,2) * t480 + rSges(6,3) * t450;
t572 = -t338 - t339;
t357 = -rSges(5,1) * t490 + rSges(5,2) * t428 + rSges(5,3) * t450;
t418 = t451 * pkin(3) + t450 * pkin(9);
t571 = -t357 - t418;
t570 = t371 * t597 - t418 * t489;
t417 = pkin(2) * t449 + pkin(8) * t448;
t415 = t465 * t417;
t569 = t465 * t372 + t415;
t568 = 0.2e1 * t567;
t416 = pkin(2) * t447 - pkin(8) * t489;
t566 = t416 * t600 + t417 * t599;
t565 = qJD(2) * t463;
t554 = -t211 - t591;
t553 = -t328 + t590;
t552 = t465 * t211 + t575;
t551 = -t210 + t574;
t550 = -t252 - t587;
t549 = -t373 + t586;
t548 = t465 * t271 + t569;
t547 = -t270 - t580;
t546 = -t371 + t582;
t545 = -t271 - t579;
t544 = -t372 + t581;
t543 = t327 * t597 - t373 * t489 + t438 * t418;
t542 = -t339 - t573;
t541 = -t418 + t572;
t536 = 0.2e1 * m(4);
t534 = 0.2e1 * m(5);
t532 = 0.2e1 * m(6);
t530 = 0.2e1 * m(7);
t364 = rSges(4,1) * t427 - rSges(4,2) * t426 + rSges(4,3) * t538;
t445 = (pkin(2) * t471 + pkin(8) * t469) * t565;
t528 = (-t364 - t445) * t463;
t402 = t451 * rSges(4,1) - t450 * rSges(4,2) - rSges(4,3) * t597;
t452 = (pkin(2) * t469 - pkin(8) * t471) * t463;
t527 = (-t402 - t452) * t463;
t272 = Icges(7,5) * t375 - Icges(7,6) * t485 - Icges(7,3) * t483;
t276 = Icges(7,4) * t375 - Icges(7,2) * t485 - Icges(7,6) * t483;
t280 = Icges(7,1) * t375 - Icges(7,4) * t485 - Icges(7,5) * t483;
t137 = -t272 * t483 - t276 * t485 + t280 * t375;
t273 = Icges(7,5) * t377 - Icges(7,6) * t486 - Icges(7,3) * t482;
t277 = Icges(7,4) * t377 - Icges(7,2) * t486 - Icges(7,6) * t482;
t281 = Icges(7,1) * t377 - Icges(7,4) * t486 - Icges(7,5) * t482;
t138 = -t273 * t483 - t277 * t485 + t281 * t375;
t331 = Icges(7,5) * t420 + Icges(7,6) * t450 - Icges(7,3) * t480;
t333 = Icges(7,4) * t420 + Icges(7,2) * t450 - Icges(7,6) * t480;
t335 = Icges(7,1) * t420 + Icges(7,4) * t450 - Icges(7,5) * t480;
t163 = -t331 * t483 - t333 * t485 + t335 * t375;
t187 = Icges(7,5) * t291 + Icges(7,6) * t379 + Icges(7,3) * t290;
t191 = Icges(7,4) * t291 + Icges(7,2) * t379 + Icges(7,6) * t290;
t195 = Icges(7,1) * t291 + Icges(7,4) * t379 + Icges(7,5) * t290;
t42 = -t187 * t483 - t191 * t485 + t195 * t375 + t272 * t290 + t276 * t379 + t280 * t291;
t188 = Icges(7,5) * t293 + Icges(7,6) * t381 + Icges(7,3) * t292;
t192 = Icges(7,4) * t293 + Icges(7,2) * t381 + Icges(7,6) * t292;
t196 = Icges(7,1) * t293 + Icges(7,4) * t381 + Icges(7,5) * t292;
t43 = -t188 * t483 - t192 * t485 + t196 * t375 + t273 * t290 + t277 * t379 + t281 * t291;
t241 = Icges(7,5) * t341 + Icges(7,6) * t426 + Icges(7,3) * t340;
t243 = Icges(7,4) * t341 + Icges(7,2) * t426 + Icges(7,6) * t340;
t245 = Icges(7,1) * t341 + Icges(7,4) * t426 + Icges(7,5) * t340;
t94 = -t241 * t483 - t243 * t485 + t245 * t375 + t290 * t331 + t291 * t335 + t333 * t379;
t1 = t137 * t379 + t138 * t381 + t163 * t426 - t42 * t485 - t43 * t486 + t450 * t94;
t274 = Icges(6,5) * t375 + Icges(6,6) * t483 - Icges(6,3) * t485;
t278 = Icges(6,4) * t375 + Icges(6,2) * t483 - Icges(6,6) * t485;
t282 = Icges(6,1) * t375 + Icges(6,4) * t483 - Icges(6,5) * t485;
t139 = -t274 * t485 + t278 * t483 + t282 * t375;
t275 = Icges(6,5) * t377 + Icges(6,6) * t482 - Icges(6,3) * t486;
t279 = Icges(6,4) * t377 + Icges(6,2) * t482 - Icges(6,6) * t486;
t283 = Icges(6,1) * t377 + Icges(6,4) * t482 - Icges(6,5) * t486;
t140 = -t275 * t485 + t279 * t483 + t283 * t375;
t332 = Icges(6,5) * t420 + Icges(6,6) * t480 + Icges(6,3) * t450;
t334 = Icges(6,4) * t420 + Icges(6,2) * t480 + Icges(6,6) * t450;
t336 = Icges(6,1) * t420 + Icges(6,4) * t480 + Icges(6,5) * t450;
t164 = -t332 * t485 + t334 * t483 + t336 * t375;
t189 = Icges(6,5) * t291 - Icges(6,6) * t290 + Icges(6,3) * t379;
t193 = Icges(6,4) * t291 - Icges(6,2) * t290 + Icges(6,6) * t379;
t197 = Icges(6,1) * t291 - Icges(6,4) * t290 + Icges(6,5) * t379;
t44 = -t189 * t485 + t193 * t483 + t197 * t375 + t274 * t379 - t278 * t290 + t282 * t291;
t190 = Icges(6,5) * t293 - Icges(6,6) * t292 + Icges(6,3) * t381;
t194 = Icges(6,4) * t293 - Icges(6,2) * t292 + Icges(6,6) * t381;
t198 = Icges(6,1) * t293 - Icges(6,4) * t292 + Icges(6,5) * t381;
t45 = -t190 * t485 + t194 * t483 + t198 * t375 + t275 * t379 - t279 * t290 + t283 * t291;
t242 = Icges(6,5) * t341 - Icges(6,6) * t340 + Icges(6,3) * t426;
t244 = Icges(6,4) * t341 - Icges(6,2) * t340 + Icges(6,6) * t426;
t246 = Icges(6,1) * t341 - Icges(6,4) * t340 + Icges(6,5) * t426;
t95 = -t242 * t485 + t244 * t483 + t246 * t375 - t290 * t334 + t291 * t336 + t332 * t379;
t2 = t139 * t379 + t140 * t381 + t164 * t426 - t44 * t485 - t45 * t486 + t450 * t95;
t253 = Icges(5,5) * t360 + Icges(5,6) * t359 + Icges(5,3) * t426;
t254 = Icges(5,4) * t360 + Icges(5,2) * t359 + Icges(5,6) * t426;
t255 = Icges(5,1) * t360 + Icges(5,4) * t359 + Icges(5,5) * t426;
t303 = -qJD(4) * t384 - t380 * t467 + t438 * t470;
t304 = t380 * t470 + t479;
t353 = -Icges(5,5) * t490 + Icges(5,6) * t428 + Icges(5,3) * t450;
t354 = -Icges(5,4) * t490 + Icges(5,2) * t428 + Icges(5,6) * t450;
t355 = -Icges(5,1) * t490 + Icges(5,4) * t428 + Icges(5,5) * t450;
t102 = -t253 * t485 + t254 * t383 + t255 * t384 + t303 * t354 + t304 * t355 + t353 * t379;
t295 = Icges(5,5) * t384 + Icges(5,6) * t383 - Icges(5,3) * t485;
t297 = Icges(5,4) * t384 + Icges(5,2) * t383 - Icges(5,6) * t485;
t299 = Icges(5,1) * t384 + Icges(5,4) * t383 - Icges(5,5) * t485;
t147 = -t295 * t485 + t297 * t383 + t299 * t384;
t296 = Icges(5,5) * t386 + Icges(5,6) * t385 - Icges(5,3) * t486;
t298 = Icges(5,4) * t386 + Icges(5,2) * t385 - Icges(5,6) * t486;
t300 = Icges(5,1) * t386 + Icges(5,4) * t385 - Icges(5,5) * t486;
t148 = -t296 * t485 + t298 * t383 + t300 * t384;
t172 = -t353 * t485 + t354 * t383 + t355 * t384;
t212 = Icges(5,5) * t304 + Icges(5,6) * t303 + Icges(5,3) * t379;
t214 = Icges(5,4) * t304 + Icges(5,2) * t303 + Icges(5,6) * t379;
t216 = Icges(5,1) * t304 + Icges(5,4) * t303 + Icges(5,5) * t379;
t55 = -t212 * t485 + t214 * t383 + t216 * t384 + t295 * t379 + t297 * t303 + t299 * t304;
t213 = Icges(5,5) * t306 + Icges(5,6) * t305 + Icges(5,3) * t381;
t215 = Icges(5,4) * t306 + Icges(5,2) * t305 + Icges(5,6) * t381;
t217 = Icges(5,1) * t306 + Icges(5,4) * t305 + Icges(5,5) * t381;
t56 = -t213 * t485 + t215 * t383 + t217 * t384 + t296 * t379 + t298 * t303 + t300 * t304;
t9 = t102 * t450 + t147 * t379 + t148 * t381 + t172 * t426 - t485 * t55 - t486 * t56;
t526 = -t9 / 0.2e1 - t1 / 0.2e1 - t2 / 0.2e1;
t103 = -t253 * t486 + t254 * t385 + t255 * t386 + t305 * t354 + t306 * t355 + t353 * t381;
t149 = -t295 * t486 + t297 * t385 + t299 * t386;
t150 = -t296 * t486 + t298 * t385 + t300 * t386;
t173 = -t353 * t486 + t354 * t385 + t355 * t386;
t57 = -t212 * t486 + t214 * t385 + t216 * t386 + t295 * t381 + t297 * t305 + t299 * t306;
t58 = -t213 * t486 + t215 * t385 + t217 * t386 + t296 * t381 + t298 * t305 + t300 * t306;
t10 = t103 * t450 + t149 * t379 + t150 * t381 + t173 * t426 - t485 * t57 - t486 * t58;
t141 = -t272 * t482 - t276 * t486 + t280 * t377;
t142 = -t273 * t482 - t277 * t486 + t281 * t377;
t165 = -t331 * t482 - t333 * t486 + t335 * t377;
t46 = -t187 * t482 - t191 * t486 + t195 * t377 + t272 * t292 + t276 * t381 + t280 * t293;
t47 = -t188 * t482 - t192 * t486 + t196 * t377 + t273 * t292 + t277 * t381 + t281 * t293;
t96 = -t241 * t482 - t243 * t486 + t245 * t377 + t292 * t331 + t293 * t335 + t333 * t381;
t3 = t141 * t379 + t142 * t381 + t165 * t426 + t450 * t96 - t46 * t485 - t47 * t486;
t143 = -t274 * t486 + t278 * t482 + t282 * t377;
t144 = -t275 * t486 + t279 * t482 + t283 * t377;
t166 = -t332 * t486 + t334 * t482 + t336 * t377;
t48 = -t189 * t486 + t193 * t482 + t197 * t377 + t274 * t381 - t278 * t292 + t282 * t293;
t49 = -t190 * t486 + t194 * t482 + t198 * t377 + t275 * t381 - t279 * t292 + t283 * t293;
t97 = -t242 * t486 + t244 * t482 + t246 * t377 - t292 * t334 + t293 * t336 + t332 * t381;
t4 = t143 * t379 + t144 * t381 + t166 * t426 + t450 * t97 - t48 * t485 - t486 * t49;
t525 = t10 / 0.2e1 + t3 / 0.2e1 + t4 / 0.2e1;
t11 = t147 * t438 + t148 * t440 - t55 * t489 + t56 * t448 + (-t102 * t471 + t172 * t564) * t463;
t5 = t137 * t438 + t138 * t440 - t42 * t489 + t43 * t448 + (t163 * t564 - t471 * t94) * t463;
t6 = t139 * t438 + t140 * t440 - t44 * t489 + t45 * t448 + (t164 * t564 - t471 * t95) * t463;
t524 = t5 / 0.2e1 + t6 / 0.2e1 + t11 / 0.2e1;
t12 = t149 * t438 + t150 * t440 - t57 * t489 + t58 * t448 + (-t103 * t471 + t173 * t564) * t463;
t7 = t141 * t438 + t142 * t440 - t46 * t489 + t47 * t448 + (t165 * t564 - t471 * t96) * t463;
t8 = t143 * t438 + t144 * t440 - t48 * t489 + t49 * t448 + (t166 * t564 - t471 * t97) * t463;
t523 = t7 / 0.2e1 + t8 / 0.2e1 + t12 / 0.2e1;
t181 = t448 * t210;
t261 = t440 * t270;
t521 = t181 + t261 + t576;
t520 = -t328 + t554;
t519 = -t373 + t550;
t518 = t270 * t597 - t339 * t489 + t570;
t517 = -t371 + t547;
t516 = -t372 + t545;
t515 = t328 * t616 + t372 * t617 + 0.2e1 * t317 + 0.2e1 * t344;
t320 = t327 * t600;
t321 = t328 * t599;
t514 = 0.2e1 * t320 + 0.2e1 * t321 + t568;
t513 = t320 + t321 + t567;
t512 = -t418 + t542;
t511 = t371 * t600 + t372 * t599 + t566;
t104 = -t241 * t480 + t243 * t450 + t245 * t420 + t331 * t340 + t333 * t426 + t335 * t341;
t153 = -t272 * t480 + t276 * t450 + t280 * t420;
t154 = -t273 * t480 + t277 * t450 + t281 * t420;
t185 = -t331 * t480 + t333 * t450 + t335 * t420;
t61 = -t187 * t480 + t191 * t450 + t195 * t420 + t272 * t340 + t276 * t426 + t280 * t341;
t62 = -t188 * t480 + t192 * t450 + t196 * t420 + t273 * t340 + t277 * t426 + t281 * t341;
t13 = t104 * t450 + t153 * t379 + t154 * t381 + t185 * t426 - t485 * t61 - t486 * t62;
t105 = t242 * t450 + t244 * t480 + t246 * t420 + t332 * t426 - t334 * t340 + t336 * t341;
t155 = t274 * t450 + t278 * t480 + t282 * t420;
t156 = t275 * t450 + t279 * t480 + t283 * t420;
t186 = t332 * t450 + t334 * t480 + t336 * t420;
t63 = t189 * t450 + t193 * t480 + t197 * t420 + t274 * t426 - t278 * t340 + t282 * t341;
t64 = t190 * t450 + t194 * t480 + t198 * t420 + t275 * t426 - t279 * t340 + t283 * t341;
t14 = t105 * t450 + t155 * t379 + t156 * t381 + t186 * t426 - t485 * t63 - t486 * t64;
t111 = t253 * t450 + t254 * t428 - t255 * t490 + t353 * t426 + t354 * t359 + t355 * t360;
t159 = t295 * t450 + t297 * t428 - t299 * t490;
t160 = t296 * t450 + t298 * t428 - t300 * t490;
t224 = t353 * t450 + t354 * t428 - t355 * t490;
t70 = t212 * t450 + t214 * t428 - t216 * t490 + t295 * t426 + t297 * t359 + t299 * t360;
t71 = t213 * t450 + t215 * t428 - t217 * t490 + t296 * t426 + t298 * t359 + t300 * t360;
t17 = t111 * t450 + t159 * t379 + t160 * t381 + t224 * t426 - t485 * t70 - t486 * t71;
t509 = t17 / 0.2e1 + t14 / 0.2e1 + t13 / 0.2e1;
t15 = t153 * t438 + t154 * t440 - t61 * t489 + t62 * t448 + (-t104 * t471 + t185 * t564) * t463;
t16 = t155 * t438 + t156 * t440 - t63 * t489 + t64 * t448 + (-t105 * t471 + t186 * t564) * t463;
t18 = t159 * t438 + t160 * t440 - t70 * t489 + t71 * t448 + (-t111 * t471 + t224 * t564) * t463;
t508 = t18 / 0.2e1 + t16 / 0.2e1 + t15 / 0.2e1;
t19 = t465 * t94 + (-t42 * t464 + t43 * t462) * t463;
t20 = t465 * t95 + (-t44 * t464 + t45 * t462) * t463;
t23 = t102 * t465 + (t462 * t56 - t464 * t55) * t463;
t507 = t23 / 0.2e1 + t20 / 0.2e1 + t19 / 0.2e1;
t21 = t465 * t96 + (-t46 * t464 + t462 * t47) * t463;
t22 = t465 * t97 + (t462 * t49 - t464 * t48) * t463;
t24 = t103 * t465 + (t462 * t58 - t464 * t57) * t463;
t506 = t24 / 0.2e1 + t22 / 0.2e1 + t21 / 0.2e1;
t25 = t104 * t465 + (t462 * t62 - t464 * t61) * t463;
t26 = t105 * t465 + (t462 * t64 - t464 * t63) * t463;
t27 = t111 * t465 + (t462 * t71 - t464 * t70) * t463;
t505 = t27 / 0.2e1 + t26 / 0.2e1 + t25 / 0.2e1;
t504 = ((-t137 - t139 - t147) * t464 + (t138 + t140 + t148) * t462) * t620 + (t172 + t164 + t163) * t619;
t503 = ((-t141 - t143 - t149) * t464 + (t142 + t144 + t150) * t462) * t620 + (t173 + t166 + t165) * t619;
t502 = ((-t153 - t155 - t159) * t464 + (t154 + t156 + t160) * t462) * t620 + (t224 + t185 + t186) * t619;
t501 = (-t445 + t585) * t463;
t500 = (-t452 + t571) * t463;
t496 = (-t445 + t549) * t463;
t495 = (-t452 + t541) * t463;
t205 = t210 * t600;
t206 = t211 * t599;
t493 = t205 + t206 + t513;
t492 = t210 * t597 - t252 * t489 + t438 * t339 + t543;
t491 = t270 * t600 + t271 * t599 + t511;
t488 = t463 * (-t452 + t512);
t487 = (-t445 + t519) * t463;
t202 = rSges(6,1) * t291 - rSges(6,2) * t290 + rSges(6,3) * t379;
t218 = rSges(5,1) * t304 + rSges(5,2) * t303 + rSges(5,3) * t379;
t477 = m(5) * t218 + m(6) * t202 + m(7) * t592;
t475 = m(5) * t301 + m(6) * t285 + m(7) * t580;
t474 = -m(5) * t302 - m(6) * t287 - m(7) * t579;
t313 = rSges(4,1) * t380 - rSges(4,2) * t379 + rSges(4,3) * t438;
t473 = m(4) * t313 + t477;
t444 = (rSges(3,1) * t471 - rSges(3,2) * t469) * t565;
t443 = (Icges(3,1) * t471 - t608) * t565;
t442 = (-Icges(3,2) * t469 + t607) * t565;
t441 = (Icges(3,5) * t471 - Icges(3,6) * t469) * t565;
t436 = t465 * rSges(3,3) + (rSges(3,1) * t469 + rSges(3,2) * t471) * t463;
t435 = Icges(3,5) * t465 + (Icges(3,1) * t469 + t607) * t463;
t434 = Icges(3,6) * t465 + (Icges(3,2) * t471 + t608) * t463;
t412 = -rSges(3,1) * t439 - rSges(3,2) * t440;
t411 = rSges(3,1) * t437 - rSges(3,2) * t438;
t410 = -Icges(3,1) * t439 - Icges(3,4) * t440;
t409 = Icges(3,1) * t437 - Icges(3,4) * t438;
t408 = -Icges(3,4) * t439 - Icges(3,2) * t440;
t407 = Icges(3,4) * t437 - Icges(3,2) * t438;
t406 = -Icges(3,5) * t439 - Icges(3,6) * t440;
t405 = Icges(3,5) * t437 - Icges(3,6) * t438;
t398 = rSges(3,1) * t449 - rSges(3,2) * t448 + rSges(3,3) * t600;
t397 = rSges(3,1) * t447 + rSges(3,2) * t489 - rSges(3,3) * t599;
t396 = Icges(3,1) * t449 - Icges(3,4) * t448 + Icges(3,5) * t600;
t395 = Icges(3,1) * t447 + Icges(3,4) * t489 - Icges(3,5) * t599;
t394 = Icges(3,4) * t449 - Icges(3,2) * t448 + Icges(3,6) * t600;
t393 = Icges(3,4) * t447 + Icges(3,2) * t489 - Icges(3,6) * t599;
t363 = Icges(4,1) * t427 - Icges(4,4) * t426 + Icges(4,5) * t538;
t362 = Icges(4,4) * t427 - Icges(4,2) * t426 + Icges(4,6) * t538;
t361 = Icges(4,5) * t427 - Icges(4,6) * t426 + Icges(4,3) * t538;
t352 = rSges(4,1) * t424 + rSges(4,2) * t486 + rSges(4,3) * t448;
t351 = rSges(4,1) * t422 + rSges(4,2) * t485 - rSges(4,3) * t489;
t325 = t485 * t339;
t312 = Icges(4,1) * t382 - Icges(4,4) * t381 + Icges(4,5) * t440;
t311 = Icges(4,1) * t380 - Icges(4,4) * t379 + Icges(4,5) * t438;
t310 = Icges(4,4) * t382 - Icges(4,2) * t381 + Icges(4,6) * t440;
t309 = Icges(4,4) * t380 - Icges(4,2) * t379 + Icges(4,6) * t438;
t308 = Icges(4,5) * t382 - Icges(4,6) * t381 + Icges(4,3) * t440;
t307 = Icges(4,5) * t380 - Icges(4,6) * t379 + Icges(4,3) * t438;
t289 = -t352 * t597 - t448 * t402;
t288 = t351 * t597 - t402 * t489;
t264 = t450 * t271;
t262 = -t399 * t597 - t450 * t400 + t451 * t401;
t257 = t486 * t270;
t251 = t351 * t448 + t352 * t489;
t250 = (-t351 - t416) * t465 + t464 * t527;
t249 = t352 * t465 + t462 * t527 + t415;
t231 = (t351 * t462 + t352 * t464) * t463 + t566;
t230 = t302 * t450 + t357 * t486;
t229 = -t301 * t450 - t357 * t485;
t228 = -t346 * t597 - t450 * t348 + t451 * t350;
t227 = -t345 * t597 - t450 * t347 + t451 * t349;
t226 = (-t313 - t413) * t465 + t464 * t528;
t225 = t314 * t465 + t462 * t528 + t392;
t222 = t345 * t448 + t347 * t486 + t349 * t424;
t221 = -t346 * t489 + t348 * t485 + t350 * t422;
t209 = -t301 * t486 + t302 * t485;
t178 = t448 * t571 + t577 * t597;
t177 = t301 * t597 - t357 * t489 + t570;
t171 = (t313 * t462 + t314 * t464) * t463 + t567;
t170 = -t448 * t364 - t440 * t402 + (-t314 * t471 + t352 * t564) * t463;
t169 = -t489 * t364 + t438 * t402 + (t313 * t471 - t351 * t564) * t463;
t168 = (-t416 + t578) * t465 + t464 * t500;
t167 = t302 * t465 + t462 * t500 + t569;
t162 = -t450 * t362 + t451 * t363 - t426 * t400 + t427 * t401 + (-t361 * t471 + t399 * t564) * t463;
t161 = t301 * t448 - t489 * t577 + t356;
t158 = t313 * t448 + t314 * t489 + t351 * t440 - t352 * t438;
t157 = (t301 * t462 + t302 * t464) * t463 + t511;
t152 = t361 * t448 + t362 * t486 + t363 * t424 - t381 * t400 + t382 * t401 + t399 * t440;
t151 = -t361 * t489 + t362 * t485 + t363 * t422 - t379 * t400 + t380 * t401 + t399 * t438;
t146 = t287 * t450 - t486 * t572 + t264;
t145 = -t338 * t485 + t450 * t582 - t325;
t136 = t448 * t541 + t544 * t597;
t135 = t285 * t597 - t338 * t489 + t518;
t134 = (-t416 + t546) * t465 + t464 * t495;
t133 = t287 * t465 + t462 * t495 + t548;
t132 = -t285 * t486 - t485 * t581 - t257;
t131 = -t450 * t310 + t451 * t312 - t426 * t348 + t427 * t350 + (-t308 * t471 + t346 * t564) * t463;
t130 = -t450 * t309 + t451 * t311 - t426 * t347 + t427 * t349 + (-t307 * t471 + t345 * t564) * t463;
t129 = (-t218 + t574) * t465 + t464 * t501;
t128 = t219 * t465 + t462 * t501 + t575;
t127 = t450 * t579 - t486 * t542 + t264;
t126 = t450 * t547 - t485 * t573 - t325;
t125 = t285 * t448 - t489 * t544 + t584;
t124 = t308 * t448 + t310 * t486 + t312 * t424 + t346 * t440 - t348 * t381 + t350 * t382;
t123 = t307 * t448 + t309 * t486 + t311 * t424 + t345 * t440 - t347 * t381 + t349 * t382;
t122 = -t308 * t489 + t310 * t485 + t312 * t422 + t346 * t438 - t348 * t379 + t350 * t380;
t121 = -t307 * t489 + t309 * t485 + t311 * t422 + t345 * t438 - t347 * t379 + t349 * t380;
t120 = (t285 * t462 + t287 * t464) * t463 + t491;
t119 = t448 * t512 + t516 * t597;
t118 = -t489 * t573 + t580 * t597 + t518;
t117 = t219 * t450 + t256 * t486 + t302 * t426 - t357 * t381;
t116 = -t218 * t450 - t256 * t485 - t301 * t426 + t357 * t379;
t115 = (-t416 + t517) * t465 + t464 * t488;
t114 = t462 * t488 + t465 * t579 + t548;
t113 = (t218 * t462 + t219 * t464) * t463 + t513;
t112 = -t485 * t545 - t486 * t580 - t257;
t110 = t448 * t580 - t489 * t516 + t584;
t109 = (t462 * t580 + t464 * t579) * t463 + t491;
t108 = t366 + t585 * t448 + t571 * t440 + (t302 * t564 + t471 * t589) * t463;
t107 = -t489 * t256 + t438 * t357 + (t218 * t471 + t564 * t578) * t463 + t543;
t106 = -t218 * t486 + t219 * t485 + t301 * t381 - t302 * t379;
t100 = -t159 * t489 + t160 * t448 - t224 * t597;
t99 = (-t202 + t551) * t465 + t464 * t496;
t98 = t204 * t465 + t462 * t496 + t552;
t93 = -t159 * t485 - t160 * t486 + t224 * t450;
t90 = t218 * t448 + t301 * t440 + t438 * t577 - t489 * t589 + t576;
t89 = -t155 * t489 + t156 * t448 - t186 * t597;
t88 = -t153 * t489 + t154 * t448 - t185 * t597;
t87 = -t155 * t485 - t156 * t486 + t186 * t450;
t86 = -t153 * t485 - t154 * t486 + t185 * t450;
t83 = -t149 * t489 + t150 * t448 - t173 * t597;
t82 = -t147 * t489 + t148 * t448 - t172 * t597;
t81 = -t149 * t485 - t150 * t486 + t173 * t450;
t80 = -t147 * t485 - t148 * t486 + t172 * t450;
t75 = -t143 * t489 + t144 * t448 - t166 * t597;
t74 = -t141 * t489 + t142 * t448 - t165 * t597;
t73 = -t139 * t489 + t140 * t448 - t164 * t597;
t72 = -t137 * t489 + t138 * t448 - t163 * t597;
t69 = -t143 * t485 - t144 * t486 + t166 * t450;
t68 = -t141 * t485 - t142 * t486 + t165 * t450;
t67 = -t139 * t485 - t140 * t486 + t164 * t450;
t66 = -t137 * t485 - t138 * t486 + t163 * t450;
t65 = (t202 * t462 + t204 * t464) * t463 + t493;
t60 = t204 * t450 + t287 * t426 + t381 * t572 - t486 * t586 + t593;
t59 = -t248 * t485 + t338 * t379 + (-t202 - t210) * t450 + t582 * t426 + t588;
t54 = (t551 - t592) * t465 + t464 * t487;
t53 = t462 * t487 + t465 * t591 + t552;
t52 = t162 * t465 + (-t130 * t464 + t131 * t462) * t463;
t51 = t549 * t448 + t541 * t440 + (t287 * t564 + t471 * t553) * t463 + t583;
t50 = -t489 * t248 + t438 * t338 + (t202 * t471 + t546 * t564) * t463 + t492;
t41 = t152 * t465 + (-t123 * t464 + t124 * t462) * t463;
t40 = t151 * t465 + (-t121 * t464 + t122 * t462) * t463;
t39 = -t202 * t486 + t285 * t381 + t379 * t581 - t485 * t590 + t594;
t38 = (t462 * t592 + t464 * t591) * t463 + t493;
t37 = t202 * t448 + t285 * t440 + t438 * t544 - t489 * t553 + t521;
t36 = t381 * t542 + t426 * t579 + t450 * t591 - t486 * t550 + t593;
t35 = -t587 * t485 + t573 * t379 + (-t210 - t592) * t450 + t547 * t426 + t588;
t34 = t519 * t448 + t512 * t440 + (t471 * t520 + t564 * t579) * t463 + t583;
t33 = -t587 * t489 + t573 * t438 + (t471 * t592 + t517 * t564) * t463 + t492;
t32 = -t130 * t489 + t131 * t448 + t227 * t438 + t228 * t440 + (-t162 * t471 + t262 * t564) * t463;
t31 = -t123 * t489 + t124 * t448 + t222 * t438 + t605 + (-t152 * t471 + t235 * t564) * t463;
t30 = -t121 * t489 + t122 * t448 + t606 + t221 * t440 + (-t151 * t471 + t234 * t564) * t463;
t29 = t379 * t545 + t381 * t580 - t485 * t554 - t486 * t592 + t594;
t28 = t438 * t516 + t440 * t580 + t448 * t592 - t489 * t520 + t521;
t76 = [0; m(4) * t568 / 0.2e1 + t514 * t615 + (m(3) * t412 - t618) * t599 + (m(3) * t411 + t473) * t600 + t559 * (0.2e1 * t205 + 0.2e1 * t206 + t514); t24 * t600 - t23 * t599 + t22 * t600 - t20 * t599 + t21 * t600 - t19 * t599 + t41 * t600 - t40 * t599 + ((-t394 * t440 - t396 * t439 + t406 * t600 - t408 * t448 + t410 * t449) * t600 - (-t393 * t440 - t395 * t439 + t405 * t600 - t407 * t448 + t409 * t449) * t599 + (-t434 * t440 - t435 * t439 + t441 * t600 - t442 * t448 + t443 * t449) * t465) * t600 - ((-t394 * t438 + t396 * t437 - t406 * t599 + t408 * t489 + t410 * t447) * t600 - (-t393 * t438 + t395 * t437 - t405 * t599 + t407 * t489 + t409 * t447) * t599 + (-t434 * t438 + t435 * t437 - t441 * t599 + t442 * t489 + t443 * t447) * t465) * t599 + (t109 * t38 + t114 * t53 + t115 * t54) * t530 + (t120 * t65 + t133 * t98 + t134 * t99) * t532 + t465 * t25 + t465 * t27 + t465 * t26 + (t113 * t157 + t128 * t167 + t129 * t168) * t534 + t465 * t52 + (t171 * t231 + t225 * t249 + t226 * t250) * t536 + t465 * (t465 ^ 2 * t441 + (((t408 * t471 + t410 * t469) * t462 - (t407 * t471 + t409 * t469) * t464 + ((-t394 * t469 + t396 * t471) * t462 - (-t393 * t469 + t395 * t471) * t464) * qJD(2)) * t463 + (-t405 * t464 + t406 * t462 + t442 * t471 + t443 * t469 + (-t434 * t469 + t435 * t471) * qJD(2)) * t465) * t463) + 0.2e1 * m(3) * ((-t397 * t465 - t436 * t599) * (-t411 * t465 - t444 * t599) + (t398 * t465 - t436 * t600) * (t412 * t465 - t444 * t600) + (t397 * t462 + t398 * t464) * t463 ^ 2 * (t411 * t462 + t412 * t464)); t515 * t615 + t473 * t448 - t618 * t489 + (m(4) * t351 + t475) * t440 + (-m(4) * t352 + t474) * t438 + t559 * (t211 * t616 + t271 * t617 + 0.2e1 * t181 + 0.2e1 * t261 + t515); m(4) * (t158 * t231 + t169 * t250 + t170 * t249 + t171 * t251 + t225 * t289 + t226 * t288) + (t107 * t168 + t108 * t167 + t113 * t161 + t128 * t178 + t129 * t177 + t157 * t90) * m(5) + (t120 * t37 + t125 * t65 + t133 * t51 + t134 * t50 + t135 * t99 + t136 * t98) * m(6) + (t109 * t28 + t110 * t38 + t114 * t34 + t115 * t33 + t118 * t54 + t119 * t53) * m(7) + t503 * t440 + t504 * t438 + (t41 / 0.2e1 + t506) * t448 - (t40 / 0.2e1 + t507) * t489 + (t603 / 0.2e1 + t604 / 0.2e1 + t32 / 0.2e1 + t508) * t465 + ((-t30 / 0.2e1 - t440 * t222 / 0.2e1 - t606 / 0.2e1 - t524) * t464 + (t31 / 0.2e1 + t605 / 0.2e1 + t438 * t221 / 0.2e1 + t523) * t462 + (-t52 / 0.2e1 - t505) * t471 + (t262 * t619 + (-t227 * t464 + t228 * t462) * t620 + t502) * t564) * t463; (t158 * t251 + t169 * t288 + t170 * t289) * t536 + (t107 * t177 + t108 * t178 + t161 * t90) * t534 + (t125 * t37 + t135 * t50 + t136 * t51) * t532 + (t110 * t28 + t118 * t33 + t119 * t34) * t530 + (t31 + t7 + t8 + t12) * t448 - (t30 + t5 + t6 + t11) * t489 + (-t222 * t489 + t223 * t448 + t74 + t75 + t83) * t440 + (-t220 * t489 + t221 * t448 + t72 + t73 + t82) * t438 + ((-t227 * t489 + t228 * t448 + t100 + t88 + t89) * t564 + (-t262 * t538 - t15 - t16 - t18 - t32 - t603 - t604) * t471) * t463; t474 * t379 + t475 * t381 - t476 * t485 - t477 * t486 + (t211 * t485 - t379 * t271 + t594) * t623; (t106 * t157 + t113 * t209 + t116 * t168 + t117 * t167 + t128 * t230 + t129 * t229) * m(5) + (t120 * t39 + t132 * t65 + t133 * t60 + t134 * t59 + t145 * t99 + t146 * t98) * m(6) + (t109 * t29 + t112 * t38 + t114 * t36 + t115 * t35 + t126 * t54 + t127 * t53) * m(7) + t509 * t465 + t505 * t450 + t502 * t426 - t506 * t486 - t507 * t485 + t503 * t381 + t504 * t379 + (t462 * t525 + t464 * t526) * t463; (t106 * t161 + t107 * t229 + t108 * t230 + t116 * t177 + t117 * t178 + t209 * t90) * m(5) + (t125 * t39 + t132 * t37 + t135 * t59 + t136 * t60 + t145 * t50 + t146 * t51) * m(6) + (t110 * t29 + t112 * t28 + t118 * t35 + t119 * t36 + t126 * t33 + t127 * t34) * m(7) + t508 * t450 + t525 * t448 + t526 * t489 + (t81 / 0.2e1 + t68 / 0.2e1 + t69 / 0.2e1) * t440 + (t80 / 0.2e1 + t66 / 0.2e1 + t67 / 0.2e1) * t438 + (t100 / 0.2e1 + t89 / 0.2e1 + t88 / 0.2e1) * t426 - t523 * t486 - t524 * t485 + (t83 / 0.2e1 + t75 / 0.2e1 + t74 / 0.2e1) * t381 + (t82 / 0.2e1 + t73 / 0.2e1 + t72 / 0.2e1) * t379 + (-t509 * t471 + (t86 / 0.2e1 + t87 / 0.2e1 + t93 / 0.2e1) * t564) * t463; (t112 * t29 + t126 * t35 + t127 * t36) * t530 + (t132 * t39 + t145 * t59 + t146 * t60) * t532 + (t106 * t209 + t116 * t229 + t117 * t230) * t534 + (t17 + t14 + t13) * t450 + (t93 + t87 + t86) * t426 - (t3 + t10 + t4) * t486 - (t2 + t9 + t1) * t485 + (t68 + t81 + t69) * t381 + (t67 + t80 + t66) * t379; t426 * t623; (m(6) * t65 + m(7) * t38) * t450 + (m(6) * t120 + m(7) * t109) * t426 - (m(6) * t99 + m(7) * t54) * t486 - (m(6) * t98 + m(7) * t53) * t485 + (m(6) * t134 + m(7) * t115) * t381 + (m(6) * t133 + m(7) * t114) * t379; (m(6) * t37 + m(7) * t28) * t450 + (m(6) * t125 + m(7) * t110) * t426 - (m(6) * t50 + m(7) * t33) * t486 - (m(6) * t51 + m(7) * t34) * t485 + (m(6) * t135 + m(7) * t118) * t381 + (m(6) * t136 + m(7) * t119) * t379; (m(6) * t39 + m(7) * t29) * t450 + (m(6) * t132 + m(7) * t112) * t426 - (m(6) * t59 + m(7) * t35) * t486 - (m(6) * t60 + m(7) * t36) * t485 + (m(6) * t145 + m(7) * t126) * t381 + (m(6) * t146 + m(7) * t127) * t379; 0.4e1 * t559 * (-t379 * t485 - t381 * t486 + t426 * t450); t340 * m(7); (t109 * t340 + t114 * t290 + t115 * t292 - t38 * t480 - t482 * t54 - t483 * t53) * m(7); (t110 * t340 + t118 * t292 + t119 * t290 - t28 * t480 - t33 * t482 - t34 * t483) * m(7); (t112 * t340 + t126 * t292 + t127 * t290 - t29 * t480 - t35 * t482 - t36 * t483) * m(7); (-t290 * t485 - t292 * t486 + t340 * t450 - t379 * t483 - t381 * t482 - t426 * t480) * m(7); (-t290 * t483 - t292 * t482 - t340 * t480) * t530;];
%% Postprocessing: Reshape Output
% From vec2symmat_6_matlab.m
res = [t76(1) t76(2) t76(4) t76(7) t76(11) t76(16); t76(2) t76(3) t76(5) t76(8) t76(12) t76(17); t76(4) t76(5) t76(6) t76(9) t76(13) t76(18); t76(7) t76(8) t76(9) t76(10) t76(14) t76(19); t76(11) t76(12) t76(13) t76(14) t76(15) t76(20); t76(16) t76(17) t76(18) t76(19) t76(20) t76(21);];
Mq  = res;
