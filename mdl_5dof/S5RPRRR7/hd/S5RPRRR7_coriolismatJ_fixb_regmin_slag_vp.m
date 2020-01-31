% Calculate minimal parameter regressor of coriolis matrix for
% S5RPRRR7
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
% cmat_reg [(5*%NQJ)%x25]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 19:04
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5RPRRR7_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRR7_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRR7_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RPRRR7_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 19:04:12
% EndTime: 2019-12-31 19:04:21
% DurationCPUTime: 3.48s
% Computational Cost: add. (2479->285), mult. (5682->426), div. (0->0), fcn. (5589->8), ass. (0->255)
t278 = qJD(4) + qJD(5);
t214 = cos(qJ(3));
t210 = sin(qJ(4));
t353 = pkin(7) + pkin(8);
t175 = t353 * t210;
t213 = cos(qJ(4));
t176 = t353 * t213;
t209 = sin(qJ(5));
t212 = cos(qJ(5));
t241 = -t212 * t175 - t209 * t176;
t329 = t241 * t214;
t367 = -t329 / 0.2e1;
t211 = sin(qJ(3));
t313 = t212 * t210;
t319 = t209 * t213;
t240 = t313 + t319;
t141 = t240 * t211;
t366 = t240 * t214;
t124 = -t209 * t175 + t212 * t176;
t365 = t278 * t124;
t364 = t278 * t241;
t349 = pkin(4) * t210;
t363 = -t349 / 0.2e1;
t362 = t278 * t141;
t312 = t212 * t213;
t320 = t209 * t210;
t163 = -t312 + t320;
t193 = sin(pkin(9)) * pkin(1) + pkin(6);
t256 = t193 + t349;
t245 = t256 * t211;
t236 = -t245 / 0.2e1;
t346 = t213 * pkin(4);
t203 = -pkin(3) - t346;
t323 = t203 * t141;
t361 = t163 * t236 - t323 / 0.2e1;
t318 = t210 * t211;
t144 = -t209 * t318 + t211 * t312;
t322 = t203 * t144;
t360 = -t240 * t236 + t322 / 0.2e1;
t345 = t214 * pkin(7);
t348 = t211 * pkin(3);
t177 = -t345 + t348;
t169 = t210 * t177;
t315 = t211 * t213;
t273 = t193 * t315;
t317 = t210 * t214;
t108 = -pkin(8) * t317 + t169 - t273;
t314 = t212 * t108;
t257 = -t314 / 0.2e1;
t170 = t213 * t177;
t172 = t193 * t318;
t310 = t213 * t214;
t347 = t211 * pkin(4);
t93 = -pkin(8) * t310 + t170 + t172 + t347;
t335 = t209 * t93;
t233 = -t335 / 0.2e1 + t257;
t218 = t323 / 0.2e1 + t233;
t235 = t245 / 0.2e1;
t13 = t163 * t235 + t218 + t367;
t293 = qJD(3) * t203;
t230 = t320 / 0.2e1 - t312 / 0.2e1;
t352 = -t163 / 0.2e1;
t97 = (t352 + t230) * t214;
t297 = t97 * qJD(2);
t359 = t13 * qJD(1) + t163 * t293 + t297;
t321 = t209 * t108;
t258 = -t321 / 0.2e1;
t332 = t212 * t93;
t234 = t258 + t332 / 0.2e1;
t217 = -t322 / 0.2e1 + t234;
t328 = t124 * t214;
t259 = -t328 / 0.2e1;
t12 = -t235 * t240 + t217 + t259;
t229 = -t319 / 0.2e1 - t313 / 0.2e1;
t351 = t240 / 0.2e1;
t95 = (t351 + t229) * t214;
t299 = t95 * qJD(2);
t358 = t12 * qJD(1) - t240 * t293 + t299;
t215 = t141 * t363 + t259;
t276 = -t346 / 0.2e1;
t350 = -t240 / 0.2e1;
t354 = pkin(4) / 0.2e1;
t4 = (t163 * t276 + t212 * t354 + t256 * t350) * t211 + t215 + t217;
t91 = t163 * t349 + t203 * t240;
t357 = t4 * qJD(1) - t91 * qJD(3) + t299;
t216 = t144 * t363 + t367;
t275 = t346 / 0.2e1;
t3 = (-t209 * pkin(4) / 0.2e1 - t240 * t275 + t256 * t163 / 0.2e1) * t211 + t216 + t218;
t92 = -t203 * t163 + t240 * t349;
t356 = t3 * qJD(1) - t92 * qJD(3) + t297;
t204 = t210 ^ 2;
t206 = t213 ^ 2;
t187 = t206 - t204;
t283 = t211 * qJD(1);
t271 = t213 * t283;
t355 = t187 * qJD(3) - 0.2e1 * t210 * t271;
t31 = t163 * t141 - t144 * t240;
t344 = t278 * t31;
t49 = -t141 * t351 + t144 * t352;
t343 = t278 * t49;
t342 = t278 * t97;
t96 = (t352 - t230) * t214;
t341 = t278 * t96;
t340 = pkin(4) * qJD(4);
t339 = pkin(4) * qJD(5);
t145 = t163 * t214;
t151 = t256 * t214;
t194 = -cos(pkin(9)) * pkin(1) - pkin(2);
t246 = -t214 * pkin(3) - t211 * pkin(7);
t154 = t194 + t246;
t272 = t193 * t310;
t112 = t210 * t154 + t272;
t88 = -pkin(8) * t318 + t112;
t333 = t212 * t88;
t146 = t213 * t154;
t277 = pkin(8) * t315;
t324 = t193 * t210;
t68 = -t277 + t146 + (-pkin(4) - t324) * t214;
t37 = t209 * t68 + t333;
t2 = (t314 + t335) * t214 + t151 * t144 + (-t256 * t145 - t37) * t211;
t338 = t2 * qJD(1);
t274 = t193 * t317;
t111 = -t146 + t274;
t87 = -t111 - t277;
t337 = t209 * t87;
t336 = t209 * t88;
t334 = t212 * t87;
t248 = t214 * t354 - t68 / 0.2e1;
t237 = t87 / 0.2e1 + t248;
t8 = t237 * t209;
t331 = t8 * qJD(1);
t10 = t237 * t212;
t330 = t10 * qJD(1);
t101 = t144 * t245;
t39 = -t333 - t337;
t18 = -pkin(4) * t141 * t315 + t39 * t214 - t101;
t326 = t18 * qJD(1);
t40 = t334 - t336;
t19 = t40 * t214 + (-t256 * t141 + t144 * t346) * t211;
t325 = t19 * qJD(1);
t205 = t211 ^ 2;
t311 = t213 * t205;
t36 = -t212 * t68 + t336;
t22 = -t141 * t245 - t36 * t214;
t309 = t22 * qJD(1);
t23 = -t37 * t214 - t101;
t308 = t23 * qJD(1);
t42 = t111 * t211 + (-t172 + t170) * t214;
t306 = t42 * qJD(1);
t43 = t169 * t214 + (-t112 + t272) * t211;
t305 = t43 * qJD(1);
t44 = t145 * t141 - t144 * t366;
t304 = t44 * qJD(1);
t53 = -t111 * t214 - t205 * t324;
t303 = t53 * qJD(1);
t54 = -t112 * t214 - t193 * t311;
t302 = t54 * qJD(1);
t60 = t211 * t141 - t214 * t366;
t301 = t60 * qJD(1);
t61 = -t144 * t211 - t145 * t214;
t300 = t61 * qJD(1);
t94 = (t350 + t229) * t214;
t76 = t94 * qJD(1);
t78 = t96 * qJD(1);
t298 = t96 * qJD(3);
t79 = t97 * qJD(3);
t296 = t278 * t144;
t207 = t214 ^ 2;
t188 = t207 - t205;
t295 = qJD(1) * t144;
t294 = qJD(3) * t240;
t292 = qJD(3) * t210;
t291 = qJD(3) * t213;
t290 = qJD(4) * t210;
t289 = qJD(4) * t213;
t288 = qJD(4) * t214;
t287 = qJD(5) * t203;
t167 = t188 * t210;
t286 = t167 * qJD(1);
t168 = t213 * t207 - t311;
t285 = t168 * qJD(1);
t284 = t188 * qJD(1);
t282 = t211 * qJD(3);
t281 = t211 * qJD(4);
t280 = t214 * qJD(1);
t279 = t214 * qJD(3);
t270 = t163 * t282;
t269 = t210 * t288;
t268 = t213 * t288;
t267 = t144 * t280;
t266 = t194 * t283;
t265 = t194 * t280;
t264 = t210 * t289;
t263 = t210 * t291;
t262 = t211 * t279;
t261 = t211 * t280;
t260 = t213 * t282;
t255 = pkin(4) * t278;
t254 = t278 * t240;
t253 = t278 * t214;
t252 = -qJD(4) + t280;
t250 = t210 * t260;
t249 = t347 / 0.2e1 + t93 / 0.2e1;
t247 = t280 - qJD(4) / 0.2e1;
t1 = (-t321 + t332) * t214 + t36 * t211 - t151 * t141 - t366 * t245;
t244 = t1 * qJD(1);
t52 = t141 ^ 2 - t144 ^ 2;
t16 = t52 * qJD(1) + t31 * qJD(3);
t73 = t163 ^ 2 - t240 ^ 2;
t20 = t31 * qJD(1) + t73 * qJD(3);
t239 = t252 * t211;
t238 = t345 / 0.2e1 - t348 / 0.2e1;
t224 = t238 * t210;
t117 = t169 / 0.2e1 - t224;
t232 = pkin(3) * t291 - t117 * qJD(1);
t223 = t238 * t213;
t118 = -t170 / 0.2e1 + t223;
t231 = pkin(3) * t292 - t118 * qJD(1);
t25 = t49 * qJD(3) - t141 * t295;
t32 = t49 * qJD(1) - t163 * t294;
t226 = t213 * t239;
t155 = (t204 / 0.2e1 - t206 / 0.2e1) * t211;
t225 = -t155 * qJD(1) + t263;
t222 = t210 * qJD(1) * t311 + t155 * qJD(3);
t166 = t187 * t205;
t221 = t166 * qJD(1) + 0.2e1 * t250;
t219 = t229 * t214;
t198 = -t283 / 0.2e1;
t197 = t283 / 0.2e1;
t196 = t282 / 0.2e1;
t191 = t210 * t282;
t162 = t247 * t211;
t152 = t155 * qJD(4);
t150 = t240 * t282;
t140 = (-qJD(5) / 0.2e1 + t247) * t211;
t99 = -t366 / 0.2e1 + t219;
t98 = t366 / 0.2e1 + t219;
t70 = t172 + t170 / 0.2e1 + t223;
t69 = t273 - t169 / 0.2e1 - t224;
t51 = t94 * qJD(3) - t267;
t50 = -t141 * t280 + t298;
t46 = -t254 - t76;
t45 = -t278 * t163 - t78;
t41 = -t298 + t362;
t38 = t95 * qJD(3);
t28 = t98 * qJD(3) + t267 - t296;
t27 = -t79 + (-qJD(5) + t252) * t141;
t24 = t99 * qJD(3) - t296;
t15 = t328 / 0.2e1 + t234 + t360;
t14 = t329 / 0.2e1 + t233 + t361;
t11 = t336 - t334 / 0.2e1 + t248 * t212;
t9 = -t333 - t337 / 0.2e1 + t248 * t209;
t6 = -t276 * t141 - t249 * t209 - t216 + t257 + t361;
t5 = t211 * t163 * t275 + t249 * t212 - t215 + t258 + t360;
t7 = [0, 0, 0, 0, t262, t188 * qJD(3), 0, 0, 0, t194 * t282, t194 * t279, -t205 * t264 + t206 * t262, -t166 * qJD(4) - 0.2e1 * t214 * t250, -t168 * qJD(3) + t211 * t269, t167 * qJD(3) + t211 * t268, -t262, -t42 * qJD(3) - t54 * qJD(4), t43 * qJD(3) + t53 * qJD(4), (-qJD(3) * t145 - t362) * t144, t44 * qJD(3) + t278 * t52, -t61 * qJD(3) + t141 * t253, -t60 * qJD(3) + t144 * t253, -t262, -t1 * qJD(3) - t18 * qJD(4) - t23 * qJD(5), t2 * qJD(3) + t19 * qJD(4) + t22 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, t261, t284, t279, -t282, 0, -t193 * t279 + t266, t193 * t282 + t265, -t152 + (t206 * t283 + t263) * t214, -0.2e1 * t211 * t264 + t355 * t214, t191 - t285, t260 + t286, -t162, -t306 + (t210 * t246 - t272) * qJD(3) + t70 * qJD(4), t305 + (t213 * t246 + t274) * qJD(3) + t69 * qJD(4), -(t294 + t295) * t145 + t343, t304 + (t145 * t163 - t240 * t366) * qJD(3) + t344, t150 - t300 - t342, t278 * t98 - t270 - t301, -t140, (t151 * t163 + t203 * t366 + t211 * t241) * qJD(3) + t5 * qJD(4) + t15 * qJD(5) - t244, t338 + (-t124 * t211 - t203 * t145 + t151 * t240) * qJD(3) + t6 * qJD(4) + t14 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t222, -t221, t210 * t239, t226, t196, t70 * qJD(3) - t112 * qJD(4) - t302, t69 * qJD(3) + t111 * qJD(4) + t303, t25, t16, t27, t28, t196, t5 * qJD(3) + t39 * qJD(4) + t9 * qJD(5) - t326, t6 * qJD(3) - t40 * qJD(4) + t11 * qJD(5) + t325; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t25, t16, t27, t28, t196, t15 * qJD(3) + t9 * qJD(4) - t37 * qJD(5) - t308, t14 * qJD(3) + t11 * qJD(4) + t36 * qJD(5) + t309; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, -t282, -t279, 0, 0, 0, 0, 0, -t260 - t269, t191 - t268, 0, 0, 0, 0, 0, t278 * t99 + t270, t150 - t341; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t210 * t279 - t213 * t281, t210 * t281 - t213 * t279, 0, 0, 0, 0, 0, t24, t41; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t24, t41; 0, 0, 0, 0, -t261, -t284, 0, 0, 0, -t266, -t265, -t206 * t261 - t152, 0.2e1 * t210 * t226, -t268 + t285, t269 - t286, t162, t118 * qJD(4) + t306, t117 * qJD(4) - t305, t145 * t295 + t343, -t304 + t344, t300 - t341, -t278 * t94 + t301, t140, -t4 * qJD(4) - t12 * qJD(5) + t244, -t3 * qJD(4) - t13 * qJD(5) - t338; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t278 * t95, -t342; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t264, t187 * qJD(4), 0, 0, 0, -pkin(3) * t290, -pkin(3) * t289, -t163 * t254, t278 * t73, 0, 0, 0, t91 * qJD(4) + t240 * t287, t92 * qJD(4) - t163 * t287; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t225, t355, -t252 * t213, t252 * t210, t198, -pkin(7) * t289 - t231, pkin(7) * t290 - t232, t32, t20, t45, t46, t198, -t357 - t365, -t356 - t364; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t32, t20, t45, t46, t198, -t358 - t365, -t359 - t364; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t222, t221, (-t210 * t283 + t291) * t214, (-t271 - t292) * t214, t196, -t118 * qJD(3) + t302, -t117 * qJD(3) - t303, -t25, -t16, t50, t51, t196, t4 * qJD(3) + t8 * qJD(5) + t326, t3 * qJD(3) + t10 * qJD(5) - t325; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t38, t79; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t225, -t355, t213 * t280, -t210 * t280, t197, t231, t232, -t32, -t20, t78, t76, t197, t357, t356; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t209 * t339, -t212 * t339; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t209 * t255 + t331, -t212 * t255 + t330; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t25, -t16, t50, t51, t196, t12 * qJD(3) - t8 * qJD(4) + t308, t13 * qJD(3) - t10 * qJD(4) - t309; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t38, t79; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t32, -t20, t78, t76, t197, t358, t359; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t209 * t340 - t331, t212 * t340 - t330; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t7;