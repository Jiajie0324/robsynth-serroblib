% Calculate time derivative of joint inertia matrix for
% S6PRPRRR4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d4,d5,d6,theta1,theta3]';
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
% Datum: 2019-03-08 20:39
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S6PRPRRR4_inertiaDJ_slag_vp11(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(12,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPRRR4_inertiaDJ_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRPRRR4_inertiaDJ_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRPRRR4_inertiaDJ_slag_vp1: pkin has to be [12x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6PRPRRR4_inertiaDJ_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6PRPRRR4_inertiaDJ_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6PRPRRR4_inertiaDJ_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 20:36:04
% EndTime: 2019-03-08 20:36:40
% DurationCPUTime: 22.32s
% Computational Cost: add. (118254->1206), mult. (189407->1693), div. (0->0), fcn. (216152->14), ass. (0->481)
t438 = sin(pkin(12));
t441 = cos(pkin(12));
t443 = cos(pkin(6));
t440 = sin(pkin(6));
t446 = sin(qJ(2));
t548 = t440 * t446;
t419 = -t438 * t548 + t441 * t443;
t551 = t438 * t443;
t420 = t441 * t548 + t551;
t448 = cos(qJ(2));
t547 = t440 * t448;
t559 = Icges(3,4) * t446;
t593 = Icges(4,5) * t420 + Icges(4,6) * t419 - Icges(4,3) * t547 - Icges(3,6) * t443 - (Icges(3,2) * t448 + t559) * t440;
t471 = Icges(4,5) * t441 - Icges(4,6) * t438;
t520 = qJD(2) * t440;
t558 = Icges(3,4) * t448;
t592 = (t448 * t471 - t558 + (Icges(3,2) + Icges(4,3)) * t446) * t520;
t591 = Icges(3,5) * t443 + (Icges(3,1) * t446 + t558) * t440 - (Icges(4,4) * t420 + Icges(4,2) * t419 - Icges(4,6) * t547) * t438 + (Icges(4,1) * t420 + Icges(4,4) * t419 - Icges(4,5) * t547) * t441;
t437 = qJ(5) + qJ(6);
t434 = sin(t437);
t435 = cos(t437);
t442 = cos(pkin(11));
t439 = sin(pkin(11));
t546 = t443 * t446;
t512 = t439 * t546;
t424 = t442 * t448 - t512;
t515 = pkin(12) + qJ(4);
t433 = sin(t515);
t492 = cos(t515);
t550 = t439 * t440;
t394 = t424 * t492 + t433 * t550;
t518 = qJD(2) * t448;
t414 = -qJD(2) * t512 + t442 * t518;
t436 = qJD(5) + qJD(6);
t486 = -t394 * t436 + t414;
t545 = t443 * t448;
t423 = t439 * t545 + t442 * t446;
t413 = t423 * qJD(2);
t474 = t440 * t492;
t457 = -t424 * t433 + t439 * t474;
t346 = qJD(4) * t457 - t413 * t492;
t488 = t423 * t436 + t346;
t235 = -t434 * t488 + t435 * t486;
t236 = t434 * t486 + t435 * t488;
t345 = qJD(4) * t394 - t413 * t433;
t169 = rSges(7,1) * t236 + rSges(7,2) * t235 + rSges(7,3) * t345;
t349 = -t394 * t434 + t423 * t435;
t350 = t394 * t435 + t423 * t434;
t231 = rSges(7,1) * t350 + rSges(7,2) * t349 - rSges(7,3) * t457;
t422 = t439 * t448 + t442 * t546;
t549 = t440 * t442;
t392 = t422 * t492 - t433 * t549;
t463 = -t439 * t446 + t442 * t545;
t411 = t463 * qJD(2);
t343 = qJD(4) * t392 + t411 * t433;
t456 = -t422 * t433 - t442 * t474;
t412 = t422 * qJD(2);
t487 = -t392 * t436 + t412;
t344 = qJD(4) * t456 + t411 * t492;
t489 = -t436 * t463 + t344;
t233 = -t434 * t489 + t435 * t487;
t234 = t434 * t487 + t435 * t489;
t168 = rSges(7,1) * t234 + rSges(7,2) * t233 + rSges(7,3) * t343;
t347 = -t392 * t434 - t435 * t463;
t348 = t392 * t435 - t434 * t463;
t230 = rSges(7,1) * t348 + rSges(7,2) * t347 - rSges(7,3) * t456;
t543 = -t168 * t457 + t345 * t230;
t98 = t169 * t456 - t343 * t231 + t543;
t267 = t344 * pkin(4) + t343 * pkin(9);
t326 = t392 * pkin(4) - pkin(9) * t456;
t533 = t423 * t267 + t414 * t326;
t351 = pkin(2) * t411 + qJ(3) * t412 - qJD(3) * t463;
t352 = -pkin(2) * t413 + qJ(3) * t414 + qJD(3) * t423;
t524 = t351 * t550 + t352 * t549;
t580 = m(7) / 0.2e1;
t589 = m(6) / 0.2e1 + t580;
t588 = 0.2e1 * t580;
t224 = Icges(7,5) * t348 + Icges(7,6) * t347 - Icges(7,3) * t456;
t226 = Icges(7,4) * t348 + Icges(7,2) * t347 - Icges(7,6) * t456;
t228 = Icges(7,1) * t348 + Icges(7,4) * t347 - Icges(7,5) * t456;
t125 = -t224 * t456 + t226 * t347 + t228 * t348;
t225 = Icges(7,5) * t350 + Icges(7,6) * t349 - Icges(7,3) * t457;
t227 = Icges(7,4) * t350 + Icges(7,2) * t349 - Icges(7,6) * t457;
t229 = Icges(7,1) * t350 + Icges(7,4) * t349 - Icges(7,5) * t457;
t126 = -t225 * t456 + t227 * t347 + t229 * t348;
t409 = t443 * t433 + t446 * t474;
t385 = -t409 * t434 - t435 * t547;
t386 = t409 * t435 - t434 * t547;
t408 = t433 * t548 - t443 * t492;
t270 = Icges(7,5) * t386 + Icges(7,6) * t385 + Icges(7,3) * t408;
t271 = Icges(7,4) * t386 + Icges(7,2) * t385 + Icges(7,6) * t408;
t272 = Icges(7,1) * t386 + Icges(7,4) * t385 + Icges(7,5) * t408;
t148 = -t270 * t456 + t271 * t347 + t272 * t348;
t162 = Icges(7,5) * t234 + Icges(7,6) * t233 + Icges(7,3) * t343;
t164 = Icges(7,4) * t234 + Icges(7,2) * t233 + Icges(7,6) * t343;
t166 = Icges(7,1) * t234 + Icges(7,4) * t233 + Icges(7,5) * t343;
t42 = -t162 * t456 + t164 * t347 + t166 * t348 + t224 * t343 + t226 * t233 + t228 * t234;
t163 = Icges(7,5) * t236 + Icges(7,6) * t235 + Icges(7,3) * t345;
t165 = Icges(7,4) * t236 + Icges(7,2) * t235 + Icges(7,6) * t345;
t167 = Icges(7,1) * t236 + Icges(7,4) * t235 + Icges(7,5) * t345;
t43 = -t163 * t456 + t165 * t347 + t167 * t348 + t225 * t343 + t227 * t233 + t229 * t234;
t519 = qJD(2) * t446;
t499 = t440 * t519;
t462 = -t409 * t436 + t499;
t390 = -qJD(4) * t408 + t474 * t518;
t478 = t436 * t547 - t390;
t276 = t434 * t478 + t435 * t462;
t277 = t434 * t462 - t435 * t478;
t389 = t433 * t440 * t518 + qJD(4) * t409;
t199 = Icges(7,5) * t277 + Icges(7,6) * t276 + Icges(7,3) * t389;
t200 = Icges(7,4) * t277 + Icges(7,2) * t276 + Icges(7,6) * t389;
t201 = Icges(7,1) * t277 + Icges(7,4) * t276 + Icges(7,5) * t389;
t90 = -t199 * t456 + t200 * t347 + t201 * t348 + t233 * t271 + t234 * t272 + t270 * t343;
t11 = t125 * t412 + t126 * t414 - t42 * t463 + t423 * t43 + (t148 * t519 - t448 * t90) * t440;
t245 = Icges(5,5) * t344 - Icges(5,6) * t343 + Icges(5,3) * t412;
t247 = Icges(5,4) * t344 - Icges(5,2) * t343 + Icges(5,6) * t412;
t249 = Icges(5,1) * t344 - Icges(5,4) * t343 + Icges(5,5) * t412;
t292 = Icges(5,5) * t392 + Icges(5,6) * t456 - Icges(5,3) * t463;
t294 = Icges(5,4) * t392 + Icges(5,2) * t456 - Icges(5,6) * t463;
t296 = Icges(5,1) * t392 + Icges(5,4) * t456 - Icges(5,5) * t463;
t110 = -t245 * t463 + t247 * t456 + t249 * t392 + t292 * t412 - t294 * t343 + t296 * t344;
t246 = Icges(5,5) * t346 - Icges(5,6) * t345 + Icges(5,3) * t414;
t248 = Icges(5,4) * t346 - Icges(5,2) * t345 + Icges(5,6) * t414;
t250 = Icges(5,1) * t346 - Icges(5,4) * t345 + Icges(5,5) * t414;
t293 = Icges(5,5) * t394 + Icges(5,6) * t457 + Icges(5,3) * t423;
t295 = Icges(5,4) * t394 + Icges(5,2) * t457 + Icges(5,6) * t423;
t297 = Icges(5,1) * t394 + Icges(5,4) * t457 + Icges(5,5) * t423;
t111 = -t246 * t463 + t248 * t456 + t250 * t392 + t293 * t412 - t295 * t343 + t297 * t344;
t307 = Icges(5,5) * t390 - Icges(5,6) * t389 + Icges(5,3) * t499;
t308 = Icges(5,4) * t390 - Icges(5,2) * t389 + Icges(5,6) * t499;
t309 = Icges(5,1) * t390 - Icges(5,4) * t389 + Icges(5,5) * t499;
t357 = Icges(5,5) * t409 - Icges(5,6) * t408 - Icges(5,3) * t547;
t358 = Icges(5,4) * t409 - Icges(5,2) * t408 - Icges(5,6) * t547;
t359 = Icges(5,1) * t409 - Icges(5,4) * t408 - Icges(5,5) * t547;
t129 = -t307 * t463 + t308 * t456 + t309 * t392 - t343 * t358 + t344 * t359 + t357 * t412;
t445 = sin(qJ(5));
t447 = cos(qJ(5));
t353 = -t392 * t445 - t447 * t463;
t553 = t463 * t445;
t354 = t392 * t447 - t553;
t237 = Icges(6,5) * t354 + Icges(6,6) * t353 - Icges(6,3) * t456;
t239 = Icges(6,4) * t354 + Icges(6,2) * t353 - Icges(6,6) * t456;
t241 = Icges(6,1) * t354 + Icges(6,4) * t353 - Icges(6,5) * t456;
t132 = -t237 * t456 + t239 * t353 + t241 * t354;
t355 = -t394 * t445 + t423 * t447;
t552 = t423 * t445;
t356 = t394 * t447 + t552;
t238 = Icges(6,5) * t356 + Icges(6,6) * t355 - Icges(6,3) * t457;
t240 = Icges(6,4) * t356 + Icges(6,2) * t355 - Icges(6,6) * t457;
t242 = Icges(6,1) * t356 + Icges(6,4) * t355 - Icges(6,5) * t457;
t133 = -t238 * t456 + t240 * t353 + t242 * t354;
t398 = -t409 * t445 - t447 * t547;
t511 = t445 * t547;
t464 = -t409 * t447 + t511;
t283 = -Icges(6,5) * t464 + Icges(6,6) * t398 + Icges(6,3) * t408;
t284 = -Icges(6,4) * t464 + Icges(6,2) * t398 + Icges(6,6) * t408;
t285 = -Icges(6,1) * t464 + Icges(6,4) * t398 + Icges(6,5) * t408;
t150 = -t283 * t456 + t284 * t353 + t285 * t354;
t253 = -qJD(5) * t354 - t344 * t445 + t412 * t447;
t454 = qJD(5) * t353 + t412 * t445;
t254 = t344 * t447 + t454;
t172 = Icges(6,5) * t254 + Icges(6,6) * t253 + Icges(6,3) * t343;
t174 = Icges(6,4) * t254 + Icges(6,2) * t253 + Icges(6,6) * t343;
t176 = Icges(6,1) * t254 + Icges(6,4) * t253 + Icges(6,5) * t343;
t49 = -t172 * t456 + t174 * t353 + t176 * t354 + t237 * t343 + t239 * t253 + t241 * t254;
t255 = -qJD(5) * t356 - t346 * t445 + t414 * t447;
t453 = qJD(5) * t355 + t414 * t445;
t256 = t346 * t447 + t453;
t173 = Icges(6,5) * t256 + Icges(6,6) * t255 + Icges(6,3) * t345;
t175 = Icges(6,4) * t256 + Icges(6,2) * t255 + Icges(6,6) * t345;
t177 = Icges(6,1) * t256 + Icges(6,4) * t255 + Icges(6,5) * t345;
t50 = -t173 * t456 + t175 * t353 + t177 * t354 + t238 * t343 + t240 * t253 + t242 * t254;
t305 = qJD(5) * t464 - t390 * t445 + t447 * t499;
t451 = qJD(5) * t398 + t445 * t499;
t306 = t390 * t447 + t451;
t207 = Icges(6,5) * t306 + Icges(6,6) * t305 + Icges(6,3) * t389;
t208 = Icges(6,4) * t306 + Icges(6,2) * t305 + Icges(6,6) * t389;
t209 = Icges(6,1) * t306 + Icges(6,4) * t305 + Icges(6,5) * t389;
t94 = -t207 * t456 + t208 * t353 + t209 * t354 + t253 * t284 + t254 * t285 + t283 * t343;
t15 = t132 * t412 + t133 * t414 - t463 * t49 + t423 * t50 + (t150 * t519 - t448 * t94) * t440;
t182 = -t292 * t463 + t294 * t456 + t296 * t392;
t183 = -t293 * t463 + t295 * t456 + t297 * t392;
t197 = -t357 * t463 + t358 * t456 + t359 * t392;
t587 = t11 + t15 - t110 * t463 + t111 * t423 + t412 * t182 + t183 * t414 + (-t129 * t448 + t197 * t519) * t440;
t112 = t245 * t423 + t247 * t457 + t249 * t394 + t292 * t414 - t294 * t345 + t296 * t346;
t113 = t246 * t423 + t248 * t457 + t250 * t394 + t293 * t414 - t295 * t345 + t297 * t346;
t127 = -t224 * t457 + t226 * t349 + t228 * t350;
t128 = -t225 * t457 + t227 * t349 + t229 * t350;
t149 = -t270 * t457 + t271 * t349 + t272 * t350;
t44 = -t162 * t457 + t164 * t349 + t166 * t350 + t224 * t345 + t226 * t235 + t228 * t236;
t45 = -t163 * t457 + t165 * t349 + t167 * t350 + t225 * t345 + t227 * t235 + t229 * t236;
t91 = -t199 * t457 + t200 * t349 + t201 * t350 + t235 * t271 + t236 * t272 + t270 * t345;
t12 = t127 * t412 + t128 * t414 - t463 * t44 + t423 * t45 + (t149 * t519 - t448 * t91) * t440;
t130 = t307 * t423 + t308 * t457 + t309 * t394 - t345 * t358 + t346 * t359 + t357 * t414;
t134 = -t237 * t457 + t239 * t355 + t241 * t356;
t135 = -t238 * t457 + t240 * t355 + t242 * t356;
t151 = -t283 * t457 + t284 * t355 + t285 * t356;
t51 = -t172 * t457 + t174 * t355 + t176 * t356 + t237 * t345 + t239 * t255 + t241 * t256;
t52 = -t173 * t457 + t175 * t355 + t177 * t356 + t238 * t345 + t240 * t255 + t242 * t256;
t95 = -t207 * t457 + t208 * t355 + t209 * t356 + t255 * t284 + t256 * t285 + t283 * t345;
t16 = t134 * t412 + t135 * t414 - t463 * t51 + t423 * t52 + (t151 * t519 - t448 * t95) * t440;
t184 = t292 * t423 + t294 * t457 + t296 * t394;
t185 = t293 * t423 + t295 * t457 + t297 * t394;
t198 = t357 * t423 + t358 * t457 + t359 * t394;
t586 = t12 + t16 - t112 * t463 + t113 * t423 + t184 * t412 + t414 * t185 + (-t130 * t448 + t198 * t519) * t440;
t252 = rSges(5,1) * t346 - rSges(5,2) * t345 + rSges(5,3) * t414;
t561 = pkin(5) * t447;
t187 = pkin(5) * t453 + pkin(10) * t345 + t346 * t561;
t540 = t169 + t187;
t179 = rSges(6,1) * t256 + rSges(6,2) * t255 + rSges(6,3) * t345;
t565 = m(6) * t179;
t585 = -m(5) * t252 - m(7) * t540 - t565;
t584 = t440 ^ 2;
t583 = m(4) / 0.2e1;
t582 = m(5) / 0.2e1;
t579 = t343 / 0.2e1;
t578 = t345 / 0.2e1;
t577 = t389 / 0.2e1;
t576 = -t456 / 0.2e1;
t575 = -t457 / 0.2e1;
t574 = t408 / 0.2e1;
t573 = t412 / 0.2e1;
t572 = t414 / 0.2e1;
t571 = -t463 / 0.2e1;
t570 = t423 / 0.2e1;
t569 = t439 / 0.2e1;
t568 = -t442 / 0.2e1;
t567 = t443 / 0.2e1;
t178 = rSges(6,1) * t254 + rSges(6,2) * t253 + rSges(6,3) * t343;
t566 = m(6) * t178;
t243 = rSges(6,1) * t354 + rSges(6,2) * t353 - rSges(6,3) * t456;
t564 = m(6) * t243;
t244 = rSges(6,1) * t356 + rSges(6,2) * t355 - rSges(6,3) * t457;
t563 = m(6) * t244;
t562 = pkin(3) * t441;
t555 = t412 * t197;
t554 = t414 * t198;
t542 = t408 * t169 + t389 * t231;
t186 = pkin(5) * t454 + pkin(10) * t343 + t344 * t561;
t541 = t168 + t186;
t268 = t346 * pkin(4) + t345 * pkin(9);
t539 = -t179 - t268;
t202 = rSges(7,1) * t277 + rSges(7,2) * t276 + rSges(7,3) * t389;
t273 = rSges(7,1) * t386 + rSges(7,2) * t385 + rSges(7,3) * t408;
t538 = -t202 * t456 + t343 * t273;
t214 = pkin(5) * t451 + pkin(10) * t389 + t390 * t561;
t537 = t202 + t214;
t220 = -pkin(5) * t553 - pkin(10) * t456 + t392 * t561;
t536 = t220 + t230;
t221 = pkin(5) * t552 - pkin(10) * t457 + t394 * t561;
t535 = t221 + t231;
t327 = t394 * pkin(4) - pkin(9) * t457;
t534 = -t244 - t327;
t269 = -pkin(5) * t511 + pkin(10) * t408 + t409 * t561;
t532 = t269 + t273;
t299 = pkin(8) * t414 - t413 * t562;
t341 = t443 * t352;
t531 = t443 * t299 + t341;
t514 = t438 * t550;
t303 = pkin(3) * t514 + pkin(8) * t423 + t424 * t562;
t388 = pkin(2) * t424 + qJ(3) * t423;
t384 = t443 * t388;
t530 = t443 * t303 + t384;
t287 = -rSges(6,1) * t464 + rSges(6,2) * t398 + rSges(6,3) * t408;
t369 = t409 * pkin(4) + t408 * pkin(9);
t529 = -t287 - t369;
t298 = pkin(8) * t412 + t411 * t562;
t528 = -t298 - t351;
t513 = t438 * t549;
t302 = -pkin(3) * t513 - pkin(8) * t463 + t422 * t562;
t387 = pkin(2) * t422 - qJ(3) * t463;
t527 = -t302 - t387;
t526 = t326 * t547 - t369 * t463;
t525 = 0.2e1 * t524;
t425 = (pkin(2) * t446 - qJ(3) * t448) * t440;
t523 = -pkin(3) * t551 - (-pkin(8) * t448 + t446 * t562) * t440 - t425;
t522 = t387 * t550 + t388 * t549;
t405 = (-qJD(3) * t448 + (pkin(2) * t448 + qJ(3) * t446) * qJD(2)) * t440;
t521 = -(pkin(8) * t446 + t448 * t562) * t520 - t405;
t509 = -t268 - t540;
t508 = -t327 - t535;
t325 = t390 * pkin(4) + t389 * pkin(9);
t507 = t267 * t547 - t325 * t463 + t412 * t369;
t506 = t443 * t268 + t531;
t505 = -t267 + t528;
t504 = -t369 - t532;
t503 = t443 * t327 + t530;
t502 = -t326 + t527;
t501 = -t325 + t521;
t500 = -t369 + t523;
t498 = t519 / 0.2e1;
t497 = 0.2e1 * m(5);
t495 = 0.2e1 * m(6);
t493 = 0.2e1 * m(7);
t491 = t440 * (-rSges(4,1) * t420 - rSges(4,2) * t419 + rSges(4,3) * t547 - t425);
t476 = rSges(4,1) * t441 - rSges(4,2) * t438;
t490 = (-(rSges(4,3) * t446 + t448 * t476) * t520 - t405) * t440;
t278 = t298 * t550;
t279 = t299 * t549;
t484 = 0.2e1 * t278 + 0.2e1 * t279 + t525;
t483 = t278 + t279 + t524;
t482 = t302 * t550 + t303 * t549 + t522;
t310 = rSges(5,1) * t390 - rSges(5,2) * t389 + rSges(5,3) * t499;
t481 = (-t310 + t521) * t440;
t360 = rSges(5,1) * t409 - rSges(5,2) * t408 - rSges(5,3) * t547;
t480 = (-t360 + t523) * t440;
t138 = t224 * t408 + t226 * t385 + t228 * t386;
t139 = t225 * t408 + t227 * t385 + t229 * t386;
t160 = t270 * t408 + t271 * t385 + t272 * t386;
t55 = t162 * t408 + t164 * t385 + t166 * t386 + t224 * t389 + t226 * t276 + t228 * t277;
t56 = t163 * t408 + t165 * t385 + t167 * t386 + t225 * t389 + t227 * t276 + t229 * t277;
t96 = t199 * t408 + t200 * t385 + t201 * t386 + t270 * t389 + t271 * t276 + t272 * t277;
t20 = t138 * t343 + t139 * t345 + t160 * t389 + t408 * t96 - t456 * t55 - t457 * t56;
t65 = -t125 * t456 - t126 * t457 + t148 * t408;
t66 = -t127 * t456 - t128 * t457 + t149 * t408;
t7 = t125 * t343 + t126 * t345 + t148 * t389 + t408 * t90 - t42 * t456 - t43 * t457;
t8 = t127 * t343 + t128 * t345 + t149 * t389 + t408 * t91 - t44 * t456 - t45 * t457;
t81 = -t138 * t456 - t139 * t457 + t160 * t408;
t477 = t408 * t20 + t343 * t65 + t345 * t66 + t389 * t81 - t456 * t7 - t457 * t8;
t473 = Icges(4,1) * t441 - Icges(4,4) * t438;
t472 = Icges(4,4) * t441 - Icges(4,2) * t438;
t210 = rSges(6,1) * t306 + rSges(6,2) * t305 + rSges(6,3) * t389;
t469 = (-t210 + t501) * t440;
t468 = (-t287 + t500) * t440;
t263 = t267 * t550;
t264 = t268 * t549;
t466 = t263 + t264 + t483;
t465 = t326 * t550 + t327 * t549 + t482;
t461 = t98 * t588;
t460 = (t501 - t537) * t440;
t459 = (t500 - t532) * t440;
t27 = t443 * t90 + (-t42 * t442 + t43 * t439) * t440;
t28 = t443 * t91 + (t439 * t45 - t44 * t442) * t440;
t32 = t443 * t96 + (t439 * t56 - t442 * t55) * t440;
t71 = t148 * t443 + (-t125 * t442 + t126 * t439) * t440;
t72 = t149 * t443 + (-t127 * t442 + t128 * t439) * t440;
t87 = t160 * t443 + (-t138 * t442 + t139 * t439) * t440;
t458 = t20 * t567 + t27 * t576 + t28 * t575 + t32 * t574 + t8 * t550 / 0.2e1 - t7 * t549 / 0.2e1 + t71 * t579 + t72 * t578 + t87 * t577;
t22 = t138 * t412 + t139 * t414 - t463 * t55 + t423 * t56 + (t160 * t519 - t448 * t96) * t440;
t69 = -t125 * t463 + t126 * t423 - t148 * t547;
t70 = -t127 * t463 + t128 * t423 - t149 * t547;
t86 = -t138 * t463 + t139 * t423 - t160 * t547;
t455 = t11 * t576 + t12 * t575 + t8 * t570 + t7 * t571 - t20 * t547 / 0.2e1 + t22 * t574 + t65 * t573 + t66 * t572 + t69 * t579 + t70 * t578 + t440 * t81 * t498 + t86 * t577;
t251 = rSges(5,1) * t344 - rSges(5,2) * t343 + rSges(5,3) * t412;
t452 = m(5) * t251 + m(7) * t541 + t566;
t401 = -t422 * t438 - t441 * t549;
t402 = t422 * t441 - t513;
t403 = -t424 * t438 + t441 * t550;
t404 = t424 * t441 + t514;
t450 = (-(Icges(4,4) * t404 + Icges(4,2) * t403 + Icges(4,6) * t423) * t438 + (Icges(4,1) * t404 + Icges(4,4) * t403 + Icges(4,5) * t423) * t441) * t439 - (-(Icges(4,4) * t402 + Icges(4,2) * t401 - Icges(4,6) * t463) * t438 + (Icges(4,1) * t402 + Icges(4,4) * t401 - Icges(4,5) * t463) * t441) * t442;
t418 = (rSges(3,1) * t448 - rSges(3,2) * t446) * t520;
t417 = (Icges(3,1) * t448 - t559) * t520;
t415 = (Icges(3,5) * t448 - Icges(3,6) * t446) * t520;
t410 = rSges(3,3) * t443 + (rSges(3,1) * t446 + rSges(3,2) * t448) * t440;
t397 = (Icges(4,5) * t446 + t448 * t473) * t520;
t396 = (Icges(4,6) * t446 + t448 * t472) * t520;
t383 = -rSges(3,1) * t413 - rSges(3,2) * t414;
t382 = rSges(3,1) * t411 - rSges(3,2) * t412;
t380 = -Icges(3,1) * t413 - Icges(3,4) * t414;
t379 = Icges(3,1) * t411 - Icges(3,4) * t412;
t378 = -Icges(3,4) * t413 - Icges(3,2) * t414;
t377 = Icges(3,4) * t411 - Icges(3,2) * t412;
t376 = -Icges(3,5) * t413 - Icges(3,6) * t414;
t375 = Icges(3,5) * t411 - Icges(3,6) * t412;
t372 = rSges(3,1) * t424 - rSges(3,2) * t423 + rSges(3,3) * t550;
t371 = rSges(3,1) * t422 + rSges(3,2) * t463 - rSges(3,3) * t549;
t367 = Icges(3,1) * t424 - Icges(3,4) * t423 + Icges(3,5) * t550;
t366 = Icges(3,1) * t422 + Icges(3,4) * t463 - Icges(3,5) * t549;
t365 = Icges(3,4) * t424 - Icges(3,2) * t423 + Icges(3,6) * t550;
t364 = Icges(3,4) * t422 + Icges(3,2) * t463 - Icges(3,6) * t549;
t335 = rSges(4,3) * t414 - t413 * t476;
t334 = rSges(4,3) * t412 + t411 * t476;
t333 = Icges(4,5) * t414 - t413 * t473;
t332 = Icges(4,5) * t412 + t411 * t473;
t331 = Icges(4,6) * t414 - t413 * t472;
t330 = Icges(4,6) * t412 + t411 * t472;
t329 = Icges(4,3) * t414 - t413 * t471;
t328 = Icges(4,3) * t412 + t411 * t471;
t320 = t327 * t499;
t319 = rSges(4,1) * t404 + rSges(4,2) * t403 + rSges(4,3) * t423;
t318 = rSges(4,1) * t402 + rSges(4,2) * t401 - rSges(4,3) * t463;
t312 = Icges(4,5) * t404 + Icges(4,6) * t403 + Icges(4,3) * t423;
t311 = Icges(4,5) * t402 + Icges(4,6) * t401 - Icges(4,3) * t463;
t304 = t423 * t326;
t301 = rSges(5,1) * t394 + rSges(5,2) * t457 + rSges(5,3) * t423;
t300 = rSges(5,1) * t392 + rSges(5,2) * t456 - rSges(5,3) * t463;
t260 = t456 * t273;
t223 = -t301 * t547 - t360 * t423;
t222 = t300 * t547 - t360 * t463;
t219 = t408 * t231;
t218 = t457 * t230;
t216 = (-t318 - t387) * t443 + t442 * t491;
t215 = t319 * t443 + t439 * t491 + t384;
t213 = -t357 * t547 - t358 * t408 + t359 * t409;
t212 = (-t334 - t351) * t443 + t442 * t490;
t211 = t335 * t443 + t439 * t490 + t341;
t206 = t300 * t423 + t301 * t463;
t196 = (t318 * t439 + t319 * t442) * t440 + t522;
t194 = (t334 * t439 + t335 * t442) * t440 + t524;
t193 = t244 * t408 + t287 * t457;
t192 = -t243 * t408 - t287 * t456;
t191 = t273 * t457 + t219;
t190 = -t230 * t408 - t260;
t189 = -t293 * t547 - t295 * t408 + t297 * t409;
t188 = -t292 * t547 - t294 * t408 + t296 * t409;
t181 = (-t300 + t527) * t443 + t442 * t480;
t180 = t301 * t443 + t439 * t480 + t530;
t171 = t283 * t408 + t284 * t398 - t285 * t464;
t170 = -t243 * t457 + t244 * t456;
t161 = t231 * t456 - t218;
t158 = t423 * t529 + t534 * t547;
t157 = t243 * t547 - t287 * t463 + t526;
t153 = -t310 * t423 - t360 * t414 + (-t252 * t448 + t301 * t519) * t440;
t152 = -t310 * t463 + t360 * t412 + (t251 * t448 - t300 * t519) * t440;
t147 = (t300 * t439 + t301 * t442) * t440 + t482;
t146 = (-t251 + t528) * t443 + t442 * t481;
t145 = t252 * t443 + t439 * t481 + t531;
t144 = t243 * t423 - t463 * t534 + t304;
t143 = -t308 * t408 + t309 * t409 - t358 * t389 + t359 * t390 + (-t307 * t448 + t357 * t519) * t440;
t142 = t251 * t423 + t252 * t463 + t300 * t414 - t301 * t412;
t141 = t238 * t408 + t240 * t398 - t242 * t464;
t140 = t237 * t408 + t239 * t398 - t241 * t464;
t137 = (-t243 + t502) * t443 + t442 * t468;
t136 = t244 * t443 + t439 * t468 + t503;
t131 = (t251 * t439 + t252 * t442) * t440 + t483;
t124 = t221 * t408 + t457 * t532 + t219;
t123 = -t269 * t456 - t408 * t536 - t260;
t122 = t423 * t504 + t508 * t547;
t121 = -t463 * t532 + t536 * t547 + t526;
t120 = (t243 * t439 + t244 * t442) * t440 + t465;
t119 = -t220 * t457 + t456 * t535 - t218;
t118 = -t248 * t408 + t250 * t409 - t295 * t389 + t297 * t390 + (-t246 * t448 + t293 * t519) * t440;
t117 = -t247 * t408 + t249 * t409 - t294 * t389 + t296 * t390 + (-t245 * t448 + t292 * t519) * t440;
t116 = (t502 - t536) * t443 + t442 * t459;
t115 = t439 * t459 + t443 * t535 + t503;
t114 = t423 * t536 - t463 * t508 + t304;
t109 = t179 * t408 + t210 * t457 + t244 * t389 - t287 * t345;
t108 = -t178 * t408 - t210 * t456 - t243 * t389 + t287 * t343;
t107 = (-t178 + t505) * t443 + t442 * t469;
t106 = t179 * t443 + t439 * t469 + t506;
t105 = t202 * t457 - t273 * t345 + t542;
t104 = -t168 * t408 - t230 * t389 + t538;
t103 = (t439 * t536 + t442 * t535) * t440 + t465;
t102 = t207 * t408 + t208 * t398 - t209 * t464 + t283 * t389 + t284 * t305 + t285 * t306;
t101 = -t178 * t457 + t179 * t456 + t243 * t345 - t244 * t343;
t100 = t320 + (-t210 - t325) * t423 + t529 * t414 + (t244 * t519 + t448 * t539) * t440;
t99 = -t210 * t463 + t287 * t412 + (t178 * t448 + (-t243 - t326) * t519) * t440 + t507;
t97 = (t178 * t439 + t179 * t442) * t440 + t466;
t93 = t171 * t443 + (-t140 * t442 + t141 * t439) * t440;
t92 = -t140 * t463 + t141 * t423 - t171 * t547;
t89 = -t140 * t456 - t141 * t457 + t171 * t408;
t88 = t178 * t423 + t243 * t414 + t412 * t534 - t463 * t539 + t533;
t84 = (t505 - t541) * t443 + t442 * t460;
t83 = t439 * t460 + t443 * t540 + t506;
t79 = t151 * t443 + (-t134 * t442 + t135 * t439) * t440;
t78 = t150 * t443 + (-t132 * t442 + t133 * t439) * t440;
t76 = -t134 * t463 + t135 * t423 - t151 * t547;
t75 = -t132 * t463 + t133 * t423 - t150 * t547;
t74 = -t134 * t456 - t135 * t457 + t151 * t408;
t73 = -t132 * t456 - t133 * t457 + t150 * t408;
t64 = t173 * t408 + t175 * t398 - t177 * t464 + t238 * t389 + t240 * t305 + t242 * t306;
t63 = t172 * t408 + t174 * t398 - t176 * t464 + t237 * t389 + t239 * t305 + t241 * t306;
t54 = t187 * t408 + t221 * t389 - t345 * t532 + t457 * t537 + t542;
t53 = -t214 * t456 + t269 * t343 - t389 * t536 - t408 * t541 + t538;
t48 = (t439 * t541 + t442 * t540) * t440 + t466;
t47 = t320 + (-t325 - t537) * t423 + t504 * t414 + (t448 * t509 + t519 * t535) * t440;
t46 = -t537 * t463 + t532 * t412 + (t541 * t448 + (-t326 - t536) * t519) * t440 + t507;
t41 = t143 * t443 + (-t117 * t442 + t118 * t439) * t440;
t40 = -t186 * t457 + t220 * t345 - t343 * t535 + t456 * t540 + t543;
t39 = t130 * t443 + (-t112 * t442 + t113 * t439) * t440;
t38 = t129 * t443 + (-t110 * t442 + t111 * t439) * t440;
t37 = t412 * t508 + t414 * t536 + t423 * t541 - t463 * t509 + t533;
t36 = -t117 * t463 + t118 * t423 + t188 * t412 + t189 * t414 + (-t143 * t448 + t213 * t519) * t440;
t33 = t102 * t443 + (t439 * t64 - t442 * t63) * t440;
t30 = t443 * t95 + (t439 * t52 - t442 * t51) * t440;
t29 = t443 * t94 + (t439 * t50 - t442 * t49) * t440;
t24 = t140 * t412 + t141 * t414 - t463 * t63 + t423 * t64 + (-t102 * t448 + t171 * t519) * t440;
t23 = t102 * t408 + t140 * t343 + t141 * t345 + t171 * t389 - t456 * t63 - t457 * t64;
t14 = t134 * t343 + t135 * t345 + t151 * t389 + t408 * t95 - t456 * t51 - t457 * t52;
t13 = t132 * t343 + t133 * t345 + t150 * t389 + t408 * t94 - t456 * t49 - t457 * t50;
t1 = [0; t484 * t582 + t525 * t583 + (m(3) * t383 + m(4) * t335 - t585) * t549 + (m(3) * t382 + m(4) * t334 + t452) * t550 + t589 * (0.2e1 * t263 + 0.2e1 * t264 + t484); (t103 * t48 + t115 * t83 + t116 * t84) * t493 + (t106 * t136 + t107 * t137 + t120 * t97) * t495 + (t131 * t147 + t145 * t180 + t146 * t181) * t497 + (t32 + t33 + t41 + (t396 * t419 + t397 * t420 + t415 * t443) * t443 + ((t419 * t331 + t420 * t333) * t439 - (t419 * t330 + t420 * t332) * t442 + (-t375 * t442 + t376 * t439 + t417 * t446 - t592 * t448) * t443 + ((t378 * t448 + t380 * t446) * t439 - (t377 * t448 + t379 * t446) * t442 + (t328 * t442 - t329 * t439) * t448) * t440 + ((t446 * t593 + t591 * t448) * t443 + ((-t365 * t446 + t367 * t448) * t439 - (-t364 * t446 + t366 * t448) * t442 + (-t311 * t442 + t312 * t439) * t446 + t450 * t448) * t440) * qJD(2)) * t440) * t443 + (t28 + t30 + t39 + ((t312 * t414 + t329 * t423 + t331 * t403 + t333 * t404) * t439 - (t311 * t414 + t328 * t423 + t330 * t403 + t332 * t404) * t442 - t450 * t413) * t440 + (-t365 * t414 - t367 * t413 + t376 * t550 - t378 * t423 + t380 * t424) * t550 + (t403 * t396 + t404 * t397 - t413 * t591 + t414 * t593 + t415 * t550 + t417 * t424 + t423 * t592) * t443) * t550 + (-t27 - t29 - t38 - ((t312 * t412 - t329 * t463 + t331 * t401 + t333 * t402) * t439 - (t311 * t412 - t328 * t463 + t330 * t401 + t332 * t402) * t442 + t450 * t411) * t440 + (-t364 * t412 + t366 * t411 - t375 * t549 + t377 * t463 + t379 * t422) * t549 + (t364 * t414 + t365 * t412 + t366 * t413 - t367 * t411 - t375 * t550 + t376 * t549 + t377 * t423 - t378 * t463 - t379 * t424 - t380 * t422) * t550 + (-t401 * t396 - t402 * t397 - t411 * t591 - t412 * t593 + t415 * t549 - t417 * t422 + t463 * t592) * t443) * t549 + 0.2e1 * m(4) * (t194 * t196 + t211 * t215 + t212 * t216) + 0.2e1 * m(3) * ((-t371 * t443 - t410 * t549) * (-t382 * t443 - t418 * t549) + (t372 * t443 - t410 * t550) * (t383 * t443 - t418 * t550) + (t371 * t439 + t372 * t442) * t584 * (t382 * t439 + t383 * t442)); (m(4) + m(5) + m(6) + m(7)) * t499; (-m(4) * t194 - m(5) * t131 - m(6) * t97 - m(7) * t48) * t547 + (m(4) * t212 + m(5) * t146 + m(6) * t107 + m(7) * t84) * t423 - (m(4) * t211 + m(5) * t145 + m(6) * t106 + m(7) * t83) * t463 + (m(4) * t216 + m(5) * t181 + m(6) * t137 + m(7) * t116) * t414 + (m(4) * t215 + m(5) * t180 + m(6) * t136 + m(7) * t115) * t412 + (m(4) * t196 + m(5) * t147 + m(6) * t120 + m(7) * t103) * t499; 0.4e1 * (t582 + t583 + t589) * (-t446 * t518 * t584 - t412 * t463 + t414 * t423); t452 * t423 - t585 * t463 + (m(5) * t300 + m(7) * t536 + t564) * t414 + (-m(5) * t301 - m(7) * t535 - t563) * t412 + 0.2e1 * t589 * (t268 * t463 - t412 * t327 + t533); (t100 * t136 + t106 * t158 + t107 * t157 + t120 * t88 + t137 * t99 + t144 * t97) * m(6) + (t103 * t37 + t114 * t48 + t115 * t47 + t116 * t46 + t121 * t84 + t122 * t83) * m(7) + m(5) * (t131 * t206 + t142 * t147 + t145 * t223 + t146 * t222 + t152 * t181 + t153 * t180) + (t79 / 0.2e1 + t72 / 0.2e1) * t414 + (t78 / 0.2e1 + t71 / 0.2e1) * t412 + (t39 / 0.2e1 + t30 / 0.2e1 + t28 / 0.2e1) * t423 - (t38 / 0.2e1 + t29 / 0.2e1 + t27 / 0.2e1) * t463 + (t36 / 0.2e1 + t24 / 0.2e1 + t22 / 0.2e1 + t555 / 0.2e1 + t554 / 0.2e1) * t443 + ((-t182 * t442 + t183 * t439) * t573 + (-t184 * t442 + t185 * t439) * t572 + (-t41 / 0.2e1 - t32 / 0.2e1 - t33 / 0.2e1) * t448 + (t87 / 0.2e1 + t93 / 0.2e1 + t213 * t567 + (-t188 * t442 + t189 * t439) * t440 / 0.2e1) * t519) * t440 + t586 * t440 * t569 + t587 * t440 * t568; (-m(5) * t142 - m(6) * t88 - m(7) * t37) * t547 + (m(5) * t152 + m(6) * t99 + m(7) * t46) * t423 - (m(5) * t153 + m(6) * t100 + m(7) * t47) * t463 + (m(5) * t222 + m(6) * t157 + m(7) * t121) * t414 + (m(5) * t223 + m(6) * t158 + m(7) * t122) * t412 + (m(5) * t206 + m(6) * t144 + m(7) * t114) * t499; (t114 * t37 + t121 * t46 + t122 * t47) * t493 + (t100 * t158 + t144 * t88 + t157 * t99) * t495 + (t142 * t206 + t152 * t222 + t153 * t223) * t497 + t586 * t423 - t587 * t463 + (-t184 * t463 + t185 * t423 + t70 + t76) * t414 + (-t182 * t463 + t183 * t423 + t69 + t75) * t412 + ((-t188 * t463 + t189 * t423 + t86 + t92) * t519 + (-t213 * t499 - t22 - t24 - t36 - t554 - t555) * t448) * t440; t461 - (m(7) * t186 + t566) * t457 - (-m(7) * t187 - t565) * t456 + (m(7) * t220 + t564) * t345 + (-m(7) * t221 - t563) * t343; (t101 * t120 + t106 * t193 + t107 * t192 + t108 * t137 + t109 * t136 + t170 * t97) * m(6) + (t103 * t40 + t115 * t54 + t116 * t53 + t119 * t48 + t123 * t84 + t124 * t83) * m(7) + (t13 * t568 + t14 * t569) * t440 + t458 + t23 * t567 + t78 * t579 + t79 * t578 + t93 * t577 + t29 * t576 + t30 * t575 + t33 * t574; (-m(6) * t101 - m(7) * t40) * t547 + (m(6) * t108 + m(7) * t53) * t423 - (m(6) * t109 + m(7) * t54) * t463 + (m(6) * t192 + m(7) * t123) * t414 + (m(6) * t193 + m(7) * t124) * t412 + (m(6) * t170 + m(7) * t119) * t499; (t100 * t193 + t101 * t144 + t108 * t157 + t109 * t158 + t170 * t88 + t192 * t99) * m(6) + (t114 * t40 + t119 * t37 + t121 * t53 + t122 * t54 + t123 * t46 + t124 * t47) * m(7) + t455 + t14 * t570 + (t89 * t498 - t448 * t23 / 0.2e1) * t440 + t13 * t571 + t75 * t579 + t76 * t578 + t92 * t577 + t15 * t576 + t16 * t575 + t24 * t574 + t73 * t573 + t74 * t572; (t119 * t40 + t123 * t53 + t124 * t54) * t493 + (t101 * t170 + t108 * t192 + t109 * t193) * t495 + t389 * t89 + t408 * t23 + t345 * t74 - t457 * t14 + t343 * t73 - t456 * t13 + t477; t461; (t103 * t98 + t104 * t116 + t105 * t115 + t161 * t48 + t190 * t84 + t191 * t83) * m(7) + t458; (t104 * t423 - t105 * t463 + t190 * t414 + t191 * t412 + (t161 * t519 - t448 * t98) * t440) * t588; (t104 * t121 + t105 * t122 + t114 * t98 + t161 * t37 + t190 * t46 + t191 * t47) * m(7) + t455; (t104 * t123 + t105 * t124 + t119 * t98 + t161 * t40 + t190 * t53 + t191 * t54) * m(7) + t477; (t104 * t190 + t105 * t191 + t161 * t98) * t493 + t477;];
%% Postprocessing: Reshape Output
% From vec2symmat_6_matlab.m
res = [t1(1) t1(2) t1(4) t1(7) t1(11) t1(16); t1(2) t1(3) t1(5) t1(8) t1(12) t1(17); t1(4) t1(5) t1(6) t1(9) t1(13) t1(18); t1(7) t1(8) t1(9) t1(10) t1(14) t1(19); t1(11) t1(12) t1(13) t1(14) t1(15) t1(20); t1(16) t1(17) t1(18) t1(19) t1(20) t1(21);];
Mq  = res;