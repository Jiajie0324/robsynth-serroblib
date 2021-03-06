% Calculate time derivative of joint inertia matrix for
% S5RRRPP6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3,theta4]';
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
% Datum: 2019-12-31 21:03
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S5RRRPP6_inertiaDJ_slag_vp11(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(8,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRPP6_inertiaDJ_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRPP6_inertiaDJ_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RRRPP6_inertiaDJ_slag_vp1: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRRPP6_inertiaDJ_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RRRPP6_inertiaDJ_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RRRPP6_inertiaDJ_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 21:00:00
% EndTime: 2019-12-31 21:00:35
% DurationCPUTime: 18.22s
% Computational Cost: add. (25012->990), mult. (43053->1371), div. (0->0), fcn. (41152->8), ass. (0->471)
t360 = sin(qJ(2));
t363 = cos(qJ(2));
t354 = qJ(3) + pkin(8);
t348 = sin(t354);
t349 = cos(t354);
t411 = Icges(5,5) * t349 - Icges(5,6) * t348;
t263 = -Icges(5,3) * t363 + t360 * t411;
t414 = Icges(6,4) * t349 + Icges(6,6) * t348;
t264 = -Icges(6,2) * t363 + t360 * t414;
t359 = sin(qJ(3));
t362 = cos(qJ(3));
t412 = Icges(4,5) * t362 - Icges(4,6) * t359;
t279 = -Icges(4,3) * t363 + t360 * t412;
t607 = t279 + t263 + t264;
t364 = cos(qJ(1));
t361 = sin(qJ(1));
t533 = t361 * t363;
t275 = t348 * t533 + t349 * t364;
t539 = t348 * t364;
t276 = t349 * t533 - t539;
t602 = rSges(6,3) + qJ(5);
t603 = rSges(6,1) + pkin(4);
t606 = t602 * t275 + t603 * t276;
t503 = qJD(2) * t361;
t466 = t360 * t503;
t499 = qJD(3) * t361;
t505 = qJD(1) * t364;
t507 = qJD(1) * t361;
t174 = -t348 * t466 - qJD(3) * t539 - t349 * t507 + (t348 * t505 + t349 * t499) * t363;
t497 = qJD(3) * t363;
t451 = qJD(1) - t497;
t397 = t361 * t451;
t506 = qJD(1) * t363;
t450 = -qJD(3) + t506;
t394 = t450 * t364;
t601 = t394 - t466;
t175 = t348 * t397 + t601 * t349;
t605 = -t275 * qJD(5) - t602 * t174 - t603 * t175;
t604 = -qJD(1) * t360 / 0.2e1;
t502 = qJD(2) * t363;
t465 = t361 * t502;
t377 = t360 * t505 + t465;
t532 = t363 * t364;
t277 = t348 * t532 - t361 * t349;
t278 = t361 * t348 + t349 * t532;
t535 = t360 * t364;
t184 = Icges(6,4) * t278 + Icges(6,2) * t535 + Icges(6,6) * t277;
t180 = Icges(6,5) * t278 + Icges(6,6) * t535 + Icges(6,3) * t277;
t188 = Icges(6,1) * t278 + Icges(6,4) * t535 + Icges(6,5) * t277;
t408 = t180 * t348 + t188 * t349;
t87 = -t184 * t363 + t360 * t408;
t182 = Icges(5,5) * t278 - Icges(5,6) * t277 + Icges(5,3) * t535;
t186 = Icges(5,4) * t278 - Icges(5,2) * t277 + Icges(5,6) * t535;
t190 = Icges(5,1) * t278 - Icges(5,4) * t277 + Icges(5,5) * t535;
t406 = -t186 * t348 + t190 * t349;
t89 = -t182 * t363 + t360 * t406;
t299 = -t359 * t532 + t361 * t362;
t534 = t361 * t359;
t300 = t362 * t532 + t534;
t222 = Icges(4,5) * t300 + Icges(4,6) * t299 + Icges(4,3) * t535;
t224 = Icges(4,4) * t300 + Icges(4,2) * t299 + Icges(4,6) * t535;
t226 = Icges(4,1) * t300 + Icges(4,4) * t299 + Icges(4,5) * t535;
t404 = -t224 * t359 + t226 * t362;
t99 = -t222 * t363 + t360 * t404;
t491 = t87 + t89 + t99;
t536 = t360 * t361;
t183 = Icges(6,4) * t276 + Icges(6,2) * t536 + Icges(6,6) * t275;
t179 = Icges(6,5) * t276 + Icges(6,6) * t536 + Icges(6,3) * t275;
t187 = Icges(6,1) * t276 + Icges(6,4) * t536 + Icges(6,5) * t275;
t409 = t179 * t348 + t187 * t349;
t86 = -t183 * t363 + t360 * t409;
t181 = Icges(5,5) * t276 - Icges(5,6) * t275 + Icges(5,3) * t536;
t185 = Icges(5,4) * t276 - Icges(5,2) * t275 + Icges(5,6) * t536;
t189 = Icges(5,1) * t276 - Icges(5,4) * t275 + Icges(5,5) * t536;
t407 = -t185 * t348 + t189 * t349;
t88 = -t181 * t363 + t360 * t407;
t297 = -t359 * t533 - t362 * t364;
t537 = t359 * t364;
t298 = t362 * t533 - t537;
t221 = Icges(4,5) * t298 + Icges(4,6) * t297 + Icges(4,3) * t536;
t223 = Icges(4,4) * t298 + Icges(4,2) * t297 + Icges(4,6) * t536;
t225 = Icges(4,1) * t298 + Icges(4,4) * t297 + Icges(4,5) * t536;
t405 = -t223 * t359 + t225 * t362;
t98 = -t221 * t363 + t360 * t405;
t492 = t86 + t88 + t98;
t600 = t361 * t492 + t364 * t491;
t554 = Icges(6,5) * t349;
t410 = Icges(6,3) * t348 + t554;
t262 = -Icges(6,6) * t363 + t360 * t410;
t557 = Icges(5,4) * t349;
t415 = -Icges(5,2) * t348 + t557;
t265 = -Icges(5,6) * t363 + t360 * t415;
t555 = Icges(6,5) * t348;
t419 = Icges(6,1) * t349 + t555;
t266 = -Icges(6,4) * t363 + t360 * t419;
t558 = Icges(5,4) * t348;
t420 = Icges(5,1) * t349 - t558;
t267 = -Icges(5,5) * t363 + t360 * t420;
t559 = Icges(4,4) * t362;
t416 = -Icges(4,2) * t359 + t559;
t282 = -Icges(4,6) * t363 + t360 * t416;
t560 = Icges(4,4) * t359;
t421 = Icges(4,1) * t362 - t560;
t285 = -Icges(4,5) * t363 + t360 * t421;
t545 = t285 * t362;
t599 = t607 * t363 + (t282 * t359 - t545 + (-t266 - t267) * t349 + (-t262 + t265) * t348) * t360;
t562 = Icges(3,4) * t360;
t423 = Icges(3,1) * t363 - t562;
t287 = Icges(3,5) * t361 + t364 * t423;
t541 = t287 * t363;
t561 = Icges(3,4) * t363;
t418 = -Icges(3,2) * t360 + t561;
t284 = Icges(3,6) * t361 + t364 * t418;
t547 = t284 * t360;
t398 = -t541 + t547;
t598 = t361 * t398;
t286 = -Icges(3,5) * t364 + t361 * t423;
t543 = t286 * t363;
t283 = -Icges(3,6) * t364 + t361 * t418;
t549 = t283 * t360;
t399 = -t543 + t549;
t596 = t364 * t399;
t460 = t349 * t497;
t501 = qJD(2) * t364;
t463 = t360 * t501;
t172 = qJD(1) * t275 - t364 * t460 + (t463 - t499) * t348;
t396 = t364 * t451;
t587 = t361 * t450 + t463;
t173 = t348 * t396 - t349 * t587;
t464 = t363 * t501;
t594 = rSges(6,2) * t464 + t277 * qJD(5) - t602 * t172 + t603 * t173;
t593 = -rSges(3,2) * t535 + t361 * rSges(3,3);
t504 = qJD(2) * t360;
t103 = Icges(6,5) * t175 + Icges(6,6) * t377 + Icges(6,3) * t174;
t107 = Icges(6,4) * t175 + Icges(6,2) * t377 + Icges(6,6) * t174;
t111 = Icges(6,1) * t175 + Icges(6,4) * t377 + Icges(6,5) * t174;
t27 = (qJD(2) * t409 - t107) * t363 + (qJD(2) * t183 + t103 * t348 + t111 * t349 + (t179 * t349 - t187 * t348) * qJD(3)) * t360;
t105 = Icges(5,5) * t175 - Icges(5,6) * t174 + Icges(5,3) * t377;
t109 = Icges(5,4) * t175 - Icges(5,2) * t174 + Icges(5,6) * t377;
t113 = Icges(5,1) * t175 - Icges(5,4) * t174 + Icges(5,5) * t377;
t29 = (qJD(2) * t407 - t105) * t363 + (qJD(2) * t181 - t109 * t348 + t113 * t349 + (-t185 * t349 - t189 * t348) * qJD(3)) * t360;
t213 = -t601 * t359 + t362 * t397;
t395 = t451 * t359;
t214 = t362 * t394 + (-t362 * t504 + t395) * t361;
t132 = Icges(4,5) * t214 + Icges(4,6) * t213 + Icges(4,3) * t377;
t134 = Icges(4,4) * t214 + Icges(4,2) * t213 + Icges(4,6) * t377;
t136 = Icges(4,1) * t214 + Icges(4,4) * t213 + Icges(4,5) * t377;
t35 = (qJD(2) * t405 - t132) * t363 + (qJD(2) * t221 - t134 * t359 + t136 * t362 + (-t223 * t362 - t225 * t359) * qJD(3)) * t360;
t592 = -t27 - t29 - t35;
t472 = t360 * t507;
t376 = t464 - t472;
t102 = Icges(6,5) * t173 + Icges(6,6) * t376 - Icges(6,3) * t172;
t106 = Icges(6,4) * t173 + Icges(6,2) * t376 - Icges(6,6) * t172;
t110 = Icges(6,1) * t173 + Icges(6,4) * t376 - Icges(6,5) * t172;
t28 = (qJD(2) * t408 - t106) * t363 + (qJD(2) * t184 + t102 * t348 + t110 * t349 + (t180 * t349 - t188 * t348) * qJD(3)) * t360;
t104 = Icges(5,5) * t173 + Icges(5,6) * t172 + Icges(5,3) * t376;
t108 = Icges(5,4) * t173 + Icges(5,2) * t172 + Icges(5,6) * t376;
t112 = Icges(5,1) * t173 + Icges(5,4) * t172 + Icges(5,5) * t376;
t30 = (qJD(2) * t406 - t104) * t363 + (qJD(2) * t182 - t108 * t348 + t112 * t349 + (-t186 * t349 - t190 * t348) * qJD(3)) * t360;
t211 = t587 * t359 + t362 * t396;
t212 = -t362 * t587 + t364 * t395;
t131 = Icges(4,5) * t212 + Icges(4,6) * t211 + Icges(4,3) * t376;
t133 = Icges(4,4) * t212 + Icges(4,2) * t211 + Icges(4,6) * t376;
t135 = Icges(4,1) * t212 + Icges(4,4) * t211 + Icges(4,5) * t376;
t36 = (qJD(2) * t404 - t131) * t363 + (qJD(2) * t222 - t133 * t359 + t135 * t362 + (-t224 * t362 - t226 * t359) * qJD(3)) * t360;
t591 = t28 + t30 + t36;
t122 = t262 * t275 + t264 * t536 + t266 * t276;
t123 = t263 * t536 - t265 * t275 + t267 * t276;
t141 = t279 * t536 + t282 * t297 + t285 * t298;
t90 = t221 * t536 + t223 * t297 + t225 * t298;
t91 = t222 * t536 + t224 * t297 + t226 * t298;
t426 = t361 * t90 + t364 * t91;
t78 = t181 * t536 - t185 * t275 + t189 * t276;
t79 = t182 * t536 - t186 * t275 + t190 * t276;
t429 = t361 * t78 + t364 * t79;
t76 = t179 * t275 + t183 * t536 + t187 * t276;
t77 = t180 * t275 + t184 * t536 + t188 * t276;
t430 = t361 * t76 + t364 * t77;
t590 = (-t122 - t123 - t141) * t363 + (t426 + t429 + t430) * t360;
t124 = t277 * t262 + t264 * t535 + t278 * t266;
t125 = t263 * t535 - t277 * t265 + t278 * t267;
t142 = t279 * t535 + t299 * t282 + t300 * t285;
t92 = t221 * t535 + t299 * t223 + t300 * t225;
t93 = t222 * t535 + t299 * t224 + t300 * t226;
t425 = t361 * t92 + t364 * t93;
t82 = t181 * t535 - t277 * t185 + t278 * t189;
t83 = t182 * t535 - t277 * t186 + t278 * t190;
t427 = t361 * t82 + t364 * t83;
t80 = t277 * t179 + t183 * t535 + t278 * t187;
t81 = t277 * t180 + t184 * t535 + t278 * t188;
t428 = t361 * t80 + t364 * t81;
t589 = (-t124 - t125 - t142) * t363 + (t425 + t427 + t428) * t360;
t500 = qJD(3) * t360;
t195 = (Icges(6,3) * t349 - t555) * t500 + (Icges(6,6) * t360 + t363 * t410) * qJD(2);
t196 = (-Icges(5,5) * t348 - Icges(5,6) * t349) * t500 + (Icges(5,3) * t360 + t363 * t411) * qJD(2);
t197 = (-Icges(6,4) * t348 + Icges(6,6) * t349) * t500 + (Icges(6,2) * t360 + t363 * t414) * qJD(2);
t199 = (-Icges(6,1) * t348 + t554) * t500 + (Icges(6,4) * t360 + t363 * t419) * qJD(2);
t200 = (-Icges(5,1) * t348 - t557) * t500 + (Icges(5,5) * t360 + t363 * t420) * qJD(2);
t231 = (-Icges(4,5) * t359 - Icges(4,6) * t362) * t500 + (Icges(4,3) * t360 + t363 * t412) * qJD(2);
t237 = (-Icges(4,1) * t359 - t559) * t500 + (Icges(4,5) * t360 + t363 * t421) * qJD(2);
t461 = t349 * t500;
t462 = t348 * t500;
t468 = t349 * t502;
t469 = t348 * t502;
t498 = qJD(3) * t362;
t540 = t348 * t360;
t588 = t502 * t545 - t265 * t461 + t267 * t468 + t195 * t540 + (-t462 + t468) * t266 + (t461 + t469) * t262 + t607 * t504 + (-t231 - t196 - t197) * t363 + (t237 * t362 - t282 * t498 + (t200 + t199) * t349) * t360;
t413 = Icges(3,5) * t363 - Icges(3,6) * t360;
t280 = -Icges(3,3) * t364 + t361 * t413;
t586 = t363 * t491 - t589;
t585 = 2 * m(3);
t584 = 2 * m(4);
t583 = 2 * m(5);
t582 = 2 * m(6);
t581 = m(5) / 0.2e1;
t580 = m(6) / 0.2e1;
t579 = t361 / 0.2e1;
t578 = -t363 / 0.2e1;
t577 = t364 / 0.2e1;
t575 = -rSges(4,3) - pkin(7);
t323 = rSges(3,1) * t360 + rSges(3,2) * t363;
t574 = m(3) * t323;
t573 = pkin(2) * t363;
t572 = pkin(3) * t359;
t571 = pkin(7) * t360;
t351 = t361 * pkin(6);
t345 = pkin(3) * t362 + pkin(2);
t568 = pkin(2) - t345;
t358 = -qJ(4) - pkin(7);
t567 = pkin(7) + t358;
t566 = rSges(6,2) * t360;
t565 = rSges(3,3) * t364;
t564 = rSges(5,3) * t360;
t433 = -rSges(5,1) * t276 + rSges(5,2) * t275;
t192 = rSges(5,3) * t536 - t433;
t551 = t192 * t364;
t436 = -rSges(4,1) * t298 - rSges(4,2) * t297;
t229 = rSges(4,3) * t536 - t436;
t550 = t229 * t364;
t548 = t283 * t363;
t546 = t284 * t363;
t544 = t286 * t360;
t542 = t287 * t360;
t531 = -rSges(6,2) * t472 + t594;
t530 = rSges(6,2) * t377 - t605;
t485 = t173 * rSges(5,1) + t172 * rSges(5,2) + rSges(5,3) * t464;
t115 = -rSges(5,3) * t472 + t485;
t333 = pkin(7) * t464;
t342 = pkin(3) * t537;
t488 = pkin(3) * t498;
t496 = qJD(4) * t360;
t445 = qJD(1) * t342 + t358 * t472 + t361 * t488 + t364 * t496;
t489 = qJD(3) * t572;
t129 = -t333 + (pkin(7) * t507 + t501 * t568) * t360 + ((-qJD(2) * t358 - t489) * t364 + t568 * t507) * t363 + t445;
t529 = -t115 - t129;
t331 = pkin(2) * t466;
t341 = pkin(3) * t534;
t458 = t568 * t363;
t388 = -t458 - t571;
t452 = t363 * t489;
t424 = t345 * t466 + t377 * t358 + t361 * t452 + t364 * t488;
t130 = t331 + (-pkin(7) * t502 + t496) * t361 + (t364 * t388 + t341) * qJD(1) - t424;
t512 = -t358 * t536 - t342;
t227 = t361 * t388 + t512;
t528 = t130 * t535 + t227 * t464;
t431 = rSges(6,1) * t349 + rSges(6,3) * t348;
t527 = (pkin(4) * t502 + qJ(5) * t500) * t349 + (qJ(5) * t502 + (-pkin(4) * qJD(3) + qJD(5)) * t360) * t348 + (-rSges(6,1) * t348 + rSges(6,3) * t349) * t500 + (t363 * t431 + t566) * qJD(2);
t526 = rSges(6,2) * t536 + t606;
t525 = -t192 - t227;
t524 = rSges(6,2) * t535 + t602 * t277 + t603 * t278;
t194 = t278 * rSges(5,1) - t277 * rSges(5,2) + rSges(5,3) * t535;
t344 = pkin(2) * t532;
t302 = pkin(7) * t535 + t344;
t392 = t345 * t532 - t358 * t535 + t341;
t228 = t392 - t302;
t523 = -t194 - t228;
t432 = rSges(5,1) * t349 - rSges(5,2) * t348;
t202 = (-rSges(5,1) * t348 - rSges(5,2) * t349) * t500 + (t363 * t432 + t564) * qJD(2);
t459 = t359 * t500;
t220 = -pkin(3) * t459 - qJD(4) * t363 + (-t360 * t567 - t458) * qJD(2);
t522 = -t202 - t220;
t260 = -t360 * t568 + t363 * t567;
t521 = t228 * t504 + t260 * t472;
t520 = t363 * t227 + t260 * t536;
t230 = t300 * rSges(4,1) + t299 * rSges(4,2) + rSges(4,3) * t535;
t519 = -t230 - t302;
t435 = rSges(4,1) * t362 - rSges(4,2) * t359;
t240 = (-rSges(4,1) * t359 - rSges(4,2) * t362) * t500 + (rSges(4,3) * t360 + t363 * t435) * qJD(2);
t440 = t571 + t573;
t311 = t440 * qJD(2);
t518 = -t240 - t311;
t324 = pkin(2) * t360 - pkin(7) * t363;
t303 = t324 * t507;
t517 = t260 * t507 + t303;
t269 = -rSges(5,3) * t363 + t360 * t432;
t516 = -t260 - t269;
t515 = -rSges(6,2) * t363 + (pkin(4) * t349 + qJ(5) * t348 + t431) * t360;
t289 = -rSges(4,3) * t363 + t360 * t435;
t514 = -t289 - t324;
t301 = t440 * t361;
t513 = t361 * t301 + t364 * t302;
t511 = rSges(3,2) * t472 + rSges(3,3) * t505;
t510 = t364 * pkin(1) + t351;
t509 = t361 ^ 2 + t364 ^ 2;
t281 = Icges(3,3) * t361 + t364 * t413;
t508 = qJD(1) * t281;
t198 = (-Icges(5,2) * t349 - t558) * t500 + (Icges(5,6) * t360 + t363 * t415) * qJD(2);
t234 = (-Icges(4,2) * t362 - t560) * t500 + (Icges(4,6) * t360 + t363 * t416) * qJD(2);
t470 = t282 * t502;
t493 = (-t265 * t502 + (-qJD(3) * t267 - t198) * t360) * t348 + (-t470 + (-qJD(3) * t285 - t234) * t360) * t359 + t588;
t487 = -t129 - t531;
t486 = t599 * t504;
t483 = -t220 - t527;
t482 = -t227 - t526;
t481 = -t228 - t524;
t480 = -t311 + t522;
t479 = t212 * rSges(4,1) + t211 * rSges(4,2) + rSges(4,3) * t464;
t378 = -t361 * t506 - t463;
t478 = t361 * (pkin(7) * t377 + qJD(1) * t344 - t331) + t364 * (pkin(2) * t378 - pkin(7) * t472 + t333) + t301 * t505;
t477 = -t260 - t515;
t476 = -t324 + t516;
t352 = t364 * pkin(6);
t475 = t352 - t512;
t474 = t269 * t507;
t473 = t289 * t507;
t467 = t360 * t502;
t457 = -t345 * t363 - pkin(1);
t456 = t526 * t364;
t455 = t516 * t364;
t454 = t515 * t361;
t244 = t514 * t364;
t453 = qJD(1) * t515;
t449 = t363 * t130 + t220 * t536 + t377 * t260;
t448 = -t311 + t483;
t447 = t361 * t227 + t364 * t228 + t513;
t446 = -t324 + t477;
t51 = t77 * t361 - t364 * t76;
t52 = t79 * t361 - t364 * t78;
t59 = t91 * t361 - t364 * t90;
t444 = t59 / 0.2e1 + t51 / 0.2e1 + t52 / 0.2e1;
t53 = t81 * t361 - t364 * t80;
t54 = t83 * t361 - t364 * t82;
t60 = t93 * t361 - t364 * t92;
t443 = t60 / 0.2e1 + t53 / 0.2e1 + t54 / 0.2e1;
t442 = t477 * t364;
t161 = t476 * t364;
t441 = (-pkin(6) - t572) * t361;
t439 = t361 * t453;
t438 = rSges(3,1) * t363 - rSges(3,2) * t360;
t437 = t214 * rSges(4,1) + t213 * rSges(4,2);
t434 = t175 * rSges(5,1) - t174 * rSges(5,2);
t417 = Icges(3,2) * t363 + t562;
t403 = -t230 * t361 + t550;
t402 = -t361 * t229 - t230 * t364;
t291 = rSges(3,1) * t532 + t593;
t149 = t446 * t364;
t393 = -pkin(1) - t438;
t391 = t457 - t566;
t390 = t457 - t564;
t389 = t364 * t129 + t361 * t130 + t227 * t505 + t478;
t387 = qJD(2) * t323;
t386 = t361 * t523 + t551;
t385 = t360 * t575 - pkin(1) - t573;
t383 = qJD(2) * t417;
t382 = qJD(2) * (-Icges(3,5) * t360 - Icges(3,6) * t363);
t381 = t391 * t361;
t380 = t390 * t361;
t379 = -t363 * t492 + t590;
t375 = t392 + t510;
t374 = t385 * t361;
t49 = t174 * t262 + t175 * t266 + t275 * t195 + t197 * t536 + t276 * t199 + t264 * t377;
t50 = -t174 * t265 + t175 * t267 + t196 * t536 - t275 * t198 + t276 * t200 + t263 * t377;
t58 = t213 * t282 + t214 * t285 + t231 * t536 + t297 * t234 + t298 * t237 + t279 * t377;
t373 = t35 / 0.2e1 + t27 / 0.2e1 + t29 / 0.2e1 + t49 / 0.2e1 + t50 / 0.2e1 + t58 / 0.2e1;
t47 = -t172 * t262 + t173 * t266 + t277 * t195 + t197 * t535 + t278 * t199 + t264 * t376;
t48 = t172 * t265 + t173 * t267 + t196 * t535 - t277 * t198 + t278 * t200 + t263 * t376;
t57 = t211 * t282 + t212 * t285 + t231 * t535 + t299 * t234 + t300 * t237 + t279 * t376;
t372 = t36 / 0.2e1 + t28 / 0.2e1 + t30 / 0.2e1 + t47 / 0.2e1 + t48 / 0.2e1 + t57 / 0.2e1;
t371 = t89 / 0.2e1 + t124 / 0.2e1 + t125 / 0.2e1 + t142 / 0.2e1 + t99 / 0.2e1 + t87 / 0.2e1;
t370 = t98 / 0.2e1 + t86 / 0.2e1 + t88 / 0.2e1 + t122 / 0.2e1 + t123 / 0.2e1 + t141 / 0.2e1;
t369 = t361 * t481 + t456;
t347 = pkin(6) * t505;
t365 = t347 + (-t452 + (-t345 * t360 - t358 * t363) * qJD(2)) * t364 + t445;
t355 = t360 ^ 2;
t308 = t438 * qJD(2);
t305 = t413 * qJD(2);
t290 = t361 * t438 - t565;
t258 = t291 + t510;
t257 = t361 * t393 + t352 + t565;
t243 = t514 * t361;
t233 = t361 * t382 + t508;
t232 = -qJD(1) * t280 + t364 * t382;
t205 = t227 * t535;
t178 = t323 * t503 + ((-rSges(3,3) - pkin(6)) * t361 + t393 * t364) * qJD(1);
t177 = rSges(3,1) * t378 - rSges(3,2) * t464 - pkin(1) * t507 + t347 + t511;
t163 = t510 - t519;
t162 = t352 + t374 + t436;
t160 = t476 * t361;
t159 = -t363 * t230 - t289 * t535;
t158 = t229 * t363 + t289 * t536;
t157 = t361 * t281 - t398 * t364;
t156 = t361 * t280 - t596;
t155 = -t281 * t364 - t598;
t154 = -t280 * t364 - t361 * t399;
t151 = t375 + t194;
t150 = t380 + t433 + t475;
t148 = t446 * t361;
t145 = t403 * t360;
t144 = qJD(1) * t244 + t361 * t518;
t143 = t364 * t518 + t303 + t473;
t138 = rSges(4,3) * t377 + t437;
t137 = -rSges(4,3) * t472 + t479;
t120 = -t402 + t513;
t119 = t375 + t524;
t118 = t381 + t475 - t606;
t117 = rSges(5,3) * t377 + t434;
t97 = t331 + t575 * t465 + (t364 * t385 - t351) * qJD(1) - t437;
t96 = -pkin(2) * t463 + qJD(1) * t374 + t333 + t347 + t479;
t95 = t360 * t455 + t363 * t523;
t94 = t192 * t363 + t269 * t536 + t520;
t85 = qJD(1) * t161 + t361 * t480;
t84 = t364 * t480 + t474 + t517;
t75 = t360 * t386 + t205;
t74 = (-rSges(5,3) * t502 - t496) * t361 + (t364 * t390 + t441) * qJD(1) + t424 - t434;
t73 = qJD(1) * t380 + t365 + t485;
t72 = t360 * t442 + t363 * t481;
t71 = t360 * t454 + t363 * t526 + t520;
t70 = t361 * t192 + t194 * t364 + t447;
t69 = (t289 * t503 + t138) * t363 + (-qJD(2) * t229 + t361 * t240 + t289 * t505) * t360;
t68 = (-t289 * t501 - t137) * t363 + (qJD(2) * t230 - t240 * t364 + t473) * t360;
t67 = qJD(1) * t149 + t361 * t448;
t66 = t364 * t448 + t439 + t517;
t64 = t360 * t369 + t205;
t63 = t361 * t526 + t364 * t524 + t447;
t56 = (-rSges(6,2) * t502 - t496) * t361 + (t364 * t391 + t441) * qJD(1) + t424 + t605;
t55 = qJD(1) * t381 + t365 + t594;
t46 = t403 * t502 + (qJD(1) * t402 - t137 * t361 + t138 * t364) * t360;
t45 = t137 * t364 + t361 * t138 + (t361 * t519 + t550) * qJD(1) + t478;
t38 = (t269 * t503 + t117) * t363 + (qJD(2) * t525 + t361 * t202 + t269 * t505) * t360 + t449;
t37 = (qJD(2) * t455 + t529) * t363 + (qJD(2) * t194 + t364 * t522 + t474) * t360 + t521;
t34 = t131 * t536 + t297 * t133 + t298 * t135 + t213 * t224 + t214 * t226 + t222 * t377;
t33 = t132 * t536 + t297 * t134 + t298 * t136 + t213 * t223 + t214 * t225 + t221 * t377;
t32 = t131 * t535 + t299 * t133 + t300 * t135 + t211 * t224 + t212 * t226 + t222 * t376;
t31 = t132 * t535 + t299 * t134 + t300 * t136 + t211 * t223 + t212 * t225 + t221 * t376;
t26 = t104 * t536 - t275 * t108 + t276 * t112 - t174 * t186 + t175 * t190 + t182 * t377;
t25 = t105 * t536 - t275 * t109 + t276 * t113 - t174 * t185 + t175 * t189 + t181 * t377;
t24 = t275 * t102 + t106 * t536 + t276 * t110 + t174 * t180 + t175 * t188 + t184 * t377;
t23 = t275 * t103 + t107 * t536 + t276 * t111 + t174 * t179 + t175 * t187 + t183 * t377;
t22 = t104 * t535 - t277 * t108 + t278 * t112 + t172 * t186 + t173 * t190 + t182 * t376;
t21 = t105 * t535 - t277 * t109 + t278 * t113 + t172 * t185 + t173 * t189 + t181 * t376;
t20 = t277 * t102 + t106 * t535 + t278 * t110 - t172 * t180 + t173 * t188 + t184 * t376;
t19 = t277 * t103 + t107 * t535 + t278 * t111 - t172 * t179 + t173 * t187 + t183 * t376;
t18 = t115 * t364 + t361 * t117 + (t551 + (-t302 + t523) * t361) * qJD(1) + t389;
t17 = (qJD(2) * t454 + t530) * t363 + (qJD(2) * t482 + t361 * t527 + t364 * t453) * t360 + t449;
t16 = (qJD(2) * t442 + t487) * t363 + (qJD(2) * t524 + t364 * t483 + t439) * t360 + t521;
t15 = t386 * t502 + (t117 * t364 + t529 * t361 + (t361 * t525 + t364 * t523) * qJD(1)) * t360 + t528;
t14 = t531 * t364 + t530 * t361 + (t456 + (-t302 + t481) * t361) * qJD(1) + t389;
t13 = t369 * t502 + (t530 * t364 + t487 * t361 + (t361 * t482 + t364 * t481) * qJD(1)) * t360 + t528;
t12 = qJD(1) * t426 - t33 * t364 + t34 * t361;
t11 = qJD(1) * t425 - t31 * t364 + t32 * t361;
t10 = qJD(1) * t429 - t25 * t364 + t26 * t361;
t9 = qJD(1) * t430 - t23 * t364 + t24 * t361;
t8 = qJD(1) * t427 - t21 * t364 + t22 * t361;
t7 = qJD(1) * t428 - t19 * t364 + t20 * t361;
t6 = (qJD(2) * t426 - t58) * t363 + (-qJD(1) * t59 + qJD(2) * t141 + t33 * t361 + t34 * t364) * t360;
t5 = (qJD(2) * t425 - t57) * t363 + (-qJD(1) * t60 + qJD(2) * t142 + t31 * t361 + t32 * t364) * t360;
t4 = (qJD(2) * t429 - t50) * t363 + (-qJD(1) * t52 + qJD(2) * t123 + t25 * t361 + t26 * t364) * t360;
t3 = (qJD(2) * t430 - t49) * t363 + (-qJD(1) * t51 + qJD(2) * t122 + t23 * t361 + t24 * t364) * t360;
t2 = (qJD(2) * t427 - t48) * t363 + (-qJD(1) * t54 + qJD(2) * t125 + t21 * t361 + t22 * t364) * t360;
t1 = (qJD(2) * t428 - t47) * t363 + (-qJD(1) * t53 + qJD(2) * t124 + t19 * t361 + t20 * t364) * t360;
t39 = [(t177 * t258 + t178 * t257) * t585 + (t118 * t56 + t119 * t55) * t582 + (t150 * t74 + t151 * t73) * t583 + (t162 * t97 + t163 * t96) * t584 - t265 * t469 - t285 * t459 - t267 * t462 - t198 * t540 + (-t417 + t423) * t504 + (Icges(3,1) * t360 + t418 + t561) * t502 + (-t234 * t360 - t470) * t359 + t588; m(4) * (t143 * t162 + t144 * t163 + t243 * t96 + t244 * t97) + m(6) * (t118 * t66 + t119 * t67 + t148 * t55 + t149 * t56) + m(5) * (t150 * t84 + t151 * t85 + t160 * t73 + t161 * t74) + ((qJD(1) * t284 - t361 * t383) * t578 + t287 * t604 + m(3) * (-t178 * t323 - t257 * t308) + t305 * t577 + (t549 / 0.2e1 - t543 / 0.2e1) * qJD(2) - t373) * t364 + ((-t283 * qJD(1) - t364 * t383) * t363 / 0.2e1 + t286 * t604 + m(3) * (-t177 * t323 - t258 * t308) + t305 * t579 + (-t547 / 0.2e1 + t541 / 0.2e1) * qJD(2) + t372) * t361 + ((t546 / 0.2e1 + t542 / 0.2e1 - t258 * t574 + t371) * t364 + (t257 * t574 + t548 / 0.2e1 + t544 / 0.2e1 + t370) * t361) * qJD(1); (t14 * t63 + t148 * t67 + t149 * t66) * t582 + (t160 * t85 + t161 * t84 + t18 * t70) * t583 - t364 * t10 + t361 * t7 + t361 * t11 + t361 * t8 - t364 * t9 - t364 * t12 + (t120 * t45 + t143 * t244 + t144 * t243) * t584 + ((t361 * t290 + t291 * t364) * ((qJD(1) * t290 - t364 * t387 + t511) * t364 + (-t361 * t387 + (-t291 + t593) * qJD(1)) * t361) + t509 * t323 * t308) * t585 - t364 * ((t364 * t233 + (t155 + t596) * qJD(1)) * t364 + (t154 * qJD(1) + (-t284 * t502 - t287 * t504 + t508) * t361 + (-t232 + (t544 + t548) * qJD(2) - t398 * qJD(1)) * t364) * t361) + t361 * ((t361 * t232 + (t156 + t598) * qJD(1)) * t361 + (t157 * qJD(1) + (t283 * t502 + t286 * t504) * t364 + (-t233 + (-t542 - t546) * qJD(2) + (t281 - t399) * qJD(1)) * t361) * t364) + (-t154 * t364 + t155 * t361 + t51 + t52 + t59) * t507 + (-t156 * t364 + t157 * t361 + t53 + t54 + t60) * t505; m(6) * (t118 * t17 + t119 * t16 + t55 * t72 + t56 * t71) + m(5) * (t150 * t38 + t151 * t37 + t73 * t95 + t74 * t94) + m(4) * (t158 * t97 + t159 * t96 + t162 * t69 + t163 * t68) + ((t361 * t370 + t364 * t371) * qJD(2) - t493) * t363 + (t372 * t364 + t373 * t361 + (-t361 * t371 + t364 * t370) * qJD(1)) * t360 - t486; m(4) * (t120 * t46 + t143 * t158 + t144 * t159 + t145 * t45 + t243 * t68 + t244 * t69) + m(6) * (t13 * t63 + t14 * t64 + t148 * t16 + t149 * t17 + t66 * t71 + t67 * t72) + m(5) * (t15 * t70 + t160 * t37 + t161 * t38 + t18 * t75 + t84 * t94 + t85 * t95) + (-t3 / 0.2e1 - t4 / 0.2e1 - t6 / 0.2e1 + t443 * t502) * t364 + (t1 / 0.2e1 + t2 / 0.2e1 + t5 / 0.2e1 + t444 * t502) * t361 + (t491 * t361 - t492 * t364) * t504 / 0.2e1 + (t600 * qJD(1) + t591 * t361 + t592 * t364) * t578 + (t590 * t361 + t589 * t364) * qJD(1) / 0.2e1 + ((-t361 * t443 + t364 * t444) * qJD(1) + (t9 + t10 + t12) * t579 + (t7 + t8 + t11) * t577) * t360; (t13 * t64 + t16 * t72 + t17 * t71) * t582 + (t15 * t75 + t37 * t95 + t38 * t94) * t583 + (t145 * t46 + t158 * t69 + t159 * t68) * t584 + (t493 * t363 + (t379 * t361 - t586 * t364) * qJD(2) + t486) * t363 + ((-t591 * t363 + t1 + t2 + t5) * t364 + (t592 * t363 + t3 + t4 + t6) * t361 + (t600 * t360 + t599 * t363) * qJD(2) + (t586 * t361 + t379 * t364) * qJD(1)) * t360; 0.2e1 * ((t150 * t364 + t151 * t361) * t581 + (t118 * t364 + t119 * t361) * t580) * t502 + 0.2e1 * ((-t150 * t507 + t151 * t505 + t361 * t73 + t364 * t74) * t581 + (-t118 * t507 + t119 * t505 + t361 * t55 + t364 * t56) * t580) * t360; 0.2e1 * ((t148 * t503 + t149 * t501 - t14) * t580 + (t160 * t503 + t161 * t501 - t18) * t581) * t363 + 0.2e1 * ((qJD(2) * t63 + t148 * t505 - t149 * t507 + t361 * t67 + t364 * t66) * t580 + (qJD(2) * t70 + t160 * t505 - t161 * t507 + t361 * t85 + t364 * t84) * t581) * t360; 0.2e1 * ((t501 * t94 + t503 * t95 - t15) * t581 + (t501 * t71 + t503 * t72 - t13) * t580) * t363 + 0.2e1 * ((qJD(2) * t75 + t361 * t37 + t364 * t38 + t505 * t95 - t507 * t94) * t581 + (qJD(2) * t64 + t16 * t361 + t17 * t364 + t505 * t72 - t507 * t71) * t580) * t360; 0.4e1 * (t581 + t580) * (-0.1e1 + t509) * t467; m(6) * (-t118 * t172 + t119 * t174 + t275 * t55 + t277 * t56); m(6) * (t63 * t461 + t148 * t174 - t149 * t172 + t275 * t67 + t277 * t66 + (t14 * t360 + t502 * t63) * t348); m(6) * (t64 * t461 + t16 * t275 + t17 * t277 - t172 * t71 + t174 * t72 + (t13 * t360 + t502 * t64) * t348); m(6) * ((t348 * t355 + (t275 * t361 + t277 * t364 - t348 * t363) * t363) * qJD(2) + (-t460 - t172 * t364 + t174 * t361 + (t275 * t364 - t277 * t361) * qJD(1)) * t360); (-t172 * t277 + t174 * t275 + (qJD(3) * t349 * t355 + t348 * t467) * t348) * t582;];
%% Postprocessing: Reshape Output
% From vec2symmat_5_matlab.m
res = [t39(1), t39(2), t39(4), t39(7), t39(11); t39(2), t39(3), t39(5), t39(8), t39(12); t39(4), t39(5), t39(6), t39(9), t39(13); t39(7), t39(8), t39(9), t39(10), t39(14); t39(11), t39(12), t39(13), t39(14), t39(15);];
Mq = res;
