% Calculate vector of centrifugal and coriolis load on the joints for
% S6RRPPRR7
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d5,d6]';
% m_mdh [7x1]
%   mass of all robot links (including the base)
% mrSges [7x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% Ifges [7x6]
%   inertia of all robot links about their respective body frame origins, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertial_parameters_convert_par1_par2.m)
% 
% Output:
% tauc [6x1]
%   joint torques required to compensate coriolis and centrifugal load

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-23 16:53
% Revision: 76f9d5e39f14dc242b53c0d9d3d9db48bd8f37c0
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function tauc = S6RRPPRR7_coriolisvecJ_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPRR7_coriolisvecJ_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPPRR7_coriolisvecJ_fixb_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPPRR7_coriolisvecJ_fixb_slag_vp2: pkin has to be [10x1] (double)');
assert( isreal(m) && all(size(m) == [7 1]), ...
  'S6RRPPRR7_coriolisvecJ_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRPPRR7_coriolisvecJ_fixb_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RRPPRR7_coriolisvecJ_fixb_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-23 16:53:16
% EndTime: 2018-11-23 16:53:27
% DurationCPUTime: 11.00s
% Computational Cost: add. (7379->646), mult. (18629->869), div. (0->0), fcn. (12741->8), ass. (0->284)
t216 = sin(qJ(2));
t211 = sin(pkin(6));
t295 = qJD(1) * t211;
t282 = t216 * t295;
t177 = qJD(5) + t282;
t181 = qJ(4) * t282;
t219 = cos(qJ(2));
t212 = cos(pkin(6));
t290 = t212 * qJD(1);
t288 = pkin(1) * t290;
t193 = t219 * t288;
t296 = pkin(8) * t282 - t193;
t123 = -t181 + t296;
t380 = -qJD(3) - t123;
t215 = sin(qJ(5));
t218 = cos(qJ(5));
t379 = -t380 - t177 * (pkin(5) * t215 - pkin(10) * t218);
t220 = -pkin(2) - pkin(3);
t210 = -pkin(9) + t220;
t281 = t219 * t295;
t292 = qJD(5) * t215;
t154 = pkin(8) * t281 + t216 * t288;
t125 = -qJ(4) * t281 + t154;
t183 = qJ(3) * t281;
t231 = t211 * (pkin(4) * t219 + t210 * t216);
t81 = qJD(1) * t231 + t183;
t51 = t218 * t125 + t215 * t81;
t378 = pkin(10) * t281 + t210 * t292 + t51;
t214 = sin(qJ(6));
t217 = cos(qJ(6));
t197 = qJD(2) + t290;
t276 = qJD(3) + t296;
t269 = -t181 + t276;
t67 = t197 * t210 + t269;
t129 = -pkin(1) * t295 - pkin(2) * t281 - qJ(3) * t282;
t103 = pkin(3) * t281 + qJD(4) - t129;
t238 = (pkin(4) * t216 + pkin(9) * t219) * t211;
t69 = qJD(1) * t238 + t103;
t31 = t215 * t69 + t218 * t67;
t29 = pkin(10) * t177 + t31;
t137 = -t197 * t218 + t215 * t281;
t270 = t218 * t281;
t138 = t215 * t197 + t270;
t180 = t197 * qJ(3);
t98 = -t125 - t180;
t80 = pkin(4) * t197 - t98;
t42 = -pkin(5) * t137 + pkin(10) * t138 + t80;
t12 = -t214 * t29 + t217 * t42;
t13 = t214 * t42 + t217 * t29;
t250 = t12 * t217 + t13 * t214;
t257 = mrSges(7,1) * t214 + mrSges(7,2) * t217;
t30 = -t215 * t67 + t218 * t69;
t28 = -pkin(5) * t177 - t30;
t135 = qJD(6) - t137;
t241 = t138 * t217 - t177 * t214;
t336 = Ifges(7,4) * t241;
t89 = t138 * t214 + t177 * t217;
t33 = Ifges(7,2) * t89 + Ifges(7,6) * t135 - t336;
t337 = t217 / 0.2e1;
t338 = t214 / 0.2e1;
t84 = Ifges(7,4) * t89;
t34 = -Ifges(7,1) * t241 + Ifges(7,5) * t135 + t84;
t377 = t250 * mrSges(7,3) - t28 * t257 + t33 * t338 - t34 * t337;
t376 = -mrSges(4,1) - mrSges(3,1);
t375 = mrSges(4,2) + mrSges(3,3);
t374 = Ifges(3,6) + Ifges(5,5);
t213 = qJ(3) + pkin(4);
t164 = pkin(5) * t218 + pkin(10) * t215 + t213;
t305 = t210 * t218;
t127 = t164 * t217 - t214 * t305;
t373 = qJD(6) * t127 + t214 * t379 - t378 * t217;
t301 = t217 * t218;
t128 = t164 * t214 + t210 * t301;
t372 = -qJD(6) * t128 + t378 * t214 + t217 * t379;
t252 = Ifges(7,5) * t217 - Ifges(7,6) * t214;
t320 = Ifges(7,4) * t217;
t254 = -Ifges(7,2) * t214 + t320;
t321 = Ifges(7,4) * t214;
t256 = Ifges(7,1) * t217 - t321;
t341 = t135 / 0.2e1;
t349 = -t241 / 0.2e1;
t351 = t89 / 0.2e1;
t371 = t252 * t341 + t254 * t351 + t256 * t349 - t377;
t333 = pkin(1) * t219;
t289 = t212 * t333;
t194 = qJD(2) * t289;
t205 = t212 * qJD(3);
t294 = qJD(2) * t216;
t280 = t211 * t294;
t365 = (pkin(8) * t294 + qJD(4) * t219) * t211;
t87 = -qJ(4) * t280 - t194 - t205 + t365;
t176 = qJD(2) * t193;
t178 = t197 * qJD(3);
t275 = qJD(2) * t295;
t268 = t216 * t275;
t70 = -qJ(4) * t268 + qJD(1) * t365 - t176 - t178;
t278 = t218 * t294;
t291 = qJD(5) * t218;
t96 = -t197 * t291 + (t219 * t292 + t278) * t295;
t97 = qJD(5) * t270 + t197 * t292 - t215 * t268;
t27 = -pkin(5) * t97 - pkin(10) * t96 - t70;
t229 = qJD(2) * t231;
t304 = t211 * t216;
t195 = qJD(3) * t304;
t267 = t219 * t275;
t299 = qJ(3) * t267 + qJD(1) * t195;
t59 = qJD(1) * t229 + t299;
t202 = t212 * t216 * pkin(1);
t303 = t211 * t219;
t102 = -qJD(4) * t304 + (t202 + (pkin(8) - qJ(4)) * t303) * qJD(2);
t86 = t102 * qJD(1);
t10 = t215 * t59 + t218 * t86 + t69 * t291 - t292 * t67;
t5 = pkin(10) * t267 + t10;
t1 = qJD(6) * t12 + t214 * t27 + t217 * t5;
t2 = -qJD(6) * t13 - t214 * t5 + t217 * t27;
t259 = t1 * t217 - t2 * t214;
t370 = qJD(5) * t28 - qJD(6) * t250 + t259;
t368 = t197 / 0.2e1;
t367 = -t295 / 0.2e1;
t366 = t295 / 0.2e1;
t134 = Ifges(6,4) * t137;
t319 = Ifges(6,5) * t177;
t323 = Ifges(6,1) * t138;
t62 = t134 + t319 - t323;
t364 = t30 * mrSges(6,3) - t62 / 0.2e1 - t319 / 0.2e1 - t80 * mrSges(6,2) - t134 / 0.2e1;
t306 = qJD(5) * t31;
t11 = -t215 * t86 + t218 * t59 - t306;
t363 = -t12 * t214 + t13 * t217;
t362 = t11 * mrSges(6,1) - t10 * mrSges(6,2) + Ifges(6,5) * t96 + Ifges(6,6) * t97;
t38 = qJD(6) * t89 + t214 * t267 + t217 * t96;
t39 = qJD(6) * t241 - t214 * t96 + t217 * t267;
t14 = -mrSges(7,1) * t39 + mrSges(7,2) * t38;
t72 = mrSges(6,1) * t267 - mrSges(6,3) * t96;
t325 = t72 - t14;
t6 = -pkin(5) * t267 - t11;
t361 = -m(7) * t6 + t325;
t113 = -pkin(2) * t197 + t276;
t187 = Ifges(3,4) * t281;
t287 = Ifges(4,4) / 0.2e1 + Ifges(3,5) / 0.2e1;
t78 = t197 * t220 + t269;
t359 = (Ifges(5,6) / 0.2e1 + t287) * t197 + t103 * mrSges(5,1) + t113 * mrSges(4,2) + t30 * mrSges(6,1) + (-Ifges(5,4) * t219 - Ifges(5,2) * t216) * t367 + (Ifges(4,1) * t216 - Ifges(4,5) * t219) * t366 + Ifges(3,1) * t282 / 0.2e1 + t187 / 0.2e1 + t177 * Ifges(6,3) - t138 * Ifges(6,5) + t137 * Ifges(6,6) - t129 * mrSges(4,3) + t296 * mrSges(3,3) - t31 * mrSges(6,2) - t78 * mrSges(5,3) + (Ifges(5,6) + Ifges(4,4) + Ifges(3,5)) * t368;
t122 = t180 + t154;
t186 = Ifges(4,5) * t282;
t356 = Ifges(4,6) / 0.2e1;
t358 = t103 * mrSges(5,2) + t129 * mrSges(4,1) + Ifges(4,6) * t368 - Ifges(4,3) * t281 / 0.2e1 + t186 / 0.2e1 + (Ifges(3,4) * t216 + t219 * Ifges(3,2)) * t367 + (-t219 * Ifges(5,1) - Ifges(5,4) * t216) * t366 - t122 * mrSges(4,2) - t154 * mrSges(3,3) - t98 * mrSges(5,3) + (t356 - Ifges(3,6) / 0.2e1 - Ifges(5,5) / 0.2e1 - t374 / 0.2e1) * t197;
t142 = -t211 * pkin(1) - pkin(2) * t303 - qJ(3) * t304;
t115 = pkin(3) * t303 - t142;
t83 = t238 + t115;
t198 = pkin(8) * t304;
t260 = -qJ(4) * t304 + t198;
t283 = -pkin(2) - t333;
t274 = -pkin(3) + t283;
t95 = (-pkin(9) + t274) * t212 + t260;
t324 = t215 * t83 + t218 * t95;
t293 = qJD(2) * t219;
t279 = t211 * t293;
t297 = qJ(3) * t279 + t195;
t68 = t229 + t297;
t18 = -qJD(5) * t324 - t102 * t215 + t218 * t68;
t357 = -Ifges(6,2) / 0.2e1;
t355 = t33 / 0.2e1;
t354 = t38 / 0.2e1;
t353 = t39 / 0.2e1;
t352 = -t89 / 0.2e1;
t350 = t241 / 0.2e1;
t348 = -t97 / 0.2e1;
t347 = t97 / 0.2e1;
t346 = m(7) * t28;
t345 = pkin(1) * mrSges(3,1);
t344 = pkin(1) * mrSges(3,2);
t342 = -t135 / 0.2e1;
t157 = -t212 * t218 + t215 * t303;
t340 = t157 / 0.2e1;
t236 = t212 * t215 + t218 * t303;
t339 = -t236 / 0.2e1;
t37 = Ifges(7,5) * t38;
t335 = Ifges(7,5) * t241;
t36 = Ifges(7,6) * t39;
t334 = Ifges(7,6) * t89;
t330 = t96 * Ifges(6,1);
t329 = t96 * Ifges(6,4);
t328 = t97 * Ifges(6,4);
t327 = mrSges(4,2) - mrSges(5,3);
t322 = Ifges(6,4) * t138;
t318 = Ifges(6,2) * t137;
t317 = Ifges(6,6) * t177;
t316 = Ifges(7,3) * t135;
t100 = mrSges(6,1) * t177 + mrSges(6,3) * t138;
t49 = -mrSges(7,1) * t89 - mrSges(7,2) * t241;
t308 = t100 - t49;
t307 = -mrSges(5,1) * t197 + mrSges(6,1) * t137 + mrSges(6,2) * t138 + mrSges(5,3) * t281;
t302 = t215 * t216;
t300 = t197 * t376 + t282 * t375;
t298 = mrSges(5,1) * t267 + mrSges(5,2) * t268;
t160 = pkin(8) * t303 + t202;
t7 = -Ifges(7,3) * t97 + t36 + t37;
t149 = mrSges(4,2) * t281 + mrSges(4,3) * t197;
t286 = -t149 + t307;
t141 = t212 * qJ(3) + t160;
t273 = t220 * t304;
t272 = t215 * t282;
t271 = t218 * t282;
t266 = 0.3e1 / 0.2e1 * Ifges(3,4) + 0.3e1 / 0.2e1 * Ifges(5,4) - 0.3e1 / 0.2e1 * Ifges(4,5);
t263 = t2 * mrSges(7,1) - t1 * mrSges(7,2);
t258 = -mrSges(7,1) * t217 + mrSges(7,2) * t214;
t255 = Ifges(7,1) * t214 + t320;
t253 = Ifges(7,2) * t217 + t321;
t251 = Ifges(7,5) * t214 + Ifges(7,6) * t217;
t25 = -mrSges(7,1) * t97 - mrSges(7,3) * t38;
t26 = mrSges(7,2) * t97 + mrSges(7,3) * t39;
t248 = -t214 * t25 + t217 * t26;
t41 = pkin(10) * t304 + t324;
t114 = qJ(4) * t303 - t141;
t104 = t212 * pkin(4) - t114;
t55 = -pkin(5) * t157 + pkin(10) * t236 + t104;
t22 = t214 * t55 + t217 * t41;
t21 = -t214 * t41 + t217 * t55;
t56 = -mrSges(7,2) * t135 + mrSges(7,3) * t89;
t57 = mrSges(7,1) * t135 + mrSges(7,3) * t241;
t247 = -t214 * t56 - t217 * t57;
t246 = t215 * t31 + t218 * t30;
t47 = -t215 * t95 + t218 * t83;
t50 = -t125 * t215 + t218 * t81;
t242 = qJD(2) * t273;
t155 = -pkin(8) * t280 + t194;
t99 = -mrSges(6,2) * t177 + mrSges(6,3) * t137;
t240 = t214 * t57 - t217 * t56 - t99;
t111 = t214 * t236 + t217 * t304;
t112 = t214 * t304 - t217 * t236;
t17 = t218 * t102 + t215 * t68 + t83 * t291 - t292 * t95;
t139 = -pkin(8) * t268 + t176;
t156 = t160 * qJD(2);
t108 = t139 + t178;
t140 = qJD(1) * t156;
t228 = -t70 * mrSges(5,1) - t139 * mrSges(3,2) + t86 * mrSges(5,2) + t108 * mrSges(4,3) + t140 * t376;
t227 = t323 / 0.2e1 + t364;
t73 = -mrSges(6,2) * t267 + mrSges(6,3) * t97;
t225 = -qJD(5) * t308 + t247 * qJD(6) + t248 + t73;
t32 = t316 + t334 - t335;
t61 = t317 + t318 - t322;
t224 = -t335 / 0.2e1 - t317 / 0.2e1 + t316 / 0.2e1 + t334 / 0.2e1 + t12 * mrSges(7,1) - t13 * mrSges(7,2) + t80 * mrSges(6,1) + t32 / 0.2e1 - t61 / 0.2e1 - t31 * mrSges(6,3) + t322 / 0.2e1;
t223 = (t318 / 0.2e1 - t224) * t215;
t175 = Ifges(4,4) * t267;
t174 = Ifges(3,5) * t267;
t173 = Ifges(4,6) * t268;
t172 = Ifges(6,3) * t267;
t159 = -t198 + t289;
t152 = (mrSges(5,1) * t216 - mrSges(5,2) * t219) * t295;
t151 = pkin(2) * t282 - t183;
t150 = (-mrSges(4,1) * t219 - mrSges(4,3) * t216) * t295;
t148 = -mrSges(3,2) * t197 + mrSges(3,3) * t281;
t144 = mrSges(5,2) * t197 - mrSges(5,3) * t282;
t143 = t212 * t283 + t198;
t136 = t155 + t205;
t133 = (t214 * t219 + t216 * t301) * t295;
t132 = t214 * t271 - t217 * t281;
t131 = t197 * t214 + t217 * t272;
t130 = t197 * t217 - t214 * t272;
t126 = pkin(2) * t280 - t297;
t124 = qJD(1) * t273 + t183;
t110 = qJD(5) * t236 - t215 * t280;
t109 = qJD(5) * t157 + t211 * t278;
t106 = pkin(2) * t268 - t299;
t105 = t212 * t274 + t260;
t101 = t242 + t297;
t85 = qJD(1) * t242 + t299;
t76 = -pkin(5) * t138 - pkin(10) * t137;
t54 = -qJD(6) * t112 - t109 * t214 + t217 * t279;
t53 = qJD(6) * t111 + t109 * t217 + t214 * t279;
t52 = -mrSges(6,1) * t97 + mrSges(6,2) * t96;
t46 = Ifges(6,5) * t267 + t328 + t330;
t45 = t97 * Ifges(6,2) + Ifges(6,6) * t267 + t329;
t43 = -pkin(5) * t281 - t50;
t40 = -pkin(5) * t304 - t47;
t35 = -pkin(5) * t110 - pkin(10) * t109 - t87;
t20 = t214 * t76 + t217 * t30;
t19 = -t214 * t30 + t217 * t76;
t16 = -pkin(5) * t279 - t18;
t15 = pkin(10) * t279 + t17;
t9 = Ifges(7,1) * t38 + Ifges(7,4) * t39 - Ifges(7,5) * t97;
t8 = Ifges(7,4) * t38 + Ifges(7,2) * t39 - Ifges(7,6) * t97;
t4 = -qJD(6) * t22 - t15 * t214 + t217 * t35;
t3 = qJD(6) * t21 + t15 * t217 + t214 * t35;
t23 = [((t142 * mrSges(4,1) - t141 * mrSges(4,2) - t160 * mrSges(3,3) - t114 * mrSges(5,3) + (-t216 * t266 - 0.2e1 * t345) * t211 + (t356 - t374) * t212) * t294 + (t143 * mrSges(4,2) - t159 * mrSges(3,3) - t105 * mrSges(5,3) + Ifges(6,5) * t339 + Ifges(6,6) * t340 - t142 * mrSges(4,3) + (t219 * t266 - 0.2e1 * t344) * t211 + (Ifges(5,6) + t287) * t212 + (0.3e1 / 0.2e1 * Ifges(3,1) - 0.3e1 / 0.2e1 * Ifges(3,2) - 0.3e1 / 0.2e1 * Ifges(5,1) + 0.3e1 / 0.2e1 * Ifges(5,2) + Ifges(6,3) / 0.2e1 + 0.3e1 / 0.2e1 * Ifges(4,1) - 0.3e1 / 0.2e1 * Ifges(4,3)) * t304) * t293) * t295 + (Ifges(7,5) * t112 + Ifges(7,6) * t111 - Ifges(7,3) * t157) * t348 + (Ifges(7,1) * t53 + Ifges(7,4) * t54 - Ifges(7,5) * t110) * t349 + (Ifges(7,4) * t53 + Ifges(7,2) * t54 - Ifges(7,6) * t110) * t351 + (Ifges(7,4) * t112 + Ifges(7,2) * t111 - Ifges(7,6) * t157) * t353 + (Ifges(7,1) * t112 + Ifges(7,4) * t111 - Ifges(7,5) * t157) * t354 + t54 * t355 + t46 * t339 + t45 * t340 + (Ifges(7,5) * t53 + Ifges(7,6) * t54 - Ifges(7,3) * t110) * t341 - t138 * (Ifges(6,1) * t109 + Ifges(6,4) * t110) / 0.2e1 + m(3) * (t139 * t160 - t140 * t159 + t154 * t155 + t156 * t296) + (-Ifges(6,4) * t236 + Ifges(6,2) * t157) * t347 + t96 * (-Ifges(6,1) * t236 + Ifges(6,4) * t157) / 0.2e1 + (t10 * t157 - t109 * t30 + t11 * t236 + t110 * t31) * mrSges(6,3) - t70 * (-mrSges(6,1) * t157 - mrSges(6,2) * t236) + (t174 / 0.2e1 + t175 / 0.2e1 + t173 / 0.2e1 + t228) * t212 + t137 * (Ifges(6,4) * t109 + Ifges(6,2) * t110) / 0.2e1 + m(6) * (t10 * t324 - t104 * t70 + t11 * t47 + t17 * t31 + t18 * t30 - t80 * t87) + t324 * t73 + m(7) * (t1 * t22 + t12 * t4 + t13 * t3 + t16 * t28 + t2 * t21 + t40 * t6) + m(5) * (t101 * t103 + t102 * t78 + t105 * t86 + t114 * t70 + t115 * t85 + t87 * t98) + m(4) * (t106 * t142 + t108 * t141 + t113 * t156 + t122 * t136 + t126 * t129 + t140 * t143) + t307 * t87 + t300 * t156 + t115 * t298 + ((-mrSges(4,1) * t106 + mrSges(4,2) * t108 - mrSges(5,2) * t85 + mrSges(3,3) * t139 + mrSges(5,3) * t70) * t219 + (t172 / 0.2e1 - t106 * mrSges(4,3) + t85 * mrSges(5,1) - t86 * mrSges(5,3) + t375 * t140 + t362) * t216 + (t216 * t358 + t219 * t359) * qJD(2)) * t211 + t1 * (mrSges(7,2) * t157 + mrSges(7,3) * t111) + t2 * (-mrSges(7,1) * t157 - mrSges(7,3) * t112) - t157 * t7 / 0.2e1 + t155 * t148 + t102 * t144 + t136 * t149 + t126 * t150 + t101 * t152 + t13 * (mrSges(7,2) * t110 + mrSges(7,3) * t54) - t110 * t32 / 0.2e1 + t111 * t8 / 0.2e1 + t6 * (-mrSges(7,1) * t111 + mrSges(7,2) * t112) + t112 * t9 / 0.2e1 + t12 * (-mrSges(7,1) * t110 - mrSges(7,3) * t53) + t109 * t62 / 0.2e1 + t80 * (-mrSges(6,1) * t110 + mrSges(6,2) * t109) + t110 * t61 / 0.2e1 + t104 * t52 + t17 * t99 + t18 * t100 + t47 * t72 + t3 * t56 + t4 * t57 + t53 * t34 / 0.2e1 + t28 * (-mrSges(7,1) * t54 + mrSges(7,2) * t53) + t177 * (Ifges(6,5) * t109 + Ifges(6,6) * t110) / 0.2e1 + t21 * t25 + t22 * t26 + t40 * t14 + t16 * t49; (((Ifges(5,6) - Ifges(6,5) * t215 / 0.2e1 - Ifges(6,6) * t218 / 0.2e1 - pkin(2) * mrSges(4,2) - t220 * mrSges(5,3)) * qJD(2) - t187 / 0.2e1 + (t344 + (-Ifges(5,4) / 0.2e1 + Ifges(4,5) / 0.2e1) * t219) * t295 - t359) * t219 + (-t186 / 0.2e1 + (t345 + (Ifges(5,4) / 0.2e1 + Ifges(3,4) / 0.2e1) * t216) * t295 + (Ifges(5,1) / 0.2e1 - Ifges(5,2) / 0.2e1 + Ifges(4,3) / 0.2e1 - Ifges(3,1) / 0.2e1 - Ifges(4,1) / 0.2e1 + Ifges(3,2) / 0.2e1) * t281 + (-qJ(3) * t327 - t374) * qJD(2) + t227 * t218 + t223 - t358) * t216) * t295 + (Ifges(7,5) * t133 - Ifges(7,6) * t132) * t342 + (Ifges(7,1) * t133 - Ifges(7,4) * t132) * t350 + (Ifges(7,4) * t133 - Ifges(7,2) * t132) * t352 + t132 * t355 - (-t148 - t149) * t296 + t228 - m(6) * (-t123 * t80 + t30 * t50 + t31 * t51) + (-t70 * mrSges(6,1) - t329 / 0.2e1 + t37 / 0.2e1 + t36 / 0.2e1 + t7 / 0.2e1 - t45 / 0.2e1 - t10 * mrSges(6,3) + t210 * t73 + (t357 - Ifges(7,3) / 0.2e1) * t97 + t263) * t218 + t173 + t174 + t175 + (-t330 / 0.2e1 - t328 / 0.2e1 + t11 * mrSges(6,3) + t70 * mrSges(6,2) - t6 * t257 - t217 * t9 / 0.2e1 + t8 * t338 + t252 * t347 - t38 * t256 / 0.2e1 - t39 * t254 / 0.2e1 - t46 / 0.2e1 + (t1 * t214 + t2 * t217) * mrSges(7,3) + (-m(6) * t11 - t361) * t210 + (mrSges(7,3) * t363 + t251 * t341 + t253 * t351 + t255 * t349 + t258 * t28 + t33 * t337 + t338 * t34) * qJD(6)) * t215 + (-pkin(2) * t140 + qJ(3) * t108 - t113 * t154 + t122 * t276 - t129 * t151) * m(4) + (t12 * t133 + t13 * t132) * mrSges(7,3) + t372 * t57 + (t1 * t128 + t12 * t372 + t127 * t2 + t13 * t373 - t28 * t43) * m(7) + t373 * t56 + (-t70 * qJ(3) - t103 * t124 - t125 * t78 + t220 * t86 + t380 * t98) * m(5) + (t223 + (-m(6) * t246 - t215 * t99) * t210 + (t252 * t342 + t254 * t352 + t256 * t350 + t227 + (-t308 + t346) * t210 + t377) * t218) * qJD(5) - t307 * t123 + m(6) * (qJD(3) * t80 + t10 * t305 - t213 * t70) - t300 * t154 - t286 * qJD(3) + t213 * t52 - t125 * t144 - t151 * t150 - t124 * t152 - t28 * (mrSges(7,1) * t132 + mrSges(7,2) * t133) - t133 * t34 / 0.2e1 + t128 * t26 + t127 * t25 - t51 * t99 - t50 * t100 - t43 * t49; -t130 * t57 - t131 * t56 + t286 * t197 + ((t150 - t152) * t216 + t327 * t293) * t295 + (t240 * qJD(5) - t99 * t282 - t325) * t215 + (-t308 * t282 + t225) * t218 + ((-qJD(5) * t363 + t6) * t215 + t370 * t218 - t12 * t130 - t13 * t131 + t28 * t271) * m(7) + (t10 * t218 - t11 * t215 - t177 * t246 - t197 * t80) * m(6) + (-t103 * t282 + t197 * t98 + t86) * m(5) + (-t122 * t197 + t129 * t282 + t140) * m(4); -t132 * t57 + t133 * t56 - m(7) * (t12 * t132 - t13 * t133) + m(5) * t85 + (m(6) * (t11 + t306) + (m(7) * t363 - t240) * qJD(5) + t361) * t218 + (m(7) * t370 + m(6) * (-qJD(5) * t30 + t10) + t225) * t215 + (-t307 * t219 + (-t215 * t308 + t218 * t99 + t144) * t216 - m(6) * (-t216 * t218 * t31 - t219 * t80 + t30 * t302) - m(5) * (-t216 * t78 + t219 * t98) + t302 * t346) * t295 + t298; t251 * t348 + t253 * t353 + t255 * t354 + t8 * t337 + t9 * t338 + t362 + ((Ifges(6,1) / 0.2e1 + t357) * t138 + t364 - t371) * t137 + t172 + t6 * t258 + t259 * mrSges(7,3) + t308 * t31 + t224 * t138 + (-pkin(5) * t6 - t12 * t19 - t13 * t20 - t28 * t31) * m(7) + t371 * qJD(6) + (m(7) * t259 + t248 + (-m(7) * t250 + t247) * qJD(6)) * pkin(10) - t30 * t99 - t20 * t56 - t19 * t57 - pkin(5) * t14; -t28 * (-mrSges(7,1) * t241 + mrSges(7,2) * t89) + (Ifges(7,1) * t89 + t336) * t350 + t33 * t349 + (Ifges(7,5) * t89 + Ifges(7,6) * t241) * t342 - t12 * t56 + t13 * t57 + (t12 * t89 - t13 * t241) * mrSges(7,3) + t263 + t7 + (Ifges(7,2) * t241 + t34 + t84) * t352;];
tauc  = t23(:);
