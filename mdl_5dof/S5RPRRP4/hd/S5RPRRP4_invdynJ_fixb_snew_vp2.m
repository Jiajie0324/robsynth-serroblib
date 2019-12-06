% Calculate vector of inverse dynamics joint torques for with Newton-Euler
% S5RPRRP4
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
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d4,theta2]';
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
% Datum: 2019-12-05 18:07
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauJ = S5RPRRP4_invdynJ_fixb_snew_vp2(qJ, qJD, qJDD, g, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRP4_invdynJ_fixb_snew_vp2: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRP4_invdynJ_fixb_snew_vp2: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPRRP4_invdynJ_fixb_snew_vp2: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPRRP4_invdynJ_fixb_snew_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPRRP4_invdynJ_fixb_snew_vp2: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPRRP4_invdynJ_fixb_snew_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RPRRP4_invdynJ_fixb_snew_vp2: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5RPRRP4_invdynJ_fixb_snew_vp2: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_linkframe_tauJ_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:05:51
% EndTime: 2019-12-05 18:05:55
% DurationCPUTime: 1.71s
% Computational Cost: add. (7217->220), mult. (17303->279), div. (0->0), fcn. (11278->8), ass. (0->98)
t450 = Ifges(5,4) + Ifges(6,4);
t459 = Ifges(5,2) + Ifges(6,2);
t454 = Ifges(5,6) + Ifges(6,6);
t421 = qJD(1) ^ 2;
t417 = sin(qJ(1));
t420 = cos(qJ(1));
t432 = t417 * g(2) - t420 * g(3);
t458 = -t421 * pkin(1) + qJDD(1) * qJ(2) + (2 * qJD(1) * qJD(2)) + t432;
t415 = sin(qJ(4));
t416 = sin(qJ(3));
t418 = cos(qJ(4));
t419 = cos(qJ(3));
t413 = sin(pkin(8));
t444 = t413 * qJD(1);
t384 = (-t419 * t415 - t416 * t418) * t444;
t441 = qJD(1) * qJD(3);
t392 = (-qJDD(1) * t416 - t419 * t441) * t413;
t393 = (qJDD(1) * t419 - t416 * t441) * t413;
t355 = t384 * qJD(4) + t415 * t392 + t418 * t393;
t385 = (-t416 * t415 + t419 * t418) * t444;
t366 = -t384 * mrSges(6,1) + t385 * mrSges(6,2);
t414 = cos(pkin(8));
t377 = -t413 * g(1) + t458 * t414;
t429 = -t414 * pkin(2) - t413 * pkin(6);
t399 = t429 * qJD(1);
t443 = t414 * qJD(1);
t365 = t399 * t443 + t377;
t428 = t420 * g(2) + t417 * g(3);
t425 = -t421 * qJ(2) + qJDD(2) - t428;
t378 = (-pkin(1) + t429) * qJDD(1) + t425;
t375 = t419 * t378;
t440 = t414 * qJDD(1);
t405 = qJDD(3) - t440;
t406 = qJD(3) - t443;
t411 = t413 ^ 2;
t449 = t411 * t421;
t340 = t405 * pkin(3) - t393 * pkin(7) + t375 + (-pkin(3) * t419 * t449 - pkin(7) * t406 * t444 - t365) * t416;
t344 = t419 * t365 + t416 * t378;
t434 = t419 * t444;
t391 = t406 * pkin(3) - pkin(7) * t434;
t439 = t416 ^ 2 * t449;
t341 = -pkin(3) * t439 + t392 * pkin(7) - t406 * t391 + t344;
t333 = t418 * t340 - t415 * t341;
t403 = qJDD(4) + t405;
t404 = qJD(4) + t406;
t329 = -0.2e1 * qJD(5) * t385 + (t384 * t404 - t355) * qJ(5) + (t384 * t385 + t403) * pkin(4) + t333;
t369 = -t404 * mrSges(6,2) + t384 * mrSges(6,3);
t438 = m(6) * t329 + t403 * mrSges(6,1) + t404 * t369;
t325 = -t355 * mrSges(6,3) - t385 * t366 + t438;
t334 = t415 * t340 + t418 * t341;
t354 = -t385 * qJD(4) + t418 * t392 - t415 * t393;
t371 = t404 * pkin(4) - t385 * qJ(5);
t383 = t384 ^ 2;
t331 = -t383 * pkin(4) + t354 * qJ(5) + 0.2e1 * qJD(5) * t384 - t404 * t371 + t334;
t455 = Ifges(5,5) + Ifges(6,5);
t456 = Ifges(5,1) + Ifges(6,1);
t447 = t450 * t384 + t456 * t385 + t455 * t404;
t452 = t459 * t384 + t450 * t385 + t454 * t404;
t453 = Ifges(5,3) + Ifges(6,3);
t457 = mrSges(5,1) * t333 + mrSges(6,1) * t329 - mrSges(5,2) * t334 - mrSges(6,2) * t331 + pkin(4) * t325 + t454 * t354 + t455 * t355 - t447 * t384 + t452 * t385 + t453 * t403;
t367 = -t384 * mrSges(5,1) + t385 * mrSges(5,2);
t370 = -t404 * mrSges(5,2) + t384 * mrSges(5,3);
t320 = m(5) * t333 + t403 * mrSges(5,1) + t404 * t370 + (-t366 - t367) * t385 + (-mrSges(5,3) - mrSges(6,3)) * t355 + t438;
t372 = t404 * mrSges(6,1) - t385 * mrSges(6,3);
t373 = t404 * mrSges(5,1) - t385 * mrSges(5,3);
t437 = m(6) * t331 + t354 * mrSges(6,3) + t384 * t366;
t323 = m(5) * t334 + t354 * mrSges(5,3) + t384 * t367 + (-t372 - t373) * t404 + (-mrSges(5,2) - mrSges(6,2)) * t403 + t437;
t318 = t418 * t320 + t415 * t323;
t343 = -t416 * t365 + t375;
t451 = -mrSges(4,1) * t343 + mrSges(4,2) * t344 - Ifges(4,5) * t393 - Ifges(4,6) * t392 - Ifges(4,3) * t405 - pkin(3) * t318 - t457;
t376 = -t414 * g(1) - t458 * t413;
t448 = -t454 * t384 - t455 * t385 - t453 * t404;
t445 = qJDD(1) * mrSges(3,3);
t364 = t399 * t444 - t376;
t342 = -t392 * pkin(3) - pkin(7) * t439 + t391 * t434 + t364;
t336 = -t354 * pkin(4) - t383 * qJ(5) + t385 * t371 + qJDD(5) + t342;
t436 = m(6) * t336 + t355 * mrSges(6,2) + t385 * t372;
t435 = t416 * t444;
t430 = -t415 * t320 + t418 * t323;
t427 = -t414 * mrSges(3,1) + t413 * mrSges(3,2);
t388 = -t406 * mrSges(4,2) - mrSges(4,3) * t435;
t390 = (t416 * mrSges(4,1) + t419 * mrSges(4,2)) * t444;
t315 = m(4) * t343 + t405 * mrSges(4,1) - t393 * mrSges(4,3) + t406 * t388 - t390 * t434 + t318;
t389 = t406 * mrSges(4,1) - mrSges(4,3) * t434;
t316 = m(4) * t344 - t405 * mrSges(4,2) + t392 * mrSges(4,3) - t406 * t389 - t390 * t435 + t430;
t313 = t419 * t315 + t416 * t316;
t380 = Ifges(4,6) * t406 + (t419 * Ifges(4,4) - t416 * Ifges(4,2)) * t444;
t381 = Ifges(4,5) * t406 + (t419 * Ifges(4,1) - t416 * Ifges(4,4)) * t444;
t426 = t419 * t380 + t416 * t381;
t423 = m(5) * t342 + t355 * mrSges(5,2) + t385 * t373 + (-t369 - t370) * t384 + (-mrSges(5,1) - mrSges(6,1)) * t354 + t436;
t398 = (Ifges(3,5) * t413 + Ifges(3,6) * t414) * qJD(1);
t397 = t427 * qJD(1);
t395 = -qJDD(1) * pkin(1) + t425;
t326 = -t354 * mrSges(6,1) - t384 * t369 + t436;
t317 = mrSges(5,2) * t342 + mrSges(6,2) * t336 - mrSges(5,3) * t333 - mrSges(6,3) * t329 - qJ(5) * t325 + t450 * t354 + t456 * t355 - t448 * t384 + t455 * t403 - t452 * t404;
t314 = -mrSges(5,1) * t342 + mrSges(5,3) * t334 - mrSges(6,1) * t336 + mrSges(6,3) * t331 - pkin(4) * t326 + qJ(5) * t437 + (-qJ(5) * t372 + t447) * t404 + (-qJ(5) * mrSges(6,2) + t454) * t403 + t448 * t385 + t450 * t355 + t459 * t354;
t312 = m(3) * t395 + t427 * qJDD(1) + (-t414 ^ 2 - t411) * t421 * mrSges(3,3) + t313;
t1 = [Ifges(2,3) * qJDD(1) + mrSges(2,1) * t428 - mrSges(2,2) * t432 + t413 * (mrSges(3,2) * t395 - mrSges(3,3) * t376 + t419 * (mrSges(4,2) * t364 - mrSges(4,3) * t343 + Ifges(4,1) * t393 + Ifges(4,4) * t392 + Ifges(4,5) * t405 - pkin(7) * t318 - t415 * t314 + t418 * t317 - t406 * t380) - t416 * (-mrSges(4,1) * t364 + mrSges(4,3) * t344 + Ifges(4,4) * t393 + Ifges(4,2) * t392 + Ifges(4,6) * t405 - pkin(3) * t423 + pkin(7) * t430 + t418 * t314 + t415 * t317 + t406 * t381) - pkin(6) * t313 + (Ifges(3,1) * t413 + Ifges(3,4) * t414) * qJDD(1) + t398 * t443) + t414 * ((Ifges(3,4) * qJDD(1) + (-t398 - t426) * qJD(1)) * t413 - mrSges(3,1) * t395 + mrSges(3,3) * t377 - pkin(2) * t313 + Ifges(3,2) * t440 + t451) - pkin(1) * t312 + qJ(2) * ((m(3) * t377 - t416 * t315 + t419 * t316 + (qJD(1) * t397 + t445) * t414) * t414 + (t413 * t445 - m(3) * t376 + m(4) * t364 - t392 * mrSges(4,1) + t393 * mrSges(4,2) + (t388 * t416 + t389 * t419 + t397) * t444 + t423) * t413); t312; t426 * t444 - t451; t457; t326;];
tauJ = t1;
