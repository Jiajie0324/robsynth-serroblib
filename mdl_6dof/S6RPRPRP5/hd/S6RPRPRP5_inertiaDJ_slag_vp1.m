% Calculate time derivative of joint inertia matrix for
% S6RPRPRP5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,theta2,theta4]';
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
% Datum: 2019-03-09 03:17
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S6RPRPRP5_inertiaDJ_slag_vp11(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRP5_inertiaDJ_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRP5_inertiaDJ_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRPRP5_inertiaDJ_slag_vp1: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRPRP5_inertiaDJ_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RPRPRP5_inertiaDJ_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RPRPRP5_inertiaDJ_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 03:14:33
% EndTime: 2019-03-09 03:15:02
% DurationCPUTime: 17.70s
% Computational Cost: add. (31780->950), mult. (33470->1341), div. (0->0), fcn. (31859->10), ass. (0->430)
t313 = pkin(9) + qJ(3);
t306 = sin(t313);
t308 = cos(t313);
t312 = pkin(10) + qJ(5);
t305 = sin(t312);
t307 = cos(t312);
t370 = Icges(6,5) * t307 - Icges(6,6) * t305;
t217 = -Icges(6,3) * t308 + t306 * t370;
t373 = Icges(7,4) * t307 + Icges(7,6) * t305;
t218 = -Icges(7,2) * t308 + t306 * t373;
t552 = t217 + t218;
t323 = cos(qJ(1));
t322 = sin(qJ(1));
t472 = t322 * t305;
t249 = t307 * t323 + t308 * t472;
t471 = t322 * t307;
t483 = t305 * t323;
t250 = t308 * t471 - t483;
t547 = rSges(7,3) + qJ(6);
t549 = rSges(7,1) + pkin(5);
t551 = t249 * t547 + t250 * t549;
t444 = qJD(3) * t322;
t417 = t306 * t444;
t438 = qJD(5) * t322;
t447 = qJD(1) * t323;
t448 = qJD(1) * t322;
t142 = -t305 * t417 - qJD(5) * t483 - t307 * t448 + (t305 * t447 + t307 * t438) * t308;
t439 = qJD(5) * t308;
t355 = t305 * (qJD(1) - t439);
t402 = qJD(1) * t308 - qJD(5);
t143 = t322 * t355 + (t323 * t402 - t417) * t307;
t550 = -t249 * qJD(6) - t142 * t547 - t143 * t549;
t519 = t322 / 0.2e1;
t518 = -t323 / 0.2e1;
t548 = -qJD(1) / 0.2e1;
t491 = Icges(7,5) * t307;
t369 = Icges(7,3) * t305 + t491;
t216 = -Icges(7,6) * t308 + t306 * t369;
t494 = Icges(6,4) * t307;
t374 = -Icges(6,2) * t305 + t494;
t219 = -Icges(6,6) * t308 + t306 * t374;
t492 = Icges(7,5) * t305;
t378 = Icges(7,1) * t307 + t492;
t220 = -Icges(7,4) * t308 + t306 * t378;
t495 = Icges(6,4) * t305;
t379 = Icges(6,1) * t307 - t495;
t221 = -Icges(6,5) * t308 + t306 * t379;
t546 = t552 * t308 + ((-t220 - t221) * t307 + (-t216 + t219) * t305) * t306;
t318 = cos(pkin(10));
t301 = pkin(4) * t318 + pkin(3);
t511 = pkin(3) - t301;
t409 = t511 * t308;
t488 = qJ(4) * t306;
t545 = t409 + t488;
t414 = t308 * t444;
t334 = t306 * t447 + t414;
t476 = t308 * t323;
t251 = t305 * t476 - t471;
t252 = t307 * t476 + t472;
t480 = t306 * t323;
t157 = Icges(7,4) * t252 + Icges(7,2) * t480 + Icges(7,6) * t251;
t153 = Icges(7,5) * t252 + Icges(7,6) * t480 + Icges(7,3) * t251;
t161 = Icges(7,1) * t252 + Icges(7,4) * t480 + Icges(7,5) * t251;
t365 = t153 * t305 + t161 * t307;
t64 = -t157 * t308 + t306 * t365;
t155 = Icges(6,5) * t252 - Icges(6,6) * t251 + Icges(6,3) * t480;
t159 = Icges(6,4) * t252 - Icges(6,2) * t251 + Icges(6,6) * t480;
t163 = Icges(6,1) * t252 - Icges(6,4) * t251 + Icges(6,5) * t480;
t363 = -t159 * t305 + t163 * t307;
t66 = -t155 * t308 + t306 * t363;
t506 = t64 + t66;
t481 = t306 * t322;
t156 = Icges(7,4) * t250 + Icges(7,2) * t481 + Icges(7,6) * t249;
t152 = Icges(7,5) * t250 + Icges(7,6) * t481 + Icges(7,3) * t249;
t160 = Icges(7,1) * t250 + Icges(7,4) * t481 + Icges(7,5) * t249;
t366 = t152 * t305 + t160 * t307;
t63 = -t156 * t308 + t306 * t366;
t154 = Icges(6,5) * t250 - Icges(6,6) * t249 + Icges(6,3) * t481;
t158 = Icges(6,4) * t250 - Icges(6,2) * t249 + Icges(6,6) * t481;
t162 = Icges(6,1) * t250 - Icges(6,4) * t249 + Icges(6,5) * t481;
t364 = -t158 * t305 + t162 * t307;
t65 = -t154 * t308 + t306 * t364;
t507 = t63 + t65;
t544 = t322 * t507 + t323 * t506;
t543 = t322 * t506 - t323 * t507;
t80 = Icges(7,5) * t143 + Icges(7,6) * t334 + Icges(7,3) * t142;
t84 = Icges(7,4) * t143 + Icges(7,2) * t334 + Icges(7,6) * t142;
t88 = Icges(7,1) * t143 + Icges(7,4) * t334 + Icges(7,5) * t142;
t20 = (qJD(3) * t366 - t84) * t308 + (qJD(3) * t156 + t305 * t80 + t307 * t88 + (t152 * t307 - t160 * t305) * qJD(5)) * t306;
t82 = Icges(6,5) * t143 - Icges(6,6) * t142 + Icges(6,3) * t334;
t86 = Icges(6,4) * t143 - Icges(6,2) * t142 + Icges(6,6) * t334;
t90 = Icges(6,1) * t143 - Icges(6,4) * t142 + Icges(6,5) * t334;
t22 = (qJD(3) * t364 - t82) * t308 + (qJD(3) * t154 - t305 * t86 + t307 * t90 + (-t158 * t307 - t162 * t305) * qJD(5)) * t306;
t542 = -t20 - t22;
t410 = t307 * t439;
t443 = qJD(3) * t323;
t416 = t306 * t443;
t140 = qJD(1) * t249 - t323 * t410 + (t416 - t438) * t305;
t141 = t323 * t355 + (-t322 * t402 - t416) * t307;
t413 = t308 * t443;
t422 = t306 * t448;
t333 = t413 - t422;
t79 = Icges(7,5) * t141 + Icges(7,6) * t333 - Icges(7,3) * t140;
t83 = Icges(7,4) * t141 + Icges(7,2) * t333 - Icges(7,6) * t140;
t87 = Icges(7,1) * t141 + Icges(7,4) * t333 - Icges(7,5) * t140;
t21 = (qJD(3) * t365 - t83) * t308 + (qJD(3) * t157 + t305 * t79 + t307 * t87 + (t153 * t307 - t161 * t305) * qJD(5)) * t306;
t81 = Icges(6,5) * t141 + Icges(6,6) * t140 + Icges(6,3) * t333;
t85 = Icges(6,4) * t141 + Icges(6,2) * t140 + Icges(6,6) * t333;
t89 = Icges(6,1) * t141 + Icges(6,4) * t140 + Icges(6,5) * t333;
t23 = (qJD(3) * t363 - t81) * t308 + (qJD(3) * t155 - t305 * t85 + t307 * t89 + (-t159 * t307 - t163 * t305) * qJD(5)) * t306;
t541 = t21 + t23;
t55 = t154 * t481 - t158 * t249 + t162 * t250;
t56 = t155 * t481 - t159 * t249 + t163 * t250;
t387 = t322 * t55 + t323 * t56;
t53 = t152 * t249 + t156 * t481 + t160 * t250;
t54 = t153 * t249 + t157 * t481 + t161 * t250;
t388 = t322 * t53 + t323 * t54;
t96 = t216 * t249 + t218 * t481 + t220 * t250;
t97 = t217 * t481 - t219 * t249 + t221 * t250;
t510 = (-t96 - t97) * t308 + (t387 + t388) * t306;
t59 = t154 * t480 - t251 * t158 + t252 * t162;
t60 = t155 * t480 - t251 * t159 + t252 * t163;
t385 = t322 * t59 + t323 * t60;
t57 = t251 * t152 + t156 * t480 + t252 * t160;
t58 = t251 * t153 + t157 * t480 + t252 * t161;
t386 = t322 * t57 + t323 * t58;
t98 = t251 * t216 + t218 * t480 + t252 * t220;
t99 = t217 * t480 - t251 * t219 + t252 * t221;
t540 = (-t98 - t99) * t308 + (t385 + t386) * t306;
t441 = qJD(5) * t306;
t144 = (Icges(7,3) * t307 - t492) * t441 + (Icges(7,6) * t306 + t308 * t369) * qJD(3);
t145 = (-Icges(6,5) * t305 - Icges(6,6) * t307) * t441 + (Icges(6,3) * t306 + t308 * t370) * qJD(3);
t146 = (-Icges(7,4) * t305 + Icges(7,6) * t307) * t441 + (Icges(7,2) * t306 + t308 * t373) * qJD(3);
t148 = (-Icges(7,1) * t305 + t491) * t441 + (Icges(7,4) * t306 + t308 * t378) * qJD(3);
t149 = (-Icges(6,1) * t305 - t494) * t441 + (Icges(6,5) * t306 + t308 * t379) * qJD(3);
t440 = qJD(5) * t307;
t411 = t306 * t440;
t412 = t305 * t441;
t445 = qJD(3) * t308;
t415 = t307 * t445;
t419 = t305 * t445;
t446 = qJD(3) * t306;
t484 = t305 * t306;
t539 = -t219 * t411 + t221 * t415 + t144 * t484 + (-t412 + t415) * t220 + (t411 + t419) * t216 + (t149 + t148) * t306 * t307 + t552 * t446 + (-t145 - t146) * t308;
t538 = rSges(7,2) * t413 + t251 * qJD(6) - t547 * t140 + t141 * t549;
t537 = t306 * t511;
t496 = Icges(4,4) * t308;
t377 = -Icges(4,2) * t306 + t496;
t234 = Icges(4,6) * t322 + t323 * t377;
t497 = Icges(4,4) * t306;
t382 = Icges(4,1) * t308 - t497;
t236 = Icges(4,5) * t322 + t323 * t382;
t357 = t234 * t306 - t236 * t308;
t339 = t357 * t322;
t233 = -Icges(4,6) * t323 + t322 * t377;
t235 = -Icges(4,5) * t323 + t322 * t382;
t358 = t233 * t306 - t235 * t308;
t340 = t358 * t323;
t311 = t322 * rSges(4,3);
t536 = -rSges(4,2) * t480 + t311;
t321 = -pkin(7) - qJ(2);
t319 = cos(pkin(9));
t302 = pkin(2) * t319 + pkin(1);
t503 = rSges(4,1) * t308;
t397 = -rSges(4,2) * t306 + t503;
t348 = -t302 - t397;
t201 = (rSges(4,3) - t321) * t323 + t348 * t322;
t245 = rSges(4,1) * t476 + t536;
t405 = t323 * t302 - t322 * t321;
t202 = t245 + t405;
t535 = t201 * t323 + t202 * t322;
t372 = Icges(4,5) * t308 - Icges(4,6) * t306;
t231 = -Icges(4,3) * t323 + t322 * t372;
t354 = rSges(3,1) * t319 - rSges(3,2) * sin(pkin(9)) + pkin(1);
t500 = rSges(3,3) + qJ(2);
t226 = t322 * t500 + t323 * t354;
t464 = rSges(7,2) * t480 + t251 * t547 + t252 * t549;
t465 = rSges(7,2) * t481 + t551;
t534 = -t322 * t465 - t323 * t464;
t533 = 2 * m(4);
t532 = 2 * m(5);
t531 = 2 * m(6);
t530 = 2 * m(7);
t529 = m(5) / 0.2e1;
t528 = m(6) / 0.2e1;
t527 = m(7) / 0.2e1;
t316 = sin(pkin(10));
t375 = Icges(5,4) * t318 - Icges(5,2) * t316;
t228 = -Icges(5,6) * t308 + t306 * t375;
t526 = t228 / 0.2e1;
t380 = Icges(5,1) * t318 - Icges(5,4) * t316;
t229 = -Icges(5,5) * t308 + t306 * t380;
t525 = t229 / 0.2e1;
t469 = t322 * t318;
t475 = t316 * t323;
t260 = -t308 * t475 + t469;
t524 = t260 / 0.2e1;
t470 = t322 * t316;
t474 = t318 * t323;
t261 = t308 * t474 + t470;
t523 = t261 / 0.2e1;
t521 = -t316 / 0.2e1;
t520 = t318 / 0.2e1;
t517 = t323 / 0.2e1;
t274 = rSges(4,1) * t306 + rSges(4,2) * t308;
t515 = m(4) * t274;
t514 = pkin(3) * t308;
t147 = (-Icges(6,2) * t307 - t495) * t441 + (Icges(6,6) * t306 + t308 * t374) * qJD(3);
t508 = (-t219 * t445 + (-qJD(5) * t221 - t147) * t306) * t305 + t539;
t505 = -rSges(7,2) * t422 + t538;
t504 = rSges(7,2) * t334 - t550;
t502 = rSges(7,2) * t306;
t501 = rSges(6,3) * t306;
t499 = -rSges(5,3) - qJ(4);
t392 = -t250 * rSges(6,1) + t249 * rSges(6,2);
t165 = rSges(6,3) * t481 - t392;
t487 = t165 * t323;
t479 = t308 * t316;
t478 = t308 * t318;
t320 = -pkin(8) - qJ(4);
t477 = t308 * t320;
t473 = t321 * t323;
t468 = qJ(4) + t320;
t467 = t546 * t446;
t390 = rSges(7,1) * t307 + rSges(7,3) * t305;
t466 = (pkin(5) * t445 + qJ(6) * t441) * t307 + (qJ(6) * t445 + (-pkin(5) * qJD(5) + qJD(6)) * t306) * t305 + (-rSges(7,1) * t305 + rSges(7,3) * t307) * t441 + (t308 * t390 + t502) * qJD(3);
t295 = pkin(3) * t476;
t256 = qJ(4) * t480 + t295;
t299 = pkin(4) * t470;
t353 = t301 * t476 - t320 * t480 + t299;
t174 = t353 - t256;
t463 = -t174 - t256;
t188 = t261 * rSges(5,1) + t260 * rSges(5,2) + rSges(5,3) * t480;
t462 = -t188 - t256;
t389 = t488 + t514;
t238 = qJD(3) * t389 - qJD(4) * t308;
t461 = -(-t306 * t468 - t409) * qJD(3) - t238;
t208 = t308 * t468 - t537;
t273 = pkin(3) * t306 - qJ(4) * t308;
t257 = t273 * t448;
t460 = t208 * t448 + t257;
t459 = -t208 - t273;
t394 = rSges(5,1) * t318 - rSges(5,2) * t316;
t458 = -(rSges(5,3) * t306 + t308 * t394) * qJD(3) - t238;
t457 = -rSges(7,2) * t308 + (pkin(5) * t307 + qJ(6) * t305 + t390) * t306;
t230 = -rSges(5,3) * t308 + t306 * t394;
t456 = -t230 - t273;
t255 = t389 * t322;
t455 = t322 * t255 + t323 * t256;
t300 = pkin(4) * t475;
t454 = qJD(1) * t300 + t320 * t422;
t453 = -t320 * t481 - t300;
t442 = qJD(4) * t306;
t287 = t323 * t442;
t309 = qJD(2) * t322;
t452 = t287 + t309;
t310 = qJD(2) * t323;
t451 = t321 * t448 + t310;
t450 = t322 ^ 2 + t323 ^ 2;
t232 = Icges(4,3) * t322 + t323 * t372;
t449 = qJD(1) * t232;
t35 = t54 * t322 - t323 * t53;
t36 = t56 * t322 - t323 * t55;
t435 = t35 / 0.2e1 + t36 / 0.2e1;
t37 = t58 * t322 - t323 * t57;
t38 = t60 * t322 - t323 * t59;
t434 = t37 / 0.2e1 + t38 / 0.2e1;
t259 = t308 * t469 - t475;
t344 = t308 * t470 + t474;
t175 = Icges(5,5) * t259 - Icges(5,6) * t344 + Icges(5,3) * t481;
t433 = t175 * t481;
t432 = t175 * t480;
t176 = Icges(5,5) * t261 + Icges(5,6) * t260 + Icges(5,3) * t480;
t431 = t176 * t481;
t430 = t176 * t480;
t429 = t141 * rSges(6,1) + t140 * rSges(6,2) + rSges(6,3) * t413;
t391 = rSges(6,1) * t307 - rSges(6,2) * t305;
t151 = (-rSges(6,1) * t305 - rSges(6,2) * t307) * t441 + (t308 * t391 + t501) * qJD(3);
t427 = -t151 + t461;
t279 = qJ(4) * t413;
t284 = pkin(3) * t417;
t426 = t322 * (qJ(4) * t334 + qJD(1) * t295 + t322 * t442 - t284) + t323 * (-qJ(4) * t422 + t279 + t287 + (-t308 * t448 - t416) * pkin(3)) + t255 * t447;
t209 = qJD(1) * t344 + t316 * t416;
t210 = -qJD(1) * t259 - t318 * t416;
t425 = t210 * rSges(5,1) + t209 * rSges(5,2) + rSges(5,3) * t413;
t224 = -rSges(6,3) * t308 + t306 * t391;
t424 = -t224 + t459;
t167 = t252 * rSges(6,1) - t251 * rSges(6,2) + rSges(6,3) * t480;
t423 = -t301 * t417 - t320 * t334;
t420 = t224 * t448;
t418 = t306 * t445;
t408 = t323 * t457;
t407 = t465 * t323;
t406 = t457 * t322;
t192 = t456 * t323;
t404 = -t301 * t308 - t302;
t403 = qJD(1) * t457;
t401 = t461 - t466;
t173 = -t322 * t545 + t453;
t400 = t322 * t173 + t323 * t174 + t455;
t399 = -t457 + t459;
t126 = t424 * t323;
t398 = t322 * t403;
t211 = qJD(1) * t260 + t316 * t417;
t212 = qJD(1) * t261 - t318 * t417;
t396 = -t212 * rSges(5,1) - t211 * rSges(5,2);
t395 = -t259 * rSges(5,1) + rSges(5,2) * t344;
t393 = t143 * rSges(6,1) - t142 * rSges(6,2);
t346 = t404 - t502;
t327 = t322 * t346 - t473;
t77 = t327 - t453 - t551;
t330 = t353 + t405;
t78 = t330 + t464;
t384 = t322 * t78 + t323 * t77;
t383 = -t423 + t451;
t381 = Icges(4,1) * t306 + t496;
t376 = Icges(4,2) * t308 + t497;
t371 = Icges(5,5) * t318 - Icges(5,6) * t316;
t345 = t404 - t501;
t326 = t322 * t345 - t473;
t111 = t326 + t392 - t453;
t112 = t330 + t167;
t368 = t111 * t323 + t112 * t322;
t335 = t306 * t499 - t302 - t514;
t325 = t322 * t335 - t473;
t127 = t325 + t395;
t128 = t405 - t462;
t367 = t127 * t323 + t128 * t322;
t362 = -t167 * t322 + t487;
t361 = -t322 * t165 - t167 * t323;
t356 = t249 * t322 + t251 * t323;
t106 = t399 * t323;
t33 = t142 * t216 + t143 * t220 + t249 * t144 + t146 * t481 + t250 * t148 + t218 * t334;
t34 = -t142 * t219 + t143 * t221 + t145 * t481 - t249 * t147 + t250 * t149 + t217 * t334;
t352 = t22 / 0.2e1 + t20 / 0.2e1 + t33 / 0.2e1 + t34 / 0.2e1;
t31 = -t140 * t216 + t141 * t220 + t251 * t144 + t146 * t480 + t252 * t148 + t218 * t333;
t32 = t140 * t219 + t141 * t221 + t145 * t480 - t251 * t147 + t252 * t149 + t217 * t333;
t351 = t31 / 0.2e1 + t32 / 0.2e1 + t23 / 0.2e1 + t21 / 0.2e1;
t350 = t96 / 0.2e1 + t97 / 0.2e1 + t65 / 0.2e1 + t63 / 0.2e1;
t349 = -t98 / 0.2e1 - t99 / 0.2e1 - t66 / 0.2e1 - t64 / 0.2e1;
t347 = t322 * (-qJ(4) * t414 + t284 + (-t323 * t545 + t299) * qJD(1) + t423) + t323 * (-t279 + (-t477 + t537) * t443 + t545 * t448 + t454) + t173 * t447 + t426;
t341 = qJD(3) * t274;
t338 = qJD(3) * t381;
t337 = qJD(3) * t376;
t336 = qJD(3) * (-Icges(4,5) * t306 - Icges(4,6) * t308);
t331 = -t322 * t464 + t407;
t329 = rSges(4,2) * t422 + rSges(4,3) * t447 - t323 * t341;
t225 = -t322 * t354 + t323 * t500;
t324 = (-t301 * t306 - t477) * t443 + t452 + t454;
t304 = t306 ^ 2;
t265 = t397 * qJD(3);
t262 = t372 * qJD(3);
t244 = -rSges(4,3) * t323 + t322 * t397;
t215 = (Icges(5,5) * t306 + t308 * t380) * qJD(3);
t214 = (Icges(5,6) * t306 + t308 * t375) * qJD(3);
t199 = -qJD(1) * t226 + t310;
t198 = qJD(1) * t225 + t309;
t191 = t456 * t322;
t187 = rSges(5,3) * t481 - t395;
t182 = t322 * t336 + t449;
t181 = -qJD(1) * t231 + t323 * t336;
t180 = Icges(5,1) * t261 + Icges(5,4) * t260 + Icges(5,5) * t480;
t179 = Icges(5,1) * t259 - Icges(5,4) * t344 + Icges(5,5) * t481;
t178 = Icges(5,4) * t261 + Icges(5,2) * t260 + Icges(5,6) * t480;
t177 = Icges(5,4) * t259 - Icges(5,2) * t344 + Icges(5,6) * t481;
t130 = t274 * t444 + (t323 * t348 - t311) * qJD(1) + t451;
t129 = t309 + (-t473 + (-t302 - t503) * t322) * qJD(1) + t329;
t125 = t424 * t322;
t124 = t322 * t232 - t323 * t357;
t123 = t322 * t231 - t340;
t122 = -t232 * t323 - t339;
t121 = -t231 * t323 - t322 * t358;
t120 = Icges(5,1) * t212 + Icges(5,4) * t211 + Icges(5,5) * t334;
t119 = Icges(5,1) * t210 + Icges(5,4) * t209 + Icges(5,5) * t333;
t118 = Icges(5,4) * t212 + Icges(5,2) * t211 + Icges(5,6) * t334;
t117 = Icges(5,4) * t210 + Icges(5,2) * t209 + Icges(5,6) * t333;
t114 = -t308 * t167 - t224 * t480;
t113 = t165 * t308 + t224 * t481;
t108 = qJD(1) * t192 + t322 * t458;
t107 = t230 * t448 + t323 * t458 + t257;
t105 = t399 * t322;
t100 = t362 * t306;
t95 = t322 * t187 + t188 * t323 + t455;
t94 = rSges(6,3) * t334 + t393;
t92 = -rSges(6,3) * t422 + t429;
t74 = t284 + (t445 * t499 - t442) * t322 + t335 * t447 + t396 + t451;
t73 = -pkin(3) * t416 + qJD(1) * t325 + t279 + t425 + t452;
t72 = -t306 * t408 - t308 * t464;
t71 = t306 * t406 + t308 * t465;
t70 = t260 * t178 + t261 * t180 + t430;
t69 = t260 * t177 + t261 * t179 + t432;
t68 = -t178 * t344 + t180 * t259 + t431;
t67 = -t177 * t344 + t179 * t259 + t433;
t62 = qJD(1) * t126 + t322 * t427;
t61 = t323 * t427 + t420 + t460;
t52 = t331 * t306;
t51 = (-rSges(6,3) * t445 - t442) * t322 + (t323 * t345 - t299) * qJD(1) + t383 - t393;
t50 = qJD(1) * t326 + t324 + t429;
t49 = -t361 + t400;
t48 = qJD(1) * t106 + t322 * t401;
t47 = t323 * t401 + t398 + t460;
t46 = (t224 * t444 + t94) * t308 + (-qJD(3) * t165 + t322 * t151 + t224 * t447) * t306;
t45 = (-t224 * t443 - t92) * t308 + (qJD(3) * t167 - t151 * t323 + t420) * t306;
t44 = t400 - t534;
t43 = (-rSges(7,2) * t445 - t442) * t322 + (t323 * t346 - t299) * qJD(1) + t383 + t550;
t42 = qJD(1) * t327 + t324 + t538;
t39 = t322 * (rSges(5,3) * t414 - t396) + t323 * t425 + (t323 * t187 + t322 * t462) * qJD(1) + t426;
t30 = t362 * t445 + (qJD(1) * t361 - t322 * t92 + t323 * t94) * t306;
t25 = (qJD(3) * t406 + t504) * t308 + (-qJD(3) * t465 + t322 * t466 + t323 * t403) * t306;
t24 = (-qJD(3) * t408 - t505) * t308 + (qJD(3) * t464 - t323 * t466 + t398) * t306;
t19 = -t142 * t159 + t143 * t163 + t155 * t334 - t249 * t85 + t250 * t89 + t481 * t81;
t18 = -t142 * t158 + t143 * t162 + t154 * t334 - t249 * t86 + t250 * t90 + t481 * t82;
t17 = t142 * t153 + t143 * t161 + t157 * t334 + t249 * t79 + t250 * t87 + t481 * t83;
t16 = t142 * t152 + t143 * t160 + t156 * t334 + t249 * t80 + t250 * t88 + t481 * t84;
t15 = t140 * t159 + t141 * t163 + t155 * t333 - t251 * t85 + t252 * t89 + t480 * t81;
t14 = t140 * t158 + t141 * t162 + t154 * t333 - t251 * t86 + t252 * t90 + t480 * t82;
t13 = -t140 * t153 + t141 * t161 + t157 * t333 + t251 * t79 + t252 * t87 + t480 * t83;
t12 = -t140 * t152 + t141 * t160 + t156 * t333 + t251 * t80 + t252 * t88 + t480 * t84;
t11 = t322 * t94 + t323 * t92 + (t487 + (-t167 + t463) * t322) * qJD(1) + t347;
t10 = t331 * t445 + (qJD(1) * t534 - t505 * t322 + t504 * t323) * t306;
t9 = t505 * t323 + t504 * t322 + (t407 + (t463 - t464) * t322) * qJD(1) + t347;
t8 = qJD(1) * t387 - t18 * t323 + t19 * t322;
t7 = qJD(1) * t388 - t16 * t323 + t17 * t322;
t6 = qJD(1) * t385 - t14 * t323 + t15 * t322;
t5 = qJD(1) * t386 - t12 * t323 + t13 * t322;
t4 = (qJD(3) * t387 - t34) * t308 + (-qJD(1) * t36 + qJD(3) * t97 + t18 * t322 + t19 * t323) * t306;
t3 = (qJD(3) * t388 - t33) * t308 + (-qJD(1) * t35 + qJD(3) * t96 + t16 * t322 + t17 * t323) * t306;
t2 = (qJD(3) * t385 - t32) * t308 + (-qJD(1) * t38 + qJD(3) * t99 + t14 * t322 + t15 * t323) * t306;
t1 = (qJD(3) * t386 - t31) * t308 + (-qJD(1) * t37 + qJD(3) * t98 + t12 * t322 + t13 * t323) * t306;
t26 = [0.2e1 * m(3) * (t198 * t226 + t199 * t225) + (t42 * t78 + t43 * t77) * t530 + (t111 * t51 + t112 * t50) * t531 + (t127 * t74 + t128 * t73) * t532 + (t129 * t202 + t130 * t201) * t533 - t219 * t419 - t221 * t412 - t147 * t484 + (-t214 * t316 + t215 * t318) * t306 + (-Icges(5,3) * t308 + t306 * t371 - t376 + t382) * t446 + (-Icges(5,3) * t306 - t228 * t316 + t229 * t318 - t308 * t371 + t377 + t381) * t445 + t539; m(6) * (qJD(1) * t368 + t322 * t51 - t323 * t50) + m(7) * (qJD(1) * t384 + t322 * t43 - t323 * t42) + m(5) * (qJD(1) * t367 + t322 * t74 - t323 * t73) + m(4) * (qJD(1) * t535 - t129 * t323 + t322 * t130) + m(3) * (-t198 * t323 + t322 * t199 + (t225 * t323 + t226 * t322) * qJD(1)); 0; (-t211 * t228 / 0.2e1 - t212 * t229 / 0.2e1 + t344 * t214 / 0.2e1 - t259 * t215 / 0.2e1 + t262 * t517 - t352) * t323 + (t209 * t526 + t210 * t525 + t214 * t524 + t215 * t523 + t262 * t519 + t351) * t322 + m(4) * ((-t129 * t322 - t130 * t323) * t274 - t535 * t265) + m(7) * (t105 * t42 + t106 * t43 + t47 * t77 + t48 * t78) + m(6) * (t111 * t61 + t112 * t62 + t125 * t50 + t126 * t51) + m(5) * (t107 * t127 + t108 * t128 + t191 * t73 + t192 * t74) + ((Icges(5,5) * t212 / 0.2e1 + Icges(5,6) * t211 / 0.2e1 + Icges(5,3) * t334 / 0.2e1 + t234 * t548 + t337 * t519) * t323 + (-Icges(5,5) * t210 / 0.2e1 - Icges(5,6) * t209 / 0.2e1 - Icges(5,3) * t333 / 0.2e1 + t233 * t548 + t337 * t518) * t322) * t308 + ((-qJD(1) * t235 - t117 * t316 + t119 * t318 - t323 * t338) * t519 + (qJD(1) * t236 - t118 * t316 + t120 * t318 - t322 * t338) * t518) * t306 + ((t175 * t306 - t177 * t479 + t179 * t478) * t518 + t340 / 0.2e1 + (t176 * t306 - t178 * t479 + t180 * t478) * t519 - t339 / 0.2e1) * qJD(3) + ((-t202 * t515 + t228 * t524 + t229 * t523 + (-t176 / 0.2e1 + t234 / 0.2e1) * t308 + (t178 * t521 + t180 * t520 + t236 / 0.2e1) * t306 - t349) * t323 + (t201 * t515 - t344 * t526 + t259 * t525 + (-t175 / 0.2e1 + t233 / 0.2e1) * t308 + (t177 * t521 + t179 * t520 + t235 / 0.2e1) * t306 + t350) * t322) * qJD(1); m(5) * (t107 * t322 - t108 * t323 + (t191 * t322 + t192 * t323) * qJD(1)) + m(6) * (t61 * t322 - t323 * t62 + (t125 * t322 + t126 * t323) * qJD(1)) + m(7) * (t47 * t322 - t323 * t48 + (t105 * t322 + t106 * t323) * qJD(1)); (t105 * t48 + t106 * t47 + t44 * t9) * t530 + t322 * t6 - t323 * t8 + (t49 * t11 + t125 * t62 + t126 * t61) * t531 - t323 * t7 + t322 * t5 + (t107 * t192 + t108 * t191 + t39 * t95) * t532 + ((t322 * t244 + t245 * t323) * ((qJD(1) * t244 + t329) * t323 + (-t322 * t341 + (-t245 + t536) * qJD(1)) * t322) + t450 * t274 * t265) * t533 + t322 * ((t322 * t181 + (t123 + t339) * qJD(1)) * t322 + (t124 * qJD(1) + (t233 * t445 + t235 * t446) * t323 + (-t182 + (-t234 * t308 - t236 * t306) * qJD(3) + (t232 - t358) * qJD(1)) * t322) * t323) - t323 * ((t323 * t182 + (t122 + t340) * qJD(1)) * t323 + (t121 * qJD(1) + (-t234 * t445 - t236 * t446 + t449) * t322 + (-t181 + (t233 * t308 + t235 * t306) * qJD(3) - t357 * qJD(1)) * t323) * t322) + t322 * ((t260 * t117 + t261 * t119 + t209 * t178 + t210 * t180 + (t69 - t431) * qJD(1)) * t322 + (-t260 * t118 - t261 * t120 - t209 * t177 - t210 * t179 + (t70 + t433) * qJD(1)) * t323) - t323 * ((t344 * t118 - t259 * t120 - t211 * t177 - t212 * t179 + (t68 - t432) * qJD(1)) * t323 + (-t344 * t117 + t259 * t119 + t211 * t178 + t212 * t180 + (t67 + t430) * qJD(1)) * t322) + (t35 + t36 + (-t121 - t67) * t323 + (t122 + t68) * t322) * t448 + (t37 + t38 + (-t123 - t69) * t323 + (t124 + t70) * t322) * t447; 0.2e1 * (t367 * t529 + t368 * t528 + t384 * t527) * t445 + 0.2e1 * ((-t111 * t448 + t112 * t447 + t322 * t50 + t323 * t51) * t528 + (t322 * t42 + t323 * t43 + t447 * t78 - t448 * t77) * t527 + (-t127 * t448 + t128 * t447 + t322 * t73 + t323 * t74) * t529) * t306; 0; 0.2e1 * ((t105 * t444 + t106 * t443 - t9) * t527 + (t125 * t444 + t126 * t443 - t11) * t528 + (t191 * t444 + t192 * t443 - t39) * t529) * t308 + 0.2e1 * ((qJD(3) * t44 + t105 * t447 - t106 * t448 + t322 * t48 + t323 * t47) * t527 + (qJD(3) * t49 + t125 * t447 - t126 * t448 + t322 * t62 + t323 * t61) * t528 + (qJD(3) * t95 + t107 * t323 + t108 * t322 + t191 * t447 - t192 * t448) * t529) * t306; 0.4e1 * (t529 + t528 + t527) * (-0.1e1 + t450) * t418; m(7) * (t24 * t78 + t25 * t77 + t42 * t72 + t43 * t71) + m(6) * (t111 * t46 + t112 * t45 + t113 * t51 + t114 * t50) + ((t322 * t350 - t323 * t349) * qJD(3) - t508) * t308 + (t351 * t323 + t352 * t322 + (t322 * t349 + t323 * t350) * qJD(1)) * t306 - t467; m(6) * (t46 * t322 - t323 * t45 + (t113 * t323 + t114 * t322) * qJD(1)) + m(7) * (-t24 * t323 + t25 * t322 + (t322 * t72 + t323 * t71) * qJD(1)); m(7) * (t10 * t44 + t105 * t24 + t106 * t25 + t47 * t71 + t48 * t72 + t52 * t9) + m(6) * (t100 * t11 + t113 * t61 + t114 * t62 + t125 * t45 + t126 * t46 + t30 * t49) + (-t4 / 0.2e1 - t3 / 0.2e1 + t434 * t445) * t323 + (t1 / 0.2e1 + t2 / 0.2e1 + t435 * t445) * t322 + ((-t322 * t434 + t323 * t435) * qJD(1) + (t8 + t7) * t519 + (t5 + t6) * t517 + t543 * qJD(3) / 0.2e1) * t306 - (qJD(1) * t544 + t541 * t322 + t542 * t323) * t308 / 0.2e1 + (t510 * t322 + t540 * t323) * qJD(1) / 0.2e1; 0.2e1 * ((t113 * t443 + t114 * t444 - t30) * t528 + (t443 * t71 + t444 * t72 - t10) * t527) * t308 + 0.2e1 * ((qJD(3) * t100 - t113 * t448 + t114 * t447 + t322 * t45 + t323 * t46) * t528 + (qJD(3) * t52 + t24 * t322 + t25 * t323 + t447 * t72 - t448 * t71) * t527) * t306; (t52 * t10 + t24 * t72 + t25 * t71) * t530 + (t100 * t30 + t113 * t46 + t114 * t45) * t531 + (t508 * t308 + ((-t308 * t506 + t540) * t323 + (-t308 * t507 + t510) * t322) * qJD(3) + t467) * t308 + ((t1 + t2) * t323 + (t3 + t4) * t322 + (t542 * t322 - t541 * t323) * t308 + (t306 * t544 + t308 * t546) * qJD(3) + (t308 * t543 - t322 * t540 + t510 * t323) * qJD(1)) * t306; m(7) * (-t140 * t77 + t142 * t78 + t249 * t42 + t251 * t43); m(7) * (qJD(1) * t356 - t140 * t322 - t142 * t323); m(7) * (t44 * t411 + t105 * t142 - t106 * t140 + t249 * t48 + t251 * t47 + (t306 * t9 + t44 * t445) * t305); m(7) * ((t304 * t305 + (-t305 * t308 + t356) * t308) * qJD(3) + (-t410 - t140 * t323 + t142 * t322 + (t249 * t323 - t251 * t322) * qJD(1)) * t306); m(7) * (t52 * t411 - t140 * t71 + t142 * t72 + t24 * t249 + t25 * t251 + (t10 * t306 + t445 * t52) * t305); (-t140 * t251 + t142 * t249 + (t304 * t440 + t305 * t418) * t305) * t530;];
%% Postprocessing: Reshape Output
% From vec2symmat_6_matlab.m
res = [t26(1) t26(2) t26(4) t26(7) t26(11) t26(16); t26(2) t26(3) t26(5) t26(8) t26(12) t26(17); t26(4) t26(5) t26(6) t26(9) t26(13) t26(18); t26(7) t26(8) t26(9) t26(10) t26(14) t26(19); t26(11) t26(12) t26(13) t26(14) t26(15) t26(20); t26(16) t26(17) t26(18) t26(19) t26(20) t26(21);];
Mq  = res;
