% Calculate inertial parameters regressor of coriolis joint torque vector for
% S5RRRRR8
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3,d4,d5]';
% 
% Output:
% tauc_reg [5x(5*10)]
%   inertial parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 22:26
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S5RRRRR8_coriolisvecJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRR8_coriolisvecJ_fixb_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRRR8_coriolisvecJ_fixb_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRRRR8_coriolisvecJ_fixb_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 22:25:47
% EndTime: 2019-12-31 22:26:00
% DurationCPUTime: 4.70s
% Computational Cost: add. (10400->457), mult. (25119->615), div. (0->0), fcn. (17908->8), ass. (0->234)
t212 = sin(qJ(4));
t326 = cos(qJ(3));
t259 = t326 * qJD(3);
t249 = pkin(2) * t259;
t213 = sin(qJ(3));
t214 = sin(qJ(2));
t282 = qJD(1) * t214;
t262 = t213 * t282;
t217 = cos(qJ(2));
t263 = t326 * t217;
t163 = -qJD(1) * t263 + t262;
t292 = t213 * t217;
t177 = t326 * t214 + t292;
t165 = t177 * qJD(1);
t129 = pkin(3) * t165 + pkin(8) * t163;
t271 = pkin(2) * t282;
t112 = t129 + t271;
t328 = -pkin(7) - pkin(6);
t190 = t328 * t217;
t181 = qJD(1) * t190;
t166 = t213 * t181;
t188 = t328 * t214;
t179 = qJD(1) * t188;
t135 = t326 * t179 + t166;
t216 = cos(qJ(4));
t68 = t216 * t112 - t135 * t212;
t344 = -t212 * t249 - t68;
t69 = t212 * t112 + t216 * t135;
t343 = -t216 * t249 + t69;
t208 = qJD(2) + qJD(3);
t144 = t165 * t212 - t216 * t208;
t146 = t165 * t216 + t208 * t212;
t211 = sin(qJ(5));
t215 = cos(qJ(5));
t236 = t144 * t211 - t215 * t146;
t88 = t215 * t144 + t146 * t211;
t323 = t88 * t236;
t325 = pkin(2) * t213;
t203 = pkin(8) + t325;
t322 = -pkin(9) - t203;
t254 = qJD(4) * t322;
t295 = t212 * t163;
t273 = pkin(9) * t295;
t342 = t212 * t254 - t273 - t343;
t290 = t216 * t163;
t244 = t165 * pkin(4) + pkin(9) * t290;
t341 = -t216 * t254 + t244 - t344;
t327 = -pkin(9) - pkin(8);
t264 = qJD(4) * t327;
t317 = qJD(2) * pkin(2);
t169 = t179 + t317;
t132 = t326 * t169 + t166;
t73 = t212 * t129 + t216 * t132;
t340 = t212 * t264 - t273 - t73;
t72 = t216 * t129 - t132 * t212;
t339 = -t216 * t264 + t244 + t72;
t176 = t211 * t216 + t212 * t215;
t275 = qJD(4) + qJD(5);
t138 = t275 * t176;
t338 = t176 * t163 + t138;
t277 = qJD(5) * t215;
t279 = qJD(4) * t216;
t298 = t211 * t212;
t285 = t211 * t295 - t216 * t277 + t275 * t298 + (-t279 - t290) * t215;
t337 = t236 ^ 2 - t88 ^ 2;
t140 = t208 * t177;
t126 = t140 * qJD(1);
t206 = -pkin(2) * t217 - pkin(1);
t186 = qJD(1) * t206;
t110 = pkin(3) * t163 - pkin(8) * t165 + t186;
t167 = t326 * t181;
t133 = t213 * t169 - t167;
t114 = t208 * pkin(8) + t133;
t63 = t110 * t212 + t114 * t216;
t260 = t326 * qJD(2);
t226 = t217 * (t260 + t259);
t268 = t214 * t317;
t276 = qJD(1) * qJD(2);
t258 = t214 * t276;
t284 = qJD(3) * t262 + t213 * t258;
t67 = t284 * pkin(8) + t126 * pkin(3) + (-pkin(8) * t226 + t268) * qJD(1);
t265 = qJD(2) * t328;
t248 = qJD(1) * t265;
t170 = t214 * t248;
t171 = t217 * t248;
t281 = qJD(3) * t213;
t74 = t169 * t259 + t326 * t170 + t213 * t171 + t181 * t281;
t22 = -qJD(4) * t63 - t212 * t74 + t216 * t67;
t222 = qJD(1) * t226 - t284;
t280 = qJD(4) * t212;
t82 = t165 * t280 - t208 * t279 - t216 * t222;
t11 = pkin(4) * t126 + pkin(9) * t82 + t22;
t21 = t110 * t279 - t114 * t280 + t212 * t67 + t216 * t74;
t266 = t165 * t279 + t208 * t280 + t212 * t222;
t12 = -pkin(9) * t266 + t21;
t49 = -pkin(9) * t144 + t63;
t313 = t215 * t49;
t161 = qJD(4) + t163;
t62 = t216 * t110 - t114 * t212;
t48 = -pkin(9) * t146 + t62;
t46 = pkin(4) * t161 + t48;
t18 = t211 * t46 + t313;
t4 = -qJD(5) * t18 + t215 * t11 - t12 * t211;
t113 = -t208 * pkin(3) - t132;
t83 = t144 * pkin(4) + t113;
t336 = t83 * t236 + t4;
t158 = qJD(5) + t161;
t278 = qJD(5) * t211;
t31 = t144 * t277 + t146 * t278 + t211 * t266 + t215 * t82;
t335 = t158 * t88 - t31;
t3 = (qJD(5) * t46 + t12) * t215 + t11 * t211 - t49 * t278;
t334 = t83 * t88 - t3;
t224 = qJD(5) * t236 + t211 * t82 - t215 * t266;
t333 = -t158 * t236 + t224;
t332 = -0.2e1 * t276;
t134 = t179 * t213 - t167;
t242 = pkin(2) * t281 - t134;
t293 = t213 * t214;
t175 = -t263 + t293;
t131 = pkin(3) * t175 - pkin(8) * t177 + t206;
t150 = t213 * t188 - t326 * t190;
t143 = t216 * t150;
t85 = t212 * t131 + t143;
t331 = (t280 + t295) * pkin(4);
t330 = t326 * t188 + t213 * t190;
t247 = t217 * t260;
t139 = t208 * t293 - t217 * t259 - t247;
t291 = t216 * t139;
t232 = -t177 * t280 - t291;
t329 = -t212 * t62 + t216 * t63;
t324 = t216 * pkin(4);
t172 = t322 * t212;
t207 = t216 * pkin(9);
t173 = t203 * t216 + t207;
t128 = t172 * t211 + t173 * t215;
t321 = qJD(5) * t128 + t342 * t211 + t341 * t215;
t127 = t172 * t215 - t173 * t211;
t320 = -qJD(5) * t127 + t341 * t211 - t342 * t215;
t187 = t327 * t212;
t189 = pkin(8) * t216 + t207;
t149 = t187 * t211 + t189 * t215;
t319 = qJD(5) * t149 + t340 * t211 + t339 * t215;
t147 = t187 * t215 - t189 * t211;
t318 = -qJD(5) * t147 + t339 * t211 - t340 * t215;
t251 = t213 * t170 - t326 * t171;
t75 = qJD(3) * t133 + t251;
t316 = t330 * t75;
t19 = t21 * t216;
t315 = t211 * t49;
t311 = t82 * t212;
t310 = t331 + t242;
t100 = t126 * t175;
t309 = t126 * t216;
t308 = t144 * t161;
t307 = t144 * t212;
t306 = t146 * t144;
t305 = t146 * t161;
t304 = t146 * t216;
t303 = t158 * t165;
t302 = t161 * t165;
t301 = t165 * t163;
t300 = t177 * t212;
t299 = t177 * t216;
t297 = t212 * t126;
t296 = t212 * t139;
t219 = qJD(1) ^ 2;
t289 = t217 * t219;
t218 = qJD(2) ^ 2;
t288 = t218 * t214;
t287 = t218 * t217;
t283 = t214 ^ 2 - t217 ^ 2;
t274 = -t62 * t290 - t63 * t295 + t19;
t272 = t326 * pkin(2);
t267 = t214 * t289;
t81 = pkin(3) * t140 + pkin(8) * t139 + t268;
t180 = t214 * t265;
t94 = t330 * qJD(3) + t326 * t180 + t265 * t292;
t255 = -t212 * t94 + t216 * t81;
t252 = pkin(1) * t332;
t84 = t216 * t131 - t150 * t212;
t250 = t161 * t216;
t204 = -t272 - pkin(3);
t246 = t217 * t258;
t245 = -t133 + t331;
t243 = t113 * t279 + t63 * t165 + t75 * t212;
t241 = t266 * t216;
t56 = pkin(4) * t175 - pkin(9) * t299 + t84;
t66 = -pkin(9) * t300 + t85;
t35 = -t211 * t66 + t215 * t56;
t36 = t211 * t56 + t215 * t66;
t240 = t63 * t212 + t62 * t216;
t237 = t113 * t163 - t203 * t126;
t174 = -t215 * t216 + t298;
t235 = t113 * t280 - t62 * t165 - t75 * t216;
t234 = -t186 * t165 - t251;
t233 = t177 * t279 - t296;
t33 = t131 * t279 - t150 * t280 + t212 * t81 + t216 * t94;
t17 = t215 * t46 - t315;
t43 = pkin(4) * t266 + t75;
t231 = -t165 * t17 + t43 * t174 + t338 * t83;
t230 = t165 * t18 + t43 * t176 - t285 * t83;
t228 = t285 * t17 - t3 * t174 - t4 * t176 - t338 * t18;
t225 = -qJD(4) * t240 - t22 * t212;
t223 = t225 + t19;
t95 = qJD(3) * t150 + t213 * t180 - t328 * t247;
t220 = t186 * t163 - t74;
t205 = -pkin(3) - t324;
t185 = t204 - t324;
t121 = t174 * t177;
t120 = t176 * t177;
t111 = pkin(4) * t300 - t330;
t101 = -t163 ^ 2 + t165 ^ 2;
t96 = t163 * t208 + t222;
t52 = pkin(4) * t233 + t95;
t45 = -t146 * t165 + t161 * t250 + t297;
t44 = -t161 ^ 2 * t212 + t144 * t165 + t309;
t42 = t161 * t307 - t241;
t41 = t146 * t250 - t311;
t40 = -t278 * t300 + (t275 * t299 - t296) * t215 + t232 * t211;
t39 = t138 * t177 - t211 * t296 + t215 * t291;
t34 = -t85 * qJD(4) + t255;
t26 = -t126 * t174 - t158 * t338 + t165 * t88;
t25 = t126 * t176 - t285 * t158 + t165 * t236;
t24 = t215 * t48 - t315;
t23 = -t211 * t48 - t313;
t20 = -pkin(9) * t233 + t33;
t16 = pkin(9) * t291 + pkin(4) * t140 + (-t143 + (pkin(9) * t177 - t131) * t212) * qJD(4) + t255;
t13 = (-t82 - t308) * t216 + (-t266 - t305) * t212;
t9 = -t174 * t224 + t338 * t88;
t8 = -t176 * t31 + t236 * t285;
t7 = -qJD(5) * t36 + t16 * t215 - t20 * t211;
t6 = qJD(5) * t35 + t16 * t211 + t20 * t215;
t5 = t174 * t31 + t176 * t224 + t236 * t338 + t285 * t88;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t246, t283 * t332, t287, -0.2e1 * t246, -t288, 0, -pkin(6) * t287 + t214 * t252, pkin(6) * t288 + t217 * t252, 0, 0, -t165 * t139 + t177 * t222, -t177 * t126 + t139 * t163 - t165 * t140 - t175 * t222, -t139 * t208, t140 * t163 + t100, -t140 * t208, 0, t126 * t206 + t140 * t186 - t208 * t95 + (qJD(1) * t175 + t163) * t268, pkin(2) * t177 * t258 - t186 * t139 + t165 * t268 + t206 * t222 - t94 * t208, -t150 * t126 + t132 * t139 - t133 * t140 - t94 * t163 + t95 * t165 - t74 * t175 + t75 * t177 - t222 * t330, -t132 * t95 + t133 * t94 + t150 * t74 + 0.2e1 * t186 * t268 - t316, t146 * t232 - t299 * t82, (t216 * t144 + t146 * t212) * t139 + (-t241 + t311 + (-t304 + t307) * qJD(4)) * t177, t126 * t299 + t140 * t146 + t161 * t232 - t175 * t82, t144 * t233 + t266 * t300, -t144 * t140 - t161 * t233 - t175 * t266 - t177 * t297, t140 * t161 + t100, t113 * t233 + t84 * t126 + t62 * t140 + t95 * t144 + t34 * t161 + t22 * t175 - t266 * t330 + t300 * t75, t113 * t232 - t126 * t85 - t140 * t63 + t146 * t95 - t161 * t33 - t175 * t21 + t299 * t75 + t330 * t82, -t33 * t144 - t85 * t266 - t34 * t146 + t84 * t82 + t240 * t139 + (-t329 * qJD(4) - t21 * t212 - t22 * t216) * t177, t113 * t95 + t21 * t85 + t22 * t84 + t33 * t63 + t34 * t62 - t316, t121 * t31 + t236 * t39, t120 * t31 - t121 * t224 + t236 * t40 + t39 * t88, -t121 * t126 - t140 * t236 - t158 * t39 - t175 * t31, -t120 * t224 + t40 * t88, -t120 * t126 - t140 * t88 - t158 * t40 + t175 * t224, t140 * t158 + t100, -t111 * t224 + t120 * t43 + t126 * t35 + t140 * t17 + t158 * t7 + t175 * t4 + t40 * t83 + t52 * t88, -t111 * t31 - t121 * t43 - t126 * t36 - t140 * t18 - t158 * t6 - t175 * t3 - t236 * t52 - t39 * t83, -t120 * t3 + t121 * t4 + t17 * t39 - t18 * t40 + t224 * t36 + t236 * t7 + t31 * t35 - t6 * t88, t111 * t43 + t17 * t7 + t18 * t6 + t3 * t36 + t35 * t4 + t52 * t83; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t267, t283 * t219, 0, t267, 0, 0, t219 * pkin(1) * t214, pkin(1) * t289, 0, 0, t301, t101, t96, -t301, 0, 0, -t163 * t271 + t134 * t208 + (t167 + (-pkin(2) * t208 - t169) * t213) * qJD(3) + t234, t135 * t208 + (-t165 * t282 - t208 * t259) * pkin(2) + t220, -t126 * t325 - t222 * t272 + (t133 + t242) * t165 + (-t132 + t135 - t249) * t163, t132 * t134 - t133 * t135 + (-t186 * t282 - t326 * t75 + t213 * t74 + (-t132 * t213 + t326 * t133) * qJD(3)) * pkin(2), t41, t13, t45, t42, t44, -t302, t204 * t266 + t237 * t212 + t242 * t144 + (-t203 * t279 + t344) * t161 + t235, -t204 * t82 + t237 * t216 + t242 * t146 + (t203 * t280 + t343) * t161 + t243, t69 * t144 + t68 * t146 + (-t144 * t249 - t203 * t266 + (t203 * t146 - t62) * qJD(4)) * t216 + (t146 * t249 - t203 * t82 - t22 + (t144 * t203 - t63) * qJD(4)) * t212 + t274, -t113 * t134 + t75 * t204 - t62 * t68 - t63 * t69 + (t113 * t213 + t329 * t326) * qJD(3) * pkin(2) + t223 * t203, t8, t5, t25, t9, t26, -t303, t126 * t127 - t321 * t158 - t185 * t224 + t310 * t88 + t231, -t126 * t128 + t320 * t158 - t185 * t31 - t236 * t310 + t230, t127 * t31 + t128 * t224 - t236 * t321 + t320 * t88 + t228, t127 * t4 + t128 * t3 - t321 * t17 - t320 * t18 + t185 * t43 + t310 * t83; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t301, t101, t96, -t301, 0, 0, t234 + (-qJD(3) + t208) * t133, t132 * t208 + t220, 0, 0, t41, t13, t45, t42, t44, -t302, -pkin(3) * t266 - t133 * t144 + t113 * t295 - t72 * t161 + (-t161 * t279 - t297) * pkin(8) + t235, t113 * t290 + pkin(3) * t82 - t133 * t146 + t161 * t73 + (t161 * t280 - t309) * pkin(8) + t243, t73 * t144 + t72 * t146 + (-t241 - t311 + (t304 + t307) * qJD(4)) * pkin(8) + t225 + t274, -pkin(3) * t75 + pkin(8) * t223 - t113 * t133 - t62 * t72 - t63 * t73, t8, t5, t25, t9, t26, -t303, t126 * t147 - t319 * t158 - t205 * t224 + t245 * t88 + t231, -t126 * t149 + t318 * t158 - t205 * t31 - t236 * t245 + t230, t147 * t31 + t149 * t224 - t236 * t319 + t318 * t88 + t228, t147 * t4 + t149 * t3 - t319 * t17 - t318 * t18 + t205 * t43 + t245 * t83; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t306, -t144 ^ 2 + t146 ^ 2, -t82 + t308, -t306, -t266 + t305, t126, -t113 * t146 + t161 * t63 + t22, t113 * t144 + t161 * t62 - t21, 0, 0, -t323, t337, t335, t323, t333, t126, -t158 * t23 + (t126 * t215 - t146 * t88 - t158 * t278) * pkin(4) + t336, t158 * t24 + (-t126 * t211 + t146 * t236 - t158 * t277) * pkin(4) + t334, -t17 * t88 - t18 * t236 - t23 * t236 + t24 * t88 + (t211 * t224 + t215 * t31 + (-t211 * t236 - t215 * t88) * qJD(5)) * pkin(4), -t17 * t23 - t18 * t24 + (-t146 * t83 + t211 * t3 + t215 * t4 + (-t17 * t211 + t18 * t215) * qJD(5)) * pkin(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t323, t337, t335, t323, t333, t126, t158 * t18 + t336, t158 * t17 + t334, 0, 0;];
tauc_reg = t1;