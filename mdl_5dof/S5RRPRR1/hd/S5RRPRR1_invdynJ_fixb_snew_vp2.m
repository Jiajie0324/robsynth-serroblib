% Calculate vector of inverse dynamics joint torques for with Newton-Euler
% S5RRPRR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% qJDD [5x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [4x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a3,a4,d4,d5]';
% m_mdh [6x1]
%   mass of all robot links (including the base)
% mrSges [6x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% Ifges [6x6]
%   inertia of all robot links about their respective body frame origins, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertial_parameters_convert_par1_par2.m)
% 
% Output:
% tauJ [5x1]
%   joint torques of inverse dynamics (contains inertial, gravitational coriolis and centrifugal forces)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 18:26
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauJ = S5RRPRR1_invdynJ_fixb_snew_vp2(qJ, qJD, qJDD, g, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(4,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRR1_invdynJ_fixb_snew_vp2: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPRR1_invdynJ_fixb_snew_vp2: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RRPRR1_invdynJ_fixb_snew_vp2: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRPRR1_invdynJ_fixb_snew_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [4 1]), ...
  'S5RRPRR1_invdynJ_fixb_snew_vp2: pkin has to be [4x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRPRR1_invdynJ_fixb_snew_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RRPRR1_invdynJ_fixb_snew_vp2: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5RRPRR1_invdynJ_fixb_snew_vp2: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_linkframe_tauJ_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:24:07
% EndTime: 2019-12-05 18:24:10
% DurationCPUTime: 1.34s
% Computational Cost: add. (5882->220), mult. (12695->275), div. (0->0), fcn. (7671->8), ass. (0->97)
t378 = sin(qJ(2));
t407 = Ifges(3,4) + Ifges(4,4);
t415 = t378 * t407;
t382 = cos(qJ(2));
t414 = t378 * (Ifges(3,1) + Ifges(4,1)) + t382 * t407;
t406 = Ifges(3,5) + Ifges(4,5);
t412 = -Ifges(3,2) - Ifges(4,2);
t405 = Ifges(3,6) + Ifges(4,6);
t411 = t378 * (-t405 * qJD(2) + (t412 * t382 - t415) * qJD(1));
t377 = sin(qJ(4));
t381 = cos(qJ(4));
t351 = (t378 * t377 - t382 * t381) * qJD(1);
t410 = -pkin(1) - pkin(2);
t409 = cos(qJ(1));
t408 = t382 * g(3);
t404 = -pkin(3) - qJ(3);
t383 = qJD(1) ^ 2;
t403 = t382 ^ 2 * t383;
t379 = sin(qJ(1));
t365 = -t409 * g(1) - t379 * g(2);
t402 = t378 * t365;
t401 = t378 * t383;
t395 = qJD(1) * qJD(2);
t393 = t382 * t395;
t358 = t378 * qJDD(1) + t393;
t394 = qJD(1) * qJD(3);
t387 = qJ(3) * t393 - 0.2e1 * t378 * t394 - t402 + (t401 * t382 + qJDD(2)) * pkin(1);
t313 = qJDD(2) * pkin(2) + t404 * t358 + (pkin(2) * t401 + pkin(3) * t395 - g(3)) * t382 + t387;
t359 = t382 * qJDD(1) - t378 * t395;
t397 = t378 * qJD(1);
t360 = qJD(2) * pkin(1) - qJ(3) * t397;
t363 = qJD(2) * pkin(2) - pkin(3) * t397;
t343 = -t378 * g(3) + t382 * t365;
t389 = t359 * qJ(3) + 0.2e1 * t382 * t394 + t343;
t314 = t359 * pkin(3) + t410 * t403 + (-t360 - t363) * qJD(2) + t389;
t307 = t377 * t313 + t381 * t314;
t352 = (t382 * t377 + t378 * t381) * qJD(1);
t328 = -t352 * qJD(4) - t377 * t358 + t381 * t359;
t337 = t351 * mrSges(5,1) + t352 * mrSges(5,2);
t373 = qJD(2) + qJD(4);
t341 = t373 * mrSges(5,1) - t352 * mrSges(5,3);
t372 = qJDD(2) + qJDD(4);
t303 = (t351 * t352 + t372) * pkin(4) + t307;
t364 = t379 * g(1) - t409 * g(2);
t388 = t360 * t397 + qJDD(3) - t364;
t316 = t410 * t359 + t363 * t397 + t404 * t403 + t388;
t329 = -t351 * qJD(4) + t381 * t358 + t377 * t359;
t308 = (t351 * t373 - t329) * pkin(4) + t316;
t376 = sin(qJ(5));
t380 = cos(qJ(5));
t301 = -t376 * t303 + t380 * t308;
t338 = -t376 * t352 + t380 * t373;
t312 = t338 * qJD(5) + t380 * t329 + t376 * t372;
t339 = t380 * t352 + t376 * t373;
t320 = -t338 * mrSges(6,1) + t339 * mrSges(6,2);
t327 = qJDD(5) - t328;
t344 = qJD(5) + t351;
t330 = -t344 * mrSges(6,2) + t338 * mrSges(6,3);
t299 = m(6) * t301 + t327 * mrSges(6,1) - t312 * mrSges(6,3) - t339 * t320 + t344 * t330;
t302 = t380 * t303 + t376 * t308;
t311 = -t339 * qJD(5) - t376 * t329 + t380 * t372;
t331 = t344 * mrSges(6,1) - t339 * mrSges(6,3);
t300 = m(6) * t302 - t327 * mrSges(6,2) + t311 * mrSges(6,3) + t338 * t320 - t344 * t331;
t391 = -t376 * t299 + t380 * t300;
t287 = m(5) * t307 - t372 * mrSges(5,2) + t328 * mrSges(5,3) - t351 * t337 - t373 * t341 + t391;
t306 = t381 * t313 - t377 * t314;
t304 = (-t352 ^ 2 - t373 ^ 2) * pkin(4) - t306;
t340 = -t373 * mrSges(5,2) - t351 * mrSges(5,3);
t295 = m(5) * t306 - m(6) * t304 + t372 * mrSges(5,1) + t311 * mrSges(6,1) - t312 * mrSges(6,2) - t329 * mrSges(5,3) + t338 * t330 - t339 * t331 - t352 * t337 + t373 * t340;
t283 = t377 * t287 + t381 * t295;
t400 = t380 * t299 + t376 * t300;
t398 = -t414 * qJD(1) - t406 * qJD(2);
t396 = t382 * qJD(1);
t392 = t381 * t287 - t377 * t295;
t386 = m(5) * t316 - t328 * mrSges(5,1) + t329 * mrSges(5,2) + t351 * t340 + t352 * t341 + t400;
t317 = Ifges(6,5) * t339 + Ifges(6,6) * t338 + Ifges(6,3) * t344;
t319 = Ifges(6,1) * t339 + Ifges(6,4) * t338 + Ifges(6,5) * t344;
t292 = -mrSges(6,1) * t304 + mrSges(6,3) * t302 + Ifges(6,4) * t312 + Ifges(6,2) * t311 + Ifges(6,6) * t327 - t339 * t317 + t344 * t319;
t318 = Ifges(6,4) * t339 + Ifges(6,2) * t338 + Ifges(6,6) * t344;
t293 = mrSges(6,2) * t304 - mrSges(6,3) * t301 + Ifges(6,1) * t312 + Ifges(6,4) * t311 + Ifges(6,5) * t327 + t338 * t317 - t344 * t318;
t334 = Ifges(5,4) * t352 - Ifges(5,2) * t351 + Ifges(5,6) * t373;
t335 = Ifges(5,1) * t352 - Ifges(5,4) * t351 + Ifges(5,5) * t373;
t385 = mrSges(5,1) * t306 - mrSges(5,2) * t307 + Ifges(5,5) * t329 + Ifges(5,6) * t328 + Ifges(5,3) * t372 + pkin(4) * t391 + t380 * t292 + t376 * t293 + t352 * t334 + t351 * t335;
t384 = mrSges(6,1) * t301 - mrSges(6,2) * t302 + Ifges(6,5) * t312 + Ifges(6,6) * t311 + Ifges(6,3) * t327 + t339 * t318 - t338 * t319;
t362 = -qJD(2) * mrSges(4,2) + mrSges(4,3) * t396;
t361 = qJD(2) * mrSges(4,1) - mrSges(4,3) * t397;
t357 = (-t382 * mrSges(4,1) + t378 * mrSges(4,2)) * qJD(1);
t342 = -t402 - t408;
t333 = Ifges(5,5) * t352 - Ifges(5,6) * t351 + Ifges(5,3) * t373;
t332 = -t359 * pkin(1) - qJ(3) * t403 + t388;
t323 = -pkin(1) * t403 - qJD(2) * t360 + t389;
t322 = -t358 * qJ(3) + t387 - t408;
t288 = -mrSges(5,1) * t316 + mrSges(5,3) * t307 + Ifges(5,4) * t329 + Ifges(5,2) * t328 + Ifges(5,6) * t372 - t352 * t333 + t373 * t335 - t384;
t284 = m(4) * t332 - t359 * mrSges(4,1) + t358 * mrSges(4,2) + (t361 * t378 - t362 * t382) * qJD(1) + t386;
t282 = m(4) * t322 + qJDD(2) * mrSges(4,1) - t358 * mrSges(4,3) + qJD(2) * t362 - t357 * t397 + t283;
t281 = mrSges(5,2) * t316 - mrSges(5,3) * t306 + Ifges(5,1) * t329 + Ifges(5,4) * t328 + Ifges(5,5) * t372 - pkin(4) * t400 - t376 * t292 + t380 * t293 - t351 * t333 - t373 * t334;
t1 = [Ifges(2,3) * qJDD(1) + mrSges(2,1) * t364 - mrSges(2,2) * t365 + t378 * (-mrSges(3,2) * t364 + mrSges(4,2) * t332 - mrSges(3,3) * t342 - mrSges(4,3) * t322 - pkin(3) * t283 - qJ(3) * t282 + t381 * t281 - t377 * t288) + t382 * (mrSges(3,1) * t364 + mrSges(3,3) * t343 - mrSges(4,1) * t332 + mrSges(4,3) * t323 + t377 * t281 + t381 * t288 - pkin(2) * t386 + pkin(3) * t392 - pkin(1) * t284 + qJ(3) * (m(4) * t323 + t357 * t396 + t392)) + (t415 + t382 * (qJ(3) * mrSges(4,3) - t412)) * t359 + t414 * t358 + (t378 * t406 + t382 * (-qJ(3) * mrSges(4,2) + t405)) * qJDD(2) + (t411 + t382 * (-qJ(3) * t361 - t398)) * qJD(2); (t398 * t382 - t411) * qJD(1) + t405 * t359 + (Ifges(3,3) + Ifges(4,3)) * qJDD(2) + t406 * t358 + pkin(2) * t283 + pkin(1) * t282 + t385 + mrSges(4,1) * t322 - mrSges(4,2) * t323 + mrSges(3,1) * t342 - mrSges(3,2) * t343; t284; t385; t384;];
tauJ = t1;
