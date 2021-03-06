% Calculate vector of centrifugal and Coriolis load on the joints for
% S6RPRRRP4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d5,theta2]';
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
%   joint torques required to compensate Coriolis and centrifugal load

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 06:09
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S6RPRRRP4_coriolisvecJ_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRP4_coriolisvecJ_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRRP4_coriolisvecJ_fixb_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRRP4_coriolisvecJ_fixb_slag_vp2: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRRRP4_coriolisvecJ_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RPRRRP4_coriolisvecJ_fixb_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RPRRRP4_coriolisvecJ_fixb_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 06:07:04
% EndTime: 2019-03-09 06:07:21
% DurationCPUTime: 9.09s
% Computational Cost: add. (12757->519), mult. (34123->680), div. (0->0), fcn. (26556->8), ass. (0->236)
t387 = Ifges(6,4) + Ifges(7,4);
t388 = Ifges(6,1) + Ifges(7,1);
t377 = Ifges(6,5) + Ifges(7,5);
t386 = Ifges(6,2) + Ifges(7,2);
t376 = Ifges(6,6) + Ifges(7,6);
t228 = cos(qJ(5));
t390 = t387 * t228;
t225 = sin(qJ(5));
t389 = t387 * t225;
t385 = -t376 * t225 + t377 * t228;
t384 = -t386 * t225 + t390;
t383 = t388 * t228 - t389;
t222 = qJD(3) + qJD(4);
t223 = sin(pkin(10));
t227 = sin(qJ(3));
t224 = cos(pkin(10));
t230 = cos(qJ(3));
t301 = t224 * t230;
t202 = -t223 * t227 + t301;
t192 = t202 * qJD(1);
t203 = t223 * t230 + t224 * t227;
t193 = t203 * qJD(1);
t226 = sin(qJ(4));
t229 = cos(qJ(4));
t251 = t192 * t226 + t229 * t193;
t150 = t222 * t228 - t225 * t251;
t279 = t229 * t192 - t193 * t226;
t160 = qJD(5) - t279;
t151 = t222 * t225 + t228 * t251;
t379 = t387 * t151;
t373 = t386 * t150 + t376 * t160 + t379;
t382 = -t373 / 0.2e1;
t381 = t387 * t150;
t359 = t279 * t225;
t380 = qJ(6) * t359 + t228 * qJD(6);
t378 = pkin(5) * t359;
t194 = t202 * qJD(3);
t184 = qJD(1) * t194;
t195 = t203 * qJD(3);
t185 = qJD(1) * t195;
t123 = qJD(4) * t251 + t184 * t226 + t229 * t185;
t122 = qJD(4) * t279 + t184 * t229 - t185 * t226;
t82 = qJD(5) * t150 + t122 * t228;
t83 = -qJD(5) * t151 - t122 * t225;
t375 = t376 * t123 + t386 * t83 + t387 * t82;
t374 = t377 * t123 + t387 * t83 + t388 * t82;
t362 = t388 * t151 + t377 * t160 + t381;
t215 = pkin(3) * t226 + pkin(9);
t300 = -qJ(6) - t215;
t278 = qJD(5) * t300;
t318 = pkin(3) * qJD(4);
t291 = t229 * t318;
t219 = t228 * qJ(6);
t353 = pkin(5) * t251 - t219 * t279;
t127 = pkin(4) * t251 - pkin(9) * t279;
t101 = pkin(3) * t193 + t127;
t327 = pkin(7) + qJ(2);
t208 = t327 * t223;
t204 = qJD(1) * t208;
t209 = t327 * t224;
t205 = qJD(1) * t209;
t170 = -t204 * t227 + t205 * t230;
t149 = pkin(8) * t192 + t170;
t143 = t226 * t149;
t169 = -t230 * t204 - t205 * t227;
t148 = -pkin(8) * t193 + t169;
t96 = t148 * t229 - t143;
t47 = t228 * t101 - t225 * t96;
t372 = -t353 - t47 + (-qJD(6) - t291) * t225 + t228 * t278;
t25 = -mrSges(6,1) * t83 + mrSges(6,2) * t82;
t214 = qJD(2) * t301;
t293 = qJD(1) * qJD(2);
t296 = qJD(3) * t230;
t141 = -t204 * t296 + qJD(1) * t214 + (-qJD(3) * t205 - t223 * t293) * t227;
t131 = -pkin(8) * t185 + t141;
t246 = t203 * qJD(2);
t142 = -qJD(1) * t246 - qJD(3) * t170;
t237 = -pkin(8) * t184 + t142;
t144 = t229 * t149;
t145 = qJD(3) * pkin(3) + t148;
t93 = t145 * t226 + t144;
t33 = qJD(4) * t93 + t131 * t226 - t229 * t237;
t371 = m(6) * t33 + t25;
t48 = t225 * t101 + t228 * t96;
t370 = t225 * t278 + t228 * t291 + t380 - t48;
t295 = qJD(5) * t225;
t290 = pkin(5) * t295;
t95 = t148 * t226 + t144;
t369 = t226 * t318 + t290 - t378 - t95;
t367 = t377 * t225 + t376 * t228;
t366 = t386 * t228 + t389;
t365 = t388 * t225 + t390;
t268 = mrSges(7,1) * t225 + mrSges(7,2) * t228;
t270 = mrSges(6,1) * t225 + mrSges(6,2) * t228;
t344 = t151 / 0.2e1;
t92 = t145 * t229 - t143;
t86 = -pkin(4) * t222 - t92;
t60 = -pkin(5) * t150 + qJD(6) + t86;
t364 = t60 * t268 + t86 * t270 + t384 * t150 / 0.2e1 + t383 * t344 + t385 * t160 / 0.2e1;
t347 = -t150 / 0.2e1;
t345 = -t151 / 0.2e1;
t342 = -t160 / 0.2e1;
t316 = t279 * Ifges(5,2);
t363 = t316 / 0.2e1;
t326 = -qJ(6) - pkin(9);
t281 = qJD(5) * t326;
t49 = t228 * t127 - t225 * t92;
t361 = -qJD(6) * t225 + t228 * t281 - t353 - t49;
t50 = t225 * t127 + t228 * t92;
t360 = t225 * t281 + t380 - t50;
t174 = -t230 * t208 - t209 * t227;
t157 = -pkin(8) * t203 + t174;
t175 = -t227 * t208 + t230 * t209;
t158 = pkin(8) * t202 + t175;
t113 = t157 * t226 + t158 * t229;
t105 = t228 * t113;
t168 = t202 * t226 + t203 * t229;
t286 = -pkin(2) * t224 - pkin(1);
t179 = -pkin(3) * t202 + t286;
t250 = t229 * t202 - t203 * t226;
t114 = -pkin(4) * t250 - pkin(9) * t168 + t179;
t55 = t225 * t114 + t105;
t358 = t229 * t157 - t158 * t226;
t87 = pkin(9) * t222 + t93;
t207 = qJD(1) * t286 + qJD(2);
t173 = -pkin(3) * t192 + t207;
t94 = -pkin(4) * t279 - pkin(9) * t251 + t173;
t37 = -t225 * t87 + t228 * t94;
t38 = t225 * t94 + t228 * t87;
t357 = -t225 * t37 + t228 * t38;
t159 = Ifges(5,4) * t279;
t26 = -qJ(6) * t151 + t37;
t22 = pkin(5) * t160 + t26;
t253 = t225 * t38 + t228 * t37;
t27 = qJ(6) * t150 + t38;
t333 = t228 / 0.2e1;
t336 = -t225 / 0.2e1;
t315 = t251 * Ifges(5,1);
t355 = t159 / 0.2e1 + t315 / 0.2e1;
t232 = -t362 * t333 - t355 + (t22 * t228 + t225 * t27) * mrSges(7,3) - t364 + t92 * mrSges(5,3) - t173 * mrSges(5,2) - t222 * Ifges(5,5) - t373 * t336 + t253 * mrSges(6,3);
t356 = -t159 / 0.2e1 + t232;
t354 = (m(3) * qJ(2) + mrSges(3,3)) * (t223 ^ 2 + t224 ^ 2);
t287 = Ifges(7,3) / 0.2e1 + Ifges(6,3) / 0.2e1;
t288 = Ifges(6,6) / 0.2e1 + Ifges(7,6) / 0.2e1;
t289 = Ifges(6,5) / 0.2e1 + Ifges(7,5) / 0.2e1;
t352 = t288 * t150 + t289 * t151 + t287 * t160 + t173 * mrSges(5,1) + t37 * mrSges(6,1) + t22 * mrSges(7,1) - t38 * mrSges(6,2) - t27 * mrSges(7,2) - t93 * mrSges(5,3) - Ifges(5,4) * t251 - t222 * Ifges(5,6) - t363 - t376 * t347 - t377 * t345 - (Ifges(6,3) + Ifges(7,3)) * t342;
t351 = t82 / 0.2e1;
t350 = t83 / 0.2e1;
t348 = t123 / 0.2e1;
t339 = -t193 / 0.2e1;
t338 = t194 / 0.2e1;
t337 = -t195 / 0.2e1;
t332 = pkin(3) * t185;
t331 = pkin(3) * t195;
t330 = pkin(3) * t229;
t329 = pkin(9) * t228;
t294 = qJD(5) * t228;
t32 = t92 * qJD(4) + t229 * t131 + t226 * t237;
t53 = pkin(4) * t123 - pkin(9) * t122 + t332;
t7 = t225 * t53 + t228 * t32 + t94 * t294 - t295 * t87;
t328 = t228 * t7;
t317 = t358 * t33;
t314 = t193 * Ifges(4,4);
t309 = -mrSges(5,1) * t222 - mrSges(6,1) * t150 + mrSges(6,2) * t151 + mrSges(5,3) * t251;
t304 = t168 * t225;
t302 = t215 * t228;
t154 = -t208 * t296 + t214 + (-qJD(2) * t223 - qJD(3) * t209) * t227;
t137 = -pkin(8) * t195 + t154;
t155 = -qJD(3) * t175 - t246;
t138 = -pkin(8) * t194 + t155;
t45 = qJD(4) * t358 + t137 * t229 + t138 * t226;
t129 = qJD(4) * t250 + t194 * t229 - t195 * t226;
t130 = qJD(4) * t168 + t194 * t226 + t229 * t195;
t59 = pkin(4) * t130 - pkin(9) * t129 + t331;
t292 = t114 * t294 + t225 * t59 + t228 * t45;
t217 = -pkin(5) * t228 - pkin(4);
t285 = t168 * t294;
t24 = -t83 * mrSges(7,1) + t82 * mrSges(7,2);
t282 = -t225 * t45 + t228 * t59;
t280 = t123 * mrSges(5,1) + t122 * mrSges(5,2);
t54 = -t113 * t225 + t228 * t114;
t8 = -qJD(5) * t38 - t225 * t32 + t228 * t53;
t1 = pkin(5) * t123 - qJ(6) * t82 - qJD(6) * t151 + t8;
t276 = -t8 * mrSges(6,3) - t1 * mrSges(7,3);
t275 = -t37 * mrSges(6,3) - t22 * mrSges(7,3);
t274 = -t38 * mrSges(6,3) - t27 * mrSges(7,3);
t3 = qJ(6) * t83 + qJD(6) * t150 + t7;
t273 = -t1 * t228 - t225 * t3;
t272 = -t225 * t7 - t228 * t8;
t271 = mrSges(6,1) * t228 - mrSges(6,2) * t225;
t269 = mrSges(7,1) * t228 - mrSges(7,2) * t225;
t254 = t22 * t225 - t228 * t27;
t249 = -qJ(6) * t129 - qJD(6) * t168;
t239 = t8 * mrSges(6,1) + t1 * mrSges(7,1) - t7 * mrSges(6,2) - t3 * mrSges(7,2);
t46 = qJD(4) * t113 + t137 * t226 - t229 * t138;
t238 = m(6) * (-qJD(5) * t253 - t8 * t225 + t328);
t12 = -pkin(5) * t83 + t33;
t235 = t3 * t228 * mrSges(7,3) - t32 * mrSges(5,2) + mrSges(6,3) * t328 + Ifges(5,5) * t122 - Ifges(5,6) * t123 - t12 * t269 + t365 * t351 + t366 * t350 + t367 * t348 + t374 * t225 / 0.2e1 + t375 * t333 + (-mrSges(5,1) - t271) * t33 + t295 * t382 + t362 * t294 / 0.2e1 + t364 * qJD(5);
t212 = t219 + t329;
t211 = t326 * t225;
t210 = t217 - t330;
t198 = t219 + t302;
t197 = t300 * t225;
t186 = Ifges(4,4) * t192;
t180 = t184 * mrSges(4,2);
t178 = qJD(3) * mrSges(4,1) - mrSges(4,3) * t193;
t177 = -qJD(3) * mrSges(4,2) + mrSges(4,3) * t192;
t162 = t193 * Ifges(4,1) + Ifges(4,5) * qJD(3) + t186;
t161 = t192 * Ifges(4,2) + Ifges(4,6) * qJD(3) + t314;
t152 = -mrSges(5,2) * t222 + mrSges(5,3) * t279;
t126 = -mrSges(5,1) * t279 + mrSges(5,2) * t251;
t119 = Ifges(6,3) * t123;
t118 = Ifges(7,3) * t123;
t109 = mrSges(6,1) * t160 - mrSges(6,3) * t151;
t108 = mrSges(7,1) * t160 - mrSges(7,3) * t151;
t107 = -mrSges(6,2) * t160 + mrSges(6,3) * t150;
t106 = -mrSges(7,2) * t160 + mrSges(7,3) * t150;
t97 = -mrSges(7,1) * t150 + mrSges(7,2) * t151;
t84 = pkin(5) * t304 - t358;
t81 = Ifges(6,5) * t82;
t80 = Ifges(7,5) * t82;
t79 = Ifges(6,6) * t83;
t78 = Ifges(7,6) * t83;
t61 = t93 + t378;
t44 = -qJ(6) * t304 + t55;
t42 = -mrSges(6,2) * t123 + mrSges(6,3) * t83;
t41 = -mrSges(7,2) * t123 + mrSges(7,3) * t83;
t40 = mrSges(6,1) * t123 - mrSges(6,3) * t82;
t39 = mrSges(7,1) * t123 - mrSges(7,3) * t82;
t34 = -pkin(5) * t250 - t168 * t219 + t54;
t21 = (t129 * t225 + t285) * pkin(5) + t46;
t10 = -qJD(5) * t55 + t282;
t9 = -t113 * t295 + t292;
t5 = -qJ(6) * t285 + (-qJD(5) * t113 + t249) * t225 + t292;
t4 = pkin(5) * t130 + t249 * t228 + (-t105 + (qJ(6) * t168 - t114) * t225) * qJD(5) + t282;
t2 = [0.2e1 * t354 * t293 + m(5) * (-t317 + t113 * t32 + t45 * t93 - t46 * t92 + (t173 * t195 + t179 * t185) * pkin(3)) + m(6) * (t10 * t37 + t38 * t9 + t46 * t86 + t54 * t8 + t55 * t7 - t317) - (-t32 * mrSges(5,3) + mrSges(5,1) * t332 + t80 / 0.2e1 + t78 / 0.2e1 + t118 / 0.2e1 + t81 / 0.2e1 + t79 / 0.2e1 + t119 / 0.2e1 - Ifges(5,4) * t122 + t288 * t83 + t289 * t82 + (Ifges(5,2) + t287) * t123 + t239) * t250 + (t141 * t202 - t142 * t203 - t169 * t194 - t170 * t195 - t174 * t184 - t175 * t185) * mrSges(4,3) + (-t202 * t185 + t192 * t337) * Ifges(4,2) + (t202 * t184 - t203 * t185 + t192 * t338 + t193 * t337) * Ifges(4,4) + t286 * (t185 * mrSges(4,1) + t180) + (-t232 + t355) * t129 + (-t316 / 0.2e1 + t352) * t130 + (t12 * t268 + mrSges(5,2) * t332 + Ifges(5,1) * t122 - Ifges(5,4) * t123 + (mrSges(5,3) + t270) * t33 + t273 * mrSges(7,3) + t272 * mrSges(6,3) + (-mrSges(6,3) * t357 + mrSges(7,3) * t254 + t228 * t382 + t269 * t60 + t271 * t86 + t367 * t342 + t365 * t345 + t366 * t347) * qJD(5) + t383 * t351 + t384 * t350 + t385 * t348 + t374 * t333 + (qJD(5) * t362 + t375) * t336) * t168 + (-t113 * t123 - t122 * t358) * mrSges(5,3) - t358 * t25 + qJD(3) * (Ifges(4,5) * t194 - Ifges(4,6) * t195) / 0.2e1 + t207 * (mrSges(4,1) * t195 + mrSges(4,2) * t194) + m(7) * (t1 * t34 + t12 * t84 + t21 * t60 + t22 * t4 + t27 * t5 + t3 * t44) + m(4) * (t141 * t175 + t142 * t174 + t154 * t170 + t155 * t169) + t54 * t40 + t161 * t337 + t162 * t338 + t44 * t41 + t34 * t39 + (t203 * t184 + t193 * t338) * Ifges(4,1) + t126 * t331 + t309 * t46 + t55 * t42 + t84 * t24 + t21 * t97 + t5 * t106 + t9 * t107 + t4 * t108 + t10 * t109 + t45 * t152 + t154 * t177 + t155 * t178 + t179 * t280; -t279 * t152 - t192 * t177 + t193 * t178 + t180 - (-m(5) * pkin(3) - mrSges(4,1)) * t185 + (-t97 - t309) * t251 + (t39 + t40 + t160 * (t106 + t107)) * t228 + (t41 + t42 - t160 * (t108 + t109)) * t225 - m(5) * (-t251 * t92 + t279 * t93) - m(4) * (-t169 * t193 + t170 * t192) + t280 - t354 * qJD(1) ^ 2 + (-t160 * t254 - t251 * t60 - t273) * m(7) + (t160 * t357 - t251 * t86 - t272) * m(6); (-t315 / 0.2e1 + t356) * t279 + (-t193 * t126 + (-t122 * t229 - t123 * t226) * mrSges(5,3) + (t309 * t226 + (t228 * t107 - t225 * t109 + t152) * t229 + m(6) * (t226 * t86 + t229 * t357)) * qJD(4) + (0.2e1 * t173 * t339 + t226 * t32 - t229 * t33 + (-t226 * t92 + t229 * t93) * qJD(4)) * m(5)) * pkin(3) - (-Ifges(4,2) * t193 + t162 + t186) * t192 / 0.2e1 + t369 * t97 + t370 * t106 + t371 * (-pkin(4) - t330) + (t1 * t197 + t12 * t210 + t198 * t3 + t372 * t22 + t370 * t27 + t369 * t60) * m(7) + t372 * t108 + (-t352 + t363) * t251 - m(5) * (-t92 * t95 + t93 * t96) + (t169 * t192 + t170 * t193) * mrSges(4,3) + t235 + (Ifges(4,1) * t192 - t314) * t339 + t42 * t302 - m(6) * (t37 * t47 + t38 * t48 + t86 * t95) - t309 * t95 + t215 * t238 - t48 * t107 - t47 * t109 - t141 * mrSges(4,2) + t142 * mrSges(4,1) - t96 * t152 - t169 * t177 + t170 * t178 + Ifges(4,5) * t184 - Ifges(4,6) * t185 + t193 * t161 / 0.2e1 - qJD(3) * (Ifges(4,5) * t192 - Ifges(4,6) * t193) / 0.2e1 + t197 * t39 + t198 * t41 - t207 * (mrSges(4,1) * t193 + mrSges(4,2) * t192) + t210 * t24 + ((-t109 * t215 + t275) * t228 + (-t107 * t215 + t274) * t225) * qJD(5) + (-t215 * t40 + t276) * t225; t360 * t106 - t309 * t93 - m(6) * (t37 * t49 + t38 * t50 + t86 * t93) + pkin(9) * t238 + t235 + t361 * t108 + ((-pkin(9) * t109 + t275) * t228 + (pkin(5) * t97 - pkin(9) * t107 + t274) * t225) * qJD(5) + ((Ifges(5,2) / 0.2e1 - Ifges(5,1) / 0.2e1) * t251 + t356) * t279 + (-pkin(9) * t40 + t276) * t225 - t61 * t97 - t50 * t107 - t49 * t109 - t92 * t152 + t42 * t329 - t352 * t251 + t211 * t39 + t212 * t41 + t217 * t24 - t371 * pkin(4) + (t1 * t211 + t12 * t217 + t212 * t3 + (t290 - t61) * t60 + t360 * t27 + t361 * t22) * m(7); t239 + (t150 * t22 + t151 * t27) * mrSges(7,3) + (t150 * t37 + t151 * t38) * mrSges(6,3) + t81 + t80 + t79 + t78 + t119 + t118 + (-t151 * t97 + t39) * pkin(5) + (-(-t22 + t26) * t27 + (-t151 * t60 + t1) * pkin(5)) * m(7) - t26 * t106 - t37 * t107 + t27 * t108 + t38 * t109 - t60 * (mrSges(7,1) * t151 + mrSges(7,2) * t150) - t86 * (mrSges(6,1) * t151 + mrSges(6,2) * t150) + (t388 * t150 - t379) * t345 + t373 * t344 + (t377 * t150 - t376 * t151) * t342 + (-t386 * t151 + t362 + t381) * t347; -t150 * t106 + t151 * t108 + 0.2e1 * (t12 / 0.2e1 + t27 * t347 + t22 * t344) * m(7) + t24;];
tauc  = t2(:);
