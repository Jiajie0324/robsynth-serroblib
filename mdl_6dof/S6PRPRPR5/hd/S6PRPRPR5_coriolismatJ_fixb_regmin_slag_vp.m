% Calculate minimal parameter regressor of coriolis matrix for
% S6PRPRPR5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d4,d6,theta1,theta3]';
% 
% Output:
% cmat_reg [(6*%NQJ)%x26]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 19:45
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6PRPRPR5_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPRPR5_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRPRPR5_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRPRPR5_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 19:45:06
% EndTime: 2019-03-08 19:45:14
% DurationCPUTime: 3.00s
% Computational Cost: add. (2399->282), mult. (5873->415), div. (0->0), fcn. (6772->10), ass. (0->232)
t183 = sin(qJ(6));
t180 = sin(pkin(11));
t317 = pkin(8) + qJ(3);
t166 = t317 * t180;
t182 = cos(pkin(11));
t167 = t317 * t182;
t184 = sin(qJ(4));
t319 = cos(qJ(4));
t110 = t319 * t166 + t167 * t184;
t251 = t319 * t180;
t287 = t184 * t182;
t154 = t251 + t287;
t208 = pkin(5) * t154 + t110;
t312 = t183 * t208;
t186 = cos(qJ(6));
t328 = t186 * t208;
t173 = t319 * t182;
t288 = t184 * t180;
t152 = -t173 + t288;
t323 = pkin(4) + pkin(9);
t327 = t323 * t152;
t265 = qJD(6) * t183;
t94 = t183 * t154;
t279 = t94 * qJD(2);
t326 = t279 + t265;
t148 = t152 ^ 2;
t324 = t154 ^ 2;
t325 = -t324 - t148;
t254 = t324 - t148;
t178 = t183 ^ 2;
t179 = t186 ^ 2;
t172 = t178 - t179;
t98 = t186 * t152;
t235 = 0.2e1 * t183 * t98;
t194 = qJD(2) * t235 - qJD(4) * t172;
t181 = sin(pkin(6));
t187 = cos(qJ(2));
t290 = t181 * t187;
t162 = t288 * t290;
t231 = t319 * t290;
t218 = t182 * t231;
t114 = t218 - t162;
t322 = t114 / 0.2e1;
t321 = -t152 / 0.2e1;
t320 = -t154 / 0.2e1;
t318 = pkin(4) * t152;
t307 = qJ(5) * t152;
t81 = t323 * t154 + t307;
t316 = t183 * t81;
t185 = sin(qJ(2));
t291 = t181 * t185;
t308 = cos(pkin(6));
t135 = t308 * t180 + t182 * t291;
t193 = t180 * t291 - t308 * t182;
t85 = t135 * t184 + t319 * t193;
t315 = t183 * t85;
t314 = t186 * t81;
t59 = t186 * t290 - t315;
t313 = t59 * t154;
t311 = t85 * t154;
t111 = -t184 * t166 + t319 * t167;
t101 = t111 * qJD(4);
t195 = t287 / 0.2e1 + t251 / 0.2e1;
t71 = (t320 + t195) * t290;
t281 = t71 * qJD(1);
t310 = t101 - t281;
t143 = t154 * qJD(3);
t309 = t143 + t281;
t306 = qJ(5) * t154;
t239 = t290 / 0.2e1;
t225 = t154 * t239;
t212 = -t231 / 0.2e1;
t240 = -t290 / 0.2e1;
t275 = t180 * t212 + t240 * t287;
t72 = t225 + t275;
t305 = qJD(1) * t72;
t227 = t152 * t240;
t277 = t162 / 0.2e1 + t182 * t212;
t74 = t227 + t277;
t304 = qJD(1) * t74;
t222 = pkin(4) * t154 + t307;
t174 = -pkin(3) * t182 - pkin(2);
t209 = t174 - t306;
t93 = t209 + t318;
t27 = -t152 * t222 - t154 * t93;
t303 = qJD(2) * t27;
t46 = t325 * t183;
t302 = qJD(2) * t46;
t68 = t254 * t183;
t301 = qJD(2) * t68;
t69 = t254 * t186;
t300 = qJD(2) * t69;
t299 = qJD(4) * t85;
t86 = t319 * t135 - t184 * t193;
t298 = qJD(4) * t86;
t297 = qJD(4) * t98;
t296 = qJD(6) * t94;
t295 = t114 * t186;
t294 = t135 * t182;
t293 = t152 * t183;
t292 = t181 ^ 2 * t185;
t113 = t154 * t290;
t289 = t183 * t113;
t286 = t186 * t113;
t20 = -t85 * t113 - t86 * t114 + t187 * t292;
t285 = t20 * qJD(1);
t284 = t222 * qJD(2);
t191 = t193 * t180;
t45 = (-t292 + (t191 + t294) * t181) * t187;
t283 = t45 * qJD(1);
t70 = t325 * t186;
t282 = t70 * qJD(2);
t280 = t254 * qJD(2);
t278 = t98 * qJD(2);
t276 = -t162 / 0.2e1 + t218 / 0.2e1;
t168 = t180 ^ 2 + t182 ^ 2;
t274 = qJD(2) * t181;
t273 = qJD(2) * t183;
t272 = qJD(3) * t152;
t271 = qJD(4) * qJ(5);
t270 = qJD(4) * t110;
t269 = qJD(4) * t183;
t268 = qJD(5) * t154;
t267 = qJD(5) * t183;
t266 = qJD(5) * t186;
t264 = qJD(6) * t186;
t263 = qJD(6) * t323;
t262 = t325 * qJD(2);
t147 = t288 / 0.2e1 - t173 / 0.2e1;
t261 = t147 * qJD(2);
t260 = t324 * qJD(2);
t259 = t152 * qJD(2);
t141 = t152 * qJD(4);
t258 = t152 * qJD(5);
t257 = t154 * qJD(2);
t145 = t154 * qJD(4);
t256 = t168 * qJD(2);
t255 = t186 * qJD(4);
t253 = t93 * t257;
t252 = t86 * t321;
t250 = t324 * t273;
t249 = t183 * t141;
t248 = t183 * t255;
t247 = t154 * t265;
t246 = t154 * t264;
t108 = t152 * t257;
t107 = t152 * t145;
t245 = t185 * t274;
t244 = t183 * t259;
t243 = t183 * t264;
t133 = t186 * t257;
t242 = -t291 / 0.2e1;
t241 = t291 / 0.2e1;
t238 = t286 / 0.2e1;
t237 = t98 / 0.2e1;
t236 = t168 * t187;
t234 = qJD(6) * t147 + t108;
t233 = qJD(2) * t174 + qJD(3);
t232 = qJD(6) + t257;
t230 = t152 * t245;
t229 = t154 * t245;
t228 = t222 * t240;
t226 = t152 * t239;
t224 = qJD(4) * t235;
t206 = t113 * pkin(4) / 0.2e1 - t114 * qJ(5) / 0.2e1;
t1 = t228 + t206;
t9 = t93 * t222;
t221 = t1 * qJD(1) + t9 * qJD(2);
t60 = t209 + t327;
t26 = t186 * t60 + t312;
t4 = (t26 - t312) * t152 - t154 * t314;
t207 = (-t59 / 0.2e1 - t315 / 0.2e1) * t152;
t6 = -t295 / 0.2e1 + t207;
t220 = t6 * qJD(1) + t4 * qJD(2);
t18 = (t322 + t226) * t183;
t25 = t183 * t60 - t328;
t3 = -t154 * t316 + (t25 + t328) * t152;
t219 = -t18 * qJD(1) + t3 * qJD(2);
t217 = t306 - t327;
t83 = -t152 * pkin(5) + t111;
t10 = t154 * t25 + t83 * t98;
t205 = t183 * t290 + t186 * t85;
t190 = t205 * t320 + t86 * t237;
t198 = -t289 / 0.2e1 + t186 * t242;
t14 = -t190 + t198;
t216 = -qJD(1) * t14 + qJD(2) * t10;
t11 = -t154 * t26 + t83 * t293;
t204 = t242 + t252;
t13 = t238 - t313 / 0.2e1 + t204 * t183;
t215 = -qJD(1) * t13 + qJD(2) * t11;
t23 = -t311 / 0.2e1 - t204;
t32 = t110 * t154 - t111 * t152;
t214 = -qJD(1) * t23 + qJD(2) * t32;
t28 = t152 * t93 - t154 * t222;
t73 = t226 + t276;
t213 = qJD(1) * t73 - qJD(2) * t28;
t163 = t168 * qJ(3);
t189 = t294 / 0.2e1 + t191 / 0.2e1;
t63 = t241 - t189;
t211 = qJD(1) * t63 - qJD(2) * t163;
t210 = t232 * t183;
t203 = -t323 * t320 + t307 / 0.2e1;
t192 = t81 / 0.2e1 + t203;
t31 = t192 * t186;
t202 = qJ(5) * t269 - t31 * qJD(2);
t30 = t192 * t183;
t201 = -qJ(5) * t255 - t30 * qJD(2);
t96 = (t179 / 0.2e1 - t178 / 0.2e1) * t152;
t200 = -qJD(2) * t96 + t248;
t199 = t152 * t210;
t197 = t148 * t186 * t273 + qJD(4) * t96;
t99 = t172 * t148;
t196 = qJD(2) * t99 + t224;
t134 = t147 * qJD(4);
t115 = -t133 - t264;
t91 = t96 * qJD(6);
t78 = t195 * t290 + t225;
t77 = t154 * t240 + t275;
t76 = t226 + t277;
t75 = t227 + t276;
t65 = t71 * qJD(2);
t64 = t241 + t189;
t29 = qJD(2) * t78 + t298;
t24 = t252 + t311 / 0.2e1 + t241;
t22 = -t83 * t183 - t314 / 0.2e1 + t203 * t186;
t21 = t83 * t186 - t316 / 0.2e1 + t203 * t183;
t19 = t183 * t322 + t205 * t321 + t85 * t237;
t16 = t313 / 0.2e1 + t86 * t293 / 0.2e1 + t183 * t242 + t238;
t15 = t190 + t198;
t5 = t295 / 0.2e1 + t207;
t2 = t228 - t206;
t7 = [0, 0, 0, 0, 0, 0, 0, t45 * qJD(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(2) * t20, 0, 0, 0, 0, 0, 0, 0; 0, 0, -t245, -t187 * t274, -t182 * t245, t180 * t245, t236 * t274, t283 + t64 * qJD(3) + (-pkin(2) * t185 + qJ(3) * t236) * t274, 0, 0, 0, 0, 0, qJD(4) * t77 + t230, qJD(4) * t76 + t229 (t113 * t154 - t114 * t152) * qJD(2), qJD(4) * t78 - t230, qJD(4) * t75 - t229, -t285 + (t110 * t113 + t111 * t114 + t93 * t291) * qJD(2) + t24 * qJD(3) + t2 * qJD(4) + t78 * qJD(5), 0, 0, 0, 0, 0 ((-t183 * t291 + t286) * t154 - t114 * t98) * qJD(2) + t19 * qJD(4) + t16 * qJD(6) (-(t186 * t291 + t289) * t154 + t114 * t293) * qJD(2) + t5 * qJD(4) + t15 * qJD(6); 0, 0, 0, 0, 0, 0, 0, t64 * qJD(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t24 * qJD(2), 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t77 - t298, qJD(2) * t76 + t299, 0, t29, qJD(2) * t75 - t299, t2 * qJD(2) + (-pkin(4) * t86 - qJ(5) * t85) * qJD(4) + t86 * qJD(5), 0, 0, 0, 0, 0, qJD(2) * t19 + t264 * t86 - t269 * t85, qJD(2) * t5 - t255 * t85 - t265 * t86; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t29, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t16 + qJD(6) * t59 + t255 * t86, t15 * qJD(2) - qJD(6) * t205 - t269 * t86; 0, 0, 0, 0, 0, 0, 0, -qJD(3) * t63 - t283, 0, 0, 0, 0, 0, -t72 * qJD(4), -t74 * qJD(4), 0, -t71 * qJD(4), -t73 * qJD(4), -qJD(3) * t23 + qJD(4) * t1 - qJD(5) * t71 + t285, 0, 0, 0, 0, 0, -qJD(4) * t18 - qJD(6) * t13, qJD(4) * t6 - qJD(6) * t14; 0, 0, 0, 0, 0, 0, t168 * qJD(3), t163 * qJD(3), -t107, -t254 * qJD(4), 0, 0, 0, t174 * t145, -t174 * t141, -qJD(3) * t325, qJD(4) * t27 + t154 * t258, qJD(4) * t28 + qJD(5) * t324, qJD(3) * t32 + qJD(4) * t9 - t268 * t93, t107 * t178 + t148 * t243, -qJD(6) * t99 + t154 * t224, qJD(4) * t68 + t152 * t246, qJD(4) * t69 - t152 * t247, -t107, -qJD(3) * t70 + qJD(4) * t3 + qJD(6) * t11 + t324 * t267, qJD(3) * t46 + qJD(4) * t4 + qJD(6) * t10 + t266 * t324; 0, 0, 0, 0, 0, 0, t256, -t211, 0, 0, 0, 0, 0, 0, 0, -t262, 0, 0, t214, 0, 0, 0, 0, 0, -t282, t302; 0, 0, 0, 0, 0, 0, 0, 0, -t108, -t280, -t141, -t145, 0, t174 * t257 - t101 - t305, -t174 * t259 + t270 - t304 (-t306 + t318) * qJD(4) - t258, t303 + t310, -t213 - t270 (-pkin(4) * t111 - qJ(5) * t110) * qJD(4) + t111 * qJD(5) + t221, t91 + (t178 * t259 + t248) * t154, -0.2e1 * t152 * t243 + t154 * t194, -t152 * t255 + t301, t249 + t300, -t234 (-t186 * t217 - t312) * qJD(4) - t98 * qJD(5) + t21 * qJD(6) + t219, -t208 * t255 + t22 * qJD(6) + (qJD(4) * t217 + t258) * t183 + t220; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t141, t108, t260, -t253 + t310, 0, 0, 0, 0, 0, t250 - t297, t186 * t260 + t249; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t197, -t196, t232 * t98, -t199, -t134, qJD(4) * t21 - qJD(6) * t26 + t215, qJD(4) * t22 + qJD(6) * t25 + t216; 0, 0, 0, 0, 0, 0, 0, t63 * qJD(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t23 * qJD(2), 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, -t256, t211, 0, 0, 0, 0, 0, t145, -t141, t262, -t145, t141, qJD(4) * t222 - t214 - t268, 0, 0, 0, 0, 0, -t246 + t249 + t282, t296 + t297 - t302; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t257, -t259, 0, -t257, t259, t284, 0, 0, 0, 0, 0, t244, t278; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t257, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t115, t326; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t72 * qJD(2), t74 * qJD(2), 0, t65, t73 * qJD(2), -qJD(2) * t1, 0, 0, 0, 0, 0, t18 * qJD(2), -t6 * qJD(2); 0, 0, 0, 0, 0, 0, 0, 0, t108, t280, 0, 0, 0, -t154 * t233 + t305, t152 * t233 + t304, 0, -t303 + t309, t213 - t272, -qJD(3) * t222 - t221, -t108 * t178 + t91, -0.2e1 * t186 * t199, -t247 - t301, -t246 - t300, t234, qJD(6) * t30 - t183 * t272 - t219, -qJD(3) * t98 + qJD(6) * t31 - t220; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t257, t259, 0, t257, -t259, -t284, 0, 0, 0, 0, 0, -t244, -t278; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(5), qJ(5) * qJD(5), -t243, t172 * qJD(6), 0, 0, 0, qJ(5) * t264 + t267, -qJ(5) * t265 + t266; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(4), t271, 0, 0, 0, 0, 0, t269, t255; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t200, -t194, -t210, t115, t261, t183 * t263 - t201, t186 * t263 - t202; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t65, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t108, -t260, t253 + t309, 0, 0, 0, 0, 0, -t250 - t296 (-qJD(6) * t154 - t260) * t186; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t257, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(4), -t271, 0, 0, 0, 0, 0, -t269, -t255; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t326, -t232 * t186; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t13 * qJD(2), t14 * qJD(2); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t197, t196 (-t186 * t259 + t269) * t154 (t244 + t255) * t154, -t134, -qJD(4) * t30 + qJD(5) * t94 + t143 * t186 - t215, -qJD(3) * t94 - qJD(4) * t31 + t154 * t266 - t216; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t133, -t279; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t200, t194, t183 * t257, t133, -t261, t201, t202; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t279, t133; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t7;