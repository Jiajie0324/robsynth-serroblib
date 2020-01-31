% Calculate matrix of centrifugal and coriolis load on the joints for
% S4PRRR7
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,alpha2,d2,d3,d4,theta1]';
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
% Cq [4x4]
%   matrix of coriolis and centrifugal joint torques.
%   Gives coriolis joint torques when multiplied with joint velocities

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 16:37
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S4PRRR7_coriolismatJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(8,1),zeros(5,1),zeros(5,3),zeros(5,6)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PRRR7_coriolismatJ_fixb_slag_vp1: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4PRRR7_coriolismatJ_fixb_slag_vp1: qJD has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S4PRRR7_coriolismatJ_fixb_slag_vp1: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4PRRR7_coriolismatJ_fixb_slag_vp1: m has to be [5x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [5,3]), ...
  'S4PRRR7_coriolismatJ_fixb_slag_vp1: rSges has to be [5x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [5 6]), ...
  'S4PRRR7_coriolismatJ_fixb_slag_vp1: Icges has to be [5x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 16:36:06
% EndTime: 2019-12-31 16:36:31
% DurationCPUTime: 22.43s
% Computational Cost: add. (90596->986), mult. (238252->1523), div. (0->0), fcn. (305339->10), ass. (0->458)
t604 = -2 * Icges(3,4);
t605 = Icges(3,1) - Icges(3,2);
t480 = 2 * m(5);
t603 = -t480 / 0.4e1;
t447 = t480 / 0.4e1;
t398 = sin(pkin(8));
t400 = cos(pkin(8));
t405 = cos(qJ(2));
t403 = sin(qJ(2));
t545 = cos(pkin(4));
t453 = t403 * t545;
t380 = t398 * t405 + t400 * t453;
t402 = sin(qJ(3));
t399 = sin(pkin(4));
t561 = cos(qJ(3));
t469 = t399 * t561;
t360 = t380 * t402 + t400 * t469;
t519 = t399 * t402;
t361 = t380 * t561 - t400 * t519;
t452 = t405 * t545;
t379 = t398 * t403 - t400 * t452;
t265 = Icges(4,5) * t361 - Icges(4,6) * t360 + Icges(4,3) * t379;
t422 = Icges(4,4) * t561 - Icges(4,2) * t402;
t295 = Icges(4,6) * t380 - t379 * t422;
t423 = Icges(4,1) * t561 - Icges(4,4) * t402;
t297 = Icges(4,5) * t380 - t379 * t423;
t541 = Icges(4,4) * t361;
t267 = -Icges(4,2) * t360 + Icges(4,6) * t379 + t541;
t357 = Icges(4,4) * t360;
t269 = Icges(4,1) * t361 + Icges(4,5) * t379 - t357;
t421 = Icges(4,5) * t561 - Icges(4,6) * t402;
t419 = -Icges(4,3) * t380 - t267 * t402 + t269 * t561 + t379 * t421;
t144 = t265 * t380 - t295 * t360 + t297 * t361 - t379 * t419;
t382 = -t398 * t453 + t400 * t405;
t362 = t382 * t402 - t398 * t469;
t363 = t382 * t561 + t398 * t519;
t381 = t398 * t452 + t400 * t403;
t266 = Icges(4,5) * t363 - Icges(4,6) * t362 + Icges(4,3) * t381;
t296 = Icges(4,6) * t382 - t381 * t422;
t298 = Icges(4,5) * t382 - t381 * t423;
t540 = Icges(4,4) * t363;
t268 = -Icges(4,2) * t362 + Icges(4,6) * t381 + t540;
t358 = Icges(4,4) * t362;
t270 = Icges(4,1) * t363 + Icges(4,5) * t381 - t358;
t418 = -Icges(4,3) * t382 - t268 * t402 + t270 * t561 + t381 * t421;
t145 = t266 * t380 - t296 * t360 + t298 * t361 - t379 * t418;
t518 = t399 * t403;
t383 = t402 * t518 - t545 * t561;
t384 = t402 * t545 + t403 * t469;
t517 = t399 * t405;
t321 = Icges(4,5) * t384 - Icges(4,6) * t383 - Icges(4,3) * t517;
t367 = (Icges(4,6) * t403 + t405 * t422) * t399;
t368 = (Icges(4,5) * t403 + t405 * t423) * t399;
t539 = Icges(4,4) * t384;
t322 = -Icges(4,2) * t383 - Icges(4,6) * t517 + t539;
t378 = Icges(4,4) * t383;
t323 = Icges(4,1) * t384 - Icges(4,5) * t517 - t378;
t417 = -t322 * t402 + t323 * t561 - (Icges(4,3) * t403 + t405 * t421) * t399;
t178 = t321 * t380 - t360 * t367 + t361 * t368 - t379 * t417;
t401 = sin(qJ(4));
t404 = cos(qJ(4));
t311 = -t361 * t401 + t379 * t404;
t312 = t361 * t404 + t379 * t401;
t228 = Icges(5,5) * t312 + Icges(5,6) * t311 + Icges(5,3) * t360;
t538 = Icges(5,4) * t312;
t230 = Icges(5,2) * t311 + Icges(5,6) * t360 + t538;
t309 = Icges(5,4) * t311;
t232 = Icges(5,1) * t312 + Icges(5,5) * t360 + t309;
t468 = t401 * t561;
t331 = t379 * t468 + t380 * t404;
t467 = t404 * t561;
t332 = -t379 * t467 + t380 * t401;
t525 = t379 * t402;
t247 = Icges(5,5) * t332 + Icges(5,6) * t331 - Icges(5,3) * t525;
t249 = Icges(5,4) * t332 + Icges(5,2) * t331 - Icges(5,6) * t525;
t251 = Icges(5,1) * t332 + Icges(5,4) * t331 - Icges(5,5) * t525;
t101 = -t228 * t525 + t230 * t331 + t232 * t332 + t247 * t360 + t249 * t311 + t251 * t312;
t313 = -t363 * t401 + t381 * t404;
t314 = t363 * t404 + t381 * t401;
t229 = Icges(5,5) * t314 + Icges(5,6) * t313 + Icges(5,3) * t362;
t537 = Icges(5,4) * t314;
t231 = Icges(5,2) * t313 + Icges(5,6) * t362 + t537;
t310 = Icges(5,4) * t313;
t233 = Icges(5,1) * t314 + Icges(5,5) * t362 + t310;
t333 = t381 * t468 + t382 * t404;
t334 = -t381 * t467 + t382 * t401;
t522 = t381 * t402;
t248 = Icges(5,5) * t334 + Icges(5,6) * t333 - Icges(5,3) * t522;
t250 = Icges(5,4) * t334 + Icges(5,2) * t333 - Icges(5,6) * t522;
t252 = Icges(5,1) * t334 + Icges(5,4) * t333 - Icges(5,5) * t522;
t102 = -t229 * t525 + t231 * t331 + t233 * t332 + t248 * t360 + t250 * t311 + t252 * t312;
t364 = -t384 * t401 - t404 * t517;
t365 = t384 * t404 - t401 * t517;
t273 = Icges(5,5) * t365 + Icges(5,6) * t364 + Icges(5,3) * t383;
t536 = Icges(5,4) * t365;
t274 = Icges(5,2) * t364 + Icges(5,6) * t383 + t536;
t359 = Icges(5,4) * t364;
t275 = Icges(5,1) * t365 + Icges(5,5) * t383 + t359;
t466 = t405 * t561;
t370 = (-t401 * t466 + t403 * t404) * t399;
t371 = (t401 * t403 + t404 * t466) * t399;
t516 = t402 * t405;
t472 = t399 * t516;
t305 = Icges(5,5) * t371 + Icges(5,6) * t370 + Icges(5,3) * t472;
t306 = Icges(5,4) * t371 + Icges(5,2) * t370 + Icges(5,6) * t472;
t307 = Icges(5,1) * t371 + Icges(5,4) * t370 + Icges(5,5) * t472;
t128 = -t273 * t525 + t274 * t331 + t275 * t332 + t305 * t360 + t306 * t311 + t307 * t312;
t35 = t128 * t545 + (-t101 * t400 + t102 * t398) * t399;
t602 = t178 * t545 + (-t144 * t400 + t145 * t398) * t399 + t35;
t146 = t265 * t382 - t295 * t362 + t297 * t363 - t381 * t419;
t147 = t266 * t382 - t296 * t362 + t298 * t363 - t381 * t418;
t179 = t321 * t382 - t362 * t367 + t363 * t368 - t381 * t417;
t103 = -t228 * t522 + t230 * t333 + t232 * t334 + t247 * t362 + t249 * t313 + t251 * t314;
t104 = -t229 * t522 + t231 * t333 + t233 * t334 + t248 * t362 + t250 * t313 + t252 * t314;
t129 = -t273 * t522 + t274 * t333 + t275 * t334 + t305 * t362 + t306 * t313 + t307 * t314;
t36 = t129 * t545 + (-t103 * t400 + t104 * t398) * t399;
t601 = t179 * t545 + (-t146 * t400 + t147 * t398) * t399 + t36;
t157 = -t383 * t295 + t384 * t297 + (t265 * t403 + t405 * t419) * t399;
t158 = -t383 * t296 + t384 * t298 + (t266 * t403 + t405 * t418) * t399;
t196 = -t383 * t367 + t384 * t368 + (t321 * t403 + t405 * t417) * t399;
t111 = t228 * t472 + t230 * t370 + t232 * t371 + t247 * t383 + t249 * t364 + t251 * t365;
t112 = t229 * t472 + t231 * t370 + t233 * t371 + t248 * t383 + t250 * t364 + t252 * t365;
t149 = t273 * t472 + t274 * t370 + t275 * t371 + t305 * t383 + t306 * t364 + t307 * t365;
t57 = t149 * t545 + (-t111 * t400 + t112 * t398) * t399;
t600 = t196 * t545 + (-t157 * t400 + t158 * t398) * t399 + t57;
t486 = -Icges(3,6) * t545 + (t403 * t604 + t405 * t605) * t399;
t599 = 0.2e1 * Icges(3,4) * t517 + Icges(3,5) * t545 + t518 * t605;
t434 = -rSges(5,1) * t404 + rSges(5,2) * t401;
t264 = rSges(5,3) * t363 + t362 * t434;
t505 = -pkin(3) * t362 + pkin(7) * t363 + t264;
t440 = t505 * t400;
t263 = rSges(5,3) * t361 + t360 * t434;
t506 = -pkin(3) * t360 + pkin(7) * t361 + t263;
t598 = t398 * t506 + t440;
t597 = t399 ^ 2;
t596 = -t379 / 0.2e1;
t575 = t379 / 0.2e1;
t595 = -t381 / 0.2e1;
t572 = t381 / 0.2e1;
t562 = t402 / 0.4e1;
t458 = -t517 / 0.2e1;
t594 = t517 / 0.2e1;
t193 = -t265 * t517 - t267 * t383 + t269 * t384;
t194 = -t266 * t517 - t268 * t383 + t270 * t384;
t221 = -t321 * t517 - t322 * t383 + t323 * t384;
t151 = t228 * t383 + t230 * t364 + t232 * t365;
t152 = t229 * t383 + t231 * t364 + t233 * t365;
t188 = t273 * t383 + t274 * t364 + t275 * t365;
t412 = -t151 * t379 - t152 * t381 + t188 * t517;
t592 = (-t412 / 0.2e1 + t193 * t575 + t194 * t572 + t221 * t458) * t403;
t234 = rSges(5,1) * t312 + rSges(5,2) * t311 + rSges(5,3) * t360;
t510 = pkin(3) * t361 + pkin(7) * t360 + t234;
t235 = rSges(5,1) * t314 + rSges(5,2) * t313 + rSges(5,3) * t362;
t509 = pkin(3) * t363 + pkin(7) * t362 + t235;
t255 = rSges(5,1) * t332 + rSges(5,2) * t331 - rSges(5,3) * t525;
t429 = pkin(3) * t561 + pkin(7) * t402;
t508 = -t379 * t429 + t255;
t256 = rSges(5,1) * t334 + rSges(5,2) * t333 - rSges(5,3) * t522;
t507 = -t381 * t429 + t256;
t520 = t399 * t400;
t495 = Icges(3,6) * t520 - t379 * t605 + t380 * t604;
t521 = t398 * t399;
t494 = -Icges(3,6) * t521 - t381 * t605 + t382 * t604;
t591 = -Icges(3,5) * t520 + t379 * t604 + t380 * t605;
t590 = Icges(3,5) * t521 + t381 * t604 + t382 * t605;
t347 = -pkin(2) * t379 + pkin(6) * t380;
t349 = -pkin(2) * t381 + pkin(6) * t382;
t488 = t347 * t521 + t349 * t520;
t524 = t381 * t234;
t527 = t379 * t235;
t530 = t362 * t255;
t533 = t360 * t256;
t137 = (-t524 + t527) * t402 + t530 - t533;
t589 = -t379 * t507 - t380 * t509 + t382 * t510;
t348 = pkin(2) * t380 + pkin(6) * t379;
t350 = pkin(2) * t382 + pkin(6) * t381;
t487 = t348 * t521 + t350 * t520;
t150 = (t398 * t510 + t400 * t509) * t399 + t487;
t160 = -t379 * t509 + t381 * t510;
t338 = t545 * t350;
t389 = (pkin(2) * t403 - pkin(6) * t405) * t399;
t276 = rSges(5,1) * t365 + rSges(5,2) * t364 + rSges(5,3) * t383;
t498 = pkin(3) * t384 + pkin(7) * t383 + t276;
t435 = (-t389 - t498) * t399;
t168 = t398 * t435 + t509 * t545 + t338;
t450 = t545 * t348;
t169 = t400 * t435 - t510 * t545 - t450;
t173 = t379 * t498 + t510 * t517;
t174 = -t381 * t498 - t509 * t517;
t245 = rSges(5,1) * t311 - rSges(5,2) * t312;
t523 = t381 * t245;
t246 = rSges(5,1) * t313 - rSges(5,2) * t314;
t526 = t379 * t246;
t206 = t523 - t526;
t534 = t246 * t400;
t535 = t245 * t398;
t208 = (t534 + t535) * t399;
t292 = rSges(5,1) * t364 - rSges(5,2) * t365;
t217 = t245 * t517 + t292 * t379;
t218 = -t246 * t517 - t292 * t381;
t219 = t246 * t545 - t292 * t521;
t220 = -t245 * t545 - t292 * t520;
t239 = Icges(5,5) * t311 - Icges(5,6) * t312;
t512 = -Icges(5,2) * t312 + t232 + t309;
t514 = Icges(5,1) * t311 - t230 - t538;
t115 = t239 * t360 + t311 * t512 + t312 * t514;
t240 = Icges(5,5) * t313 - Icges(5,6) * t314;
t511 = -Icges(5,2) * t314 + t233 + t310;
t513 = Icges(5,1) * t313 - t231 - t537;
t116 = t240 * t360 + t311 * t511 + t312 * t513;
t289 = Icges(5,5) * t364 - Icges(5,6) * t365;
t499 = -Icges(5,2) * t365 + t275 + t359;
t500 = Icges(5,1) * t364 - t274 - t536;
t138 = t289 * t360 + t311 * t499 + t312 * t500;
t55 = t138 * t545 + (-t115 * t400 + t116 * t398) * t399;
t117 = t239 * t362 + t313 * t512 + t314 * t514;
t118 = t240 * t362 + t313 * t511 + t314 * t513;
t139 = t289 * t362 + t313 * t499 + t314 * t500;
t56 = t139 * t545 + (-t117 * t400 + t118 * t398) * t399;
t126 = t239 * t383 + t364 * t512 + t365 * t514;
t127 = t240 * t383 + t364 * t511 + t365 * t513;
t159 = t289 * t383 + t364 * t499 + t365 * t500;
t65 = t126 * t379 + t127 * t381 - t159 * t517;
t588 = -t545 * t65 / 0.4e1 - t381 * t56 / 0.4e1 - t379 * t55 / 0.4e1 + (t150 * t206 + t160 * t208 + t168 * t218 + t169 * t217 + t173 * t220 + t174 * t219) * t603;
t122 = t381 * t508 + t589;
t308 = rSges(5,1) * t371 + rSges(5,2) * t370 + rSges(5,3) * t472;
t496 = t429 * t517 + t308;
t132 = t498 * t380 + t496 * t379 + (-t403 * t510 + t405 * t508) * t399;
t133 = -t498 * t382 - t496 * t381 + (t403 * t509 - t405 * t507) * t399;
t163 = -t383 * t255 + t360 * t308 + (-t234 * t517 - t276 * t379) * t402;
t164 = t383 * t256 - t362 * t308 + (t235 * t517 + t276 * t381) * t402;
t181 = t234 * t362 - t235 * t360;
t140 = t228 * t360 + t230 * t311 + t232 * t312;
t141 = t229 * t360 + t231 * t311 + t233 * t312;
t171 = t273 * t360 + t274 * t311 + t275 * t312;
t20 = t101 * t379 + t102 * t381 + t140 * t380 + t141 * t382 + (-t128 * t405 + t171 * t403) * t399;
t200 = -t234 * t383 + t276 * t360;
t201 = t235 * t383 - t276 * t362;
t142 = t228 * t362 + t230 * t313 + t232 * t314;
t143 = t229 * t362 + t231 * t313 + t233 * t314;
t172 = t273 * t362 + t274 * t313 + t275 * t314;
t21 = t103 * t379 + t104 * t381 + t142 * t380 + t143 * t382 + (-t129 * t405 + t172 * t403) * t399;
t33 = t111 * t379 + t112 * t381 + t151 * t380 + t152 * t382 + (-t149 * t405 + t188 * t403) * t399;
t74 = t140 * t360 + t141 * t362 + t171 * t383;
t75 = t142 * t360 + t143 * t362 + t172 * t383;
t587 = -t383 * t33 / 0.4e1 - t382 * t75 / 0.4e1 - t380 * t74 / 0.4e1 - t362 * t21 / 0.4e1 - t360 * t20 / 0.4e1 + (t122 * t181 + t132 * t200 + t133 * t201 + t137 * t160 + t163 * t173 + t164 * t174) * t603;
t528 = t363 * t234;
t529 = t362 * t263;
t531 = t361 * t235;
t532 = t360 * t264;
t136 = t528 + t529 - t531 - t532;
t304 = rSges(5,3) * t384 + t383 * t434;
t161 = -t234 * t384 - t263 * t383 + t276 * t361 + t304 * t360;
t162 = t235 * t384 + t264 * t383 - t276 * t363 - t304 * t362;
t177 = t598 * t399;
t497 = -pkin(3) * t383 + pkin(7) * t384 + t304;
t445 = t399 * t497;
t197 = -t398 * t445 + t505 * t545;
t198 = -t400 * t445 - t506 * t545;
t432 = -Icges(5,4) * t404 + Icges(5,2) * t401;
t259 = Icges(5,6) * t361 + t360 * t432;
t433 = -Icges(5,1) * t404 + Icges(5,4) * t401;
t261 = Icges(5,5) * t361 + t360 * t433;
t431 = -Icges(5,5) * t404 + Icges(5,6) * t401;
t426 = Icges(5,3) * t361 + t230 * t401 - t232 * t404 + t360 * t431;
t119 = t228 * t384 + t259 * t364 + t261 * t365 + t383 * t426;
t260 = Icges(5,6) * t363 + t362 * t432;
t262 = Icges(5,5) * t363 + t362 * t433;
t425 = Icges(5,3) * t363 + t231 * t401 - t233 * t404 + t362 * t431;
t120 = t229 * t384 + t260 * t364 + t262 * t365 + t383 * t425;
t302 = Icges(5,6) * t384 + t383 * t432;
t303 = Icges(5,5) * t384 + t383 * t433;
t424 = Icges(5,3) * t384 + t274 * t401 - t275 * t404 + t383 * t431;
t148 = t273 * t384 + t302 * t364 + t303 * t365 + t383 * t424;
t31 = t119 * t360 + t120 * t362 + t148 * t383 + t151 * t361 + t152 * t363 + t188 * t384;
t105 = t228 * t361 + t259 * t311 + t261 * t312 + t360 * t426;
t106 = t229 * t361 + t260 * t311 + t262 * t312 + t360 * t425;
t130 = t273 * t361 + t302 * t311 + t303 * t312 + t360 * t424;
t41 = t130 * t545 + (-t105 * t400 + t106 * t398) * t399;
t107 = t228 * t363 + t259 * t313 + t261 * t314 + t362 * t426;
t108 = t229 * t363 + t260 * t313 + t262 * t314 + t362 * t425;
t131 = t273 * t363 + t302 * t313 + t303 * t314 + t362 * t424;
t42 = t131 * t545 + (-t107 * t400 + t108 * t398) * t399;
t60 = t148 * t545 + (-t119 * t400 + t120 * t398) * t399;
t82 = t171 * t545 + (-t140 * t400 + t141 * t398) * t399;
t83 = t172 * t545 + (-t142 * t400 + t143 * t398) * t399;
t94 = t188 * t545 + (-t151 * t400 + t152 * t398) * t399;
t586 = t545 * t31 / 0.4e1 + t384 * t94 / 0.4e1 + t383 * t60 / 0.4e1 + t363 * t83 / 0.4e1 + t362 * t42 / 0.4e1 + t361 * t82 / 0.4e1 + t360 * t41 / 0.4e1 + (t136 * t150 + t161 * t169 + t162 * t168 + t177 * t181 + t197 * t201 + t198 * t200) * t447;
t585 = m(4) / 0.4e1;
t584 = m(5) / 0.2e1;
t583 = m(5) / 0.4e1;
t579 = t360 / 0.2e1;
t578 = t361 / 0.2e1;
t577 = t362 / 0.2e1;
t576 = t363 / 0.2e1;
t569 = t383 / 0.2e1;
t568 = t384 / 0.2e1;
t567 = -t398 / 0.4e1;
t566 = t398 / 0.2e1;
t564 = -t400 / 0.2e1;
t563 = t400 / 0.4e1;
t560 = m(5) * qJD(3);
t559 = m(5) * qJD(4);
t271 = rSges(4,1) * t361 - rSges(4,2) * t360 + rSges(4,3) * t379;
t272 = rSges(4,1) * t363 - rSges(4,2) * t362 + rSges(4,3) * t381;
t428 = rSges(4,1) * t561 - rSges(4,2) * t402;
t299 = rSges(4,3) * t380 - t379 * t428;
t300 = rSges(4,3) * t382 - t381 * t428;
t180 = t271 * t382 - t272 * t380 + t299 * t381 - t300 * t379;
t438 = 0.2e1 * t508;
t481 = 0.2e1 * m(4);
t406 = t180 * t481 / 0.4e1 + (t381 * t438 + 0.2e1 * t589) * t583;
t283 = -rSges(4,1) * t360 - rSges(4,2) * t361;
t284 = -rSges(4,1) * t362 - rSges(4,2) * t363;
t430 = t283 * t398 + t284 * t400;
t416 = t430 * t481;
t70 = (-t416 / 0.4e1 + t598 * t603) * t399 + t406;
t515 = t70 * qJD(1);
t504 = -Icges(4,1) * t360 - t267 - t541;
t503 = -Icges(4,1) * t362 - t268 - t540;
t502 = Icges(4,2) * t361 - t269 + t357;
t501 = Icges(4,2) * t363 - t270 + t358;
t491 = -Icges(4,1) * t383 - t322 - t539;
t490 = Icges(4,2) * t384 - t323 + t378;
t113 = (t528 / 0.2e1 - t531 / 0.2e1 + t529 / 0.2e1 - t532 / 0.2e1 - t523 / 0.2e1 + t526 / 0.2e1) * m(5);
t484 = t113 * qJD(1);
t123 = (t530 / 0.2e1 - t533 / 0.2e1 + (-t524 / 0.2e1 + t527 / 0.2e1) * t402 + (-t535 / 0.2e1 - t534 / 0.2e1) * t399) * m(5);
t483 = t123 * qJD(1);
t184 = t265 * t379 - t267 * t360 + t269 * t361;
t185 = t266 * t379 - t268 * t360 + t270 * t361;
t212 = t321 * t379 - t322 * t360 + t323 * t361;
t45 = t144 * t379 + t145 * t381 + t184 * t380 + t185 * t382 + (-t178 * t405 + t212 * t403) * t399;
t479 = t20 / 0.2e1 + t45 / 0.2e1;
t186 = t265 * t381 - t267 * t362 + t269 * t363;
t187 = t266 * t381 - t268 * t362 + t270 * t363;
t213 = t321 * t381 - t322 * t362 + t323 * t363;
t46 = t146 * t379 + t147 * t381 + t186 * t380 + t187 * t382 + (-t179 * t405 + t213 * t403) * t399;
t478 = t21 / 0.2e1 + t46 / 0.2e1;
t62 = t157 * t379 + t158 * t381 + t193 * t380 + t194 * t382 + (-t196 * t405 + t221 * t403) * t399;
t477 = -t33 / 0.2e1 - t62 / 0.2e1;
t277 = -Icges(4,5) * t360 - Icges(4,6) * t361;
t155 = t277 * t381 + t362 * t502 + t363 * t504;
t278 = -Icges(4,5) * t362 - Icges(4,6) * t363;
t156 = t278 * t381 + t362 * t501 + t363 * t503;
t351 = -Icges(4,5) * t383 - Icges(4,6) * t384;
t183 = t351 * t381 + t362 * t490 + t363 * t491;
t40 = t107 * t379 + t108 * t381 - t131 * t517;
t476 = t40 / 0.2e1 + t155 * t575 + t156 * t572 + t183 * t458;
t153 = t277 * t379 + t360 * t502 + t361 * t504;
t154 = t278 * t379 + t360 * t501 + t361 * t503;
t182 = t351 * t379 + t360 * t490 + t361 * t491;
t95 = t182 * t545 + (-t153 * t400 + t154 * t398) * t399;
t475 = -t41 / 0.2e1 - t95 / 0.2e1;
t96 = t183 * t545 + (-t155 * t400 + t156 * t398) * t399;
t474 = t42 / 0.2e1 + t96 / 0.2e1;
t39 = t105 * t379 + t106 * t381 - t130 * t517;
t473 = t153 * t596 + t154 * t595 + t182 * t594 - t39 / 0.2e1;
t471 = t545 / 0.2e1;
t464 = t521 / 0.2e1;
t463 = t521 / 0.4e1;
t462 = -t520 / 0.2e1;
t461 = -t520 / 0.4e1;
t457 = -t517 / 0.4e1;
t67 = t159 * t545 + (-t126 * t400 + t127 * t398) * t399;
t454 = t545 * t67;
t451 = t545 * t347;
t448 = t480 / 0.2e1;
t369 = (rSges(4,3) * t403 + t405 * t428) * t399;
t390 = (pkin(2) * t405 + pkin(6) * t403) * t399;
t444 = t399 * (-t369 - t390);
t326 = rSges(4,1) * t384 - rSges(4,2) * t383 - rSges(4,3) * t517;
t439 = (-t326 - t389) * t399;
t437 = 0.2e1 * t506;
t436 = t399 * (-t390 - t496);
t195 = t245 * t362 - t246 * t360;
t51 = t115 * t379 + t116 * t381 - t138 * t517;
t52 = t117 * t379 + t118 * t381 - t139 * t517;
t427 = t457 * t67 + t461 * t51 + t463 * t52 - t588;
t24 = t105 * t360 + t106 * t362 + t130 * t383 + t140 * t361 + t141 * t363 + t171 * t384;
t25 = t107 * t360 + t108 * t362 + t131 * t383 + t142 * t361 + t143 * t363 + t172 * t384;
t415 = t24 * t461 + t25 * t463 + t586;
t414 = -t140 * t379 - t141 * t381 + t171 * t517;
t413 = -t142 * t379 - t143 * t381 + t172 * t517;
t16 = t101 * t360 + t102 * t362 + t128 * t383 + t402 * t414;
t17 = t103 * t360 + t104 * t362 + t129 * t383 + t402 * t413;
t29 = t111 * t360 + t112 * t362 + t149 * t383 + t402 * t412;
t411 = t16 * t579 + t17 * t577 + t29 * t569;
t410 = t458 * t65 + t51 * t575 + t52 * t572;
t87 = t151 * t360 + t152 * t362 + t188 * t383;
t409 = t379 * t16 / 0.4e1 + t381 * t17 / 0.4e1 + t29 * t457 + t414 * t525 / 0.4e1 + t413 * t522 / 0.4e1 + t87 * t518 / 0.4e1 - t412 * t472 / 0.4e1 - t587;
t202 = (t271 * t398 + t272 * t400) * t399 + t487;
t214 = t272 * t545 + t398 * t439 + t338;
t215 = -t271 * t545 + t400 * t439 - t450;
t236 = t430 * t399;
t354 = -rSges(4,1) * t383 - rSges(4,2) * t384;
t253 = t284 * t545 - t354 * t521;
t254 = -t283 * t545 - t354 * t520;
t165 = -t277 * t517 + t383 * t502 + t384 * t504;
t166 = -t278 * t517 + t383 * t501 + t384 * t503;
t199 = -t351 * t517 + t383 * t490 + t384 * t491;
t99 = t199 * t545 + (-t165 * t400 + t166 * t398) * t399;
t408 = 0.4e1 * (t202 * t236 + t214 * t253 + t215 * t254) * t585 + 0.4e1 * (t150 * t177 + t168 * t197 + t169 * t198) * t583 + (t60 + t99) * t471;
t407 = t24 * t579 + t25 * t577 + t31 * t569 + t568 * t87 + t576 * t75 + t578 * t74;
t388 = (rSges(3,1) * t405 - rSges(3,2) * t403) * t399;
t385 = (Icges(3,5) * t405 - Icges(3,6) * t403) * t399;
t375 = t545 * rSges(3,3) + (rSges(3,1) * t403 + rSges(3,2) * t405) * t399;
t346 = -rSges(3,1) * t381 - rSges(3,2) * t382;
t345 = -rSges(3,1) * t379 - rSges(3,2) * t380;
t340 = -Icges(3,5) * t381 - Icges(3,6) * t382;
t339 = -Icges(3,5) * t379 - Icges(3,6) * t380;
t337 = t545 * t349;
t320 = rSges(3,1) * t382 - rSges(3,2) * t381 + rSges(3,3) * t521;
t319 = rSges(3,1) * t380 - rSges(3,2) * t379 - rSges(3,3) * t520;
t238 = -t284 * t517 - t354 * t381;
t237 = t283 * t517 + t354 * t379;
t226 = -t272 * t517 - t326 * t381;
t225 = t271 * t517 + t326 * t379;
t224 = -t299 * t545 + t400 * t444 - t451;
t223 = t300 * t545 + t398 * t444 + t337;
t222 = t283 * t381 - t284 * t379;
t216 = t271 * t381 - t272 * t379;
t211 = t246 * t383 - t292 * t362;
t210 = -t245 * t383 + t292 * t360;
t209 = (t299 * t398 + t300 * t400) * t399 + t488;
t204 = -t382 * t326 - t381 * t369 + (t272 * t403 - t300 * t405) * t399;
t203 = t380 * t326 + t379 * t369 + (-t271 * t403 + t299 * t405) * t399;
t192 = -t381 * t497 - t505 * t517;
t191 = t379 * t497 + t506 * t517;
t190 = t400 * t436 - t508 * t545 - t451;
t189 = t398 * t436 + t507 * t545 + t337;
t170 = -t379 * t505 + t381 * t506;
t167 = (t398 * t508 + t400 * t507) * t399 + t488;
t124 = 0.2e1 * t137 * t583 + t208 * t447;
t114 = (t136 + t206) * t447;
t110 = t186 * t379 + t187 * t381 - t213 * t517;
t109 = t184 * t379 + t185 * t381 - t212 * t517;
t98 = t165 * t379 + t166 * t381 - t199 * t517;
t89 = 0.4e1 * t180 * t216 + 0.4e1 * t203 * t225 + 0.4e1 * t204 * t226;
t71 = t406 + (t416 + m(5) * (t398 * t437 + 0.2e1 * t440)) * t399 / 0.4e1;
t69 = 0.4e1 * t160 * t206 + 0.4e1 * t173 * t217 + 0.4e1 * t174 * t218;
t68 = 0.4e1 * t150 * t208 + 0.4e1 * t168 * t219 + 0.4e1 * t169 * t220;
t63 = t126 * t360 + t127 * t362 + t159 * t383;
t58 = t119 * t379 + t120 * t381 - t148 * t517;
t48 = t117 * t360 + t118 * t362 + t139 * t383;
t47 = t115 * t360 + t116 * t362 + t138 * t383;
t44 = 0.4e1 * t137 * t181 + 0.4e1 * t163 * t200 + 0.4e1 * t164 * t201;
t43 = 0.4e1 * t136 * t181 + 0.4e1 * t161 * t200 + 0.4e1 * t162 * t201;
t34 = 0.4e1 * t122 * t160 + 0.4e1 * t132 * t173 + 0.4e1 * t133 * t174;
t9 = t454 / 0.2e1 + t68 * t583 + (t55 * t564 + t56 * t566) * t399;
t8 = t583 * t69 + t410;
t7 = (t398 * t474 + t400 * t475) * t399 + t408;
t6 = t43 * t583 + t407;
t5 = t44 * t583 + (t594 * t87 + t595 * t75 + t596 * t74) * t402 + t411;
t4 = t34 * t583 + t89 * t585 + (-t413 / 0.2e1 + t110 / 0.2e1) * t382 + t478 * t381 + (-t414 / 0.2e1 + t109 / 0.2e1) * t380 + t479 * t379 + (t405 * t477 + t592) * t399;
t3 = (-t413 * t562 - t17 / 0.4e1) * t381 + (-t403 * t87 / 0.4e1 + (t29 / 0.4e1 + t412 * t562) * t405) * t399 + t415 + t427 + (-t414 * t562 - t16 / 0.4e1) * t379 + t587;
t2 = t409 + t415 + (t405 * t67 / 0.4e1 + t51 * t563 + t52 * t567) * t399 + t588;
t1 = t409 + t427 + (t24 * t563 + t25 * t567) * t399 - t586;
t10 = [0, ((m(3) * t346 + m(4) * t300 + t448 * t507) * t520 + (m(3) * t345 + m(4) * t299 + t438 * t584) * t521 + 0.2e1 * (m(4) / 0.2e1 + t584) * t488) * qJD(2) + t71 * qJD(3) + t124 * qJD(4), t71 * qJD(2) + ((m(4) * t283 + t437 * t584) * t381 + (-m(4) * t284 - t448 * t505) * t379) * qJD(3) + t114 * qJD(4), qJD(4) * t195 * t448 + qJD(2) * t124 + qJD(3) * t114; -qJD(3) * t70 - qJD(4) * t123, t7 * qJD(3) + t9 * qJD(4) + ((t150 * t167 + t168 * t189 + t169 * t190) * m(5) + (t202 * t209 + t214 * t223 + t215 * t224) * m(4) + m(3) * ((-t319 * t545 - t375 * t520) * (-t345 * t545 - t388 * t520) + (t320 * t545 - t375 * t521) * (t346 * t545 - t388 * t521) + (t319 * t398 + t320 * t400) * t597 * (t345 * t398 + t346 * t400)) + (((t398 * t590 - t400 * t591) * t405 + (t398 * t494 - t400 * t495) * t403) * t597 + ((-t339 * t400 + t340 * t398 + t403 * t486 + t405 * t599) * t399 + t385 * t545) * t545 + t600) * t471 + ((t340 * t521 - t381 * t590 + t382 * t494) * t521 - (t339 * t521 - t381 * t591 + t382 * t495) * t520 + (-t381 * t599 + t382 * t486 + t385 * t521) * t545 + t601) * t464 + ((-t340 * t520 - t379 * t590 + t380 * t494) * t521 - (-t339 * t520 - t379 * t591 + t380 * t495) * t520 + (-t379 * t599 + t380 * t486 - t385 * t520) * t545 + t602) * t462) * qJD(2), -t515 + t7 * qJD(2) + t3 * qJD(4) + (-t34 / 0.4e1 + t150 * t170 + t160 * t177 + t168 * t192 + t169 * t191 + t173 * t198 + t174 * t197) * t560 + ((t474 - t478) * t381 + (-t475 - t479) * t379 + (t202 * t222 + t214 * t238 + t215 * t237 + t216 * t236 + t225 * t254 + t226 * t253 - t89 / 0.4e1) * m(4) + (-t592 + t473 * t400 + t476 * t398 + (-t99 / 0.2e1 - t60 / 0.2e1 - t477) * t405) * t399 - (t109 - t414) * t380 / 0.2e1 - (t110 - t413) * t382 / 0.2e1 + (t58 + t98) * t471) * qJD(3), -t483 + t9 * qJD(2) + t3 * qJD(3) + (t150 * t195 + t168 * t211 + t169 * t210 + t181 * t208 + t200 * t220 + t201 * t219 - t44 / 0.4e1) * t559 + (t67 * t569 + t63 * t471 + t55 * t579 + t56 * t577 + t75 * t522 / 0.2e1 + t74 * t525 / 0.2e1 - t411 + (t48 * t566 + t47 * t564 - t87 * t516 / 0.2e1) * t399) * qJD(4); qJD(2) * t70 - qJD(4) * t113, t515 + ((t180 * t202 + t203 * t215 + t204 * t214 + t209 * t216 + t223 * t226 + t224 * t225) * t481 / 0.2e1 - t408 + (t122 * t150 + t132 * t169 + t133 * t168 + t160 * t167 + t173 * t190 + t174 * t189) * t448 + t602 * t575 + (t212 * t545 + (-t184 * t400 + t185 * t398) * t399 + t82) * t380 / 0.2e1 + t601 * t572 + (t213 * t545 + (-t186 * t400 + t187 * t398) * t399 + t83) * t382 / 0.2e1 + (t62 + t33) * t471 - (t96 + t42) * t521 / 0.2e1 + (t46 + t21) * t464 + (t45 + t20) * t462 + (t95 + t41) * t520 / 0.2e1 + (t221 * t545 + (-t193 * t400 + t194 * t398) * t399 + t94) * t518 / 0.2e1 + t600 * t458) * qJD(2) + t4 * qJD(3) + t1 * qJD(4), t4 * qJD(2) + ((t160 * t170 + t173 * t191 + t174 * t192) * m(5) + (t216 * t222 + t225 * t237 + t226 * t238) * m(4) + (-t58 / 0.2e1 - t98 / 0.2e1) * t517 + t476 * t381 - t473 * t379) * qJD(3) + t8 * qJD(4), -t484 + t1 * qJD(2) + t8 * qJD(3) + (t458 * t63 + t47 * t575 + t48 * t572 + t51 * t579 + t52 * t577 + t569 * t65 - t407) * qJD(4) + (t195 * t160 + t210 * t173 + t211 * t174 + t181 * t206 + t200 * t217 + t201 * t218 - t43 / 0.4e1) * t559; qJD(2) * t123 + qJD(3) * t113, t2 * qJD(3) + t5 * qJD(4) + t483 + (t57 * t569 + t29 * t471 - t82 * t525 / 0.2e1 + t35 * t579 - t83 * t522 / 0.2e1 + t36 * t577 - t454 / 0.2e1 + (t94 * t516 / 0.2e1 + (t55 / 0.2e1 - t16 / 0.2e1) * t400 + (t17 / 0.2e1 - t56 / 0.2e1) * t398) * t399 + (t137 * t150 + t163 * t169 + t164 * t168 + t167 * t181 + t189 * t201 + t190 * t200 - t68 / 0.4e1) * m(5)) * qJD(2), t484 + t2 * qJD(2) + (t24 * t575 + t25 * t572 + t31 * t458 + t39 * t579 + t40 * t577 - t412 * t568 - t413 * t576 - t414 * t578 + t569 * t58 - t410) * qJD(3) + t6 * qJD(4) + (t136 * t160 + t161 * t173 + t162 * t174 + t170 * t181 + t191 * t200 + t192 * t201 - t69 / 0.4e1) * t560, t5 * qJD(2) + t6 * qJD(3) + ((t181 * t195 + t200 * t210 + t201 * t211) * m(5) + t48 * t577 + t47 * t579 + t63 * t569) * qJD(4);];
Cq = t10;