% Calculate inertial parameters regressor of coriolis joint torque vector for
% S6RRRPRP11
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d5]';
% 
% Output:
% tauc_reg [6x(6*10)]
%   inertial parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 17:50
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S6RRRPRP11_coriolisvecJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRP11_coriolisvecJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRP11_coriolisvecJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPRP11_coriolisvecJ_fixb_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 17:49:03
% EndTime: 2019-03-09 17:49:23
% DurationCPUTime: 8.50s
% Computational Cost: add. (12560->645), mult. (32464->826), div. (0->0), fcn. (24509->8), ass. (0->308)
t252 = cos(qJ(3));
t389 = cos(pkin(6));
t317 = t389 * qJD(1);
t285 = t317 + qJD(2);
t253 = cos(qJ(2));
t247 = sin(pkin(6));
t341 = qJD(1) * qJD(2);
t322 = t247 * t341;
t300 = t253 * t322;
t449 = t252 * (qJD(3) * t285 + t300);
t320 = t253 * t389;
t305 = pkin(1) * t320;
t250 = sin(qJ(2));
t357 = qJD(1) * t247;
t333 = t250 * t357;
t192 = -pkin(8) * t333 + qJD(1) * t305;
t281 = t247 * (pkin(2) * t250 - pkin(9) * t253);
t193 = qJD(1) * t281;
t249 = sin(qJ(3));
t124 = -t249 * t192 + t193 * t252;
t350 = qJD(3) * t252;
t364 = t252 * t253;
t411 = pkin(4) + pkin(9);
t412 = pkin(3) + pkin(10);
t448 = (pkin(4) * t364 - t250 * t412) * t357 - t124 - t411 * t350;
t248 = sin(qJ(5));
t251 = cos(qJ(5));
t356 = qJD(1) * t253;
t332 = t247 * t356;
t304 = t249 * t332;
t161 = t248 * t333 - t251 * t304;
t351 = qJD(3) * t251;
t447 = t249 * t351 + t161;
t173 = t249 * t333 - t252 * t285;
t227 = -qJD(3) + t332;
t135 = t173 * t248 - t227 * t251;
t175 = t249 * t285 + t252 * t333;
t168 = qJD(5) + t175;
t381 = t135 * t168;
t230 = t250 * t322;
t343 = t175 * qJD(3);
t423 = t249 * t300 + t343;
t82 = qJD(5) * t135 + t230 * t248 - t251 * t423;
t446 = t82 + t381;
t347 = qJD(5) * t252;
t326 = t248 * t347;
t445 = -t326 - t447;
t348 = qJD(5) * t251;
t349 = qJD(5) * t248;
t276 = t173 * t348 + t227 * t349 + t251 * t230 + t248 * t423;
t133 = -t251 * t173 - t227 * t248;
t384 = t133 * t168;
t443 = t276 - t384;
t50 = t276 + t384;
t303 = t252 * t332;
t442 = t303 - t350;
t410 = pkin(1) * t250;
t238 = t389 * t410;
t367 = t247 * t253;
t359 = pkin(8) * t367 + t238;
t187 = t389 * pkin(9) + t359;
t154 = qJD(2) * pkin(9) + qJD(1) * t187;
t188 = (-pkin(2) * t253 - pkin(9) * t250 - pkin(1)) * t247;
t167 = qJD(1) * t188;
t111 = t154 * t249 - t252 * t167;
t342 = -qJD(4) - t111;
t362 = pkin(4) * t175 - t342;
t73 = t227 * t412 + t362;
t153 = -pkin(2) * t285 - t192;
t259 = -t175 * qJ(4) + t153;
t80 = t173 * t412 + t259;
t26 = -t248 * t80 + t251 * t73;
t368 = t247 * t250;
t329 = qJD(3) * t368;
t301 = qJD(1) * t329;
t138 = t249 * t301 - t449;
t355 = qJD(2) * t250;
t331 = t247 * t355;
t289 = t412 * t331;
t194 = qJD(2) * t281;
t183 = qJD(1) * t194;
t205 = -pkin(8) * t368 + t305;
t196 = t205 * qJD(2);
t184 = qJD(1) * t196;
t352 = qJD(3) * t249;
t306 = t154 * t350 + t167 * t352 - t252 * t183 + t249 * t184;
t40 = -pkin(4) * t138 - qJD(1) * t289 + t306;
t291 = pkin(8) * t300;
t298 = qJD(2) * t317;
t62 = pkin(3) * t423 + t138 * qJ(4) - t175 * qJD(4) + t298 * t410 + t291;
t48 = pkin(10) * t423 + t62;
t319 = -t248 * t40 - t251 * t48 - t73 * t348 + t80 * t349;
t441 = -t168 * t26 - t319;
t440 = t175 * t227 + t423;
t202 = t249 * t389 + t252 * t368;
t325 = qJD(2) * t367;
t145 = qJD(3) * t202 + t249 * t325;
t201 = t249 * t368 - t252 * t389;
t439 = t173 * t145 + t201 * t423;
t146 = -t249 * t329 + (qJD(3) * t389 + t325) * t252;
t438 = t138 * t201 - t175 * t145 - t146 * t173 - t202 * t423;
t131 = t138 * t249;
t242 = t252 * pkin(9);
t344 = t173 * qJD(3);
t408 = pkin(9) * t249;
t437 = -pkin(9) * t131 + t344 * t408 + (t343 - t423) * t242;
t436 = -t146 * t227 + t247 * ((qJD(1) * t202 + t175) * t355 + t138 * t253);
t435 = t173 * t303 + t175 * t304 + (-t138 - t344) * t252 + (-t423 - t343) * t249;
t434 = t227 * t145 - t173 * t331 - t201 * t230 + t367 * t423;
t327 = t227 * t350;
t433 = t357 * ((qJD(2) * t249 - t175) * t250 + t227 * t364) - t327;
t354 = qJD(2) * t252;
t366 = t249 * t253;
t432 = t227 * t352 + t357 * (t250 * (t173 + t354) - t227 * t366);
t27 = t248 * t73 + t251 * t80;
t6 = -qJD(5) * t27 - t248 * t48 + t251 * t40;
t262 = -qJ(6) * t276 + t6;
t409 = pkin(5) * t138;
t1 = -qJD(6) * t135 + t262 - t409;
t21 = -qJ(6) * t135 + t26;
t17 = pkin(5) * t168 + t21;
t282 = qJ(6) * t82 + t319;
t2 = -qJD(6) * t133 - t282;
t22 = -qJ(6) * t133 + t27;
t402 = t168 * t22;
t431 = -(t168 * t17 - t2) * t248 + (t1 + t402) * t251;
t244 = t247 ^ 2;
t323 = t244 * t341;
t430 = -0.2e1 * t323;
t428 = t168 * t27 + t6;
t219 = pkin(3) * t304;
t387 = qJ(4) * t252;
t296 = pkin(10) * t249 - t387;
t119 = t219 + (t238 + (pkin(8) + t296) * t367) * qJD(1);
t309 = pkin(3) * t352 - qJD(4) * t249;
t172 = qJD(3) * t296 + t309;
t321 = -qJ(4) * t249 - pkin(2);
t207 = -t252 * t412 + t321;
t228 = t411 * t249;
t403 = t207 * t349 - t228 * t348 + (t119 - t172) * t251 + t448 * t248;
t427 = -t119 * t248 + t251 * t448;
t51 = -t82 + t381;
t426 = t250 * t253;
t117 = t138 * t202;
t425 = t146 * t175 - t117;
t279 = t227 * t252;
t424 = -t175 * t279 - t131;
t143 = t251 * t207 + t248 * t228;
t360 = qJ(4) * t350 - t309 + t219 + (t238 + (pkin(8) - t387) * t367) * qJD(1);
t421 = t304 - t352;
t218 = t227 * qJ(4);
t112 = t154 * t252 + t167 * t249;
t93 = -pkin(4) * t173 + t112;
t83 = -t218 + t93;
t419 = t138 * t412 + t168 * t83;
t371 = t173 * t227;
t415 = -t252 ^ 2 * t301 + (-t371 - t449) * t249;
t414 = t135 ^ 2;
t413 = t175 ^ 2;
t255 = qJD(1) ^ 2;
t407 = t17 - t21;
t162 = (t248 * t366 + t250 * t251) * t357;
t316 = qJ(6) * t252 - t207;
t345 = qJD(6) * t252;
t406 = -qJ(6) * t162 - t316 * t348 - (-qJ(6) * t352 - qJD(5) * t228 - t172 + t345) * t248 + t427 + t442 * pkin(5);
t405 = qJ(6) * t445 + t251 * t345 + t403;
t404 = qJD(5) * t143 + t172 * t248 + t427;
t186 = -pkin(2) * t389 - t205;
t265 = -t202 * qJ(4) + t186;
t104 = t201 * t412 + t265;
t122 = -t249 * t187 + t188 * t252;
t116 = pkin(3) * t367 - t122;
t94 = pkin(4) * t202 + pkin(10) * t367 + t116;
t47 = t251 * t104 + t248 * t94;
t224 = qJ(4) * t230;
t307 = t154 * t352 - t167 * t350 - t249 * t183 - t252 * t184;
t290 = -qJD(4) * t227 - t307;
t58 = -t224 - t290;
t38 = -pkin(4) * t423 - t58;
t18 = t82 * pkin(5) + t38;
t399 = t18 * t248;
t398 = t18 * t251;
t397 = t248 * t38;
t396 = t248 * t82;
t395 = t251 * t38;
t394 = t251 * t276;
t388 = qJ(4) * t173;
t108 = t175 * t412 + t388;
t45 = t251 * t108 + t248 * t93;
t125 = t252 * t192 + t249 * t193;
t118 = -qJ(4) * t333 - t125;
t110 = -pkin(4) * t304 - t118;
t335 = -pkin(5) * t251 - pkin(4);
t393 = -t110 + (-pkin(9) + t335) * t352 + (-t161 - t326) * pkin(5);
t363 = qJ(6) + t412;
t386 = qJ(6) * t175;
t88 = t251 * t93;
t392 = -qJD(6) * t251 + t349 * t363 + pkin(5) * t173 - t88 - (-t108 - t386) * t248;
t221 = t363 * t251;
t391 = -qJD(5) * t221 - qJD(6) * t248 - t251 * t386 - t45;
t390 = pkin(5) * t348 - t175 * t335 - t342;
t103 = t173 * pkin(3) + t259;
t385 = t103 * t175;
t383 = t133 * t227;
t382 = t135 * t133;
t380 = t135 * t227;
t379 = t138 * t248;
t374 = t168 * t173;
t372 = t173 * t175;
t369 = t244 * t255;
t129 = t251 * t138;
t365 = t251 * t252;
t361 = -t411 * t352 - t110;
t123 = t252 * t187 + t249 * t188;
t229 = t252 * pkin(4) + t242;
t358 = t250 ^ 2 - t253 ^ 2;
t353 = qJD(3) * t248;
t346 = qJD(5) * t412;
t340 = t227 * t408;
t339 = pkin(9) * t354;
t336 = t251 * t367;
t324 = -t173 ^ 2 + t413;
t318 = -pkin(5) * t133 - qJD(6);
t46 = -t104 * t248 + t251 * t94;
t315 = t168 * t248;
t313 = t168 * t251;
t308 = t369 * t426;
t302 = t227 * t333;
t299 = pkin(1) * t430;
t297 = t248 * t352 - t162;
t295 = -t248 * t26 + t251 * t27;
t292 = pkin(3) * t230;
t63 = -t292 + t306;
t294 = t63 * t249 - t58 * t252;
t293 = t249 * t306 - t252 * t307;
t287 = t323 * t426;
t284 = 0.2e1 * t317 + qJD(2);
t115 = qJ(4) * t367 - t123;
t85 = -t187 * t350 - t188 * t352 + t194 * t252 - t249 * t196;
t147 = t201 * t251 + t248 * t367;
t280 = -t168 * t315 - t129;
t54 = pkin(4) * t146 - t289 - t85;
t197 = t359 * qJD(2);
t260 = -t146 * qJ(4) - t202 * qJD(4) + t197;
t61 = t145 * t412 + t260;
t9 = -t104 * t349 + t248 * t54 + t251 * t61 + t94 * t348;
t277 = -t112 * t227 - t306;
t84 = -t187 * t352 + t188 * t350 + t249 * t194 + t252 * t196;
t270 = -t168 ^ 2 * t251 + t379;
t105 = -pkin(4) * t201 - t115;
t268 = pkin(1) * (-t298 + t369);
t267 = t138 + t371;
t10 = -qJD(5) * t47 - t248 * t61 + t251 * t54;
t266 = pkin(9) * t327 - t230 * t408;
t68 = -qJ(4) * t331 + qJD(4) * t367 - t84;
t55 = -pkin(4) * t145 - t68;
t240 = pkin(5) * t248 + qJ(4);
t223 = -pkin(3) * t252 + t321;
t220 = t363 * t248;
t211 = t251 * t228;
t200 = pkin(5) * t365 + t229;
t195 = t359 * qJD(1);
t185 = qJD(1) * t197;
t148 = -t201 * t248 + t336;
t144 = (-t227 * t247 - t244 * t356) * t355;
t142 = -t207 * t248 + t211;
t137 = -qJ(6) * t365 + t143;
t132 = t133 ^ 2;
t126 = pkin(5) * t249 + t248 * t316 + t211;
t121 = pkin(3) * t175 + t388;
t120 = -pkin(3) * t333 - t124;
t114 = t201 * pkin(3) + t265;
t109 = -t112 + t218;
t107 = pkin(3) * t227 - t342;
t101 = qJD(5) * t147 + t145 * t248 + t251 * t331;
t100 = -t145 * t251 - qJD(5) * t336 + (qJD(5) * t201 + t331) * t248;
t79 = t145 * pkin(3) + t260;
t77 = -pkin(3) * t331 - t85;
t75 = -t168 * t279 - t131;
t74 = -pkin(5) * t147 + t105;
t71 = t146 * t168 - t117;
t64 = -t132 + t414;
t56 = -t318 + t83;
t44 = -t108 * t248 + t88;
t42 = t270 + t380;
t41 = t280 + t383;
t35 = -t133 * t173 + t270;
t34 = t135 * t173 + t280;
t32 = qJ(6) * t147 + t47;
t31 = t133 * t313 + t396;
t30 = -t248 * t381 + t394;
t29 = pkin(5) * t202 + qJ(6) * t148 + t46;
t25 = pkin(5) * t100 + t55;
t24 = t100 * t133 - t147 * t82;
t23 = t101 * t135 - t148 * t276;
t20 = t133 * t445 + t82 * t365;
t19 = -t248 * t252 * t276 + (-t251 * t347 + t297) * t135;
t16 = t249 * t276 + t297 * t168 + (-t168 * t348 + t379 - t380) * t252;
t15 = -t249 * t82 + t447 * t168 + (t168 * t349 + t129 + t383) * t252;
t14 = t101 * t168 + t135 * t146 + t138 * t148 + t202 * t276;
t13 = -t100 * t168 - t133 * t146 - t138 * t147 - t202 * t82;
t12 = t51 * t248 - t251 * t50;
t11 = -t443 * t248 - t251 * t446;
t8 = -t100 * t135 - t101 * t133 + t147 * t276 + t148 * t82;
t7 = t133 * t162 + t135 * t161 + (-t133 * t248 + t135 * t251) * t352 + (t396 - t394 + (t133 * t251 + t135 * t248) * qJD(5)) * t252;
t4 = -qJ(6) * t100 + qJD(6) * t147 + t9;
t3 = pkin(5) * t146 - qJ(6) * t101 + qJD(6) * t148 + t10;
t5 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t287, t358 * t430, t284 * t325, -0.2e1 * t287, -t284 * t331, 0, -t185 * t389 - t197 * t285 + t250 * t299, -t184 * t389 - t196 * t285 + t253 * t299 (t184 * t253 + t185 * t250 + (-t192 * t253 - t195 * t250) * qJD(2) + (t196 * t253 + t197 * t250 + (-t205 * t253 - t250 * t359) * qJD(2)) * qJD(1)) * t247, t184 * t359 - t185 * t205 - t192 * t197 + t195 * t196, t425, t438, t436, t439, t434, t144, -t111 * t331 + t122 * t230 + t153 * t145 + t197 * t173 + t185 * t201 + t186 * t423 - t85 * t227 + t306 * t367, -t138 * t186 + t146 * t153 + t175 * t197 + t185 * t202 + t227 * t84 + (-t253 * t307 + (-qJD(1) * t123 - t112) * t355) * t247, t111 * t146 - t112 * t145 + t122 * t138 - t123 * t423 - t84 * t173 - t85 * t175 + t201 * t307 + t202 * t306, -t111 * t85 + t112 * t84 - t122 * t306 - t123 * t307 + t153 * t197 + t185 * t186, t144, -t436, -t434, t425, t438, t439, t107 * t146 + t109 * t145 + t115 * t423 - t116 * t138 + t68 * t173 + t77 * t175 + t58 * t201 + t63 * t202, -t103 * t145 + t107 * t331 - t114 * t423 + t116 * t230 - t79 * t173 - t62 * t201 - t77 * t227 - t367 * t63, -t103 * t146 + t114 * t138 - t175 * t79 - t202 * t62 + t227 * t68 + (t253 * t58 + (-qJD(1) * t115 - t109) * t355) * t247, t103 * t79 + t107 * t77 + t109 * t68 + t114 * t62 + t115 * t58 + t116 * t63, t23, t8, t14, t24, t13, t71, t10 * t168 + t100 * t83 + t105 * t82 + t133 * t55 - t138 * t46 + t146 * t26 - t147 * t38 + t202 * t6, t101 * t83 + t105 * t276 + t135 * t55 + t138 * t47 - t146 * t27 - t148 * t38 - t168 * t9 + t202 * t319, -t10 * t135 - t100 * t27 - t101 * t26 - t133 * t9 - t147 * t319 + t148 * t6 - t276 * t46 - t47 * t82, t10 * t26 + t105 * t38 + t27 * t9 - t319 * t47 + t46 * t6 + t55 * t83, t23, t8, t14, t24, t13, t71, t1 * t202 + t100 * t56 + t133 * t25 - t138 * t29 + t146 * t17 - t147 * t18 + t168 * t3 + t74 * t82, t101 * t56 + t135 * t25 + t138 * t32 - t146 * t22 - t148 * t18 - t168 * t4 - t2 * t202 + t276 * t74, t1 * t148 - t100 * t22 - t101 * t17 - t133 * t4 - t135 * t3 + t147 * t2 - t276 * t29 - t32 * t82, t1 * t29 + t17 * t3 + t18 * t74 + t2 * t32 + t22 * t4 + t25 * t56; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t308, t358 * t369, -t247 * t255 * t320, t308, t285 * t333 - t230, 0, t195 * t285 + t250 * t268 - t291, pkin(8) * t230 + t192 * t285 + t253 * t268, 0, 0, t424, t435, t433, t415, t432, t302, -pkin(2) * t423 + t111 * t333 + t124 * t227 - t153 * t421 - t195 * t173 - t185 * t252 + t266, pkin(2) * t138 - t125 * t227 - t175 * t195 + t185 * t249 + (t153 * t252 - t340) * qJD(3) + (-t153 * t364 + (t112 - t339) * t250) * t357, -t111 * t442 + t112 * t421 + t124 * t175 + t125 * t173 + t293 + t437, -pkin(2) * t185 + t111 * t124 - t112 * t125 - t153 * t195 + ((t111 * t252 - t112 * t249) * qJD(3) + t293) * pkin(9), t302, -t433, -t432, t424, t435, t415, -t107 * t442 - t109 * t421 - t118 * t173 - t120 * t175 + t294 + t437, t103 * t421 - t107 * t333 + t120 * t227 + t173 * t360 - t223 * t423 + t62 * t252 - t266, -t118 * t227 + t138 * t223 - t249 * t62 + t360 * t175 + (-t103 * t252 + t340) * qJD(3) + (t103 * t364 + (t109 + t339) * t250) * t357, -t107 * t120 - t109 * t118 + t223 * t62 - t360 * t103 + ((t107 * t252 + t109 * t249) * qJD(3) + t294) * pkin(9), t19, t7, t16, t20, t15, t75, -t138 * t142 - t161 * t83 + t229 * t82 + (-t351 * t83 + t6) * t249 - t404 * t168 + t361 * t133 + (-t227 * t26 - t349 * t83 + t395) * t252, t138 * t143 - t162 * t83 + t229 * t276 + (t353 * t83 + t319) * t249 + t403 * t168 + t361 * t135 + (t227 * t27 - t348 * t83 - t397) * t252, -t142 * t276 - t143 * t82 + t161 * t27 + t162 * t26 + t404 * t135 + t403 * t133 + t295 * t352 + (t248 * t6 + t251 * t319 + (t248 * t27 + t251 * t26) * qJD(5)) * t252, t142 * t6 - t143 * t319 + t229 * t38 - t26 * t404 - t27 * t403 + t361 * t83, t19, t7, t16, t20, t15, t75, -t126 * t138 - t161 * t56 + t200 * t82 + (-t351 * t56 + t1) * t249 - t406 * t168 + t393 * t133 + (-t17 * t227 - t349 * t56 + t398) * t252, t137 * t138 - t162 * t56 + t200 * t276 + (t353 * t56 - t2) * t249 + t405 * t168 + t393 * t135 + (t22 * t227 - t348 * t56 - t399) * t252, -t126 * t276 - t137 * t82 + t161 * t22 + t162 * t17 + t406 * t135 + t405 * t133 + (-t17 * t248 + t22 * t251) * t352 + (t1 * t248 - t2 * t251 + (t17 * t251 + t22 * t248) * qJD(5)) * t252, t1 * t126 + t137 * t2 - t17 * t406 + t18 * t200 - t22 * t405 + t393 * t56; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t372, t324, -t267, -t372, -t440, t230, -t153 * t175 + t277, t111 * t227 + t153 * t173 + t307, 0, 0, t230, t267, t440, t372, t324, -t372, pkin(3) * t138 - qJ(4) * t423 + (-t109 - t112) * t175 + (t107 + t342) * t173, t121 * t173 - t277 - 0.2e1 * t292 + t385, -t103 * t173 + t121 * t175 + t227 * t342 + 0.2e1 * t224 + t290, -pkin(3) * t63 - qJ(4) * t58 - t103 * t121 - t107 * t112 + t109 * t342, t30, t11, t34, t31, t35, t374, qJ(4) * t82 + t173 * t26 + t397 + (t248 * t346 - t44) * t168 + t362 * t133 + t419 * t251, qJ(4) * t276 - t173 * t27 + t395 + (t251 * t346 + t45) * t168 + t362 * t135 - t419 * t248, t133 * t45 + t135 * t44 + (-t175 * t27 + t412 * t276 - t6 + (t133 * t412 - t27) * qJD(5)) * t251 + (t175 * t26 + t412 * t82 + t319 + (-t135 * t412 + t26) * qJD(5)) * t248, qJ(4) * t38 - t26 * t44 - t27 * t45 + t362 * t83 - (qJD(5) * t295 - t248 * t319 + t251 * t6) * t412, t30, t11, t34, t31, t35, t374, t133 * t390 + t138 * t221 + t168 * t392 + t17 * t173 + t240 * t82 + t313 * t56 + t399, t135 * t390 - t138 * t220 - t168 * t391 - t173 * t22 + t240 * t276 - t315 * t56 + t398, -t391 * t133 - t392 * t135 + t220 * t82 + t221 * t276 - t431, -t1 * t221 + t17 * t392 + t18 * t240 - t2 * t220 + t22 * t391 + t390 * t56; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t267, t230 - t372, -t227 ^ 2 - t413, -t109 * t227 + t385 + t63, 0, 0, 0, 0, 0, 0, t41, t42, t12, t227 * t83 + t248 * t441 + t428 * t251, 0, 0, 0, 0, 0, 0, t41, t42, t12, t227 * t56 + t431; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t382, t64, t50, -t382, t51, -t138, -t135 * t83 + t428, t133 * t83 - t441, 0, 0, t382, t64, t50, -t382, t51, -t138, -0.2e1 * t409 + t402 + (t318 - t56) * t135 + t262, -pkin(5) * t414 + t168 * t21 + (qJD(6) + t56) * t133 + t282, -pkin(5) * t276 - t133 * t407, t407 * t22 + (-t135 * t56 + t1) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t446, t443, -t132 - t414, t22 * t133 + t17 * t135 + t18;];
tauc_reg  = t5;
