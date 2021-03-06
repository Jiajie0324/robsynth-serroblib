% Calculate time derivative of joint inertia matrix for
% S5RRPRR13
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d4,d5,theta3]';
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
% MqD [5x5]
%   time derivative of inertia matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 20:34
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S5RRPRR13_inertiaDJ_slag_vp11(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRR13_inertiaDJ_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPRR13_inertiaDJ_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRPRR13_inertiaDJ_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRPRR13_inertiaDJ_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RRPRR13_inertiaDJ_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RRPRR13_inertiaDJ_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 20:32:10
% EndTime: 2019-12-31 20:32:43
% DurationCPUTime: 18.47s
% Computational Cost: add. (37326->994), mult. (42927->1388), div. (0->0), fcn. (41200->10), ass. (0->471)
t369 = sin(qJ(1));
t574 = t369 / 0.2e1;
t371 = cos(qJ(1));
t572 = -t371 / 0.2e1;
t598 = -qJD(1) / 0.2e1;
t370 = cos(qJ(2));
t502 = qJD(2) * t370;
t465 = t502 / 0.2e1;
t368 = sin(qJ(2));
t507 = qJD(1) * t369;
t479 = t368 * t507;
t597 = t371 * t465 - t479 / 0.2e1;
t505 = qJD(1) * t371;
t466 = t505 / 0.2e1;
t596 = t368 * t466 + t369 * t465;
t366 = cos(pkin(9));
t349 = t366 * pkin(3) + pkin(2);
t566 = pkin(2) - t349;
t467 = t566 * t370;
t550 = qJ(3) * t368;
t595 = t467 + t550;
t472 = t369 * t502;
t381 = t368 * t505 + t472;
t594 = t368 * t566;
t558 = Icges(3,4) * t370;
t423 = -Icges(3,2) * t368 + t558;
t291 = Icges(3,6) * t369 + t371 * t423;
t559 = Icges(3,4) * t368;
t428 = Icges(3,1) * t370 - t559;
t293 = Icges(3,5) * t369 + t371 * t428;
t405 = t291 * t368 - t293 * t370;
t391 = t405 * t369;
t290 = -Icges(3,6) * t371 + t369 * t423;
t292 = -Icges(3,5) * t371 + t369 * t428;
t406 = t290 * t368 - t292 * t370;
t392 = t406 * t371;
t538 = t368 * t371;
t593 = -rSges(3,2) * t538 + t369 * rSges(3,3);
t418 = Icges(3,5) * t370 - Icges(3,6) * t368;
t288 = -Icges(3,3) * t371 + t369 * t418;
t506 = qJD(1) * t370;
t456 = -qJD(4) + t506;
t501 = qJD(2) * t371;
t473 = t368 * t501;
t592 = t369 * t456 + t473;
t362 = qJD(4) + qJD(5);
t459 = -t362 + t506;
t591 = t369 * t459 + t473;
t503 = qJD(2) * t369;
t474 = t368 * t503;
t590 = t371 * t456 - t474;
t589 = t371 * t459 - t474;
t367 = -pkin(7) - qJ(3);
t360 = -pkin(8) + t367;
t510 = t360 - t367;
t461 = t510 * t368;
t365 = sin(pkin(9));
t537 = t369 * t365;
t339 = pkin(3) * t537;
t535 = t370 * t371;
t516 = -t349 * t535 - t339;
t361 = pkin(9) + qJ(4);
t353 = cos(t361);
t313 = pkin(4) * t353 + t349;
t352 = sin(t361);
t568 = pkin(3) * t365;
t319 = pkin(4) * t352 + t568;
t519 = t313 * t535 + t369 * t319;
t165 = -t371 * t461 + t516 + t519;
t354 = qJ(5) + t361;
t347 = sin(t354);
t348 = cos(t354);
t276 = -t347 * t535 + t369 * t348;
t277 = t369 * t347 + t348 * t535;
t200 = t277 * rSges(6,1) + t276 * rSges(6,2) + rSges(6,3) * t538;
t530 = t165 + t200;
t517 = t313 - t349;
t462 = t517 * t370;
t389 = -t360 * t368 + t462;
t542 = t365 * t371;
t340 = pkin(3) * t542;
t539 = t368 * t369;
t514 = t367 * t539 + t340;
t545 = t319 * t371;
t164 = t369 * t389 + t514 - t545;
t536 = t369 * t370;
t274 = -t347 * t536 - t348 * t371;
t275 = -t347 * t371 + t348 * t536;
t438 = -t275 * rSges(6,1) - t274 * rSges(6,2);
t199 = rSges(6,3) * t539 - t438;
t531 = t164 + t199;
t588 = -t369 * t531 - t371 * t530;
t587 = 2 * m(3);
t586 = 2 * m(4);
t585 = 2 * m(5);
t584 = 2 * m(6);
t583 = m(4) / 0.2e1;
t582 = m(5) / 0.2e1;
t581 = m(6) / 0.2e1;
t421 = Icges(4,4) * t366 - Icges(4,2) * t365;
t281 = -Icges(4,6) * t370 + t368 * t421;
t580 = t281 / 0.2e1;
t426 = Icges(4,1) * t366 - Icges(4,4) * t365;
t282 = -Icges(4,5) * t370 + t368 * t426;
t579 = t282 / 0.2e1;
t306 = -t365 * t535 + t369 * t366;
t578 = t306 / 0.2e1;
t307 = t366 * t535 + t537;
t577 = t307 / 0.2e1;
t576 = -t365 / 0.2e1;
t575 = t366 / 0.2e1;
t573 = -t370 / 0.2e1;
t571 = t371 / 0.2e1;
t329 = rSges(3,1) * t368 + rSges(3,2) * t370;
t570 = m(3) * t329;
t569 = pkin(2) * t370;
t357 = t369 * pkin(6);
t567 = qJD(1) / 0.2e1;
t565 = rSges(3,3) * t371;
t564 = rSges(5,3) * t368;
t563 = rSges(6,3) * t368;
t562 = pkin(4) * qJD(4);
t561 = -rSges(4,3) - qJ(3);
t560 = -rSges(6,3) + t360;
t557 = Icges(5,4) * t352;
t556 = Icges(5,4) * t353;
t555 = Icges(6,4) * t347;
t554 = Icges(6,4) * t348;
t284 = -t352 * t536 - t353 * t371;
t285 = -t352 * t371 + t353 * t536;
t441 = -rSges(5,1) * t285 - rSges(5,2) * t284;
t210 = rSges(5,3) * t539 - t441;
t549 = t210 * t371;
t424 = Icges(6,1) * t348 - t555;
t261 = -Icges(6,5) * t370 + t368 * t424;
t548 = t261 * t348;
t425 = Icges(5,1) * t353 - t557;
t269 = -Icges(5,5) * t370 + t368 * t425;
t547 = t269 * t353;
t546 = t313 * t368;
t544 = t362 * t368;
t543 = t365 * t370;
t541 = t366 * t370;
t540 = t367 * t370;
t534 = qJ(3) + t367;
t460 = -t362 * t370 + qJD(1);
t403 = t460 * t369;
t173 = -t347 * t589 + t348 * t403;
t174 = t347 * t403 + t348 * t589;
t439 = t174 * rSges(6,1) + t173 * rSges(6,2);
t114 = rSges(6,3) * t381 + t439;
t471 = t370 * t501;
t533 = t114 * t538 + t199 * t471;
t404 = t371 * t460;
t171 = t347 * t591 + t348 * t404;
t172 = t347 * t404 - t348 * t591;
t487 = t172 * rSges(6,1) + t171 * rSges(6,2) + rSges(6,3) * t471;
t113 = -rSges(6,3) * t479 + t487;
t496 = t353 * t562;
t481 = t319 * t505 + t360 * t479 + t369 * t496;
t497 = t352 * t562;
t515 = qJD(1) * t340 + t367 * t479;
t532 = -t517 * t473 + (-t517 * t507 + (-qJD(2) * t510 - t497) * t371) * t370 + t481 - t515 + t113;
t437 = rSges(6,1) * t348 - rSges(6,2) * t347;
t262 = -rSges(6,3) * t370 + t368 * t437;
t504 = qJD(2) * t368;
t529 = t200 * t504 + t262 * t479;
t187 = (-rSges(6,1) * t347 - rSges(6,2) * t348) * t544 + (t370 * t437 + t563) * qJD(2);
t499 = qJD(4) * t368;
t470 = t352 * t499;
t201 = -pkin(4) * t470 + (t462 - t461) * qJD(2);
t528 = -t187 - t201;
t228 = t307 * rSges(4,1) + t306 * rSges(4,2) + rSges(4,3) * t538;
t346 = pkin(2) * t535;
t310 = qJ(3) * t538 + t346;
t527 = -t228 - t310;
t399 = -t367 * t538 - t516;
t230 = t399 - t310;
t526 = -t230 - t310;
t237 = t368 * t517 + t370 * t510;
t525 = t237 + t262;
t146 = t370 * t199 + t262 * t539;
t436 = t550 + t569;
t302 = qJD(2) * t436 - qJD(3) * t370;
t524 = -(-t368 * t534 - t467) * qJD(2) - t302;
t263 = t370 * t534 - t594;
t328 = pkin(2) * t368 - qJ(3) * t370;
t311 = t328 * t507;
t523 = t263 * t507 + t311;
t522 = -t263 - t328;
t443 = rSges(4,1) * t366 - rSges(4,2) * t365;
t521 = -(rSges(4,3) * t368 + t370 * t443) * qJD(2) - t302;
t283 = -rSges(4,3) * t370 + t368 * t443;
t520 = -t283 - t328;
t309 = t436 * t369;
t518 = t369 * t309 + t371 * t310;
t513 = rSges(3,2) * t479 + rSges(3,3) * t505;
t500 = qJD(3) * t368;
t338 = t371 * t500;
t351 = pkin(6) * t505;
t512 = t338 + t351;
t511 = t371 * pkin(1) + t357;
t509 = t369 ^ 2 + t371 ^ 2;
t289 = Icges(3,3) * t369 + t371 * t418;
t508 = qJD(1) * t289;
t457 = -qJD(4) * t370 + qJD(1);
t402 = t369 * t457;
t191 = -t352 * t590 + t353 * t402;
t192 = t352 * t402 + t353 * t590;
t120 = Icges(5,5) * t192 + Icges(5,6) * t191 + Icges(5,3) * t381;
t122 = Icges(5,4) * t192 + Icges(5,2) * t191 + Icges(5,6) * t381;
t124 = Icges(5,1) * t192 + Icges(5,4) * t191 + Icges(5,5) * t381;
t204 = Icges(5,5) * t285 + Icges(5,6) * t284 + Icges(5,3) * t539;
t206 = Icges(5,4) * t285 + Icges(5,2) * t284 + Icges(5,6) * t539;
t208 = Icges(5,1) * t285 + Icges(5,4) * t284 + Icges(5,5) * t539;
t412 = -t206 * t352 + t208 * t353;
t34 = (qJD(2) * t412 - t120) * t370 + (qJD(2) * t204 - t122 * t352 + t124 * t353 + (-t206 * t353 - t208 * t352) * qJD(4)) * t368;
t416 = Icges(5,5) * t353 - Icges(5,6) * t352;
t212 = (-Icges(5,5) * t352 - Icges(5,6) * t353) * t499 + (Icges(5,3) * t368 + t370 * t416) * qJD(2);
t420 = -Icges(5,2) * t352 + t556;
t213 = (-Icges(5,2) * t353 - t557) * t499 + (Icges(5,6) * t368 + t370 * t420) * qJD(2);
t214 = (-Icges(5,1) * t352 - t556) * t499 + (Icges(5,5) * t368 + t370 * t425) * qJD(2);
t267 = -Icges(5,3) * t370 + t368 * t416;
t268 = -Icges(5,6) * t370 + t368 * t420;
t59 = t191 * t268 + t192 * t269 + t212 * t539 + t284 * t213 + t285 * t214 + t267 * t381;
t495 = t34 / 0.2e1 + t59 / 0.2e1;
t401 = t371 * t457;
t189 = t352 * t592 + t353 * t401;
t190 = t352 * t401 - t353 * t592;
t380 = t471 - t479;
t119 = Icges(5,5) * t190 + Icges(5,6) * t189 + Icges(5,3) * t380;
t121 = Icges(5,4) * t190 + Icges(5,2) * t189 + Icges(5,6) * t380;
t123 = Icges(5,1) * t190 + Icges(5,4) * t189 + Icges(5,5) * t380;
t286 = -t352 * t535 + t369 * t353;
t287 = t369 * t352 + t353 * t535;
t205 = Icges(5,5) * t287 + Icges(5,6) * t286 + Icges(5,3) * t538;
t207 = Icges(5,4) * t287 + Icges(5,2) * t286 + Icges(5,6) * t538;
t209 = Icges(5,1) * t287 + Icges(5,4) * t286 + Icges(5,5) * t538;
t411 = -t207 * t352 + t209 * t353;
t35 = (qJD(2) * t411 - t119) * t370 + (qJD(2) * t205 - t121 * t352 + t123 * t353 + (-t207 * t353 - t209 * t352) * qJD(4)) * t368;
t58 = t189 * t268 + t190 * t269 + t212 * t538 + t286 * t213 + t287 * t214 + t267 * t380;
t494 = t35 / 0.2e1 + t58 / 0.2e1;
t305 = t366 * t536 - t542;
t396 = t365 * t536 + t366 * t371;
t221 = Icges(4,5) * t305 - Icges(4,6) * t396 + Icges(4,3) * t539;
t493 = t221 * t539;
t492 = t221 * t538;
t222 = Icges(4,5) * t307 + Icges(4,6) * t306 + Icges(4,3) * t538;
t491 = t222 * t539;
t490 = t222 * t538;
t133 = t267 * t539 + t268 * t284 + t269 * t285;
t97 = -t204 * t370 + t368 * t412;
t489 = t133 / 0.2e1 + t97 / 0.2e1;
t134 = t267 * t538 + t286 * t268 + t287 * t269;
t98 = -t205 * t370 + t368 * t411;
t488 = t98 / 0.2e1 + t134 / 0.2e1;
t486 = t190 * rSges(5,1) + t189 * rSges(5,2) + rSges(5,3) * t471;
t440 = rSges(5,1) * t353 - rSges(5,2) * t352;
t215 = (-rSges(5,1) * t352 - rSges(5,2) * t353) * t499 + (t370 * t440 + t564) * qJD(2);
t485 = -t215 + t524;
t331 = qJ(3) * t471;
t337 = pkin(2) * t474;
t382 = -t369 * t506 - t473;
t484 = t369 * (qJ(3) * t381 + qJD(1) * t346 + t369 * t500 - t337) + t371 * (pkin(2) * t382 - qJ(3) * t479 + t331 + t338) + t309 * t505;
t251 = qJD(1) * t396 + t365 * t473;
t252 = -qJD(1) * t305 - t366 * t473;
t483 = t252 * rSges(4,1) + t251 * rSges(4,2) + rSges(4,3) * t471;
t273 = -rSges(5,3) * t370 + t368 * t440;
t482 = -t273 + t522;
t211 = t287 * rSges(5,1) + t286 * rSges(5,2) + rSges(5,3) * t538;
t480 = t349 * t474 + t381 * t367;
t477 = t273 * t507;
t419 = -Icges(6,2) * t347 + t554;
t260 = -Icges(6,6) * t370 + t368 * t419;
t476 = t260 * t502;
t475 = t268 * t502;
t469 = t539 / 0.2e1;
t468 = t538 / 0.2e1;
t464 = -t313 * t370 - pkin(1);
t463 = t371 * t525;
t240 = t520 * t371;
t458 = t370 * t497;
t455 = t370 * t114 + t187 * t539 + t381 * t262;
t454 = t524 + t528;
t229 = -t369 * t595 - t514;
t453 = t369 * t229 + t371 * t230 + t518;
t452 = t522 - t525;
t167 = t482 * t371;
t415 = Icges(6,5) * t348 - Icges(6,6) * t347;
t259 = -Icges(6,3) * t370 + t368 * t415;
t141 = -t259 * t370 + (-t260 * t347 + t548) * t368;
t127 = t259 * t539 + t260 * t274 + t261 * t275;
t193 = Icges(6,5) * t275 + Icges(6,6) * t274 + Icges(6,3) * t539;
t195 = Icges(6,4) * t275 + Icges(6,2) * t274 + Icges(6,6) * t539;
t197 = Icges(6,1) * t275 + Icges(6,4) * t274 + Icges(6,5) * t539;
t77 = t193 * t539 + t195 * t274 + t197 * t275;
t194 = Icges(6,5) * t277 + Icges(6,6) * t276 + Icges(6,3) * t538;
t196 = Icges(6,4) * t277 + Icges(6,2) * t276 + Icges(6,6) * t538;
t198 = Icges(6,1) * t277 + Icges(6,4) * t276 + Icges(6,5) * t538;
t78 = t194 * t539 + t196 * t274 + t198 * t275;
t435 = t369 * t77 + t371 * t78;
t41 = -t127 * t370 + t368 * t435;
t128 = t259 * t538 + t276 * t260 + t277 * t261;
t79 = t193 * t538 + t276 * t195 + t277 * t197;
t80 = t194 * t538 + t276 * t196 + t277 * t198;
t434 = t369 * t79 + t371 * t80;
t42 = -t128 * t370 + t368 * t434;
t414 = -t195 * t347 + t197 * t348;
t93 = -t193 * t370 + t368 * t414;
t413 = -t196 * t347 + t198 * t348;
t94 = -t194 * t370 + t368 * t413;
t430 = t93 * t369 + t94 * t371;
t108 = Icges(6,5) * t174 + Icges(6,6) * t173 + Icges(6,3) * t381;
t110 = Icges(6,4) * t174 + Icges(6,2) * t173 + Icges(6,6) * t381;
t112 = Icges(6,1) * t174 + Icges(6,4) * t173 + Icges(6,5) * t381;
t19 = t108 * t538 + t276 * t110 + t277 * t112 + t171 * t195 + t172 * t197 + t193 * t380;
t107 = Icges(6,5) * t172 + Icges(6,6) * t171 + Icges(6,3) * t380;
t109 = Icges(6,4) * t172 + Icges(6,2) * t171 + Icges(6,6) * t380;
t111 = Icges(6,1) * t172 + Icges(6,4) * t171 + Icges(6,5) * t380;
t20 = t107 * t538 + t276 * t109 + t277 * t111 + t171 * t196 + t172 * t198 + t194 * t380;
t181 = (-Icges(6,5) * t347 - Icges(6,6) * t348) * t544 + (Icges(6,3) * t368 + t370 * t415) * qJD(2);
t182 = (-Icges(6,2) * t348 - t555) * t544 + (Icges(6,6) * t368 + t370 * t419) * qJD(2);
t183 = (-Icges(6,1) * t347 - t554) * t544 + (Icges(6,5) * t368 + t370 * t424) * qJD(2);
t50 = t171 * t260 + t172 * t261 + t181 * t538 + t276 * t182 + t277 * t183 + t259 * t380;
t57 = t80 * t369 - t371 * t79;
t5 = (qJD(2) * t434 - t50) * t370 + (-qJD(1) * t57 + qJD(2) * t128 + t19 * t369 + t20 * t371) * t368;
t21 = t108 * t539 + t274 * t110 + t275 * t112 + t173 * t195 + t174 * t197 + t193 * t381;
t22 = t107 * t539 + t274 * t109 + t275 * t111 + t173 * t196 + t174 * t198 + t194 * t381;
t51 = t173 * t260 + t174 * t261 + t181 * t539 + t274 * t182 + t275 * t183 + t259 * t381;
t56 = t78 * t369 - t371 * t77;
t6 = (qJD(2) * t435 - t51) * t370 + (-qJD(1) * t56 + qJD(2) * t127 + t21 * t369 + t22 * t371) * t368;
t447 = t42 * t471 + t5 * t538 + t6 * t539 + (-t141 * t370 + t368 * t430) * t504 + t381 * t41;
t446 = rSges(3,1) * t370 - rSges(3,2) * t368;
t253 = qJD(1) * t306 + t365 * t474;
t254 = qJD(1) * t307 - t366 * t474;
t445 = -t254 * rSges(4,1) - t253 * rSges(4,2);
t444 = -rSges(4,1) * t305 + rSges(4,2) * t396;
t442 = t192 * rSges(5,1) + t191 * rSges(5,2);
t85 = t204 * t539 + t206 * t284 + t208 * t285;
t86 = t205 * t539 + t207 * t284 + t209 * t285;
t60 = t86 * t369 - t371 * t85;
t433 = t369 * t85 + t371 * t86;
t87 = t204 * t538 + t286 * t206 + t287 * t208;
t88 = t205 * t538 + t286 * t207 + t287 * t209;
t61 = t88 * t369 - t371 * t87;
t432 = t369 * t87 + t371 * t88;
t431 = t94 * t369 - t371 * t93;
t429 = t369 * t97 + t371 * t98;
t427 = Icges(3,1) * t368 + t558;
t422 = Icges(3,2) * t370 + t559;
t417 = Icges(4,5) * t366 - Icges(4,6) * t365;
t410 = -t211 * t369 + t549;
t409 = -t369 * t210 - t211 * t371;
t296 = rSges(3,1) * t535 + t593;
t137 = t452 * t371;
t400 = -pkin(1) - t446;
t398 = -t349 * t370 - pkin(1) - t564;
t397 = t369 * (-qJ(3) * t472 + t337 + (-t371 * t595 + t339) * qJD(1) - t480) + t371 * (-t331 + (-t540 + t594) * t501 + t595 * t507 + t515) + t229 * t505 + t484;
t393 = qJD(2) * t329;
t390 = t164 * t371 - t369 * t530;
t388 = qJD(2) * t427;
t387 = qJD(2) * t422;
t386 = qJD(2) * (-Icges(3,5) * t368 - Icges(3,6) * t370);
t385 = t368 * t561 - pkin(1) - t569;
t384 = t398 * t369;
t383 = t368 * t560 + t464;
t378 = t385 * t369;
t12 = qJD(1) * t434 - t19 * t371 + t20 * t369;
t13 = qJD(1) * t435 - t21 * t371 + t22 * t369;
t25 = (qJD(2) * t414 - t108) * t370 + (qJD(2) * t193 + (-t195 * t362 + t112) * t348 + (-t197 * t362 - t110) * t347) * t368;
t26 = (qJD(2) * t413 - t107) * t370 + (qJD(2) * t194 + (-t196 * t362 + t111) * t348 + (-t198 * t362 - t109) * t347) * t368;
t377 = t12 * t468 + t13 * t469 + t5 * t574 + t6 * t572 + (qJD(1) * t430 - t25 * t371 + t26 * t369) * t573 + t41 * t507 / 0.2e1 + t42 * t466 + t431 * t504 / 0.2e1 + t597 * t57 + t596 * t56;
t376 = -t370 * t181 + t259 * t504 + t502 * t548 + (t183 * t368 - t260 * t544) * t348;
t375 = -t370 * t212 + t267 * t504 + t502 * t547 + (t214 * t368 - t268 * t499) * t353;
t138 = t141 * t504;
t65 = (-t476 + (-t261 * t362 - t182) * t368) * t347 + t376;
t9 = t138 + (qJD(2) * t430 - t65) * t370 + (-qJD(1) * t431 + t25 * t369 + t26 * t371) * t368;
t374 = -t370 * t9 - t42 * t479 + t447;
t373 = -t458 + (-t360 * t370 - t546) * qJD(2);
t372 = t138 + (t25 + t51) * t469 + (t26 + t50) * t468 + (t128 + t94) * t597 + (t127 + t93) * t596;
t358 = t371 * pkin(6);
t317 = t446 * qJD(2);
t314 = t418 * qJD(2);
t295 = t369 * t446 - t565;
t266 = (Icges(4,5) * t368 + t370 * t426) * qJD(2);
t265 = (Icges(4,6) * t368 + t370 * t421) * qJD(2);
t258 = t296 + t511;
t257 = t369 * t400 + t358 + t565;
t239 = t520 * t369;
t232 = t369 * t386 + t508;
t231 = -qJD(1) * t288 + t371 * t386;
t227 = rSges(4,3) * t539 - t444;
t226 = Icges(4,1) * t307 + Icges(4,4) * t306 + Icges(4,5) * t538;
t225 = Icges(4,1) * t305 - Icges(4,4) * t396 + Icges(4,5) * t539;
t224 = Icges(4,4) * t307 + Icges(4,2) * t306 + Icges(4,6) * t538;
t223 = Icges(4,4) * t305 - Icges(4,2) * t396 + Icges(4,6) * t539;
t203 = t329 * t503 + ((-rSges(3,3) - pkin(6)) * t369 + t400 * t371) * qJD(1);
t202 = rSges(3,1) * t382 - rSges(3,2) * t471 - pkin(1) * t507 + t351 + t513;
t179 = t199 * t538;
t176 = t511 - t527;
t175 = t358 + t378 + t444;
t166 = t482 * t369;
t163 = t369 * t289 - t405 * t371;
t162 = t369 * t288 - t392;
t161 = -t289 * t371 - t391;
t160 = -t288 * t371 - t369 * t406;
t159 = Icges(4,1) * t254 + Icges(4,4) * t253 + Icges(4,5) * t381;
t158 = Icges(4,1) * t252 + Icges(4,4) * t251 + Icges(4,5) * t380;
t157 = Icges(4,4) * t254 + Icges(4,2) * t253 + Icges(4,6) * t381;
t156 = Icges(4,4) * t252 + Icges(4,2) * t251 + Icges(4,6) * t380;
t153 = -t370 * t211 - t273 * t538;
t152 = t210 * t370 + t273 * t539;
t151 = qJD(1) * t240 + t369 * t521;
t150 = t283 * t507 + t371 * t521 + t311;
t149 = t399 + t211 + t511;
t148 = t358 + t384 + t441 + t514;
t147 = -t370 * t200 - t262 * t538;
t145 = -t267 * t370 + (-t268 * t352 + t547) * t368;
t142 = t145 * t504;
t140 = -t360 * t538 + t200 + t511 + t519;
t139 = t369 * t383 + t358 + t438 + t545;
t136 = t452 * t369;
t135 = t410 * t368;
t132 = -t200 * t539 + t179;
t131 = t369 * t227 + t228 * t371 + t518;
t130 = t337 + (t502 * t561 - t500) * t369 + (t371 * t385 - t357) * qJD(1) + t445;
t129 = -pkin(2) * t473 + qJD(1) * t378 + t331 + t483 + t512;
t126 = rSges(5,3) * t381 + t442;
t125 = -rSges(5,3) * t479 + t486;
t105 = -t371 * t496 + t373 * t369 + ((t319 - t568) * t369 + t389 * t371) * qJD(1) + t480;
t102 = t306 * t224 + t307 * t226 + t490;
t101 = t306 * t223 + t307 * t225 + t492;
t100 = -t224 * t396 + t226 * t305 + t491;
t99 = -t223 * t396 + t225 * t305 + t493;
t96 = qJD(1) * t167 + t369 * t485;
t95 = t371 * t485 + t477 + t523;
t84 = (-rSges(5,3) * t502 - t500) * t369 + ((-pkin(6) - t568) * t369 + t398 * t371) * qJD(1) - t442 + t480;
t83 = (-t349 * t368 - t540) * t501 + qJD(1) * t384 + t486 + t512 + t515;
t82 = -t368 * t463 - t370 * t530;
t81 = t164 * t370 + t237 * t539 + t146;
t76 = -t409 + t453;
t75 = (qJD(1) * t383 + t496) * t371 + (t458 - t500 + (-pkin(6) - t319) * qJD(1) + (t370 * t560 + t546) * qJD(2)) * t369 - t439;
t74 = t373 * t371 + (t464 - t563) * t507 + t481 + t487 + t512;
t73 = t368 * t390 + t179;
t72 = qJD(1) * t137 + t369 * t454;
t71 = t371 * t454 + t507 * t525 + t523;
t70 = (t273 * t503 + t126) * t370 + (-qJD(2) * t210 + t369 * t215 + t273 * t505) * t368;
t69 = (-t273 * t501 - t125) * t370 + (qJD(2) * t211 - t215 * t371 + t477) * t368;
t68 = (-t475 + (-qJD(4) * t269 - t213) * t368) * t352 + t375;
t67 = -t199 * t504 + t455;
t66 = -t187 * t538 + (-t262 * t501 - t113) * t370 + t529;
t64 = t369 * (rSges(4,3) * t472 - t445) + t371 * t483 + (t227 * t371 + t369 * t527) * qJD(1) + t484;
t62 = t453 - t588;
t46 = t410 * t502 + (qJD(1) * t409 - t125 * t369 + t126 * t371) * t368;
t45 = -t134 * t370 + t368 * t432;
t44 = -t133 * t370 + t368 * t433;
t43 = -t200 * t472 + (-t113 * t369 + (-t369 * t199 - t200 * t371) * qJD(1)) * t368 + t533;
t33 = (t237 * t503 + t105) * t370 + (-qJD(2) * t531 + t369 * t201 + t237 * t505) * t368 + t455;
t32 = (-qJD(2) * t463 - t532) * t370 + (qJD(2) * t165 + t237 * t507 + t371 * t528) * t368 + t529;
t31 = t119 * t539 + t284 * t121 + t285 * t123 + t191 * t207 + t192 * t209 + t205 * t381;
t30 = t120 * t539 + t284 * t122 + t285 * t124 + t191 * t206 + t192 * t208 + t204 * t381;
t29 = t119 * t538 + t286 * t121 + t287 * t123 + t189 * t207 + t190 * t209 + t205 * t380;
t28 = t120 * t538 + t286 * t122 + t287 * t124 + t189 * t206 + t190 * t208 + t204 * t380;
t27 = t125 * t371 + t369 * t126 + (t549 + (-t211 + t526) * t369) * qJD(1) + t397;
t18 = t390 * t502 + (qJD(1) * t588 + t105 * t371 - t532 * t369) * t368 + t533;
t17 = t532 * t371 + (t105 + t114) * t369 + (t531 * t371 + (t526 - t530) * t369) * qJD(1) + t397;
t16 = qJD(1) * t433 - t30 * t371 + t31 * t369;
t15 = qJD(1) * t432 - t28 * t371 + t29 * t369;
t8 = (qJD(2) * t433 - t59) * t370 + (-qJD(1) * t60 + qJD(2) * t133 + t30 * t369 + t31 * t371) * t368;
t7 = (qJD(2) * t432 - t58) * t370 + (-t61 * qJD(1) + qJD(2) * t134 + t28 * t369 + t29 * t371) * t368;
t1 = [t376 + t375 - t352 * t475 - t269 * t470 + (t202 * t258 + t203 * t257) * t587 + (t129 * t176 + t130 * t175) * t586 + (t148 * t84 + t149 * t83) * t585 + (t139 * t75 + t140 * t74) * t584 + (-t261 * t544 - t476) * t347 + (-Icges(4,3) * t370 - t422 + t428) * t504 + (-t347 * t182 - t352 * t213 - t365 * t265 + t366 * t266 + t417 * t504) * t368 + (-Icges(4,3) * t368 - t365 * t281 + t366 * t282 - t370 * t417 + t423 + t427) * t502; (-t25 / 0.2e1 - t253 * t281 / 0.2e1 - t254 * t282 / 0.2e1 + t396 * t265 / 0.2e1 - t305 * t266 / 0.2e1 - t51 / 0.2e1 + t314 * t571 - t495) * t371 + (t251 * t580 + t252 * t579 + t265 * t578 + t266 * t577 + t26 / 0.2e1 + t50 / 0.2e1 + t314 * t574 + t494) * t369 + m(3) * ((-t202 * t369 - t203 * t371) * t329 + (-t257 * t371 - t258 * t369) * t317) + m(4) * (t129 * t239 + t130 * t240 + t150 * t175 + t151 * t176) + m(5) * (t148 * t95 + t149 * t96 + t166 * t83 + t167 * t84) + m(6) * (t136 * t74 + t137 * t75 + t139 * t71 + t140 * t72) + ((Icges(4,5) * t254 / 0.2e1 + Icges(4,6) * t253 / 0.2e1 + Icges(4,3) * t381 / 0.2e1 + t291 * t598 + t387 * t574) * t371 + (-Icges(4,5) * t252 / 0.2e1 - Icges(4,6) * t251 / 0.2e1 - Icges(4,3) * t380 / 0.2e1 + t290 * t598 + t387 * t572) * t369) * t370 + ((-qJD(1) * t292 - t156 * t365 + t158 * t366 - t371 * t388) * t574 + (qJD(1) * t293 - t157 * t365 + t159 * t366 - t369 * t388) * t572) * t368 + ((t221 * t368 - t223 * t543 + t225 * t541) * t572 + t392 / 0.2e1 + (t222 * t368 - t224 * t543 + t226 * t541) * t574 - t391 / 0.2e1) * qJD(2) + ((-t258 * t570 + t281 * t578 + t282 * t577 + t128 / 0.2e1 + t94 / 0.2e1 + (-t222 / 0.2e1 + t291 / 0.2e1) * t370 + (t224 * t576 + t226 * t575 + t293 / 0.2e1) * t368 + t488) * t371 + (t257 * t570 + t127 / 0.2e1 - t396 * t580 + t305 * t579 + t93 / 0.2e1 + (t290 / 0.2e1 - t221 / 0.2e1) * t370 + (t292 / 0.2e1 + t223 * t576 + t225 * t575) * t368 + t489) * t369) * qJD(1); -t371 * t13 + t369 * t12 + (t136 * t72 + t137 * t71 + t62 * t17) * t584 + t369 * t15 + (t166 * t96 + t167 * t95 + t27 * t76) * t585 - t371 * t16 + (t131 * t64 + t150 * t240 + t151 * t239) * t586 + t369 * ((t306 * t156 + t307 * t158 + t251 * t224 + t252 * t226 + (t101 - t491) * qJD(1)) * t369 + (-t306 * t157 - t307 * t159 - t251 * t223 - t252 * t225 + (t102 + t493) * qJD(1)) * t371) + t369 * ((t369 * t231 + (t162 + t391) * qJD(1)) * t369 + (t163 * qJD(1) + (t290 * t502 + t292 * t504) * t371 + (-t232 + (-t291 * t370 - t293 * t368) * qJD(2) + (t289 - t406) * qJD(1)) * t369) * t371) - t371 * ((t371 * t232 + (t161 + t392) * qJD(1)) * t371 + (t160 * qJD(1) + (-t291 * t502 - t293 * t504 + t508) * t369 + (-t231 + (t290 * t370 + t292 * t368) * qJD(2) - t405 * qJD(1)) * t371) * t369) + ((t369 * t295 + t296 * t371) * ((qJD(1) * t295 - t371 * t393 + t513) * t371 + (-t369 * t393 + (-t296 + t593) * qJD(1)) * t369) + t509 * t329 * t317) * t587 - t371 * ((t396 * t157 - t305 * t159 - t253 * t223 - t254 * t225 + (t100 - t492) * qJD(1)) * t371 + (-t396 * t156 + t305 * t158 + t253 * t224 + t254 * t226 + (t99 + t490) * qJD(1)) * t369) + (t56 + t60 + (-t160 - t99) * t371 + (t100 + t161) * t369) * t507 + (t57 + t61 + (-t101 - t162) * t371 + (t102 + t163) * t369) * t505; 0.2e1 * ((t139 * t371 + t140 * t369) * t581 + (t148 * t371 + t149 * t369) * t582 + (t175 * t371 + t176 * t369) * t583) * t502 + 0.2e1 * ((-t139 * t507 + t140 * t505 + t369 * t74 + t371 * t75) * t581 + (-t148 * t507 + t149 * t505 + t369 * t83 + t371 * t84) * t582 + (t129 * t369 + t130 * t371 - t175 * t507 + t176 * t505) * t583) * t368; 0.2e1 * ((t136 * t503 + t137 * t501 - t17) * t581 + (t166 * t503 + t167 * t501 - t27) * t582 + (t239 * t503 + t240 * t501 - t64) * t583) * t370 + 0.2e1 * ((qJD(2) * t62 + t136 * t505 - t137 * t507 + t369 * t72 + t371 * t71) * t581 + (qJD(2) * t76 + t166 * t505 - t167 * t507 + t369 * t96 + t371 * t95) * t582 + (qJD(2) * t131 + t150 * t371 + t151 * t369 + t239 * t505 - t240 * t507) * t583) * t368; 0.4e1 * (t583 + t582 + t581) * (-0.1e1 + t509) * t368 * t502; t142 + t372 + (t494 * t371 + t495 * t369 + (-t369 * t488 + t371 * t489) * qJD(1)) * t368 + (-t65 - t68 + (t369 * t489 + t371 * t488) * qJD(2)) * t370 + m(5) * (t148 * t70 + t149 * t69 + t152 * t84 + t153 * t83) + m(6) * (t139 * t33 + t140 * t32 + t74 * t82 + t75 * t81); t377 + (qJD(2) * (t98 * t369 - t371 * t97) / 0.2e1 + t15 * t571 + t16 * t574 + (t60 * t571 - t369 * t61 / 0.2e1) * qJD(1)) * t368 + m(5) * (t135 * t27 + t152 * t95 + t153 * t96 + t166 * t69 + t167 * t70 + t46 * t76) + m(6) * (t136 * t32 + t137 * t33 + t17 * t73 + t18 * t62 + t71 * t81 + t72 * t82) + (t60 * t465 + (qJD(1) * t97 + t35) * t573 + t7 / 0.2e1 + t44 * t567) * t369 + (t61 * t465 + (qJD(1) * t98 - t34) * t573 - t8 / 0.2e1 + t45 * t567) * t371; 0.2e1 * ((t152 * t501 + t153 * t503 - t46) * t582 + (t501 * t81 + t503 * t82 - t18) * t581) * t370 + 0.2e1 * ((qJD(2) * t135 - t152 * t507 + t153 * t505 + t369 * t69 + t371 * t70) * t582 + (qJD(2) * t73 + t32 * t369 + t33 * t371 + t505 * t82 - t507 * t81) * t581) * t368; (t18 * t73 + t32 * t82 + t33 * t81) * t584 + (t135 * t46 + t152 * t70 + t153 * t69) * t585 + (t68 * t370 - t142 - t9 + (t369 * t44 - t370 * t429 + t371 * t45) * qJD(2)) * t370 + (t371 * t7 + t369 * t8 - t370 * (t34 * t369 + t35 * t371) + (-t145 * t370 + t368 * t429) * qJD(2) + ((-t370 * t97 + t44) * t371 + (t370 * t98 - t42 - t45) * t369) * qJD(1)) * t368 + t447; -t65 * t370 + t372 + m(6) * (t139 * t67 + t140 * t66 + t146 * t75 + t147 * t74); t377 + m(6) * (t132 * t17 + t136 * t66 + t137 * t67 + t146 * t71 + t147 * t72 + t43 * t62); m(6) * ((-t43 + (t146 * t371 + t147 * t369) * qJD(2)) * t370 + (qJD(2) * t132 + t369 * t66 + t371 * t67 + (-t146 * t369 + t147 * t371) * qJD(1)) * t368); m(6) * (t132 * t18 + t146 * t33 + t147 * t32 + t43 * t73 + t66 * t82 + t67 * t81) + t374; (t132 * t43 + t146 * t67 + t147 * t66) * t584 + t374;];
%% Postprocessing: Reshape Output
% From vec2symmat_5_matlab.m
res = [t1(1), t1(2), t1(4), t1(7), t1(11); t1(2), t1(3), t1(5), t1(8), t1(12); t1(4), t1(5), t1(6), t1(9), t1(13); t1(7), t1(8), t1(9), t1(10), t1(14); t1(11), t1(12), t1(13), t1(14), t1(15);];
Mq = res;
