% Calculate vector of inverse dynamics joint torques for
% S4PRRR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% qJDD [4x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d2,d3,d4,theta1]';
% m_mdh [5x1]
%   mass of all robot links (including the base)
% rSges [5x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% Icges [5x6]
%   inertia of all robot links about their respective center of mass, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertiavector2matrix.m)
% 
% Output:
% tau [4x1]
%   joint torques of inverse dynamics (contains inertial, gravitational coriolis and centrifugal forces)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 16:35
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau = S4PRRR6_invdynJ_fixb_slag_vp1(qJ, qJD, qJDD, g, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(4,1),zeros(3,1),zeros(7,1),zeros(5,1),zeros(5,3),zeros(5,6)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PRRR6_invdynJ_fixb_slag_vp1: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4PRRR6_invdynJ_fixb_slag_vp1: qJD has to be [4x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [4 1]), ...
  'S4PRRR6_invdynJ_fixb_slag_vp1: qJDD has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4PRRR6_invdynJ_fixb_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4PRRR6_invdynJ_fixb_slag_vp1: pkin has to be [7x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4PRRR6_invdynJ_fixb_slag_vp1: m has to be [5x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [5,3]), ...
  'S4PRRR6_invdynJ_fixb_slag_vp1: rSges has to be [5x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [5 6]), ...
  'S4PRRR6_invdynJ_fixb_slag_vp1: Icges has to be [5x6] (double)'); 

%% Symbolic Calculation
% From invdyn_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 16:34:40
% EndTime: 2019-12-31 16:35:05
% DurationCPUTime: 22.71s
% Computational Cost: add. (14831->850), mult. (25789->1249), div. (0->0), fcn. (25024->8), ass. (0->399)
t323 = sin(pkin(7));
t319 = t323 ^ 2;
t324 = cos(pkin(7));
t320 = t324 ^ 2;
t326 = sin(qJ(2));
t328 = cos(qJ(2));
t287 = rSges(3,1) * t326 + rSges(3,2) * t328;
t568 = t319 + t320;
t573 = t287 * t568;
t572 = t323 * t324;
t322 = qJ(3) + qJ(4);
t313 = sin(t322);
t527 = rSges(5,2) * t313;
t314 = cos(t322);
t528 = rSges(5,1) * t314;
t415 = -t527 + t528;
t194 = t326 * rSges(5,3) + t328 * t415;
t571 = 2 * qJD(2);
t570 = 2 * qJDD(2);
t461 = qJD(2) * qJD(3);
t567 = qJDD(3) * t326 + t328 * t461;
t327 = cos(qJ(3));
t310 = pkin(3) * t327 + pkin(2);
t531 = pkin(2) - t310;
t431 = t531 * t326;
t329 = -pkin(6) - pkin(5);
t530 = pkin(5) + t329;
t566 = -t328 * t530 + t431;
t325 = sin(qJ(3));
t493 = t325 * t328;
t260 = t323 * t327 - t324 * t493;
t466 = qJD(2) * t326;
t465 = qJD(2) * t328;
t560 = t328 * pkin(2) + t326 * pkin(5);
t558 = g(1) * t324 + g(2) * t323;
t396 = Icges(5,5) * t314 - Icges(5,6) * t313;
t187 = -Icges(5,3) * t328 + t326 * t396;
t397 = Icges(4,5) * t327 - Icges(4,6) * t325;
t228 = -Icges(4,3) * t328 + t326 * t397;
t509 = Icges(5,4) * t314;
t400 = -Icges(5,2) * t313 + t509;
t189 = -Icges(5,6) * t328 + t326 * t400;
t513 = Icges(4,4) * t327;
t401 = -Icges(4,2) * t325 + t513;
t230 = -Icges(4,6) * t328 + t326 * t401;
t510 = Icges(5,4) * t313;
t404 = Icges(5,1) * t314 - t510;
t191 = -Icges(5,5) * t328 + t326 * t404;
t514 = Icges(4,4) * t325;
t405 = Icges(4,1) * t327 - t514;
t232 = -Icges(4,5) * t328 + t326 * t405;
t526 = pkin(3) * qJD(3);
t452 = t325 * t526;
t333 = qJD(2) * t566 - t328 * t452;
t451 = t327 * t526;
t102 = t323 * t333 - t324 * t451;
t103 = t323 * t451 + t324 * t333;
t498 = t323 * t328;
t224 = -t313 * t498 - t314 * t324;
t225 = -t324 * t313 + t314 * t498;
t500 = t323 * t326;
t121 = rSges(5,1) * t225 + rSges(5,2) * t224 + rSges(5,3) * t500;
t495 = t324 * t328;
t226 = -t313 * t495 + t314 * t323;
t227 = t313 * t323 + t314 * t495;
t496 = t324 * t326;
t122 = rSges(5,1) * t227 + rSges(5,2) * t226 + rSges(5,3) * t496;
t353 = -t326 * t530 - t328 * t531;
t497 = t324 * t325;
t139 = -pkin(3) * t497 + t323 * t353;
t501 = t323 * t325;
t140 = pkin(3) * t501 + t324 * t353;
t311 = qJDD(2) * t323;
t195 = t324 * t567 + t311;
t460 = qJD(2) * qJD(4);
t359 = qJDD(4) * t326 + t328 * t460;
t146 = t324 * t359 + t195;
t459 = qJDD(2) * t324;
t196 = t323 * t567 - t459;
t147 = t323 * t359 + t196;
t312 = qJD(2) * t323;
t464 = qJD(3) * t326;
t276 = t324 * t464 + t312;
t462 = qJD(4) * t326;
t208 = t324 * t462 + t276;
t467 = qJD(2) * t324;
t277 = t323 * t464 - t467;
t209 = t323 * t462 + t277;
t289 = pkin(2) * t326 - pkin(5) * t328;
t371 = qJD(2) * t289;
t250 = t323 * t371;
t251 = t324 * t371;
t270 = t560 * t323;
t271 = t560 * t324;
t383 = -t250 * t312 - t251 * t467 + t270 * t311 + t271 * t459 + qJDD(1);
t321 = qJD(3) + qJD(4);
t367 = t321 * t324 + t323 * t466;
t449 = t321 * t498;
t148 = t313 * t367 - t314 * t449;
t149 = -t313 * t449 - t314 * t367;
t440 = t323 * t465;
t85 = rSges(5,1) * t149 + rSges(5,2) * t148 + rSges(5,3) * t440;
t368 = -t321 * t323 + t324 * t466;
t448 = t321 * t495;
t150 = t313 * t368 - t314 * t448;
t151 = -t313 * t448 - t314 * t368;
t439 = t324 * t465;
t86 = rSges(5,1) * t151 + rSges(5,2) * t150 + rSges(5,3) * t439;
t13 = t102 * t276 - t103 * t277 + t121 * t146 - t122 * t147 + t139 * t195 - t140 * t196 + t208 * t85 - t209 * t86 + t383;
t434 = t270 * t312 + t271 * t467 + qJD(1);
t45 = t121 * t208 - t122 * t209 + t139 * t276 - t140 * t277 + t434;
t485 = t122 + t140;
t520 = t103 + t86;
t557 = -t13 * t485 - t45 * t520;
t491 = t327 * t328;
t261 = t324 * t491 + t501;
t515 = Icges(4,4) * t261;
t132 = Icges(4,2) * t260 + Icges(4,6) * t496 + t515;
t253 = Icges(4,4) * t260;
t134 = Icges(4,1) * t261 + Icges(4,5) * t496 + t253;
t391 = -t132 * t325 + t134 * t327;
t258 = -t323 * t493 - t324 * t327;
t259 = t323 * t491 - t497;
t516 = Icges(4,4) * t259;
t131 = Icges(4,2) * t258 + Icges(4,6) * t500 + t516;
t252 = Icges(4,4) * t258;
t133 = Icges(4,1) * t259 + Icges(4,5) * t500 + t252;
t392 = -t131 * t325 + t133 * t327;
t556 = -(-t228 * t324 - t391) * t276 - (-t228 * t323 - t392) * t277;
t188 = Icges(5,3) * t326 + t328 * t396;
t389 = -t189 * t313 + t191 * t314;
t511 = Icges(5,4) * t227;
t118 = Icges(5,2) * t226 + Icges(5,6) * t496 + t511;
t201 = Icges(5,4) * t226;
t120 = Icges(5,1) * t227 + Icges(5,5) * t496 + t201;
t394 = -t118 * t313 + t120 * t314;
t512 = Icges(5,4) * t225;
t117 = Icges(5,2) * t224 + Icges(5,6) * t500 + t512;
t200 = Icges(5,4) * t224;
t119 = Icges(5,1) * t225 + Icges(5,5) * t500 + t200;
t395 = -t117 * t313 + t119 * t314;
t420 = t321 * t328;
t554 = t208 * (-t187 * t324 - t394) + t209 * (-t187 * t323 - t395) - t420 * (t188 - t389);
t237 = (-Icges(5,2) * t314 - t510) * t326;
t338 = t208 * (-Icges(5,2) * t227 + t120 + t201) + t209 * (-Icges(5,2) * t225 + t119 + t200) - t420 * (t191 + t237);
t273 = (-Icges(4,2) * t327 - t514) * t326;
t463 = qJD(3) * t328;
t334 = t276 * (-Icges(4,2) * t261 + t134 + t253) + t277 * (-Icges(4,2) * t259 + t133 + t252) - t463 * (t232 + t273);
t552 = t146 / 0.2e1;
t551 = t147 / 0.2e1;
t550 = t195 / 0.2e1;
t549 = t196 / 0.2e1;
t309 = t326 * t461;
t199 = t326 * t460 + t309 + (-qJDD(3) - qJDD(4)) * t328;
t548 = t199 / 0.2e1;
t547 = -t208 / 0.2e1;
t546 = t208 / 0.2e1;
t545 = -t209 / 0.2e1;
t544 = t209 / 0.2e1;
t543 = -t276 / 0.2e1;
t542 = t276 / 0.2e1;
t541 = -t277 / 0.2e1;
t540 = t277 / 0.2e1;
t282 = -qJDD(3) * t328 + t309;
t539 = t282 / 0.2e1;
t538 = t420 / 0.2e1;
t537 = -t420 / 0.2e1;
t534 = -t328 / 0.2e1;
t529 = rSges(4,1) * t327;
t316 = t326 * rSges(4,3);
t193 = -rSges(5,3) * t328 + t326 * t415;
t444 = t289 * t312;
t51 = -t122 * t420 - t140 * t463 - t193 * t208 + t276 * t566 - t444;
t525 = t51 * t140;
t130 = Icges(4,5) * t261 + Icges(4,6) * t260 + Icges(4,3) * t496;
t60 = t130 * t500 + t132 * t258 + t134 * t259;
t524 = t60 * t324;
t129 = Icges(4,5) * t259 + Icges(4,6) * t258 + Icges(4,3) * t500;
t61 = t129 * t496 + t131 * t260 + t133 * t261;
t523 = t61 * t323;
t492 = t326 * t228;
t73 = t230 * t258 + t232 * t259 + t323 * t492;
t522 = t73 * t326;
t74 = t230 * t260 + t232 * t261 + t324 * t492;
t521 = t74 * t326;
t519 = t121 * t439 + t85 * t496;
t502 = t228 * t328;
t494 = t325 * t326;
t490 = t328 * t329;
t414 = -rSges(5,1) * t313 - rSges(5,2) * t314;
t247 = t414 * t326;
t114 = qJD(2) * t194 + t321 * t247;
t152 = qJD(2) * t353 - t326 * t452;
t489 = -t114 - t152;
t486 = t121 + t139;
t275 = (-rSges(4,1) * t325 - rSges(4,2) * t327) * t326;
t416 = -rSges(4,2) * t325 + t529;
t145 = qJD(3) * t275 + (t328 * t416 + t316) * qJD(2);
t279 = t560 * qJD(2);
t482 = -t145 - t279;
t481 = t566 - t193;
t479 = -t323 * t250 - t324 * t251;
t135 = t224 * rSges(5,1) - t225 * rSges(5,2);
t136 = t226 * rSges(5,1) - t227 * rSges(5,2);
t305 = pkin(5) * t498;
t306 = pkin(5) * t495;
t476 = (-pkin(2) * t500 + t305) * t312 + (-pkin(2) * t496 + t306) * t467;
t234 = -rSges(4,3) * t328 + t326 * t416;
t474 = -t234 - t289;
t473 = t323 * t270 + t324 * t271;
t453 = t326 * t527;
t472 = rSges(5,3) * t498 + t323 * t453;
t471 = rSges(5,3) * t495 + t324 * t453;
t454 = rSges(4,2) * t494;
t470 = rSges(4,3) * t498 + t323 * t454;
t469 = rSges(4,3) * t495 + t324 * t454;
t457 = pkin(3) * t494;
t456 = t326 * t529;
t455 = t326 * t528;
t450 = t114 * t500 + t193 * t440 + t328 * t85;
t446 = -t279 + t489;
t445 = -t289 + t481;
t443 = t289 * t467;
t442 = t560 * t312;
t441 = t560 * t467;
t438 = t325 * t466;
t437 = t327 * t466;
t436 = t500 / 0.2e1;
t435 = t496 / 0.2e1;
t429 = t466 / 0.2e1;
t428 = t465 / 0.2e1;
t427 = -t463 / 0.2e1;
t426 = t463 / 0.2e1;
t382 = -qJD(2) * t279 - qJDD(2) * t289;
t354 = t382 * t324;
t24 = t102 * t463 + t114 * t209 - t121 * t199 - t139 * t282 + t147 * t193 + t152 * t277 - t196 * t566 + t420 * t85 + t354;
t425 = t24 * (t328 * t121 + t193 * t500);
t424 = t208 * t135 - t136 * t209;
t423 = -t136 * t420 - t208 * t247;
t422 = t135 * t420 + t209 * t247;
t421 = t328 * t310 - t326 * t329;
t419 = t323 * t428;
t418 = t324 * t428;
t288 = rSges(3,1) * t328 - rSges(3,2) * t326;
t115 = Icges(5,5) * t225 + Icges(5,6) * t224 + Icges(5,3) * t500;
t53 = t115 * t500 + t117 * t224 + t119 * t225;
t116 = Icges(5,5) * t227 + Icges(5,6) * t226 + Icges(5,3) * t496;
t54 = t116 * t500 + t118 * t224 + t120 * t225;
t413 = t323 * t53 + t324 * t54;
t55 = t115 * t496 + t117 * t226 + t119 * t227;
t56 = t116 * t496 + t118 * t226 + t120 * t227;
t412 = t323 * t55 + t324 * t56;
t57 = -t115 * t328 + t326 * t395;
t58 = -t116 * t328 + t326 * t394;
t411 = t323 * t57 + t324 * t58;
t59 = t129 * t500 + t131 * t258 + t133 * t259;
t410 = t59 * t323 + t524;
t62 = t130 * t496 + t132 * t260 + t134 * t261;
t409 = t62 * t324 + t523;
t64 = -t129 * t328 + t326 * t392;
t65 = -t130 * t328 + t326 * t391;
t408 = t64 * t323 + t65 * t324;
t399 = Icges(3,5) * t328 - Icges(3,6) * t326;
t398 = -Icges(3,5) * t326 - Icges(3,6) * t328;
t393 = t129 * t277 + t130 * t276;
t137 = rSges(4,1) * t259 + rSges(4,2) * t258 + rSges(4,3) * t500;
t138 = rSges(4,1) * t261 + rSges(4,2) * t260 + rSges(4,3) * t496;
t390 = t137 * t324 - t138 * t323;
t386 = t568 * t288;
t385 = -t230 * t325 + t232 * t327;
t384 = qJD(2) * t573;
t255 = t260 * pkin(3);
t235 = rSges(4,1) * t491 - rSges(4,2) * t493 + t316;
t79 = Icges(5,5) * t149 + Icges(5,6) * t148 + Icges(5,3) * t440;
t381 = t115 * t465 + t326 * t79;
t80 = Icges(5,5) * t151 + Icges(5,6) * t150 + Icges(5,3) * t439;
t380 = t116 * t465 + t326 * t80;
t173 = -qJD(3) * t259 + t323 * t438;
t174 = qJD(3) * t258 - t323 * t437;
t93 = Icges(4,5) * t174 + Icges(4,6) * t173 + Icges(4,3) * t440;
t379 = t129 * t465 + t326 * t93;
t175 = -qJD(3) * t261 + t324 * t438;
t176 = qJD(3) * t260 - t324 * t437;
t94 = Icges(4,5) * t176 + Icges(4,6) * t175 + Icges(4,3) * t439;
t378 = t130 * t465 + t326 * t94;
t229 = Icges(4,3) * t326 + t328 * t397;
t372 = t229 - t385;
t236 = (-Icges(5,5) * t313 - Icges(5,6) * t314) * t326;
t110 = qJD(2) * t188 + t236 * t321;
t370 = t110 * t326 + t187 * t465;
t272 = (-Icges(4,5) * t325 - Icges(4,6) * t327) * t326;
t141 = qJD(2) * t229 + qJD(3) * t272;
t369 = t141 * t326 + t228 * t465;
t366 = t431 - t490;
t63 = t137 * t276 - t138 * t277 + t434;
t364 = t63 * t390;
t274 = (-Icges(4,1) * t325 - t513) * t326;
t238 = (-Icges(5,1) * t313 - t509) * t326;
t356 = qJD(2) * t398;
t355 = t382 * t323;
t254 = t258 * pkin(3);
t352 = (Icges(5,5) * t224 - Icges(5,6) * t225) * t209 + (Icges(5,5) * t226 - Icges(5,6) * t227) * t208 - t236 * t420;
t349 = -(Icges(4,5) * t258 - Icges(4,6) * t259) * t277 - (Icges(4,5) * t260 - Icges(4,6) * t261) * t276 + t272 * t463;
t348 = t326 * t352;
t233 = Icges(4,5) * t326 + t328 * t405;
t192 = Icges(5,5) * t326 + t328 * t404;
t231 = Icges(4,6) * t326 + t328 * t401;
t190 = Icges(5,6) * t326 + t328 * t400;
t341 = t326 * t349;
t81 = Icges(5,4) * t149 + Icges(5,2) * t148 + Icges(5,6) * t440;
t83 = Icges(5,1) * t149 + Icges(5,4) * t148 + Icges(5,5) * t440;
t15 = (qJD(2) * t395 - t79) * t328 + (qJD(2) * t115 + (-t117 * t321 + t83) * t314 + (-t119 * t321 - t81) * t313) * t326;
t82 = Icges(5,4) * t151 + Icges(5,2) * t150 + Icges(5,6) * t439;
t84 = Icges(5,1) * t151 + Icges(5,4) * t150 + Icges(5,5) * t439;
t16 = (qJD(2) * t394 - t80) * t328 + (qJD(2) * t116 + (-t118 * t321 + t84) * t314 + (-t120 * t321 - t82) * t313) * t326;
t70 = t187 * t500 + t189 * t224 + t191 * t225;
t21 = t208 * t54 + t209 * t53 - t420 * t70;
t71 = t187 * t496 + t189 * t226 + t191 * t227;
t22 = t208 * t56 + t209 * t55 - t420 * t71;
t25 = t117 * t148 + t119 * t149 + t224 * t81 + t225 * t83 + t323 * t381;
t26 = t118 * t148 + t120 * t149 + t224 * t82 + t225 * t84 + t323 * t380;
t27 = t117 * t150 + t119 * t151 + t226 * t81 + t227 * t83 + t324 * t381;
t28 = t118 * t150 + t120 * t151 + t226 * t82 + t227 * t84 + t324 * t380;
t111 = qJD(2) * t190 + t237 * t321;
t112 = qJD(2) * t192 + t238 * t321;
t42 = t111 * t224 + t112 * t225 + t148 * t189 + t149 * t191 + t323 * t370;
t3 = t146 * t54 + t147 * t53 + t199 * t70 + t208 * t26 + t209 * t25 - t42 * t420;
t87 = -t187 * t328 + t326 * t389;
t30 = t208 * t58 + t209 * t57 - t420 * t87;
t339 = (Icges(5,1) * t226 - t118 - t511) * t208 + (Icges(5,1) * t224 - t117 - t512) * t209 - (-t189 + t238) * t420;
t43 = t111 * t226 + t112 * t227 + t150 * t189 + t151 * t191 + t324 * t370;
t4 = t146 * t56 + t147 * t55 + t199 * t71 + t208 * t28 + t209 * t27 - t420 * t43;
t44 = (qJD(2) * t389 - t110) * t328 + (qJD(2) * t187 + (-t189 * t321 + t112) * t314 + (-t191 * t321 - t111) * t313) * t326;
t340 = t3 * t436 + t4 * t435 + (t226 * t338 + t227 * t339 + t324 * t348) * t547 + (t224 * t338 + t225 * t339 + t323 * t348) * t545 + (-t352 * t328 + (-t313 * t338 + t339 * t314) * t326) * t538 + t21 * t419 + t22 * t418 + (t326 * t412 - t328 * t71) * t552 + (t326 * t413 - t328 * t70) * t551 + t30 * t429 + (t326 * t411 - t328 * t87) * t548 + (t146 * t58 + t147 * t57 + t15 * t209 + t16 * t208 + t199 * t87 - t420 * t44) * t534 + (-t328 * t43 + (t27 * t323 + t28 * t324) * t326 + (t326 * t71 + t328 * t412) * qJD(2)) * t546 + (-t328 * t42 + (t25 * t323 + t26 * t324) * t326 + (t326 * t70 + t328 * t413) * qJD(2)) * t544 + (-t328 * t44 + (t15 * t323 + t16 * t324) * t326 + (t326 * t87 + t328 * t411) * qJD(2)) * t537;
t335 = (Icges(4,1) * t260 - t132 - t515) * t276 + (Icges(4,1) * t258 - t131 - t516) * t277 - (-t230 + t274) * t463;
t332 = (-t372 * t463 - t556) * t326;
t331 = (t115 * t209 + t116 * t208 - t187 * t420) * t328 + t554 * t326;
t283 = t321 * t326;
t269 = t287 * t324;
t268 = t287 * t323;
t263 = t398 * t324;
t262 = t398 * t323;
t257 = t324 * t420;
t256 = t323 * t420;
t242 = t324 * t356;
t241 = t323 * t356;
t211 = Icges(3,3) * t323 + t324 * t399;
t210 = -Icges(3,3) * t324 + t323 * t399;
t186 = t421 - t560;
t184 = -t324 * t456 + t469;
t183 = -t323 * t456 + t470;
t182 = t232 * t324;
t181 = t232 * t323;
t180 = t230 * t324;
t179 = t230 * t323;
t170 = -t324 * t455 + t471;
t169 = -t323 * t455 + t472;
t168 = t191 * t324;
t167 = t191 * t323;
t166 = t189 * t324;
t165 = t189 * t323;
t162 = t324 * t366 - t306;
t161 = t323 * t366 - t305;
t160 = rSges(4,1) * t260 - rSges(4,2) * t261;
t159 = rSges(4,1) * t258 - rSges(4,2) * t259;
t143 = qJD(2) * t233 + qJD(3) * t274;
t142 = qJD(2) * t231 + qJD(3) * t273;
t107 = t122 * t466;
t106 = t121 * t496;
t100 = rSges(4,1) * t176 + rSges(4,2) * t175 + rSges(4,3) * t439;
t99 = rSges(4,1) * t174 + rSges(4,2) * t173 + rSges(4,3) * t440;
t98 = Icges(4,1) * t176 + Icges(4,4) * t175 + Icges(4,5) * t439;
t97 = Icges(4,1) * t174 + Icges(4,4) * t173 + Icges(4,5) * t440;
t96 = Icges(4,4) * t176 + Icges(4,2) * t175 + Icges(4,6) * t439;
t95 = Icges(4,4) * t174 + Icges(4,2) * t173 + Icges(4,6) * t440;
t92 = t326 * t385 - t502;
t77 = t137 * t463 + t234 * t277 - t443;
t76 = -t138 * t463 - t234 * t276 - t444;
t72 = -qJD(2) * t384 + qJDD(2) * t386 + qJDD(1);
t52 = t121 * t420 + t139 * t463 + t193 * t209 - t277 * t566 - t443;
t50 = -t137 * t282 + t145 * t277 + t196 * t234 + t463 * t99 + t354;
t49 = -t100 * t463 + t138 * t282 - t145 * t276 - t195 * t234 + t355;
t48 = (qJD(2) * t385 - t141) * t328 + (qJD(2) * t228 - t142 * t325 + t143 * t327 + (-t230 * t327 - t232 * t325) * qJD(3)) * t326;
t47 = t142 * t260 + t143 * t261 + t175 * t230 + t176 * t232 + t324 * t369;
t46 = t142 * t258 + t143 * t259 + t173 * t230 + t174 * t232 + t323 * t369;
t41 = -t100 * t277 + t137 * t195 - t138 * t196 + t276 * t99 + t383;
t40 = t276 * t65 + t277 * t64 - t463 * t92;
t39 = t132 * t175 + t134 * t176 + t260 * t96 + t261 * t98 + t324 * t378;
t38 = t131 * t175 + t133 * t176 + t260 * t95 + t261 * t97 + t324 * t379;
t37 = t132 * t173 + t134 * t174 + t258 * t96 + t259 * t98 + t323 * t378;
t36 = t131 * t173 + t133 * t174 + t258 * t95 + t259 * t97 + t323 * t379;
t35 = t276 * t62 + t277 * t61 - t463 * t74;
t34 = t276 * t60 + t277 * t59 - t463 * t73;
t32 = (qJD(2) * t391 - t94) * t328 + (qJD(2) * t130 - t325 * t96 + t327 * t98 + (-t132 * t327 - t134 * t325) * qJD(3)) * t326;
t31 = (qJD(2) * t392 - t93) * t328 + (qJD(2) * t129 - t325 * t95 + t327 * t97 + (-t131 * t327 - t133 * t325) * qJD(3)) * t326;
t23 = -t103 * t463 - t114 * t208 + t122 * t199 + t140 * t282 - t146 * t193 - t152 * t276 + t195 * t566 - t420 * t86 + t355;
t10 = t195 * t62 + t196 * t61 + t276 * t39 + t277 * t38 + t282 * t74 - t463 * t47;
t9 = t195 * t60 + t196 * t59 + t276 * t37 + t277 * t36 + t282 * t73 - t46 * t463;
t1 = [m(2) * qJDD(1) + m(3) * t72 + m(4) * t41 + m(5) * t13 + (-m(2) - m(3) - m(4) - m(5)) * g(3); (-g(1) * (t306 + t469) - g(2) * (t305 + t470) - g(3) * (t235 + t560) - t558 * t326 * (-pkin(2) - t529) - t77 * (t235 * t277 - t441) - t76 * (-t235 * t276 - t442) - ((-t137 * t77 + t138 * t76) * t326 + (t77 * (t234 * t323 + t183) + t76 * (-t234 * t324 - t184) + t364) * t328) * qJD(3) + t41 * t473 + (t41 * t138 + t474 * t50 + t482 * t77) * t324 + (t41 * t137 + t474 * t49 + t482 * t76) * t323 + (t100 * t324 - t183 * t276 + t184 * t277 + t99 * t323 - t476 + t479) * t63) * m(4) + ((-t31 + t35) * t324 + (t32 + t34) * t323) * t427 - (t263 * qJD(2) * t319 - t262 * t323 * t467) * t312 / 0.2e1 + (t262 * qJD(2) * t320 - t263 * t324 * t312) * t467 / 0.2e1 - ((t210 * t320 - t211 * t572) * t570 + (t241 * t320 - t242 * t572) * t571 + t9 + t3) * t324 / 0.2e1 + (g(1) * t269 + g(2) * t268 - g(3) * t288 + t72 * t386 + (t288 * (qJD(2) ^ 2) + qJDD(2) * t287) * t573 + (-t384 - (-t268 * t323 - t269 * t324) * qJD(2)) * (qJD(2) * t386 + qJD(1))) * m(3) + ((-t210 * t572 + t211 * t319) * t570 + (-t241 * t572 + t242 * t319) * t571 + t10 + t4) * t323 / 0.2e1 + (t13 * t473 + t45 * t479 + (t24 * t445 + t446 * t52 - t557) * t324 + (t23 * t445 + t51 * t446 + t13 * t486 + t45 * (t102 + t85)) * t323 - t52 * (-t121 * t283 + t169 * t420 + t186 * t277 + t193 * t256 + t194 * t209 - t441) - t51 * (t122 * t283 - t170 * t420 - t186 * t276 - t193 * t257 - t194 * t208 - t442) - t45 * (t121 * t257 - t122 * t256 + t161 * t276 - t162 * t277 + t169 * t208 - t170 * t209 + t476) - ((-t139 * t52 + t525) * t326 + (t52 * (-t323 * t566 + t161) + t51 * (t324 * t566 - t162) + t45 * (t139 * t324 - t140 * t323)) * t328) * qJD(3) - g(1) * t471 - g(2) * t472 - g(3) * (t194 + t421) - t558 * (-t490 + (-t310 - t528) * t326)) * m(5) + ((-t166 * t224 - t168 * t225) * t208 + t54 * t257 + (-t165 * t224 - t167 * t225) * t209 + t53 * t256 - (t190 * t224 + t192 * t225) * t420 + t70 * t283 + t331 * t323) * t545 + ((-t166 * t226 - t168 * t227) * t208 + t56 * t257 + (-t165 * t226 - t167 * t227) * t209 + t55 * t256 - (t190 * t226 + t192 * t227) * t420 + t71 * t283 + t331 * t324) * t547 + (t57 * t256 + t58 * t257 + t87 * t283 - t554 * t328 + ((t166 * t313 - t168 * t314 + t116) * t208 + (t165 * t313 - t167 * t314 + t115) * t209 - (-t190 * t313 + t192 * t314 + t187) * t420) * t326) * t538 + (((t180 * t325 - t182 * t327 + t130) * t276 + (t179 * t325 - t181 * t327 + t129) * t277 + t92 * qJD(3)) * t326 + ((t372 * t328 + (t231 * t325 - t233 * t327 - t228) * t326 + t408) * qJD(3) + t556) * t328) * t426 + ((-t180 * t258 - t182 * t259) * t276 + (-t179 * t258 - t181 * t259) * t277 + (t522 + (-t231 * t258 - t233 * t259 + t524) * t328) * qJD(3) + (((t59 - t502) * qJD(3) + t393) * t328 + t332) * t323) * t541 + ((-t180 * t260 - t182 * t261) * t276 + (-t179 * t260 - t181 * t261) * t277 + (t521 + (-t231 * t260 - t233 * t261 + t523) * t328) * qJD(3) + (((t62 - t502) * qJD(3) + t393) * t328 + t332) * t324) * t543 + (-t27 * t324 + t28 * t323) * t546 + (t323 * t58 - t324 * t57) * t548 + (t323 * t60 - t324 * t59) * t549 + (t323 * t62 - t324 * t61) * t550 + (t323 * t54 - t324 * t53) * t551 + (t323 * t56 - t324 * t55) * t552 + (-t15 * t324 + t16 * t323) * t537 + (t323 * t65 - t324 * t64) * t539 + (t323 * t37 - t324 * t36) * t540 + (t323 * t39 - t324 * t38) * t542 + (-t25 * t324 + t26 * t323) * t544 - t40 * t464 / 0.2e1 - t256 * t21 / 0.2e1 - t257 * t22 / 0.2e1 - t283 * t30 / 0.2e1; (-t328 * t46 + (t323 * t36 + t324 * t37) * t326 + (t328 * t410 + t522) * qJD(2)) * t540 + (t349 * t328 + (-t325 * t334 + t335 * t327) * t326) * t426 + (-t328 * t48 + (t31 * t323 + t32 * t324) * t326 + (t92 * t326 + t328 * t408) * qJD(2)) * t427 + (t195 * t65 + t196 * t64 + t276 * t32 + t277 * t31 + t282 * t92 - t463 * t48) * t534 + (t326 * t408 - t328 * t92) * t539 + (t326 * t409 - t328 * t74) * t550 + (t326 * t410 - t328 * t73) * t549 + t340 + t35 * t418 + t34 * t419 + (-t328 * t47 + (t323 * t38 + t324 * t39) * t326 + (t328 * t409 + t521) * qJD(2)) * t542 + t9 * t436 + t10 * t435 + t40 * t429 + (t258 * t334 + t259 * t335 - t323 * t341) * t541 + (t260 * t334 + t261 * t335 - t324 * t341) * t543 + (-t52 * (t254 * t463 - t277 * t457 + t422) - t51 * (-t255 * t463 + t276 * t457 + t423) - t45 * (t254 * t276 - t255 * t277 + t424) + t425 + t52 * t450 + t51 * t107 + t13 * t106 + t45 * t519 + (t24 * t139 + t52 * t102 - t23 * t485 - t51 * t520 + ((t45 * t139 + t481 * t51) * t324 + (-t45 * t485 - t52 * t566) * t323) * qJD(2)) * t328 - g(1) * (t255 + t136) - g(2) * (t254 + t135) + ((-t486 * t52 + t525) * qJD(2) + (t45 * t102 + t13 * t139 + t23 * t481 + t489 * t51) * t324 + (t52 * t152 - t24 * t566 + t557) * t323 - g(3) * (-pkin(3) * t325 + t414)) * t326) * m(5) + ((-t76 * t100 + t50 * t137 - t49 * t138 + t77 * t99 + (t364 + (t77 * t323 - t76 * t324) * t234) * qJD(2)) * t328 + (t77 * (-qJD(2) * t137 + t145 * t323) + t76 * (qJD(2) * t138 - t145 * t324) + t41 * t390 + t63 * (-t100 * t323 + t324 * t99) + (t323 * t50 - t324 * t49) * t234) * t326 - t77 * (t159 * t463 + t275 * t277) - t76 * (-t160 * t463 - t275 * t276) - t63 * (t159 * t276 - t160 * t277) - g(1) * t160 - g(2) * t159 - g(3) * t275) * m(4); (t425 + t23 * (-t122 * t328 - t193 * t496) + t13 * (-t122 * t500 + t106) - g(1) * t136 - g(2) * t135 - g(3) * t247 + (-t121 * t466 - t422 + t450) * t52 + (-t328 * t86 + t107 + (-t114 * t326 - t193 * t465) * t324 - t423) * t51 + ((-t122 * t465 - t326 * t86) * t323 + t519 - t424) * t45) * m(5) + t340;];
tau = t1;