% Calculate time derivative of joint inertia matrix for
% S5RRRPP8
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3]';
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
% Datum: 2019-12-31 21:10
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S5RRRPP8_inertiaDJ_slag_vp11(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(7,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRPP8_inertiaDJ_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRPP8_inertiaDJ_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S5RRRPP8_inertiaDJ_slag_vp1: pkin has to be [7x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRRPP8_inertiaDJ_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RRRPP8_inertiaDJ_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RRRPP8_inertiaDJ_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 21:07:31
% EndTime: 2019-12-31 21:08:01
% DurationCPUTime: 16.64s
% Computational Cost: add. (15456->951), mult. (42332->1300), div. (0->0), fcn. (41171->6), ass. (0->438)
t347 = sin(qJ(2));
t350 = cos(qJ(2));
t346 = sin(qJ(3));
t349 = cos(qJ(3));
t525 = Icges(5,6) * t349;
t394 = Icges(5,3) * t346 - t525;
t269 = -Icges(5,5) * t350 + t347 * t394;
t523 = Icges(6,6) * t349;
t395 = Icges(6,2) * t346 + t523;
t270 = -Icges(6,4) * t350 + t347 * t395;
t572 = t269 + t270;
t397 = Icges(4,5) * t349 - Icges(4,6) * t346;
t259 = -Icges(4,3) * t350 + t347 * t397;
t399 = Icges(6,4) * t346 + Icges(6,5) * t349;
t272 = -Icges(6,1) * t350 + t347 * t399;
t400 = -Icges(5,4) * t349 + Icges(5,5) * t346;
t273 = -Icges(5,1) * t350 + t347 * t400;
t571 = t259 + t273 + t272;
t569 = rSges(6,1) + pkin(4);
t568 = rSges(6,3) + qJ(5);
t570 = -qJD(1) * t347 / 0.2e1;
t348 = sin(qJ(1));
t477 = qJD(2) * t350;
t441 = t348 * t477;
t351 = cos(qJ(1));
t480 = qJD(1) * t351;
t366 = t347 * t480 + t441;
t505 = t351 * t346;
t294 = -t348 * t349 + t350 * t505;
t506 = t350 * t351;
t295 = t348 * t346 + t349 * t506;
t508 = t347 * t351;
t197 = Icges(4,5) * t295 - Icges(4,6) * t294 + Icges(4,3) * t508;
t199 = Icges(4,4) * t295 - Icges(4,2) * t294 + Icges(4,6) * t508;
t201 = Icges(4,1) * t295 - Icges(4,4) * t294 + Icges(4,5) * t508;
t387 = -t199 * t346 + t201 * t349;
t94 = -t197 * t350 + t347 * t387;
t193 = Icges(6,1) * t508 + Icges(6,4) * t294 + Icges(6,5) * t295;
t185 = Icges(6,5) * t508 + Icges(6,6) * t294 + Icges(6,3) * t295;
t189 = Icges(6,4) * t508 + Icges(6,2) * t294 + Icges(6,6) * t295;
t391 = t185 * t349 + t189 * t346;
t96 = -t193 * t350 + t347 * t391;
t195 = Icges(5,1) * t508 - Icges(5,4) * t295 + Icges(5,5) * t294;
t187 = Icges(5,5) * t508 - Icges(5,6) * t295 + Icges(5,3) * t294;
t191 = Icges(5,4) * t508 - Icges(5,2) * t295 + Icges(5,6) * t294;
t389 = t187 * t346 - t191 * t349;
t98 = -t195 * t350 + t347 * t389;
t465 = t94 + t96 + t98;
t507 = t348 * t350;
t292 = t346 * t507 + t349 * t351;
t293 = t349 * t507 - t505;
t510 = t347 * t348;
t196 = Icges(4,5) * t293 - Icges(4,6) * t292 + Icges(4,3) * t510;
t198 = Icges(4,4) * t293 - Icges(4,2) * t292 + Icges(4,6) * t510;
t200 = Icges(4,1) * t293 - Icges(4,4) * t292 + Icges(4,5) * t510;
t388 = -t198 * t346 + t200 * t349;
t93 = -t196 * t350 + t347 * t388;
t192 = Icges(6,1) * t510 + Icges(6,4) * t292 + Icges(6,5) * t293;
t184 = Icges(6,5) * t510 + Icges(6,6) * t292 + Icges(6,3) * t293;
t188 = Icges(6,4) * t510 + Icges(6,2) * t292 + Icges(6,6) * t293;
t392 = t184 * t349 + t188 * t346;
t95 = -t192 * t350 + t347 * t392;
t194 = Icges(5,1) * t510 - Icges(5,4) * t293 + Icges(5,5) * t292;
t186 = Icges(5,5) * t510 - Icges(5,6) * t293 + Icges(5,3) * t292;
t190 = Icges(5,4) * t510 - Icges(5,2) * t293 + Icges(5,6) * t292;
t390 = t186 * t346 - t190 * t349;
t97 = -t194 * t350 + t347 * t390;
t466 = t93 + t95 + t97;
t566 = t348 * t466 + t351 * t465;
t529 = Icges(4,4) * t349;
t401 = -Icges(4,2) * t346 + t529;
t262 = -Icges(4,6) * t350 + t347 * t401;
t530 = Icges(4,4) * t346;
t404 = Icges(4,1) * t349 - t530;
t265 = -Icges(4,5) * t350 + t347 * t404;
t524 = Icges(6,6) * t346;
t393 = Icges(6,3) * t349 + t524;
t268 = -Icges(6,5) * t350 + t347 * t393;
t526 = Icges(5,6) * t346;
t396 = -Icges(5,2) * t349 + t526;
t271 = -Icges(5,4) * t350 + t347 * t396;
t565 = t571 * t350 + ((-t265 - t268 + t271) * t349 + (t262 - t572) * t346) * t347;
t532 = Icges(3,4) * t347;
t406 = Icges(3,1) * t350 - t532;
t267 = Icges(3,5) * t348 + t351 * t406;
t512 = t267 * t350;
t531 = Icges(3,4) * t350;
t403 = -Icges(3,2) * t347 + t531;
t264 = Icges(3,6) * t348 + t351 * t403;
t517 = t264 * t347;
t381 = -t512 + t517;
t564 = t348 * t381;
t266 = -Icges(3,5) * t351 + t348 * t406;
t514 = t266 * t350;
t263 = -Icges(3,6) * t351 + t348 * t403;
t519 = t263 * t347;
t382 = -t514 + t519;
t562 = t351 * t382;
t472 = qJD(3) * t351;
t434 = t349 * t472;
t475 = qJD(3) * t346;
t436 = t348 * t475;
t476 = qJD(2) * t351;
t442 = t347 * t476;
t180 = qJD(1) * t292 + t346 * t442 - t350 * t434 - t436;
t473 = qJD(3) * t349;
t364 = t346 * t480 + t348 * t473;
t481 = qJD(1) * t348;
t367 = t350 * t481 + t442;
t435 = t346 * t472;
t181 = t349 * t367 + t350 * t435 - t364;
t439 = t350 * t476;
t560 = -t180 * rSges(6,2) + t295 * qJD(5) - t568 * t181 + t569 * t439;
t559 = -rSges(3,2) * t508 + t348 * rSges(3,3);
t478 = qJD(2) * t348;
t444 = t347 * t478;
t182 = -t346 * t444 - t349 * t481 + t350 * t364 - t435;
t558 = -t182 * rSges(6,2) - t293 * qJD(5);
t479 = qJD(2) * t347;
t183 = qJD(1) * t295 - t349 * t444 - t350 * t436 - t434;
t121 = Icges(4,5) * t183 - Icges(4,6) * t182 + Icges(4,3) * t366;
t123 = Icges(4,4) * t183 - Icges(4,2) * t182 + Icges(4,6) * t366;
t125 = Icges(4,1) * t183 - Icges(4,4) * t182 + Icges(4,5) * t366;
t31 = (qJD(2) * t388 - t121) * t350 + (qJD(2) * t196 - t123 * t346 + t125 * t349 + (-t198 * t349 - t200 * t346) * qJD(3)) * t347;
t109 = Icges(6,5) * t366 + Icges(6,6) * t182 + Icges(6,3) * t183;
t113 = Icges(6,4) * t366 + Icges(6,2) * t182 + Icges(6,6) * t183;
t117 = Icges(6,1) * t366 + Icges(6,4) * t182 + Icges(6,5) * t183;
t33 = (qJD(2) * t392 - t117) * t350 + (qJD(2) * t192 + t109 * t349 + t113 * t346 + (-t184 * t346 + t188 * t349) * qJD(3)) * t347;
t111 = Icges(5,5) * t366 - Icges(5,6) * t183 + Icges(5,3) * t182;
t115 = Icges(5,4) * t366 - Icges(5,2) * t183 + Icges(5,6) * t182;
t119 = Icges(5,1) * t366 - Icges(5,4) * t183 + Icges(5,5) * t182;
t35 = (qJD(2) * t390 - t119) * t350 + (qJD(2) * t194 + t111 * t346 - t115 * t349 + (t186 * t349 + t190 * t346) * qJD(3)) * t347;
t557 = -t31 - t33 - t35;
t447 = t347 * t481;
t365 = t439 - t447;
t120 = -Icges(4,5) * t181 + Icges(4,6) * t180 + Icges(4,3) * t365;
t122 = -Icges(4,4) * t181 + Icges(4,2) * t180 + Icges(4,6) * t365;
t124 = -Icges(4,1) * t181 + Icges(4,4) * t180 + Icges(4,5) * t365;
t32 = (qJD(2) * t387 - t120) * t350 + (qJD(2) * t197 - t122 * t346 + t124 * t349 + (-t199 * t349 - t201 * t346) * qJD(3)) * t347;
t108 = Icges(6,5) * t365 - Icges(6,6) * t180 - Icges(6,3) * t181;
t112 = Icges(6,4) * t365 - Icges(6,2) * t180 - Icges(6,6) * t181;
t116 = Icges(6,1) * t365 - Icges(6,4) * t180 - Icges(6,5) * t181;
t34 = (qJD(2) * t391 - t116) * t350 + (qJD(2) * t193 + t108 * t349 + t112 * t346 + (-t185 * t346 + t189 * t349) * qJD(3)) * t347;
t110 = Icges(5,5) * t365 + Icges(5,6) * t181 - Icges(5,3) * t180;
t114 = Icges(5,4) * t365 + Icges(5,2) * t181 - Icges(5,6) * t180;
t118 = Icges(5,1) * t365 + Icges(5,4) * t181 - Icges(5,5) * t180;
t36 = (qJD(2) * t389 - t118) * t350 + (qJD(2) * t195 + t110 * t346 - t114 * t349 + (t187 * t349 + t191 * t346) * qJD(3)) * t347;
t556 = t32 + t34 + t36;
t136 = t268 * t293 + t270 * t292 + t272 * t510;
t137 = t269 * t292 - t271 * t293 + t273 * t510;
t140 = t259 * t510 - t262 * t292 + t265 * t293;
t84 = t196 * t510 - t198 * t292 + t200 * t293;
t85 = t197 * t510 - t199 * t292 + t201 * t293;
t408 = t348 * t84 + t351 * t85;
t78 = t186 * t292 - t190 * t293 + t194 * t510;
t79 = t187 * t292 - t191 * t293 + t195 * t510;
t411 = t348 * t78 + t351 * t79;
t76 = t184 * t293 + t188 * t292 + t192 * t510;
t77 = t185 * t293 + t189 * t292 + t193 * t510;
t412 = t348 * t76 + t351 * t77;
t555 = (-t136 - t137 - t140) * t350 + (t408 + t411 + t412) * t347;
t138 = t295 * t268 + t294 * t270 + t272 * t508;
t139 = t294 * t269 - t295 * t271 + t273 * t508;
t141 = t259 * t508 - t294 * t262 + t295 * t265;
t86 = t196 * t508 - t294 * t198 + t295 * t200;
t87 = t197 * t508 - t294 * t199 + t295 * t201;
t407 = t348 * t86 + t351 * t87;
t82 = t294 * t186 - t295 * t190 + t194 * t508;
t83 = t294 * t187 - t295 * t191 + t195 * t508;
t409 = t348 * t82 + t351 * t83;
t80 = t295 * t184 + t294 * t188 + t192 * t508;
t81 = t295 * t185 + t294 * t189 + t193 * t508;
t410 = t348 * t80 + t351 * t81;
t554 = (-t138 - t139 - t141) * t350 + (t407 + t409 + t410) * t347;
t474 = qJD(3) * t347;
t210 = (-Icges(4,5) * t346 - Icges(4,6) * t349) * t474 + (Icges(4,3) * t347 + t350 * t397) * qJD(2);
t216 = (-Icges(4,1) * t346 - t529) * t474 + (Icges(4,5) * t347 + t350 * t404) * qJD(2);
t219 = (-Icges(6,3) * t346 + t523) * t474 + (Icges(6,5) * t347 + t350 * t393) * qJD(2);
t220 = (Icges(5,3) * t349 + t526) * t474 + (Icges(5,5) * t347 + t350 * t394) * qJD(2);
t221 = (Icges(6,2) * t349 - t524) * t474 + (Icges(6,4) * t347 + t350 * t395) * qJD(2);
t223 = (Icges(6,4) * t349 - Icges(6,5) * t346) * t474 + (Icges(6,1) * t347 + t350 * t399) * qJD(2);
t224 = (Icges(5,4) * t346 + Icges(5,5) * t349) * t474 + (Icges(5,1) * t347 + t350 * t400) * qJD(2);
t437 = t347 * t473;
t438 = t346 * t474;
t440 = t349 * t477;
t445 = t346 * t477;
t509 = t347 * t349;
t511 = t346 * t347;
t553 = -t262 * t437 + t265 * t440 + t271 * t438 + (-t438 + t440) * t268 + t572 * (t437 + t445) + (t220 + t221) * t511 + (t216 + t219) * t509 + t571 * t479 + (-t210 - t224 - t223) * t350;
t398 = Icges(3,5) * t350 - Icges(3,6) * t347;
t260 = -Icges(3,3) * t351 + t348 * t398;
t552 = t350 * t465 - t554;
t551 = 2 * m(3);
t550 = 2 * m(4);
t549 = 2 * m(5);
t548 = 2 * m(6);
t547 = t348 / 0.2e1;
t546 = -t350 / 0.2e1;
t545 = t351 / 0.2e1;
t544 = -rSges(5,1) - pkin(7);
t543 = rSges(5,2) - pkin(3);
t542 = -rSges(4,3) - pkin(7);
t313 = rSges(3,1) * t347 + rSges(3,2) * t350;
t541 = m(3) * t313;
t540 = pkin(2) * t350;
t340 = t348 * pkin(6);
t537 = rSges(6,2) * t292;
t536 = rSges(3,3) * t351;
t535 = rSges(5,3) * t292;
t533 = t182 * rSges(5,3);
t205 = rSges(5,1) * t510 - rSges(5,2) * t293 + t535;
t521 = t205 * t351;
t416 = -rSges(4,1) * t293 + rSges(4,2) * t292;
t208 = rSges(4,3) * t510 - t416;
t520 = t208 * t351;
t518 = t263 * t350;
t516 = t264 * t350;
t515 = t266 * t347;
t513 = t267 * t347;
t500 = -t182 * qJ(4) - t292 * qJD(4);
t127 = t183 * pkin(3) - t500;
t284 = t292 * qJ(4);
t238 = pkin(3) * t293 + t284;
t504 = t127 * t508 + t238 * t439;
t126 = -t181 * pkin(3) - t180 * qJ(4) + t294 * qJD(4);
t460 = rSges(5,1) * t439 + t181 * rSges(5,2) - t180 * rSges(5,3);
t129 = -rSges(5,1) * t447 + t460;
t503 = -t126 - t129;
t502 = -t569 * t447 + t560;
t501 = t568 * t183 + t569 * t366 - t558;
t203 = (pkin(3) * t477 + qJ(4) * t474) * t349 + (qJ(4) * t477 + (-pkin(3) * qJD(3) + qJD(4)) * t347) * t346;
t414 = -rSges(5,2) * t349 + rSges(5,3) * t346;
t228 = (rSges(5,2) * t346 + rSges(5,3) * t349) * t474 + (rSges(5,1) * t347 + t350 * t414) * qJD(2);
t499 = -t203 - t228;
t498 = t568 * t293 + t569 * t510 + t537;
t497 = -t205 - t238;
t496 = t294 * rSges(6,2) + t568 * t295 + t569 * t508;
t207 = rSges(5,1) * t508 - t295 * rSges(5,2) + t294 * rSges(5,3);
t239 = t295 * pkin(3) + qJ(4) * t294;
t495 = -t207 - t239;
t415 = rSges(4,1) * t349 - rSges(4,2) * t346;
t226 = (-rSges(4,1) * t346 - rSges(4,2) * t349) * t474 + (rSges(4,3) * t347 + t350 * t415) * qJD(2);
t420 = pkin(7) * t347 + t540;
t305 = t420 * qJD(2);
t494 = -t226 - t305;
t413 = rSges(6,2) * t346 + rSges(6,3) * t349;
t493 = (rSges(6,2) * t349 - rSges(6,3) * t346) * t474 + (rSges(6,1) * t347 + t350 * t413) * qJD(2) + qJ(5) * t440 + (pkin(4) * qJD(2) - qJ(5) * t475 + qJD(5) * t349) * t347;
t296 = (pkin(3) * t349 + qJ(4) * t346) * t347;
t492 = t239 * t479 + t296 * t447;
t491 = t350 * t238 + t296 * t510;
t314 = pkin(2) * t347 - pkin(7) * t350;
t299 = t314 * t481;
t490 = t296 * t481 + t299;
t275 = -rSges(4,3) * t350 + t347 * t415;
t489 = -t275 - t314;
t488 = qJ(5) * t509 + t347 * t413 - t569 * t350;
t279 = -rSges(5,1) * t350 + t347 * t414;
t487 = -t279 - t296;
t297 = t420 * t348;
t334 = pkin(2) * t506;
t298 = pkin(7) * t508 + t334;
t486 = t348 * t297 + t351 * t298;
t485 = rSges(3,2) * t447 + rSges(3,3) * t480;
t484 = t351 * pkin(1) + t340;
t341 = t351 * pkin(6);
t483 = t341 - t284;
t261 = Icges(3,3) * t348 + t351 * t398;
t482 = qJD(1) * t261;
t470 = -pkin(7) - t569;
t469 = -pkin(3) - t568;
t213 = (-Icges(4,2) * t349 - t530) * t474 + (Icges(4,6) * t347 + t350 * t401) * qJD(2);
t222 = (Icges(5,2) * t346 + t525) * t474 + (Icges(5,4) * t347 + t350 * t396) * qJD(2);
t467 = (-t262 * t477 + (-qJD(3) * t265 - t213) * t347) * t346 + (-t222 * t347 - t271 * t477) * t349 + t553;
t463 = -t126 - t502;
t462 = t565 * t479;
t461 = -t181 * rSges(4,1) + t180 * rSges(4,2) + rSges(4,3) * t439;
t459 = -t203 - t493;
t458 = -t305 + t499;
t457 = -t238 - t498;
t456 = -t239 - t496;
t319 = pkin(2) * t444;
t320 = pkin(7) * t439;
t455 = t348 * (pkin(7) * t366 + qJD(1) * t334 - t319) + t351 * (-pkin(2) * t367 - pkin(7) * t447 + t320) + t297 * t480;
t454 = -t296 - t488;
t453 = -t314 + t487;
t209 = t295 * rSges(4,1) - t294 * rSges(4,2) + rSges(4,3) * t508;
t451 = t319 + t500;
t450 = -pkin(1) - t540;
t449 = t275 * t481;
t448 = t279 * t481;
t443 = t347 * t477;
t433 = t348 * t488;
t432 = t498 * t351;
t237 = t489 * t351;
t431 = t487 * t351;
t430 = qJD(1) * t488;
t429 = t350 * t127 + t203 * t510 + t366 * t296;
t428 = -t305 + t459;
t427 = t348 * t238 + t351 * t239 + t486;
t426 = -t314 + t454;
t425 = t484 + t298;
t344 = t347 ^ 2;
t424 = t344 * t346 * t473;
t55 = t77 * t348 - t351 * t76;
t56 = t79 * t348 - t351 * t78;
t59 = t85 * t348 - t351 * t84;
t423 = t59 / 0.2e1 + t55 / 0.2e1 + t56 / 0.2e1;
t57 = t81 * t348 - t351 * t80;
t58 = t83 * t348 - t351 * t82;
t60 = t87 * t348 - t351 * t86;
t422 = -t60 / 0.2e1 - t57 / 0.2e1 - t58 / 0.2e1;
t421 = t454 * t351;
t164 = t453 * t351;
t419 = t348 * t430;
t418 = rSges(3,1) * t350 - rSges(3,2) * t347;
t417 = t183 * rSges(4,1) - t182 * rSges(4,2);
t402 = Icges(3,2) * t350 + t532;
t386 = -t209 * t348 + t520;
t385 = -t348 * t208 - t209 * t351;
t277 = rSges(3,1) * t506 + t559;
t160 = t426 * t351;
t380 = -pkin(1) - t418;
t379 = t351 * t126 + t348 * t127 + t238 * t480 + t455;
t338 = pkin(6) * t480;
t377 = -pkin(2) * t442 + t320 + t338;
t376 = qJD(2) * t313;
t375 = t348 * t495 + t521;
t374 = t347 * t544 + t450;
t373 = t347 * t542 + t450;
t371 = qJD(2) * t402;
t370 = qJD(2) * (-Icges(3,5) * t347 - Icges(3,6) * t350);
t369 = -t350 * t466 + t555;
t368 = t347 * t470 + t450;
t363 = t239 + t425;
t361 = t374 * t348;
t360 = t373 * t348;
t51 = t182 * t270 + t183 * t268 + t293 * t219 + t292 * t221 + t223 * t510 + t272 * t366;
t52 = t182 * t269 - t183 * t271 + t292 * t220 - t293 * t222 + t224 * t510 + t273 * t366;
t54 = -t182 * t262 + t183 * t265 + t210 * t510 - t292 * t213 + t293 * t216 + t259 * t366;
t359 = t31 / 0.2e1 + t33 / 0.2e1 + t35 / 0.2e1 + t51 / 0.2e1 + t52 / 0.2e1 + t54 / 0.2e1;
t49 = -t180 * t270 - t181 * t268 + t295 * t219 + t294 * t221 + t223 * t508 + t272 * t365;
t50 = -t180 * t269 + t181 * t271 + t294 * t220 - t295 * t222 + t224 * t508 + t273 * t365;
t53 = t180 * t262 - t181 * t265 + t210 * t508 - t294 * t213 + t295 * t216 + t259 * t365;
t358 = t32 / 0.2e1 + t34 / 0.2e1 + t36 / 0.2e1 + t49 / 0.2e1 + t50 / 0.2e1 + t53 / 0.2e1;
t357 = t368 * t348;
t356 = t136 / 0.2e1 + t137 / 0.2e1 + t140 / 0.2e1 + t93 / 0.2e1 + t95 / 0.2e1 + t97 / 0.2e1;
t355 = t94 / 0.2e1 + t96 / 0.2e1 + t98 / 0.2e1 + t138 / 0.2e1 + t139 / 0.2e1 + t141 / 0.2e1;
t354 = t348 * t456 + t432;
t352 = t126 + t377;
t345 = t349 ^ 2;
t343 = t346 ^ 2;
t303 = t418 * qJD(2);
t300 = t398 * qJD(2);
t276 = t348 * t418 - t536;
t242 = t277 + t484;
t241 = t348 * t380 + t341 + t536;
t236 = t489 * t348;
t225 = t238 * t508;
t212 = t348 * t370 + t482;
t211 = -qJD(1) * t260 + t351 * t370;
t166 = t313 * t478 + ((-rSges(3,3) - pkin(6)) * t348 + t380 * t351) * qJD(1);
t165 = -rSges(3,1) * t367 - rSges(3,2) * t439 - pkin(1) * t481 + t338 + t485;
t163 = t453 * t348;
t162 = t425 + t209;
t161 = t341 + t360 + t416;
t159 = t426 * t348;
t158 = -t350 * t209 - t275 * t508;
t157 = t208 * t350 + t275 * t510;
t154 = t348 * t261 - t351 * t381;
t153 = t348 * t260 - t562;
t152 = -t261 * t351 - t564;
t151 = -t260 * t351 - t348 * t382;
t144 = t386 * t347;
t143 = qJD(1) * t237 + t348 * t494;
t142 = t351 * t494 + t299 + t449;
t135 = t363 + t207;
t134 = t293 * t543 + t361 + t483 - t535;
t133 = rSges(4,3) * t366 + t417;
t132 = -rSges(4,3) * t447 + t461;
t131 = rSges(5,1) * t366 - t183 * rSges(5,2) + t533;
t103 = t363 + t496;
t102 = t293 * t469 + t357 + t483 - t537;
t101 = -t385 + t486;
t100 = t347 * t431 + t350 * t495;
t99 = t205 * t350 + t279 * t510 + t491;
t91 = t319 + t542 * t441 + (t351 * t373 - t340) * qJD(1) - t417;
t90 = qJD(1) * t360 + t377 + t461;
t89 = qJD(1) * t164 + t348 * t458;
t88 = t351 * t458 + t448 + t490;
t75 = t347 * t421 + t350 * t456;
t74 = t347 * t433 + t350 * t498 + t491;
t73 = t347 * t375 + t225;
t72 = t348 * t205 + t207 * t351 + t427;
t71 = qJD(1) * t160 + t348 * t428;
t70 = t351 * t428 + t419 + t490;
t69 = t347 * t354 + t225;
t68 = t348 * t498 + t351 * t496 + t427;
t67 = (t275 * t478 + t133) * t350 + (-qJD(2) * t208 + t348 * t226 + t275 * t480) * t347;
t66 = (-t275 * t476 - t132) * t350 + (qJD(2) * t209 - t226 * t351 + t449) * t347;
t65 = -t533 + t543 * t183 + t544 * t441 + (t351 * t374 - t340) * qJD(1) + t451;
t64 = qJD(1) * t361 + t352 + t460;
t48 = t469 * t183 + t470 * t441 + (t351 * t368 - t340) * qJD(1) + t451 + t558;
t47 = qJD(1) * t357 + t352 + t560;
t46 = t386 * t477 + (qJD(1) * t385 - t132 * t348 + t133 * t351) * t347;
t45 = t132 * t351 + t348 * t133 + (t520 + (-t209 - t298) * t348) * qJD(1) + t455;
t38 = (t279 * t478 + t131) * t350 + (qJD(2) * t497 + t348 * t228 + t279 * t480) * t347 + t429;
t37 = (qJD(2) * t431 + t503) * t350 + (qJD(2) * t207 + t351 * t499 + t448) * t347 + t492;
t30 = t120 * t510 - t292 * t122 + t293 * t124 - t182 * t199 + t183 * t201 + t197 * t366;
t29 = t121 * t510 - t292 * t123 + t293 * t125 - t182 * t198 + t183 * t200 + t196 * t366;
t28 = t120 * t508 - t294 * t122 + t295 * t124 + t180 * t199 - t181 * t201 + t197 * t365;
t27 = t121 * t508 - t294 * t123 + t295 * t125 + t180 * t198 - t181 * t200 + t196 * t365;
t26 = t292 * t110 - t293 * t114 + t118 * t510 + t182 * t187 - t183 * t191 + t195 * t366;
t25 = t292 * t111 - t293 * t115 + t119 * t510 + t182 * t186 - t183 * t190 + t194 * t366;
t24 = t293 * t108 + t292 * t112 + t116 * t510 + t182 * t189 + t183 * t185 + t193 * t366;
t23 = t293 * t109 + t292 * t113 + t117 * t510 + t182 * t188 + t183 * t184 + t192 * t366;
t22 = t294 * t110 - t295 * t114 + t118 * t508 - t180 * t187 + t181 * t191 + t195 * t365;
t21 = t294 * t111 - t295 * t115 + t119 * t508 - t180 * t186 + t181 * t190 + t194 * t365;
t20 = t295 * t108 + t294 * t112 + t116 * t508 - t180 * t189 - t181 * t185 + t193 * t365;
t19 = t295 * t109 + t294 * t113 + t117 * t508 - t180 * t188 - t181 * t184 + t192 * t365;
t18 = (qJD(2) * t433 + t501) * t350 + (qJD(2) * t457 + t348 * t493 + t351 * t430) * t347 + t429;
t17 = (qJD(2) * t421 + t463) * t350 + (qJD(2) * t496 + t351 * t459 + t419) * t347 + t492;
t16 = t129 * t351 + t348 * t131 + (t521 + (-t298 + t495) * t348) * qJD(1) + t379;
t15 = t375 * t477 + (t131 * t351 + t503 * t348 + (t348 * t497 + t351 * t495) * qJD(1)) * t347 + t504;
t14 = t502 * t351 + t501 * t348 + (t432 + (-t298 + t456) * t348) * qJD(1) + t379;
t13 = t354 * t477 + (t501 * t351 + t463 * t348 + (t348 * t457 + t351 * t456) * qJD(1)) * t347 + t504;
t12 = qJD(1) * t408 - t29 * t351 + t30 * t348;
t11 = qJD(1) * t407 - t27 * t351 + t28 * t348;
t10 = qJD(1) * t411 - t25 * t351 + t26 * t348;
t9 = qJD(1) * t412 - t23 * t351 + t24 * t348;
t8 = qJD(1) * t409 - t21 * t351 + t22 * t348;
t7 = qJD(1) * t410 - t19 * t351 + t20 * t348;
t6 = (qJD(2) * t408 - t54) * t350 + (-qJD(1) * t59 + qJD(2) * t140 + t29 * t348 + t30 * t351) * t347;
t5 = (qJD(2) * t407 - t53) * t350 + (-qJD(1) * t60 + qJD(2) * t141 + t27 * t348 + t28 * t351) * t347;
t4 = (qJD(2) * t411 - t52) * t350 + (-qJD(1) * t56 + qJD(2) * t137 + t25 * t348 + t26 * t351) * t347;
t3 = (qJD(2) * t412 - t51) * t350 + (-qJD(1) * t55 + qJD(2) * t136 + t23 * t348 + t24 * t351) * t347;
t2 = (qJD(2) * t409 - t50) * t350 + (-qJD(1) * t58 + qJD(2) * t139 + t21 * t348 + t22 * t351) * t347;
t1 = (qJD(2) * t410 - t49) * t350 + (-qJD(1) * t57 + qJD(2) * t138 + t19 * t348 + t20 * t351) * t347;
t39 = [-t222 * t509 + (t165 * t242 + t166 * t241) * t551 + (t161 * t91 + t162 * t90) * t550 + (t134 * t65 + t135 * t64) * t549 + (t102 * t48 + t103 * t47) * t548 - t213 * t511 - t271 * t440 - t262 * t445 - t265 * t438 + (-t402 + t406) * t479 + (Icges(3,1) * t347 + t403 + t531) * t477 + t553; m(4) * (t142 * t161 + t143 * t162 + t236 * t90 + t237 * t91) + m(6) * (t102 * t70 + t103 * t71 + t159 * t47 + t160 * t48) + m(5) * (t134 * t88 + t135 * t89 + t163 * t64 + t164 * t65) + ((qJD(1) * t264 - t348 * t371) * t546 + t267 * t570 + m(3) * (-t166 * t313 - t241 * t303) + t300 * t545 + (t519 / 0.2e1 - t514 / 0.2e1) * qJD(2) - t359) * t351 + ((-t263 * qJD(1) - t351 * t371) * t350 / 0.2e1 + t266 * t570 + m(3) * (-t165 * t313 - t242 * t303) + t300 * t547 + (-t517 / 0.2e1 + t512 / 0.2e1) * qJD(2) + t358) * t348 + ((-t242 * t541 + t516 / 0.2e1 + t513 / 0.2e1 + t355) * t351 + (t518 / 0.2e1 + t515 / 0.2e1 + t241 * t541 + t356) * t348) * qJD(1); (t14 * t68 + t159 * t71 + t160 * t70) * t548 + (t16 * t72 + t163 * t89 + t164 * t88) * t549 + t348 * t8 - t351 * t10 - t351 * t9 - t351 * t12 + t348 * t7 + (t101 * t45 + t142 * t237 + t143 * t236) * t550 + t348 * t11 + t348 * ((t348 * t211 + (t153 + t564) * qJD(1)) * t348 + (t154 * qJD(1) + (t263 * t477 + t266 * t479) * t351 + (-t212 + (-t513 - t516) * qJD(2) + (t261 - t382) * qJD(1)) * t348) * t351) - t351 * ((t351 * t212 + (t152 + t562) * qJD(1)) * t351 + (t151 * qJD(1) + (-t264 * t477 - t267 * t479 + t482) * t348 + (-t211 + (t515 + t518) * qJD(2) - t381 * qJD(1)) * t351) * t348) + ((t348 * t276 + t277 * t351) * ((qJD(1) * t276 - t351 * t376 + t485) * t351 + (-t348 * t376 + (-t277 + t559) * qJD(1)) * t348) + (t348 ^ 2 + t351 ^ 2) * t313 * t303) * t551 + (-t151 * t351 + t152 * t348 + t55 + t56 + t59) * t481 + (-t153 * t351 + t154 * t348 + t57 + t58 + t60) * t480; m(4) * (t157 * t91 + t158 * t90 + t161 * t67 + t162 * t66) + m(5) * (t100 * t64 + t134 * t38 + t135 * t37 + t65 * t99) + m(6) * (t102 * t18 + t103 * t17 + t47 * t75 + t48 * t74) + ((t348 * t356 + t351 * t355) * qJD(2) - t467) * t350 + (t358 * t351 + t359 * t348 + (-t348 * t355 + t351 * t356) * qJD(1)) * t347 - t462; m(4) * (t101 * t46 + t142 * t157 + t143 * t158 + t144 * t45 + t236 * t66 + t237 * t67) + m(6) * (t13 * t68 + t14 * t69 + t159 * t17 + t160 * t18 + t70 * t74 + t71 * t75) + m(5) * (t100 * t89 + t15 * t72 + t16 * t73 + t163 * t37 + t164 * t38 + t88 * t99) + (-t6 / 0.2e1 - t4 / 0.2e1 - t3 / 0.2e1 - t422 * t477) * t351 + (t5 / 0.2e1 + t2 / 0.2e1 + t1 / 0.2e1 + t423 * t477) * t348 + (t465 * t348 - t466 * t351) * t479 / 0.2e1 + (t566 * qJD(1) + t556 * t348 + t557 * t351) * t546 + (t555 * t348 + t554 * t351) * qJD(1) / 0.2e1 + ((t348 * t422 + t351 * t423) * qJD(1) + (t9 + t10 + t12) * t547 + (t7 + t8 + t11) * t545) * t347; (t144 * t46 + t157 * t67 + t158 * t66) * t550 + (t100 * t37 + t15 * t73 + t38 * t99) * t549 + (t13 * t69 + t17 * t75 + t18 * t74) * t548 + (t467 * t350 + (t369 * t348 - t552 * t351) * qJD(2) + t462) * t350 + ((-t556 * t350 + t1 + t2 + t5) * t351 + (t557 * t350 + t3 + t4 + t6) * t348 + (t566 * t347 + t565 * t350) * qJD(2) + (t552 * t348 + t369 * t351) * qJD(1)) * t347; m(6) * (-t102 * t180 + t103 * t182 + t292 * t47 + t294 * t48) + m(5) * (-t134 * t180 + t135 * t182 + t292 * t64 + t294 * t65); m(6) * (t68 * t437 + t159 * t182 - t160 * t180 + t292 * t71 + t294 * t70 + (t14 * t347 + t477 * t68) * t346) + m(5) * (t72 * t437 + t163 * t182 - t164 * t180 + t292 * t89 + t294 * t88 + (t16 * t347 + t477 * t72) * t346); m(6) * (t69 * t437 + t17 * t292 + t18 * t294 - t180 * t74 + t182 * t75 + (t13 * t347 + t477 * t69) * t346) + m(5) * (t73 * t437 + t100 * t182 - t180 * t99 + t292 * t37 + t294 * t38 + (t15 * t347 + t477 * t73) * t346); 0.4e1 * (m(5) / 0.2e1 + m(6) / 0.2e1) * (-t180 * t294 + t182 * t292 + t343 * t443 + t424); m(6) * (-t102 * t181 + t103 * t183 + t293 * t47 + t295 * t48); m(6) * (t68 * t440 + t159 * t183 - t160 * t181 + t293 * t71 + t295 * t70 + (t14 * t349 - t475 * t68) * t347); m(6) * (t69 * t440 + t17 * t293 + t18 * t295 - t181 * t74 + t183 * t75 + (t13 * t349 - t475 * t69) * t347); m(6) * (0.2e1 * t440 * t511 - t180 * t295 - t181 * t294 + t182 * t293 + t183 * t292 + (-t343 + t345) * t344 * qJD(3)); (-t181 * t295 + t183 * t293 + t345 * t443 - t424) * t548;];
%% Postprocessing: Reshape Output
% From vec2symmat_5_matlab.m
res = [t39(1), t39(2), t39(4), t39(7), t39(11); t39(2), t39(3), t39(5), t39(8), t39(12); t39(4), t39(5), t39(6), t39(9), t39(13); t39(7), t39(8), t39(9), t39(10), t39(14); t39(11), t39(12), t39(13), t39(14), t39(15);];
Mq = res;
