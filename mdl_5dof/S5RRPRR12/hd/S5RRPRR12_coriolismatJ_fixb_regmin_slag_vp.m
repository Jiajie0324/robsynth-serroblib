% Calculate minimal parameter regressor of coriolis matrix for
% S5RRPRR12
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d4,d5]';
% 
% Output:
% cmat_reg [(5*%NQJ)%x28]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 20:31
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5RRPRR12_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRR12_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPRR12_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RRPRR12_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 20:30:40
% EndTime: 2019-12-31 20:30:49
% DurationCPUTime: 3.76s
% Computational Cost: add. (2480->285), mult. (5097->405), div. (0->0), fcn. (5136->6), ass. (0->235)
t200 = sin(qJ(5));
t202 = sin(qJ(2));
t365 = pkin(6) - pkin(7);
t178 = t365 * t202;
t205 = cos(qJ(2));
t179 = t365 * t205;
t201 = sin(qJ(4));
t204 = cos(qJ(4));
t47 = t204 * t178 - t201 * t179;
t375 = t47 * t200;
t82 = -t375 / 0.2e1;
t83 = t375 / 0.2e1;
t383 = t82 + t83;
t203 = cos(qJ(5));
t374 = t47 * t203;
t84 = -t374 / 0.2e1;
t85 = t374 / 0.2e1;
t382 = t84 + t85;
t272 = qJD(2) - qJD(4);
t190 = t205 * t201;
t313 = t202 * t204;
t166 = -t190 + t313;
t314 = t202 * qJ(3);
t355 = pkin(2) + pkin(3);
t154 = t355 * t205 + pkin(1) + t314;
t346 = t166 * pkin(8);
t164 = t202 * t201 + t204 * t205;
t349 = t164 * pkin(4);
t234 = -t346 + t349;
t207 = t154 + t234;
t225 = t201 * t178 + t204 * t179;
t368 = t203 * t225;
t20 = t200 * t207 + t368;
t381 = (t20 - t368) * t166;
t369 = t200 * t225;
t19 = -t203 * t207 + t369;
t380 = (t19 - t369) * t166;
t163 = t166 ^ 2;
t43 = -t164 ^ 2 + t163;
t376 = t43 * t203;
t379 = qJD(1) * t376;
t377 = t43 * t200;
t378 = qJD(1) * t377;
t371 = t43 * qJD(1);
t370 = t272 * t47;
t363 = t272 * t166;
t230 = t164 * t363;
t367 = t272 * t225;
t366 = 0.2e1 * t166;
t170 = qJ(3) * t201 + t204 * t355;
t168 = pkin(4) + t170;
t155 = t313 / 0.2e1 - t190 / 0.2e1;
t301 = qJD(1) * t166;
t99 = t164 * t301;
t335 = t155 * qJD(5) + t99;
t364 = t272 * t164;
t197 = t200 ^ 2;
t199 = t203 ^ 2;
t180 = t199 - t197;
t362 = t272 * t180;
t247 = t197 / 0.2e1 - t199 / 0.2e1;
t61 = t247 * t166;
t306 = t61 * qJD(5);
t361 = -t199 * t99 + t306;
t360 = -t204 * t164 + t201 * t166;
t358 = 0.2e1 * t168;
t353 = -t168 / 0.2e1;
t248 = t170 / 0.2e1 + t353;
t171 = t204 * qJ(3) - t201 * t355;
t169 = -pkin(8) + t171;
t249 = -t169 / 0.2e1 + t171 / 0.2e1;
t357 = t248 * t164 + t249 * t166 - t349 / 0.2e1 + t346 / 0.2e1;
t298 = qJD(1) * t203;
t261 = t200 * t298;
t356 = -t163 * t261 + t272 * t61;
t354 = t164 / 0.2e1;
t352 = -t200 / 0.2e1;
t350 = t203 / 0.2e1;
t348 = t164 * pkin(8);
t347 = t166 * pkin(4);
t206 = (-pkin(8) / 0.2e1 + t249) * t166 + (pkin(4) / 0.2e1 + t248) * t164;
t5 = t200 * t206;
t345 = qJD(1) * t5;
t8 = t206 * t203;
t344 = qJD(1) * t8;
t219 = t166 * t353 + t169 * t354;
t195 = t205 * qJ(3);
t160 = -t355 * t202 + t195;
t94 = t347 + t348;
t40 = -t94 + t160;
t215 = t40 / 0.2e1 + t219;
t9 = t215 * t200 + t382;
t343 = qJD(1) * t9;
t339 = t203 * t40;
t1 = t339 * t164 + t380;
t342 = t1 * qJD(1);
t340 = t200 * t40;
t2 = -t340 * t164 + t381;
t341 = t2 * qJD(1);
t67 = t203 * t164;
t3 = t94 * t67 - t380;
t338 = t3 * qJD(1);
t62 = t200 * t164;
t4 = -t94 * t62 - t381;
t337 = t4 * qJD(1);
t11 = -t215 * t203 + t383;
t334 = qJD(1) * t11;
t64 = t200 * t166;
t13 = t164 * t19 + t47 * t64;
t333 = qJD(1) * t13;
t68 = t203 * t166;
t14 = -t164 * t20 - t47 * t68;
t332 = qJD(1) * t14;
t25 = -t154 * t166 + t160 * t164;
t331 = qJD(1) * t25;
t26 = t154 * t164 + t160 * t166;
t330 = qJD(1) * t26;
t218 = t201 * t354 + t204 * t166 / 0.2e1;
t214 = t202 / 0.2e1 + t218;
t32 = t214 * t200;
t329 = qJD(1) * t32;
t35 = t214 * t203;
t328 = qJD(1) * t35;
t73 = t180 * t163;
t323 = qJD(1) * t73;
t307 = t61 * qJD(1);
t305 = t62 * qJD(1);
t304 = t67 * qJD(1);
t302 = qJD(1) * t164;
t300 = qJD(1) * t200;
t299 = qJD(1) * t202;
t297 = qJD(1) * t205;
t296 = qJD(2) * qJ(3);
t295 = qJD(2) * t200;
t294 = qJD(2) * t203;
t293 = qJD(3) * t201;
t292 = qJD(3) * t202;
t291 = qJD(3) * t204;
t290 = qJD(4) * t154;
t289 = qJD(4) * t200;
t288 = qJD(4) * t203;
t287 = qJD(5) * t200;
t286 = qJD(5) * t203;
t285 = qJD(5) * t204;
t228 = -pkin(2) * t205 - t314;
t172 = -pkin(1) + t228;
t175 = pkin(2) * t202 - t195;
t100 = t172 * t205 + t175 * t202;
t284 = t100 * qJD(1);
t101 = -t172 * t202 + t175 * t205;
t283 = t101 * qJD(1);
t281 = t155 * qJD(1);
t279 = t180 * qJD(5);
t198 = t202 ^ 2;
t181 = t205 ^ 2 - t198;
t278 = t181 * qJD(1);
t277 = t198 * qJD(1);
t276 = t201 * qJD(2);
t275 = t202 * qJD(2);
t274 = t204 * qJD(2);
t194 = t205 * qJD(2);
t273 = t205 * qJD(3);
t270 = pkin(1) * t299;
t269 = pkin(1) * t297;
t268 = pkin(6) * t194;
t267 = pkin(6) * t275;
t264 = t154 * t302;
t263 = t154 * t301;
t262 = t199 * t301;
t260 = t164 * t292;
t259 = t164 * t287;
t258 = t164 * t286;
t257 = t172 * t175 * qJD(1);
t256 = t172 * t299;
t187 = t200 * t286;
t255 = t164 * t299;
t254 = t166 * t299;
t253 = t164 * t298;
t245 = t272 * t200;
t243 = t272 * t203;
t174 = t272 * t204;
t242 = qJD(5) + t302;
t240 = t200 * t255;
t239 = t202 * t253;
t238 = t166 * t187;
t236 = t166 * t261;
t235 = -pkin(4) / 0.2e1 + t248;
t233 = -0.2e1 * t236;
t232 = 0.2e1 * t236;
t231 = t203 * t245;
t229 = t200 * t243;
t227 = t164 * t236;
t226 = t164 * t168 + t166 * t169;
t224 = t242 * t203;
t223 = qJD(2) * t168 - t291;
t222 = qJD(2) * t171 + t293;
t221 = qJD(4) * t171 + t293;
t220 = t348 / 0.2e1 + t347 / 0.2e1;
t217 = t94 / 0.2e1 + t220;
t216 = t231 * t366;
t186 = t200 * t276;
t213 = t201 * t289 - t203 * t285 - t186;
t189 = t203 * t276;
t212 = t200 * t285 + t201 * t288 - t189;
t15 = t217 * t200 + t382;
t56 = t235 * t203;
t211 = pkin(4) * t288 - qJD(1) * t15 + qJD(2) * t56;
t17 = -t217 * t203 + t383;
t55 = t235 * t200;
t210 = pkin(4) * t289 - qJD(1) * t17 + qJD(2) * t55;
t209 = t228 * qJD(2) + t273;
t188 = t202 * t297;
t173 = t272 * t201;
t109 = -0.2e1 * t238;
t108 = 0.2e1 * t238;
t72 = t272 * t155;
t58 = t358 * t350;
t57 = t358 * t200 / 0.2e1;
t54 = t200 * t67;
t46 = t233 - t362;
t45 = t232 + t362;
t34 = t202 * t350 - t218 * t203;
t33 = t218 * t200 + t202 * t352;
t28 = -t231 - t307;
t27 = t229 + t307;
t24 = t360 * t203;
t23 = t360 * t200;
t22 = t199 * t354 + (-t197 / 0.2e1 - t247) * t164;
t18 = -t220 * t203 + t94 * t350 + 0.2e1 * t82;
t16 = t220 * t200 + t94 * t352 + 0.2e1 * t84;
t12 = 0.2e1 * t83 + t339 / 0.2e1 - t219 * t203;
t10 = 0.2e1 * t85 - t340 / 0.2e1 + t219 * t200;
t7 = t357 * t203 - t369;
t6 = t357 * t200 + t368;
t21 = [0, 0, 0, t202 * t194, t181 * qJD(2), 0, 0, 0, -pkin(1) * t275, -pkin(1) * t194, -t101 * qJD(2) + t202 * t273, 0, -qJD(2) * t100 + qJD(3) * t198, (qJD(2) * t175 - t292) * t172, t230, t272 * t43, 0, 0, 0, qJD(2) * t25 + t166 * t290 + t260, qJD(2) * t26 - t164 * t290 + t166 * t292, -t163 * t187 + t199 * t230, -qJD(5) * t73 - t164 * t216, -t166 * t259 - t272 * t376, -t166 * t258 + t272 * t377, -t230, qJD(2) * t1 + qJD(4) * t3 + qJD(5) * t14 + t203 * t260, qJD(2) * t2 + qJD(4) * t4 + qJD(5) * t13 - t200 * t260; 0, 0, 0, t188, t278, t194, -t275, 0, -t268 - t270, t267 - t269, -t268 - t283, t209, -t267 - t284, pkin(6) * t209 + t257, t99, t371, -t364, -t363, 0, t331 - t367, t330 - t370, qJD(4) * t54 + t306 + (-t200 * t294 + t262) * t164, t22 * qJD(4) + t108 + (-qJD(2) * t180 + t233) * t164, -qJD(4) * t64 + t166 * t295 - t379, -qJD(4) * t68 + t166 * t294 + t378, -t335, t342 + (t200 * t226 - t368) * qJD(2) + t23 * qJD(3) + t6 * qJD(4) + t12 * qJD(5), t341 + (t203 * t226 + t369) * qJD(2) + t24 * qJD(3) + t7 * qJD(4) + t10 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t188, t194, t277, -t256 + t268, 0, 0, 0, 0, 0, t255, t254, 0, 0, 0, 0, 0, qJD(2) * t23 + qJD(5) * t34 + t239, qJD(2) * t24 + qJD(5) * t33 - t240; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t99, -t371, t364, t363, 0, t263 + t367, -t264 + t370, qJD(2) * t54 - t306 + (-t200 * t288 - t262) * t164, t22 * qJD(2) + t109 + (-qJD(4) * t180 + t232) * t164, -qJD(2) * t64 + t166 * t289 + t379, -qJD(2) * t68 + t166 * t288 - t378, t335, t338 + t6 * qJD(2) + (t200 * t234 - t368) * qJD(4) + t18 * qJD(5), t337 + t7 * qJD(2) + (t203 * t234 + t369) * qJD(4) + t16 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t356, t229 * t366 - t323, -t242 * t64, -t166 * t224, -t72, qJD(2) * t12 + qJD(3) * t34 + qJD(4) * t18 - qJD(5) * t20 + t332, qJD(2) * t10 + qJD(3) * t33 + qJD(4) * t16 + qJD(5) * t19 + t333; 0, 0, 0, -t188, -t278, 0, 0, 0, t270, t269, t283, 0, t284, -t257, -t99, -t371, 0, 0, 0, -t331, -t330, t361, t108 + 0.2e1 * t227, -t258 + t379, t259 - t378, t335, qJD(4) * t5 + qJD(5) * t11 - t342, qJD(4) * t8 + qJD(5) * t9 - t341; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3), qJ(3) * qJD(3), 0, 0, 0, 0, 0, t221, -qJD(4) * t170 + t291, t187, t279, 0, 0, 0, -t168 * t287 + t203 * t221, -t168 * t286 - t200 * t221; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2), t296, 0, 0, 0, 0, 0, t276, t274, 0, 0, 0, 0, 0, t189, -t186; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t272 * t171, -t170 * t272, -t187, -t279, 0, 0, 0, qJD(5) * t57 + t171 * t243 + t345, qJD(5) * t58 - t171 * t245 + t344; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t27, t45, -t224, t242 * t200, t281, qJD(4) * t57 - t168 * t295 - t169 * t286 + t334, qJD(4) * t58 - t168 * t294 + t169 * t287 + t343; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t188, 0, -t277, t256, 0, 0, 0, 0, 0, -t255, -t254, 0, 0, 0, 0, 0, -qJD(5) * t35 - t239, qJD(5) * t32 + t240; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(2), -t296, 0, 0, 0, 0, 0, -t173, -t174, 0, 0, 0, 0, 0, t212, -t213; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t173, t174, 0, 0, 0, 0, 0, -t212, t213; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t174 * t200 - t201 * t286 - t328, t174 * t203 + t201 * t287 + t329; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t99, t371, 0, 0, 0, -t263, t264, -t361, t109 - 0.2e1 * t227, qJD(5) * t67 - t379, -qJD(5) * t62 + t378, -t335, -qJD(2) * t5 + qJD(5) * t17 - t338, -qJD(2) * t8 + qJD(5) * t15 - t337; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t222, qJD(2) * t170 - t291, -t187, -t279, 0, 0, 0, -qJD(5) * t55 - t203 * t222 - t345, -qJD(5) * t56 + t200 * t222 - t344; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t276, -t274, 0, 0, 0, 0, 0, -t189, t186; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t187, t279, 0, 0, 0, -pkin(4) * t287, -pkin(4) * t286; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t28, t46, t286 + t304, -t287 - t305, -t281, -pkin(8) * t286 - t210, pkin(8) * t287 - t211; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t356, -t216 + t323, -qJD(4) * t67 + (t166 * t300 + t294) * t164, qJD(4) * t62 + (t166 * t298 - t295) * t164, -t72, -qJD(2) * t11 + qJD(3) * t35 - qJD(4) * t17 - t332, -qJD(2) * t9 - qJD(3) * t32 - qJD(4) * t15 - t333; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t28, t46, t253, -t164 * t300, -t281, qJD(4) * t55 + t200 * t223 - t334, qJD(4) * t56 + t203 * t223 - t343; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t200 * t274 + t328, -t203 * t274 - t329; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t27, t45, -t304, t305, t281, t210, t211; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t21;