% Calculate inertial parameters regressor of coriolis matrix for
% S5PRRRP6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d3,d4,theta1]';
% 
% Output:
% cmat_reg [(5*5)x(5*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 16:53
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5PRRRP6_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRRP6_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRRP6_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRRRP6_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 16:52:25
% EndTime: 2019-12-05 16:52:30
% DurationCPUTime: 2.98s
% Computational Cost: add. (2792->259), mult. (6699->330), div. (0->0), fcn. (6890->6), ass. (0->216)
t212 = cos(qJ(2));
t208 = sin(qJ(4));
t209 = sin(qJ(3));
t211 = cos(qJ(3));
t336 = cos(qJ(4));
t259 = t336 * t211;
t222 = -t208 * t209 + t259;
t360 = t222 * t212;
t251 = -t360 / 0.2e1;
t204 = qJD(3) + qJD(4);
t260 = t336 * t209;
t305 = t208 * t211;
t181 = t260 + t305;
t178 = t181 ^ 2;
t78 = t222 ^ 2 - t178;
t361 = t204 * t78;
t353 = t204 * t181;
t359 = t222 * t353;
t358 = t78 * qJD(2);
t343 = -pkin(7) - pkin(6);
t233 = t343 * t259;
t263 = t208 * t343;
t244 = t209 * t263;
t145 = -t233 + t244;
t241 = t343 * t336;
t184 = t211 * t241;
t224 = -t233 / 0.2e1;
t80 = -t184 / 0.2e1 + t224 + t244;
t357 = -t80 * qJD(3) - t145 * qJD(4);
t183 = t209 * t241;
t243 = t211 * t263;
t144 = t183 + t243;
t210 = sin(qJ(2));
t165 = t222 * t210;
t142 = -t184 + t244;
t163 = t181 * t210;
t316 = t163 * t142;
t315 = t163 * t145;
t62 = -t315 / 0.2e1;
t245 = t343 * t305;
t143 = -t183 - t245;
t312 = t165 * t143;
t68 = t312 / 0.2e1;
t356 = t62 + t165 * t144 / 0.2e1 + t316 / 0.2e1 + t68;
t355 = t204 * t163;
t354 = t204 * t165;
t201 = -t211 * pkin(3) - pkin(2);
t282 = qJD(2) * t201;
t252 = t360 / 0.2e1;
t303 = t212 * t209;
t248 = t303 / 0.2e1;
t337 = -t212 / 0.2e1;
t286 = t208 * t248 + t259 * t337;
t97 = t252 + t286;
t289 = t97 * qJD(1);
t352 = -t222 * t282 + t289;
t332 = t209 * pkin(3);
t93 = t181 * t332 + t201 * t222;
t351 = -t93 * qJD(2) + t289;
t270 = t336 / 0.2e1;
t240 = t212 * t270;
t249 = -t303 / 0.2e1;
t285 = t208 * t249 + t211 * t240;
t96 = t251 + t285;
t290 = t96 * qJD(1);
t122 = t181 * pkin(4) - qJ(5) * t222;
t310 = t181 * qJ(5);
t334 = t222 * pkin(4);
t237 = -t310 - t334;
t104 = t201 + t237;
t321 = t104 * t222;
t41 = -t122 * t181 - t321;
t350 = -t41 * qJD(2) + t290;
t107 = t122 + t332;
t38 = -t107 * t181 - t321;
t349 = -t38 * qJD(2) + t290;
t215 = (t142 - t145) * t181 - (-t143 - t144) * t222;
t348 = t215 * qJD(2);
t347 = t215 * qJD(3);
t164 = t212 * t181;
t198 = t210 * t212;
t225 = t163 * t164 + t165 * t360 - t198;
t346 = t225 * qJD(1);
t345 = t225 * qJD(2);
t344 = pkin(4) / 0.2e1;
t342 = -t144 / 0.2e1;
t250 = -t164 / 0.2e1;
t341 = t164 / 0.2e1;
t333 = t208 * pkin(3);
t197 = qJ(5) + t333;
t340 = -t197 / 0.2e1;
t267 = t336 * pkin(3);
t200 = -t267 - pkin(4);
t339 = t200 / 0.2e1;
t338 = t208 / 0.2e1;
t335 = t165 * pkin(4);
t329 = pkin(3) * qJD(4);
t328 = qJD(3) * pkin(3);
t137 = t184 / 0.2e1 + t224;
t125 = t137 * qJD(3);
t217 = -t305 / 0.2e1 - t260 / 0.2e1;
t95 = (t181 / 0.2e1 + t217) * t212;
t291 = t95 * qJD(1);
t327 = t125 + t291;
t326 = t165 * qJD(5);
t324 = -t137 * qJD(4) + t291;
t253 = t315 / 0.2e1;
t242 = t62 + t253;
t10 = -t312 / 0.2e1 + t68 + t242;
t323 = t10 * qJD(1);
t322 = t10 * qJD(2);
t320 = t104 * t181;
t317 = t163 * qJ(5);
t314 = t163 * t197;
t313 = t163 * t208;
t311 = t165 * t200;
t309 = t181 * t208;
t308 = t197 * t181;
t307 = t200 * t222;
t220 = t267 / 0.2e1 + t339 + t344;
t226 = t340 + t333 / 0.2e1 + qJ(5) / 0.2e1;
t35 = t226 * t181 + t220 * t222;
t302 = t35 * qJD(2);
t37 = -t107 * t222 + t320;
t301 = t37 * qJD(2);
t40 = -t122 * t222 + t320;
t299 = t40 * qJD(2);
t92 = t201 * t181 - t222 * t332;
t293 = t92 * qJD(2);
t284 = t212 * t305 / 0.2e1 + t209 * t240;
t283 = qJD(2) * t181;
t281 = qJD(2) * t211;
t280 = qJD(4) * t201;
t279 = t137 * qJD(2);
t206 = t209 ^ 2;
t207 = t211 ^ 2;
t246 = (t206 + t207) * t212;
t146 = t210 * t246 - t198;
t278 = t146 * qJD(1);
t277 = t178 * qJD(2);
t173 = t222 * qJD(5);
t195 = t207 - t206;
t276 = t195 * qJD(2);
t275 = t209 * qJD(3);
t274 = t210 * qJD(2);
t273 = t211 * qJD(3);
t272 = t212 * qJD(2);
t203 = qJD(4) * t267;
t271 = t203 + qJD(5);
t269 = -t142 * qJD(3) - t80 * qJD(4) - t291;
t268 = -t291 + t357;
t266 = pkin(2) * t209 * qJD(2);
t265 = pkin(2) * t281;
t264 = t208 * t329;
t262 = t336 * t165;
t261 = t336 * t222;
t258 = t181 * t274;
t257 = t222 * t283;
t255 = t181 * t282;
t254 = t209 * t273;
t247 = t164 * t143 + t145 * t360;
t232 = t143 * t142 + t145 * t144;
t11 = t104 * t107 + t232;
t214 = t107 * t337 + t356;
t223 = t200 * t250 + t340 * t360;
t2 = t214 + t223;
t236 = t2 * qJD(1) + t11 * qJD(2);
t12 = t104 * t122;
t219 = t122 * t337 + t242;
t227 = pkin(4) * t341 + qJ(5) * t251;
t4 = t219 + t227;
t235 = t4 * qJD(1) + t12 * qJD(2);
t33 = t201 * t332 + t232;
t218 = t336 * t250 + t338 * t360;
t5 = t253 - t316 / 0.2e1 + (t342 - t143 / 0.2e1) * t165 + (t248 + t218) * pkin(3);
t234 = -t5 * qJD(1) + t33 * qJD(2);
t231 = (t164 * t181 + t222 * t360) * qJD(2);
t79 = -t183 - t243 / 0.2e1 - t245 / 0.2e1;
t230 = -t79 * qJD(3) - t143 * qJD(4);
t229 = t144 * qJD(3) - t79 * qJD(4);
t228 = qJ(5) * t342 + t142 * t344;
t94 = t250 + t284;
t221 = t94 * qJD(1) + t104 * t283;
t154 = (t336 * t197 + t200 * t208) * pkin(3);
t18 = t226 * t163 + t220 * t165;
t213 = (t143 * t338 + t145 * t270) * pkin(3) + t143 * t340 + t145 * t339;
t8 = t213 + t228;
t216 = t18 * qJD(1) + t8 * qJD(2) + t154 * qJD(3);
t205 = qJ(5) * qJD(5);
t202 = qJD(3) * t267;
t196 = t209 * t281;
t194 = t204 * qJ(5);
t193 = t197 * qJD(5);
t119 = t204 * t222;
t103 = t208 * t328 + t279;
t101 = t341 + t284;
t100 = t217 * t212 + t250;
t99 = t251 + t286;
t98 = t252 + t285;
t86 = t97 * qJD(2);
t84 = t96 * qJD(2);
t82 = t95 * qJD(2);
t76 = -t204 * t333 - t279;
t47 = t204 * t95;
t46 = t100 * qJD(2) - t354;
t45 = t99 * qJD(2) + t355;
t44 = t98 * qJD(2) - t355;
t39 = t204 * t100 - t222 * t274;
t34 = -t308 / 0.2e1 + t307 / 0.2e1 - t310 / 0.2e1 - t334 / 0.2e1 + (t261 / 0.2e1 + t309 / 0.2e1) * pkin(3);
t17 = -t314 / 0.2e1 + t311 / 0.2e1 - t317 / 0.2e1 - t335 / 0.2e1 + (t262 / 0.2e1 + t313 / 0.2e1) * pkin(3);
t9 = t10 * qJD(4);
t7 = t213 - t228;
t6 = (t218 + t249) * pkin(3) + t356;
t3 = t219 - t227;
t1 = t214 - t223;
t13 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t146 * qJD(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t345, 0, 0, 0, 0, 0, 0, 0, 0, 0, t345; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t274, -t272, 0, 0, 0, 0, 0, 0, 0, 0, -t211 * t274 - t212 * t275, t209 * t274 - t212 * t273, qJD(2) * t246, t278 + (-t210 * pkin(2) + pkin(6) * t246) * qJD(2), 0, 0, 0, 0, 0, 0, t39, t204 * t99 + t258, t231, t346 + (t210 * t201 + t247) * qJD(2) + t6 * qJD(3) + t9, 0, 0, 0, 0, 0, 0, t39, t231, t204 * t98 - t258, t346 + (t210 * t104 + t247) * qJD(2) + t1 * qJD(3) + t3 * qJD(4) + t101 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t209 * t272 - t210 * t273, t210 * t275 - t211 * t272, 0, 0, 0, 0, 0, 0, 0, 0, t46, t45, 0, t6 * qJD(2) + (-t262 - t313) * t328, 0, 0, 0, 0, 0, 0, t46, 0, t44, t1 * qJD(2) + (t311 - t314) * qJD(3) + t17 * qJD(4) + t326; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t46, t45, 0, t322, 0, 0, 0, 0, 0, 0, t46, 0, t44, t3 * qJD(2) + t17 * qJD(3) + (-t317 - t335) * qJD(4) + t326; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t101 * qJD(2) + t354; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t278, 0, 0, 0, 0, 0, 0, -t47, -t204 * t97, 0, -t5 * qJD(3) - t346 + t9, 0, 0, 0, 0, 0, 0, -t47, 0, -t204 * t96, t2 * qJD(3) + t4 * qJD(4) - t94 * qJD(5) - t346; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t254, t195 * qJD(3), 0, -t254, 0, 0, -pkin(2) * t275, -pkin(2) * t273, 0, 0, t359, t361, 0, -t359, 0, 0, t92 * qJD(3) + t181 * t280, t93 * qJD(3) + t222 * t280, t347, t33 * qJD(3), t359, 0, -t361, 0, 0, -t359, t37 * qJD(3) + t40 * qJD(4) + t173 * t181, t347, t38 * qJD(3) + t41 * qJD(4) + t178 * qJD(5), t11 * qJD(3) + t12 * qJD(4) - qJD(5) * t320; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t196, t276, t273, -t196, -t275, 0, -pkin(6) * t273 - t266, pkin(6) * t275 - t265, 0, 0, t257, t358, t119, -t257, -t353, 0, t269 + t293, -t229 - t351, t348 + (-t261 - t309) * t328, (-t336 * t142 + t144 * t208) * t328 + t234, t257, t119, -t358, 0, t353, -t257, t269 + t301, t348 + (t307 - t308) * qJD(3) + t34 * qJD(4) + t173, t229 - t349, (t142 * t200 + t144 * t197) * qJD(3) + t7 * qJD(4) + t80 * qJD(5) + t236; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t257, t358, t119, -t257, -t353, 0, t255 + t268, -t230 - t352, 0, t323, t257, t119, -t358, 0, t353, -t257, t268 + t299, t34 * qJD(3) + qJD(4) * t237 + t173, t230 - t350, t7 * qJD(3) + (-t145 * pkin(4) - t143 * qJ(5)) * qJD(4) + t145 * qJD(5) + t235; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t257, t119, t277, -t221 - t357; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t82, t86, 0, t5 * qJD(2), 0, 0, 0, 0, 0, 0, t82, 0, t84, -t2 * qJD(2) + t18 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t196, -t276, 0, t196, 0, 0, t266, t265, 0, 0, -t257, -t358, 0, t257, 0, 0, -t293 + t324, t351, -t348, -t234, -t257, 0, t358, 0, 0, t257, -t301 + t324, t35 * qJD(4) - t348, t349, t8 * qJD(4) + t137 * qJD(5) - t236; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t264, -t203, 0, 0, 0, 0, 0, 0, 0, 0, -t264, 0, t271, t154 * qJD(4) + t193; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t76, -t202 - t203, 0, 0, 0, 0, 0, 0, 0, 0, t76, t302, t271 + t202, (-pkin(4) * t208 + t336 * qJ(5)) * t329 + t193 + t216; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t204, t197 * t204 + t279; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t82, t86, 0, -t322, 0, 0, 0, 0, 0, 0, t82, 0, t84, -t4 * qJD(2) - t18 * qJD(3); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t257, -t358, 0, t257, 0, 0, -t255 + t327, t352, 0, -t323, -t257, 0, t358, 0, 0, t257, -t299 + t327, -t35 * qJD(3), t350, -t8 * qJD(3) - t235; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t103, t202, 0, 0, 0, 0, 0, 0, 0, 0, t103, -t302, qJD(5) - t202, t205 - t216; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(5), t205; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t204, t194; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t94 * qJD(2); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t257, 0, -t277, t221 - t125; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t204, -qJ(5) * qJD(4) - t197 * qJD(3) - t279; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t204, -t194; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t13;
