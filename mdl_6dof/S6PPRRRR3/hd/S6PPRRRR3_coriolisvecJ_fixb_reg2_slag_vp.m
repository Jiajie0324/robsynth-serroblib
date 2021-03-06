% Calculate inertial parameters regressor of coriolis joint torque vector for
% S6PPRRRR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [14x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,alpha4,d3,d4,d5,d6,theta1,theta2]';
% 
% Output:
% tauc_reg [6x(6*10)]
%   inertial parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 19:12
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S6PPRRRR3_coriolisvecJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(14,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PPRRRR3_coriolisvecJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PPRRRR3_coriolisvecJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [14 1]), ...
  'S6PPRRRR3_coriolisvecJ_fixb_reg2_slag_vp: pkin has to be [14x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 19:11:41
% EndTime: 2019-03-08 19:12:01
% DurationCPUTime: 8.59s
% Computational Cost: add. (13030->534), mult. (36197->810), div. (0->0), fcn. (32689->16), ass. (0->248)
t185 = cos(pkin(6));
t170 = qJD(1) * t185 + qJD(2);
t180 = sin(pkin(7));
t193 = cos(qJ(3));
t280 = t180 * t193;
t151 = t170 * t280;
t184 = cos(pkin(7));
t182 = cos(pkin(14));
t181 = sin(pkin(6));
t268 = qJD(1) * t181;
t245 = t182 * t268;
t178 = sin(pkin(14));
t189 = sin(qJ(3));
t286 = t178 * t189;
t102 = t184 * t193 * t245 - t268 * t286 + t151;
t281 = t180 * t189;
t278 = t182 * t184;
t319 = (t178 * t193 + t189 * t278) * t181;
t103 = qJD(1) * t319 + t170 * t281;
t179 = sin(pkin(8));
t188 = sin(qJ(4));
t284 = t179 * t188;
t171 = pkin(10) * t284;
t183 = cos(pkin(8));
t192 = cos(qJ(4));
t276 = t183 * t192;
t147 = pkin(3) * t276 - t171;
t141 = qJD(4) * t147;
t277 = t183 * t188;
t297 = -t102 * t192 + t103 * t277 + t141;
t191 = cos(qJ(5));
t334 = pkin(11) * t191;
t282 = t179 * t192;
t148 = pkin(3) * t277 + pkin(10) * t282;
t137 = pkin(11) * t183 + t148;
t222 = -pkin(4) * t192 - pkin(11) * t188;
t138 = (-pkin(3) + t222) * t179;
t221 = pkin(4) * t188 - pkin(11) * t192;
t203 = qJD(4) * t221;
t140 = t179 * t203;
t187 = sin(qJ(5));
t259 = qJD(5) * t191;
t260 = qJD(5) * t187;
t285 = t179 * t187;
t307 = -t103 * t285 - t137 * t260 + t138 * t259 + t187 * t140 + t297 * t191;
t142 = qJD(4) * t148;
t296 = -t102 * t188 - t103 * t276 + t142;
t266 = qJD(3) * t183;
t230 = qJD(4) + t266;
t265 = qJD(3) * t188;
t244 = t179 * t265;
t127 = t187 * t244 - t191 * t230;
t333 = qJD(5) * t127;
t253 = qJD(3) * qJD(4);
t238 = t179 * t253;
t223 = t192 * t238;
t105 = -t191 * t223 + t333;
t208 = t187 * t223;
t129 = t187 * t230 + t191 * t244;
t261 = qJD(5) * t129;
t106 = t208 + t261;
t126 = t170 * t184 - t180 * t245;
t97 = qJD(3) * pkin(3) + t102;
t213 = t179 * t126 + t183 * t97;
t267 = qJD(3) * t179;
t93 = pkin(10) * t267 + t103;
t298 = t192 * t93;
t52 = t188 * t213 + t298;
t95 = qJD(3) * t103;
t85 = t95 * t276;
t207 = t193 * t278 - t286;
t199 = t207 * t181;
t94 = (qJD(1) * t199 + t151) * qJD(3);
t33 = qJD(4) * t52 + t188 * t94 + t85;
t18 = pkin(5) * t106 + pkin(12) * t105 + t33;
t186 = sin(qJ(6));
t190 = cos(qJ(6));
t264 = qJD(3) * t192;
t168 = t179 * t264;
t215 = t168 - qJD(5);
t47 = pkin(11) * t230 + t52;
t118 = t183 * t126;
t66 = t118 + (qJD(3) * t222 - t97) * t179;
t30 = t187 * t66 + t191 * t47;
t26 = -pkin(12) * t215 + t30;
t51 = -t188 * t93 + t213 * t192;
t46 = -pkin(4) * t230 - t51;
t36 = t127 * pkin(5) - t129 * pkin(12) + t46;
t214 = t186 * t26 - t190 * t36;
t32 = t51 * qJD(4) + t192 * t94 - t95 * t277;
t75 = (qJD(3) * t203 + t95) * t179;
t204 = -t187 * t75 - t191 * t32 - t66 * t259 + t260 * t47;
t224 = t188 * t238;
t5 = pkin(12) * t224 - t204;
t1 = -qJD(6) * t214 + t18 * t186 + t190 * t5;
t123 = qJD(6) + t127;
t332 = t123 * t214 + t1;
t263 = qJD(4) * t188;
t242 = t179 * t263;
t331 = -pkin(12) * t242 - t307;
t262 = qJD(4) * t192;
t241 = t179 * t262;
t249 = t187 * t284;
t114 = qJD(5) * t249 - t183 * t259 - t191 * t241;
t283 = t179 * t191;
t146 = t187 * t183 + t188 * t283;
t115 = qJD(5) * t146 + t187 * t241;
t330 = pkin(5) * t115 + pkin(12) * t114 + t296;
t231 = qJD(5) * t215;
t329 = -pkin(11) * t231 + t33;
t111 = t185 * t281 + t319;
t29 = -t187 * t47 + t191 * t66;
t328 = t215 * t29 - t204;
t139 = t221 * t267;
t42 = t187 * t139 + t191 * t51;
t327 = t260 * pkin(11) + pkin(12) * t244 + t42;
t220 = pkin(5) * t187 - pkin(12) * t191;
t326 = qJD(6) * t334 - t220 * qJD(5) + t97 * t277 + t298 + (t126 * t188 + t220 * t264) * t179;
t10 = t186 * t36 + t190 * t26;
t2 = -qJD(6) * t10 + t190 * t18 - t186 * t5;
t324 = -t10 * t123 - t2;
t318 = t191 * t137 + t187 * t138;
t306 = -qJD(5) * t318 - t103 * t283 + t140 * t191 - t187 * t297;
t322 = t127 * t215;
t321 = t129 * t215;
t320 = t188 * t192;
t101 = t190 * t129 - t186 * t215;
t258 = qJD(6) * t101;
t63 = -t186 * t105 - t190 * t224 + t258;
t270 = t192 * t193;
t274 = t188 * t189;
t317 = t183 * t270 - t274;
t237 = t187 * t32 - t191 * t75;
t8 = -qJD(5) * t30 - t237;
t194 = qJD(3) ^ 2;
t6 = -pkin(5) * t224 - t8;
t315 = t186 * t6;
t314 = t190 * t6;
t110 = t185 * t280 + t199;
t143 = -t180 * t181 * t182 + t184 * t185;
t289 = t111 * t188;
t57 = -t110 * t276 - t143 * t282 + t289;
t313 = t33 * t57;
t166 = -pkin(5) * t191 - pkin(12) * t187 - pkin(4);
t257 = qJD(6) * t186;
t312 = t166 * t257 - t327 * t186 + t326 * t190;
t256 = qJD(6) * t190;
t311 = -t166 * t256 + t326 * t186 + t327 * t190;
t136 = t171 + (-pkin(3) * t192 - pkin(4)) * t183;
t145 = -t191 * t183 + t249;
t82 = pkin(5) * t145 - pkin(12) * t146 + t136;
t84 = -pkin(12) * t282 + t318;
t53 = -t186 * t84 + t190 * t82;
t310 = qJD(6) * t53 + t330 * t186 - t331 * t190;
t54 = t186 * t82 + t190 * t84;
t309 = -qJD(6) * t54 + t331 * t186 + t330 * t190;
t308 = -pkin(5) * t242 - t306;
t234 = t190 * t215;
t99 = t129 * t186 + t234;
t304 = t101 * t99;
t112 = -t180 * t317 - t184 * t282;
t303 = t112 * t33;
t302 = t123 * t99;
t62 = qJD(6) * t234 + t190 * t105 + t129 * t257 - t186 * t224;
t301 = t186 * t62;
t300 = t186 * t99;
t299 = t190 * t63;
t295 = t101 * t123;
t294 = t106 * t145;
t293 = t106 * t186;
t292 = t106 * t190;
t291 = t106 * t191;
t108 = t111 * qJD(3);
t175 = t179 ^ 2;
t290 = t108 * t175;
t288 = t129 * t127;
t287 = t175 * t194;
t279 = t180 * t194;
t275 = t186 * t191;
t273 = t188 * t193;
t272 = t189 * t192;
t271 = t191 * t192;
t269 = t188 ^ 2 - t192 ^ 2;
t254 = t191 * qJD(4);
t250 = t186 * t282;
t247 = t189 * t279;
t243 = qJD(3) * t281;
t240 = t179 * t183 * t194;
t239 = t175 * t253;
t235 = t123 * t190;
t233 = t192 * t215;
t232 = t215 * t179;
t229 = qJD(4) + 0.2e1 * t266;
t228 = t175 * t247;
t227 = t287 * t320;
t226 = t179 * t243;
t120 = t168 * t275 - t190 * t244;
t219 = -t186 * t259 + t120;
t121 = (t186 * t188 + t190 * t271) * t267;
t218 = t190 * t259 - t121;
t217 = -t10 * t186 + t190 * t214;
t212 = t110 * t183 + t143 * t179;
t58 = t111 * t192 + t188 * t212;
t79 = -t110 * t179 + t143 * t183;
t38 = t187 * t79 + t191 * t58;
t24 = t186 * t57 + t190 * t38;
t23 = -t186 * t38 + t190 * t57;
t37 = t187 * t58 - t79 * t191;
t205 = t183 * t273 + t272;
t113 = t180 * t205 + t184 * t284;
t144 = -t179 * t280 + t183 * t184;
t81 = t113 * t191 + t144 * t187;
t60 = t112 * t190 - t186 * t81;
t61 = t112 * t186 + t190 * t81;
t41 = t139 * t191 - t187 * t51;
t80 = t113 * t187 - t191 * t144;
t90 = -t137 * t187 + t138 * t191;
t209 = t239 * t320;
t116 = t146 * t186 + t190 * t282;
t202 = t215 * t187;
t25 = pkin(5) * t215 - t29;
t201 = -pkin(12) * t106 + t123 * t25;
t72 = -t179 * t97 + t118;
t196 = -qJD(4) * t213 - t267 * t72 - t94;
t134 = t166 * t186 + t190 * t334;
t133 = -pkin(11) * t275 + t166 * t190;
t117 = t146 * t190 - t250;
t107 = t110 * qJD(3);
t89 = pkin(5) * t129 + pkin(12) * t127;
t83 = pkin(5) * t282 - t90;
t78 = t184 * t242 + (t205 * qJD(4) + (t183 * t272 + t273) * qJD(3)) * t180;
t77 = t184 * t241 + (t317 * qJD(4) + (-t183 * t274 + t270) * qJD(3)) * t180;
t71 = -qJD(6) * t250 - t114 * t186 + t146 * t256 - t190 * t242;
t70 = qJD(6) * t116 + t190 * t114 - t186 * t242;
t49 = qJD(5) * t81 + t187 * t77 - t191 * t226;
t48 = -qJD(5) * t80 + t187 * t226 + t191 * t77;
t39 = -pkin(5) * t244 - t41;
t35 = -t108 * t277 + t107 * t192 + (t192 * t212 - t289) * qJD(4);
t34 = qJD(4) * t58 + t107 * t188 + t108 * t276;
t22 = t186 * t89 + t190 * t29;
t21 = -t186 * t29 + t190 * t89;
t20 = -qJD(6) * t61 - t186 * t48 + t190 * t78;
t19 = qJD(6) * t60 + t186 * t78 + t190 * t48;
t12 = -qJD(5) * t37 + t108 * t285 + t191 * t35;
t11 = qJD(5) * t38 - t108 * t283 + t187 * t35;
t4 = qJD(6) * t23 + t12 * t190 + t186 * t34;
t3 = -qJD(6) * t24 - t12 * t186 + t190 * t34;
t7 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t108 * qJD(3), -t107 * qJD(3), 0, -t102 * t108 + t103 * t107 - t110 * t95 + t111 * t94, 0, 0, 0, 0, 0, 0, -t34 * qJD(4) + (-t183 * t34 - t192 * t290 + t242 * t79) * qJD(3), -t35 * qJD(4) + (-t183 * t35 + t188 * t290 + t241 * t79) * qJD(3) (t188 * t34 + t192 * t35 + (-t188 * t58 + t192 * t57) * qJD(4)) * t267, t32 * t58 + t313 - t34 * t51 + t35 * t52 + (t108 * t72 + t79 * t95) * t179, 0, 0, 0, 0, 0, 0, t57 * t106 + t11 * t215 + t34 * t127 - t224 * t37, -t57 * t105 + t12 * t215 + t34 * t129 - t224 * t38, -t105 * t37 - t106 * t38 + t11 * t129 - t12 * t127, -t11 * t29 + t12 * t30 - t204 * t38 + t34 * t46 - t37 * t8 + t313, 0, 0, 0, 0, 0, 0, t106 * t23 + t11 * t99 + t123 * t3 + t37 * t63, t101 * t11 - t106 * t24 - t123 * t4 - t37 * t62, -t101 * t3 + t23 * t62 - t24 * t63 - t4 * t99, t1 * t24 + t10 * t4 + t11 * t25 + t2 * t23 - t214 * t3 + t37 * t6; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t247, -t193 * t279, 0 (t189 * t94 - t193 * t95 + (-t102 * t189 + t103 * t193) * qJD(3)) * t180, 0, 0, 0, 0, 0, 0, t144 * t224 - t192 * t228 - t230 * t78, t144 * t223 + t188 * t228 - t230 * t77 (t188 * t78 + t192 * t77 + (t112 * t192 - t113 * t188) * qJD(4)) * t267, t303 + t113 * t32 - t51 * t78 + t52 * t77 + (t144 * t95 + t243 * t72) * t179, 0, 0, 0, 0, 0, 0, t112 * t106 + t78 * t127 + t215 * t49 - t224 * t80, -t112 * t105 + t78 * t129 + t215 * t48 - t224 * t81, -t105 * t80 - t106 * t81 - t127 * t48 + t129 * t49, -t204 * t81 - t29 * t49 + t30 * t48 + t46 * t78 - t8 * t80 + t303, 0, 0, 0, 0, 0, 0, t106 * t60 + t123 * t20 + t49 * t99 + t63 * t80, t101 * t49 - t106 * t61 - t123 * t19 - t62 * t80, -t101 * t20 - t19 * t99 + t60 * t62 - t61 * t63, t1 * t61 + t10 * t19 + t2 * t60 - t20 * t214 + t25 * t49 + t6 * t80; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 (-t207 * t268 + t102 - t151) * qJD(3), 0, 0, 0.2e1 * t209, -0.2e1 * t269 * t239, t229 * t241, -0.2e1 * t209, -t229 * t242, 0, t72 * t242 - t33 * t183 + (-t95 * t192 + (-pkin(3) * t263 + t103 * t192) * qJD(3)) * t175 - t296 * t230, t72 * t241 - t32 * t183 + (t188 * t95 + (-pkin(3) * t262 - t103 * t188) * qJD(3)) * t175 - t297 * t230 (t188 * t33 + t192 * t32 + (-t188 * t52 - t192 * t51) * qJD(4) + ((t297 - t141) * t192 + (t296 - t142) * t188) * qJD(3)) * t179, -pkin(3) * t175 * t95 - t103 * t179 * t72 - t147 * t33 + t148 * t32 - t296 * t51 + t297 * t52, -t105 * t146 - t114 * t129, t105 * t145 - t106 * t146 + t114 * t127 - t115 * t129, t114 * t215 + (t105 * t192 + (qJD(3) * t146 + t129) * t263) * t179, t115 * t127 + t294, t115 * t215 + (t106 * t192 + (-qJD(3) * t145 - t127) * t263) * t179 (-t175 * t264 - t232) * t263, t136 * t106 + t33 * t145 + t46 * t115 + t296 * t127 + (-t8 * t192 + (qJD(3) * t90 + t29) * t263) * t179 - t306 * t215, -t136 * t105 + t33 * t146 - t46 * t114 + t296 * t129 + (-t204 * t192 + (-qJD(3) * t318 - t30) * t263) * t179 + t307 * t215, t105 * t90 - t106 * t318 + t114 * t29 - t115 * t30 - t127 * t307 - t129 * t306 + t145 * t204 - t146 * t8, t136 * t33 - t204 * t318 + t29 * t306 + t296 * t46 + t30 * t307 + t8 * t90, -t101 * t70 - t117 * t62, -t101 * t71 + t116 * t62 - t117 * t63 + t70 * t99, t101 * t115 + t106 * t117 - t123 * t70 - t145 * t62, t116 * t63 + t71 * t99, -t106 * t116 - t115 * t99 - t123 * t71 - t145 * t63, t115 * t123 + t294, t106 * t53 - t115 * t214 + t116 * t6 + t123 * t309 + t145 * t2 + t25 * t71 + t308 * t99 + t63 * t83, -t1 * t145 - t10 * t115 + t101 * t308 - t106 * t54 + t117 * t6 - t123 * t310 - t25 * t70 - t62 * t83, -t1 * t116 - t10 * t71 - t101 * t309 - t117 * t2 - t214 * t70 - t310 * t99 + t53 * t62 - t54 * t63, t1 * t54 + t10 * t310 + t2 * t53 - t214 * t309 + t25 * t308 + t6 * t83; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t227, t269 * t287, -t192 * t240, t227, t188 * t240, 0, t188 * t196 + t230 * t52 - t262 * t93 - t85, t51 * t230 + (qJD(4) * t93 + t183 * t95) * t188 + t196 * t192, 0, 0, -t105 * t187 - t191 * t321 (-t105 + t322) * t191 + (-t106 + t321) * t187, -t191 * t231 + (t191 * t233 + (t187 * qJD(4) - t129) * t188) * t267, -t127 * t202 - t291, t187 * t231 + (-t187 * t233 + (t127 + t254) * t188) * t267, t232 * t265, -pkin(4) * t106 + t46 * t260 + t41 * t215 - t52 * t127 - t329 * t191 + (-t188 * t29 + (-pkin(11) * t263 - t192 * t46) * t187) * t267, pkin(4) * t105 + t46 * t259 - t42 * t215 - t52 * t129 + t329 * t187 + (-t46 * t271 + (-pkin(11) * t254 + t30) * t188) * t267, t127 * t42 + t129 * t41 + ((-t106 + t261) * pkin(11) + t328) * t191 + (-t8 + t215 * t30 + (-t105 + t333) * pkin(11)) * t187, -pkin(4) * t33 - t29 * t41 - t30 * t42 - t46 * t52 + (-t187 * t8 - t191 * t204 + (-t187 * t30 - t191 * t29) * qJD(5)) * pkin(11), -t187 * t190 * t62 + (-t187 * t257 + t218) * t101, t101 * t120 + t121 * t99 + (-t101 * t186 - t190 * t99) * t259 + (t301 - t299 + (-t101 * t190 + t300) * qJD(6)) * t187, t191 * t62 + t218 * t123 + (-t101 * t215 - t123 * t257 + t292) * t187, t186 * t187 * t63 + (t187 * t256 - t219) * t99, t191 * t63 + t219 * t123 + (-t123 * t256 + t215 * t99 - t293) * t187, -t123 * t202 - t291, t106 * t133 - t120 * t25 - t39 * t99 - t312 * t123 + (-t2 + (pkin(11) * t99 + t186 * t25) * qJD(5)) * t191 + (pkin(11) * t63 + t214 * t215 + t25 * t256 + t315) * t187, -t101 * t39 - t106 * t134 - t121 * t25 + t311 * t123 + (t1 + (pkin(11) * t101 + t190 * t25) * qJD(5)) * t191 + (-pkin(11) * t62 + t10 * t215 - t25 * t257 + t314) * t187, t10 * t120 - t121 * t214 + t133 * t62 - t134 * t63 + t311 * t99 + t312 * t101 + t217 * t259 + (-t1 * t186 - t190 * t2 + (-t10 * t190 - t186 * t214) * qJD(6)) * t187, t1 * t134 + t133 * t2 - t25 * t39 + t312 * t214 - t311 * t10 + (t187 * t6 + t25 * t259) * pkin(11); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t288, -t127 ^ 2 + t129 ^ 2, -t105 - t322, -t288, -t129 * t168 - t208, t224, -t46 * t129 - t30 * t168 - t237, t46 * t127 - t328, 0, 0, t101 * t235 - t301 (-t62 - t302) * t190 + (-t63 - t295) * t186, -t101 * t129 + t123 * t235 + t293, t123 * t300 - t299, -t123 ^ 2 * t186 + t129 * t99 + t292, -t123 * t129, -pkin(5) * t63 + t129 * t214 - t314 - t30 * t99 + (-pkin(12) * t256 - t21) * t123 + t201 * t186, pkin(5) * t62 + t10 * t129 - t101 * t30 + t315 + (pkin(12) * t257 + t22) * t123 + t201 * t190, t101 * t21 + t22 * t99 + ((-t63 + t258) * pkin(12) + t332) * t190 + ((qJD(6) * t99 - t62) * pkin(12) + t324) * t186, -pkin(5) * t6 - t10 * t22 + t21 * t214 - t25 * t30 + (qJD(6) * t217 + t1 * t190 - t186 * t2) * pkin(12); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t304, t101 ^ 2 - t99 ^ 2, -t62 + t302, -t304, t295 - t63, t106, -t101 * t25 - t324, t25 * t99 - t332, 0, 0;];
tauc_reg  = t7;
