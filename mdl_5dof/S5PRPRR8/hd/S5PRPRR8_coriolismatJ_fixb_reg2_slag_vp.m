% Calculate inertial parameters regressor of coriolis matrix for
% S5PRPRR8
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,d2,d4,d5,theta1]';
% 
% Output:
% cmat_reg [(5*5)x(5*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 16:05
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5PRPRR8_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRPRR8_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRPRR8_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PRPRR8_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 16:04:35
% EndTime: 2019-12-05 16:04:43
% DurationCPUTime: 2.96s
% Computational Cost: add. (2067->263), mult. (5245->415), div. (0->0), fcn. (5239->8), ass. (0->203)
t203 = sin(qJ(5));
t331 = 0.2e1 * t203;
t204 = sin(qJ(4));
t198 = t204 ^ 2;
t207 = cos(qJ(4));
t200 = t207 ^ 2;
t330 = t198 + t200;
t197 = t203 ^ 2;
t206 = cos(qJ(5));
t199 = t206 ^ 2;
t179 = t199 - t197;
t298 = t206 * t207;
t244 = t298 * t331;
t219 = qJD(2) * t244 - t179 * qJD(4);
t201 = sin(pkin(5));
t205 = sin(qJ(2));
t301 = t205 * t206;
t268 = t201 * t301;
t202 = cos(pkin(5));
t208 = cos(qJ(2));
t306 = t201 * t208;
t146 = t202 * t207 - t204 * t306;
t309 = t146 * t203;
t91 = -t268 + t309;
t329 = t91 / 0.2e1;
t328 = t198 / 0.2e1;
t327 = -t199 / 0.2e1;
t326 = -t203 / 0.2e1;
t325 = t203 / 0.2e1;
t324 = -t204 / 0.2e1;
t323 = t206 / 0.2e1;
t322 = -t207 / 0.2e1;
t145 = t202 * t204 + t207 * t306;
t307 = t201 * t205;
t269 = t203 * t307;
t225 = t146 * t206 + t269;
t216 = t225 * t206;
t251 = t146 * t322;
t316 = t91 * t203;
t6 = t251 + (t216 / 0.2e1 + t316 / 0.2e1) * t207 + (t327 - t197 / 0.2e1 + 0.1e1 / 0.2e1) * t204 * t145;
t321 = t6 * qJD(4);
t320 = t204 * pkin(4);
t319 = t204 * pkin(8);
t318 = t207 * pkin(4);
t209 = -pkin(2) - pkin(7);
t295 = t207 * t209;
t264 = t203 * t295;
t167 = t318 + t319;
t300 = t206 * t167;
t128 = -t264 + t300;
t263 = t206 * t295;
t305 = t203 * t167;
t129 = t263 + t305;
t240 = -t207 * pkin(8) + t320;
t229 = qJ(3) + t240;
t297 = t206 * t209;
t265 = t204 * t297;
t127 = t203 * t229 + t265;
t311 = t127 * t207;
t302 = t204 * t209;
t126 = t203 * t302 - t206 * t229;
t313 = t126 * t207;
t12 = -t204 * t295 + (t129 * t204 / 0.2e1 + t311 / 0.2e1) * t206 + (t128 * t324 + t313 / 0.2e1) * t203;
t317 = t12 * qJD(4);
t293 = t208 * t206;
t303 = t204 * t205;
t130 = (-t203 * t303 + t293) * t201;
t294 = t208 * t203;
t131 = (t204 * t301 + t294) * t201;
t267 = t207 * t307;
t10 = -t91 * t130 + t131 * t225 - t145 * t267;
t315 = t10 * qJD(1);
t314 = t126 * t206;
t312 = t127 * t204;
t62 = t145 * t203;
t64 = t145 * t206;
t310 = t145 * t207;
t308 = t146 * t204;
t192 = t200 * t206;
t304 = t203 * t209;
t299 = t206 * t198;
t296 = t207 * t204;
t37 = t311 + (t129 - 0.2e1 * t263) * t204;
t292 = t37 * qJD(2);
t40 = (t306 + t308 - t310) * t307;
t289 = t40 * qJD(1);
t288 = t197 + t199;
t178 = t198 - t200;
t287 = qJD(2) * t201;
t286 = qJD(3) * t204;
t285 = qJD(4) * t206;
t284 = qJD(5) * t203;
t283 = qJD(5) * t206;
t246 = t328 + t200 / 0.2e1;
t139 = (-0.1e1 / 0.2e1 - t246) * t203;
t282 = t139 * qJD(2);
t140 = t192 / 0.2e1 + (0.1e1 / 0.2e1 + t328) * t206;
t281 = t140 * qJD(2);
t280 = t146 * qJD(4);
t147 = (t197 / 0.2e1 + t327) * t207;
t279 = t147 * qJD(5);
t157 = t288 * t207;
t278 = t157 * qJD(2);
t158 = t178 * t203;
t277 = t158 * qJD(2);
t159 = -t192 + t299;
t276 = t159 * qJD(2);
t275 = t178 * qJD(2);
t274 = t204 * qJD(2);
t273 = t204 * qJD(4);
t272 = t207 * qJD(2);
t271 = t207 * qJD(4);
t270 = t207 * qJD(5);
t266 = t209 * t307;
t262 = qJ(3) * t274;
t261 = qJ(3) * t272;
t260 = t204 * t284;
t259 = t203 * t270;
t258 = t204 * t283;
t257 = t206 * t270;
t176 = t205 * t287;
t256 = t208 * t287;
t255 = t203 * t271;
t254 = t203 * t283;
t253 = t203 * t285;
t252 = t206 * t271;
t190 = t204 * t271;
t189 = t204 * t272;
t250 = t307 / 0.2e1;
t249 = t207 * t325;
t248 = -t303 / 0.2e1;
t247 = t298 / 0.2e1;
t245 = t288 * t145;
t102 = (-0.1e1 / 0.2e1 + t246) * t307;
t195 = qJD(2) * qJ(3);
t243 = t102 * qJD(1) - t195;
t242 = t200 * t254;
t241 = t207 * t250;
t238 = qJD(4) * t244;
t9 = (t146 - t216 - t316) * t145;
t237 = t9 * qJD(1) + t6 * qJD(3);
t50 = t127 * t203 - t314;
t224 = t130 * t326 + t131 * t323;
t211 = t200 * t250 + t204 * t224;
t212 = t225 * t325 - t91 * t206 / 0.2e1;
t7 = t211 - t212;
t236 = -t7 * qJD(1) + t50 * qJD(2);
t210 = t212 * t204;
t14 = t210 - t224;
t20 = t204 * t314 - t203 * t312 + (t128 * t206 + t129 * t203) * t207;
t235 = t14 * qJD(1) - t20 * qJD(2);
t17 = (t206 * t250 + t329 - t309 / 0.2e1) * t207;
t36 = -t313 + (t128 + 0.2e1 * t264) * t204;
t234 = -t17 * qJD(1) + t36 * qJD(2);
t23 = (t306 / 0.2e1 + t308 / 0.2e1 - t310 / 0.2e1) * t206;
t75 = -t200 * t297 - t312;
t233 = t23 * qJD(1) - t75 * qJD(2);
t214 = (t206 * t248 - t294 / 0.2e1) * t201;
t222 = t145 * t249 + t324 * t91;
t24 = t214 + t222;
t74 = -t126 * t204 - t200 * t304;
t232 = t24 * qJD(1) + t74 * qJD(2);
t231 = -t128 * t203 + t129 * t206;
t230 = (-qJD(5) - t274) * t207;
t228 = t319 / 0.2e1 + t318 / 0.2e1;
t221 = t167 / 0.2e1 + t228;
t90 = t221 * t206;
t227 = pkin(4) * t203 * qJD(4) + t90 * qJD(2);
t89 = t221 * t203;
t226 = pkin(4) * t285 - t89 * qJD(2);
t223 = t206 * t230;
t111 = -t147 * qJD(2) + t253;
t104 = qJD(2) * t192 * t203 + t147 * qJD(4);
t156 = t179 * t200;
t220 = t156 * qJD(2) + t238;
t218 = t224 * pkin(8);
t213 = -t225 * t129 / 0.2e1 + t128 * t329;
t1 = (pkin(4) * t250 + t146 * t209 / 0.2e1) * t207 + t218 + (t127 * t323 + t126 * t325 - t302 / 0.2e1) * t145 + t213;
t21 = -t209 ^ 2 * t296 - t126 * t128 + t127 * t129;
t217 = -t1 * qJD(1) + t21 * qJD(2) + t12 * qJD(3);
t112 = (-0.1e1 + t288) * t296;
t215 = t6 * qJD(1) + t12 * qJD(2) + t112 * qJD(3);
t196 = qJ(3) * qJD(3);
t191 = t271 / 0.2e1;
t188 = t206 * t274;
t187 = t203 * t273;
t186 = t203 * t274;
t177 = qJ(3) * t306;
t161 = t200 * t266;
t151 = t189 + t270 / 0.2e1;
t142 = -t299 / 0.2e1 - t192 / 0.2e1 + t323;
t141 = t330 * t325 + t326;
t103 = t246 * t307 + t250;
t67 = -t264 + t300 / 0.2e1 - t228 * t206;
t66 = -t263 - t305 / 0.2e1 + t228 * t203;
t26 = t225 * t324 + t145 * t247 + (t203 * t248 + t293 / 0.2e1) * t201;
t25 = t214 - t222;
t19 = t146 * t247 + t225 * t322 + t267 * t326;
t18 = t146 * t249 + t206 * t241 + t322 * t91;
t13 = t210 + t224;
t8 = t211 + t212;
t2 = -t127 * t64 / 0.2e1 - t126 * t62 / 0.2e1 + t209 * t251 + t145 * t302 / 0.2e1 + pkin(4) * t241 + t218 - t213;
t3 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t40 * qJD(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t10 * qJD(2) + t9 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t176, -t256, 0, 0, 0, 0, 0, 0, 0, 0, 0, t176, t256, (-pkin(2) * t307 + t177) * qJD(2) + qJD(3) * t307, 0, 0, 0, 0, 0, 0, (t205 * t271 + t208 * t274) * t201, (-t205 * t273 + t208 * t272) * t201, -t330 * t176, t289 + (t198 * t266 + t161 + t177) * qJD(2) + t103 * qJD(3), 0, 0, 0, 0, 0, 0, (t130 * t204 - t200 * t269) * qJD(2) + t18 * qJD(4) + t26 * qJD(5), (-t131 * t204 - t200 * t268) * qJD(2) + t19 * qJD(4) + t25 * qJD(5), t13 * qJD(4) + (-t130 * t206 - t131 * t203) * t272, t315 + (-t130 * t126 + t131 * t127 + t161) * qJD(2) + t8 * qJD(3) + t2 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t176, 0, 0, 0, 0, 0, 0, 0, 0, 0, t103 * qJD(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t8 * qJD(2) + t321; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t176 * t207 - t280, t145 * qJD(4) - t176 * t204, 0, 0, 0, 0, 0, 0, 0, 0, t18 * qJD(2) + t62 * qJD(5) - t206 * t280, t19 * qJD(2) + t64 * qJD(5) + t203 * t280, t13 * qJD(2) - qJD(4) * t245, t2 * qJD(2) + (-t146 * pkin(4) - pkin(8) * t245) * qJD(4) + t237; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t26 * qJD(2) + t62 * qJD(4) - qJD(5) * t225, t25 * qJD(2) + t64 * qJD(4) + t91 * qJD(5), 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t102 * qJD(3) - t289, 0, 0, 0, 0, 0, 0, -t17 * qJD(4) - t23 * qJD(5), -t24 * qJD(5), t14 * qJD(4), -t7 * qJD(3) - t1 * qJD(4) - t315; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3), t196, -t190, t178 * qJD(4), 0, t190, 0, 0, qJ(3) * t271 + t286, -qJ(3) * t273 + qJD(3) * t207, 0, t196, -t190 * t199 - t242, -t156 * qJD(5) + t204 * t238, -t159 * qJD(4) - t204 * t259, -t190 * t197 + t242, t158 * qJD(4) - t204 * t257, t190, t36 * qJD(4) + t75 * qJD(5) + t206 * t286, -t37 * qJD(4) - t74 * qJD(5) - t203 * t286, -t157 * qJD(3) - t20 * qJD(4), t50 * qJD(3) + t21 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2), t195, 0, 0, 0, 0, 0, 0, t274, t272, 0, -t243, 0, 0, 0, 0, 0, 0, t142 * qJD(5) + t188, t141 * qJD(5) - t186, -t278, t236 + t317; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t189, t275, -t273, t189, -t271, 0, -t209 * t273 + t261, -t209 * t271 - t262, 0, 0, -t279 + (-t199 * t272 - t253) * t204, t219 * t204 - 0.2e1 * t207 * t254, t255 - t276, t279 + (-t197 * t272 + t253) * t204, t252 + t277, t151, (t203 * t240 - t265) * qJD(4) + t67 * qJD(5) + t234, -t292 + (-pkin(8) * t298 + (pkin(4) * t206 + t304) * t204) * qJD(4) + t66 * qJD(5), qJD(4) * t231 + t235, (-pkin(4) * t302 + pkin(8) * t231) * qJD(4) + t217; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t104, -t220, t203 * t230, t104, t223, t191, t142 * qJD(3) + t67 * qJD(4) - t127 * qJD(5) - t233, t141 * qJD(3) + t66 * qJD(4) + t126 * qJD(5) - t232, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t102 * qJD(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t7 * qJD(2) + t321; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(2), -t195, 0, 0, 0, 0, 0, 0, -t274, -t272, 0, t243, 0, 0, 0, 0, 0, 0, -t140 * qJD(5) - t188, -t139 * qJD(5) + t186, t278, -t236 + t317; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t112 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t273, -t271, 0, 0, 0, 0, 0, 0, 0, 0, -t206 * t273 - t259, t187 - t257, t157 * qJD(4), (pkin(8) * t157 - t320) * qJD(4) + t215; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t255 - t258 - t281, -t252 + t260 - t282, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t17 * qJD(2), 0, -t14 * qJD(2), t1 * qJD(2) - t237; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t189, -t275, 0, -t189, 0, 0, -t261, t262, 0, 0, t189 * t199 - t279, t223 * t331, t258 + t276, t189 * t197 + t279, -t260 - t277, -t151, -t90 * qJD(5) - t234, t89 * qJD(5) + t292, -t235, -t217; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t215; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t254, t179 * qJD(5), 0, -t254, 0, 0, -pkin(4) * t284, -pkin(4) * t283, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t111, -t219, t188 + t283, -t111, -t186 - t284, -t272 / 0.2e1, -pkin(8) * t283 - t227, pkin(8) * t284 - t226, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t23 * qJD(2), t24 * qJD(2), 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t104, t220, (t203 * t272 - t285) * t204, -t104, t189 * t206 + t187, t191, t140 * qJD(3) + t90 * qJD(4) + t233, t139 * qJD(3) - t89 * qJD(4) + t232, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t281, t282, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t111, t219, -t188, t111, t186, t272 / 0.2e1, t227, t226, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t3;
