% Calculate vector of cutting torques with Newton-Euler for
% S6RRPRRR1
% Use Code from Maple symbolic Code Generation
%
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% qJDD [6x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d5,d6,theta3]';
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
% m [3x7]
%   vector of cutting torques (contains inertial, gravitational coriolis and centrifugal forces)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-06 19:35
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new = S6RRPRRR1_invdynm_fixb_snew_vp2(qJ, qJD, qJDD, g, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRR1_invdynm_fixb_snew_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRR1_invdynm_fixb_snew_vp2: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRRR1_invdynm_fixb_snew_vp2: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRRR1_invdynm_fixb_snew_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPRRR1_invdynm_fixb_snew_vp2: pkin has to be [11x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRPRRR1_invdynm_fixb_snew_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRPRRR1_invdynm_fixb_snew_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RRPRRR1_invdynm_fixb_snew_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_linkframe_m_i_i_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 19:29:28
% EndTime: 2019-05-06 19:30:36
% DurationCPUTime: 52.24s
% Computational Cost: add. (860821->385), mult. (2075823->488), div. (0->0), fcn. (1592661->12), ass. (0->153)
t336 = sin(qJ(2));
t341 = cos(qJ(2));
t362 = qJD(1) * qJD(2);
t312 = qJDD(1) * t336 + t341 * t362;
t337 = sin(qJ(1));
t342 = cos(qJ(1));
t319 = -g(1) * t342 - g(2) * t337;
t343 = qJD(1) ^ 2;
t307 = -pkin(1) * t343 + qJDD(1) * pkin(7) + t319;
t365 = t336 * t307;
t366 = pkin(2) * t343;
t272 = qJDD(2) * pkin(2) - t312 * qJ(3) - t365 + (qJ(3) * t362 + t336 * t366 - g(3)) * t341;
t293 = -g(3) * t336 + t341 * t307;
t313 = qJDD(1) * t341 - t336 * t362;
t364 = qJD(1) * t336;
t315 = qJD(2) * pkin(2) - qJ(3) * t364;
t330 = t341 ^ 2;
t273 = qJ(3) * t313 - qJD(2) * t315 - t330 * t366 + t293;
t331 = sin(pkin(11));
t332 = cos(pkin(11));
t302 = (t331 * t341 + t332 * t336) * qJD(1);
t245 = -0.2e1 * qJD(3) * t302 + t332 * t272 - t331 * t273;
t291 = t312 * t332 + t313 * t331;
t301 = (-t331 * t336 + t332 * t341) * qJD(1);
t229 = (qJD(2) * t301 - t291) * pkin(8) + (t301 * t302 + qJDD(2)) * pkin(3) + t245;
t246 = 0.2e1 * qJD(3) * t301 + t331 * t272 + t332 * t273;
t290 = -t312 * t331 + t313 * t332;
t296 = qJD(2) * pkin(3) - pkin(8) * t302;
t300 = t301 ^ 2;
t231 = -pkin(3) * t300 + pkin(8) * t290 - qJD(2) * t296 + t246;
t335 = sin(qJ(4));
t340 = cos(qJ(4));
t208 = t340 * t229 - t335 * t231;
t282 = t301 * t340 - t302 * t335;
t253 = qJD(4) * t282 + t290 * t335 + t291 * t340;
t283 = t301 * t335 + t302 * t340;
t326 = qJDD(2) + qJDD(4);
t327 = qJD(2) + qJD(4);
t204 = (t282 * t327 - t253) * pkin(9) + (t282 * t283 + t326) * pkin(4) + t208;
t209 = t335 * t229 + t340 * t231;
t252 = -qJD(4) * t283 + t290 * t340 - t291 * t335;
t277 = pkin(4) * t327 - pkin(9) * t283;
t278 = t282 ^ 2;
t206 = -pkin(4) * t278 + pkin(9) * t252 - t277 * t327 + t209;
t334 = sin(qJ(5));
t339 = cos(qJ(5));
t201 = t334 * t204 + t339 * t206;
t266 = t282 * t334 + t283 * t339;
t220 = -qJD(5) * t266 + t252 * t339 - t253 * t334;
t265 = t282 * t339 - t283 * t334;
t240 = -mrSges(6,1) * t265 + mrSges(6,2) * t266;
t324 = qJD(5) + t327;
t257 = mrSges(6,1) * t324 - mrSges(6,3) * t266;
t323 = qJDD(5) + t326;
t241 = -pkin(5) * t265 - pkin(10) * t266;
t322 = t324 ^ 2;
t198 = -pkin(5) * t322 + pkin(10) * t323 + t241 * t265 + t201;
t318 = t337 * g(1) - t342 * g(2);
t355 = -qJDD(1) * pkin(1) - t318;
t274 = -t313 * pkin(2) + qJDD(3) + t315 * t364 + (-qJ(3) * t330 - pkin(7)) * t343 + t355;
t243 = -t290 * pkin(3) - t300 * pkin(8) + t302 * t296 + t274;
t214 = -t252 * pkin(4) - t278 * pkin(9) + t283 * t277 + t243;
t221 = qJD(5) * t265 + t252 * t334 + t253 * t339;
t202 = t214 + (-t265 * t324 - t221) * pkin(10) + (t266 * t324 - t220) * pkin(5);
t333 = sin(qJ(6));
t338 = cos(qJ(6));
t195 = -t198 * t333 + t202 * t338;
t254 = -t266 * t333 + t324 * t338;
t212 = qJD(6) * t254 + t221 * t338 + t323 * t333;
t219 = qJDD(6) - t220;
t255 = t266 * t338 + t324 * t333;
t232 = -mrSges(7,1) * t254 + mrSges(7,2) * t255;
t261 = qJD(6) - t265;
t233 = -mrSges(7,2) * t261 + mrSges(7,3) * t254;
t191 = m(7) * t195 + mrSges(7,1) * t219 - mrSges(7,3) * t212 - t232 * t255 + t233 * t261;
t196 = t198 * t338 + t202 * t333;
t211 = -qJD(6) * t255 - t221 * t333 + t323 * t338;
t234 = mrSges(7,1) * t261 - mrSges(7,3) * t255;
t192 = m(7) * t196 - mrSges(7,2) * t219 + mrSges(7,3) * t211 + t232 * t254 - t234 * t261;
t357 = -t191 * t333 + t338 * t192;
t178 = m(6) * t201 - mrSges(6,2) * t323 + mrSges(6,3) * t220 + t240 * t265 - t257 * t324 + t357;
t200 = t204 * t339 - t206 * t334;
t256 = -mrSges(6,2) * t324 + mrSges(6,3) * t265;
t197 = -pkin(5) * t323 - pkin(10) * t322 + t241 * t266 - t200;
t352 = -m(7) * t197 + t211 * mrSges(7,1) - mrSges(7,2) * t212 + t254 * t233 - t234 * t255;
t187 = m(6) * t200 + mrSges(6,1) * t323 - mrSges(6,3) * t221 - t240 * t266 + t256 * t324 + t352;
t173 = t334 * t178 + t339 * t187;
t267 = -mrSges(5,1) * t282 + mrSges(5,2) * t283;
t275 = -mrSges(5,2) * t327 + mrSges(5,3) * t282;
t170 = m(5) * t208 + mrSges(5,1) * t326 - mrSges(5,3) * t253 - t267 * t283 + t275 * t327 + t173;
t276 = mrSges(5,1) * t327 - mrSges(5,3) * t283;
t358 = t339 * t178 - t187 * t334;
t171 = m(5) * t209 - mrSges(5,2) * t326 + mrSges(5,3) * t252 + t267 * t282 - t276 * t327 + t358;
t164 = t340 * t170 + t335 * t171;
t286 = -mrSges(4,1) * t301 + mrSges(4,2) * t302;
t294 = -qJD(2) * mrSges(4,2) + mrSges(4,3) * t301;
t161 = m(4) * t245 + qJDD(2) * mrSges(4,1) - mrSges(4,3) * t291 + qJD(2) * t294 - t286 * t302 + t164;
t295 = qJD(2) * mrSges(4,1) - mrSges(4,3) * t302;
t359 = -t170 * t335 + t340 * t171;
t162 = m(4) * t246 - qJDD(2) * mrSges(4,2) + mrSges(4,3) * t290 - qJD(2) * t295 + t286 * t301 + t359;
t156 = t332 * t161 + t331 * t162;
t292 = -t341 * g(3) - t365;
t304 = Ifges(3,6) * qJD(2) + (Ifges(3,4) * t336 + Ifges(3,2) * t341) * qJD(1);
t305 = Ifges(3,5) * qJD(2) + (Ifges(3,1) * t336 + Ifges(3,4) * t341) * qJD(1);
t280 = Ifges(4,4) * t302 + Ifges(4,2) * t301 + Ifges(4,6) * qJD(2);
t281 = Ifges(4,1) * t302 + Ifges(4,4) * t301 + Ifges(4,5) * qJD(2);
t259 = Ifges(5,4) * t283 + Ifges(5,2) * t282 + Ifges(5,6) * t327;
t260 = Ifges(5,1) * t283 + Ifges(5,4) * t282 + Ifges(5,5) * t327;
t222 = Ifges(7,5) * t255 + Ifges(7,6) * t254 + Ifges(7,3) * t261;
t224 = Ifges(7,1) * t255 + Ifges(7,4) * t254 + Ifges(7,5) * t261;
t184 = -mrSges(7,1) * t197 + mrSges(7,3) * t196 + Ifges(7,4) * t212 + Ifges(7,2) * t211 + Ifges(7,6) * t219 - t222 * t255 + t224 * t261;
t223 = Ifges(7,4) * t255 + Ifges(7,2) * t254 + Ifges(7,6) * t261;
t185 = mrSges(7,2) * t197 - mrSges(7,3) * t195 + Ifges(7,1) * t212 + Ifges(7,4) * t211 + Ifges(7,5) * t219 + t222 * t254 - t223 * t261;
t236 = Ifges(6,4) * t266 + Ifges(6,2) * t265 + Ifges(6,6) * t324;
t237 = Ifges(6,1) * t266 + Ifges(6,4) * t265 + Ifges(6,5) * t324;
t350 = -mrSges(6,1) * t200 + mrSges(6,2) * t201 - Ifges(6,5) * t221 - Ifges(6,6) * t220 - Ifges(6,3) * t323 - pkin(5) * t352 - pkin(10) * t357 - t338 * t184 - t333 * t185 - t266 * t236 + t265 * t237;
t347 = -mrSges(5,1) * t208 + mrSges(5,2) * t209 - Ifges(5,5) * t253 - Ifges(5,6) * t252 - Ifges(5,3) * t326 - pkin(4) * t173 - t283 * t259 + t282 * t260 + t350;
t345 = mrSges(4,1) * t245 - mrSges(4,2) * t246 + Ifges(4,5) * t291 + Ifges(4,6) * t290 + Ifges(4,3) * qJDD(2) + pkin(3) * t164 + t302 * t280 - t301 * t281 - t347;
t367 = mrSges(3,1) * t292 - mrSges(3,2) * t293 + Ifges(3,5) * t312 + Ifges(3,6) * t313 + Ifges(3,3) * qJDD(2) + pkin(2) * t156 + (t304 * t336 - t305 * t341) * qJD(1) + t345;
t180 = t338 * t191 + t333 * t192;
t363 = qJD(1) * t341;
t311 = (-mrSges(3,1) * t341 + mrSges(3,2) * t336) * qJD(1);
t317 = -qJD(2) * mrSges(3,2) + mrSges(3,3) * t363;
t154 = m(3) * t292 + qJDD(2) * mrSges(3,1) - mrSges(3,3) * t312 + qJD(2) * t317 - t311 * t364 + t156;
t316 = qJD(2) * mrSges(3,1) - mrSges(3,3) * t364;
t360 = -t161 * t331 + t332 * t162;
t155 = m(3) * t293 - qJDD(2) * mrSges(3,2) + mrSges(3,3) * t313 - qJD(2) * t316 + t311 * t363 + t360;
t361 = -t154 * t336 + t341 * t155;
t354 = m(6) * t214 - t220 * mrSges(6,1) + t221 * mrSges(6,2) - t265 * t256 + t266 * t257 + t180;
t235 = Ifges(6,5) * t266 + Ifges(6,6) * t265 + Ifges(6,3) * t324;
t165 = mrSges(6,2) * t214 - mrSges(6,3) * t200 + Ifges(6,1) * t221 + Ifges(6,4) * t220 + Ifges(6,5) * t323 - pkin(10) * t180 - t184 * t333 + t185 * t338 + t235 * t265 - t236 * t324;
t349 = mrSges(7,1) * t195 - mrSges(7,2) * t196 + Ifges(7,5) * t212 + Ifges(7,6) * t211 + Ifges(7,3) * t219 + t223 * t255 - t224 * t254;
t166 = -mrSges(6,1) * t214 + mrSges(6,3) * t201 + Ifges(6,4) * t221 + Ifges(6,2) * t220 + Ifges(6,6) * t323 - pkin(5) * t180 - t235 * t266 + t237 * t324 - t349;
t258 = Ifges(5,5) * t283 + Ifges(5,6) * t282 + Ifges(5,3) * t327;
t152 = -mrSges(5,1) * t243 + mrSges(5,3) * t209 + Ifges(5,4) * t253 + Ifges(5,2) * t252 + Ifges(5,6) * t326 - pkin(4) * t354 + pkin(9) * t358 + t334 * t165 + t339 * t166 - t283 * t258 + t327 * t260;
t157 = mrSges(5,2) * t243 - mrSges(5,3) * t208 + Ifges(5,1) * t253 + Ifges(5,4) * t252 + Ifges(5,5) * t326 - pkin(9) * t173 + t165 * t339 - t166 * t334 + t258 * t282 - t259 * t327;
t279 = Ifges(4,5) * t302 + Ifges(4,6) * t301 + Ifges(4,3) * qJD(2);
t351 = m(5) * t243 - t252 * mrSges(5,1) + t253 * mrSges(5,2) - t282 * t275 + t283 * t276 + t354;
t147 = -mrSges(4,1) * t274 + mrSges(4,3) * t246 + Ifges(4,4) * t291 + Ifges(4,2) * t290 + Ifges(4,6) * qJDD(2) - pkin(3) * t351 + pkin(8) * t359 + qJD(2) * t281 + t340 * t152 + t335 * t157 - t302 * t279;
t148 = mrSges(4,2) * t274 - mrSges(4,3) * t245 + Ifges(4,1) * t291 + Ifges(4,4) * t290 + Ifges(4,5) * qJDD(2) - pkin(8) * t164 - qJD(2) * t280 - t152 * t335 + t157 * t340 + t279 * t301;
t303 = Ifges(3,3) * qJD(2) + (Ifges(3,5) * t336 + Ifges(3,6) * t341) * qJD(1);
t306 = -t343 * pkin(7) + t355;
t348 = m(4) * t274 - t290 * mrSges(4,1) + t291 * mrSges(4,2) - t301 * t294 + t302 * t295 + t351;
t143 = -mrSges(3,1) * t306 + mrSges(3,3) * t293 + Ifges(3,4) * t312 + Ifges(3,2) * t313 + Ifges(3,6) * qJDD(2) - pkin(2) * t348 + qJ(3) * t360 + qJD(2) * t305 + t332 * t147 + t331 * t148 - t303 * t364;
t145 = mrSges(3,2) * t306 - mrSges(3,3) * t292 + Ifges(3,1) * t312 + Ifges(3,4) * t313 + Ifges(3,5) * qJDD(2) - qJ(3) * t156 - qJD(2) * t304 - t147 * t331 + t148 * t332 + t303 * t363;
t346 = -m(3) * t306 + t313 * mrSges(3,1) - t312 * mrSges(3,2) - t316 * t364 + t317 * t363 - t348;
t353 = mrSges(2,1) * t318 - mrSges(2,2) * t319 + Ifges(2,3) * qJDD(1) + pkin(1) * t346 + pkin(7) * t361 + t341 * t143 + t336 * t145;
t174 = m(2) * t318 + qJDD(1) * mrSges(2,1) - t343 * mrSges(2,2) + t346;
t151 = t154 * t341 + t155 * t336;
t149 = m(2) * t319 - mrSges(2,1) * t343 - qJDD(1) * mrSges(2,2) + t361;
t146 = mrSges(2,1) * g(3) + mrSges(2,3) * t319 + t343 * Ifges(2,5) + Ifges(2,6) * qJDD(1) - pkin(1) * t151 - t367;
t141 = -mrSges(2,2) * g(3) - mrSges(2,3) * t318 + Ifges(2,5) * qJDD(1) - Ifges(2,6) * t343 - pkin(7) * t151 - t143 * t336 + t145 * t341;
t1 = [-mrSges(1,2) * g(3) + mrSges(1,3) * g(2) + t342 * t141 - t337 * t146 - pkin(6) * (t149 * t337 + t174 * t342), t141, t145, t148, t157, t165, t185; mrSges(1,1) * g(3) - mrSges(1,3) * g(1) + t337 * t141 + t342 * t146 + pkin(6) * (t149 * t342 - t174 * t337), t146, t143, t147, t152, t166, t184; -mrSges(1,1) * g(2) + mrSges(1,2) * g(1) + t353, t353, t367, t345, -t347, -t350, t349;];
m_new  = t1;
