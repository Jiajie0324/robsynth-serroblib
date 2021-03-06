% Calculate time derivative of joint inertia matrix for
% S5RRRPR12
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,d1,d2,d3,d5,theta4]';
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
% Datum: 2019-12-31 21:42
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S5RRRPR12_inertiaDJ_slag_vp11(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(10,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRPR12_inertiaDJ_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRPR12_inertiaDJ_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S5RRRPR12_inertiaDJ_slag_vp1: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRRPR12_inertiaDJ_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RRRPR12_inertiaDJ_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RRRPR12_inertiaDJ_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 21:37:07
% EndTime: 2019-12-31 21:37:57
% DurationCPUTime: 24.78s
% Computational Cost: add. (64327->1145), mult. (154574->1545), div. (0->0), fcn. (172929->12), ass. (0->461)
t439 = cos(pkin(5));
t441 = sin(qJ(3));
t442 = sin(qJ(2));
t437 = sin(pkin(5));
t550 = cos(qJ(3));
t491 = t437 * t550;
t412 = t439 * t441 + t442 * t491;
t551 = cos(qJ(2));
t480 = qJD(2) * t551;
t469 = t437 * t480;
t385 = qJD(3) * t412 + t441 * t469;
t540 = t437 * t442;
t411 = -t439 * t550 + t441 * t540;
t386 = -qJD(3) * t411 + t469 * t550;
t511 = qJD(2) * t442;
t483 = t437 * t511;
t312 = Icges(4,5) * t386 - Icges(4,6) * t385 + Icges(4,3) * t483;
t313 = Icges(4,4) * t386 - Icges(4,2) * t385 + Icges(4,6) * t483;
t314 = Icges(4,1) * t386 - Icges(4,4) * t385 + Icges(4,5) * t483;
t492 = t437 * t551;
t342 = Icges(4,5) * t412 - Icges(4,6) * t411 - Icges(4,3) * t492;
t343 = Icges(4,4) * t412 - Icges(4,2) * t411 - Icges(4,6) * t492;
t344 = Icges(4,1) * t412 - Icges(4,4) * t411 - Icges(4,5) * t492;
t122 = -t312 * t492 - t411 * t313 + t412 * t314 + t342 * t483 - t385 * t343 + t386 * t344;
t436 = sin(pkin(10));
t438 = cos(pkin(10));
t340 = -t386 * t436 + t438 * t483;
t471 = t436 * t483;
t341 = t386 * t438 + t471;
t247 = Icges(5,5) * t341 + Icges(5,6) * t340 + Icges(5,3) * t385;
t248 = Icges(5,4) * t341 + Icges(5,2) * t340 + Icges(5,6) * t385;
t249 = Icges(5,1) * t341 + Icges(5,4) * t340 + Icges(5,5) * t385;
t383 = -t412 * t436 - t438 * t492;
t473 = t436 * t492;
t384 = t412 * t438 - t473;
t286 = Icges(5,5) * t384 + Icges(5,6) * t383 + Icges(5,3) * t411;
t287 = Icges(5,4) * t384 + Icges(5,2) * t383 + Icges(5,6) * t411;
t288 = Icges(5,1) * t384 + Icges(5,4) * t383 + Icges(5,5) * t411;
t82 = t411 * t247 + t383 * t248 + t384 * t249 + t385 * t286 + t340 * t287 + t341 * t288;
t572 = t122 + t82;
t443 = sin(qJ(1));
t490 = t443 * t551;
t444 = cos(qJ(1));
t536 = t444 * t442;
t455 = -t439 * t536 - t490;
t538 = t437 * t444;
t388 = -t441 * t538 - t455 * t550;
t489 = t444 * t551;
t472 = t439 * t489;
t537 = t443 * t442;
t454 = t472 - t537;
t335 = -t388 * t436 - t438 * t454;
t542 = t454 * t436;
t336 = t388 * t438 - t542;
t456 = t441 * t455 - t444 * t491;
t228 = Icges(5,5) * t336 + Icges(5,6) * t335 - Icges(5,3) * t456;
t230 = Icges(5,4) * t336 + Icges(5,2) * t335 - Icges(5,6) * t456;
t232 = Icges(5,1) * t336 + Icges(5,4) * t335 - Icges(5,5) * t456;
t106 = t228 * t411 + t230 * t383 + t232 * t384;
t296 = Icges(4,5) * t388 + Icges(4,6) * t456 - Icges(4,3) * t454;
t298 = Icges(4,4) * t388 + Icges(4,2) * t456 - Icges(4,6) * t454;
t300 = Icges(4,1) * t388 + Icges(4,4) * t456 - Icges(4,5) * t454;
t159 = -t296 * t492 - t411 * t298 + t412 * t300;
t568 = t106 + t159;
t416 = -t439 * t537 + t489;
t539 = t437 * t443;
t390 = t416 * t550 + t441 * t539;
t457 = -t439 * t490 - t536;
t337 = -t390 * t436 - t438 * t457;
t541 = t457 * t436;
t338 = t390 * t438 - t541;
t458 = -t416 * t441 + t443 * t491;
t229 = Icges(5,5) * t338 + Icges(5,6) * t337 - Icges(5,3) * t458;
t231 = Icges(5,4) * t338 + Icges(5,2) * t337 - Icges(5,6) * t458;
t233 = Icges(5,1) * t338 + Icges(5,4) * t337 - Icges(5,5) * t458;
t107 = t229 * t411 + t231 * t383 + t233 * t384;
t297 = Icges(4,5) * t390 + Icges(4,6) * t458 - Icges(4,3) * t457;
t299 = Icges(4,4) * t390 + Icges(4,2) * t458 - Icges(4,6) * t457;
t301 = Icges(4,1) * t390 + Icges(4,4) * t458 - Icges(4,5) * t457;
t160 = -t297 * t492 - t411 * t299 + t412 * t301;
t567 = t107 + t160;
t571 = t572 * t439;
t366 = qJD(1) * t455 + qJD(2) * t457;
t513 = qJD(1) * t444;
t484 = t437 * t513;
t290 = qJD(3) * t458 + t366 * t550 + t441 * t484;
t435 = pkin(10) + qJ(5);
t432 = sin(t435);
t433 = cos(t435);
t329 = t390 * t433 - t432 * t457;
t365 = -qJD(1) * t472 - t444 * t480 + (qJD(2) * t439 + qJD(1)) * t537;
t196 = -qJD(5) * t329 - t290 * t432 - t365 * t433;
t328 = -t390 * t432 - t433 * t457;
t197 = qJD(5) * t328 + t290 * t433 - t365 * t432;
t470 = qJD(1) * t491;
t289 = qJD(3) * t390 + t366 * t441 - t444 * t470;
t119 = t197 * rSges(6,1) + t196 * rSges(6,2) + t289 * rSges(6,3);
t431 = pkin(4) * t438 + pkin(3);
t440 = -pkin(9) - qJ(4);
t544 = t365 * t436;
t570 = -pkin(4) * t544 - t289 * t440 + t290 * t431 + t119;
t221 = t329 * rSges(6,1) + t328 * rSges(6,2) - rSges(6,3) * t458;
t569 = -pkin(4) * t541 + t390 * t431 + t440 * t458 + t221;
t477 = t290 * pkin(3) + qJ(4) * t289;
t534 = -t477 + t570;
t368 = qJD(1) * t416 + qJD(2) * t454;
t291 = t388 * qJD(3) + t368 * t441 - t443 * t470;
t514 = qJD(1) * t443;
t485 = t437 * t514;
t292 = qJD(3) * t456 + t368 * t550 + t441 * t485;
t327 = t388 * t433 - t432 * t454;
t367 = -qJD(1) * t457 - qJD(2) * t455;
t198 = -qJD(5) * t327 - t292 * t432 + t367 * t433;
t326 = -t388 * t432 - t433 * t454;
t199 = qJD(5) * t326 + t292 * t433 + t367 * t432;
t465 = -t199 * rSges(6,1) - t198 * rSges(6,2);
t120 = t291 * rSges(6,3) - t465;
t278 = t291 * qJ(4);
t543 = t367 * t436;
t508 = pkin(4) * t543;
t548 = -pkin(3) + t431;
t533 = -t291 * t440 + t292 * t548 + t120 - t278 + t508;
t464 = -rSges(6,1) * t327 - rSges(6,2) * t326;
t220 = -rSges(6,3) * t456 - t464;
t377 = t456 * qJ(4);
t509 = pkin(4) * t542;
t528 = t388 * t548 + t440 * t456 + t220 + t377 - t509;
t323 = t390 * pkin(3) - qJ(4) * t458;
t527 = -t323 + t569;
t566 = t292 * pkin(3) + t278;
t434 = t444 * pkin(1);
t515 = pkin(7) * t539 + t434;
t212 = Icges(6,5) * t327 + Icges(6,6) * t326 - Icges(6,3) * t456;
t214 = Icges(6,4) * t327 + Icges(6,2) * t326 - Icges(6,6) * t456;
t216 = Icges(6,1) * t327 + Icges(6,4) * t326 - Icges(6,5) * t456;
t373 = -t412 * t432 - t433 * t492;
t459 = -t412 * t433 + t432 * t492;
t103 = t212 * t411 + t214 * t373 - t216 * t459;
t213 = Icges(6,5) * t329 + Icges(6,6) * t328 - Icges(6,3) * t458;
t215 = Icges(6,4) * t329 + Icges(6,2) * t328 - Icges(6,6) * t458;
t217 = Icges(6,1) * t329 + Icges(6,4) * t328 - Icges(6,5) * t458;
t104 = t213 * t411 + t215 * t373 - t217 * t459;
t114 = Icges(6,5) * t199 + Icges(6,6) * t198 + Icges(6,3) * t291;
t116 = Icges(6,4) * t199 + Icges(6,2) * t198 + Icges(6,6) * t291;
t118 = Icges(6,1) * t199 + Icges(6,4) * t198 + Icges(6,5) * t291;
t276 = qJD(5) * t459 - t386 * t432 + t433 * t483;
t277 = qJD(5) * t373 + t386 * t433 + t432 * t483;
t30 = t114 * t411 + t116 * t373 - t118 * t459 + t212 * t385 + t214 * t276 + t216 * t277;
t113 = Icges(6,5) * t197 + Icges(6,6) * t196 + Icges(6,3) * t289;
t115 = Icges(6,4) * t197 + Icges(6,2) * t196 + Icges(6,6) * t289;
t117 = Icges(6,1) * t197 + Icges(6,4) * t196 + Icges(6,5) * t289;
t31 = t113 * t411 + t115 * t373 - t117 * t459 + t213 * t385 + t215 * t276 + t217 * t277;
t184 = Icges(6,5) * t277 + Icges(6,6) * t276 + Icges(6,3) * t385;
t185 = Icges(6,4) * t277 + Icges(6,2) * t276 + Icges(6,6) * t385;
t186 = Icges(6,1) * t277 + Icges(6,4) * t276 + Icges(6,5) * t385;
t259 = -Icges(6,5) * t459 + Icges(6,6) * t373 + Icges(6,3) * t411;
t260 = -Icges(6,4) * t459 + Icges(6,2) * t373 + Icges(6,6) * t411;
t261 = -Icges(6,1) * t459 + Icges(6,4) * t373 + Icges(6,5) * t411;
t62 = t411 * t184 + t373 * t185 - t186 * t459 + t385 * t259 + t276 * t260 + t277 * t261;
t61 = t62 * t439;
t11 = t61 + (-t30 * t444 + t31 * t443 + (t103 * t443 + t104 * t444) * qJD(1)) * t437;
t243 = -t292 * t436 + t367 * t438;
t244 = t292 * t438 + t543;
t140 = Icges(5,5) * t244 + Icges(5,6) * t243 + Icges(5,3) * t291;
t142 = Icges(5,4) * t244 + Icges(5,2) * t243 + Icges(5,6) * t291;
t144 = Icges(5,1) * t244 + Icges(5,4) * t243 + Icges(5,5) * t291;
t42 = t140 * t411 + t142 * t383 + t144 * t384 + t228 * t385 + t230 * t340 + t232 * t341;
t241 = -t290 * t436 - t365 * t438;
t242 = t290 * t438 - t544;
t139 = Icges(5,5) * t242 + Icges(5,6) * t241 + Icges(5,3) * t289;
t141 = Icges(5,4) * t242 + Icges(5,2) * t241 + Icges(5,6) * t289;
t143 = Icges(5,1) * t242 + Icges(5,4) * t241 + Icges(5,5) * t289;
t43 = t139 * t411 + t141 * t383 + t143 * t384 + t229 * t385 + t231 * t340 + t233 * t341;
t174 = Icges(4,5) * t292 - Icges(4,6) * t291 + Icges(4,3) * t367;
t176 = Icges(4,4) * t292 - Icges(4,2) * t291 + Icges(4,6) * t367;
t178 = Icges(4,1) * t292 - Icges(4,4) * t291 + Icges(4,5) * t367;
t73 = -t411 * t176 + t412 * t178 - t385 * t298 + t386 * t300 + (-t174 * t551 + t296 * t511) * t437;
t173 = Icges(4,5) * t290 - Icges(4,6) * t289 - Icges(4,3) * t365;
t175 = Icges(4,4) * t290 - Icges(4,2) * t289 - Icges(4,6) * t365;
t177 = Icges(4,1) * t290 - Icges(4,4) * t289 - Icges(4,5) * t365;
t74 = -t411 * t175 + t412 * t177 - t385 * t299 + t386 * t301 + (-t173 * t551 + t297 * t511) * t437;
t565 = t11 + t571 + ((-t42 - t73) * t444 + (t43 + t74) * t443 + (t568 * t443 + t567 * t444) * qJD(1)) * t437;
t564 = -t62 - t572;
t563 = 2 * m(3);
t562 = 2 * m(4);
t561 = 2 * m(5);
t560 = 2 * m(6);
t559 = t289 / 0.2e1;
t558 = t291 / 0.2e1;
t557 = t385 / 0.2e1;
t556 = -t456 / 0.2e1;
t555 = -t458 / 0.2e1;
t554 = t411 / 0.2e1;
t553 = t443 / 0.2e1;
t552 = -t444 / 0.2e1;
t547 = -rSges(6,3) + t440;
t137 = t259 * t411 + t260 * t373 - t261 * t459;
t546 = t137 * t385 + t62 * t411;
t545 = Icges(3,4) * t442;
t535 = -qJ(4) - t440;
t376 = t456 * qJD(4);
t190 = -t376 + t566;
t322 = pkin(3) * t388 - t377;
t532 = -t190 * t457 - t365 * t322;
t187 = rSges(6,1) * t277 + rSges(6,2) * t276 + rSges(6,3) * t385;
t531 = pkin(4) * t471 + t385 * t535 + t386 * t548 + t187;
t510 = qJD(4) * t458;
t189 = t477 - t510;
t305 = t366 * pkin(2) - pkin(8) * t365;
t295 = t439 * t305;
t530 = t439 * t189 + t295;
t306 = t368 * pkin(2) + t367 * pkin(8);
t529 = -t190 - t306;
t234 = rSges(5,1) * t336 + rSges(5,2) * t335 - rSges(5,3) * t456;
t526 = -t234 - t322;
t235 = t338 * rSges(5,1) + t337 * rSges(5,2) - rSges(5,3) * t458;
t525 = -t235 - t323;
t250 = rSges(5,1) * t341 + rSges(5,2) * t340 + rSges(5,3) * t385;
t294 = pkin(3) * t386 + qJ(4) * t385 + qJD(4) * t411;
t524 = -t250 - t294;
t262 = -rSges(6,1) * t459 + rSges(6,2) * t373 + rSges(6,3) * t411;
t523 = -pkin(4) * t473 + t411 * t535 + t412 * t548 + t262;
t293 = rSges(5,1) * t384 + rSges(5,2) * t383 + rSges(5,3) * t411;
t369 = t412 * pkin(3) + t411 * qJ(4);
t522 = t293 + t369;
t315 = rSges(4,1) * t386 - rSges(4,2) * t385 + rSges(4,3) * t483;
t512 = qJD(2) * t437;
t405 = (pkin(2) * t551 + pkin(8) * t442) * t512;
t521 = -t315 - t405;
t520 = t322 * t492 - t369 * t454;
t372 = t416 * pkin(2) - pkin(8) * t457;
t359 = t439 * t372;
t519 = t439 * t323 + t359;
t417 = (pkin(2) * t442 - pkin(8) * t551) * t437;
t394 = t417 * t485;
t518 = t369 * t485 + t394;
t346 = t412 * rSges(4,1) - t411 * rSges(4,2) - rSges(4,3) * t492;
t517 = -t346 - t417;
t371 = -pkin(2) * t455 - pkin(8) * t454;
t516 = t371 * t539 + t372 * t538;
t507 = -t551 / 0.2e1;
t53 = -t184 * t458 + t185 * t328 + t186 * t329 + t196 * t260 + t197 * t261 + t259 * t289;
t506 = t53 / 0.2e1 + t31 / 0.2e1;
t54 = -t184 * t456 + t185 * t326 + t186 * t327 + t198 * t260 + t199 * t261 + t259 * t291;
t505 = t54 / 0.2e1 + t30 / 0.2e1;
t503 = t190 * t492 - t294 * t454 + t367 * t369;
t502 = -t294 - t531;
t501 = -t322 - t528;
t500 = -t323 - t527;
t145 = t242 * rSges(5,1) + t241 * rSges(5,2) + t289 * rSges(5,3);
t499 = -t405 + t524;
t498 = t369 + t523;
t179 = t290 * rSges(4,1) - t289 * rSges(4,2) - t365 * rSges(4,3);
t496 = t305 * t538 + t306 * t539 + t371 * t484;
t495 = -t417 - t522;
t273 = t366 * rSges(3,1) + t365 * rSges(3,2) + rSges(3,3) * t484;
t303 = t390 * rSges(4,1) + rSges(4,2) * t458 - rSges(4,3) * t457;
t354 = t416 * rSges(3,1) + rSges(3,2) * t457 + rSges(3,3) * t539;
t488 = t551 * Icges(3,4);
t487 = t551 * t189;
t486 = t551 * t323;
t123 = -t259 * t456 + t260 * t326 + t261 * t327;
t482 = t123 / 0.2e1 + t103 / 0.2e1;
t124 = -t259 * t458 + t260 * t328 + t261 * t329;
t481 = t124 / 0.2e1 + t104 / 0.2e1;
t479 = -t443 * pkin(1) + pkin(7) * t538;
t478 = t517 * t444;
t476 = -t405 + t502;
t475 = -t417 - t498;
t474 = t322 * t539 + t323 * t538 + t516;
t468 = -pkin(1) * t514 + pkin(7) * t484;
t467 = t495 * t444;
t466 = -t368 * rSges(3,1) + t367 * rSges(3,2);
t463 = t372 + t515;
t462 = t475 * t444;
t461 = t189 * t538 + t190 * t539 + t322 * t484 + t496;
t460 = -t371 + t479;
t180 = t292 * rSges(4,1) - t291 * rSges(4,2) + t367 * rSges(4,3);
t302 = rSges(4,1) * t388 + rSges(4,2) * t456 - rSges(4,3) * t454;
t146 = t244 * rSges(5,1) + t243 * rSges(5,2) + t291 * rSges(5,3);
t453 = t305 + t468;
t353 = -rSges(3,1) * t455 + rSges(3,2) * t454 - rSges(3,3) * t538;
t68 = t243 * t287 + t244 * t288 - t247 * t456 + t248 * t335 + t249 * t336 + t286 * t291;
t94 = -t291 * t343 + t292 * t344 - t312 * t454 + t313 * t456 + t314 * t388 + t342 * t367;
t452 = t73 / 0.2e1 + t42 / 0.2e1 + t94 / 0.2e1 + t68 / 0.2e1 + t505;
t67 = t241 * t287 + t242 * t288 - t247 * t458 + t248 * t337 + t249 * t338 + t286 * t289;
t93 = -t289 * t343 + t290 * t344 - t312 * t457 + t313 * t458 + t314 * t390 - t342 * t365;
t451 = t74 / 0.2e1 + t43 / 0.2e1 + t93 / 0.2e1 + t67 / 0.2e1 + t506;
t397 = Icges(3,6) * t439 + (Icges(3,2) * t551 + t545) * t437;
t398 = Icges(3,5) * t439 + (Icges(3,1) * t442 + t488) * t437;
t401 = (Icges(3,5) * t551 - Icges(3,6) * t442) * t512;
t402 = (-Icges(3,2) * t442 + t488) * t512;
t403 = (Icges(3,1) * t551 - t545) * t512;
t450 = -t397 * t483 + t398 * t469 + t439 * t401 + t402 * t492 + t403 * t540;
t128 = -t286 * t456 + t287 * t335 + t288 * t336;
t171 = -t342 * t454 + t343 * t456 + t344 * t388;
t449 = t159 / 0.2e1 + t106 / 0.2e1 + t128 / 0.2e1 + t171 / 0.2e1 + t482;
t129 = -t286 * t458 + t287 * t337 + t288 * t338;
t172 = -t342 * t457 + t343 * t458 + t344 * t390;
t448 = -t160 / 0.2e1 - t107 / 0.2e1 - t129 / 0.2e1 - t172 / 0.2e1 - t481;
t447 = t453 - t510;
t446 = -t515 * qJD(1) - t306;
t445 = t376 + t446;
t404 = (rSges(3,1) * t551 - rSges(3,2) * t442) * t512;
t399 = t439 * rSges(3,3) + (rSges(3,1) * t442 + rSges(3,2) * t551) * t437;
t396 = Icges(3,3) * t439 + (Icges(3,5) * t442 + Icges(3,6) * t551) * t437;
t352 = Icges(3,1) * t416 + Icges(3,4) * t457 + Icges(3,5) * t539;
t351 = -Icges(3,1) * t455 + Icges(3,4) * t454 - Icges(3,5) * t538;
t350 = Icges(3,4) * t416 + Icges(3,2) * t457 + Icges(3,6) * t539;
t349 = -Icges(3,4) * t455 + Icges(3,2) * t454 - Icges(3,6) * t538;
t348 = Icges(3,5) * t416 + Icges(3,6) * t457 + Icges(3,3) * t539;
t347 = -Icges(3,5) * t455 + Icges(3,6) * t454 - Icges(3,3) * t538;
t331 = t354 + t515;
t330 = -t353 + t479;
t316 = t323 * t483;
t310 = -t439 * t353 - t399 * t538;
t309 = t354 * t439 - t399 * t539;
t304 = t457 * t322;
t274 = rSges(3,3) * t485 - t466;
t272 = Icges(3,1) * t368 - Icges(3,4) * t367 + Icges(3,5) * t485;
t271 = Icges(3,1) * t366 + Icges(3,4) * t365 + Icges(3,5) * t484;
t270 = Icges(3,4) * t368 - Icges(3,2) * t367 + Icges(3,6) * t485;
t269 = Icges(3,4) * t366 + Icges(3,2) * t365 + Icges(3,6) * t484;
t268 = Icges(3,5) * t368 - Icges(3,6) * t367 + Icges(3,3) * t485;
t267 = Icges(3,5) * t366 + Icges(3,6) * t365 + Icges(3,3) * t484;
t256 = (-t434 + (-rSges(3,3) - pkin(7)) * t539) * qJD(1) + t466;
t255 = t468 + t273;
t254 = t396 * t539 + t397 * t457 + t398 * t416;
t253 = -t396 * t538 + t397 * t454 - t398 * t455;
t246 = t463 + t303;
t245 = -t302 + t460;
t236 = t450 * t439;
t226 = t439 * t273 + (-t399 * t513 - t404 * t443) * t437;
t225 = -t439 * t274 + (t399 * t514 - t404 * t444) * t437;
t223 = -t303 * t492 + t346 * t457;
t222 = t302 * t492 - t346 * t454;
t219 = t439 * t348 + (t350 * t551 + t352 * t442) * t437;
t218 = t439 * t347 + (t349 * t551 + t351 * t442) * t437;
t207 = t348 * t539 + t350 * t457 + t352 * t416;
t206 = t347 * t539 + t349 * t457 + t351 * t416;
t205 = -t348 * t538 + t350 * t454 - t352 * t455;
t204 = -t347 * t538 + t349 * t454 - t351 * t455;
t203 = -t342 * t492 - t411 * t343 + t412 * t344;
t200 = t203 * t483;
t193 = -t302 * t457 + t303 * t454;
t192 = (-t302 - t371) * t439 + t437 * t478;
t191 = t303 * t439 + t517 * t539 + t359;
t166 = -t367 * t397 + t368 * t398 + t454 * t402 - t455 * t403 + (t396 * t514 - t401 * t444) * t437;
t165 = t365 * t397 + t366 * t398 + t457 * t402 + t416 * t403 + (t396 * t513 + t401 * t443) * t437;
t164 = t463 - t525;
t163 = t460 + t526;
t162 = (t302 * t443 + t303 * t444) * t437 + t516;
t158 = t463 + t569;
t157 = -t388 * t431 - t456 * t547 + t460 + t464 + t509;
t156 = t221 * t411 + t262 * t458;
t155 = -t220 * t411 - t262 * t456;
t154 = -t180 + t446;
t153 = t453 + t179;
t152 = -t297 * t457 + t299 * t458 + t301 * t390;
t151 = -t296 * t457 + t298 * t458 + t300 * t390;
t150 = -t297 * t454 + t299 * t456 + t301 * t388;
t149 = -t296 * t454 + t298 * t456 + t300 * t388;
t148 = t286 * t411 + t287 * t383 + t288 * t384;
t147 = t148 * t483;
t138 = -t220 * t458 + t221 * t456;
t136 = t137 * t483;
t135 = (-t235 * t551 - t486) * t437 + t522 * t457;
t134 = t234 * t492 - t293 * t454 + t520;
t133 = t439 * t267 + (t551 * t269 + t271 * t442 + (-t350 * t442 + t352 * t551) * qJD(2)) * t437;
t132 = t439 * t268 + (t551 * t270 + t272 * t442 + (-t349 * t442 + t351 * t551) * qJD(2)) * t437;
t126 = (-t371 + t526) * t439 + t437 * t467;
t125 = t235 * t439 + t495 * t539 + t519;
t112 = t439 * t179 + t295 + (qJD(1) * t478 + t443 * t521) * t437;
t111 = t394 + (-t180 - t306) * t439 + (t346 * t514 + t444 * t521) * t437;
t110 = -t454 * t315 + t367 * t346 + (t180 * t551 - t302 * t511) * t437;
t109 = t457 * t315 + t365 * t346 + (-t179 * t551 + t303 * t511) * t437;
t108 = -t234 * t457 - t454 * t525 - t304;
t105 = (t234 * t443 + t235 * t444) * t437 + t474;
t102 = -t229 * t458 + t231 * t337 + t233 * t338;
t101 = -t228 * t458 + t230 * t337 + t232 * t338;
t100 = -t229 * t456 + t231 * t335 + t233 * t336;
t99 = -t228 * t456 + t230 * t335 + t232 * t336;
t98 = -t213 * t458 + t215 * t328 + t217 * t329;
t97 = -t212 * t458 + t214 * t328 + t216 * t329;
t96 = -t213 * t456 + t215 * t326 + t217 * t327;
t95 = -t212 * t456 + t214 * t326 + t216 * t327;
t92 = -t146 + t445 - t566;
t91 = t447 + t477 + t145;
t90 = (-t527 * t551 - t486) * t437 + t498 * t457;
t89 = -t454 * t523 + t528 * t492 + t520;
t88 = (-t371 + t501) * t439 + t437 * t462;
t87 = t439 * t527 + t475 * t539 + t519;
t86 = t179 * t454 - t180 * t457 - t302 * t365 - t303 * t367;
t85 = t291 * t547 - t292 * t431 + t445 + t465 - t508;
t84 = t447 + t570;
t83 = -t454 * t500 - t457 * t528 - t304;
t80 = (t443 * t528 + t444 * t527) * t437 + t474;
t79 = (t179 * t444 + t180 * t443 + (t302 * t444 + (-t303 - t372) * t443) * qJD(1)) * t437 + t496;
t78 = t172 * t439 + (-t151 * t444 + t152 * t443) * t437;
t77 = t171 * t439 + (-t149 * t444 + t150 * t443) * t437;
t76 = -t151 * t454 - t152 * t457 - t172 * t492;
t75 = -t149 * t454 - t150 * t457 - t171 * t492;
t72 = t439 * t145 + (qJD(1) * t467 + t443 * t499) * t437 + t530;
t71 = (-t146 + t529) * t439 + (t293 * t514 + t444 * t499) * t437 + t518;
t70 = -t120 * t411 - t187 * t456 - t220 * t385 + t262 * t291;
t69 = t119 * t411 + t187 * t458 + t221 * t385 - t262 * t289;
t66 = -t173 * t454 + t175 * t456 + t177 * t388 - t291 * t299 + t292 * t301 + t297 * t367;
t65 = -t174 * t454 + t176 * t456 + t178 * t388 - t291 * t298 + t292 * t300 + t296 * t367;
t64 = -t173 * t457 + t175 * t458 + t177 * t390 - t289 * t299 + t290 * t301 - t297 * t365;
t63 = -t174 * t457 + t176 * t458 + t178 * t390 - t289 * t298 + t290 * t300 - t296 * t365;
t59 = -t454 * t250 + t367 * t293 + (t146 * t551 + t511 * t526) * t437 + t503;
t58 = t316 - t524 * t457 + t522 * t365 + (-t145 * t551 + t235 * t511 - t487) * t437;
t57 = t137 * t439 + (-t103 * t444 + t104 * t443) * t437;
t56 = t119 * t456 - t120 * t458 + t220 * t289 - t221 * t291;
t55 = -t103 * t454 - t104 * t457 - t137 * t492;
t52 = -t103 * t456 - t104 * t458 + t137 * t411;
t51 = t129 * t439 + (-t101 * t444 + t102 * t443) * t437;
t50 = t128 * t439 + (t100 * t443 - t444 * t99) * t437;
t49 = -t101 * t454 - t102 * t457 - t129 * t492;
t48 = -t100 * t457 - t128 * t492 - t454 * t99;
t47 = t124 * t439 + (t443 * t98 - t444 * t97) * t437;
t46 = t123 * t439 + (t443 * t96 - t444 * t95) * t437;
t45 = -t124 * t492 - t454 * t97 - t457 * t98;
t44 = -t123 * t492 - t454 * t95 - t457 * t96;
t41 = t124 * t411 - t456 * t97 - t458 * t98;
t40 = t123 * t411 - t456 * t95 - t458 * t96;
t39 = -t146 * t457 - t234 * t365 - (-t145 - t189) * t454 + t525 * t367 + t532;
t38 = (t145 * t444 + t146 * t443 + (t234 * t444 + (-t372 + t525) * t443) * qJD(1)) * t437 + t461;
t37 = t534 * t439 + (qJD(1) * t462 + t443 * t476) * t437 + t530;
t36 = (t529 - t533) * t439 + (t444 * t476 + t514 * t523) * t437 + t518;
t35 = -t139 * t456 + t141 * t335 + t143 * t336 + t229 * t291 + t231 * t243 + t233 * t244;
t34 = -t140 * t456 + t142 * t335 + t144 * t336 + t228 * t291 + t230 * t243 + t232 * t244;
t33 = -t139 * t458 + t141 * t337 + t143 * t338 + t229 * t289 + t231 * t241 + t233 * t242;
t32 = -t140 * t458 + t142 * t337 + t144 * t338 + t228 * t289 + t230 * t241 + t232 * t242;
t29 = -t531 * t454 + t523 * t367 + (t501 * t511 + t533 * t551) * t437 + t503;
t28 = t316 - t502 * t457 + t498 * t365 + (t511 * t527 - t534 * t551 - t487) * t437;
t27 = -t113 * t456 + t115 * t326 + t117 * t327 + t198 * t215 + t199 * t217 + t213 * t291;
t26 = -t114 * t456 + t116 * t326 + t118 * t327 + t198 * t214 + t199 * t216 + t212 * t291;
t25 = -t113 * t458 + t115 * t328 + t117 * t329 + t196 * t215 + t197 * t217 + t213 * t289;
t24 = -t114 * t458 + t116 * t328 + t118 * t329 + t196 * t214 + t197 * t216 + t212 * t289;
t22 = -t533 * t457 - t528 * t365 - (-t189 - t534) * t454 + t500 * t367 + t532;
t21 = (t534 * t444 + t533 * t443 + (t528 * t444 + (-t372 + t500) * t443) * qJD(1)) * t437 + t461;
t20 = -t122 * t492 + t159 * t367 - t160 * t365 - t454 * t73 - t457 * t74 + t200;
t19 = t94 * t439 + (t443 * t66 - t444 * t65 + (t149 * t443 + t150 * t444) * qJD(1)) * t437;
t18 = t93 * t439 + (t443 * t64 - t444 * t63 + (t151 * t443 + t152 * t444) * qJD(1)) * t437;
t17 = t149 * t367 - t150 * t365 - t65 * t454 - t66 * t457 + (t171 * t511 - t551 * t94) * t437;
t16 = t151 * t367 - t152 * t365 - t63 * t454 - t64 * t457 + (t172 * t511 - t551 * t93) * t437;
t14 = t106 * t367 - t107 * t365 - t42 * t454 - t43 * t457 - t492 * t82 + t147;
t13 = t68 * t439 + (-t34 * t444 + t35 * t443 + (t100 * t444 + t443 * t99) * qJD(1)) * t437;
t12 = t67 * t439 + (-t32 * t444 + t33 * t443 + (t101 * t443 + t102 * t444) * qJD(1)) * t437;
t10 = -t100 * t365 - t34 * t454 - t35 * t457 + t99 * t367 + (t128 * t511 - t551 * t68) * t437;
t9 = t101 * t367 - t102 * t365 - t32 * t454 - t33 * t457 + (t129 * t511 - t551 * t67) * t437;
t8 = t103 * t367 - t104 * t365 - t30 * t454 - t31 * t457 - t492 * t62 + t136;
t7 = t103 * t291 + t104 * t289 - t30 * t456 - t31 * t458 + t546;
t6 = t54 * t439 + (-t26 * t444 + t27 * t443 + (t443 * t95 + t444 * t96) * qJD(1)) * t437;
t5 = t53 * t439 + (-t24 * t444 + t25 * t443 + (t443 * t97 + t444 * t98) * qJD(1)) * t437;
t4 = -t26 * t454 - t27 * t457 - t96 * t365 + t95 * t367 + (t123 * t511 - t54 * t551) * t437;
t3 = -t24 * t454 - t25 * t457 - t98 * t365 + t97 * t367 + (t124 * t511 - t53 * t551) * t437;
t2 = t123 * t385 - t26 * t456 - t27 * t458 + t289 * t96 + t291 * t95 + t411 * t54;
t1 = t124 * t385 - t24 * t456 - t25 * t458 + t289 * t98 + t291 * t97 + t411 * t53;
t15 = [t450 + (t255 * t331 + t256 * t330) * t563 + (t153 * t246 + t154 * t245) * t562 + (t163 * t92 + t164 * t91) * t561 + (t157 * t85 + t158 * t84) * t560 - t564; t236 + t61 + m(3) * (t225 * t330 + t226 * t331 + t255 * t309 + t256 * t310) + m(4) * (t111 * t245 + t112 * t246 + t153 * t191 + t154 * t192) + m(5) * (t125 * t91 + t126 * t92 + t163 * t71 + t164 * t72) + m(6) * (t157 * t36 + t158 * t37 + t84 * t87 + t85 * t88) + ((-t166 / 0.2e1 - t132 / 0.2e1 - t452) * t444 + (t165 / 0.2e1 + t133 / 0.2e1 + t451) * t443 + ((t254 / 0.2e1 + t219 / 0.2e1 - t448) * t444 + (t253 / 0.2e1 + t218 / 0.2e1 + t449) * t443) * qJD(1)) * t437 + t571; (t21 * t80 + t36 * t88 + t37 * t87) * t560 + (t105 * t38 + t125 * t72 + t126 * t71) * t561 + (t111 * t192 + t112 * t191 + t162 * t79) * t562 + (t310 * t225 + t309 * t226) * t563 + (t5 + t12 + t18) * t539 + (-t6 - t19 - t13) * t538 + (t46 + t77 + t50) * t485 + (t47 + t51 + t78) * t484 + ((-t204 * t444 + t205 * t443) * t485 - ((t269 * t454 - t271 * t455 - t367 * t350 + t368 * t352) * t443 + t205 * t513 - (t270 * t454 - t272 * t455 - t367 * t349 + t368 * t351) * t444 + t204 * t514) * t538 + (-t206 * t444 + t207 * t443) * t484 + ((t269 * t457 + t416 * t271 + t365 * t350 + t366 * t352) * t443 + t207 * t513 - (t270 * t457 + t416 * t272 + t365 * t349 + t366 * t351) * t444 + t206 * t514) * t539 + (-((-t267 * t444 + t348 * t514) * t443 - (-t268 * t444 + t347 * t514) * t444) * t538 + ((t267 * t443 + t348 * t513) * t443 - (t268 * t443 + t347 * t513) * t444) * t539 + (t353 * t443 + t354 * t444) * (t273 * t444 + t274 * t443 + (t353 * t444 - t354 * t443) * qJD(1)) * t563) * t437) * t437 + (t253 * t485 - t166 * t538 + t254 * t484 + t165 * t539 + t236 + (-t132 * t444 + t133 * t443 + (t218 * t443 + t219 * t444) * qJD(1)) * t437 + t565) * t439; t136 + t147 + t200 + m(4) * (t109 * t246 + t110 * t245 + t153 * t223 + t154 * t222) + m(5) * (t134 * t92 + t135 * t91 + t163 * t59 + t164 * t58) + m(6) * (t157 * t29 + t158 * t28 + t84 * t90 + t85 * t89) - t451 * t457 - t452 * t454 + t449 * t367 + t448 * t365 + t564 * t492; (t20 / 0.2e1 + t14 / 0.2e1 + t8 / 0.2e1) * t439 - (t18 / 0.2e1 + t12 / 0.2e1 + t5 / 0.2e1) * t457 - (t19 / 0.2e1 + t13 / 0.2e1 + t6 / 0.2e1) * t454 + (t77 / 0.2e1 + t50 / 0.2e1 + t46 / 0.2e1) * t367 + (-t78 / 0.2e1 - t51 / 0.2e1 - t47 / 0.2e1) * t365 + m(4) * (t109 * t191 + t110 * t192 + t111 * t222 + t112 * t223 + t162 * t86 + t193 * t79) + m(5) * (t105 * t39 + t108 * t38 + t125 * t58 + t126 * t59 + t134 * t71 + t135 * t72) + m(6) * (t21 * t83 + t22 * t80 + t28 * t87 + t29 * t88 + t36 * t89 + t37 * t90) + ((-t4 / 0.2e1 - t17 / 0.2e1 - t10 / 0.2e1) * t444 + (t16 / 0.2e1 + t9 / 0.2e1 + t3 / 0.2e1) * t443 + (t57 / 0.2e1 + (t568 * t552 + t567 * t553) * t437 + (t203 / 0.2e1 + t148 / 0.2e1) * t439) * t511 + ((t45 / 0.2e1 + t49 / 0.2e1 + t76 / 0.2e1) * t444 + (t44 / 0.2e1 + t48 / 0.2e1 + t75 / 0.2e1) * t443) * qJD(1) + t565 * t507) * t437; (-t14 - t20 - t8) * t492 - (t16 + t3 + t9) * t457 - (t10 + t17 + t4) * t454 + (t44 + t48 + t75) * t367 + (-t45 - t76 - t49) * t365 + (t55 - t567 * t457 - t568 * t454 + (-t148 - t203) * t492) * t483 + (t22 * t83 + t28 * t90 + t29 * t89) * t560 + (t108 * t39 + t134 * t59 + t135 * t58) * t561 + (t109 * t223 + t110 * t222 + t193 * t86) * t562; m(6) * (t157 * t289 + t158 * t291 - t456 * t84 - t458 * t85) + m(5) * (t163 * t289 + t164 * t291 - t456 * t91 - t458 * t92); m(6) * (t21 * t411 + t289 * t88 + t291 * t87 - t36 * t458 - t37 * t456 + t385 * t80) + m(5) * (t105 * t385 + t125 * t291 + t126 * t289 + t38 * t411 - t456 * t72 - t458 * t71); m(6) * (t22 * t411 - t28 * t456 + t289 * t89 - t29 * t458 + t291 * t90 + t385 * t83) + m(5) * (t108 * t385 + t134 * t289 + t135 * t291 + t39 * t411 - t456 * t58 - t458 * t59); 0.4e1 * (m(5) / 0.2e1 + m(6) / 0.2e1) * (-t289 * t458 - t291 * t456 + t385 * t411); m(6) * (t155 * t85 + t156 * t84 + t157 * t70 + t158 * t69) - t506 * t458 - t505 * t456 + t482 * t291 + t481 * t289 + t546; t57 * t557 + t11 * t554 + t439 * t7 / 0.2e1 + t46 * t558 + t6 * t556 + t47 * t559 + t5 * t555 + m(6) * (t138 * t21 + t155 * t36 + t156 * t37 + t56 * t80 + t69 * t87 + t70 * t88) + (t1 * t553 + t2 * t552 + (t444 * t41 / 0.2e1 + t40 * t553) * qJD(1)) * t437; t55 * t557 + t8 * t554 - t365 * t41 / 0.2e1 - t457 * t1 / 0.2e1 + t367 * t40 / 0.2e1 - t454 * t2 / 0.2e1 + t44 * t558 + t4 * t556 + t45 * t559 + t3 * t555 + m(6) * (t138 * t22 + t155 * t29 + t156 * t28 + t56 * t83 + t69 * t90 + t70 * t89) + (t52 * t511 / 0.2e1 + t7 * t507) * t437; m(6) * (t138 * t385 + t155 * t289 + t156 * t291 + t411 * t56 - t456 * t69 - t458 * t70); (t138 * t56 + t155 * t70 + t156 * t69) * t560 + t289 * t41 - t458 * t1 + t291 * t40 - t456 * t2 + t385 * t52 + t411 * t7;];
%% Postprocessing: Reshape Output
% From vec2symmat_5_matlab.m
res = [t15(1), t15(2), t15(4), t15(7), t15(11); t15(2), t15(3), t15(5), t15(8), t15(12); t15(4), t15(5), t15(6), t15(9), t15(13); t15(7), t15(8), t15(9), t15(10), t15(14); t15(11), t15(12), t15(13), t15(14), t15(15);];
Mq = res;
