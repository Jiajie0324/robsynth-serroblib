% Calculate vector of inverse dynamics joint torques and base forces with Newton-Euler
% S5RRRRR5
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
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3,d4,d5]';
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
% tauJB [(6+5)x1]
%   joint torques and base forces of inverse dynamics (contains inertial, gravitational coriolis and centrifugal forces)

% Quelle: HybrDyn-Toolbox
% Datum: 2020-01-03 12:13
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauJB = S5RRRRR5_invdynJB_fixb_snew_vp2(qJ, qJD, qJDD, g, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRR5_invdynJB_fixb_snew_vp2: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRRR5_invdynJB_fixb_snew_vp2: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RRRRR5_invdynJB_fixb_snew_vp2: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRRRR5_invdynJB_fixb_snew_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRRRR5_invdynJB_fixb_snew_vp2: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRRRR5_invdynJB_fixb_snew_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RRRRR5_invdynJB_fixb_snew_vp2: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5RRRRR5_invdynJB_fixb_snew_vp2: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_linkframe_tauJB_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2020-01-03 12:13:18
% EndTime: 2020-01-03 12:13:22
% DurationCPUTime: 3.22s
% Computational Cost: add. (67969->233), mult. (69973->293), div. (0->0), fcn. (39543->10), ass. (0->103)
t573 = qJDD(1) + qJDD(2);
t568 = qJDD(3) + t573;
t579 = sin(qJ(4));
t584 = cos(qJ(4));
t575 = qJD(1) + qJD(2);
t569 = qJD(3) + t575;
t603 = qJD(4) * t569;
t551 = t579 * t568 + t584 * t603;
t582 = sin(qJ(1));
t587 = cos(qJ(1));
t563 = -t587 * g(2) - t582 * g(3);
t559 = qJDD(1) * pkin(1) + t563;
t562 = -t582 * g(2) + t587 * g(3);
t588 = qJD(1) ^ 2;
t560 = -t588 * pkin(1) + t562;
t581 = sin(qJ(2));
t586 = cos(qJ(2));
t539 = t586 * t559 - t581 * t560;
t536 = t573 * pkin(2) + t539;
t540 = t581 * t559 + t586 * t560;
t571 = t575 ^ 2;
t537 = -t571 * pkin(2) + t540;
t580 = sin(qJ(3));
t585 = cos(qJ(3));
t521 = t580 * t536 + t585 * t537;
t567 = t569 ^ 2;
t518 = -t567 * pkin(3) + t568 * pkin(8) + t521;
t605 = t579 * t518;
t608 = pkin(4) * t567;
t511 = qJDD(4) * pkin(4) - t551 * pkin(9) - t605 + (pkin(9) * t603 + t579 * t608 - g(1)) * t584;
t515 = -t579 * g(1) + t584 * t518;
t552 = t584 * t568 - t579 * t603;
t607 = t569 * t579;
t558 = qJD(4) * pkin(4) - pkin(9) * t607;
t577 = t584 ^ 2;
t512 = t552 * pkin(9) - qJD(4) * t558 - t577 * t608 + t515;
t578 = sin(qJ(5));
t583 = cos(qJ(5));
t509 = t583 * t511 - t578 * t512;
t546 = (-t578 * t579 + t583 * t584) * t569;
t527 = t546 * qJD(5) + t583 * t551 + t578 * t552;
t547 = (t578 * t584 + t579 * t583) * t569;
t532 = -t546 * mrSges(6,1) + t547 * mrSges(6,2);
t574 = qJD(4) + qJD(5);
t541 = -t574 * mrSges(6,2) + t546 * mrSges(6,3);
t572 = qJDD(4) + qJDD(5);
t506 = m(6) * t509 + t572 * mrSges(6,1) - t527 * mrSges(6,3) - t547 * t532 + t574 * t541;
t510 = t578 * t511 + t583 * t512;
t526 = -t547 * qJD(5) - t578 * t551 + t583 * t552;
t542 = t574 * mrSges(6,1) - t547 * mrSges(6,3);
t507 = m(6) * t510 - t572 * mrSges(6,2) + t526 * mrSges(6,3) + t546 * t532 - t574 * t542;
t497 = t583 * t506 + t578 * t507;
t514 = -t584 * g(1) - t605;
t544 = Ifges(5,6) * qJD(4) + (Ifges(5,4) * t579 + Ifges(5,2) * t584) * t569;
t545 = Ifges(5,5) * qJD(4) + (Ifges(5,1) * t579 + Ifges(5,4) * t584) * t569;
t529 = Ifges(6,4) * t547 + Ifges(6,2) * t546 + Ifges(6,6) * t574;
t530 = Ifges(6,1) * t547 + Ifges(6,4) * t546 + Ifges(6,5) * t574;
t593 = -mrSges(6,1) * t509 + mrSges(6,2) * t510 - Ifges(6,5) * t527 - Ifges(6,6) * t526 - Ifges(6,3) * t572 - t547 * t529 + t546 * t530;
t610 = mrSges(5,1) * t514 - mrSges(5,2) * t515 + Ifges(5,5) * t551 + Ifges(5,6) * t552 + Ifges(5,3) * qJDD(4) + pkin(4) * t497 + (t579 * t544 - t584 * t545) * t569 - t593;
t609 = -m(3) - m(4);
t606 = t569 * t584;
t550 = (-mrSges(5,1) * t584 + mrSges(5,2) * t579) * t569;
t557 = -qJD(4) * mrSges(5,2) + mrSges(5,3) * t606;
t495 = m(5) * t514 + qJDD(4) * mrSges(5,1) - t551 * mrSges(5,3) + qJD(4) * t557 - t550 * t607 + t497;
t556 = qJD(4) * mrSges(5,1) - mrSges(5,3) * t607;
t598 = -t578 * t506 + t583 * t507;
t496 = m(5) * t515 - qJDD(4) * mrSges(5,2) + t552 * mrSges(5,3) - qJD(4) * t556 + t550 * t606 + t598;
t599 = -t579 * t495 + t584 * t496;
t489 = m(4) * t521 - t567 * mrSges(4,1) - t568 * mrSges(4,2) + t599;
t520 = t585 * t536 - t580 * t537;
t596 = -t568 * pkin(3) - t520;
t517 = -t567 * pkin(8) + t596;
t513 = t558 * t607 - t552 * pkin(4) + (-pkin(9) * t577 - pkin(8)) * t567 + t596;
t594 = m(6) * t513 - t526 * mrSges(6,1) + t527 * mrSges(6,2) - t546 * t541 + t547 * t542;
t590 = -m(5) * t517 + t552 * mrSges(5,1) - t551 * mrSges(5,2) - t556 * t607 + t557 * t606 - t594;
t501 = m(4) * t520 + t568 * mrSges(4,1) - t567 * mrSges(4,2) + t590;
t484 = t580 * t489 + t585 * t501;
t481 = m(3) * t539 + t573 * mrSges(3,1) - t571 * mrSges(3,2) + t484;
t600 = t585 * t489 - t580 * t501;
t482 = m(3) * t540 - t571 * mrSges(3,1) - t573 * mrSges(3,2) + t600;
t601 = -t581 * t481 + t586 * t482;
t471 = m(2) * t562 - t588 * mrSges(2,1) - qJDD(1) * mrSges(2,2) + t601;
t474 = t586 * t481 + t581 * t482;
t472 = m(2) * t563 + qJDD(1) * mrSges(2,1) - t588 * mrSges(2,2) + t474;
t604 = t582 * t471 + t587 * t472;
t491 = t584 * t495 + t579 * t496;
t602 = -t587 * t471 + t582 * t472;
t528 = Ifges(6,5) * t547 + Ifges(6,6) * t546 + Ifges(6,3) * t574;
t498 = -mrSges(6,1) * t513 + mrSges(6,3) * t510 + Ifges(6,4) * t527 + Ifges(6,2) * t526 + Ifges(6,6) * t572 - t547 * t528 + t574 * t530;
t499 = mrSges(6,2) * t513 - mrSges(6,3) * t509 + Ifges(6,1) * t527 + Ifges(6,4) * t526 + Ifges(6,5) * t572 + t546 * t528 - t574 * t529;
t543 = Ifges(5,3) * qJD(4) + (Ifges(5,5) * t579 + Ifges(5,6) * t584) * t569;
t477 = -mrSges(5,1) * t517 + mrSges(5,3) * t515 + Ifges(5,4) * t551 + Ifges(5,2) * t552 + Ifges(5,6) * qJDD(4) - pkin(4) * t594 + pkin(9) * t598 + qJD(4) * t545 + t583 * t498 + t578 * t499 - t543 * t607;
t486 = mrSges(5,2) * t517 - mrSges(5,3) * t514 + Ifges(5,1) * t551 + Ifges(5,4) * t552 + Ifges(5,5) * qJDD(4) - pkin(9) * t497 - qJD(4) * t544 - t578 * t498 + t583 * t499 + t543 * t606;
t595 = mrSges(4,1) * t520 - mrSges(4,2) * t521 + Ifges(4,3) * t568 + pkin(3) * t590 + pkin(8) * t599 + t584 * t477 + t579 * t486;
t592 = mrSges(3,1) * t539 - mrSges(3,2) * t540 + Ifges(3,3) * t573 + pkin(2) * t484 + t595;
t591 = mrSges(2,1) * t563 - mrSges(2,2) * t562 + Ifges(2,3) * qJDD(1) + pkin(1) * t474 + t592;
t475 = mrSges(4,1) * g(1) + mrSges(4,3) * t521 + t567 * Ifges(4,5) + Ifges(4,6) * t568 - pkin(3) * t491 - t610;
t467 = -mrSges(4,2) * g(1) - mrSges(4,3) * t520 + Ifges(4,5) * t568 - t567 * Ifges(4,6) - pkin(8) * t491 - t579 * t477 + t584 * t486;
t466 = -mrSges(3,2) * g(1) - mrSges(3,3) * t539 + Ifges(3,5) * t573 - t571 * Ifges(3,6) - pkin(7) * t484 + t585 * t467 - t580 * t475;
t465 = Ifges(3,6) * t573 + t571 * Ifges(3,5) + mrSges(3,1) * g(1) + mrSges(3,3) * t540 + t580 * t467 + t585 * t475 - pkin(2) * (-m(4) * g(1) + t491) + pkin(7) * t600;
t464 = -mrSges(2,2) * g(1) - mrSges(2,3) * t563 + Ifges(2,5) * qJDD(1) - t588 * Ifges(2,6) - pkin(6) * t474 - t581 * t465 + t586 * t466;
t463 = Ifges(2,6) * qJDD(1) + t588 * Ifges(2,5) + mrSges(2,3) * t562 + t581 * t466 + t586 * t465 - pkin(1) * t491 + pkin(6) * t601 + (-pkin(1) * t609 + mrSges(2,1)) * g(1);
t1 = [(-m(1) - m(2) + t609) * g(1) + t491; -m(1) * g(2) + t604; -m(1) * g(3) + t602; -mrSges(1,2) * g(3) + mrSges(1,3) * g(2) + t591; mrSges(1,1) * g(3) - mrSges(1,3) * g(1) - pkin(5) * t602 + t587 * t463 + t582 * t464; -mrSges(1,1) * g(2) + mrSges(1,2) * g(1) + pkin(5) * t604 + t582 * t463 - t587 * t464; t591; t592; t595; t610; -t593;];
tauJB = t1;
