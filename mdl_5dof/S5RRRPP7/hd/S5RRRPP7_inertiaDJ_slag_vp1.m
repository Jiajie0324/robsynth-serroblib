% Calculate time derivative of joint inertia matrix for
% S5RRRPP7
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
% Datum: 2019-12-31 21:06
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S5RRRPP7_inertiaDJ_slag_vp11(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(7,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRPP7_inertiaDJ_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRPP7_inertiaDJ_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S5RRRPP7_inertiaDJ_slag_vp1: pkin has to be [7x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRRPP7_inertiaDJ_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RRRPP7_inertiaDJ_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RRRPP7_inertiaDJ_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 21:03:58
% EndTime: 2019-12-31 21:04:27
% DurationCPUTime: 17.41s
% Computational Cost: add. (15409->962), mult. (42188->1315), div. (0->0), fcn. (40976->6), ass. (0->442)
t345 = cos(qJ(2));
t567 = rSges(6,3) + qJ(5);
t573 = t567 * t345;
t342 = sin(qJ(2));
t341 = sin(qJ(3));
t344 = cos(qJ(3));
t520 = Icges(5,5) * t344;
t386 = Icges(5,3) * t341 + t520;
t262 = -Icges(5,6) * t345 + t342 * t386;
t523 = Icges(6,4) * t344;
t389 = Icges(6,2) * t341 + t523;
t266 = Icges(6,6) * t345 + t342 * t389;
t572 = t262 + t266;
t387 = Icges(4,5) * t344 - Icges(4,6) * t341;
t263 = -Icges(4,3) * t345 + t342 * t387;
t390 = Icges(5,4) * t344 + Icges(5,6) * t341;
t267 = -Icges(5,2) * t345 + t342 * t390;
t571 = t263 + t267;
t524 = Icges(6,4) * t341;
t394 = Icges(6,1) * t344 + t524;
t271 = Icges(6,5) * t345 + t342 * t394;
t526 = Icges(4,4) * t341;
t396 = Icges(4,1) * t344 - t526;
t273 = -Icges(4,5) * t345 + t342 * t396;
t570 = t273 + t271;
t343 = sin(qJ(1));
t346 = cos(qJ(1));
t501 = t345 * t346;
t297 = t341 * t501 - t343 * t344;
t298 = t343 * t341 + t344 * t501;
t504 = t342 * t346;
t568 = rSges(6,1) + pkin(4);
t491 = t297 * rSges(6,2) + t568 * t298 - t567 * t504;
t569 = -qJD(1) * t342 / 0.2e1;
t465 = qJD(3) * t342;
t429 = t341 * t465;
t468 = qJD(2) * t345;
t431 = t344 * t468;
t565 = -t429 + t431;
t432 = t343 * t468;
t471 = qJD(1) * t346;
t359 = t342 * t471 + t432;
t188 = Icges(6,5) * t298 + Icges(6,6) * t297 - Icges(6,3) * t504;
t194 = Icges(6,4) * t298 + Icges(6,2) * t297 - Icges(6,6) * t504;
t200 = Icges(6,1) * t298 + Icges(6,4) * t297 - Icges(6,5) * t504;
t381 = t194 * t341 + t200 * t344;
t94 = t188 * t345 + t342 * t381;
t196 = Icges(5,4) * t298 + Icges(5,2) * t504 + Icges(5,6) * t297;
t190 = Icges(5,5) * t298 + Icges(5,6) * t504 + Icges(5,3) * t297;
t202 = Icges(5,1) * t298 + Icges(5,4) * t504 + Icges(5,5) * t297;
t383 = t190 * t341 + t202 * t344;
t96 = -t196 * t345 + t342 * t383;
t192 = Icges(4,5) * t298 - Icges(4,6) * t297 + Icges(4,3) * t504;
t198 = Icges(4,4) * t298 - Icges(4,2) * t297 + Icges(4,6) * t504;
t204 = Icges(4,1) * t298 - Icges(4,4) * t297 + Icges(4,5) * t504;
t379 = -t198 * t341 + t204 * t344;
t98 = -t192 * t345 + t342 * t379;
t456 = t94 + t96 + t98;
t502 = t344 * t346;
t503 = t343 * t345;
t295 = t341 * t503 + t502;
t296 = -t341 * t346 + t344 * t503;
t506 = t342 * t343;
t187 = Icges(6,5) * t296 + Icges(6,6) * t295 - Icges(6,3) * t506;
t193 = Icges(6,4) * t296 + Icges(6,2) * t295 - Icges(6,6) * t506;
t199 = Icges(6,1) * t296 + Icges(6,4) * t295 - Icges(6,5) * t506;
t382 = t193 * t341 + t199 * t344;
t93 = t187 * t345 + t342 * t382;
t195 = Icges(5,4) * t296 + Icges(5,2) * t506 + Icges(5,6) * t295;
t189 = Icges(5,5) * t296 + Icges(5,6) * t506 + Icges(5,3) * t295;
t201 = Icges(5,1) * t296 + Icges(5,4) * t506 + Icges(5,5) * t295;
t384 = t189 * t341 + t201 * t344;
t95 = -t195 * t345 + t342 * t384;
t191 = Icges(4,5) * t296 - Icges(4,6) * t295 + Icges(4,3) * t506;
t197 = Icges(4,4) * t296 - Icges(4,2) * t295 + Icges(4,6) * t506;
t203 = Icges(4,1) * t296 - Icges(4,4) * t295 + Icges(4,5) * t506;
t380 = -t197 * t341 + t203 * t344;
t97 = -t191 * t345 + t342 * t380;
t457 = t93 + t95 + t97;
t564 = t343 * t457 + t346 * t456;
t385 = Icges(6,5) * t344 + Icges(6,6) * t341;
t261 = Icges(6,3) * t345 + t342 * t385;
t525 = Icges(4,4) * t344;
t391 = -Icges(4,2) * t341 + t525;
t268 = -Icges(4,6) * t345 + t342 * t391;
t521 = Icges(5,5) * t341;
t395 = Icges(5,1) * t344 + t521;
t272 = -Icges(5,4) * t345 + t342 * t395;
t563 = (-t261 + t571) * t345 + ((-t272 - t570) * t344 + (t268 - t572) * t341) * t342;
t528 = Icges(3,4) * t342;
t398 = Icges(3,1) * t345 - t528;
t275 = Icges(3,5) * t343 + t346 * t398;
t508 = t275 * t345;
t527 = Icges(3,4) * t345;
t393 = -Icges(3,2) * t342 + t527;
t270 = Icges(3,6) * t343 + t346 * t393;
t513 = t270 * t342;
t373 = -t508 + t513;
t562 = t343 * t373;
t274 = -Icges(3,5) * t346 + t343 * t398;
t510 = t274 * t345;
t269 = -Icges(3,6) * t346 + t343 * t393;
t515 = t269 * t342;
t374 = -t510 + t515;
t560 = t346 * t374;
t463 = qJD(3) * t345;
t427 = t344 * t463;
t467 = qJD(2) * t346;
t433 = t342 * t467;
t466 = qJD(3) * t341;
t182 = qJD(1) * t295 + t341 * t433 - t343 * t466 - t346 * t427;
t372 = (qJD(1) - t463) * t341;
t472 = qJD(1) * t345;
t421 = -qJD(3) + t472;
t183 = t346 * t372 + (-t343 * t421 - t433) * t344;
t473 = qJD(1) * t343;
t440 = t342 * t473;
t557 = -t182 * rSges(6,2) + t568 * t183 + t567 * t440;
t556 = -rSges(3,2) * t504 + t343 * rSges(3,3);
t470 = qJD(2) * t342;
t469 = qJD(2) * t343;
t435 = t342 * t469;
t464 = qJD(3) * t344;
t184 = -t341 * t435 - t346 * t466 - t344 * t473 + (t341 * t471 + t343 * t464) * t345;
t185 = t421 * t502 + (-t344 * t470 + t372) * t343;
t109 = Icges(6,5) * t185 + Icges(6,6) * t184 - Icges(6,3) * t359;
t115 = Icges(6,4) * t185 + Icges(6,2) * t184 - Icges(6,6) * t359;
t121 = Icges(6,1) * t185 + Icges(6,4) * t184 - Icges(6,5) * t359;
t31 = (qJD(2) * t382 + t109) * t345 + (-qJD(2) * t187 + t115 * t341 + t121 * t344 + (t193 * t344 - t199 * t341) * qJD(3)) * t342;
t111 = Icges(5,5) * t185 + Icges(5,6) * t359 + Icges(5,3) * t184;
t117 = Icges(5,4) * t185 + Icges(5,2) * t359 + Icges(5,6) * t184;
t123 = Icges(5,1) * t185 + Icges(5,4) * t359 + Icges(5,5) * t184;
t33 = (qJD(2) * t384 - t117) * t345 + (qJD(2) * t195 + t111 * t341 + t123 * t344 + (t189 * t344 - t201 * t341) * qJD(3)) * t342;
t113 = Icges(4,5) * t185 - Icges(4,6) * t184 + Icges(4,3) * t359;
t119 = Icges(4,4) * t185 - Icges(4,2) * t184 + Icges(4,6) * t359;
t125 = Icges(4,1) * t185 - Icges(4,4) * t184 + Icges(4,5) * t359;
t35 = (qJD(2) * t380 - t113) * t345 + (qJD(2) * t191 - t119 * t341 + t125 * t344 + (-t197 * t344 - t203 * t341) * qJD(3)) * t342;
t555 = -t31 - t33 - t35;
t430 = t345 * t467;
t358 = -t430 + t440;
t108 = Icges(6,5) * t183 - Icges(6,6) * t182 + Icges(6,3) * t358;
t114 = Icges(6,4) * t183 - Icges(6,2) * t182 + Icges(6,6) * t358;
t120 = Icges(6,1) * t183 - Icges(6,4) * t182 + Icges(6,5) * t358;
t32 = (qJD(2) * t381 + t108) * t345 + (-qJD(2) * t188 + t114 * t341 + t120 * t344 + (t194 * t344 - t200 * t341) * qJD(3)) * t342;
t110 = Icges(5,5) * t183 - Icges(5,6) * t358 - Icges(5,3) * t182;
t116 = Icges(5,4) * t183 - Icges(5,2) * t358 - Icges(5,6) * t182;
t122 = Icges(5,1) * t183 - Icges(5,4) * t358 - Icges(5,5) * t182;
t34 = (qJD(2) * t383 - t116) * t345 + (qJD(2) * t196 + t110 * t341 + t122 * t344 + (t190 * t344 - t202 * t341) * qJD(3)) * t342;
t112 = Icges(4,5) * t183 + Icges(4,6) * t182 - Icges(4,3) * t358;
t118 = Icges(4,4) * t183 + Icges(4,2) * t182 - Icges(4,6) * t358;
t124 = Icges(4,1) * t183 + Icges(4,4) * t182 - Icges(4,5) * t358;
t36 = (qJD(2) * t379 - t112) * t345 + (qJD(2) * t192 - t118 * t341 + t124 * t344 + (-t198 * t344 - t204 * t341) * qJD(3)) * t342;
t554 = t32 + t34 + t36;
t136 = -t261 * t506 + t266 * t295 + t271 * t296;
t137 = t262 * t295 + t267 * t506 + t272 * t296;
t138 = t263 * t506 - t268 * t295 + t273 * t296;
t80 = t191 * t506 - t197 * t295 + t203 * t296;
t81 = t192 * t506 - t198 * t295 + t204 * t296;
t402 = t343 * t80 + t346 * t81;
t78 = t189 * t295 + t195 * t506 + t201 * t296;
t79 = t190 * t295 + t196 * t506 + t202 * t296;
t403 = t343 * t78 + t346 * t79;
t76 = -t187 * t506 + t193 * t295 + t199 * t296;
t77 = -t188 * t506 + t194 * t295 + t200 * t296;
t404 = t343 * t76 + t346 * t77;
t553 = (-t136 - t137 - t138) * t345 + (t402 + t403 + t404) * t342;
t139 = -t261 * t504 + t297 * t266 + t298 * t271;
t140 = t297 * t262 + t267 * t504 + t298 * t272;
t141 = t263 * t504 - t297 * t268 + t298 * t273;
t86 = t191 * t504 - t297 * t197 + t298 * t203;
t87 = t192 * t504 - t297 * t198 + t298 * t204;
t399 = t343 * t86 + t346 * t87;
t84 = t297 * t189 + t195 * t504 + t298 * t201;
t85 = t297 * t190 + t196 * t504 + t298 * t202;
t400 = t343 * t84 + t346 * t85;
t82 = -t187 * t504 + t297 * t193 + t298 * t199;
t83 = -t188 * t504 + t297 * t194 + t298 * t200;
t401 = t343 * t82 + t346 * t83;
t552 = (-t139 - t140 - t141) * t345 + (t399 + t400 + t401) * t342;
t213 = (-Icges(6,5) * t341 + Icges(6,6) * t344) * t465 + (-Icges(6,3) * t342 + t345 * t385) * qJD(2);
t214 = (Icges(5,3) * t344 - t521) * t465 + (Icges(5,6) * t342 + t345 * t386) * qJD(2);
t215 = (-Icges(4,5) * t341 - Icges(4,6) * t344) * t465 + (Icges(4,3) * t342 + t345 * t387) * qJD(2);
t218 = (Icges(6,2) * t344 - t524) * t465 + (-Icges(6,6) * t342 + t345 * t389) * qJD(2);
t219 = (-Icges(5,4) * t341 + Icges(5,6) * t344) * t465 + (Icges(5,2) * t342 + t345 * t390) * qJD(2);
t223 = (-Icges(6,1) * t341 + t523) * t465 + (-Icges(6,5) * t342 + t345 * t394) * qJD(2);
t224 = (-Icges(5,1) * t341 + t520) * t465 + (Icges(5,4) * t342 + t345 * t395) * qJD(2);
t225 = (-Icges(4,1) * t341 - t525) * t465 + (Icges(4,5) * t342 + t345 * t396) * qJD(2);
t428 = t342 * t464;
t436 = t341 * t468;
t505 = t342 * t344;
t507 = t341 * t342;
t551 = -t268 * t428 + t565 * t272 + t572 * (t428 + t436) + (t214 + t218) * t507 + t571 * t470 + t570 * t431 + (t223 + t224 + t225) * t505 + (t213 - t215 - t219) * t345;
t388 = Icges(3,5) * t345 - Icges(3,6) * t342;
t264 = -Icges(3,3) * t346 + t343 * t388;
t550 = t345 * t456 - t552;
t549 = 2 * m(3);
t548 = 2 * m(4);
t547 = 2 * m(5);
t546 = 2 * m(6);
t545 = t343 / 0.2e1;
t544 = -t345 / 0.2e1;
t543 = t346 / 0.2e1;
t542 = -rSges(5,1) - pkin(3);
t541 = -rSges(5,2) - pkin(7);
t540 = -rSges(4,3) - pkin(7);
t314 = rSges(3,1) * t342 + rSges(3,2) * t345;
t539 = m(3) * t314;
t538 = pkin(2) * t342;
t537 = pkin(2) * t345;
t335 = t343 * pkin(6);
t534 = rSges(6,2) * t295;
t533 = rSges(3,3) * t346;
t532 = rSges(5,3) * t295;
t531 = t184 * rSges(6,2);
t530 = t184 * rSges(5,3);
t208 = rSges(5,1) * t296 + rSges(5,2) * t506 + t532;
t517 = t208 * t346;
t408 = -rSges(4,1) * t296 + rSges(4,2) * t295;
t209 = rSges(4,3) * t506 - t408;
t516 = t209 * t346;
t514 = t269 * t345;
t512 = t270 * t345;
t511 = t274 * t342;
t509 = t275 * t342;
t496 = -t184 * qJ(4) - t295 * qJD(4);
t127 = t185 * pkin(3) - t496;
t286 = t295 * qJ(4);
t241 = pkin(3) * t296 + t286;
t500 = t127 * t504 + t241 * t430;
t126 = t183 * pkin(3) - t182 * qJ(4) + t297 * qJD(4);
t450 = t183 * rSges(5,1) + rSges(5,2) * t430 - t182 * rSges(5,3);
t129 = -rSges(5,2) * t440 + t450;
t499 = -t126 - t129;
t462 = qJD(5) * t342;
t498 = -rSges(6,3) * t430 + (-qJ(5) * t468 - t462) * t346 + t557;
t497 = t568 * t185 - t343 * t462 - t567 * t359 + t531;
t206 = (pkin(3) * t468 + qJ(4) * t465) * t344 + (qJ(4) * t468 + (-pkin(3) * qJD(3) + qJD(4)) * t342) * t341;
t406 = rSges(5,1) * t344 + rSges(5,3) * t341;
t230 = (-rSges(5,1) * t341 + rSges(5,3) * t344) * t465 + (rSges(5,2) * t342 + t345 * t406) * qJD(2);
t494 = -t206 - t230;
t493 = t568 * t296 - t567 * t506 + t534;
t492 = -t208 - t241;
t211 = t298 * rSges(5,1) + rSges(5,2) * t504 + t297 * rSges(5,3);
t242 = t298 * pkin(3) + t297 * qJ(4);
t490 = -t211 - t242;
t405 = rSges(6,1) * t344 + rSges(6,2) * t341;
t489 = (-rSges(6,1) * t341 + rSges(6,2) * t344) * t465 + (-rSges(6,3) * t342 + t345 * t405) * qJD(2) - qJ(5) * t470 + qJD(5) * t345 + t565 * pkin(4);
t407 = rSges(4,1) * t344 - rSges(4,2) * t341;
t231 = (-rSges(4,1) * t341 - rSges(4,2) * t344) * t465 + (rSges(4,3) * t342 + t345 * t407) * qJD(2);
t412 = pkin(7) * t342 + t537;
t308 = t412 * qJD(2);
t488 = -t231 - t308;
t299 = (pkin(3) * t344 + qJ(4) * t341) * t342;
t276 = t299 * t473;
t487 = t242 * t470 + t342 * t276;
t486 = t345 * t241 + t299 * t506;
t315 = -pkin(7) * t345 + t538;
t302 = t315 * t473;
t485 = t276 + t302;
t484 = pkin(4) * t505 + t342 * t405 + t573;
t278 = -rSges(5,2) * t345 + t342 * t406;
t483 = -t278 - t299;
t279 = -rSges(4,3) * t345 + t342 * t407;
t482 = -t279 - t315;
t300 = t412 * t343;
t330 = pkin(2) * t501;
t301 = pkin(7) * t504 + t330;
t481 = t343 * t300 + t346 * t301;
t479 = rSges(3,2) * t440 + rSges(3,3) * t471;
t322 = pkin(7) * t430;
t333 = pkin(6) * t471;
t478 = t322 + t333;
t477 = t346 * pkin(1) + t335;
t336 = t346 * pkin(6);
t476 = t336 - t286;
t475 = t343 ^ 2 + t346 ^ 2;
t265 = Icges(3,3) * t343 + t346 * t388;
t474 = qJD(1) * t265;
t461 = -pkin(3) - t568;
t460 = -pkin(7) + t567;
t220 = (-Icges(4,2) * t344 - t526) * t465 + (Icges(4,6) * t342 + t345 * t391) * qJD(2);
t458 = (-qJD(2) * t261 - t271 * t466) * t342 + (-t268 * t468 + (-qJD(3) * t273 - t220) * t342) * t341 + t551;
t454 = -t126 - t498;
t453 = t563 * t470;
t452 = t183 * rSges(4,1) + t182 * rSges(4,2) + rSges(4,3) * t430;
t449 = -t206 - t489;
t448 = -t308 + t494;
t447 = -t241 - t493;
t446 = -t242 - t491;
t321 = pkin(2) * t435;
t360 = -t343 * t472 - t433;
t445 = t343 * (pkin(7) * t359 + qJD(1) * t330 - t321) + t346 * (pkin(2) * t360 - pkin(7) * t440 + t322) + t300 * t471;
t444 = -t299 - t484;
t443 = -t315 + t483;
t212 = t298 * rSges(4,1) - t297 * rSges(4,2) + rSges(4,3) * t504;
t442 = t321 + t496;
t441 = -pkin(1) - t537;
t439 = t278 * t473;
t438 = t279 * t473;
t434 = t342 * t468;
t426 = t493 * t346;
t425 = t484 * t343;
t424 = t483 * t346;
t240 = t482 * t346;
t423 = qJD(1) * t484;
t422 = pkin(2) * t433;
t420 = t345 * t127 + t206 * t506 + t359 * t299;
t419 = -t308 + t449;
t418 = t343 * t241 + t346 * t242 + t481;
t417 = -t315 + t444;
t416 = t477 + t301;
t55 = t77 * t343 - t346 * t76;
t56 = t79 * t343 - t346 * t78;
t57 = t81 * t343 - t346 * t80;
t415 = t55 / 0.2e1 + t56 / 0.2e1 + t57 / 0.2e1;
t58 = t83 * t343 - t346 * t82;
t59 = t85 * t343 - t346 * t84;
t60 = t87 * t343 - t346 * t86;
t414 = -t59 / 0.2e1 - t60 / 0.2e1 - t58 / 0.2e1;
t413 = t346 * t444;
t164 = t443 * t346;
t411 = t343 * t423;
t410 = rSges(3,1) * t345 - rSges(3,2) * t342;
t409 = t185 * rSges(4,1) - t184 * rSges(4,2);
t392 = Icges(3,2) * t345 + t528;
t378 = -t212 * t343 + t516;
t377 = -t343 * t209 - t212 * t346;
t281 = rSges(3,1) * t501 + t556;
t160 = t417 * t346;
t371 = -pkin(1) - t410;
t370 = t346 * t126 + t343 * t127 + t241 * t471 + t445;
t368 = qJD(2) * t314;
t367 = t343 * t490 + t517;
t366 = t342 * t541 + t441;
t365 = t342 * t540 + t441;
t363 = qJD(2) * t392;
t362 = qJD(2) * (-Icges(3,5) * t342 - Icges(3,6) * t345);
t361 = -t345 * t457 + t553;
t357 = t242 + t416;
t356 = t342 * t460 + t441;
t355 = t366 * t343;
t354 = t365 * t343;
t353 = t126 + t478;
t50 = t184 * t266 + t185 * t271 - t213 * t506 + t295 * t218 + t296 * t223 - t261 * t359;
t51 = t184 * t262 + t185 * t272 + t295 * t214 + t219 * t506 + t296 * t224 + t267 * t359;
t52 = -t184 * t268 + t185 * t273 + t215 * t506 - t295 * t220 + t296 * t225 + t263 * t359;
t352 = t31 / 0.2e1 + t33 / 0.2e1 + t35 / 0.2e1 + t50 / 0.2e1 + t51 / 0.2e1 + t52 / 0.2e1;
t47 = -t182 * t266 + t183 * t271 - t213 * t504 + t297 * t218 + t298 * t223 + t261 * t358;
t48 = -t182 * t262 + t183 * t272 + t297 * t214 + t219 * t504 + t298 * t224 - t267 * t358;
t49 = t182 * t268 + t183 * t273 + t215 * t504 - t297 * t220 + t298 * t225 - t263 * t358;
t351 = t47 / 0.2e1 + t48 / 0.2e1 + t49 / 0.2e1 + t32 / 0.2e1 + t34 / 0.2e1 + t36 / 0.2e1;
t350 = t136 / 0.2e1 + t137 / 0.2e1 + t138 / 0.2e1 + t93 / 0.2e1 + t95 / 0.2e1 + t97 / 0.2e1;
t349 = -t94 / 0.2e1 - t96 / 0.2e1 - t98 / 0.2e1 - t139 / 0.2e1 - t140 / 0.2e1 - t141 / 0.2e1;
t348 = t343 * t446 + t426;
t338 = t342 ^ 2;
t306 = t410 * qJD(2);
t303 = t388 * qJD(2);
t280 = t343 * t410 - t533;
t245 = t281 + t477;
t244 = t343 * t371 + t336 + t533;
t239 = t482 * t343;
t228 = t241 * t504;
t217 = t343 * t362 + t474;
t216 = -qJD(1) * t264 + t346 * t362;
t166 = t314 * t469 + ((-rSges(3,3) - pkin(6)) * t343 + t371 * t346) * qJD(1);
t165 = rSges(3,1) * t360 - rSges(3,2) * t430 - pkin(1) * t473 + t333 + t479;
t163 = t443 * t343;
t162 = t416 + t212;
t161 = t336 + t354 + t408;
t159 = t417 * t343;
t158 = -t345 * t212 - t279 * t504;
t157 = t209 * t345 + t279 * t506;
t154 = t343 * t265 - t373 * t346;
t153 = t343 * t264 - t560;
t152 = -t265 * t346 - t562;
t151 = -t264 * t346 - t343 * t374;
t144 = t378 * t342;
t143 = qJD(1) * t240 + t343 * t488;
t142 = t346 * t488 + t302 + t438;
t135 = t357 + t211;
t134 = t296 * t542 + t355 + t476 - t532;
t133 = rSges(4,3) * t359 + t409;
t132 = t185 * rSges(5,1) + rSges(5,2) * t359 + t530;
t130 = -rSges(4,3) * t440 + t452;
t103 = t357 + t491;
t102 = t296 * t461 + t343 * t356 + t476 - t534;
t101 = -t377 + t481;
t100 = t342 * t424 + t345 * t490;
t99 = t208 * t345 + t278 * t506 + t486;
t91 = t321 + t540 * t432 + (t346 * t365 - t335) * qJD(1) - t409;
t90 = qJD(1) * t354 - t422 + t452 + t478;
t89 = qJD(1) * t164 + t343 * t448;
t88 = t346 * t448 + t439 + t485;
t75 = t342 * t413 + t345 * t446;
t74 = t342 * t425 + t345 * t493 + t486;
t73 = t342 * t367 + t228;
t72 = t343 * t208 + t211 * t346 + t418;
t71 = qJD(1) * t160 + t343 * t419;
t70 = t346 * t419 + t411 + t485;
t69 = t342 * t348 + t228;
t68 = t343 * t493 + t346 * t491 + t418;
t67 = (t279 * t469 + t133) * t345 + (-qJD(2) * t209 + t343 * t231 + t279 * t471) * t342;
t66 = (-t279 * t467 - t130) * t345 + (qJD(2) * t212 - t231 * t346 + t438) * t342;
t65 = -t530 + t542 * t185 + t541 * t432 + (t346 * t366 - t335) * qJD(1) + t442;
t64 = qJD(1) * t355 + t353 - t422 + t450;
t54 = -t531 + t461 * t185 + (t460 * t468 + t462) * t343 + (t346 * t356 - t335) * qJD(1) + t442;
t53 = (-pkin(1) - t412) * t473 + (-t462 + (-t538 - t573) * qJD(2)) * t346 + t353 + t557;
t46 = t378 * t468 + (qJD(1) * t377 - t130 * t343 + t133 * t346) * t342;
t45 = t130 * t346 + t343 * t133 + (t516 + (-t212 - t301) * t343) * qJD(1) + t445;
t38 = (t278 * t469 + t132) * t345 + (qJD(2) * t492 + t343 * t230 + t278 * t471) * t342 + t420;
t37 = (qJD(2) * t424 + t499) * t345 + (qJD(2) * t211 + t346 * t494 + t439) * t342 + t487;
t30 = t112 * t506 - t295 * t118 + t296 * t124 - t184 * t198 + t185 * t204 + t192 * t359;
t29 = t113 * t506 - t295 * t119 + t296 * t125 - t184 * t197 + t185 * t203 + t191 * t359;
t28 = t295 * t110 + t116 * t506 + t296 * t122 + t184 * t190 + t185 * t202 + t196 * t359;
t27 = t295 * t111 + t117 * t506 + t296 * t123 + t184 * t189 + t185 * t201 + t195 * t359;
t26 = -t108 * t506 + t295 * t114 + t296 * t120 + t184 * t194 + t185 * t200 - t188 * t359;
t25 = -t109 * t506 + t295 * t115 + t296 * t121 + t184 * t193 + t185 * t199 - t187 * t359;
t24 = t112 * t504 - t297 * t118 + t298 * t124 + t182 * t198 + t183 * t204 - t192 * t358;
t23 = t113 * t504 - t297 * t119 + t298 * t125 + t182 * t197 + t183 * t203 - t191 * t358;
t22 = t297 * t110 + t116 * t504 + t298 * t122 - t182 * t190 + t183 * t202 - t196 * t358;
t21 = t297 * t111 + t117 * t504 + t298 * t123 - t182 * t189 + t183 * t201 - t195 * t358;
t20 = -t108 * t504 + t297 * t114 + t298 * t120 - t182 * t194 + t183 * t200 + t188 * t358;
t19 = -t109 * t504 + t297 * t115 + t298 * t121 - t182 * t193 + t183 * t199 + t187 * t358;
t18 = (qJD(2) * t425 + t497) * t345 + (qJD(2) * t447 + t343 * t489 + t346 * t423) * t342 + t420;
t17 = (qJD(2) * t413 + t454) * t345 + (qJD(2) * t491 + t346 * t449 + t411) * t342 + t487;
t16 = t129 * t346 + t343 * t132 + (t517 + (-t301 + t490) * t343) * qJD(1) + t370;
t15 = t367 * t468 + (t132 * t346 + t499 * t343 + (t343 * t492 + t346 * t490) * qJD(1)) * t342 + t500;
t14 = t498 * t346 + t497 * t343 + (t426 + (-t301 + t446) * t343) * qJD(1) + t370;
t13 = t348 * t468 + (t497 * t346 + t454 * t343 + (t343 * t447 + t346 * t446) * qJD(1)) * t342 + t500;
t12 = qJD(1) * t402 - t29 * t346 + t30 * t343;
t11 = qJD(1) * t403 - t27 * t346 + t28 * t343;
t10 = qJD(1) * t404 - t25 * t346 + t26 * t343;
t9 = qJD(1) * t399 - t23 * t346 + t24 * t343;
t8 = qJD(1) * t400 - t21 * t346 + t22 * t343;
t7 = qJD(1) * t401 - t19 * t346 + t20 * t343;
t6 = (qJD(2) * t402 - t52) * t345 + (-qJD(1) * t57 + qJD(2) * t138 + t29 * t343 + t30 * t346) * t342;
t5 = (qJD(2) * t403 - t51) * t345 + (-qJD(1) * t56 + qJD(2) * t137 + t27 * t343 + t28 * t346) * t342;
t4 = (qJD(2) * t404 - t50) * t345 + (-qJD(1) * t55 + qJD(2) * t136 + t25 * t343 + t26 * t346) * t342;
t3 = (qJD(2) * t399 - t49) * t345 + (-qJD(1) * t60 + qJD(2) * t141 + t23 * t343 + t24 * t346) * t342;
t2 = (qJD(2) * t400 - t48) * t345 + (-qJD(1) * t59 + qJD(2) * t140 + t21 * t343 + t22 * t346) * t342;
t1 = (qJD(2) * t401 - t47) * t345 + (-qJD(1) * t58 + qJD(2) * t139 + t19 * t343 + t20 * t346) * t342;
t39 = [(t165 * t245 + t166 * t244) * t549 + (t161 * t91 + t162 * t90) * t548 + (t134 * t65 + t135 * t64) * t547 + (t102 * t54 + t103 * t53) * t546 - t220 * t507 - t268 * t436 + (Icges(3,1) * t342 + t393 + t527) * t468 - t570 * t429 + (-t261 - t392 + t398) * t470 + t551; m(4) * (t142 * t161 + t143 * t162 + t239 * t90 + t240 * t91) + m(6) * (t102 * t70 + t103 * t71 + t159 * t53 + t160 * t54) + m(5) * (t134 * t88 + t135 * t89 + t163 * t64 + t164 * t65) + (m(3) * (-t166 * t314 - t244 * t306) + (qJD(1) * t270 - t343 * t363) * t544 + t275 * t569 + t303 * t543 + (t515 / 0.2e1 - t510 / 0.2e1) * qJD(2) - t352) * t346 + (m(3) * (-t165 * t314 - t245 * t306) + (-t269 * qJD(1) - t346 * t363) * t345 / 0.2e1 + t274 * t569 + t303 * t545 + (-t513 / 0.2e1 + t508 / 0.2e1) * qJD(2) + t351) * t343 + ((t512 / 0.2e1 + t509 / 0.2e1 - t245 * t539 - t349) * t346 + (t244 * t539 + t514 / 0.2e1 + t511 / 0.2e1 + t350) * t343) * qJD(1); (t14 * t68 + t159 * t71 + t160 * t70) * t546 + (t16 * t72 + t163 * t89 + t164 * t88) * t547 + t343 * t8 - t346 * t10 - t346 * t12 + t343 * t7 + t343 * t9 - t346 * t11 + (t101 * t45 + t142 * t240 + t143 * t239) * t548 - t346 * ((t346 * t217 + (t152 + t560) * qJD(1)) * t346 + (t151 * qJD(1) + (-t270 * t468 - t275 * t470 + t474) * t343 + (-t216 + (t511 + t514) * qJD(2) - t373 * qJD(1)) * t346) * t343) + t343 * ((t343 * t216 + (t153 + t562) * qJD(1)) * t343 + (t154 * qJD(1) + (t269 * t468 + t274 * t470) * t346 + (-t217 + (-t509 - t512) * qJD(2) + (t265 - t374) * qJD(1)) * t343) * t346) + ((t343 * t280 + t281 * t346) * ((qJD(1) * t280 - t346 * t368 + t479) * t346 + (-t343 * t368 + (-t281 + t556) * qJD(1)) * t343) + t475 * t314 * t306) * t549 + (-t151 * t346 + t152 * t343 + t55 + t56 + t57) * t473 + (-t153 * t346 + t154 * t343 + t58 + t59 + t60) * t471; m(4) * (t157 * t91 + t158 * t90 + t161 * t67 + t162 * t66) + m(5) * (t100 * t64 + t134 * t38 + t135 * t37 + t65 * t99) + m(6) * (t102 * t18 + t103 * t17 + t53 * t75 + t54 * t74) + ((t343 * t350 - t346 * t349) * qJD(2) - t458) * t345 + (t351 * t346 + t352 * t343 + (t343 * t349 + t346 * t350) * qJD(1)) * t342 - t453; m(4) * (t101 * t46 + t142 * t157 + t143 * t158 + t144 * t45 + t239 * t66 + t240 * t67) + m(6) * (t13 * t68 + t14 * t69 + t159 * t17 + t160 * t18 + t70 * t74 + t71 * t75) + m(5) * (t100 * t89 + t15 * t72 + t16 * t73 + t163 * t37 + t164 * t38 + t88 * t99) + (-t6 / 0.2e1 - t5 / 0.2e1 - t4 / 0.2e1 - t414 * t468) * t346 + (t2 / 0.2e1 + t3 / 0.2e1 + t1 / 0.2e1 + t415 * t468) * t343 + (t456 * t343 - t457 * t346) * t470 / 0.2e1 + (t564 * qJD(1) + t554 * t343 + t555 * t346) * t544 + (t553 * t343 + t552 * t346) * qJD(1) / 0.2e1 + ((t343 * t414 + t346 * t415) * qJD(1) + (t10 + t11 + t12) * t545 + (t7 + t8 + t9) * t543) * t342; (t144 * t46 + t157 * t67 + t158 * t66) * t548 + (t100 * t37 + t15 * t73 + t38 * t99) * t547 + (t13 * t69 + t17 * t75 + t18 * t74) * t546 + (t458 * t345 + (t361 * t343 - t550 * t346) * qJD(2) + t453) * t345 + ((-t554 * t345 + t1 + t2 + t3) * t346 + (t555 * t345 + t4 + t5 + t6) * t343 + (t564 * t342 + t563 * t345) * qJD(2) + (t550 * t343 + t361 * t346) * qJD(1)) * t342; m(6) * (-t102 * t182 + t103 * t184 + t295 * t53 + t297 * t54) + m(5) * (-t134 * t182 + t135 * t184 + t295 * t64 + t297 * t65); m(6) * (t68 * t428 + t159 * t184 - t160 * t182 + t295 * t71 + t297 * t70 + (t14 * t342 + t468 * t68) * t341) + m(5) * (t72 * t428 + t163 * t184 - t164 * t182 + t295 * t89 + t297 * t88 + (t16 * t342 + t468 * t72) * t341); m(5) * (t73 * t428 + t100 * t184 - t182 * t99 + t295 * t37 + t297 * t38 + (t15 * t342 + t468 * t73) * t341) + m(6) * (t69 * t428 + t17 * t295 + t18 * t297 - t182 * t74 + t184 * t75 + (t13 * t342 + t468 * t69) * t341); 0.4e1 * (m(5) / 0.2e1 + m(6) / 0.2e1) * (-t182 * t297 + t184 * t295 + (t338 * t464 + t341 * t434) * t341); m(6) * ((-t102 * t346 - t103 * t343) * t468 + (-t343 * t53 - t346 * t54 + (t102 * t343 - t103 * t346) * qJD(1)) * t342); m(6) * ((t14 + (-t159 * t343 - t160 * t346) * qJD(2)) * t345 + (-qJD(2) * t68 - t343 * t71 - t346 * t70 + (-t159 * t346 + t160 * t343) * qJD(1)) * t342); m(6) * ((t13 + (-t343 * t75 - t346 * t74) * qJD(2)) * t345 + (-qJD(2) * t69 - t17 * t343 - t18 * t346 + (t343 * t74 - t346 * t75) * qJD(1)) * t342); m(6) * ((-t338 * t341 + (-t295 * t343 - t297 * t346 + t341 * t345) * t345) * qJD(2) + (t427 + t182 * t346 - t184 * t343 + (-t295 * t346 + t297 * t343) * qJD(1)) * t342); (-0.1e1 + t475) * t434 * t546;];
%% Postprocessing: Reshape Output
% From vec2symmat_5_matlab.m
res = [t39(1), t39(2), t39(4), t39(7), t39(11); t39(2), t39(3), t39(5), t39(8), t39(12); t39(4), t39(5), t39(6), t39(9), t39(13); t39(7), t39(8), t39(9), t39(10), t39(14); t39(11), t39(12), t39(13), t39(14), t39(15);];
Mq = res;
