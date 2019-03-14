% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6RRRRRP10
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,d5]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-10 02:31
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RRRRRP10_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRP10_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRP10_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRRP10_inertiaDJ_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-10 02:27:27
% EndTime: 2019-03-10 02:27:58
% DurationCPUTime: 12.43s
% Computational Cost: add. (15216->650), mult. (40024->1085), div. (0->0), fcn. (38500->10), ass. (0->270)
t169 = sin(qJ(4));
t172 = cos(qJ(4));
t168 = sin(pkin(6));
t170 = sin(qJ(3));
t173 = cos(qJ(3));
t174 = cos(qJ(2));
t171 = sin(qJ(2));
t337 = cos(pkin(6));
t301 = pkin(1) * t337;
t266 = t171 * t301;
t212 = pkin(9) * t337 + t266;
t204 = t173 * t212;
t303 = -pkin(9) * t171 - pkin(1);
t186 = t204 + (t170 * t303 + (-pkin(2) * t170 + pkin(8) * t173 - pkin(10)) * t174) * t168;
t336 = t168 * t171;
t214 = pkin(8) * t336 - t174 * t301;
t111 = -pkin(2) * t337 + t214;
t117 = t170 * t336 - t173 * t337;
t217 = t170 * t337 + t173 * t336;
t189 = t117 * pkin(3) - pkin(10) * t217 + t111;
t37 = -t169 * t186 + t172 * t189;
t325 = qJD(2) * t171;
t288 = t168 * t325;
t335 = t168 * t174;
t309 = pkin(8) * t335;
t198 = t212 + t309;
t195 = qJD(3) * t198;
t258 = pkin(2) * t171 - pkin(9) * t174;
t326 = qJD(2) * t168;
t222 = t258 * t326;
t206 = t214 * qJD(2);
t235 = -pkin(2) * t174 + t303;
t224 = t235 * t168;
t358 = -qJD(3) * t224 + t206;
t41 = t358 * t173 + (t195 - t222) * t170;
t361 = -pkin(10) * t288 - qJD(4) * t189 + t41;
t276 = qJD(2) * t337;
t259 = t171 * t276;
t324 = qJD(2) * t174;
t287 = t168 * t324;
t297 = qJD(3) * t336;
t133 = t170 * t297;
t275 = t337 * qJD(3);
t350 = -t173 * (t275 + t287) + t133;
t209 = t217 * qJD(3);
t96 = t170 * t287 + t209;
t360 = -pkin(1) * t259 - t96 * pkin(3) - pkin(8) * t287 - pkin(10) * t350 + qJD(4) * t186;
t140 = t172 * t335;
t210 = qJD(4) * t217;
t192 = -qJD(4) * t140 - t172 * t350 + (-t210 + t288) * t169;
t190 = t192 * t169;
t319 = qJD(4) * t172;
t97 = -t169 * t335 + t172 * t217;
t359 = t97 * t319 + t190;
t322 = qJD(3) * t173;
t357 = t169 * t322 + t170 * t319;
t330 = t217 * t169 + t140;
t272 = t330 * qJD(4);
t320 = qJD(4) * t169;
t291 = t174 * t320;
t338 = t169 * t350 - t172 * t210;
t349 = -t168 * (t172 * t325 + t291) - t338;
t355 = t169 * t272 - t172 * t349;
t347 = cos(qJ(5));
t277 = t347 * qJD(5);
t354 = t347 * qJD(4) + t277;
t283 = t172 * t322;
t353 = -t170 * t320 + t283;
t352 = t117 * t320 - t172 * t96;
t161 = qJD(3) * t170;
t75 = t117 * t161 - t173 * t96;
t164 = t169 ^ 2;
t166 = t172 ^ 2;
t328 = t164 - t166;
t274 = qJD(4) * t328;
t351 = qJD(4) + qJD(5);
t345 = pkin(3) * t173;
t257 = -pkin(10) * t170 - t345;
t234 = -pkin(2) + t257;
t127 = t172 * t234;
t318 = qJD(4) * t173;
t292 = t169 * t318;
t323 = qJD(3) * t172;
t219 = t170 * t323 + t292;
t256 = pkin(3) * t170 - pkin(10) * t173;
t231 = t256 * t169;
t78 = pkin(9) * t219 - qJD(3) * t231 - qJD(4) * t127;
t332 = t172 * t173;
t151 = pkin(9) * t332;
t343 = t169 * pkin(9);
t302 = -pkin(4) - t343;
t342 = t172 * pkin(3);
t348 = -pkin(11) - pkin(10);
t182 = (-t151 + (-t170 * t348 + pkin(2) + t345) * t169) * qJD(4) + (t348 * t332 + (-t302 + t342) * t170) * qJD(3);
t191 = -pkin(11) * t357 - t78;
t346 = sin(qJ(5));
t333 = t170 * t172;
t90 = -pkin(11) * t333 + t173 * t302 + t127;
t108 = t169 * t234 + t151;
t334 = t169 * t170;
t98 = -pkin(11) * t334 + t108;
t341 = t346 * t90 + t347 * t98;
t27 = -qJD(5) * t341 + t347 * t182 - t191 * t346;
t167 = t173 ^ 2;
t175 = 2 * qJD(6);
t93 = t96 * pkin(5);
t344 = pkin(9) * t168;
t162 = t170 * pkin(9);
t32 = t117 * pkin(4) - t97 * pkin(11) + t37;
t38 = t169 * t189 + t172 * t186;
t34 = -pkin(11) * t330 + t38;
t16 = t346 * t32 + t347 * t34;
t331 = t173 * t174;
t131 = pkin(4) * t334 + t162;
t165 = t170 ^ 2;
t327 = t165 - t167;
t321 = qJD(3) * t174;
t317 = t111 * qJD(3);
t316 = t173 * qJD(6);
t253 = t346 * t330;
t22 = -qJD(5) * t253 + t192 * t346 + t277 * t97 + t347 * t349;
t254 = t347 * t330;
t63 = t346 * t97 + t254;
t315 = 0.2e1 * t63 * t22;
t314 = -0.2e1 * pkin(2) * qJD(3);
t313 = -0.2e1 * pkin(3) * qJD(4);
t129 = t169 * t347 + t172 * t346;
t115 = t129 * t170;
t280 = qJD(3) * t346;
t260 = t173 * t280;
t281 = qJD(3) * t347;
t261 = t173 * t281;
t299 = t346 * t169;
t265 = t170 * t299;
t66 = t169 * t261 + (t170 * t354 + t260) * t172 - t351 * t265;
t312 = 0.2e1 * t115 * t66;
t82 = 0.2e1 * t117 * t96;
t300 = t347 * t172;
t128 = t299 - t300;
t95 = t351 * t129;
t311 = 0.2e1 * t128 * t95;
t310 = t173 * t343;
t308 = t347 * pkin(4);
t307 = pkin(4) * t320;
t306 = pkin(5) * t161;
t160 = pkin(9) * t322;
t304 = -t170 * t358 + t173 * t195;
t105 = pkin(4) * t357 + t160;
t158 = -pkin(4) * t172 - pkin(3);
t163 = t168 ^ 2;
t298 = t163 * t324;
t295 = t170 * t321;
t289 = t172 * t318;
t285 = t169 * t319;
t284 = t170 * t322;
t138 = t348 * t172;
t267 = t348 * t346;
t100 = -t138 * t347 + t169 * t267;
t236 = qJD(4) * t267;
t268 = t348 * t347;
t237 = qJD(4) * t268;
t239 = t169 * t268;
t279 = qJD(5) * t346;
t68 = -qJD(5) * t239 - t138 * t279 - t169 * t237 - t172 * t236;
t69 = -t138 * t277 - t172 * t237 + (qJD(5) * t267 + t236) * t169;
t99 = -t138 * t346 - t239;
t282 = -t100 * t68 + t69 * t99;
t273 = t330 * qJD(3);
t271 = t327 * qJD(3);
t270 = 0.2e1 * t284;
t269 = pkin(4) * t279;
t264 = t170 * t283;
t263 = t165 * t285;
t262 = t171 * t298;
t21 = qJD(5) * t254 - t192 * t347 + t279 * t97 + t346 * t349;
t64 = t347 * t97 - t253;
t255 = t21 * t63 - t22 * t64;
t252 = t173 * t273;
t250 = t115 * t22 + t63 * t66;
t249 = t117 * t22 + t63 * t96;
t248 = -t117 * t69 - t96 * t99;
t247 = t128 * t22 + t63 * t95;
t246 = t100 * t96 - t117 * t68;
t116 = t170 * t300 - t265;
t65 = t169 * t260 + t170 * t95 - t172 * t261;
t245 = t115 * t65 - t116 * t66;
t244 = t115 * t95 + t128 * t66;
t243 = t117 * t95 + t128 * t96;
t94 = (qJD(4) * t346 + t279) * t169 - t354 * t172;
t242 = t128 * t94 - t129 * t95;
t17 = t169 * t360 + t172 * t361;
t18 = t169 * t361 - t172 * t360;
t241 = -t18 * t169 - t17 * t172;
t42 = t173 * t222 - t304;
t240 = -t42 * t170 - t41 * t173;
t107 = t127 - t310;
t238 = -t107 * t172 - t108 * t169;
t233 = -t161 * t99 + t173 * t69;
t40 = (-t171 * pkin(3) - t173 * t258) * t326 + t304;
t80 = -t170 * t198 + t173 * t224;
t74 = pkin(3) * t335 - t80;
t232 = t40 * t169 + t319 * t74;
t230 = t100 * t161 + t173 * t68;
t229 = t115 * t161 - t173 * t66;
t228 = t128 * t161 - t173 * t95;
t227 = t117 * t319 + t169 * t96;
t226 = -t100 * t22 - t21 * t99 + t68 * t63 + t64 * t69;
t225 = -t100 * t66 + t68 * t115 + t116 * t69 - t65 * t99;
t176 = t96 * pkin(4) - pkin(11) * t192 + t18;
t180 = -pkin(11) * t349 - t17;
t3 = -t346 * t176 - t347 * t180 - t32 * t277 + t279 * t34;
t15 = t32 * t347 - t34 * t346;
t60 = -t346 * t98 + t347 * t90;
t26 = -t346 * t182 - t347 * t191 - t90 * t277 + t279 * t98;
t221 = t170 * t325 - t173 * t321;
t123 = t266 + t309;
t155 = qJ(6) * t161;
t213 = t155 - t26;
t211 = -0.2e1 * t100 * t95 + 0.2e1 * t68 * t128 + 0.2e1 * t129 * t69 - 0.2e1 * t94 * t99;
t113 = t117 * qJD(6);
t92 = t96 * qJ(6);
t1 = t92 + t113 - t3;
t208 = t115 * t21 - t116 * t22 + t63 * t65 - t64 * t66;
t207 = t128 * t21 - t129 * t22 + t63 * t94 - t64 * t95;
t205 = t115 * t94 - t116 * t95 + t128 * t65 - t129 * t66;
t203 = t115 * t96 + t117 * t66 + t161 * t63 - t173 * t22;
t79 = -t108 * qJD(4) + (pkin(9) * t334 + t172 * t256) * qJD(3);
t197 = qJD(4) * t238 - t169 * t79 - t172 * t78;
t48 = pkin(4) * t330 + t74;
t193 = t169 * t349 + t172 * t272;
t184 = t172 * t192 - t320 * t97;
t28 = -t338 * pkin(4) + (-pkin(4) * t291 + (pkin(9) * t331 + (-pkin(2) * t173 + t158) * t171) * qJD(2)) * t168 + t304;
t181 = t173 * t269 + t27;
t178 = -t347 * t176 + t180 * t346 + t277 * t34 + t279 * t32;
t2 = -t93 + t178;
t177 = -t117 * t269 - t178;
t159 = pkin(4) * t277;
t157 = -t308 - pkin(5);
t154 = pkin(4) * t346 + qJ(6);
t152 = -0.2e1 * t269;
t146 = t159 + qJD(6);
t145 = -0.2e1 * t284;
t132 = -0.2e1 * t262;
t114 = qJD(2) * t123;
t101 = -t169 * t283 + t170 * t274;
t86 = pkin(5) * t128 - qJ(6) * t129 + t158;
t83 = -0.2e1 * t129 * t94;
t81 = t204 + (pkin(8) * t331 + t170 * t235) * t168;
t77 = pkin(5) * t115 - qJ(6) * t116 + t131;
t76 = t129 * t161 + t173 * t94;
t59 = t173 * pkin(5) - t60;
t58 = -qJ(6) * t173 + t341;
t50 = -0.2e1 * t116 * t65;
t47 = pkin(5) * t95 + qJ(6) * t94 - qJD(6) * t129 + t307;
t44 = 0.2e1 * t116 * t161 + 0.2e1 * t173 * t65;
t43 = -t117 * t94 + t129 * t96;
t36 = -t116 * t94 - t129 * t65;
t30 = pkin(5) * t66 + qJ(6) * t65 - qJD(6) * t116 + t105;
t25 = -t27 - t306;
t24 = t63 * pkin(5) - t64 * qJ(6) + t48;
t23 = t213 - t316;
t19 = -0.2e1 * t64 * t21;
t14 = -t129 * t21 - t64 * t94;
t13 = -t117 * pkin(5) - t15;
t12 = qJ(6) * t117 + t16;
t11 = -0.2e1 * t117 * t21 + 0.2e1 * t64 * t96;
t10 = -t116 * t21 - t64 * t65;
t6 = t116 * t96 - t117 * t65 + t161 * t64 + t173 * t21;
t5 = t22 * pkin(5) + t21 * qJ(6) - t64 * qJD(6) + t28;
t4 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t262, 0.2e1 * (-t171 ^ 2 + t174 ^ 2) * t163 * qJD(2), 0.2e1 * t276 * t335, t132, -0.2e1 * t168 * t259, 0, -0.2e1 * pkin(1) * t163 * t325 - 0.2e1 * t114 * t337, -0.2e1 * pkin(1) * t298 + 0.2e1 * t206 * t337, 0.2e1 * t114 * t336 - 0.2e1 * t123 * t288 - 0.2e1 * t206 * t335 + 0.2e1 * t214 * t287, 0.2e1 * t114 * t214 - 0.2e1 * t123 * t206, -0.2e1 * t217 * t350, 0.2e1 * t117 * t350 - 0.2e1 * t217 * t96, 0.2e1 * t217 * t288 + 0.2e1 * t335 * t350, t82, 0.2e1 * (-t117 * t325 + t174 * t96) * t168, t132, 0.2e1 * t111 * t96 + 0.2e1 * t114 * t117 + 0.2e1 * (-t174 * t42 + t325 * t80) * t168, -0.2e1 * t111 * t350 + 0.2e1 * t114 * t217 - 0.2e1 * t288 * t81 - 0.2e1 * t335 * t41, 0.2e1 * t41 * t117 - 0.2e1 * t217 * t42 + 0.2e1 * t350 * t80 - 0.2e1 * t81 * t96, 0.2e1 * t111 * t114 - 0.2e1 * t41 * t81 + 0.2e1 * t42 * t80, 0.2e1 * t97 * t192, -0.2e1 * t192 * t330 - 0.2e1 * t349 * t97, 0.2e1 * t117 * t192 + 0.2e1 * t97 * t96, 0.2e1 * t330 * t349, -0.2e1 * t117 * t349 - 0.2e1 * t330 * t96, t82, 0.2e1 * t18 * t117 + 0.2e1 * t330 * t40 + 0.2e1 * t349 * t74 + 0.2e1 * t37 * t96, 0.2e1 * t17 * t117 + 0.2e1 * t192 * t74 - 0.2e1 * t38 * t96 + 0.2e1 * t40 * t97, 0.2e1 * t17 * t330 - 0.2e1 * t18 * t97 - 0.2e1 * t192 * t37 - 0.2e1 * t349 * t38, -0.2e1 * t17 * t38 + 0.2e1 * t18 * t37 + 0.2e1 * t40 * t74, t19, 0.2e1 * t255, t11, t315, -0.2e1 * t249, t82, -0.2e1 * t117 * t178 + 0.2e1 * t15 * t96 + 0.2e1 * t22 * t48 + 0.2e1 * t28 * t63, 0.2e1 * t117 * t3 - 0.2e1 * t16 * t96 - 0.2e1 * t21 * t48 + 0.2e1 * t28 * t64, 0.2e1 * t15 * t21 - 0.2e1 * t16 * t22 + 0.2e1 * t178 * t64 + 0.2e1 * t3 * t63, -0.2e1 * t15 * t178 - 0.2e1 * t16 * t3 + 0.2e1 * t28 * t48, t19, t11, -0.2e1 * t255, t82, 0.2e1 * t249, t315, -0.2e1 * t117 * t2 - 0.2e1 * t13 * t96 + 0.2e1 * t22 * t24 + 0.2e1 * t5 * t63, -0.2e1 * t1 * t63 - 0.2e1 * t12 * t22 - 0.2e1 * t13 * t21 + 0.2e1 * t2 * t64, 0.2e1 * t1 * t117 + 0.2e1 * t12 * t96 + 0.2e1 * t21 * t24 - 0.2e1 * t5 * t64, 0.2e1 * t1 * t12 + 0.2e1 * t13 * t2 + 0.2e1 * t24 * t5; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t287, 0, -t288, 0, -t114, t206, 0, 0, t167 * t297 + (-t133 + (0.2e1 * t275 + t287) * t173) * t170, -t117 * t322 - t173 * t350 + (-t209 - t96) * t170, t221 * t168, t75 (t173 * t325 + t295) * t168, 0, -pkin(2) * t96 - t114 * t173 + t170 * t317 - t221 * t344, pkin(2) * t350 + t114 * t170 - t295 * t344 + (-pkin(9) * t288 + t317) * t173, pkin(9) * t75 + t160 * t217 - t161 * t81 - t162 * t350 - t322 * t80 + t240, -pkin(2) * t114 + ((-t81 * t170 - t80 * t173) * qJD(3) + t240) * pkin(9), t170 * t184 + t283 * t97, -t172 * t252 - t357 * t97 + (-t190 + t355) * t170, t117 * t353 + t161 * t97 - t173 * t192 + t333 * t96, t169 * t252 + t170 * t193 (-t169 * qJD(3) * t117 + t349) * t173 + (-t273 - t227) * t170, t75, t107 * t96 + t79 * t117 + (-t18 + (pkin(9) * t330 + t74 * t169) * qJD(3)) * t173 + (pkin(9) * t349 + t37 * qJD(3) + t232) * t170, -t108 * t96 + t78 * t117 + t160 * t97 - t161 * t38 + t192 * t162 - t17 * t173 + t333 * t40 + t353 * t74, -t107 * t192 - t108 * t349 + t17 * t334 - t18 * t333 + t330 * t78 - t353 * t37 - t357 * t38 - t79 * t97, t107 * t18 - t108 * t17 + t37 * t79 - t38 * t78 + (t40 * t170 + t322 * t74) * pkin(9), t10, t208, t6, t250, -t203, t75, t105 * t63 + t115 * t28 + t117 * t27 + t131 * t22 + t15 * t161 + t173 * t178 + t48 * t66 + t60 * t96, t105 * t64 + t116 * t28 + t117 * t26 - t131 * t21 - t16 * t161 - t173 * t3 - t341 * t96 - t48 * t65, t115 * t3 + t116 * t178 + t15 * t65 - t16 * t66 + t21 * t60 - t22 * t341 + t26 * t63 - t27 * t64, t105 * t48 + t131 * t28 + t15 * t27 - t16 * t26 - t178 * t60 - t3 * t341, t10, t6, -t208, t75, t203, t250, t115 * t5 - t117 * t25 - t13 * t161 + t173 * t2 + t22 * t77 + t24 * t66 + t30 * t63 - t59 * t96, -t1 * t115 + t116 * t2 - t12 * t66 - t13 * t65 - t21 * t59 - t22 * t58 - t23 * t63 + t25 * t64, -t1 * t173 - t116 * t5 + t117 * t23 + t12 * t161 + t21 * t77 + t24 * t65 - t30 * t64 + t58 * t96, t1 * t58 + t12 * t23 + t13 * t25 + t2 * t59 + t24 * t30 + t5 * t77; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t270, -0.2e1 * t271, 0, t145, 0, 0, t170 * t314, t173 * t314, 0, 0, 0.2e1 * t166 * t284 - 0.2e1 * t263, 0.2e1 * t165 * t274 - 0.4e1 * t169 * t264, 0.2e1 * t170 * t292 + 0.2e1 * t323 * t327, 0.2e1 * t164 * t284 + 0.2e1 * t263, -0.2e1 * t169 * t271 + 0.2e1 * t170 * t289, t145, 0.2e1 * t107 * t161 - 0.2e1 * t173 * t79 + 0.2e1 * (t165 * t319 + t169 * t270) * pkin(9), -0.2e1 * t108 * t161 - 0.2e1 * t173 * t78 + 0.2e1 * (-t165 * t320 + 0.2e1 * t264) * pkin(9), 0.2e1 * t238 * t322 + 0.2e1 * (t169 * t78 - t172 * t79 + (t107 * t169 - t108 * t172) * qJD(4)) * t170, 0.2e1 * pkin(9) ^ 2 * t284 + 0.2e1 * t107 * t79 - 0.2e1 * t108 * t78, t50, 0.2e1 * t245, t44, t312, -0.2e1 * t229, t145, 0.2e1 * t105 * t115 + 0.2e1 * t131 * t66 + 0.2e1 * t161 * t60 - 0.2e1 * t173 * t27, 0.2e1 * t105 * t116 - 0.2e1 * t131 * t65 - 0.2e1 * t161 * t341 - 0.2e1 * t173 * t26, 0.2e1 * t115 * t26 - 0.2e1 * t116 * t27 - 0.2e1 * t341 * t66 + 0.2e1 * t60 * t65, 0.2e1 * t105 * t131 - 0.2e1 * t26 * t341 + 0.2e1 * t27 * t60, t50, t44, -0.2e1 * t245, t145, 0.2e1 * t229, t312, 0.2e1 * t115 * t30 - 0.2e1 * t161 * t59 + 0.2e1 * t173 * t25 + 0.2e1 * t66 * t77, -0.2e1 * t115 * t23 + 0.2e1 * t116 * t25 - 0.2e1 * t58 * t66 - 0.2e1 * t59 * t65, -0.2e1 * t116 * t30 + 0.2e1 * t161 * t58 - 0.2e1 * t173 * t23 + 0.2e1 * t65 * t77, 0.2e1 * t23 * t58 + 0.2e1 * t25 * t59 + 0.2e1 * t30 * t77; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t350, 0, -t96, t288, t42, t41, 0, 0, t359, t184 - t193, t227, t355, -t352, 0, -pkin(3) * t349 - pkin(10) * t227 - t40 * t172 + t320 * t74, -pkin(3) * t192 + pkin(10) * t352 + t232, -t319 * t37 - t320 * t38 + t241 + (t355 + t359) * pkin(10), -pkin(3) * t40 + ((-t38 * t169 - t37 * t172) * qJD(4) + t241) * pkin(10), t14, t207, t43, t247, -t243, 0, t128 * t28 + t158 * t22 + t307 * t63 + t48 * t95 + t248, t129 * t28 - t158 * t21 + t307 * t64 - t48 * t94 - t246, t128 * t3 + t129 * t178 + t15 * t94 - t16 * t95 + t226, -t100 * t3 - t15 * t69 + t158 * t28 - t16 * t68 + t178 * t99 + t307 * t48, t14, t43, -t207, 0, t243, t247, t128 * t5 + t22 * t86 + t24 * t95 + t47 * t63 + t248, -t1 * t128 - t12 * t95 + t129 * t2 - t13 * t94 + t226, -t129 * t5 + t21 * t86 + t24 * t94 - t47 * t64 + t246, t1 * t100 - t12 * t68 + t13 * t69 + t2 * t99 + t24 * t47 + t5 * t86; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t322, 0, -t161, 0, -t160, pkin(9) * t161, 0, 0, -t101, -0.4e1 * t170 * t285 - t322 * t328, t161 * t169 - t289, t101, t219, 0 (pkin(10) * t332 + (-t342 + t343) * t170) * qJD(4) + (t169 * t257 - t151) * qJD(3) (pkin(9) * t333 + t231) * qJD(4) + (t172 * t257 + t310) * qJD(3), t197, -pkin(3) * t160 + pkin(10) * t197, t36, t205, t76, t244, -t228, 0, t105 * t128 + t115 * t307 + t131 * t95 + t158 * t66 + t233, t105 * t129 + t116 * t307 - t131 * t94 - t158 * t65 - t230, t128 * t26 - t129 * t27 - t341 * t95 + t60 * t94 + t225, -t100 * t26 + t105 * t158 + t131 * t307 - t27 * t99 - t341 * t68 - t60 * t69, t36, t76, -t205, 0, t228, t244, t115 * t47 + t128 * t30 + t66 * t86 + t77 * t95 + t233, -t128 * t23 + t129 * t25 - t58 * t95 - t59 * t94 + t225, -t116 * t47 - t129 * t30 + t65 * t86 + t77 * t94 + t230, t100 * t23 + t25 * t99 + t30 * t86 + t47 * t77 - t58 * t68 + t59 * t69; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t285, -0.2e1 * t274, 0, -0.2e1 * t285, 0, 0, t169 * t313, t172 * t313, 0, 0, t83, 0.2e1 * t242, 0, t311, 0, 0, 0.2e1 * t128 * t307 + 0.2e1 * t158 * t95, 0.2e1 * t129 * t307 - 0.2e1 * t158 * t94, t211, 0.2e1 * t158 * t307 + 0.2e1 * t282, t83, 0, -0.2e1 * t242, 0, 0, t311, 0.2e1 * t128 * t47 + 0.2e1 * t86 * t95, t211, -0.2e1 * t129 * t47 + 0.2e1 * t86 * t94, 0.2e1 * t47 * t86 + 0.2e1 * t282; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t192, 0, -t349, t96, t18, t17, 0, 0, 0, 0, -t21, 0, -t22, t96, t308 * t96 + t177 (-t117 * t277 - t346 * t96) * pkin(4) + t3 (-t346 * t22 + t347 * t21 + (t346 * t64 - t347 * t63) * qJD(5)) * pkin(4) (-t346 * t3 - t347 * t178 + (-t15 * t346 + t16 * t347) * qJD(5)) * pkin(4), 0, -t21, 0, t96, t22, 0, -t157 * t96 + t177 + t93, -t146 * t63 - t154 * t22 - t157 * t21 + t269 * t64, t146 * t117 + t154 * t96 + t1, t1 * t154 + t12 * t146 + t13 * t269 + t2 * t157; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t353, 0, -t357, t161, t79, t78, 0, 0, 0, 0, -t65, 0, -t66, t161, pkin(4) * t170 * t281 + t181 (-t170 * t280 + t173 * t277) * pkin(4) + t26 (-t346 * t66 + t347 * t65 + (-t115 * t347 + t116 * t346) * qJD(5)) * pkin(4) (-t346 * t26 + t347 * t27 + (t341 * t347 - t346 * t60) * qJD(5)) * pkin(4), 0, -t65, 0, t161, t66, 0, -t157 * t161 + t181 + t306, -t146 * t115 + t116 * t269 - t154 * t66 - t157 * t65, t154 * t161 + (-qJD(6) - t146) * t173 + t213, t58 * t146 + t23 * t154 + t25 * t157 + t269 * t59; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t319, 0, -t320, 0, -pkin(10) * t319, pkin(10) * t320, 0, 0, 0, 0, -t94, 0, -t95, 0, -t69, t68 (-t346 * t95 + t347 * t94 + (-t128 * t347 + t129 * t346) * qJD(5)) * pkin(4) (-t346 * t68 - t347 * t69 + (t100 * t347 + t346 * t99) * qJD(5)) * pkin(4), 0, -t94, 0, 0, t95, 0, -t69, -t146 * t128 + t129 * t269 - t154 * t95 - t157 * t94, -t68, t100 * t146 - t68 * t154 + t69 * t157 + t269 * t99; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t152, -0.2e1 * t159, 0, 0, 0, 0, 0, 0, 0, 0, t152, 0, 0.2e1 * t146, 0.2e1 * t154 * t146 + 0.2e1 * t157 * t269; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t21, 0, -t22, t96, -t178, t3, 0, 0, 0, -t21, 0, t96, t22, 0, -t2 + t93, pkin(5) * t21 - qJ(6) * t22 - qJD(6) * t63, 0.2e1 * t92 + 0.2e1 * t113 - t3, -pkin(5) * t2 + qJ(6) * t1 + qJD(6) * t12; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t65, 0, -t66, t161, t27, t26, 0, 0, 0, -t65, 0, t161, t66, 0, t27 + 0.2e1 * t306, pkin(5) * t65 - qJ(6) * t66 - qJD(6) * t115, 0.2e1 * t155 - t26 - 0.2e1 * t316, -pkin(5) * t25 + qJ(6) * t23 + qJD(6) * t58; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t94, 0, -t95, 0, -t69, t68, 0, 0, 0, -t94, 0, 0, t95, 0, -t69, pkin(5) * t94 - qJ(6) * t95 - qJD(6) * t128, -t68, -pkin(5) * t69 - qJ(6) * t68 + qJD(6) * t100; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t269, -t159, 0, 0, 0, 0, 0, 0, 0, 0, -t269, 0, t175 + t159, -pkin(5) * t269 + t146 * qJ(6) + t154 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t175, qJ(6) * t175; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t96, -t21, 0, t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t161, -t65, 0, t25; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t94, 0, t69; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t269; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t4;