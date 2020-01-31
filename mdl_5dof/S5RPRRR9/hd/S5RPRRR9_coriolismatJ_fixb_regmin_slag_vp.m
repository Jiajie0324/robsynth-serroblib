% Calculate minimal parameter regressor of coriolis matrix for
% S5RPRRR9
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d4,d5,theta2]';
% 
% Output:
% cmat_reg [(5*%NQJ)%x28]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 19:08
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5RPRRR9_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRR9_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRR9_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RPRRR9_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 19:08:03
% EndTime: 2019-12-31 19:08:13
% DurationCPUTime: 4.60s
% Computational Cost: add. (5096->296), mult. (10448->425), div. (0->0), fcn. (12420->8), ass. (0->241)
t206 = cos(qJ(5));
t201 = sin(pkin(9));
t202 = cos(pkin(9));
t205 = sin(qJ(3));
t207 = cos(qJ(3));
t176 = -t201 * t205 + t202 * t207;
t177 = t201 * t207 + t202 * t205;
t204 = sin(qJ(4));
t354 = cos(qJ(4));
t159 = -t176 * t354 + t177 * t204;
t332 = t159 ^ 2;
t173 = t354 * t177;
t324 = t204 * t176;
t369 = t173 + t324;
t386 = t369 ^ 2;
t387 = t386 - t332;
t397 = t387 * t206;
t400 = t397 * qJD(1);
t383 = t206 * t159;
t390 = t383 / 0.2e1;
t391 = -t383 / 0.2e1;
t394 = t391 + t390;
t402 = qJD(5) * t394;
t403 = t400 + t402;
t272 = qJD(3) + qJD(4);
t203 = sin(qJ(5));
t382 = t369 * t203;
t150 = t382 / 0.2e1;
t254 = -t382 / 0.2e1;
t396 = t254 + t150;
t401 = t396 * qJD(2);
t398 = t387 * t203;
t399 = t398 * qJD(1);
t375 = t369 * qJD(1);
t260 = t159 * t375;
t240 = t173 / 0.2e1;
t368 = t240 + t324 / 0.2e1;
t395 = qJD(5) * t368 + t260;
t393 = t387 * qJD(1);
t347 = pkin(6) + qJ(2);
t181 = t347 * t201;
t182 = t347 * t202;
t229 = t181 * t205 - t182 * t207;
t116 = pkin(7) * t176 - t229;
t245 = t181 * t207 + t182 * t205;
t224 = -pkin(7) * t177 - t245;
t381 = t116 * t354 + t204 * t224;
t392 = t272 * t381;
t389 = t381 * t203;
t388 = t381 * t206;
t350 = t369 * pkin(4);
t351 = t159 * pkin(8);
t90 = t350 + t351;
t385 = -t159 / 0.2e1;
t362 = t159 / 0.2e1;
t384 = -t369 / 0.2e1;
t370 = t354 * t224;
t365 = -t370 / 0.2e1;
t352 = pkin(8) * t369;
t281 = t159 * qJD(4);
t380 = -qJD(3) * t159 - t281;
t325 = t204 * t116;
t52 = t370 - t325;
t328 = t203 * t206;
t371 = t272 * t328;
t199 = t203 ^ 2;
t200 = t206 ^ 2;
t248 = t199 / 0.2e1 - t200 / 0.2e1;
t67 = t248 * t369;
t49 = -t67 * qJD(1) + t371;
t379 = qJD(1) * t159;
t378 = qJD(2) * t159;
t376 = t368 * qJD(1);
t374 = -0.2e1 * t369;
t188 = t200 - t199;
t372 = t272 * t188;
t84 = 0.2e1 * t391;
t262 = qJD(1) * t328;
t367 = t262 * t386 + t272 * t67;
t359 = t369 / 0.2e1;
t270 = t354 * pkin(3);
t193 = -t270 - pkin(4);
t358 = -t193 / 0.2e1;
t357 = -t203 / 0.2e1;
t356 = -t206 / 0.2e1;
t355 = t206 / 0.2e1;
t353 = pkin(4) * t203;
t349 = t177 * pkin(3);
t348 = t204 * pkin(3);
t191 = -pkin(2) * t202 - pkin(1);
t167 = -pkin(3) * t176 + t191;
t238 = pkin(4) * t159 - t352;
t210 = t167 + t238;
t19 = -t206 * t210 + t389;
t214 = t369 * t381;
t57 = t349 + t90;
t1 = -t19 * t369 + t203 * t214 + t383 * t57;
t346 = t1 * qJD(1);
t20 = t203 * t210 + t388;
t70 = t203 * t159;
t2 = -t20 * t369 + t206 * t214 - t57 * t70;
t345 = t2 * qJD(1);
t3 = (-t19 + t389) * t369 + t90 * t383;
t342 = t3 * qJD(1);
t4 = (-t20 + t388) * t369 - t90 * t70;
t341 = t4 * qJD(1);
t192 = pkin(8) + t348;
t209 = t192 * t384 + t159 * t358 + (t204 * t359 + t354 * t385) * pkin(3);
t208 = t352 / 0.2e1 + pkin(4) * t385 + t209;
t5 = t203 * t208;
t340 = t5 * qJD(1);
t337 = t203 * t52;
t336 = t206 * t52;
t282 = t369 * qJD(3);
t250 = 0.2e1 * t384;
t79 = t250 * t206;
t335 = -qJD(4) * t79 + t206 * t282;
t13 = t159 * t19 + t382 * t52;
t334 = t13 * qJD(1);
t322 = t206 * t369;
t14 = -t159 * t20 - t322 * t52;
t333 = t14 * qJD(1);
t330 = t193 * t203;
t22 = t365 + t370 / 0.2e1;
t320 = t22 * qJD(1);
t232 = t386 + t332;
t28 = t232 * t203;
t317 = t28 * qJD(1);
t30 = t232 * t206;
t315 = t30 * qJD(1);
t34 = -t159 * t349 - t167 * t369;
t311 = t34 * qJD(1);
t35 = t159 * t167 - t349 * t369;
t310 = t35 * qJD(1);
t60 = (t385 + t362) * t328;
t308 = t60 * qJD(1);
t306 = t382 * qJD(1);
t305 = t70 * qJD(1);
t72 = 0.2e1 * t385 * t203;
t64 = t72 * qJD(1);
t249 = t359 + t384;
t75 = t249 * t203;
t304 = t75 * qJD(1);
t77 = t250 * t203;
t303 = t77 * qJD(1);
t78 = t249 * t206;
t302 = t78 * qJD(1);
t301 = t79 * qJD(1);
t300 = t383 * qJD(1);
t83 = 0.2e1 * t390;
t299 = t83 * qJD(1);
t298 = t84 * qJD(1);
t89 = t188 * t386;
t297 = t89 * qJD(1);
t96 = 0.2e1 * t240 + t324;
t295 = t96 * qJD(1);
t187 = t201 ^ 2 + t202 ^ 2;
t293 = qJD(1) * t167;
t292 = qJD(3) * t206;
t291 = qJD(4) * t206;
t290 = qJD(5) * t203;
t196 = qJD(5) * t206;
t121 = t176 ^ 2 - t177 ^ 2;
t289 = t121 * qJD(1);
t156 = t240 - t173 / 0.2e1;
t286 = t156 * qJD(1);
t285 = t156 * qJD(4);
t283 = t369 * qJD(2);
t278 = t369 * qJD(4);
t277 = t176 * qJD(1);
t174 = t176 * qJD(3);
t276 = t177 * qJD(1);
t275 = t177 * qJD(3);
t178 = t187 * qJ(2);
t274 = t178 * qJD(1);
t273 = t187 * qJD(1);
t269 = qJD(4) * t348;
t268 = qJD(3) * t348;
t263 = t200 * t375;
t261 = qJD(5) * t159 * t369;
t259 = t369 * t379;
t258 = t159 * t293;
t257 = t369 * t293;
t256 = t176 * t276;
t189 = t203 * t196;
t255 = t206 * t375;
t253 = t159 * t357;
t247 = t354 * qJD(3);
t246 = t354 * qJD(4);
t244 = -qJD(1) * t191 - qJD(2);
t243 = -t270 / 0.2e1;
t241 = t369 * t262;
t239 = t272 * t348;
t236 = -0.2e1 * t241;
t235 = 0.2e1 * t241;
t230 = -t193 * t159 - t192 * t369;
t228 = qJD(4) * t96 + t282;
t227 = t369 * (-qJD(5) - t379);
t225 = t351 / 0.2e1 + t350 / 0.2e1;
t222 = t192 * t362 + t358 * t369;
t213 = t57 / 0.2e1 + t222;
t9 = t203 * t213;
t223 = -qJD(1) * t9 - t193 * t292;
t11 = t206 * t213;
t221 = qJD(1) * t11 - qJD(3) * t330;
t218 = t243 + pkin(4) / 0.2e1 + t358;
t8 = t206 * t208;
t217 = -qJD(1) * t8 - t203 * t268;
t216 = t380 * t369;
t215 = t90 / 0.2e1 + t225;
t15 = t215 * t203;
t164 = t218 * t206;
t212 = pkin(4) * t291 - qJD(1) * t15 + qJD(3) * t164;
t163 = t218 * t203;
t17 = t215 * t206;
t211 = qJD(1) * t17 + qJD(3) * t163 + qJD(4) * t353;
t186 = t203 * t269;
t183 = t188 * qJD(5);
t166 = pkin(4) * t356 + t193 * t355 + t206 * t243;
t165 = -t353 / 0.2e1 + t330 / 0.2e1 + t203 * t243;
t122 = t189 * t374;
t92 = t236 + t372;
t91 = t235 - t372;
t88 = t272 * t368;
t74 = 0.2e1 * t150;
t73 = -t70 / 0.2e1 - t253;
t66 = t78 * qJD(4);
t63 = t73 * qJD(5);
t62 = t72 * qJD(5);
t61 = t67 * qJD(5);
t59 = t84 * t203;
t58 = -t290 + t64;
t26 = t159 * t248 + t199 * t362 + t200 * t385;
t23 = t325 + 0.2e1 * t365;
t18 = -t206 * t225 + t355 * t90 - t337;
t16 = t203 * t225 + t357 * t90 - t336;
t12 = -t337 / 0.2e1 + t52 * t357 + t57 * t355 - t222 * t206;
t10 = -t336 / 0.2e1 + t52 * t356 + t57 * t357 + t222 * t203;
t7 = pkin(4) * t390 + t206 * t209 + t352 * t356 + t389;
t6 = -pkin(4) * t253 + pkin(8) * t254 + t203 * t209 - t388;
t21 = [0, 0, 0, 0, 0, t187 * qJD(2), t178 * qJD(2), t176 * t275, t121 * qJD(3), 0, 0, 0, t191 * t275, t191 * t174, t216, -t272 * t387, 0, 0, 0, -qJD(3) * t34 + t167 * t278, -qJD(3) * t35 - t167 * t281, -t189 * t386 + t200 * t216, -0.2e1 * t203 * t322 * t380 - t89 * qJD(5), -t203 * t261 + t272 * t397, -t206 * t261 - t272 * t398, (t278 + t282) * t159, qJD(2) * t28 + qJD(3) * t1 + qJD(4) * t3 + qJD(5) * t14, qJD(2) * t30 + qJD(3) * t2 + qJD(4) * t4 + qJD(5) * t13; 0, 0, 0, 0, 0, t273, t274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t285, 0, 0, 0, 0, 0, 0, t63 + t66 + t317, t272 * t396 + t315 + t402; 0, 0, 0, 0, 0, 0, 0, t256, t289, t174, -t275, 0, qJD(3) * t229 + t191 * t276, qJD(3) * t245 + t191 * t277, -t259, -t393, t380, -t228, 0, -t311 - t392, -qJD(3) * t52 + qJD(4) * t23 - t310, t59 * qJD(4) - t61 - (t203 * t292 + t263) * t159, t26 * qJD(4) + t122 - (qJD(3) * t188 + t236) * t159, qJD(4) * t74 + t203 * t282 + t403, t63 - t399 + t335, t395, t346 + (t203 * t230 - t388) * qJD(3) + t6 * qJD(4) + t12 * qJD(5), t345 + t401 + (t206 * t230 + t389) * qJD(3) + t7 * qJD(4) + t10 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t260, -t393, t380, -qJD(3) * t96 - t278, 0, qJD(2) * t156 + t257 - t392, qJD(3) * t23 - qJD(4) * t52 - t258, t59 * qJD(3) - t61 + (-t203 * t291 - t263) * t159, t26 * qJD(3) + t122 + (-qJD(4) * t188 + t235) * t159, qJD(3) * t74 + t203 * t278 + t403, -qJD(3) * t79 + t206 * t278 - t399, t395, t342 + t78 * qJD(2) + t6 * qJD(3) + (t203 * t238 - t388) * qJD(4) + t18 * qJD(5), t341 + t401 + t7 * qJD(3) + (t206 * t238 + t389) * qJD(4) + t16 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t367, t371 * t374 - t297, t203 * t227 + t272 * t394, t73 * qJD(3) + t206 * t227, t88, qJD(2) * t73 + qJD(3) * t12 + qJD(4) * t18 - qJD(5) * t20 + t333, qJD(2) * t394 + qJD(3) * t10 + qJD(4) * t16 + qJD(5) * t19 + t334; 0, 0, 0, 0, 0, -t273, -t274, 0, 0, 0, 0, 0, t275, t174, 0, 0, 0, 0, 0, t228, t380, 0, 0, 0, 0, 0, t62 - t317 + t335, -qJD(3) * t382 + qJD(4) * t77 + qJD(5) * t84 - t315; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t276, t277, 0, 0, 0, 0, 0, t375, -t379, 0, 0, 0, 0, 0, t255, -t306; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t295, -t379, 0, 0, 0, 0, 0, -t301, t303; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t58, -t196 + t298; 0, 0, 0, 0, 0, 0, 0, -t256, -t289, 0, 0, 0, t244 * t177, t244 * t176, t259, t393, 0, -t285, 0, -t283 + t311, qJD(4) * t22 + t310 + t378, qJD(4) * t60 + t200 * t259 - t61, -t159 * t235 + t122, qJD(4) * t75 + qJD(5) * t83 - t400, t62 + t66 + t399, -t395, qJD(4) * t5 - qJD(5) * t11 - t206 * t283 - t346, qJD(2) * t382 + qJD(4) * t8 + qJD(5) * t9 - t345; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t276, -t277, 0, 0, 0, 0, 0, -t375, t379, 0, 0, 0, 0, 0, -t255, t306; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t269, -pkin(3) * t246, t189, t183, 0, 0, 0, t193 * t290 - t206 * t269, t193 * t196 + t186; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t286, 0, -t239, t320 + (-t247 - t246) * pkin(3), t189 + t308, t183, t304, t302, 0, t165 * qJD(5) - t206 * t239 + t340, qJD(5) * t166 + t186 - t217; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t49, t92, t196 + t299, t58, -t376, qJD(4) * t165 - t192 * t196 - t221, qJD(4) * t166 + t192 * t290 - t223; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t260, t393, 0, t156 * qJD(3), 0, -qJD(2) * t96 - t257, -qJD(3) * t22 + t258 + t378, -qJD(3) * t60 + t200 * t260 - t61, t159 * t236 + t122, -qJD(3) * t75 + qJD(5) * t383 - t400, -qJD(3) * t78 - qJD(5) * t70 + t399, -t395, qJD(2) * t79 - qJD(3) * t5 - qJD(5) * t17 - t342, -qJD(2) * t77 - qJD(3) * t8 + qJD(5) * t15 - t341; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t295, t379, 0, 0, 0, 0, 0, t301, -t303; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t286, 0, t268, pkin(3) * t247 - t320, t189 - t308, t183, -t304, -t302, 0, -qJD(5) * t163 + t206 * t268 - t340, -qJD(5) * t164 + t217; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t189, t183, 0, 0, 0, -pkin(4) * t290, -pkin(4) * t196; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t49, t92, t196 + t300, -t290 - t305, -t376, -pkin(8) * t196 - t211, pkin(8) * t290 - t212; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t367, 0.2e1 * t369 * t371 + t297, -qJD(3) * t83 - qJD(4) * t383 + t203 * t260, -qJD(3) * t72 + qJD(4) * t70 + t206 * t260, t88, -qJD(2) * t72 + qJD(3) * t11 + qJD(4) * t17 - t333, -qJD(2) * t84 - qJD(3) * t9 - qJD(4) * t15 - t334; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t64, -t298; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t49, t91, -t299, -t64, t376, qJD(4) * t163 + t221, qJD(4) * t164 + t223; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t49, t91, -t300, t305, t376, t211, t212; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t21;