% Calculate time derivative of joint inertia matrix for
% S6RPRRPP6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,theta5]';
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
% Datum: 2019-03-09 04:49
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S6RPRRPP6_inertiaDJ_slag_vp11(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(9,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPP6_inertiaDJ_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRPP6_inertiaDJ_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPRRPP6_inertiaDJ_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRRPP6_inertiaDJ_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RPRRPP6_inertiaDJ_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RPRRPP6_inertiaDJ_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 04:46:23
% EndTime: 2019-03-09 04:46:56
% DurationCPUTime: 20.62s
% Computational Cost: add. (26467->1053), mult. (45633->1446), div. (0->0), fcn. (43268->8), ass. (0->482)
t368 = sin(qJ(3));
t371 = cos(qJ(3));
t362 = qJ(4) + pkin(9);
t353 = sin(t362);
t354 = cos(t362);
t423 = Icges(6,5) * t354 - Icges(6,6) * t353;
t266 = Icges(6,3) * t368 + t371 * t423;
t427 = Icges(7,4) * t354 + Icges(7,6) * t353;
t267 = Icges(7,2) * t368 + t371 * t427;
t367 = sin(qJ(4));
t370 = cos(qJ(4));
t424 = Icges(5,5) * t370 - Icges(5,6) * t367;
t282 = Icges(5,3) * t368 + t371 * t424;
t633 = t267 + t266 + t282;
t372 = cos(qJ(1));
t369 = sin(qJ(1));
t463 = qJD(1) * t368 + qJD(4);
t511 = qJD(3) * t372;
t476 = t371 * t511;
t375 = t369 * t463 - t476;
t510 = qJD(4) * t368;
t474 = t354 * t510;
t515 = qJD(1) * t372;
t172 = t353 * t375 - t354 * t515 - t372 * t474;
t464 = qJD(1) + t510;
t404 = t372 * t464;
t173 = t353 * t404 + t354 * t375;
t548 = t369 * t354;
t550 = t368 * t372;
t280 = t353 * t550 + t548;
t579 = rSges(7,3) + qJ(6);
t629 = rSges(7,1) + pkin(5);
t632 = t280 * qJD(6) - t579 * t172 - t173 * t629;
t542 = t372 * t354;
t549 = t369 * t353;
t281 = -t368 * t542 + t549;
t543 = t371 * t372;
t533 = rSges(7,2) * t543 - t280 * t579 + t281 * t629;
t401 = t463 * t372;
t512 = qJD(3) * t371;
t477 = t369 * t512;
t376 = t401 + t477;
t471 = t371 * t515;
t513 = qJD(3) * t369;
t479 = t368 * t513;
t388 = -t471 + t479;
t628 = t368 * t515 + t477;
t478 = t368 * t511;
t516 = qJD(1) * t369;
t627 = t371 * t516 + t478;
t575 = Icges(5,4) * t370;
t429 = -Icges(5,2) * t367 + t575;
t285 = Icges(5,6) * t368 + t371 * t429;
t576 = Icges(5,4) * t367;
t434 = Icges(5,1) * t370 - t576;
t288 = Icges(5,5) * t368 + t371 * t434;
t626 = -t285 * t367 + t288 * t370;
t184 = Icges(7,4) * t281 + Icges(7,2) * t543 - Icges(7,6) * t280;
t180 = Icges(7,5) * t281 + Icges(7,6) * t543 - Icges(7,3) * t280;
t188 = Icges(7,1) * t281 + Icges(7,4) * t543 - Icges(7,5) * t280;
t419 = t180 * t353 + t188 * t354;
t87 = t184 * t368 + t371 * t419;
t182 = Icges(6,5) * t281 + Icges(6,6) * t280 + Icges(6,3) * t543;
t186 = Icges(6,4) * t281 + Icges(6,2) * t280 + Icges(6,6) * t543;
t190 = Icges(6,1) * t281 + Icges(6,4) * t280 + Icges(6,5) * t543;
t417 = t186 * t353 - t190 * t354;
t89 = t182 * t368 - t371 * t417;
t546 = t369 * t370;
t303 = t367 * t550 + t546;
t544 = t370 * t372;
t547 = t369 * t367;
t304 = -t368 * t544 + t547;
t224 = Icges(5,5) * t304 + Icges(5,6) * t303 + Icges(5,3) * t543;
t226 = Icges(5,4) * t304 + Icges(5,2) * t303 + Icges(5,6) * t543;
t228 = Icges(5,1) * t304 + Icges(5,4) * t303 + Icges(5,5) * t543;
t415 = t226 * t367 - t228 * t370;
t99 = t224 * t368 - t371 * t415;
t502 = t87 + t89 + t99;
t278 = t368 * t549 - t542;
t279 = t353 * t372 + t368 * t548;
t545 = t369 * t371;
t183 = Icges(7,4) * t279 - Icges(7,2) * t545 + Icges(7,6) * t278;
t179 = Icges(7,5) * t279 - Icges(7,6) * t545 + Icges(7,3) * t278;
t187 = Icges(7,1) * t279 - Icges(7,4) * t545 + Icges(7,5) * t278;
t420 = t179 * t353 + t187 * t354;
t86 = t183 * t368 + t371 * t420;
t181 = Icges(6,5) * t279 - Icges(6,6) * t278 - Icges(6,3) * t545;
t185 = Icges(6,4) * t279 - Icges(6,2) * t278 - Icges(6,6) * t545;
t189 = Icges(6,1) * t279 - Icges(6,4) * t278 - Icges(6,5) * t545;
t418 = t185 * t353 - t189 * t354;
t88 = t181 * t368 - t371 * t418;
t301 = -t368 * t547 + t544;
t552 = t367 * t372;
t302 = t368 * t546 + t552;
t223 = Icges(5,5) * t302 + Icges(5,6) * t301 - Icges(5,3) * t545;
t225 = Icges(5,4) * t302 + Icges(5,2) * t301 - Icges(5,6) * t545;
t227 = Icges(5,1) * t302 + Icges(5,4) * t301 - Icges(5,5) * t545;
t416 = t225 * t367 - t227 * t370;
t98 = t223 * t368 - t371 * t416;
t503 = t86 + t88 + t98;
t625 = t369 * t502 + t372 * t503;
t624 = -t369 * t503 + t372 * t502;
t573 = Icges(6,4) * t354;
t428 = -Icges(6,2) * t353 + t573;
t268 = Icges(6,6) * t368 + t371 * t428;
t574 = Icges(6,4) * t353;
t433 = Icges(6,1) * t354 - t574;
t270 = Icges(6,5) * t368 + t371 * t433;
t570 = Icges(7,5) * t354;
t422 = Icges(7,3) * t353 + t570;
t265 = Icges(7,6) * t368 + t371 * t422;
t571 = Icges(7,5) * t353;
t432 = Icges(7,1) * t354 + t571;
t269 = Icges(7,4) * t368 + t371 * t432;
t411 = t265 * t353 + t269 * t354;
t623 = (-t268 * t353 + t270 * t354 + t411 + t626) * t371 + t633 * t368;
t509 = qJD(4) * t371;
t195 = (Icges(7,3) * t354 - t571) * t509 + (Icges(7,6) * t371 - t368 * t422) * qJD(3);
t196 = (-Icges(6,5) * t353 - Icges(6,6) * t354) * t509 + (Icges(6,3) * t371 - t368 * t423) * qJD(3);
t197 = (-Icges(7,4) * t353 + Icges(7,6) * t354) * t509 + (Icges(7,2) * t371 - t368 * t427) * qJD(3);
t199 = (-Icges(7,1) * t353 + t570) * t509 + (Icges(7,4) * t371 - t368 * t432) * qJD(3);
t200 = (-Icges(6,1) * t353 - t573) * t509 + (Icges(6,5) * t371 - t368 * t433) * qJD(3);
t233 = (-Icges(5,5) * t367 - Icges(5,6) * t370) * t509 + (Icges(5,3) * t371 - t368 * t424) * qJD(3);
t239 = (-Icges(5,1) * t367 - t575) * t509 + (Icges(5,5) * t371 - t368 * t434) * qJD(3);
t473 = t354 * t509;
t475 = t353 * t509;
t514 = qJD(3) * t368;
t480 = t354 * t514;
t481 = t353 * t514;
t554 = t353 * t371;
t622 = t195 * t554 + t265 * t473 + t268 * t481 - t269 * t475 - t270 * t480 - t514 * t626 + t633 * t512 + (t196 + t197 + t233) * t368 + (t370 * t239 + (t199 + t200) * t354) * t371;
t352 = pkin(4) * t370 + pkin(3);
t587 = pkin(3) - t352;
t621 = t368 * t587;
t577 = Icges(4,4) * t371;
t435 = Icges(4,1) * t368 + t577;
t289 = Icges(4,5) * t372 + t369 * t435;
t558 = t289 * t368;
t578 = Icges(4,4) * t368;
t430 = Icges(4,2) * t371 + t578;
t286 = Icges(4,6) * t372 + t369 * t430;
t562 = t286 * t371;
t409 = t558 + t562;
t618 = t372 * t409;
t455 = rSges(4,1) * t368 + rSges(4,2) * t371;
t393 = t372 * t455;
t174 = t353 * t376 + t464 * t548;
t405 = t369 * t464;
t175 = -t353 * t405 + t354 * t376;
t103 = Icges(7,5) * t175 + Icges(7,6) * t388 + Icges(7,3) * t174;
t107 = Icges(7,4) * t175 + Icges(7,2) * t388 + Icges(7,6) * t174;
t111 = Icges(7,1) * t175 + Icges(7,4) * t388 + Icges(7,5) * t174;
t27 = (-qJD(3) * t420 + t107) * t368 + (qJD(3) * t183 + t103 * t353 + t111 * t354 + (t179 * t354 - t187 * t353) * qJD(4)) * t371;
t105 = Icges(6,5) * t175 - Icges(6,6) * t174 + Icges(6,3) * t388;
t109 = Icges(6,4) * t175 - Icges(6,2) * t174 + Icges(6,6) * t388;
t113 = Icges(6,1) * t175 - Icges(6,4) * t174 + Icges(6,5) * t388;
t29 = (qJD(3) * t418 + t105) * t368 + (qJD(3) * t181 - t109 * t353 + t113 * t354 + (-t185 * t354 - t189 * t353) * qJD(4)) * t371;
t215 = -t367 * t376 - t370 * t405;
t403 = t464 * t367;
t216 = t370 * t401 + (t370 * t512 - t403) * t369;
t130 = Icges(5,5) * t216 + Icges(5,6) * t215 + Icges(5,3) * t388;
t132 = Icges(5,4) * t216 + Icges(5,2) * t215 + Icges(5,6) * t388;
t134 = Icges(5,1) * t216 + Icges(5,4) * t215 + Icges(5,5) * t388;
t35 = (qJD(3) * t416 + t130) * t368 + (qJD(3) * t223 - t132 * t367 + t134 * t370 + (-t225 * t370 - t227 * t367) * qJD(4)) * t371;
t615 = t27 + t29 + t35;
t102 = Icges(7,5) * t173 - Icges(7,6) * t627 + Icges(7,3) * t172;
t106 = Icges(7,4) * t173 - Icges(7,2) * t627 + Icges(7,6) * t172;
t110 = Icges(7,1) * t173 - Icges(7,4) * t627 + Icges(7,5) * t172;
t28 = (-qJD(3) * t419 + t106) * t368 + (qJD(3) * t184 + t102 * t353 + t110 * t354 + (t180 * t354 - t188 * t353) * qJD(4)) * t371;
t104 = Icges(6,5) * t173 - Icges(6,6) * t172 - Icges(6,3) * t627;
t108 = Icges(6,4) * t173 - Icges(6,2) * t172 - Icges(6,6) * t627;
t112 = Icges(6,1) * t173 - Icges(6,4) * t172 - Icges(6,5) * t627;
t30 = (qJD(3) * t417 + t104) * t368 + (qJD(3) * t182 - t108 * t353 + t112 * t354 + (-t186 * t354 - t190 * t353) * qJD(4)) * t371;
t213 = -t367 * t375 + t370 * t404;
t214 = t367 * t404 + t370 * t375;
t129 = Icges(5,5) * t214 + Icges(5,6) * t213 - Icges(5,3) * t627;
t131 = Icges(5,4) * t214 + Icges(5,2) * t213 - Icges(5,6) * t627;
t133 = Icges(5,1) * t214 + Icges(5,4) * t213 - Icges(5,5) * t627;
t36 = (qJD(3) * t415 + t129) * t368 + (qJD(3) * t224 - t131 * t367 + t133 * t370 + (-t226 * t370 - t228 * t367) * qJD(4)) * t371;
t614 = t28 + t30 + t36;
t121 = t265 * t278 - t267 * t545 + t269 * t279;
t122 = -t266 * t545 - t268 * t278 + t270 * t279;
t139 = -t282 * t545 + t285 * t301 + t288 * t302;
t92 = -t223 * t545 + t225 * t301 + t227 * t302;
t93 = -t224 * t545 + t226 * t301 + t228 * t302;
t438 = t369 * t92 - t372 * t93;
t78 = -t181 * t545 - t185 * t278 + t189 * t279;
t79 = -t182 * t545 - t186 * t278 + t190 * t279;
t442 = t369 * t78 - t372 * t79;
t76 = t179 * t278 - t183 * t545 + t187 * t279;
t77 = t180 * t278 - t184 * t545 + t188 * t279;
t443 = t369 * t76 - t372 * t77;
t613 = (-t438 - t442 - t443) * t371 + (t121 + t122 + t139) * t368;
t123 = -t265 * t280 + t267 * t543 + t269 * t281;
t124 = t266 * t543 + t268 * t280 + t270 * t281;
t140 = t282 * t543 + t285 * t303 + t288 * t304;
t94 = t223 * t543 + t225 * t303 + t227 * t304;
t95 = t224 * t543 + t226 * t303 + t228 * t304;
t437 = t369 * t94 - t372 * t95;
t82 = t181 * t543 + t185 * t280 + t189 * t281;
t83 = t182 * t543 + t186 * t280 + t190 * t281;
t440 = t369 * t82 - t372 * t83;
t80 = -t179 * t280 + t183 * t543 + t187 * t281;
t81 = -t180 * t280 + t184 * t543 + t188 * t281;
t441 = t369 * t80 - t372 * t81;
t612 = (-t437 - t440 - t441) * t371 + (t123 + t124 + t140) * t368;
t366 = -qJ(5) - pkin(8);
t583 = pkin(4) * qJD(4);
t500 = t367 * t583;
t508 = qJD(5) * t371;
t611 = t368 * (qJD(3) * t366 + t500) + t508;
t425 = Icges(4,5) * t368 + Icges(4,6) * t371;
t610 = -Icges(4,3) * t369 + t372 * t425;
t609 = -Icges(4,6) * t369 + t372 * t430;
t608 = -Icges(4,5) * t369 + t372 * t435;
t607 = qJD(1) * (t278 * t372 - t280 * t369) - t172 * t372 + t174 * t369;
t606 = 2 * m(4);
t605 = 2 * m(5);
t604 = 2 * m(6);
t603 = 2 * m(7);
t363 = t369 ^ 2;
t365 = t372 ^ 2;
t602 = m(6) / 0.2e1;
t601 = m(7) / 0.2e1;
t600 = -pkin(1) - pkin(7);
t599 = -t368 / 0.2e1;
t596 = t371 / 0.2e1;
t595 = t372 / 0.2e1;
t593 = rSges(3,2) - pkin(1);
t585 = rSges(4,2) * t368;
t328 = rSges(4,1) * t371 - t585;
t592 = m(4) * t328;
t591 = pkin(3) * t368;
t586 = -pkin(8) - t366;
t584 = rSges(5,3) * t371;
t582 = t369 * rSges(4,3);
t359 = t372 * rSges(4,3);
t581 = rSges(7,2) - t366;
t580 = rSges(6,3) - t366;
t453 = -t304 * rSges(5,1) - t303 * rSges(5,2);
t232 = rSges(5,3) * t543 - t453;
t567 = t232 * t372;
t236 = (-Icges(5,2) * t370 - t576) * t509 + (Icges(5,6) * t371 - t368 * t429) * qJD(3);
t566 = t236 * t367;
t564 = t285 * t370;
t563 = t286 * t368;
t561 = t609 * t368;
t560 = t609 * t371;
t557 = t289 * t371;
t556 = t608 * t368;
t555 = t608 * t371;
t551 = t368 * t369;
t541 = -rSges(7,2) * t627 - t632;
t540 = rSges(7,2) * t388 + t278 * qJD(6) + t174 * t579 + t175 * t629;
t451 = t173 * rSges(6,1) - t172 * rSges(6,2);
t115 = -rSges(6,3) * t627 + t451;
t349 = pkin(4) * t552;
t499 = t370 * t583;
t400 = -t352 * t476 + t369 * t499;
t487 = pkin(3) * t476 + pkin(8) * t627;
t127 = t611 * t372 + (t349 + (t366 * t371 - t621) * t369) * qJD(1) + t400 + t487;
t539 = -t115 - t127;
t117 = t175 * rSges(6,1) - t174 * rSges(6,2) + rSges(6,3) * t388;
t488 = pkin(3) * t628 + pkin(8) * t479;
t386 = pkin(8) * t471 - t488;
t459 = t352 * t628 + t366 * t471 + t372 * t499;
t128 = (-pkin(4) * t403 - t366 * t514 - t508) * t369 + t386 + t459;
t538 = -t117 - t128;
t348 = pkin(3) * t551;
t243 = t372 * (qJD(1) * t348 - t487);
t537 = t127 * t372 + t243;
t449 = rSges(7,1) * t354 + rSges(7,3) * t353;
t536 = (-pkin(5) * t514 + qJ(6) * t509) * t354 + (-qJ(6) * t514 + (-pkin(5) * qJD(4) + qJD(6)) * t371) * t353 + (-rSges(7,1) * t353 + rSges(7,3) * t354) * t509 + (rSges(7,2) * t371 - t368 * t449) * qJD(3);
t535 = -rSges(7,2) * t545 + t278 * t579 + t279 * t629;
t192 = rSges(6,1) * t279 - rSges(6,2) * t278 - rSges(6,3) * t545;
t306 = -pkin(8) * t545 + t348;
t490 = t352 * t551 + t366 * t545 + t349;
t229 = -t306 + t490;
t534 = -t192 - t229;
t194 = rSges(6,1) * t281 + rSges(6,2) * t280 + rSges(6,3) * t543;
t350 = pkin(3) * t550;
t307 = pkin(8) * t543 - t350;
t521 = t352 * t550 + t366 * t543;
t230 = pkin(4) * t547 - t307 - t521;
t532 = -t194 - t230;
t263 = t368 * t586 - t371 * t587;
t531 = t229 * t368 + t263 * t545;
t297 = t372 * t307;
t530 = t230 * t372 + t297;
t472 = t367 * t509;
t222 = -pkin(4) * t472 + qJD(5) * t368 + (t371 * t586 + t621) * qJD(3);
t320 = (pkin(8) * t371 - t591) * qJD(3);
t529 = -t222 - t320;
t523 = rSges(5,1) * t302 + rSges(5,2) * t301;
t231 = -rSges(5,3) * t545 + t523;
t528 = -t231 - t306;
t329 = pkin(3) * t371 + pkin(8) * t368;
t308 = t329 * t516;
t527 = t263 * t516 + t308;
t316 = t369 * t329;
t526 = t263 * t369 + t316;
t450 = rSges(6,1) * t354 - rSges(6,2) * t353;
t272 = rSges(6,3) * t368 + t371 * t450;
t525 = -t263 - t272;
t524 = rSges(7,2) * t368 + (pkin(5) * t354 + qJ(6) * t353 + t449) * t371;
t522 = t320 * t369 + t329 * t515;
t520 = qJ(2) * t515 + qJD(2) * t369;
t519 = t372 * pkin(1) + qJ(2) * t369;
t518 = t363 + t365;
t283 = Icges(4,3) * t372 + t369 * t425;
t517 = qJD(1) * t283;
t506 = -rSges(4,3) + t600;
t498 = -t127 - t541;
t497 = -t128 - t540;
t496 = -t229 - t535;
t495 = -t306 + t534;
t494 = -t230 - t533;
t493 = t229 * t627 + t230 * t479;
t492 = rSges(5,1) * t216 + rSges(5,2) * t215 + rSges(5,3) * t479;
t491 = -t263 - t524;
t489 = rSges(4,1) * t628 + rSges(4,2) * t471;
t292 = rSges(4,1) * t551 + rSges(4,2) * t545 + t359;
t486 = t372 * pkin(7) + t519;
t485 = t371 * (-rSges(5,3) - pkin(8));
t452 = rSges(5,1) * t370 - rSges(5,2) * t367;
t293 = rSges(5,3) * t368 + t371 * t452;
t483 = t293 * t516;
t317 = t455 * qJD(3);
t470 = t317 * t518;
t469 = t525 * t369;
t468 = t524 * t369;
t467 = -t352 * t368 - qJ(2);
t466 = qJD(1) * t524;
t465 = -pkin(4) * t367 + t600;
t462 = t128 * t368 + t222 * t545 + t229 * t512 + t263 * t471;
t461 = -t306 + t496;
t460 = t222 * t369 + t263 * t515 + t522;
t51 = t369 * t77 + t372 * t76;
t52 = t369 * t79 + t372 * t78;
t61 = t369 * t93 + t372 * t92;
t458 = t51 / 0.2e1 + t52 / 0.2e1 + t61 / 0.2e1;
t53 = t369 * t81 + t372 * t80;
t54 = t369 * t83 + t372 * t82;
t62 = t369 * t95 + t372 * t94;
t457 = -t54 / 0.2e1 - t62 / 0.2e1 - t53 / 0.2e1;
t456 = qJD(3) * t491;
t454 = rSges(5,1) * t214 + rSges(5,2) * t213;
t207 = t222 * t543;
t16 = t207 + (t372 * t456 + t498) * t368 + (qJD(3) * t494 + t372 * t536 + t491 * t516) * t371;
t377 = t369 * t536 + t372 * t466;
t17 = (t369 * t456 + t540) * t368 + (qJD(3) * t535 + t377) * t371 + t462;
t448 = t16 * t369 - t17 * t372;
t202 = (-rSges(6,1) * t353 - rSges(6,2) * t354) * t509 + (rSges(6,3) * t371 - t368 * t450) * qJD(3);
t37 = t207 + (t511 * t525 + t539) * t368 + (qJD(1) * t469 + qJD(3) * t532 + t202 * t372) * t371;
t395 = t202 * t369 + t272 * t515;
t38 = t368 * t117 + t395 * t371 + (t192 * t371 + t368 * t469) * qJD(3) + t462;
t447 = t369 * t37 - t372 * t38;
t373 = (qJD(1) * t465 - t611) * t369 + t459 + t520;
t55 = t373 + t540;
t356 = qJD(2) * t372;
t392 = t356 - t400;
t407 = t465 * t372;
t56 = (-t508 + (qJD(3) * t581 - t500) * t368) * t372 + (t407 + (t371 * t581 + t467) * t369) * qJD(1) + t392 + t632;
t446 = t369 * t56 - t372 * t55;
t66 = t369 * t466 + (t529 - t536) * t372 + t527;
t67 = t377 + t460;
t445 = t369 * t67 - t372 * t66;
t70 = t117 + t373;
t71 = (-t508 + (qJD(3) * t580 - t500) * t368) * t372 + (t407 + (t371 * t580 + t467) * t369) * qJD(1) + t392 - t451;
t444 = t369 * t71 - t372 * t70;
t84 = t272 * t516 + (-t202 + t529) * t372 + t527;
t85 = t395 + t460;
t439 = t369 * t85 - t372 * t84;
t436 = Icges(4,1) * t371 - t578;
t431 = -Icges(4,2) * t368 + t577;
t426 = Icges(4,5) * t371 - Icges(4,6) * t368;
t414 = t231 * t372 + t232 * t369;
t408 = -t556 - t560;
t406 = (t602 + t601) * t514;
t198 = (-Icges(6,2) * t354 - t574) * t509 + (Icges(6,6) * t371 - t368 * t428) * qJD(3);
t399 = t623 * t512 + (-t411 * t514 + (-t353 * t198 - t566 + (-t268 * t354 - t270 * t353 - t288 * t367 - t564) * qJD(4)) * t371 + t622) * t368;
t398 = t486 + t490;
t397 = rSges(3,3) * t372 + t369 * t593;
t242 = (-rSges(5,1) * t367 - rSges(5,2) * t370) * t509 + (-t368 * t452 + t584) * qJD(3);
t394 = t242 * t369 + t293 * t515;
t391 = t408 * t369;
t390 = qJD(3) * t436;
t389 = qJD(3) * t431;
t385 = t369 * t600 + t372 * t485;
t49 = t174 * t265 + t175 * t269 + t195 * t278 - t197 * t545 + t199 * t279 + t267 * t388;
t50 = -t174 * t268 + t175 * t270 - t196 * t545 - t198 * t278 + t200 * t279 + t266 * t388;
t58 = t215 * t285 + t216 * t288 - t233 * t545 + t236 * t301 + t239 * t302 + t282 * t388;
t384 = -t35 / 0.2e1 - t27 / 0.2e1 - t29 / 0.2e1 - t49 / 0.2e1 - t50 / 0.2e1 - t58 / 0.2e1;
t47 = t172 * t265 + t173 * t269 - t195 * t280 + t197 * t543 + t199 * t281 - t267 * t627;
t48 = -t172 * t268 + t173 * t270 + t196 * t543 + t198 * t280 + t200 * t281 - t266 * t627;
t57 = t213 * t285 + t214 * t288 + t233 * t543 + t236 * t303 + t239 * t304 - t282 * t627;
t383 = t47 / 0.2e1 + t48 / 0.2e1 + t57 / 0.2e1 + t36 / 0.2e1 + t28 / 0.2e1 + t30 / 0.2e1;
t358 = t372 * qJ(2);
t380 = t369 * t465 + t358 + t521;
t379 = -t124 / 0.2e1 - t140 / 0.2e1 - t123 / 0.2e1 - t99 / 0.2e1 - t87 / 0.2e1 - t89 / 0.2e1;
t378 = t139 / 0.2e1 + t121 / 0.2e1 + t122 / 0.2e1 + t98 / 0.2e1 + t86 / 0.2e1 + t88 / 0.2e1;
t364 = t371 ^ 2;
t313 = t425 * qJD(3);
t296 = -rSges(3,2) * t372 + rSges(3,3) * t369 + t519;
t295 = t358 + t397;
t294 = t582 - t393;
t259 = t356 + (t593 * t372 + (-rSges(3,3) - qJ(2)) * t369) * qJD(1);
t258 = qJD(1) * t397 + t520;
t253 = t263 * t543;
t250 = t486 + t292;
t249 = t369 * t506 + t358 + t393;
t245 = (-t293 - t329) * t372;
t244 = t293 * t369 + t316;
t235 = qJD(1) * t610 + t426 * t513;
t234 = -t426 * t511 + t517;
t163 = t356 + t328 * t511 + (t506 * t372 + (-qJ(2) - t455) * t369) * qJD(1);
t162 = (-rSges(4,2) * t514 + qJD(1) * t506) * t369 + t489 + t520;
t161 = (-t329 + t525) * t372;
t160 = t272 * t369 + t526;
t159 = t369 * t485 + t348 + t486 + t523;
t158 = t350 + t358 + t385 + t453;
t157 = -t232 * t368 + t293 * t543;
t156 = t231 * t368 + t293 * t545;
t155 = -t369 * t610 - t372 * t408;
t154 = t283 * t369 - t618;
t152 = -t372 * t610 + t391;
t151 = t283 * t372 + t369 * t409;
t149 = (-t329 + t491) * t372;
t148 = t468 + t526;
t147 = t192 + t398;
t146 = -t194 + t380;
t143 = t414 * t371;
t142 = t394 + t522;
t141 = t483 + t308 + (-t242 - t320) * t372;
t136 = -rSges(5,3) * t471 + t492;
t135 = -rSges(5,3) * t627 + t454;
t120 = t369 * t528 + t297 + t567;
t119 = t398 + t535;
t118 = t380 - t533;
t97 = t272 * t543 + t368 * t532 + t253;
t96 = t192 * t368 + t272 * t545 + t531;
t91 = rSges(5,3) * t478 + t356 + (t600 * t372 + (-qJ(2) + t584 - t591) * t369) * qJD(1) - t454 + t487;
t90 = qJD(1) * t385 + t488 + t492 + t520;
t75 = (t369 * t532 + t372 * t534) * t371;
t74 = t368 * t494 + t524 * t543 + t253;
t73 = t368 * t535 + t371 * t468 + t531;
t72 = t194 * t372 + t369 * t495 + t530;
t69 = (-t293 * t513 + t136) * t368 + (qJD(3) * t231 + t394) * t371;
t68 = (-t293 * t511 - t135) * t368 + (-qJD(3) * t232 + t242 * t372 - t483) * t371;
t64 = (t369 * t494 + t372 * t496) * t371;
t63 = t369 * t461 + t372 * t533 + t530;
t46 = t414 * t514 + (-t135 * t369 - t136 * t372 + (t231 * t369 - t567) * qJD(1)) * t371;
t45 = t135 * t372 + t243 + (-t136 + t386) * t369 + (t528 * t372 + (-t232 - t307) * t369) * qJD(1);
t34 = -t129 * t545 + t131 * t301 + t133 * t302 + t215 * t226 + t216 * t228 + t224 * t388;
t33 = -t130 * t545 + t132 * t301 + t134 * t302 + t215 * t225 + t216 * t227 + t223 * t388;
t32 = t129 * t543 + t131 * t303 + t133 * t304 + t213 * t226 + t214 * t228 - t224 * t627;
t31 = t130 * t543 + t132 * t303 + t134 * t304 + t213 * t225 + t214 * t227 - t223 * t627;
t26 = -t104 * t545 - t108 * t278 + t112 * t279 - t174 * t186 + t175 * t190 + t182 * t388;
t25 = -t105 * t545 - t109 * t278 + t113 * t279 - t174 * t185 + t175 * t189 + t181 * t388;
t24 = t102 * t278 - t106 * t545 + t110 * t279 + t174 * t180 + t175 * t188 + t184 * t388;
t23 = t103 * t278 - t107 * t545 + t111 * t279 + t174 * t179 + t175 * t187 + t183 * t388;
t22 = t104 * t543 + t108 * t280 + t112 * t281 - t172 * t186 + t173 * t190 - t182 * t627;
t21 = t105 * t543 + t109 * t280 + t113 * t281 - t172 * t185 + t173 * t189 - t181 * t627;
t20 = -t102 * t280 + t106 * t543 + t110 * t281 + t172 * t180 + t173 * t188 - t184 * t627;
t19 = -t103 * t280 + t107 * t543 + t111 * t281 + t172 * t179 + t173 * t187 - t183 * t627;
t18 = t115 * t372 + (t386 + t538) * t369 + (t495 * t372 + (-t307 + t532) * t369) * qJD(1) + t537;
t15 = (t192 * t372 + t194 * t369) * t514 + ((qJD(1) * t192 + t539) * t369 + (qJD(1) * t532 + t538) * t372) * t371 + t493;
t14 = t541 * t372 + (t386 + t497) * t369 + (t461 * t372 + (-t307 + t494) * t369) * qJD(1) + t537;
t13 = (t369 * t533 + t372 * t535) * t514 + ((qJD(1) * t535 + t498) * t369 + (qJD(1) * t494 + t497) * t372) * t371 + t493;
t12 = -qJD(1) * t438 + t33 * t372 + t34 * t369;
t11 = -qJD(1) * t437 + t31 * t372 + t32 * t369;
t10 = -qJD(1) * t442 + t25 * t372 + t26 * t369;
t9 = -qJD(1) * t443 + t23 * t372 + t24 * t369;
t8 = -qJD(1) * t440 + t21 * t372 + t22 * t369;
t7 = -qJD(1) * t441 + t19 * t372 + t20 * t369;
t6 = (qJD(3) * t438 + t58) * t368 + (-qJD(1) * t61 + qJD(3) * t139 - t33 * t369 + t34 * t372) * t371;
t5 = (qJD(3) * t437 + t57) * t368 + (-qJD(1) * t62 + qJD(3) * t140 - t31 * t369 + t32 * t372) * t371;
t4 = (qJD(3) * t442 + t50) * t368 + (-qJD(1) * t52 + qJD(3) * t122 - t25 * t369 + t26 * t372) * t371;
t3 = (qJD(3) * t443 + t49) * t368 + (-qJD(1) * t51 + qJD(3) * t121 - t23 * t369 + t24 * t372) * t371;
t2 = (qJD(3) * t440 + t48) * t368 + (-qJD(1) * t54 + qJD(3) * t124 - t21 * t369 + t22 * t372) * t371;
t1 = (qJD(3) * t441 + t47) * t368 + (-qJD(1) * t53 + qJD(3) * t123 - t19 * t369 + t20 * t372) * t371;
t39 = [-t368 * t390 - t435 * t512 + t430 * t514 - t198 * t554 - t288 * t472 - t509 * t564 - t270 * t475 - t268 * t473 + 0.2e1 * m(3) * (t258 * t296 + t259 * t295) + (t162 * t250 + t163 * t249) * t606 + (t158 * t91 + t159 * t90) * t605 + (t146 * t71 + t147 * t70) * t604 + (t118 * t56 + t119 * t55) * t603 - t269 * t480 - t265 * t481 + (-t389 - t566) * t371 + t622; m(7) * ((t118 * t372 + t119 * t369) * qJD(1) + t446) + m(5) * (t369 * t91 - t372 * t90 + (t158 * t372 + t159 * t369) * qJD(1)) + m(6) * ((t146 * t372 + t147 * t369) * qJD(1) + t444) + m(4) * (-t162 * t372 + t369 * t163 + (t249 * t372 + t250 * t369) * qJD(1)) + m(3) * (-t258 * t372 + t369 * t259 + (t295 * t372 + t296 * t369) * qJD(1)); 0; m(5) * (t141 * t159 + t142 * t158 + t244 * t91 + t245 * t90) + m(6) * (t146 * t85 + t147 * t84 + t160 * t71 + t161 * t70) + m(7) * (t118 * t67 + t119 * t66 + t148 * t56 + t149 * t55) + ((qJD(1) * t609 + t369 * t389) * t599 + (qJD(1) * t608 + t369 * t390) * t596 + m(4) * (-t162 * t328 + t250 * t317) - t313 * t595 + (-t562 / 0.2e1 - t558 / 0.2e1) * qJD(3) - t384) * t372 + ((qJD(1) * t286 - t431 * t511) * t599 + (qJD(1) * t289 - t436 * t511) * t596 + m(4) * (t163 * t328 - t249 * t317) - t369 * t313 / 0.2e1 + (t560 / 0.2e1 + t556 / 0.2e1) * qJD(3) + t383) * t369 + ((t250 * t592 + t563 / 0.2e1 - t557 / 0.2e1 - t378) * t369 + (t561 / 0.2e1 - t555 / 0.2e1 + t249 * t592 - t379) * t372) * qJD(1); m(5) * (-t141 * t372 + t142 * t369 + (t244 * t372 + t245 * t369) * qJD(1)) + m(6) * ((t160 * t372 + t161 * t369) * qJD(1) + t439) + m(7) * ((t148 * t372 + t149 * t369) * qJD(1) + t445) - m(4) * t470; (t160 * t85 + t161 * t84 + t18 * t72) * t604 + (t14 * t63 + t148 * t67 + t149 * t66) * t603 + t372 * t9 + (t120 * t45 + t141 * t245 + t142 * t244) * t605 + t372 * t10 + t369 * t7 + t369 * t11 + t369 * t8 + t372 * t12 + t372 * ((t372 * t235 + (t152 + t618) * qJD(1)) * t372 + (-t151 * qJD(1) + (-t512 * t608 + t514 * t609) * t369 + (t234 + (t557 - t563) * qJD(3) + (-t283 + t408) * qJD(1)) * t372) * t369) + t369 * ((t369 * t234 + (-t154 + t391) * qJD(1)) * t369 + (t155 * qJD(1) + (t286 * t514 - t289 * t512 + t517) * t372 + (t235 + (t555 - t561) * qJD(3) + t409 * qJD(1)) * t369) * t372) + ((-t292 * t369 + t294 * t372) * (-t369 * t489 + (-t328 * t365 + t363 * t585) * qJD(3) + ((-t292 + t359) * t372 + (-t294 + t393 + t582) * t369) * qJD(1)) - t328 * t470) * t606 + (-t151 * t372 - t152 * t369 - t51 - t52 - t61) * t516 + (t154 * t372 + t155 * t369 + t53 + t54 + t62) * t515; m(5) * (t156 * t90 + t157 * t91 + t158 * t68 + t159 * t69) + m(6) * (t146 * t37 + t147 * t38 + t70 * t96 + t71 * t97) + m(7) * (t118 * t16 + t119 * t17 + t55 * t73 + t56 * t74) + (t369 * t378 + t372 * t379) * t514 + (t383 * t372 + t384 * t369 + (t369 * t379 - t372 * t378) * qJD(1)) * t371 + t399; m(5) * (t68 * t369 - t372 * t69 + (t156 * t369 + t157 * t372) * qJD(1)) + m(6) * ((t369 * t96 + t372 * t97) * qJD(1) + t447) + m(7) * ((t369 * t73 + t372 * t74) * qJD(1) + t448); m(5) * (t120 * t46 + t141 * t156 + t142 * t157 - t143 * t45 + t244 * t68 + t245 * t69) + m(6) * (t15 * t72 + t160 * t37 + t161 * t38 + t18 * t75 + t84 * t96 + t85 * t97) + m(7) * (t13 * t63 + t14 * t64 + t148 * t16 + t149 * t17 + t66 * t73 + t67 * t74) + (t6 / 0.2e1 + t4 / 0.2e1 + t3 / 0.2e1 + t457 * t514) * t372 + (t5 / 0.2e1 + t2 / 0.2e1 + t1 / 0.2e1 + t458 * t514) * t369 - (t9 + t10 + t12) * t545 / 0.2e1 - t613 * t516 / 0.2e1 + t612 * t515 / 0.2e1 + t625 * t512 / 0.2e1 + (qJD(1) * t624 + t614 * t369 + t615 * t372) * t368 / 0.2e1 + ((t369 * t457 - t372 * t458) * qJD(1) + (t7 + t8 + t11) * t595) * t371; (-t143 * t46 + t156 * t69 + t157 * t68) * t605 + (t15 * t75 + t37 * t97 + t38 * t96) * t604 + (t13 * t64 + t16 * t74 + t17 * t73) * t603 + (((-t368 * t502 - t612) * t372 + (t368 * t503 + t613) * t369) * qJD(3) + t399) * t368 + ((t1 + t2 + t5) * t372 + (-t3 - t4 - t6) * t369 + (-t615 * t369 + t614 * t372) * t368 + (t368 * t623 + t371 * t624) * qJD(3) + (-t368 * t625 - t369 * t612 - t372 * t613) * qJD(1)) * t371; 0.2e1 * ((t118 * t369 - t119 * t372) * t601 + (t146 * t369 - t147 * t372) * t602) * t514 + 0.2e1 * ((-t118 * t515 - t119 * t516 - t446) * t601 + (-t146 * t515 - t147 * t516 - t444) * t602) * t371; 0.2e1 * t518 * t406; 0.2e1 * ((t160 * t513 - t161 * t511 + t18) * t602 + (t148 * t513 - t149 * t511 + t14) * t601) * t368 + 0.2e1 * ((qJD(3) * t72 - t160 * t515 - t161 * t516 - t439) * t602 + (qJD(3) * t63 - t148 * t515 - t149 * t516 - t445) * t601) * t371; 0.2e1 * ((-t511 * t73 + t513 * t74 + t13) * t601 + (-t511 * t96 + t513 * t97 + t15) * t602) * t368 + 0.2e1 * ((qJD(3) * t64 - t515 * t74 - t516 * t73 - t448) * t601 + (qJD(3) * t75 - t515 * t97 - t516 * t96 - t447) * t602) * t371; 0.4e1 * (0.1e1 - t518) * t371 * t406; m(7) * (t118 * t174 + t119 * t172 + t278 * t56 - t280 * t55); m(7) * t607; m(7) * (t63 * t473 + t148 * t174 + t149 * t172 + t278 * t67 - t280 * t66 + (t14 * t371 - t514 * t63) * t353); m(7) * (t64 * t473 + t16 * t278 - t17 * t280 + t172 * t73 + t174 * t74 + (t13 * t371 - t514 * t64) * t353); m(7) * ((t353 * t364 + (t278 * t369 + t280 * t372 - t353 * t368) * t368) * qJD(3) + (t474 - t607) * t371); (-t172 * t280 + t174 * t278 + (qJD(4) * t354 * t364 - t371 * t481) * t353) * t603;];
%% Postprocessing: Reshape Output
% From vec2symmat_6_matlab.m
res = [t39(1) t39(2) t39(4) t39(7) t39(11) t39(16); t39(2) t39(3) t39(5) t39(8) t39(12) t39(17); t39(4) t39(5) t39(6) t39(9) t39(13) t39(18); t39(7) t39(8) t39(9) t39(10) t39(14) t39(19); t39(11) t39(12) t39(13) t39(14) t39(15) t39(20); t39(16) t39(17) t39(18) t39(19) t39(20) t39(21);];
Mq  = res;
