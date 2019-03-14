% Calculate time derivative of joint inertia matrix for
% S6PRPRRP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d4,d5,theta1,theta3]';
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
% Datum: 2019-03-08 19:58
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S6PRPRRP1_inertiaDJ_slag_vp11(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPRRP1_inertiaDJ_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRPRRP1_inertiaDJ_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRPRRP1_inertiaDJ_slag_vp1: pkin has to be [11x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6PRPRRP1_inertiaDJ_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6PRPRRP1_inertiaDJ_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6PRPRRP1_inertiaDJ_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 19:55:28
% EndTime: 2019-03-08 19:55:56
% DurationCPUTime: 22.85s
% Computational Cost: add. (93800->1101), mult. (265188->1541), div. (0->0), fcn. (316393->12), ass. (0->434)
t530 = rSges(7,3) + qJ(6);
t512 = m(7) / 0.2e1;
t531 = 0.2e1 * t512;
t384 = sin(pkin(6));
t496 = sin(pkin(11));
t497 = cos(pkin(11));
t503 = sin(qJ(2));
t505 = cos(qJ(2));
t396 = t496 * t505 + t497 * t503;
t355 = t396 * t384;
t348 = qJD(2) * t355;
t395 = t503 * t496 - t505 * t497;
t468 = qJD(2) * t384;
t349 = t395 * t468;
t529 = -Icges(4,5) * t349 - Icges(4,6) * t348 + (Icges(3,5) * t505 - Icges(3,6) * t503) * t468;
t370 = t395 * qJD(2);
t383 = sin(pkin(10));
t385 = cos(pkin(10));
t498 = cos(pkin(6));
t415 = t498 * t496;
t416 = t498 * t497;
t356 = t415 * t505 + t416 * t503;
t390 = qJD(2) * t356;
t312 = t383 * t370 - t385 * t390;
t391 = -t415 * t503 + t416 * t505;
t350 = t391 * qJD(2);
t371 = t396 * qJD(2);
t313 = t350 * t385 - t371 * t383;
t421 = t498 * t505;
t366 = -t383 * t503 + t385 * t421;
t357 = t366 * qJD(2);
t420 = t498 * t503;
t400 = -t383 * t505 - t385 * t420;
t358 = t400 * qJD(2);
t528 = -Icges(3,5) * t357 - Icges(4,5) * t313 - Icges(3,6) * t358 - Icges(4,6) * t312;
t314 = t370 * t385 + t383 * t390;
t315 = -t350 * t383 - t371 * t385;
t368 = -t383 * t421 - t385 * t503;
t359 = t368 * qJD(2);
t401 = t383 * t420 - t385 * t505;
t360 = t401 * qJD(2);
t527 = Icges(3,5) * t359 + Icges(4,5) * t315 + Icges(3,6) * t360 + Icges(4,6) * t314;
t388 = sin(qJ(4));
t504 = cos(qJ(4));
t343 = t355 * t504 + t388 * t498;
t293 = t343 * qJD(4) - t349 * t388;
t405 = -t355 * t388 + t498 * t504;
t294 = qJD(4) * t405 - t349 * t504;
t240 = Icges(5,5) * t294 - Icges(5,6) * t293 + Icges(5,3) * t348;
t241 = Icges(5,4) * t294 - Icges(5,2) * t293 + Icges(5,6) * t348;
t242 = Icges(5,1) * t294 - Icges(5,4) * t293 + Icges(5,5) * t348;
t354 = t395 * t384;
t288 = Icges(5,5) * t343 + Icges(5,6) * t405 + Icges(5,3) * t354;
t289 = Icges(5,4) * t343 + Icges(5,2) * t405 + Icges(5,6) * t354;
t290 = Icges(5,1) * t343 + Icges(5,4) * t405 + Icges(5,5) * t354;
t111 = t240 * t354 + t241 * t405 + t242 * t343 + t288 * t348 - t289 * t293 + t290 * t294;
t334 = t356 * t385 - t383 * t395;
t449 = t384 * t504;
t406 = -t334 * t388 - t385 * t449;
t254 = qJD(4) * t406 + t313 * t504;
t488 = t384 * t388;
t298 = t334 * t504 - t385 * t488;
t389 = cos(qJ(5));
t333 = -t383 * t396 + t385 * t391;
t387 = sin(qJ(5));
t494 = t333 * t387;
t263 = t298 * t389 - t494;
t195 = -qJD(5) * t263 - t254 * t387 - t312 * t389;
t262 = -t298 * t387 - t333 * t389;
t399 = qJD(5) * t262 - t312 * t387;
t196 = t254 * t389 + t399;
t253 = qJD(4) * t298 + t313 * t388;
t125 = Icges(7,5) * t196 + Icges(7,6) * t195 + Icges(7,3) * t253;
t129 = Icges(7,4) * t196 + Icges(7,2) * t195 + Icges(7,6) * t253;
t133 = Icges(7,1) * t196 + Icges(7,4) * t195 + Icges(7,5) * t253;
t183 = Icges(7,5) * t263 + Icges(7,6) * t262 - Icges(7,3) * t406;
t187 = Icges(7,4) * t263 + Icges(7,2) * t262 - Icges(7,6) * t406;
t191 = Icges(7,1) * t263 + Icges(7,4) * t262 - Icges(7,5) * t406;
t491 = t354 * t387;
t296 = t343 * t389 + t491;
t238 = -qJD(5) * t296 - t294 * t387 + t348 * t389;
t295 = -t343 * t387 + t354 * t389;
t397 = qJD(5) * t295 + t348 * t387;
t239 = t294 * t389 + t397;
t40 = -t125 * t405 + t129 * t295 + t133 * t296 + t183 * t293 + t187 * t238 + t191 * t239;
t336 = -t356 * t383 - t385 * t395;
t407 = -t336 * t388 + t383 * t449;
t256 = qJD(4) * t407 + t315 * t504;
t300 = t336 * t504 + t383 * t488;
t335 = -t383 * t391 - t385 * t396;
t493 = t335 * t387;
t265 = t300 * t389 - t493;
t197 = -qJD(5) * t265 - t256 * t387 - t314 * t389;
t264 = -t300 * t387 - t335 * t389;
t398 = qJD(5) * t264 - t314 * t387;
t198 = t256 * t389 + t398;
t255 = qJD(4) * t300 + t315 * t388;
t126 = Icges(7,5) * t198 + Icges(7,6) * t197 + Icges(7,3) * t255;
t130 = Icges(7,4) * t198 + Icges(7,2) * t197 + Icges(7,6) * t255;
t134 = Icges(7,1) * t198 + Icges(7,4) * t197 + Icges(7,5) * t255;
t184 = Icges(7,5) * t265 + Icges(7,6) * t264 - Icges(7,3) * t407;
t188 = Icges(7,4) * t265 + Icges(7,2) * t264 - Icges(7,6) * t407;
t192 = Icges(7,1) * t265 + Icges(7,4) * t264 - Icges(7,5) * t407;
t41 = -t126 * t405 + t130 * t295 + t134 * t296 + t184 * t293 + t188 * t238 + t192 * t239;
t161 = Icges(7,5) * t239 + Icges(7,6) * t238 + Icges(7,3) * t293;
t163 = Icges(7,4) * t239 + Icges(7,2) * t238 + Icges(7,6) * t293;
t165 = Icges(7,1) * t239 + Icges(7,4) * t238 + Icges(7,5) * t293;
t230 = Icges(7,5) * t296 + Icges(7,6) * t295 - Icges(7,3) * t405;
t232 = Icges(7,4) * t296 + Icges(7,2) * t295 - Icges(7,6) * t405;
t234 = Icges(7,1) * t296 + Icges(7,4) * t295 - Icges(7,5) * t405;
t73 = -t161 * t405 + t163 * t295 + t165 * t296 + t230 * t293 + t232 * t238 + t234 * t239;
t17 = t73 * t498 + (t383 * t41 - t385 * t40) * t384;
t127 = Icges(6,5) * t196 + Icges(6,6) * t195 + Icges(6,3) * t253;
t131 = Icges(6,4) * t196 + Icges(6,2) * t195 + Icges(6,6) * t253;
t135 = Icges(6,1) * t196 + Icges(6,4) * t195 + Icges(6,5) * t253;
t185 = Icges(6,5) * t263 + Icges(6,6) * t262 - Icges(6,3) * t406;
t189 = Icges(6,4) * t263 + Icges(6,2) * t262 - Icges(6,6) * t406;
t193 = Icges(6,1) * t263 + Icges(6,4) * t262 - Icges(6,5) * t406;
t42 = -t127 * t405 + t131 * t295 + t135 * t296 + t185 * t293 + t189 * t238 + t193 * t239;
t128 = Icges(6,5) * t198 + Icges(6,6) * t197 + Icges(6,3) * t255;
t132 = Icges(6,4) * t198 + Icges(6,2) * t197 + Icges(6,6) * t255;
t136 = Icges(6,1) * t198 + Icges(6,4) * t197 + Icges(6,5) * t255;
t186 = Icges(6,5) * t265 + Icges(6,6) * t264 - Icges(6,3) * t407;
t190 = Icges(6,4) * t265 + Icges(6,2) * t264 - Icges(6,6) * t407;
t194 = Icges(6,1) * t265 + Icges(6,4) * t264 - Icges(6,5) * t407;
t43 = -t128 * t405 + t132 * t295 + t136 * t296 + t186 * t293 + t190 * t238 + t194 * t239;
t162 = Icges(6,5) * t239 + Icges(6,6) * t238 + Icges(6,3) * t293;
t164 = Icges(6,4) * t239 + Icges(6,2) * t238 + Icges(6,6) * t293;
t166 = Icges(6,1) * t239 + Icges(6,4) * t238 + Icges(6,5) * t293;
t231 = Icges(6,5) * t296 + Icges(6,6) * t295 - Icges(6,3) * t405;
t233 = Icges(6,4) * t296 + Icges(6,2) * t295 - Icges(6,6) * t405;
t235 = Icges(6,1) * t296 + Icges(6,4) * t295 - Icges(6,5) * t405;
t74 = -t162 * t405 + t164 * t295 + t166 * t296 + t231 * t293 + t233 * t238 + t235 * t239;
t18 = t74 * t498 + (t383 * t43 - t385 * t42) * t384;
t175 = Icges(5,5) * t254 - Icges(5,6) * t253 - Icges(5,3) * t312;
t177 = Icges(5,4) * t254 - Icges(5,2) * t253 - Icges(5,6) * t312;
t179 = Icges(5,1) * t254 - Icges(5,4) * t253 - Icges(5,5) * t312;
t221 = Icges(5,5) * t298 + Icges(5,6) * t406 - Icges(5,3) * t333;
t223 = Icges(5,4) * t298 + Icges(5,2) * t406 - Icges(5,6) * t333;
t225 = Icges(5,1) * t298 + Icges(5,4) * t406 - Icges(5,5) * t333;
t85 = t175 * t354 + t177 * t405 + t179 * t343 + t221 * t348 - t223 * t293 + t225 * t294;
t176 = Icges(5,5) * t256 - Icges(5,6) * t255 - Icges(5,3) * t314;
t178 = Icges(5,4) * t256 - Icges(5,2) * t255 - Icges(5,6) * t314;
t180 = Icges(5,1) * t256 - Icges(5,4) * t255 - Icges(5,5) * t314;
t222 = Icges(5,5) * t300 + Icges(5,6) * t407 - Icges(5,3) * t335;
t224 = Icges(5,4) * t300 + Icges(5,2) * t407 - Icges(5,6) * t335;
t226 = Icges(5,1) * t300 + Icges(5,4) * t407 - Icges(5,5) * t335;
t86 = t176 * t354 + t178 * t405 + t180 * t343 + t222 * t348 - t224 * t293 + t226 * t294;
t526 = t17 + t18 + t111 * t498 + (t383 * t86 - t385 * t85) * t384;
t29 = -t125 * t406 + t129 * t262 + t133 * t263 + t183 * t253 + t187 * t195 + t191 * t196;
t30 = -t126 * t406 + t130 * t262 + t134 * t263 + t184 * t253 + t188 * t195 + t192 * t196;
t65 = -t161 * t406 + t163 * t262 + t165 * t263 + t195 * t232 + t196 * t234 + t230 * t253;
t13 = t65 * t498 + (-t29 * t385 + t30 * t383) * t384;
t31 = -t127 * t406 + t131 * t262 + t135 * t263 + t185 * t253 + t189 * t195 + t193 * t196;
t32 = -t128 * t406 + t132 * t262 + t136 * t263 + t186 * t253 + t190 * t195 + t194 * t196;
t66 = -t162 * t406 + t164 * t262 + t166 * t263 + t195 * t233 + t196 * t235 + t231 * t253;
t14 = t66 * t498 + (-t31 * t385 + t32 * t383) * t384;
t75 = -t175 * t333 + t177 * t406 + t179 * t298 - t221 * t312 - t223 * t253 + t225 * t254;
t76 = -t176 * t333 + t178 * t406 + t180 * t298 - t222 * t312 - t224 * t253 + t226 * t254;
t92 = -t240 * t333 + t241 * t406 + t242 * t298 - t253 * t289 + t254 * t290 - t288 * t312;
t525 = t92 * t498 + (t383 * t76 - t385 * t75) * t384 + t14 + t13;
t33 = -t125 * t407 + t129 * t264 + t133 * t265 + t183 * t255 + t187 * t197 + t191 * t198;
t34 = -t126 * t407 + t130 * t264 + t134 * t265 + t184 * t255 + t188 * t197 + t192 * t198;
t67 = -t161 * t407 + t163 * t264 + t165 * t265 + t197 * t232 + t198 * t234 + t230 * t255;
t15 = t67 * t498 + (-t33 * t385 + t34 * t383) * t384;
t35 = -t127 * t407 + t131 * t264 + t135 * t265 + t185 * t255 + t189 * t197 + t193 * t198;
t36 = -t128 * t407 + t132 * t264 + t136 * t265 + t186 * t255 + t190 * t197 + t194 * t198;
t68 = -t162 * t407 + t164 * t264 + t166 * t265 + t197 * t233 + t198 * t235 + t231 * t255;
t16 = t68 * t498 + (-t35 * t385 + t36 * t383) * t384;
t77 = -t175 * t335 + t177 * t407 + t179 * t300 - t221 * t314 - t223 * t255 + t225 * t256;
t78 = -t176 * t335 + t178 * t407 + t180 * t300 - t222 * t314 - t224 * t255 + t226 * t256;
t93 = -t240 * t335 + t241 * t407 + t242 * t300 - t255 * t289 + t256 * t290 - t288 * t314;
t524 = t93 * t498 + (t383 * t78 - t385 * t77) * t384 + t16 + t15;
t523 = t384 ^ 2;
t108 = -t185 * t405 + t189 * t295 + t193 * t296;
t109 = -t186 * t405 + t190 * t295 + t194 * t296;
t150 = -t231 * t405 + t233 * t295 + t235 * t296;
t10 = t108 * t253 + t109 * t255 + t150 * t293 - t405 * t74 - t406 * t42 - t407 * t43;
t106 = -t183 * t405 + t187 * t295 + t191 * t296;
t107 = -t184 * t405 + t188 * t295 + t192 * t296;
t149 = -t230 * t405 + t232 * t295 + t234 * t296;
t9 = t106 * t253 + t107 * t255 + t149 * t293 - t40 * t406 - t405 * t73 - t407 * t41;
t522 = t10 + t9;
t500 = pkin(5) * t389;
t487 = rSges(7,1) * t196 + rSges(7,2) * t195 + pkin(5) * t399 - qJD(6) * t406 + t253 * t530 + t254 * t500;
t521 = t487 * t531;
t486 = rSges(7,1) * t198 + rSges(7,2) * t197 + pkin(5) * t398 - qJD(6) * t407 + t255 * t530 + t256 * t500;
t484 = rSges(7,1) * t263 + rSges(7,2) * t262 - pkin(5) * t494 + t298 * t500 - t406 * t530;
t483 = rSges(7,1) * t265 + rSges(7,2) * t264 - pkin(5) * t493 + t300 * t500 - t407 * t530;
t212 = t254 * pkin(4) + t253 * pkin(9);
t250 = pkin(4) * t298 - pkin(9) * t406;
t480 = -t335 * t212 - t314 * t250;
t373 = pkin(2) * qJD(2) * t421 - t384 * qJD(3);
t443 = qJD(2) * t503;
t429 = pkin(2) * t443;
t344 = t385 * t373 - t383 * t429;
t345 = -t383 * t373 - t385 * t429;
t489 = t384 * t385;
t490 = t383 * t384;
t469 = t344 * t490 + t345 * t489;
t513 = m(6) / 0.2e1;
t520 = t513 + t512;
t144 = -t221 * t333 + t223 * t406 + t225 * t298;
t145 = -t222 * t333 + t224 * t406 + t226 * t298;
t157 = -t288 * t333 + t289 * t406 + t290 * t298;
t119 = -t230 * t406 + t232 * t262 + t234 * t263;
t95 = -t183 * t406 + t187 * t262 + t191 * t263;
t96 = -t184 * t406 + t188 * t262 + t192 * t263;
t5 = t119 * t348 - t29 * t333 - t30 * t335 - t312 * t95 - t314 * t96 + t354 * t65;
t120 = -t231 * t406 + t233 * t262 + t235 * t263;
t97 = -t185 * t406 + t189 * t262 + t193 * t263;
t98 = -t186 * t406 + t190 * t262 + t194 * t263;
t6 = t120 * t348 - t31 * t333 - t312 * t97 - t314 * t98 - t32 * t335 + t354 * t66;
t519 = -t312 * t144 - t145 * t314 + t157 * t348 - t333 * t75 - t335 * t76 + t354 * t92 + t5 + t6;
t146 = -t221 * t335 + t223 * t407 + t225 * t300;
t147 = -t222 * t335 + t224 * t407 + t226 * t300;
t158 = -t288 * t335 + t289 * t407 + t290 * t300;
t100 = -t184 * t407 + t188 * t264 + t192 * t265;
t121 = -t230 * t407 + t232 * t264 + t234 * t265;
t99 = -t183 * t407 + t187 * t264 + t191 * t265;
t7 = -t100 * t314 + t121 * t348 - t312 * t99 - t33 * t333 - t335 * t34 + t354 * t67;
t101 = -t185 * t407 + t189 * t264 + t193 * t265;
t102 = -t186 * t407 + t190 * t264 + t194 * t265;
t122 = -t231 * t407 + t233 * t264 + t235 * t265;
t8 = -t101 * t312 - t102 * t314 + t122 * t348 - t333 * t35 - t335 * t36 + t354 * t68;
t518 = -t146 * t312 - t314 * t147 + t158 * t348 - t333 * t77 - t335 * t78 + t354 * t93 + t7 + t8;
t11 = -t106 * t312 - t107 * t314 + t149 * t348 - t333 * t40 - t335 * t41 + t354 * t73;
t12 = -t108 * t312 - t109 * t314 + t150 * t348 - t333 * t42 - t335 * t43 + t354 * t74;
t151 = t221 * t354 + t223 * t405 + t225 * t343;
t152 = t222 * t354 + t224 * t405 + t226 * t343;
t169 = t288 * t354 + t289 * t405 + t290 * t343;
t495 = t169 * t348;
t517 = t111 * t354 - t151 * t312 - t152 * t314 - t333 * t85 - t335 * t86 + t11 + t12 + t495;
t516 = -t483 * t253 + t484 * t255 + t406 * t486;
t515 = m(4) / 0.2e1;
t514 = m(5) / 0.2e1;
t502 = pkin(2) * t384;
t501 = pkin(2) * t505;
t485 = rSges(7,1) * t239 + rSges(7,2) * t238 + pkin(5) * t397 - t405 * qJD(6) + t293 * t530 + t294 * t500;
t200 = rSges(6,1) * t263 + rSges(6,2) * t262 - rSges(6,3) * t406;
t482 = -t200 - t250;
t202 = rSges(6,1) * t265 + rSges(6,2) * t264 - rSges(6,3) * t407;
t251 = pkin(4) * t300 - pkin(9) * t407;
t481 = t202 + t251;
t213 = t256 * pkin(4) + t255 * pkin(9);
t479 = t354 * t213 + t348 * t251;
t246 = t294 * pkin(4) + t293 * pkin(9);
t292 = pkin(4) * t343 - pkin(9) * t405;
t478 = -t333 * t246 - t312 * t292;
t477 = rSges(7,1) * t296 + rSges(7,2) * t295 + pkin(5) * t491 + t343 * t500 - t405 * t530;
t237 = rSges(6,1) * t296 + rSges(6,2) * t295 - rSges(6,3) * t405;
t476 = t237 + t292;
t276 = pkin(3) * t315 - pkin(8) * t314;
t341 = t498 * t345;
t475 = t498 * t276 + t341;
t287 = pkin(3) * t336 - pkin(8) * t335;
t442 = pkin(2) * t420 - qJ(3) * t384;
t323 = -t383 * t442 + t385 * t501;
t311 = t498 * t323;
t474 = t498 * t287 + t311;
t322 = t383 * t501 + t385 * t442;
t473 = t322 * t490 + t323 * t489;
t444 = qJD(2) * t505;
t372 = qJD(3) * t498 + t444 * t502;
t472 = pkin(3) * t349 - pkin(8) * t348 - t372;
t376 = qJ(3) * t498 + t502 * t503;
t471 = -pkin(3) * t355 - pkin(8) * t354 - t376;
t470 = 0.2e1 * t469;
t465 = 0.2e1 * t498;
t464 = 0.2e1 * t384;
t1 = t119 * t293 + t253 * t95 + t255 * t96 - t29 * t406 - t30 * t407 - t405 * t65;
t2 = t120 * t293 + t253 * t97 + t255 * t98 - t31 * t406 - t32 * t407 - t405 * t66;
t463 = -t2 / 0.2e1 - t1 / 0.2e1;
t3 = t100 * t255 + t121 * t293 + t253 * t99 - t33 * t406 - t34 * t407 - t405 * t67;
t4 = t101 * t253 + t102 * t255 + t122 * t293 - t35 * t406 - t36 * t407 - t405 * t68;
t462 = t4 / 0.2e1 + t3 / 0.2e1;
t460 = t498 / 0.2e1;
t459 = -t250 - t484;
t458 = t251 + t483;
t457 = t498 * t213 + t475;
t456 = t292 + t477;
t455 = -t246 + t472;
t454 = t498 * t251 + t474;
t453 = -t292 + t471;
t452 = m(6) * t498;
t451 = m(7) * t498;
t448 = t505 * Icges(3,4);
t447 = t503 * Icges(3,4);
t441 = t498 * t322;
t440 = t498 * t344;
t439 = 0.2e1 * m(5);
t437 = 0.2e1 * m(6);
t435 = 0.2e1 * m(7);
t434 = t384 * (rSges(4,1) * t349 + rSges(4,2) * t348 - t372);
t433 = t384 * (-t355 * rSges(4,1) + t354 * rSges(4,2) - rSges(4,3) * t498 - t376);
t275 = pkin(3) * t313 - pkin(8) * t312;
t260 = t275 * t490;
t261 = t276 * t489;
t427 = 0.2e1 * t260 + 0.2e1 * t261 + t470;
t426 = t260 + t261 + t469;
t286 = pkin(3) * t334 - pkin(8) * t333;
t425 = t286 * t490 + t287 * t489 + t473;
t243 = rSges(5,1) * t294 - rSges(5,2) * t293 + rSges(5,3) * t348;
t423 = t384 * (-t243 + t472);
t291 = rSges(5,1) * t343 + rSges(5,2) * t405 + rSges(5,3) * t354;
t422 = t384 * (-t291 + t471);
t138 = rSges(6,1) * t196 + rSges(6,2) * t195 + rSges(6,3) * t253;
t181 = rSges(5,1) * t254 - rSges(5,2) * t253 - rSges(5,3) * t312;
t417 = -m(5) * t181 - m(6) * t138;
t168 = rSges(6,1) * t239 + rSges(6,2) * t238 + rSges(6,3) * t293;
t414 = t384 * (-t168 + t455);
t413 = t384 * (-t237 + t453);
t209 = t212 * t490;
t210 = t213 * t489;
t411 = t209 + t210 + t426;
t410 = t250 * t490 + t251 * t489 + t425;
t409 = (t455 - t485) * t384;
t408 = (t453 - t477) * t384;
t404 = -t275 * t498 - t440;
t403 = -t286 * t498 - t441;
t140 = rSges(6,1) * t198 + rSges(6,2) * t197 + rSges(6,3) * t255;
t71 = -t138 * t407 + t140 * t406 + t200 * t255 - t202 * t253;
t182 = rSges(5,1) * t256 - rSges(5,2) * t255 - rSges(5,3) * t314;
t394 = m(5) * t182 + m(6) * t140 + m(7) * t486;
t393 = -t212 * t498 + t404;
t392 = -t250 * t498 + t403;
t364 = (rSges(3,1) * t505 - rSges(3,2) * t503) * t468;
t363 = (Icges(3,1) * t505 - t447) * t468;
t362 = (-Icges(3,2) * t503 + t448) * t468;
t353 = t498 * rSges(3,3) + (rSges(3,1) * t503 + rSges(3,2) * t505) * t384;
t352 = Icges(3,5) * t498 + (Icges(3,1) * t503 + t448) * t384;
t351 = Icges(3,6) * t498 + (Icges(3,2) * t505 + t447) * t384;
t332 = rSges(3,1) * t359 + rSges(3,2) * t360;
t330 = rSges(3,1) * t357 + rSges(3,2) * t358;
t329 = Icges(3,1) * t359 + Icges(3,4) * t360;
t328 = Icges(3,1) * t357 + Icges(3,4) * t358;
t327 = Icges(3,4) * t359 + Icges(3,2) * t360;
t326 = Icges(3,4) * t357 + Icges(3,2) * t358;
t321 = -rSges(3,1) * t401 + rSges(3,2) * t368 + rSges(3,3) * t490;
t320 = -rSges(3,1) * t400 + rSges(3,2) * t366 - rSges(3,3) * t489;
t319 = -Icges(3,1) * t401 + Icges(3,4) * t368 + Icges(3,5) * t490;
t318 = -Icges(3,1) * t400 + Icges(3,4) * t366 - Icges(3,5) * t489;
t317 = -Icges(3,4) * t401 + Icges(3,2) * t368 + Icges(3,6) * t490;
t316 = -Icges(3,4) * t400 + Icges(3,2) * t366 - Icges(3,6) * t489;
t308 = Icges(4,1) * t355 - Icges(4,4) * t354 + Icges(4,5) * t498;
t307 = Icges(4,4) * t355 - Icges(4,2) * t354 + Icges(4,6) * t498;
t305 = -Icges(4,1) * t349 - Icges(4,4) * t348;
t304 = -Icges(4,4) * t349 - Icges(4,2) * t348;
t282 = rSges(4,1) * t336 + rSges(4,2) * t335 + rSges(4,3) * t490;
t281 = rSges(4,1) * t334 + rSges(4,2) * t333 - rSges(4,3) * t489;
t280 = Icges(4,1) * t336 + Icges(4,4) * t335 + Icges(4,5) * t490;
t279 = Icges(4,1) * t334 + Icges(4,4) * t333 - Icges(4,5) * t489;
t278 = Icges(4,4) * t336 + Icges(4,2) * t335 + Icges(4,6) * t490;
t277 = Icges(4,4) * t334 + Icges(4,2) * t333 - Icges(4,6) * t489;
t274 = rSges(4,1) * t315 + rSges(4,2) * t314;
t273 = rSges(4,1) * t313 + rSges(4,2) * t312;
t272 = Icges(4,1) * t315 + Icges(4,4) * t314;
t271 = Icges(4,1) * t313 + Icges(4,4) * t312;
t270 = Icges(4,4) * t315 + Icges(4,2) * t314;
t269 = Icges(4,4) * t313 + Icges(4,2) * t312;
t257 = t333 * t292;
t245 = t354 * t251;
t229 = t335 * t250;
t228 = rSges(5,1) * t300 + rSges(5,2) * t407 - rSges(5,3) * t335;
t227 = rSges(5,1) * t298 + rSges(5,2) * t406 - rSges(5,3) * t333;
t215 = -t273 * t498 + t385 * t434 - t440;
t214 = t274 * t498 + t383 * t434 + t341;
t172 = (t273 * t383 + t274 * t385) * t384 + t469;
t171 = t228 * t354 + t291 * t335;
t170 = -t227 * t354 - t291 * t333;
t159 = -t227 * t335 + t228 * t333;
t156 = -t227 * t498 + t385 * t422 + t403;
t155 = t228 * t498 + t383 * t422 + t474;
t154 = -t202 * t405 + t237 * t407;
t153 = t200 * t405 - t237 * t406;
t148 = (t227 * t383 + t228 * t385) * t384 + t425;
t143 = -t181 * t498 + t385 * t423 + t404;
t142 = t182 * t498 + t383 * t423 + t475;
t141 = -t200 * t407 + t202 * t406;
t118 = t202 * t354 + t335 * t476 + t245;
t117 = -t237 * t333 + t354 * t482 - t257;
t116 = t182 * t354 + t228 * t348 + t243 * t335 + t291 * t314;
t115 = -t181 * t354 - t227 * t348 - t243 * t333 - t291 * t312;
t114 = -t200 * t498 + t385 * t413 + t392;
t113 = t202 * t498 + t383 * t413 + t454;
t112 = (t181 * t383 + t182 * t385) * t384 + t426;
t110 = -t200 * t335 + t333 * t481 - t229;
t105 = -t405 * t483 + t407 * t477;
t104 = t405 * t484 - t406 * t477;
t103 = -t181 * t335 + t182 * t333 - t227 * t314 + t228 * t312;
t94 = (t200 * t383 + t202 * t385) * t384 + t410;
t91 = t335 * t456 + t354 * t483 + t245;
t90 = -t333 * t477 + t354 * t459 - t257;
t89 = t385 * t408 - t484 * t498 + t392;
t88 = t383 * t408 + t483 * t498 + t454;
t87 = t406 * t483 - t407 * t484;
t84 = t333 * t458 - t335 * t484 - t229;
t83 = -t138 * t498 + t385 * t414 + t393;
t82 = t140 * t498 + t383 * t414 + t457;
t81 = (t383 * t484 + t385 * t483) * t384 + t410;
t80 = -t140 * t405 + t168 * t407 + t202 * t293 - t237 * t255;
t79 = t138 * t405 - t168 * t406 - t200 * t293 + t237 * t253;
t72 = (t138 * t383 + t140 * t385) * t384 + t411;
t70 = t140 * t354 + t202 * t348 + (t168 + t246) * t335 + t476 * t314 + t479;
t69 = -t168 * t333 - t237 * t312 + (-t138 - t212) * t354 + t482 * t348 + t478;
t64 = t150 * t498 + (-t108 * t385 + t109 * t383) * t384;
t63 = t149 * t498 + (-t106 * t385 + t107 * t383) * t384;
t62 = -t108 * t333 - t109 * t335 + t150 * t354;
t61 = -t106 * t333 - t107 * t335 + t149 * t354;
t60 = t385 * t409 - t487 * t498 + t393;
t59 = t383 * t409 + t486 * t498 + t457;
t58 = -t108 * t406 - t109 * t407 - t150 * t405;
t57 = -t106 * t406 - t107 * t407 - t149 * t405;
t56 = -t138 * t335 - t200 * t314 + (t140 + t213) * t333 + t481 * t312 + t480;
t55 = t122 * t498 + (-t101 * t385 + t102 * t383) * t384;
t54 = t121 * t498 + (t100 * t383 - t385 * t99) * t384;
t53 = t120 * t498 + (t383 * t98 - t385 * t97) * t384;
t52 = t119 * t498 + (t383 * t96 - t385 * t95) * t384;
t51 = -t101 * t333 - t102 * t335 + t122 * t354;
t50 = -t100 * t335 + t121 * t354 - t333 * t99;
t49 = t120 * t354 - t333 * t97 - t335 * t98;
t48 = t119 * t354 - t333 * t95 - t335 * t96;
t47 = -t101 * t406 - t102 * t407 - t122 * t405;
t46 = -t100 * t407 - t121 * t405 - t406 * t99;
t45 = -t120 * t405 - t406 * t97 - t407 * t98;
t44 = -t119 * t405 - t406 * t95 - t407 * t96;
t39 = (t383 * t487 + t385 * t486) * t384 + t411;
t38 = -t255 * t477 + t293 * t483 - t405 * t486 + t407 * t485;
t37 = t253 * t477 - t293 * t484 + t405 * t487 - t406 * t485;
t28 = t486 * t354 + t483 * t348 + (t246 + t485) * t335 + t456 * t314 + t479;
t27 = -t485 * t333 - t477 * t312 + (-t212 - t487) * t354 + t459 * t348 + t478;
t25 = -t407 * t487 + t516;
t22 = -t487 * t335 - t484 * t314 + (t213 + t486) * t333 + t458 * t312 + t480;
t19 = [0; t470 * t515 + t427 * t514 + (m(3) * t332 + m(4) * t274 + t394) * t489 + (m(3) * t330 + m(4) * t273 - t417 + t521) * t490 + t520 * (0.2e1 * t209 + 0.2e1 * t210 + t427); (t39 * t81 + t59 * t88 + t60 * t89) * t435 + (t113 * t82 + t114 * t83 + t72 * t94) * t437 + (t112 * t148 + t142 * t155 + t143 * t156) * t439 + (((-t317 * t443 + t319 * t444 + t327 * t505 + t329 * t503) * t383 - (-t316 * t443 + t318 * t444 + t326 * t505 + t328 * t503) * t385) * t523 + (-t354 * t304 + t355 * t305 - t348 * t307 - t349 * t308 + t498 * t529) * t498 + ((-t351 * t443 + t352 * t444 + t362 * t505 + t363 * t503) * t498 + (t354 * t269 - t355 * t271 + t348 * t277 + t349 * t279 + t498 * t528) * t385 + (-t354 * t270 + t355 * t272 - t348 * t278 - t349 * t280 + t498 * t527) * t383) * t384 + t526) * t498 + ((t270 * t335 + t272 * t336 + t278 * t314 + t280 * t315 + t317 * t360 + t319 * t359 + t327 * t368 - t329 * t401 + t490 * t527) * t490 + (t304 * t335 + t305 * t336 + t307 * t314 + t308 * t315 + t351 * t360 + t352 * t359 + t362 * t368 - t363 * t401 + t490 * t529) * t498 + t524) * t490 + ((t269 * t333 + t271 * t334 + t277 * t312 + t279 * t313 + t316 * t358 + t318 * t357 + t326 * t366 - t328 * t400 + t489 * t528) * t489 + (-t304 * t333 - t305 * t334 - t307 * t312 - t308 * t313 - t351 * t358 - t352 * t357 - t362 * t366 + t363 * t400 + t489 * t529) * t498 + (-t317 * t358 - t319 * t357 - t327 * t366 + t329 * t400 - t270 * t333 - t272 * t334 - t278 * t312 - t280 * t313 - t316 * t360 - t318 * t359 - t326 * t368 + t328 * t401 - t269 * t335 - t271 * t336 - t277 * t314 - t279 * t315 + t527 * t489 + t528 * t490) * t490 - t525) * t489 + 0.2e1 * m(4) * ((-t281 * t498 + t385 * t433 - t441) * t215 + (t282 * t498 + t383 * t433 + t311) * t214 + ((t281 * t383 + t282 * t385) * t384 + t473) * t172) + 0.2e1 * m(3) * ((-t320 * t498 - t353 * t489) * (-t330 * t498 - t364 * t489) + (t321 * t498 - t353 * t490) * (t332 * t498 - t364 * t490) + (t320 * t383 + t321 * t385) * t523 * (t330 * t383 + t332 * t385)); 0; (t39 * t465 + (t383 * t60 - t385 * t59) * t464) * t512 + (t72 * t465 + (t383 * t83 - t385 * t82) * t464) * t513 + (t112 * t465 + (-t142 * t385 + t143 * t383) * t464) * t514 + (t172 * t465 + (-t214 * t385 + t215 * t383) * t464) * t515; 0; (-m(7) * t487 + t417) * t335 + t394 * t333 + (-m(5) * t227 - m(6) * t200 - m(7) * t484) * t314 + (m(5) * t228 + m(6) * t202 + m(7) * t483) * t312 + 0.2e1 * t520 * (t333 * t213 + t312 * t251 + t480); (t110 * t72 + t113 * t70 + t114 * t69 + t117 * t83 + t118 * t82 + t56 * t94) * m(6) + m(5) * (t103 * t148 + t112 * t159 + t115 * t156 + t116 * t155 + t142 * t171 + t143 * t170) + (t22 * t81 + t27 * t89 + t28 * t88 + t39 * t84 + t59 * t91 + t60 * t90) * m(7) - (t157 * t498 + (-t144 * t385 + t145 * t383) * t384 + t53 + t52) * t312 / 0.2e1 - (t158 * t498 + (-t146 * t385 + t147 * t383) * t384 + t55 + t54) * t314 / 0.2e1 - t525 * t333 / 0.2e1 - t524 * t335 / 0.2e1 + (t169 * t498 + (-t151 * t385 + t152 * t383) * t384 + t64 + t63) * t348 / 0.2e1 + t526 * t354 / 0.2e1 + t517 * t460 + t518 * t490 / 0.2e1 - t519 * t489 / 0.2e1; m(5) * t103 * t498 + t56 * t452 + t22 * t451 + ((-m(5) * t116 - m(6) * t70 - m(7) * t28) * t385 + (m(5) * t115 + m(6) * t69 + m(7) * t27) * t383) * t384; (t22 * t84 + t27 * t90 + t28 * t91) * t435 + (t110 * t56 + t117 * t69 + t118 * t70) * t437 + (t103 * t159 + t115 * t170 + t116 * t171) * t439 + (t61 + t62) * t348 + (t495 + t517) * t354 + (-t348 * t152 - t518) * t335 + (-t348 * t151 - t519) * t333 + (t146 * t333 + t147 * t335 - t158 * t354 - t50 - t51) * t314 + (t144 * t333 + t145 * t335 - t157 * t354 - t48 - t49) * t312; m(6) * t71 - t407 * t521 + t516 * t531; (t104 * t60 + t105 * t59 + t25 * t81 + t37 * t89 + t38 * t88 + t39 * t87) * m(7) + (t113 * t80 + t114 * t79 + t141 * t72 + t153 * t83 + t154 * t82 + t71 * t94) * m(6) - (t18 / 0.2e1 + t17 / 0.2e1) * t405 - (t16 / 0.2e1 + t15 / 0.2e1) * t407 - (t13 / 0.2e1 + t14 / 0.2e1) * t406 + (t64 / 0.2e1 + t63 / 0.2e1) * t293 + (t55 / 0.2e1 + t54 / 0.2e1) * t255 + (t52 / 0.2e1 + t53 / 0.2e1) * t253 + (t383 * t462 + t385 * t463) * t384 + t522 * t460; t71 * t452 + t25 * t451 + ((-m(6) * t80 - m(7) * t38) * t385 + (m(6) * t79 + m(7) * t37) * t383) * t384; (t110 * t71 + t117 * t79 + t118 * t80 + t141 * t56 + t153 * t69 + t154 * t70) * m(6) + (t104 * t27 + t105 * t28 + t22 * t87 + t25 * t84 + t37 * t90 + t38 * t91) * m(7) + (t10 / 0.2e1 + t9 / 0.2e1) * t354 + (t57 / 0.2e1 + t58 / 0.2e1) * t348 - (t11 / 0.2e1 + t12 / 0.2e1) * t405 - t462 * t335 + t463 * t333 + (-t46 / 0.2e1 - t47 / 0.2e1) * t314 + (-t44 / 0.2e1 - t45 / 0.2e1) * t312 - (t8 / 0.2e1 + t7 / 0.2e1) * t407 - (t6 / 0.2e1 + t5 / 0.2e1) * t406 + (t61 / 0.2e1 + t62 / 0.2e1) * t293 + (t51 / 0.2e1 + t50 / 0.2e1) * t255 + (t49 / 0.2e1 + t48 / 0.2e1) * t253; (t104 * t37 + t105 * t38 + t25 * t87) * t435 + (t141 * t71 + t153 * t79 + t154 * t80) * t437 - t522 * t405 - (t4 + t3) * t407 - (t2 + t1) * t406 + (t58 + t57) * t293 + (t47 + t46) * t255 + (t45 + t44) * t253; t293 * t531; (t253 * t88 + t255 * t89 + t293 * t81 - t39 * t405 - t406 * t59 - t407 * t60) * m(7); (t293 * t465 + (-t253 * t385 + t255 * t383) * t464) * t512; (-t22 * t405 + t253 * t91 + t255 * t90 - t27 * t407 - t28 * t406 + t293 * t84) * m(7); (t104 * t255 + t105 * t253 - t25 * t405 + t293 * t87 - t37 * t407 - t38 * t406) * m(7); (-t253 * t406 - t255 * t407 - t293 * t405) * t435;];
%% Postprocessing: Reshape Output
% From vec2symmat_6_matlab.m
res = [t19(1) t19(2) t19(4) t19(7) t19(11) t19(16); t19(2) t19(3) t19(5) t19(8) t19(12) t19(17); t19(4) t19(5) t19(6) t19(9) t19(13) t19(18); t19(7) t19(8) t19(9) t19(10) t19(14) t19(19); t19(11) t19(12) t19(13) t19(14) t19(15) t19(20); t19(16) t19(17) t19(18) t19(19) t19(20) t19(21);];
Mq  = res;