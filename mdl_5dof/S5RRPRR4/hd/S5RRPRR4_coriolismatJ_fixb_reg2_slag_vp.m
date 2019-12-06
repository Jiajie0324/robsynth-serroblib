% Calculate inertial parameters regressor of coriolis matrix for
% S5RRPRR4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d4,d5,theta3]';
% 
% Output:
% cmat_reg [(5*5)x(5*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 18:32
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5RRPRR4_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRR4_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPRR4_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRPRR4_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:32:13
% EndTime: 2019-12-05 18:32:17
% DurationCPUTime: 2.58s
% Computational Cost: add. (5456->214), mult. (10210->277), div. (0->0), fcn. (9923->8), ass. (0->176)
t254 = qJD(4) + qJD(5);
t204 = sin(pkin(9));
t208 = sin(qJ(2));
t196 = t204 * t208 * pkin(1);
t210 = cos(qJ(2));
t295 = pkin(1) * t210;
t200 = pkin(2) + t295;
t205 = cos(pkin(9));
t230 = t200 * t205 - t196;
t169 = -pkin(3) - t230;
t198 = -pkin(2) * t205 - pkin(3);
t319 = t198 / 0.2e1 + t169 / 0.2e1;
t207 = sin(qJ(4));
t197 = pkin(2) * t204 + pkin(7);
t290 = pkin(8) + t197;
t185 = t290 * t207;
t209 = cos(qJ(4));
t186 = t290 * t209;
t206 = sin(qJ(5));
t296 = cos(qJ(5));
t231 = t296 * t185 + t206 * t186;
t318 = t254 * t231;
t273 = t205 * t208;
t229 = pkin(1) * t273 + t204 * t200;
t170 = pkin(7) + t229;
t291 = pkin(8) + t170;
t149 = t291 * t207;
t150 = t291 * t209;
t232 = t296 * t149 + t206 * t150;
t317 = t254 * t232;
t80 = -t206 * t149 + t150 * t296;
t316 = t254 * t80;
t133 = -t206 * t185 + t186 * t296;
t315 = t254 * t133;
t182 = t205 * t295 - t196;
t248 = t296 * t207;
t271 = t206 * t209;
t188 = t248 + t271;
t112 = t188 * t182;
t314 = -t112 / 0.2e1;
t255 = qJD(1) + qJD(2);
t313 = t209 * t255;
t247 = t296 * t209;
t272 = t206 * t207;
t219 = t247 - t272;
t312 = t254 * t219;
t118 = -t188 ^ 2 + t219 ^ 2;
t311 = t255 * t118;
t202 = t207 ^ 2;
t203 = t209 ^ 2;
t194 = t203 - t202;
t310 = t255 * t194;
t309 = t255 * t219 * t188;
t305 = t232 / 0.2e1;
t304 = -t80 / 0.2e1;
t301 = -t133 / 0.2e1;
t237 = t301 + t133 / 0.2e1;
t302 = t231 / 0.2e1;
t238 = -t231 / 0.2e1 + t302;
t250 = t304 + t80 / 0.2e1;
t251 = -t232 / 0.2e1 + t305;
t7 = (t237 + t250) * t188 - (-t238 - t251) * t219;
t303 = t7 * qJD(4);
t300 = -t182 / 0.2e1;
t299 = t206 / 0.2e1;
t294 = pkin(4) * t206;
t293 = pkin(4) * t207;
t292 = pkin(4) * t209;
t20 = t188 * t238 - t219 * t237;
t289 = t20 * qJD(4);
t288 = pkin(1) * qJD(1);
t287 = pkin(1) * qJD(2);
t286 = qJD(4) * pkin(4);
t113 = t219 * t182;
t35 = t113 * t188 / 0.2e1 + t219 * t314;
t282 = qJD(1) * t35;
t36 = t112 * t188 + t113 * t219;
t281 = qJD(1) * t36;
t178 = t219 * t293;
t155 = t169 - t292;
t277 = t155 * t188;
t91 = -t178 + t277;
t280 = qJD(1) * t91;
t253 = t188 * t293;
t278 = t155 * t219;
t92 = t253 + t278;
t279 = qJD(1) * t92;
t191 = t198 - t292;
t275 = t191 * t219;
t274 = t191 * t188;
t270 = t207 * t182;
t126 = (t202 + t203) * t182;
t181 = (t204 * t210 + t273) * pkin(1);
t37 = t126 * t170 + t169 * t181;
t269 = t37 * qJD(1);
t72 = -t181 * t230 + t182 * t229;
t268 = t72 * qJD(1);
t267 = t278 / 0.2e1 + t275 / 0.2e1;
t239 = t209 * t300;
t266 = t296 * t239 + t270 * t299;
t265 = qJD(1) * t155;
t264 = qJD(1) * t169;
t263 = qJD(2) * t191;
t262 = qJD(2) * t198;
t261 = qJD(5) * t155;
t260 = qJD(5) * t191;
t259 = t126 * qJD(1);
t258 = t181 * qJD(1);
t176 = t181 * qJD(2);
t257 = t182 * qJD(1);
t256 = t207 * qJD(4);
t201 = t209 * qJD(4);
t249 = (-t188 * t206 - t219 * t296) * t286;
t246 = t219 * t265;
t245 = t188 * t265;
t244 = t207 * t264;
t243 = t209 * t264;
t242 = t219 * t258;
t241 = t188 * t258;
t240 = t207 * t258;
t236 = t191 / 0.2e1 + t155 / 0.2e1;
t235 = t296 * qJD(4);
t234 = t296 * qJD(5);
t233 = pkin(1) * t255;
t142 = t254 * t188;
t228 = t300 - t319;
t227 = qJD(2) * t7;
t226 = qJD(1) * t7;
t11 = t188 * t251 - t219 * t250;
t225 = t11 * qJD(1) + t20 * qJD(2);
t14 = t155 * t293;
t224 = t14 * qJD(1) + t11 * qJD(3);
t15 = t112 * t232 + t113 * t80 + t155 * t181;
t223 = t15 * qJD(1) + t35 * qJD(3);
t116 = -t178 + t274;
t212 = (-t271 / 0.2e1 - t248 / 0.2e1) * t182;
t38 = -t188 * t236 + t212;
t30 = t178 + t38;
t222 = qJD(1) * t30 - qJD(2) * t116;
t117 = t253 + t275;
t220 = t253 + t267;
t32 = (t247 / 0.2e1 - t272 / 0.2e1) * t182 + t220;
t221 = -qJD(1) * t32 - qJD(2) * t117;
t39 = -t219 * t236 + t266;
t218 = qJD(1) * t39 - t219 * t263;
t217 = qJD(1) * t38 - t188 * t263;
t94 = t228 * t207;
t216 = qJD(1) * t94 - t207 * t262;
t95 = t228 * t209;
t215 = qJD(1) * t95 - t209 * t262;
t214 = t113 * t299 + t296 * t314;
t211 = -t133 * t305 - t231 * t304 - t232 * t301 - t302 * t80;
t2 = (-t236 * t207 + t214) * pkin(4) + t211;
t26 = t191 * t293;
t213 = -t2 * qJD(1) + t26 * qJD(2) + t20 * qJD(3);
t41 = t274 / 0.2e1 + t277 / 0.2e1 + t212;
t195 = t207 * t201;
t193 = t194 * qJD(4);
t180 = t207 * t313;
t177 = t182 * qJD(2);
t162 = t207 * t176;
t144 = t188 * t176;
t143 = t219 * t176;
t119 = t126 * qJD(2);
t97 = t209 * t319 + t239;
t96 = -t270 / 0.2e1 + t207 * t319;
t85 = t219 * t142;
t83 = t188 * t312;
t52 = t254 * t118;
t40 = t266 + t267;
t34 = t36 * qJD(2);
t33 = t220 + t266;
t31 = -t178 + t41;
t3 = pkin(4) * t214 - t211 + (t155 + t191) * t293 / 0.2e1;
t1 = qJD(2) * t35 + qJD(4) * t11;
t4 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t208 * t287, -t210 * t287, 0, 0, 0, 0, 0, 0, 0, 0, -t176, -t177, 0, t72 * qJD(2), t195, t193, 0, -t195, 0, 0, t169 * t256 - t176 * t209, t169 * t201 + t162, t119, t37 * qJD(2), t85, t52, 0, -t83, 0, 0, qJD(4) * t91 + t188 * t261 - t143, qJD(4) * t92 + t219 * t261 + t144, t34, qJD(2) * t15 + qJD(4) * t14; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t208 * t233, -t210 * t233, 0, 0, 0, 0, 0, 0, 0, 0, -t176 - t258, -t177 - t257, 0, t268 + (-t181 * t205 + t182 * t204) * qJD(2) * pkin(2), t195, t193, 0, -t195, 0, 0, t96 * qJD(4) - t181 * t313, qJD(4) * t97 + t162 + t240, t119 + t259, t269 + (t126 * t197 + t181 * t198) * qJD(2), t85, t52, 0, -t83, 0, 0, qJD(4) * t31 + qJD(5) * t41 - t143 - t242, qJD(4) * t33 + qJD(5) * t40 + t144 + t241, t34 + t281 + t303, (t112 * t231 + t113 * t133 + t181 * t191) * qJD(2) + t3 * qJD(4) + t223; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t180, t310, t201, -t180, -t256, 0, qJD(2) * t96 - t170 * t201 + t244, qJD(2) * t97 + t170 * t256 + t243, 0, 0, t309, t311, t312, -t309, -t142, 0, qJD(2) * t31 + t280 - t316, qJD(2) * t33 + t279 + t317, t227 + t249, t3 * qJD(2) + (-t206 * t232 - t296 * t80) * t286 + t224; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t309, t311, t312, -t309, -t142, 0, qJD(2) * t41 + t245 - t316, qJD(2) * t40 + t246 + t317, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t208 * t288, t210 * t288, 0, 0, 0, 0, 0, 0, 0, 0, t258, t257, 0, -t268, t195, t193, 0, -t195, 0, 0, -qJD(4) * t94 + t209 * t258, -qJD(4) * t95 - t240, -t259, -t269, t85, t52, 0, -t83, 0, 0, -qJD(4) * t30 - qJD(5) * t38 + t242, qJD(4) * t32 - qJD(5) * t39 - t241, -t281 + t303, -qJD(4) * t2 - t223; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t195, t193, 0, -t195, 0, 0, t198 * t256, t198 * t201, 0, 0, t85, t52, 0, -t83, 0, 0, qJD(4) * t116 + t188 * t260, qJD(4) * t117 + t219 * t260, 0, qJD(4) * t26; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t282 + t289; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t180, t310, t201, -t180, -t256, 0, -t197 * t201 - t216, t197 * t256 - t215, 0, 0, t309, t311, t312, -t309, -t142, 0, -t222 - t315, -t221 + t318, t226 + t249, (-t133 * t296 - t206 * t231) * t286 + t213; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t309, t311, t312, -t309, -t142, 0, -t217 - t315, -t218 + t318, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t282 + t289; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t256, -t201, 0, 0, 0, 0, 0, 0, 0, 0, -t142, -t312, 0, (-t296 * t188 + t206 * t219) * t286 + t225; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t142, -t312, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t180, -t310, 0, t180, 0, 0, qJD(2) * t94 - t244, qJD(2) * t95 - t243, 0, 0, -t309, -t311, 0, t309, 0, 0, qJD(2) * t30 - t280, -qJD(2) * t32 - t279, -t227, qJD(2) * t2 - t224; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t180, -t310, 0, t180, 0, 0, t216, t215, 0, 0, -t309, -t311, 0, t309, 0, 0, t222, t221, -t226, -t213; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t225; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(5) * t294, -pkin(4) * t234, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t254 * t294, (-t235 - t234) * pkin(4), 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t309, -t311, 0, t309, 0, 0, qJD(2) * t38 - t245, qJD(2) * t39 - t246, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t309, -t311, 0, t309, 0, 0, t217, t218, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t206 * t286, pkin(4) * t235, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t4;