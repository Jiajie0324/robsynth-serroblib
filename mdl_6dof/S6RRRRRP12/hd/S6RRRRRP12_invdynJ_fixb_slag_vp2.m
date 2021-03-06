% Calculate vector of inverse dynamics joint torques for
% S6RRRRRP12
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
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d2,d3,d4,d5]';
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
% tau [6x1]
%   joint torques of inverse dynamics (contains inertial, gravitational coriolis and centrifugal forces)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-10 03:26
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau = S6RRRRRP12_invdynJ_fixb_slag_vp2(qJ, qJD, qJDD, g, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(12,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRP12_invdynJ_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRP12_invdynJ_fixb_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRRP12_invdynJ_fixb_slag_vp2: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRRP12_invdynJ_fixb_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRRRP12_invdynJ_fixb_slag_vp2: pkin has to be [12x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRRRP12_invdynJ_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRRRRP12_invdynJ_fixb_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RRRRRP12_invdynJ_fixb_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From invdyn_fixb_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-10 02:59:42
% EndTime: 2019-03-10 03:02:37
% DurationCPUTime: 103.40s
% Computational Cost: add. (46139->1283), mult. (127622->1727), div. (0->0), fcn. (108251->14), ass. (0->535)
t510 = cos(qJ(2));
t712 = cos(pkin(6));
t644 = pkin(1) * t712;
t495 = t510 * t644;
t482 = qJD(1) * t495;
t506 = sin(qJ(2));
t501 = sin(pkin(6));
t502 = cos(pkin(7));
t746 = pkin(10) * t502;
t645 = pkin(9) + t746;
t594 = t501 * t645;
t551 = t506 * t594;
t377 = -qJD(1) * t551 + t482;
t494 = t506 * t644;
t520 = -t510 * t594 - t494;
t378 = t520 * qJD(1);
t500 = sin(pkin(7));
t747 = pkin(10) * t500;
t535 = (pkin(2) * t506 - t510 * t747) * t501;
t420 = qJD(1) * t535;
t505 = sin(qJ(3));
t700 = t500 * t505;
t486 = pkin(10) * t700;
t509 = cos(qJ(3));
t693 = t502 * t509;
t454 = pkin(2) * t693 - t486;
t694 = t502 * t505;
t864 = t454 * qJD(3) - t509 * t377 - t378 * t694 - t420 * t700;
t282 = -t378 * t500 + t502 * t420;
t687 = t506 * t509;
t688 = t505 * t510;
t544 = t502 * t687 + t688;
t415 = t544 * t501;
t399 = qJD(1) * t415;
t685 = t509 * t510;
t689 = t505 * t506;
t542 = -t502 * t689 + t685;
t416 = t542 * t501;
t400 = qJD(1) * t416;
t674 = qJD(3) * t500;
t902 = -pkin(3) * t399 + pkin(11) * t400 - t282 + (pkin(3) * t505 - pkin(11) * t509) * t674;
t675 = qJD(1) * t501;
t642 = t506 * t675;
t602 = t500 * t642;
t901 = pkin(11) * t602 - t864;
t504 = sin(qJ(4));
t508 = cos(qJ(4));
t330 = t400 * t504 - t508 * t602;
t699 = t500 * t508;
t448 = t502 * t504 + t505 * t699;
t672 = qJD(3) * t509;
t635 = t500 * t672;
t383 = qJD(4) * t448 + t504 * t635;
t680 = t330 - t383;
t331 = t400 * t508 + t504 * t602;
t447 = -t508 * t502 + t504 * t700;
t382 = -qJD(4) * t447 + t508 * t635;
t679 = t331 - t382;
t698 = t500 * t509;
t456 = pkin(2) * t694 + pkin(10) * t698;
t900 = -t456 * qJD(3) + t505 * t377;
t673 = qJD(3) * t505;
t636 = t500 * t673;
t895 = t399 - t636;
t485 = qJD(1) * t712 + qJD(2);
t545 = t502 * t685 - t689;
t343 = t485 * t698 + t545 * t675;
t663 = qJD(1) * qJD(2);
t441 = (qJDD(1) * t506 + t510 * t663) * t501;
t440 = (qJDD(1) * t510 - t506 * t663) * t501;
t611 = t712 * qJDD(1);
t484 = t611 + qJDD(2);
t556 = t440 * t502 + t484 * t500;
t224 = qJD(3) * t343 + t441 * t509 + t505 * t556;
t543 = t502 * t688 + t687;
t527 = t543 * t501;
t656 = t485 * t700;
t344 = qJD(1) * t527 + t656;
t641 = t510 * t675;
t404 = t485 * t502 - t500 * t641 + qJD(3);
t267 = -t344 * t504 + t404 * t508;
t358 = -t440 * t500 + t484 * t502 + qJDD(3);
t132 = qJD(4) * t267 + t224 * t508 + t358 * t504;
t780 = t132 / 0.2e1;
t899 = Ifges(5,4) * t780;
t867 = t378 * t693 - (-pkin(3) * t642 - t420 * t509) * t500 - t900;
t426 = pkin(11) * t502 + t456;
t427 = (-pkin(3) * t509 - pkin(11) * t505 - pkin(2)) * t500;
t670 = qJD(4) * t508;
t671 = qJD(4) * t504;
t863 = -t426 * t671 + t427 * t670 + t504 * t902 - t901 * t508;
t898 = -t343 + qJD(4);
t268 = t344 * t508 + t404 * t504;
t133 = -qJD(4) * t268 - t224 * t504 + t358 * t508;
t779 = t133 / 0.2e1;
t808 = -t441 * t505 + t556 * t509;
t221 = qJD(3) * t344 + qJDD(4) - t808;
t772 = t221 / 0.2e1;
t897 = pkin(12) * t895 - t863;
t896 = -pkin(4) * t680 + t679 * pkin(12) + t867;
t131 = qJDD(5) - t133;
t781 = t131 / 0.2e1;
t503 = sin(qJ(5));
t507 = cos(qJ(5));
t203 = t507 * t268 + t503 * t898;
t69 = qJD(5) * t203 + t503 * t132 - t507 * t221;
t789 = t69 / 0.2e1;
t790 = -t69 / 0.2e1;
t202 = t503 * t268 - t507 * t898;
t669 = qJD(5) * t202;
t68 = t507 * t132 + t503 * t221 - t669;
t791 = t68 / 0.2e1;
t843 = Ifges(6,5) + Ifges(7,4);
t845 = Ifges(6,1) + Ifges(7,1);
t879 = Ifges(6,4) * t790 + Ifges(7,5) * t789 + t781 * t843 + t791 * t845;
t886 = Ifges(6,6) - Ifges(7,6);
t841 = Ifges(6,3) + Ifges(7,2);
t862 = -t426 * t670 - t427 * t671 + t901 * t504 + t508 * t902;
t384 = t448 * t503 + t507 * t698;
t254 = -qJD(5) * t384 + t382 * t507 + t503 * t636;
t257 = t331 * t507 + t399 * t503;
t684 = t254 - t257;
t653 = t503 * t698;
t666 = qJD(5) * t507;
t255 = -qJD(5) * t653 + t382 * t503 + t448 * t666 - t507 * t636;
t256 = t331 * t503 - t507 * t399;
t683 = t255 - t256;
t342 = pkin(2) * t485 + t377;
t392 = (-pkin(2) * t510 - t506 * t747 - pkin(1)) * t675;
t258 = -t342 * t500 + t502 * t392;
t157 = -pkin(3) * t343 - pkin(11) * t344 + t258;
t696 = t501 * t510;
t336 = t485 * t747 + (t645 * t696 + t494) * qJD(1);
t558 = t342 * t502 + t392 * t500;
t187 = t336 * t509 + t505 * t558;
t166 = pkin(11) * t404 + t187;
t491 = pkin(9) * t696;
t600 = qJD(2) * t644;
t552 = qJD(1) * t600;
t596 = pkin(1) * t611;
t697 = t501 * t506;
t640 = qJD(2) * t697;
t609 = pkin(9) * t640;
t340 = -qJD(1) * t609 + qJDD(1) * t491 + t506 * t596 + t510 * t552;
t259 = pkin(10) * t556 + t340;
t341 = -pkin(9) * t441 - t506 * t552 + t510 * t596;
t264 = t484 * pkin(2) - t441 * t746 + t341;
t750 = pkin(1) * t501;
t657 = qJDD(1) * t750;
t315 = -pkin(2) * t440 - t441 * t747 - t657;
t638 = t502 * t672;
t82 = t509 * t259 + t264 * t694 + t315 * t700 - t336 * t673 + t342 * t638 + t392 * t635;
t75 = pkin(11) * t358 + t82;
t181 = -t264 * t500 + t502 * t315;
t225 = (-t543 * t675 - t656) * qJD(3) + t808;
t84 = -pkin(3) * t225 - pkin(11) * t224 + t181;
t21 = -t157 * t671 - t166 * t670 - t504 * t75 + t508 * t84;
t13 = -pkin(4) * t221 - t21;
t5 = pkin(5) * t69 - qJ(6) * t68 - qJD(6) * t203 + t13;
t20 = t157 * t670 - t166 * t671 + t504 * t84 + t508 * t75;
t12 = pkin(12) * t221 + t20;
t639 = t502 * t673;
t83 = t509 * (t264 * t502 + t315 * t500) - t505 * t259 - t336 * t672 - t342 * t639 - t392 * t636;
t76 = -pkin(3) * t358 - t83;
t25 = -pkin(4) * t133 - pkin(12) * t132 + t76;
t186 = -t505 * t336 + t509 * t558;
t165 = -pkin(3) * t404 - t186;
t101 = -pkin(4) * t267 - pkin(12) * t268 + t165;
t89 = t504 * t157 + t508 * t166;
t79 = pkin(12) * t898 + t89;
t38 = t101 * t503 + t507 * t79;
t4 = -qJD(5) * t38 - t12 * t503 + t25 * t507;
t2 = -pkin(5) * t131 + qJDD(6) - t4;
t860 = mrSges(7,2) * t2 - mrSges(6,3) * t4 + t879;
t894 = mrSges(6,2) * t13 - mrSges(7,3) * t5 + t860 + t879;
t263 = qJD(5) - t267;
t668 = qJD(5) * t503;
t3 = t101 * t666 + t507 * t12 + t503 * t25 - t668 * t79;
t1 = qJ(6) * t131 + qJD(6) * t263 + t3;
t801 = t4 * mrSges(6,1) - t2 * mrSges(7,1) - t3 * mrSges(6,2) + t1 * mrSges(7,3);
t893 = 0.2e1 * Ifges(5,2) * t779 + 0.2e1 * Ifges(5,6) * t772 - Ifges(6,6) * t790 - Ifges(7,6) * t789 - t841 * t781 - t843 * t791 - t801 + t899;
t249 = pkin(3) * t344 - pkin(11) * t343;
t138 = t508 * t186 + t504 * t249;
t892 = pkin(11) * t671 + pkin(12) * t344 + t138;
t511 = cos(qJ(1));
t613 = t511 * t712;
t751 = sin(qJ(1));
t449 = t506 * t751 - t510 * t613;
t450 = t506 * t613 + t510 * t751;
t695 = t501 * t511;
t654 = t500 * t695;
t310 = t449 * t694 - t450 * t509 + t505 * t654;
t546 = -t449 * t500 + t502 * t695;
t241 = t310 * t508 + t504 * t546;
t307 = t449 * t693 + t450 * t505 + t509 * t654;
t891 = t241 * t503 + t307 * t507;
t890 = t241 * t507 - t307 * t503;
t889 = -pkin(11) * qJD(5) * t508 - t187 + t898 * (pkin(4) * t504 - pkin(12) * t508);
t757 = t358 / 0.2e1;
t770 = t225 / 0.2e1;
t771 = t224 / 0.2e1;
t887 = Ifges(4,4) * t771 + Ifges(4,2) * t770 + Ifges(4,6) * t757;
t425 = t486 + (-pkin(2) * t509 - pkin(3)) * t502;
t303 = pkin(4) * t447 - pkin(12) * t448 + t425;
t320 = t508 * t426 + t504 * t427;
t306 = -pkin(12) * t698 + t320;
t874 = t303 * t666 - t306 * t668 + t503 * t896 - t507 * t897;
t826 = t503 * t303 + t507 * t306;
t873 = -qJD(5) * t826 + t503 * t897 + t507 * t896;
t866 = pkin(4) * t895 - t862;
t707 = t343 * t504;
t885 = t671 - t707;
t42 = Ifges(5,5) * t132 + Ifges(5,6) * t133 + Ifges(5,3) * t221;
t805 = t21 * mrSges(5,1) - t20 * mrSges(5,2);
t884 = -t805 - t42 / 0.2e1 - Ifges(5,5) * t780 - Ifges(5,6) * t779 - Ifges(5,3) * t772 + t887;
t883 = Ifges(6,4) * t791 + Ifges(6,6) * t781 - t68 * Ifges(7,5) / 0.2e1 - t131 * Ifges(7,6) / 0.2e1 + (Ifges(6,2) + Ifges(7,3)) * t790;
t840 = t131 * t841 + t68 * t843 - t69 * t886;
t882 = t840 / 0.2e1 - mrSges(5,3) * t20 - t899 - t893;
t803 = -mrSges(7,2) * t1 - mrSges(6,3) * t3 - t883;
t844 = -Ifges(6,4) + Ifges(7,5);
t880 = mrSges(6,1) * t13 + mrSges(7,1) * t5 - Ifges(6,2) * t790 + Ifges(7,3) * t789 - t781 * t886 + t791 * t844 + t803;
t877 = mrSges(5,3) * t21;
t876 = -qJ(6) * t680 + qJD(6) * t447 + t874;
t875 = pkin(5) * t680 - t873;
t838 = -t202 * t886 + t203 * t843 + t263 * t841;
t191 = Ifges(6,4) * t202;
t721 = Ifges(7,5) * t202;
t837 = t203 * t845 + t263 * t843 - t191 + t721;
t872 = Ifges(5,4) * t779;
t871 = t165 * mrSges(5,1);
t385 = t448 * t507 - t653;
t870 = pkin(5) * t683 - qJ(6) * t684 - qJD(6) * t385 + t866;
t748 = pkin(4) * t508;
t473 = -pkin(12) * t504 - pkin(3) - t748;
t831 = t473 * t666 + t503 * t889 - t507 * t892;
t830 = -t473 * t668 + t503 * t892 + t507 * t889;
t865 = -(t378 * t502 + t420 * t500) * t509 + t900;
t593 = t712 * t751;
t524 = t511 * t506 + t510 * t593;
t643 = t501 * t751;
t516 = t524 * t500 + t502 * t643;
t731 = Ifges(3,4) * t506;
t797 = t501 ^ 2;
t861 = (pkin(1) * (mrSges(3,1) * t506 + mrSges(3,2) * t510) - t506 * (Ifges(3,1) * t510 - t731) / 0.2e1) * t797;
t859 = Ifges(5,1) * t780 + Ifges(5,5) * t772;
t858 = t310 * t504 - t508 * t546;
t782 = Ifges(4,1) * t771 + Ifges(4,4) * t770 + Ifges(4,5) * t757;
t792 = t859 + t872;
t37 = t101 * t507 - t503 * t79;
t825 = -t37 + qJD(6);
t27 = -pkin(5) * t263 + t825;
t28 = qJ(6) * t263 + t38;
t855 = t37 * mrSges(6,1) - t27 * mrSges(7,1) - t38 * mrSges(6,2) + t28 * mrSges(7,3);
t88 = t508 * t157 - t504 * t166;
t78 = -pkin(4) * t898 - t88;
t39 = t202 * pkin(5) - t203 * qJ(6) + t78;
t854 = t78 * mrSges(6,2) + t27 * mrSges(7,2) - t37 * mrSges(6,3) - t39 * mrSges(7,3);
t783 = -m(7) - m(6);
t849 = t898 / 0.2e1;
t848 = -t898 / 0.2e1;
t847 = -mrSges(5,3) + mrSges(4,2);
t846 = mrSges(6,3) + mrSges(7,2);
t836 = Ifges(5,5) * t898;
t835 = Ifges(5,6) * t898;
t834 = qJ(6) * t885 - qJD(6) * t508 + t831;
t833 = -pkin(5) * t885 - t830;
t137 = -t504 * t186 + t249 * t508;
t112 = -pkin(4) * t344 - t137;
t691 = t503 * t508;
t244 = t343 * t691 - t507 * t344;
t686 = t507 * t508;
t245 = t343 * t686 + t344 * t503;
t566 = pkin(5) * t503 - qJ(6) * t507;
t550 = pkin(11) + t566;
t567 = pkin(5) * t507 + qJ(6) * t503;
t832 = -pkin(5) * t244 + qJ(6) * t245 - t112 + (qJD(5) * t567 - qJD(6) * t507) * t504 + t550 * t670;
t587 = -mrSges(5,1) * t508 + mrSges(5,2) * t504;
t829 = -t587 + mrSges(4,1);
t828 = -qJD(6) * t503 + t263 * t566 - t89;
t376 = pkin(2) * t712 + t495 - t551;
t655 = t500 * t697;
t678 = pkin(2) * t696 + pkin(10) * t655;
t409 = -t678 - t750;
t278 = -t376 * t500 + t502 * t409;
t612 = t712 * t500;
t371 = -t501 * t545 - t509 * t612;
t372 = t505 * t612 + t527;
t617 = -t371 * pkin(3) + pkin(11) * t372;
t182 = t278 - t617;
t677 = t491 + t494;
t363 = (t502 * t696 + t612) * pkin(10) + t677;
t223 = t509 * t363 + t376 * t694 + t409 * t700;
t528 = t500 * t696 - t502 * t712;
t189 = -pkin(11) * t528 + t223;
t108 = t504 * t182 + t508 * t189;
t104 = pkin(12) * t371 + t108;
t222 = -t505 * t363 + t509 * (t376 * t502 + t409 * t500);
t188 = pkin(3) * t528 - t222;
t301 = t372 * t504 + t508 * t528;
t302 = t372 * t508 - t504 * t528;
t614 = -t301 * pkin(4) + t302 * pkin(12);
t122 = t188 - t614;
t827 = t507 * t104 + t503 * t122;
t584 = -t507 * mrSges(7,1) - t503 * mrSges(7,3);
t586 = mrSges(6,1) * t507 - mrSges(6,2) * t503;
t824 = m(7) * t567 - t584 + t586;
t583 = mrSges(7,1) * t503 - mrSges(7,3) * t507;
t585 = mrSges(6,1) * t503 + mrSges(6,2) * t507;
t823 = t39 * t583 + t78 * t585;
t822 = t503 * t843 + t507 * t886;
t821 = -t503 * t886 + t507 * t843;
t719 = Ifges(7,5) * t507;
t722 = Ifges(6,4) * t507;
t820 = t503 * t845 - t719 + t722;
t720 = Ifges(7,5) * t503;
t723 = Ifges(6,4) * t503;
t819 = t507 * t845 + t720 - t723;
t710 = t267 * t507;
t818 = t666 - t710;
t711 = t267 * t503;
t817 = -t668 + t711;
t816 = t20 * t508 - t21 * t504;
t815 = t3 * t507 - t4 * t503;
t814 = t1 * t507 + t2 * t503;
t190 = Ifges(7,5) * t203;
t90 = t263 * Ifges(7,6) + t202 * Ifges(7,3) + t190;
t724 = Ifges(6,4) * t203;
t93 = -t202 * Ifges(6,2) + t263 * Ifges(6,6) + t724;
t813 = t93 / 0.2e1 - t90 / 0.2e1;
t786 = -t93 / 0.2e1;
t812 = t786 + t90 / 0.2e1;
t811 = mrSges(5,2) - t846;
t810 = mrSges(5,1) + t824;
t592 = qJD(3) * t612;
t280 = t505 * t592 + (qJD(2) * t544 + qJD(3) * t543) * t501;
t483 = t510 * t600;
t379 = -qJD(2) * t551 + t483;
t380 = t520 * qJD(2);
t421 = qJD(2) * t535;
t141 = -t363 * t673 + t376 * t638 + t509 * t379 + t380 * t694 + t409 * t635 + t421 * t700;
t601 = t500 * t640;
t134 = pkin(11) * t601 + t141;
t281 = t509 * t592 + (qJD(2) * t542 + qJD(3) * t545) * t501;
t283 = -t380 * t500 + t502 * t421;
t153 = pkin(3) * t280 - pkin(11) * t281 + t283;
t35 = t508 * t134 + t504 * t153 + t182 * t670 - t189 * t671;
t29 = pkin(12) * t280 + t35;
t606 = -t363 * t672 - t376 * t639 - t505 * t379 - t409 * t636;
t135 = -t380 * t693 + (-pkin(3) * t640 - t421 * t509) * t500 - t606;
t174 = qJD(4) * t302 + t281 * t504 - t508 * t601;
t175 = -qJD(4) * t301 + t281 * t508 + t504 * t601;
t54 = pkin(4) * t174 - pkin(12) * t175 + t135;
t9 = -qJD(5) * t827 - t29 * t503 + t507 * t54;
t610 = m(7) * pkin(5) + mrSges(6,1) + mrSges(7,1);
t605 = -m(7) * qJ(6) + mrSges(6,2) - mrSges(7,3);
t806 = -t83 * mrSges(4,1) + t82 * mrSges(4,2);
t804 = t792 + t859;
t451 = -t506 * t593 + t510 * t511;
t604 = t500 * t643;
t312 = t451 * t509 + (-t502 * t524 + t604) * t505;
t243 = t312 * t508 + t504 * t516;
t802 = -g(1) * t243 + g(2) * t241 - g(3) * t302;
t800 = -t78 * mrSges(6,1) - t39 * mrSges(7,1) + t28 * mrSges(7,2) + t38 * mrSges(6,3);
t767 = -t263 / 0.2e1;
t774 = -t203 / 0.2e1;
t775 = t202 / 0.2e1;
t776 = -t202 / 0.2e1;
t798 = Ifges(6,6) * t775 + Ifges(7,6) * t776 + t767 * t841 + t774 * t843 - t855;
t727 = Ifges(5,4) * t268;
t150 = Ifges(5,2) * t267 + t727 + t835;
t778 = -t150 / 0.2e1;
t773 = t203 / 0.2e1;
t766 = t263 / 0.2e1;
t765 = -t267 / 0.2e1;
t764 = t267 / 0.2e1;
t763 = -t268 / 0.2e1;
t762 = t268 / 0.2e1;
t760 = -t343 / 0.2e1;
t759 = -t344 / 0.2e1;
t758 = t344 / 0.2e1;
t755 = -t404 / 0.2e1;
t749 = pkin(2) * t500;
t735 = mrSges(4,3) * t343;
t734 = mrSges(4,3) * t344;
t733 = mrSges(6,3) * t202;
t732 = mrSges(6,3) * t203;
t730 = Ifges(3,4) * t510;
t729 = Ifges(4,4) * t505;
t728 = Ifges(4,4) * t509;
t726 = Ifges(5,4) * t504;
t725 = Ifges(5,4) * t508;
t718 = t13 * t504;
t715 = t267 * mrSges(5,3);
t714 = t268 * mrSges(5,3);
t713 = t344 * Ifges(4,4);
t169 = pkin(4) * t268 - pkin(12) * t267;
t59 = t503 * t169 + t507 * t88;
t709 = t307 * t504;
t521 = t524 * t509;
t311 = t451 * t505 + t502 * t521 - t509 * t604;
t708 = t311 * t504;
t706 = t343 * t508;
t705 = t371 * t504;
t702 = t473 * t507;
t701 = t500 * t504;
t333 = -t449 * t509 - t450 * t694;
t442 = t449 * pkin(2);
t682 = t333 * pkin(3) - t442;
t335 = -t451 * t694 - t521;
t444 = t524 * pkin(2);
t681 = t335 * pkin(3) - t444;
t423 = pkin(11) * t686 + t503 * t473;
t676 = t511 * pkin(1) + pkin(9) * t643;
t667 = qJD(5) * t504;
t664 = -m(5) + t783;
t661 = pkin(11) * t670;
t660 = pkin(12) * t668;
t659 = pkin(12) * t666;
t658 = mrSges(3,3) * t696;
t114 = Ifges(4,5) * t224 + Ifges(4,6) * t225 + Ifges(4,3) * t358;
t647 = t416 * pkin(3) + t678;
t646 = Ifges(3,5) * t441 + Ifges(3,6) * t440 + Ifges(3,3) * t484;
t637 = t503 * t670;
t632 = t697 / 0.2e1;
t626 = t674 / 0.2e1;
t624 = t670 / 0.2e1;
t621 = -t667 / 0.2e1;
t620 = t666 / 0.2e1;
t33 = -t131 * mrSges(7,1) + t68 * mrSges(7,2);
t619 = -t307 * pkin(3) - pkin(11) * t310;
t618 = -t311 * pkin(3) + pkin(11) * t312;
t107 = t182 * t508 - t504 * t189;
t319 = -t504 * t426 + t427 * t508;
t595 = -pkin(1) * t751 + pkin(9) * t695;
t305 = pkin(4) * t698 - t319;
t589 = mrSges(4,1) * t371 + mrSges(4,2) * t372;
t588 = mrSges(5,1) * t301 + mrSges(5,2) * t302;
t582 = Ifges(5,1) * t508 - t726;
t577 = -Ifges(5,2) * t504 + t725;
t576 = -Ifges(6,2) * t503 + t722;
t575 = Ifges(6,2) * t507 + t723;
t572 = Ifges(5,5) * t508 - Ifges(5,6) * t504;
t569 = Ifges(7,3) * t503 + t719;
t568 = -Ifges(7,3) * t507 + t720;
t58 = t169 * t507 - t503 * t88;
t47 = -t104 * t503 + t122 * t507;
t231 = t302 * t507 + t371 * t503;
t230 = t302 * t503 - t371 * t507;
t200 = t303 * t507 - t306 * t503;
t36 = -t504 * t134 + t153 * t508 - t182 * t671 - t189 * t670;
t549 = pkin(11) * t664 + t847;
t547 = pkin(12) * t783 + t811;
t103 = -pkin(4) * t371 - t107;
t538 = t165 * (mrSges(5,1) * t504 + mrSges(5,2) * t508);
t537 = (Ifges(3,2) * t510 + t731) * t501;
t8 = -t104 * t668 + t122 * t666 + t507 * t29 + t503 * t54;
t533 = t485 * t501 * (Ifges(3,5) * t510 - Ifges(3,6) * t506);
t531 = -t503 * t667 + t507 * t670;
t530 = t504 * t666 + t637;
t30 = -pkin(4) * t280 - t36;
t525 = mrSges(3,2) + (-mrSges(4,3) + (-m(4) + t664) * pkin(10)) * t500;
t523 = -t450 * pkin(2) + pkin(10) * t546 + t595;
t518 = t310 * pkin(3) - pkin(11) * t307 + t523;
t515 = t451 * pkin(2) + pkin(10) * t516 + t676;
t513 = t312 * pkin(3) + t311 * pkin(11) + t515;
t481 = Ifges(3,4) * t641;
t467 = -pkin(4) - t567;
t455 = -pkin(9) * t697 + t495;
t452 = (-mrSges(3,1) * t510 + mrSges(3,2) * t506) * t501;
t439 = t677 * qJD(2);
t438 = t483 - t609;
t435 = t677 * qJD(1);
t433 = -pkin(9) * t642 + t482;
t432 = -mrSges(3,2) * t485 + mrSges(3,3) * t641;
t431 = mrSges(3,1) * t485 - mrSges(3,3) * t642;
t430 = t550 * t504;
t422 = -pkin(11) * t691 + t702;
t395 = -t702 + (pkin(11) * t503 + pkin(5)) * t508;
t394 = -qJ(6) * t508 + t423;
t389 = Ifges(3,1) * t642 + Ifges(3,5) * t485 + t481;
t388 = Ifges(3,6) * t485 + qJD(1) * t537;
t346 = t416 * t508 + t504 * t655;
t338 = Ifges(4,4) * t343;
t334 = t451 * t693 - t505 * t524;
t332 = -t449 * t505 + t450 * t693;
t276 = mrSges(4,1) * t404 - t734;
t275 = -mrSges(4,2) * t404 + t735;
t272 = t335 * t508 + t451 * t701;
t270 = t333 * t508 + t450 * t701;
t262 = Ifges(5,4) * t267;
t248 = -mrSges(4,1) * t343 + mrSges(4,2) * t344;
t242 = t312 * t504 - t508 * t516;
t216 = t344 * Ifges(4,1) + t404 * Ifges(4,5) + t338;
t215 = t343 * Ifges(4,2) + t404 * Ifges(4,6) + t713;
t214 = Ifges(4,5) * t344 + Ifges(4,6) * t343 + Ifges(4,3) * t404;
t207 = mrSges(5,1) * t898 - t714;
t206 = -mrSges(5,2) * t898 + t715;
t204 = pkin(5) * t384 - qJ(6) * t385 + t305;
t173 = -pkin(5) * t447 - t200;
t172 = qJ(6) * t447 + t826;
t171 = -mrSges(4,2) * t358 + mrSges(4,3) * t225;
t170 = mrSges(4,1) * t358 - mrSges(4,3) * t224;
t168 = -mrSges(5,1) * t267 + mrSges(5,2) * t268;
t164 = t243 * t507 + t311 * t503;
t163 = t243 * t503 - t311 * t507;
t151 = Ifges(5,1) * t268 + t262 + t836;
t149 = Ifges(5,5) * t268 + Ifges(5,6) * t267 + Ifges(5,3) * t898;
t148 = -mrSges(7,1) * t263 + mrSges(7,2) * t203;
t147 = mrSges(6,1) * t263 - t732;
t146 = -mrSges(6,2) * t263 - t733;
t145 = -mrSges(7,2) * t202 + mrSges(7,3) * t263;
t142 = (t380 * t502 + t421 * t500) * t509 + t606;
t140 = -mrSges(4,1) * t225 + mrSges(4,2) * t224;
t121 = mrSges(6,1) * t202 + mrSges(6,2) * t203;
t120 = mrSges(7,1) * t202 - mrSges(7,3) * t203;
t119 = pkin(5) * t203 + qJ(6) * t202;
t99 = -qJD(5) * t230 + t175 * t507 + t280 * t503;
t98 = qJD(5) * t231 + t175 * t503 - t280 * t507;
t86 = -mrSges(5,2) * t221 + mrSges(5,3) * t133;
t85 = mrSges(5,1) * t221 - mrSges(5,3) * t132;
t70 = -mrSges(5,1) * t133 + mrSges(5,2) * t132;
t55 = pkin(5) * t230 - qJ(6) * t231 + t103;
t46 = -pkin(5) * t268 - t58;
t45 = qJ(6) * t268 + t59;
t41 = -pkin(5) * t301 - t47;
t40 = qJ(6) * t301 + t827;
t34 = -mrSges(6,2) * t131 - mrSges(6,3) * t69;
t32 = mrSges(6,1) * t131 - mrSges(6,3) * t68;
t31 = -mrSges(7,2) * t69 + mrSges(7,3) * t131;
t23 = mrSges(6,1) * t69 + mrSges(6,2) * t68;
t22 = mrSges(7,1) * t69 - mrSges(7,3) * t68;
t10 = pkin(5) * t98 - qJ(6) * t99 - qJD(6) * t231 + t30;
t7 = -pkin(5) * t174 - t9;
t6 = qJ(6) * t174 + qJD(6) * t301 + t8;
t11 = [(Ifges(5,4) * t175 + Ifges(5,6) * t280) * t764 + (Ifges(6,4) * t776 + Ifges(7,5) * t775 + t845 * t773 + t843 * t766 + t837 / 0.2e1 + t854) * t99 + (Ifges(5,5) * t175 + Ifges(5,3) * t280) * t849 + t880 * t230 + (-t82 * mrSges(4,3) - t884 - t887) * t371 + (-mrSges(4,3) * t83 + 0.2e1 * t782) * t372 + ((t797 * qJD(1) * (-Ifges(3,2) * t506 + t730) + t501 * t389) * t510 + t533) * qJD(2) / 0.2e1 + (-m(3) * t595 - m(4) * t523 - m(5) * t518 + mrSges(2,1) * t751 + t450 * mrSges(3,1) - t310 * mrSges(4,1) - t241 * mrSges(5,1) + t511 * mrSges(2,2) - t449 * mrSges(3,2) - mrSges(3,3) * t695 - mrSges(4,3) * t546 + t783 * (t241 * pkin(4) + pkin(12) * t858 + t518) - t847 * t307 - t610 * t890 + t605 * t891 + t811 * t858) * g(1) + (-Ifges(4,6) * t770 - Ifges(4,5) * t771 - Ifges(4,3) * t757 - t114 / 0.2e1 + t806) * t528 + (-Ifges(6,2) * t776 + Ifges(7,3) * t775 - t766 * t886 + t773 * t844 - t800 + t812) * t98 - t452 * t657 + t882 * t301 + (Ifges(5,1) * t175 + Ifges(5,5) * t280) * t762 + t343 * (Ifges(4,4) * t281 - Ifges(4,2) * t280 + Ifges(4,6) * t601) / 0.2e1 + t186 * (mrSges(4,1) * t601 - mrSges(4,3) * t281) + t214 * t601 / 0.2e1 + t187 * (-mrSges(4,2) * t601 - mrSges(4,3) * t280) + t404 * (Ifges(4,5) * t281 - Ifges(4,6) * t280 + Ifges(4,3) * t601) / 0.2e1 + (Ifges(4,1) * t281 - Ifges(4,4) * t280 + Ifges(4,5) * t601) * t758 - (-mrSges(3,1) * t440 + mrSges(3,2) * t441) * t750 + m(6) * (t103 * t13 + t3 * t827 + t30 * t78 + t37 * t9 + t38 * t8 + t4 * t47) + t827 * t34 + (Ifges(3,1) * t441 + Ifges(3,4) * t440 + Ifges(3,5) * t484) * t632 + t894 * t231 + t712 * t646 / 0.2e1 + t340 * (-mrSges(3,2) * t712 + t658) + t484 * (Ifges(3,3) * t712 + (Ifges(3,5) * t506 + Ifges(3,6) * t510) * t501) / 0.2e1 + t341 * (mrSges(3,1) * t712 - mrSges(3,3) * t697) + t440 * (Ifges(3,6) * t712 + t537) / 0.2e1 + (Ifges(3,4) * t441 + Ifges(3,2) * t440 + Ifges(3,6) * t484) * t696 / 0.2e1 + m(4) * (t141 * t187 + t142 * t186 + t181 * t278 + t222 * t83 + t223 * t82 + t258 * t283) + m(5) * (t107 * t21 + t108 * t20 + t135 * t165 + t188 * t76 + t35 * t89 + t36 * t88) + m(7) * (t1 * t40 + t10 * t39 + t2 * t41 + t27 * t7 + t28 * t6 + t5 * t55) + (-t388 / 0.2e1 - t435 * mrSges(3,3)) * t640 + t441 * (Ifges(3,5) * t712 + (Ifges(3,1) * t506 + t730) * t501) / 0.2e1 + t283 * t248 + t88 * (mrSges(5,1) * t280 - mrSges(5,3) * t175) + t280 * t149 / 0.2e1 - t280 * t215 / 0.2e1 + t258 * (mrSges(4,1) * t280 + mrSges(4,2) * t281) + t281 * t216 / 0.2e1 + t141 * t275 + t142 * t276 + t278 * t140 + Ifges(2,3) * qJDD(1) + t223 * t171 + t222 * t170 + t35 * t206 + t36 * t207 - t433 * qJD(2) * t658 + t76 * t588 + t181 * t589 + t188 * t70 + t175 * t151 / 0.2e1 + t135 * t168 + t7 * t148 + t8 * t146 + t9 * t147 + (t804 + t872 - t877) * t302 + t6 * t145 + (-m(3) * t676 - m(4) * t515 - m(5) * t513 - t511 * mrSges(2,1) - t451 * mrSges(3,1) - t312 * mrSges(4,1) - t243 * mrSges(5,1) + mrSges(2,2) * t751 + mrSges(3,2) * t524 - mrSges(3,3) * t643 - mrSges(4,3) * t516 + t783 * (t243 * pkin(4) + t242 * pkin(12) + t513) + t847 * t311 - t610 * t164 + t605 * t163 + t811 * t242) * g(2) + t10 * t120 + t30 * t121 + t107 * t85 + t108 * t86 + t103 * t23 + (t165 * t175 - t280 * t89) * mrSges(5,2) + t677 * (-mrSges(3,2) * t484 + mrSges(3,3) * t440) + m(3) * (pkin(1) ^ 2 * qJDD(1) * t797 + t340 * t677 + t341 * t455 - t433 * t439 + t435 * t438) - t861 * t663 + t40 * t31 + t41 * t33 + t438 * t432 - t439 * t431 + t47 * t32 + t55 * t22 + t455 * (mrSges(3,1) * t484 - mrSges(3,3) * t441) + (Ifges(6,6) * t776 + Ifges(7,6) * t775 - Ifges(5,4) * t762 - Ifges(5,2) * t764 - t89 * mrSges(5,3) - Ifges(5,6) * t849 + t871 + t843 * t773 + t841 * t766 + t778 + t838 / 0.2e1 + t855) * t174; (-mrSges(5,1) * t895 + mrSges(5,3) * t679) * t88 + (mrSges(5,2) * t895 + mrSges(5,3) * t680) * t89 + (-t416 * mrSges(4,1) - mrSges(4,3) * t655 + t452 - t346 * mrSges(5,1) + t549 * t415 - t610 * (t346 * t507 + t415 * t503) + t605 * (t346 * t503 - t415 * t507) + t547 * (t416 * t504 - t508 * t655) + t783 * (t346 * pkin(4) + t647)) * g(3) + (mrSges(3,1) * t449 - t270 * mrSges(5,1) - t333 * mrSges(4,1) + t525 * t450 + t549 * t332 - t610 * (t270 * t507 + t332 * t503) + t605 * (t270 * t503 - t332 * t507) + t547 * (t333 * t504 - t450 * t699) + t783 * (t270 * pkin(4) + t682)) * g(2) + (t524 * mrSges(3,1) - t272 * mrSges(5,1) - t335 * mrSges(4,1) + t525 * t451 + t549 * t334 - t610 * (t272 * t507 + t334 * t503) + t605 * (t272 * t503 - t334 * t507) + t547 * (t335 * t504 - t451 * t699) + t783 * (t272 * pkin(4) + t681)) * g(1) + t880 * t384 + (t149 - t215) * (t505 * t626 - t399 / 0.2e1) - (-Ifges(3,2) * t642 + t389 + t481) * t641 / 0.2e1 + (t93 - t90) * (t256 / 0.2e1 - t255 / 0.2e1) + (t509 * t216 + t343 * (-Ifges(4,2) * t505 + t728) + t344 * (Ifges(4,1) * t509 - t729) + t404 * (Ifges(4,5) * t509 - Ifges(4,6) * t505)) * t626 + (-t256 * t886 + t257 * t843 + t330 * t841) * t767 + (t254 * t843 - t255 * t886 + t383 * t841) * t766 + (mrSges(5,1) * t76 + t882) * t447 + (Ifges(4,6) * t502 + (Ifges(4,2) * t509 + t729) * t500) * t770 + (Ifges(4,5) * t502 + (Ifges(4,1) * t505 + t728) * t500) * t771 + (Ifges(4,1) * t400 - Ifges(4,4) * t399 + Ifges(4,5) * t602) * t759 + (Ifges(4,4) * t400 - Ifges(4,2) * t399 + Ifges(4,6) * t602) * t760 + (Ifges(5,1) * t382 - Ifges(5,4) * t383 + Ifges(5,5) * t636) * t762 + (Ifges(5,1) * t331 - Ifges(5,4) * t330 + Ifges(5,5) * t399) * t763 + (Ifges(5,4) * t382 - Ifges(5,2) * t383 + Ifges(5,6) * t636) * t764 + (Ifges(5,4) * t331 - Ifges(5,2) * t330 + Ifges(5,6) * t399) * t765 + (mrSges(6,2) * t680 - mrSges(6,3) * t683) * t38 + (-mrSges(7,2) * t683 - mrSges(7,3) * t680) * t28 + (mrSges(6,1) * t683 + mrSges(6,2) * t684) * t78 + (mrSges(7,1) * t680 + mrSges(7,2) * t684) * t27 + (mrSges(7,1) * t683 - mrSges(7,3) * t684) * t39 + (-mrSges(6,1) * t680 - mrSges(6,3) * t684) * t37 - t140 * t749 + (-mrSges(5,1) * t680 - mrSges(5,2) * t679) * t165 + t826 * t34 + (-t331 / 0.2e1 + t382 / 0.2e1) * t151 + (t186 * t400 + t187 * t399 + (-t505 * t83 + t509 * t82 + (-t186 * t509 - t187 * t505) * qJD(3)) * t500) * mrSges(4,3) - t340 * mrSges(3,2) + t341 * mrSges(3,1) + t894 * t385 + t646 + (Ifges(6,4) * t257 + Ifges(7,5) * t254 - Ifges(6,2) * t256 + Ifges(6,6) * t330 + Ifges(7,6) * t383 + Ifges(7,3) * t255) * t775 + (Ifges(6,4) * t254 + Ifges(7,5) * t257 - Ifges(6,2) * t255 + Ifges(6,6) * t383 + Ifges(7,6) * t330 + Ifges(7,3) * t256) * t776 + t320 * t86 + t319 * t85 + t305 * t23 - t282 * t248 + t204 * t22 + t200 * t32 + (Ifges(4,5) * t400 - Ifges(4,6) * t399 + Ifges(4,3) * t602) * t755 + (Ifges(4,3) * t502 + (Ifges(4,5) * t505 + Ifges(4,6) * t509) * t500) * t757 + (Ifges(5,5) * t331 - Ifges(5,6) * t330 + Ifges(5,3) * t399) * t848 + (Ifges(5,5) * t382 - Ifges(5,6) * t383 + Ifges(5,3) * t636) * t849 + (-t533 / 0.2e1 + t388 * t632 + t861 * qJD(1)) * qJD(1) + t172 * t31 + t173 * t33 + (mrSges(5,2) * t76 + 0.2e1 * t792 - t877) * t448 + (t256 * t844 + t257 * t845 + t330 * t843) * t774 + (t254 * t845 + t255 * t844 + t383 * t843) * t773 + (t150 - t838) * (t330 / 0.2e1 - t383 / 0.2e1) + t874 * t146 + (t13 * t305 + t200 * t4 + t826 * t3 + t37 * t873 + t38 * t874 + t78 * t866) * m(6) + t875 * t148 + t876 * t145 + (t1 * t172 + t173 * t2 + t204 * t5 + t27 * t875 + t28 * t876 + t39 * t870) * m(7) + t873 * t147 + t837 * (-t257 / 0.2e1 + t254 / 0.2e1) + t700 * t782 + t884 * t698 - t214 * t602 / 0.2e1 - t400 * t216 / 0.2e1 + t425 * t70 - t433 * t432 + t435 * t431 + t862 * t207 + t863 * t206 + t864 * t275 + t865 * t276 + (g(1) * t444 + g(2) * t442 - g(3) * t678 - t181 * t749 + t186 * t865 + t187 * t864 - t258 * t282 + t454 * t83 + t456 * t82) * m(4) + t866 * t121 + t867 * t168 + (-g(1) * t681 - g(2) * t682 - g(3) * t647 + t165 * t867 + t20 * t320 + t21 * t319 + t425 * t76 + t862 * t88 + t863 * t89) * m(5) + (t433 * t510 + t435 * t506) * mrSges(3,3) * t675 + t454 * t170 + t456 * t171 + t870 * t120 + t502 * t114 / 0.2e1 + (-t258 * t400 - t502 * t82 + (t181 * t505 + t187 * t642 + t258 * t672) * t500) * mrSges(4,2) + (-t258 * t399 + t502 * t83 + (-t181 * t509 - t186 * t642 + t258 * t673) * t500) * mrSges(4,1); (Ifges(6,4) * t775 + Ifges(7,5) * t776 + t767 * t843 + t774 * t845 - t854) * t245 + t860 * t504 * t507 + (t216 + t338) * t760 + (-mrSges(4,1) * t258 - mrSges(5,1) * t88 + mrSges(5,2) * t89 + Ifges(5,5) * t763 - Ifges(4,2) * t760 - Ifges(4,6) * t755 + Ifges(5,6) * t765 + Ifges(5,3) * t848) * t344 + (t149 - t713) * t759 + (-t258 * mrSges(4,2) + Ifges(4,1) * t759 + Ifges(4,5) * t755 + t572 * t848 + t577 * t765 + t582 * t763 - t538) * t343 + (-pkin(3) * t76 - t137 * t88 - t138 * t89) * m(5) + (-t112 * t78 + t3 * t423 + t830 * t37 + t831 * t38 + t4 * t422) * m(6) + (-t206 * t671 + t508 * t86 + (-t85 + t23) * t504 + ((-t504 * t89 - t508 * t88) * qJD(4) + t816) * m(5) + (t670 * t78 + t718) * m(6)) * pkin(11) + (t671 / 0.2e1 - t707 / 0.2e1) * t838 + t893 * t508 + t803 * t503 * t504 + (-Ifges(6,2) * t775 + Ifges(7,3) * t776 - t767 * t886 + t774 * t844 + t800 + t813) * t244 + t726 * t779 + (-t661 - t137) * t207 + t38 * (-mrSges(6,2) * t671 - mrSges(6,3) * t530) + t27 * (-mrSges(7,1) * t671 + mrSges(7,2) * t531) + t28 * (-mrSges(7,2) * t530 + mrSges(7,3) * t671) + t37 * (mrSges(6,1) * t671 - mrSges(6,3) * t531) + t114 + t725 * t780 + t215 * t758 + (-m(5) * t619 - mrSges(4,2) * t310 + t846 * t709 + t783 * (-pkin(12) * t709 - t307 * t748 + t619) + t829 * t307 - t610 * (-t307 * t686 - t310 * t503) + t605 * (-t307 * t691 + t310 * t507)) * g(2) + (t267 * t577 + t268 * t582) * qJD(4) / 0.2e1 + (t624 - t706 / 0.2e1) * t151 + (-t112 + t661) * t121 + t78 * (mrSges(6,1) * t530 + mrSges(6,2) * t531) + t39 * (mrSges(7,1) * t530 - mrSges(7,3) * t531) + (t150 / 0.2e1 + t798) * t707 + (-t275 + t735) * t186 - t138 * t206 + t585 * t718 + t76 * t587 + (-m(5) * t618 + mrSges(4,2) * t312 + t846 * t708 + t783 * (-pkin(12) * t708 - t311 * t748 + t618) + t829 * t311 - t610 * (-t311 * t686 + t312 * t503) + t605 * (-t311 * t691 - t312 * t507)) * g(1) + (-m(5) * t617 - t371 * t587 + t589 + t846 * t705 + t783 * (-pkin(12) * t705 - t371 * t748 + t617) - t610 * (-t371 * t686 + t372 * t503) + t605 * (-t371 * t691 - t372 * t507)) * g(3) + ((Ifges(7,6) * t504 + t508 * t569) * t775 + t572 * t849 + (Ifges(6,6) * t504 + t508 * t576) * t776 + t538 + (t504 * t843 + t508 * t819) * t773 + (t504 * t841 + t508 * t821) * t766) * qJD(4) + t837 * (t503 * t621 + t507 * t624 - t245 / 0.2e1) + t671 * t778 + (-g(1) * t312 + g(2) * t310 - g(3) * t372 - t885 * t89 + (-t670 + t706) * t88 + t816) * mrSges(5,3) + t394 * t31 + t395 * t33 + (t5 * t583 + t569 * t789 + t576 * t790 + t620 * t90 + t781 * t821 + t791 * t819 + t804) * t504 + (-t568 * t775 - t575 * t776 - t766 * t822 - t773 * t820) * t667 + t507 * t93 * t621 + t503 * t90 * t624 - t806 + t422 * t32 + t423 * t34 + t430 * t22 + (-m(5) * t165 - t168 + t276 + t734) * t187 + t637 * t786 + t830 * t147 + t831 * t146 + t832 * t120 + t833 * t148 + t834 * t145 + (t1 * t394 + t2 * t395 + t27 * t833 + t28 * t834 + t39 * t832 + t430 * t5) * m(7) - pkin(3) * t70 - t840 * t508 / 0.2e1; t503 * t879 + (-Ifges(5,2) * t765 + t835 / 0.2e1 - t871 + t798) * t268 + (t576 * t775 + Ifges(5,1) * t763 - t836 / 0.2e1 - t165 * mrSges(5,2) + t569 * t776 + t819 * t774 + t821 * t767 - t823) * t267 + (-mrSges(5,2) * t241 + t783 * (pkin(4) * t858 - pkin(12) * t241) - t810 * t858) * g(2) + (-m(6) * t78 - t121 + t207 + t714) * t89 + (-t206 + t715) * t88 + (t203 * t819 + t263 * t821) * qJD(5) / 0.2e1 + (-t32 + t33) * pkin(12) * t503 + (-t576 / 0.2e1 + t569 / 0.2e1) * t669 + t883 * t507 + t150 * t762 + (t620 - t710 / 0.2e1) * t837 + (-t659 - t58) * t147 + (t262 + t151) * t765 + t42 + (-t660 - t45) * t145 + (t31 + t34) * pkin(12) * t507 + (-t660 - t59) * t146 + t5 * t584 - t13 * t586 + (mrSges(5,2) * t243 + t783 * (-t242 * pkin(4) + pkin(12) * t243) + t810 * t242) * g(1) + (t824 * t301 + t614 * t783 + t588) * g(3) + t812 * t668 + t813 * t711 + (-t37 * t58 - t38 * t59 - pkin(4) * t13 + ((-t37 * t507 - t38 * t503) * qJD(5) + t815) * pkin(12)) * m(6) + (t27 * t818 + t28 * t817 + t802 + t814) * mrSges(7,2) + (-t37 * t818 + t38 * t817 + t802 + t815) * mrSges(6,3) + t820 * t791 + t822 * t781 + t823 * qJD(5) + (-t46 + t659) * t148 + t805 + t568 * t789 + t575 * t790 + t467 * t22 + t828 * t120 + (t467 * t5 + ((t27 * t507 - t28 * t503) * qJD(5) + t814) * pkin(12) - t27 * t46 - t28 * t45 + t828 * t39) * m(7) - pkin(4) * t23 + (-t727 + t838) * t763; t801 + (-t202 * t845 + t190 - t724 + t90) * t774 + t93 * t773 + (t163 * t610 + t164 * t605) * g(1) + (-t605 * t890 - t610 * t891) * g(2) + (t230 * t610 + t231 * t605) * g(3) + (t147 - t148 + t732) * t38 + (-t145 - t146 - t733) * t37 + (-Ifges(6,2) * t203 - t191 + t837) * t775 + (t202 * t27 + t203 * t28) * mrSges(7,2) + (-pkin(5) * t2 + qJ(6) * t1 - t119 * t39 - t27 * t38 + t28 * t825) * m(7) + (-t202 * t843 - t203 * t886) * t767 - t78 * (mrSges(6,1) * t203 - mrSges(6,2) * t202) - t39 * (mrSges(7,1) * t203 + mrSges(7,3) * t202) + qJD(6) * t145 - t119 * t120 + (Ifges(7,3) * t203 - t721) * t776 + qJ(6) * t31 - pkin(5) * t33 + t840; t203 * t120 - t263 * t145 + (-g(1) * t163 + g(2) * t891 - g(3) * t230 + t39 * t203 - t28 * t263 + t2) * m(7) + t33;];
tau  = t11;
