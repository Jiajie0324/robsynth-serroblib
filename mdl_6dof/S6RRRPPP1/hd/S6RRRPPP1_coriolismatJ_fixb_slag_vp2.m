% Calculate matrix of centrifugal and coriolis load on the joints for
% S6RRRPPP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha4,d1,d2,d3,theta4]';
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
% Cq [6x6]
%   matrix of coriolis and centrifugal joint torques

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 15:20
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S6RRRPPP1_coriolismatJ_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPPP1_coriolismatJ_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPPP1_coriolismatJ_fixb_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPPP1_coriolismatJ_fixb_slag_vp2: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRPPP1_coriolismatJ_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRRPPP1_coriolismatJ_fixb_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RRRPPP1_coriolismatJ_fixb_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 15:14:38
% EndTime: 2019-03-09 15:15:11
% DurationCPUTime: 18.27s
% Computational Cost: add. (28084->1179), mult. (72857->1642), div. (0->0), fcn. (74570->8), ass. (0->506)
t879 = (m(6) + m(7));
t882 = 2 * t879;
t598 = sin(pkin(10));
t599 = sin(pkin(6));
t602 = sin(qJ(3));
t605 = cos(qJ(2));
t601 = cos(pkin(6));
t603 = sin(qJ(2));
t740 = t603 * t601;
t639 = t599 * t605 + t602 * t740;
t881 = t598 * t639;
t600 = cos(pkin(10));
t880 = t600 * t639;
t793 = Ifges(4,6) * t602;
t604 = cos(qJ(3));
t795 = Ifges(4,5) * t604;
t640 = t795 / 0.2e1 - t793 / 0.2e1;
t878 = Ifges(3,4) - t640;
t750 = t599 * t602;
t641 = pkin(3) * t604 + qJ(4) * t750;
t547 = -pkin(2) - t641;
t695 = qJ(4) * t601 + pkin(9);
t556 = t695 * t602;
t877 = t600 * (t547 * t599 - t556 * t601);
t739 = t603 * t604;
t713 = t598 * t739;
t425 = t713 + t880;
t426 = t600 * t739 - t881;
t242 = -mrSges(7,2) * t426 + mrSges(7,3) * t425;
t244 = -mrSges(6,2) * t425 - mrSges(6,3) * t426;
t876 = t244 + t242;
t751 = t599 * t600;
t552 = -mrSges(6,1) * t751 - mrSges(6,3) * t601;
t553 = mrSges(7,1) * t751 + mrSges(7,2) * t601;
t875 = t553 - t552;
t596 = Ifges(4,4) * t604;
t874 = -Ifges(4,2) * t602 + t596;
t574 = Ifges(4,1) * t602 + t596;
t873 = t874 + t574;
t736 = t605 * t601;
t749 = t599 * t603;
t872 = -t602 * t736 + t749;
t871 = -mrSges(4,1) * t604 + mrSges(4,2) * t602;
t870 = t599 ^ 2 + t601 ^ 2;
t742 = t602 * t603;
t541 = t599 * t742 - t736;
t364 = m(7) * t541;
t729 = qJD(3) * t601;
t731 = qJD(2) * t604;
t869 = m(7) * (t599 * t731 - t729) - qJD(1) * t364;
t803 = t603 * pkin(9);
t572 = -pkin(2) * t605 - pkin(1) - t803;
t737 = t604 * t605;
t726 = pkin(8) * t737;
t484 = t602 * t572 + t726;
t370 = -qJ(4) * t639 + t484;
t548 = t604 * t572;
t715 = t601 * t739;
t645 = -qJ(4) * t715 + t548;
t383 = (-pkin(8) * t602 - pkin(3)) * t605 + t645;
t748 = t599 * t604;
t555 = pkin(3) * t602 - qJ(4) * t748;
t631 = pkin(8) + t555;
t465 = t631 * t603;
t116 = -t598 * t370 + t600 * (t383 * t601 + t465 * t599);
t804 = t603 * pkin(2);
t583 = -pkin(9) * t605 + t804;
t493 = -pkin(8) * t739 + t602 * t583;
t372 = qJ(4) * t872 + t493;
t492 = pkin(8) * t742 + t604 * t583;
t389 = -qJ(4) * t604 * t736 + t603 * pkin(3) + t492;
t466 = t631 * t605;
t119 = -t598 * t372 + t600 * (t389 * t601 + t466 * t599);
t868 = 0.2e1 * m(7);
t865 = 0.2e1 * qJD(3);
t864 = -m(5) / 0.2e1;
t863 = m(5) / 0.2e1;
t862 = -m(6) / 0.2e1;
t861 = m(6) / 0.2e1;
t860 = -m(7) / 0.2e1;
t859 = m(7) / 0.2e1;
t858 = mrSges(4,1) / 0.2e1;
t857 = -mrSges(4,2) / 0.2e1;
t856 = mrSges(7,2) / 0.2e1;
t855 = pkin(8) * mrSges(4,1);
t854 = pkin(8) * mrSges(4,2);
t745 = t601 * t602;
t529 = -t598 * t745 + t600 * t604;
t535 = t598 * t556;
t557 = t695 * t604;
t746 = t600 * t601;
t687 = t557 * t746 - t535;
t755 = t555 * t600;
t802 = pkin(4) + qJ(6);
t162 = pkin(5) * t529 + (-t602 * t802 - t755) * t599 + t687;
t853 = -t162 / 0.2e1;
t527 = t598 * t604 + t600 * t745;
t416 = t601 * t555 + t557 * t599;
t634 = -qJ(5) * t529 + t416;
t163 = t527 * t802 + t634;
t852 = -t163 / 0.2e1;
t234 = pkin(4) * t527 + t634;
t851 = -t234 / 0.2e1;
t428 = t598 * t872 + t600 * t737;
t783 = t428 * mrSges(5,2);
t427 = t527 * t605 - t600 * t749;
t789 = t427 * mrSges(5,1);
t246 = t783 + t789;
t850 = -t246 / 0.2e1;
t256 = (-pkin(4) * t602 - t755) * t599 + t687;
t849 = -t256 / 0.2e1;
t307 = mrSges(5,1) * t541 - mrSges(5,3) * t426;
t848 = -t307 / 0.2e1;
t311 = mrSges(6,1) * t425 - mrSges(6,3) * t541;
t847 = -t311 / 0.2e1;
t312 = -mrSges(7,1) * t425 + mrSges(7,2) * t541;
t846 = -t312 / 0.2e1;
t744 = t601 * t604;
t582 = t600 * t744;
t752 = t598 * t602;
t526 = -t582 + t752;
t718 = t598 * t744;
t528 = t600 * t602 + t718;
t374 = -mrSges(7,2) * t528 + mrSges(7,3) * t526;
t844 = -t374 / 0.2e1;
t377 = -mrSges(6,2) * t526 - mrSges(6,3) * t528;
t843 = -t377 / 0.2e1;
t842 = t425 / 0.2e1;
t841 = t425 / 0.4e1;
t840 = -t426 / 0.4e1;
t442 = mrSges(6,1) * t526 + mrSges(6,3) * t748;
t838 = -t442 / 0.2e1;
t447 = -mrSges(5,1) * t748 - mrSges(5,3) * t528;
t837 = -t447 / 0.2e1;
t834 = -t526 / 0.4e1;
t833 = t526 / 0.2e1;
t829 = t528 / 0.4e1;
t531 = (mrSges(6,2) * t600 - mrSges(6,3) * t598) * t599;
t827 = t531 / 0.2e1;
t533 = (-mrSges(7,2) * t598 - mrSges(7,3) * t600) * t599;
t826 = -t533 / 0.2e1;
t825 = t533 / 0.2e1;
t824 = -t541 / 0.2e1;
t550 = -mrSges(5,2) * t601 + mrSges(5,3) * t751;
t822 = t550 / 0.2e1;
t754 = t598 * t599;
t551 = mrSges(7,1) * t754 - mrSges(7,3) * t601;
t821 = t551 / 0.2e1;
t820 = t552 / 0.2e1;
t819 = t553 / 0.2e1;
t554 = mrSges(6,1) * t754 + mrSges(6,2) * t601;
t818 = t554 / 0.2e1;
t797 = Ifges(4,4) * t602;
t573 = t604 * Ifges(4,2) + t797;
t817 = -t573 / 0.2e1;
t816 = t600 / 0.2e1;
t815 = t601 / 0.2e1;
t814 = -t602 / 0.2e1;
t813 = t602 / 0.2e1;
t812 = -t604 / 0.2e1;
t811 = t604 / 0.2e1;
t424 = -t726 + (qJ(4) * t740 - t572) * t602;
t516 = t641 * t603;
t286 = -t424 * t599 + t601 * t516;
t810 = m(5) * t286;
t809 = m(5) * t416;
t808 = pkin(8) * t603;
t807 = pkin(8) * t605;
t560 = mrSges(4,2) * t605 - mrSges(4,3) * t742;
t806 = pkin(9) * t560;
t562 = -mrSges(4,1) * t605 - mrSges(4,3) * t739;
t805 = pkin(9) * t562;
t801 = m(7) * qJD(6);
t796 = Ifges(4,5) * t603;
t792 = Ifges(4,6) * t603;
t248 = -t383 * t599 + t601 * t465;
t638 = -qJ(5) * t426 + t248;
t101 = pkin(4) * t425 + t638;
t252 = -t389 * t599 + t601 * t466;
t637 = -qJ(5) * t428 + t252;
t102 = pkin(4) * t427 + t637;
t753 = t598 * t601;
t120 = t600 * t372 + t389 * t753 + t466 * t754;
t741 = t602 * t605;
t542 = t599 * t741 + t740;
t103 = -qJ(5) * t542 - t120;
t104 = -pkin(4) * t542 - t119;
t117 = t600 * t370 + t383 * t753 + t465 * t754;
t243 = mrSges(5,1) * t425 + mrSges(5,2) * t426;
t782 = t428 * mrSges(7,2);
t786 = t427 * mrSges(7,3);
t245 = -t782 + t786;
t781 = t428 * mrSges(6,3);
t787 = t427 * mrSges(6,2);
t247 = -t781 - t787;
t306 = -mrSges(5,2) * t541 - mrSges(5,3) * t425;
t308 = -mrSges(5,2) * t542 - mrSges(5,3) * t427;
t309 = mrSges(5,1) * t542 - mrSges(5,3) * t428;
t310 = mrSges(7,1) * t426 - mrSges(7,3) * t541;
t313 = mrSges(6,1) * t426 + mrSges(6,2) * t541;
t762 = t542 * mrSges(7,3);
t784 = t428 * mrSges(7,1);
t314 = -t762 + t784;
t315 = mrSges(6,1) * t427 - mrSges(6,3) * t542;
t763 = t542 * mrSges(7,2);
t788 = t427 * mrSges(7,1);
t316 = t763 - t788;
t764 = t542 * mrSges(6,2);
t785 = t428 * mrSges(6,1);
t317 = t764 + t785;
t727 = pkin(8) * t741;
t483 = t548 - t727;
t507 = t605 * t874 + t792;
t659 = Ifges(4,1) * t604 - t797;
t509 = t605 * t659 + t796;
t660 = mrSges(4,1) * t602 + mrSges(4,2) * t604;
t545 = t605 * t660;
t561 = -t603 * mrSges(4,2) - mrSges(4,3) * t741;
t563 = t603 * mrSges(4,1) - mrSges(4,3) * t737;
t61 = pkin(5) * t426 - t541 * t802 - t116;
t63 = pkin(5) * t428 - t542 * t802 - t119;
t171 = Ifges(7,5) * t541 + Ifges(7,6) * t425 + Ifges(7,3) * t426;
t179 = Ifges(6,4) * t541 - Ifges(6,2) * t426 + Ifges(6,6) * t425;
t187 = Ifges(5,1) * t426 - Ifges(5,4) * t425 + Ifges(5,5) * t541;
t680 = t187 / 0.2e1 + t171 / 0.2e1 - t179 / 0.2e1;
t176 = Ifges(5,5) * t428 - Ifges(5,6) * t427 + Ifges(5,3) * t542;
t184 = Ifges(7,1) * t542 + Ifges(7,4) * t427 + Ifges(7,5) * t428;
t186 = Ifges(6,1) * t542 - Ifges(6,4) * t428 + Ifges(6,5) * t427;
t681 = t186 / 0.2e1 + t176 / 0.2e1 + t184 / 0.2e1;
t173 = Ifges(6,5) * t541 - Ifges(6,6) * t426 + Ifges(6,3) * t425;
t177 = Ifges(7,4) * t541 + Ifges(7,2) * t425 + Ifges(7,6) * t426;
t181 = Ifges(5,4) * t426 - Ifges(5,2) * t425 + Ifges(5,6) * t541;
t682 = t181 / 0.2e1 - t173 / 0.2e1 - t177 / 0.2e1;
t172 = Ifges(7,5) * t542 + Ifges(7,6) * t427 + Ifges(7,3) * t428;
t180 = Ifges(6,4) * t542 - Ifges(6,2) * t428 + Ifges(6,6) * t427;
t188 = Ifges(5,1) * t428 - Ifges(5,4) * t427 + Ifges(5,5) * t542;
t683 = -t180 / 0.2e1 + t188 / 0.2e1 + t172 / 0.2e1;
t175 = Ifges(5,5) * t426 - Ifges(5,6) * t425 + Ifges(5,3) * t541;
t183 = Ifges(7,1) * t541 + Ifges(7,4) * t425 + Ifges(7,5) * t426;
t185 = Ifges(6,1) * t541 - Ifges(6,4) * t426 + Ifges(6,5) * t425;
t684 = t175 / 0.2e1 + t183 / 0.2e1 + t185 / 0.2e1;
t174 = Ifges(6,5) * t542 - Ifges(6,6) * t428 + Ifges(6,3) * t427;
t178 = Ifges(7,4) * t542 + Ifges(7,2) * t427 + Ifges(7,6) * t428;
t182 = Ifges(5,4) * t428 - Ifges(5,2) * t427 + Ifges(5,6) * t542;
t685 = t174 / 0.2e1 + t178 / 0.2e1 - t182 / 0.2e1;
t98 = -qJ(5) * t541 - t117;
t72 = -pkin(5) * t425 - t98;
t73 = t425 * t802 + t638;
t633 = t659 * t603;
t761 = t605 * Ifges(4,5);
t508 = t633 - t761;
t738 = t604 * t508;
t74 = t427 * t802 + t637;
t760 = t605 * Ifges(4,6);
t506 = t603 * t874 - t760;
t743 = t602 * t506;
t75 = -pkin(5) * t427 - t103;
t99 = -pkin(4) * t541 - t116;
t3 = m(7) * (t61 * t63 + t72 * t75 + t73 * t74) + m(6) * (t101 * t102 + t103 * t98 + t104 * t99) + m(5) * (t116 * t119 + t117 * t120 + t248 * t252) + t493 * t560 + t484 * t561 + t492 * t562 + t483 * t563 + t72 * t316 + t99 * t317 + t116 * t309 + t63 * t310 + t103 * t311 + t75 * t312 + t104 * t313 + t61 * t314 + t98 * t315 + t120 * t306 + t119 * t307 + t117 * t308 + t248 * t246 + t252 * t243 + t74 * t242 + t102 * t244 + t73 * t245 + t101 * t247 + m(4) * (t483 * t492 + t484 * t493) + (-pkin(1) * mrSges(3,2) + t738 / 0.2e1 - t743 / 0.2e1 + t878 * t605) * t605 + (-pkin(1) * mrSges(3,1) + t509 * t811 + t507 * t814 + pkin(8) * t545 - t878 * t603 + (-Ifges(4,3) + Ifges(3,1) - Ifges(3,2) + (m(4) * pkin(8) + t660) * pkin(8)) * t605) * t603 + t680 * t428 + t681 * t541 - t682 * t427 + t683 * t426 + t684 * t542 + t685 * t425;
t791 = t3 * qJD(1);
t423 = t645 - t727;
t140 = t600 * t423 + t424 * t753 + t516 * t754;
t717 = t599 * t739;
t124 = -qJ(5) * t717 - t140;
t467 = t598 * t742 - t600 * t715;
t100 = pkin(5) * t467 - t124;
t468 = t528 * t603;
t636 = qJ(5) * t468 + t286;
t105 = -t467 * t802 + t636;
t384 = t598 * t423;
t688 = -t424 * t746 + t384;
t756 = t516 * t600;
t127 = (-pkin(4) * t739 - t756) * t599 + t688;
t129 = -pkin(4) * t467 + t636;
t139 = -t384 + (t424 * t601 + t516 * t599) * t600;
t775 = t468 * mrSges(7,2);
t777 = t467 * mrSges(7,3);
t324 = t775 - t777;
t774 = t468 * mrSges(6,3);
t778 = t467 * mrSges(6,2);
t325 = t774 + t778;
t776 = t468 * mrSges(5,2);
t780 = t467 * mrSges(5,1);
t326 = -t776 - t780;
t396 = -t468 * mrSges(7,1) - mrSges(7,3) * t717;
t397 = -mrSges(6,1) * t467 - mrSges(6,3) * t717;
t779 = t467 * mrSges(7,1);
t398 = mrSges(7,2) * t717 + t779;
t399 = -t468 * mrSges(6,1) + mrSges(6,2) * t717;
t400 = -mrSges(5,2) * t717 + mrSges(5,3) * t467;
t401 = mrSges(5,1) * t717 + mrSges(5,3) * t468;
t281 = Ifges(7,1) * t717 - Ifges(7,4) * t467 - Ifges(7,5) * t468;
t282 = Ifges(6,1) * t717 + Ifges(6,4) * t468 - Ifges(6,5) * t467;
t283 = -Ifges(5,5) * t468 + Ifges(5,6) * t467 + Ifges(5,3) * t717;
t677 = t282 / 0.2e1 + t283 / 0.2e1 + t281 / 0.2e1;
t278 = Ifges(6,5) * t717 + Ifges(6,6) * t468 - Ifges(6,3) * t467;
t279 = Ifges(7,4) * t717 - Ifges(7,2) * t467 - Ifges(7,6) * t468;
t284 = -Ifges(5,4) * t468 + Ifges(5,2) * t467 + Ifges(5,6) * t717;
t678 = t278 / 0.2e1 + t279 / 0.2e1 - t284 / 0.2e1;
t277 = Ifges(7,5) * t717 - Ifges(7,6) * t467 - Ifges(7,3) * t468;
t280 = Ifges(6,4) * t717 + Ifges(6,2) * t468 - Ifges(6,6) * t467;
t285 = -Ifges(5,1) * t468 + Ifges(5,4) * t467 + Ifges(5,5) * t717;
t679 = t277 / 0.2e1 - t280 / 0.2e1 + t285 / 0.2e1;
t88 = -pkin(5) * t468 + (-t739 * t802 - t756) * t599 + t688;
t4 = t483 * t560 - t484 * t562 + t61 * t396 + t98 * t397 + t72 * t398 + t99 * t399 + t117 * t400 + t116 * t401 + t73 * t324 + t101 * t325 + t248 * t326 + t88 * t310 + t124 * t311 + t100 * t312 + t127 * t313 + t140 * t306 + t139 * t307 + t286 * t243 + t105 * t242 + t129 * t244 + m(7) * (t100 * t72 + t105 * t73 + t61 * t88) + m(6) * (t101 * t129 + t124 * t98 + t127 * t99) + m(5) * (t116 * t139 + t117 * t140 + t248 * t286) + (-t605 * (-Ifges(4,5) * t602 - Ifges(4,6) * t604) / 0.2e1 + t506 * t812 + t508 * t814 + (-pkin(8) * t871 + t573 * t813 - t574 * t811) * t603 + (t483 * t602 - t484 * t604) * mrSges(4,3) + t684 * t748) * t603 + t677 * t541 + t678 * t425 + t679 * t426 - t680 * t468 + t682 * t467;
t790 = t4 * qJD(1);
t773 = t527 * mrSges(5,1);
t772 = t527 * mrSges(7,1);
t771 = t527 * mrSges(6,2);
t770 = t527 * mrSges(7,3);
t769 = t529 * mrSges(6,1);
t768 = t529 * mrSges(7,1);
t767 = t529 * mrSges(5,2);
t766 = t529 * mrSges(7,2);
t765 = t529 * mrSges(6,3);
t686 = t600 * t870;
t342 = t686 * t739 - t881;
t343 = -t713 * t870 - t880;
t735 = -t311 + t312;
t12 = (t306 + t735) * t343 + (-t307 + t310 + t313) * t342 + m(6) * (t342 * t99 - t343 * t98) + m(7) * (t342 * t61 + t343 * t72) + m(5) * (-t116 * t342 + t117 * t343);
t759 = qJD(1) * t12;
t21 = t735 * t541 - t876 * t426 + m(6) * (-t101 * t426 - t541 * t98) + m(7) * (-t426 * t73 + t541 * t72);
t758 = qJD(1) * t21;
t32 = t425 * t242 + m(7) * (t425 * t73 - t541 * t61) - t541 * t310;
t757 = qJD(1) * t32;
t443 = -mrSges(7,1) * t526 - mrSges(7,2) * t748;
t734 = t442 - t443;
t536 = t598 * t557;
t733 = pkin(4) * t748 + t536;
t534 = pkin(3) * t753 + qJ(4) * t751;
t730 = qJD(3) * t599;
t728 = m(6) / 0.4e1 + m(7) / 0.4e1;
t725 = pkin(9) * mrSges(4,3) / 0.2e1;
t724 = t599 * t801;
t723 = mrSges(7,3) * t750;
t722 = t252 * t864;
t721 = -mrSges(7,1) / 0.2e1 - mrSges(6,1) / 0.2e1;
t720 = mrSges(7,3) / 0.2e1 - mrSges(6,2) / 0.2e1;
t719 = Ifges(4,1) / 0.4e1 - Ifges(4,2) / 0.4e1;
t294 = t555 * t754 - t600 * t556 - t557 * t753;
t291 = t547 * t754 - t556 * t753 + t600 * t557;
t712 = -pkin(3) * t600 - pkin(4);
t710 = -t751 / 0.2e1;
t709 = t750 / 0.2e1;
t706 = t748 / 0.2e1;
t704 = t244 / 0.2e1 + t242 / 0.2e1;
t703 = t311 / 0.2e1 + t846;
t702 = t843 + t844;
t699 = t838 + t443 / 0.2e1;
t698 = t825 + t827;
t697 = t820 - t553 / 0.2e1;
t696 = -qJ(5) * t598 - pkin(3);
t411 = t601 * t547 + t556 * t599;
t693 = -mrSges(4,3) * t803 / 0.2e1;
t692 = t739 * t856;
t690 = -mrSges(5,1) / 0.2e1 - t720;
t689 = mrSges(6,3) / 0.2e1 - mrSges(5,2) / 0.2e1 + t856;
t473 = -qJ(5) * t601 - t534;
t676 = t306 / 0.2e1 - t703;
t675 = t313 / 0.2e1 + t310 / 0.2e1 + t848;
t330 = Ifges(7,5) * t750 + Ifges(7,6) * t527 + Ifges(7,3) * t529;
t336 = Ifges(6,4) * t750 - Ifges(6,2) * t529 + Ifges(6,6) * t527;
t349 = Ifges(5,1) * t529 - Ifges(5,4) * t527 + Ifges(5,5) * t750;
t674 = t330 / 0.2e1 - t336 / 0.2e1 + t349 / 0.2e1;
t332 = Ifges(6,5) * t750 - Ifges(6,6) * t529 + Ifges(6,3) * t527;
t334 = Ifges(7,4) * t750 + Ifges(7,2) * t527 + Ifges(7,6) * t529;
t347 = Ifges(5,4) * t529 - Ifges(5,2) * t527 + Ifges(5,6) * t750;
t673 = t334 / 0.2e1 + t332 / 0.2e1 - t347 / 0.2e1;
t339 = -Ifges(7,1) * t748 + Ifges(7,4) * t526 + Ifges(7,5) * t528;
t341 = -Ifges(6,1) * t748 - Ifges(6,4) * t528 + Ifges(6,5) * t526;
t344 = Ifges(5,5) * t528 - Ifges(5,6) * t526 - Ifges(5,3) * t748;
t672 = t344 / 0.2e1 + t339 / 0.2e1 + t341 / 0.2e1;
t338 = Ifges(7,1) * t750 + Ifges(7,4) * t527 + Ifges(7,5) * t529;
t340 = Ifges(6,1) * t750 - Ifges(6,4) * t529 + Ifges(6,5) * t527;
t345 = Ifges(5,5) * t529 - Ifges(5,6) * t527 + Ifges(5,3) * t750;
t671 = t345 / 0.2e1 + t338 / 0.2e1 + t340 / 0.2e1;
t333 = -Ifges(6,5) * t748 - Ifges(6,6) * t528 + Ifges(6,3) * t526;
t335 = -Ifges(7,4) * t748 + Ifges(7,2) * t526 + Ifges(7,6) * t528;
t346 = Ifges(5,4) * t528 - Ifges(5,2) * t526 - Ifges(5,6) * t748;
t670 = -t346 / 0.2e1 + t335 / 0.2e1 + t333 / 0.2e1;
t331 = -Ifges(7,5) * t748 + Ifges(7,6) * t526 + Ifges(7,3) * t528;
t337 = -Ifges(6,4) * t748 - Ifges(6,2) * t528 + Ifges(6,6) * t526;
t348 = Ifges(5,1) * t528 - Ifges(5,4) * t526 - Ifges(5,5) * t748;
t669 = t348 / 0.2e1 + t331 / 0.2e1 - t337 / 0.2e1;
t441 = mrSges(7,1) * t528 + mrSges(7,3) * t748;
t444 = mrSges(6,1) * t528 - mrSges(6,2) * t748;
t668 = t441 / 0.2e1 + t837 + t444 / 0.2e1;
t445 = mrSges(5,2) * t748 - mrSges(5,3) * t526;
t667 = t445 / 0.2e1 + t699;
t474 = Ifges(5,3) * t601 + (Ifges(5,5) * t598 + Ifges(5,6) * t600) * t599;
t481 = Ifges(7,1) * t601 + (-Ifges(7,4) * t600 + Ifges(7,5) * t598) * t599;
t482 = Ifges(6,1) * t601 + (-Ifges(6,4) * t598 - Ifges(6,5) * t600) * t599;
t666 = t474 / 0.2e1 + t481 / 0.2e1 + t482 / 0.2e1;
t476 = Ifges(5,5) * t601 + (Ifges(5,1) * t598 + Ifges(5,4) * t600) * t599;
t477 = Ifges(7,5) * t601 + (-Ifges(7,6) * t600 + Ifges(7,3) * t598) * t599;
t480 = Ifges(6,4) * t601 + (-Ifges(6,2) * t598 - Ifges(6,6) * t600) * t599;
t665 = t476 / 0.2e1 + t477 / 0.2e1 - t480 / 0.2e1;
t475 = Ifges(5,6) * t601 + (Ifges(5,4) * t598 + Ifges(5,2) * t600) * t599;
t478 = Ifges(6,5) * t601 + (-Ifges(6,6) * t598 - Ifges(6,3) * t600) * t599;
t479 = Ifges(7,4) * t601 + (-Ifges(7,2) * t600 + Ifges(7,6) * t598) * t599;
t664 = t478 / 0.2e1 + t479 / 0.2e1 - t475 / 0.2e1;
t663 = t822 - t697;
t549 = mrSges(5,1) * t601 - mrSges(5,3) * t754;
t662 = t821 - t549 / 0.2e1 + t818;
t656 = -t793 + t795;
t160 = t556 * t746 + pkin(5) * t528 + (qJ(6) * t604 - t547 * t600) * t599 + t733;
t635 = -qJ(5) * t528 + t411;
t161 = t526 * t802 + t635;
t253 = qJ(5) * t748 - t291;
t198 = -pkin(5) * t526 - t253;
t255 = -qJ(5) * t750 - t294;
t199 = -pkin(5) * t527 - t255;
t227 = pkin(4) * t526 + t635;
t254 = t733 - t877;
t290 = -t536 + t877;
t293 = t535 + (t555 * t599 - t557 * t601) * t600;
t375 = -t766 + t770;
t376 = mrSges(5,1) * t526 + mrSges(5,2) * t528;
t378 = t767 + t773;
t379 = -t765 - t771;
t437 = -t723 + t768;
t438 = mrSges(6,1) * t527 - mrSges(6,3) * t750;
t439 = mrSges(7,2) * t750 - t772;
t440 = mrSges(6,2) * t750 + t769;
t446 = -mrSges(5,2) * t750 - mrSges(5,3) * t527;
t448 = mrSges(5,1) * t750 - mrSges(5,3) * t529;
t606 = -t100 * t443 / 0.2e1 - t127 * t444 / 0.2e1 - t140 * t445 / 0.2e1 - t117 * t446 / 0.2e1 - t116 * t448 / 0.2e1 - t61 * t437 / 0.2e1 - t98 * t438 / 0.2e1 - t72 * t439 / 0.2e1 - t99 * t440 / 0.2e1 - t88 * t441 / 0.2e1 - t416 * t243 / 0.2e1 - t411 * t326 / 0.2e1 - t253 * t397 / 0.2e1 - t198 * t398 / 0.2e1 - t254 * t399 / 0.2e1 - t291 * t400 / 0.2e1 - t290 * t401 / 0.2e1 - t160 * t396 / 0.2e1 - t248 * t378 / 0.2e1 - t101 * t379 / 0.2e1 - t73 * t375 / 0.2e1 - t286 * t376 / 0.2e1 - t161 * t324 / 0.2e1 - t227 * t325 / 0.2e1 - t294 * t306 / 0.2e1 + (t116 * t293 + t117 * t294 + t139 * t290 + t140 * t291 + t248 * t416 + t286 * t411) * t864 + (t100 * t198 + t105 * t161 + t160 * t88 + t162 * t61 + t163 * t73 + t199 * t72) * t860 + (t101 * t234 + t124 * t253 + t127 * t254 + t129 * t227 + t255 * t98 + t256 * t99) * t862 + t129 * t843 + t105 * t844 + t199 * t846 + t255 * t847 + t293 * t848 + t313 * t849 + t244 * t851 + t242 * t852 + t310 * t853 + t139 * t837 + t124 * t838;
t589 = qJ(4) * t754;
t415 = pkin(5) * t754 + t589 + (-qJ(6) + t712) * t601;
t429 = pkin(5) * t751 - t473;
t430 = (-t600 * t802 + t696) * t599;
t490 = t601 * t712 + t589;
t491 = (-pkin(4) * t600 + t696) * t599;
t530 = pkin(3) * t746 - t589;
t532 = (-mrSges(5,1) * t600 + mrSges(5,2) * t598) * t599;
t607 = Ifges(4,3) * t603 / 0.2e1 + t119 * t549 / 0.2e1 + t252 * t532 / 0.2e1 + t534 * t308 / 0.2e1 + t530 * t309 / 0.2e1 + t491 * t247 / 0.2e1 + t490 * t317 / 0.2e1 + t473 * t315 / 0.2e1 + t430 * t245 / 0.2e1 + t429 * t316 / 0.2e1 + t415 * t314 / 0.2e1 + (t186 / 0.4e1 + t184 / 0.4e1 + t176 / 0.4e1) * t601 + (t482 / 0.4e1 + t481 / 0.4e1 + t474 / 0.4e1) * t542 + (t415 * t63 + t429 * t75 + t430 * t74) * t859 + (t102 * t491 + t103 * t473 + t104 * t490) * t861 + t493 * t857 + t492 * t858 + t74 * t825 + t102 * t827 + t104 * t818 + t75 * t819 + t103 * t820 + t63 * t821 + t120 * t822 + (t476 / 0.4e1 + t477 / 0.4e1 - t480 / 0.4e1) * t428 + (-t475 / 0.4e1 + t478 / 0.4e1 + t479 / 0.4e1) * t427;
t617 = (t182 / 0.4e1 - t178 / 0.4e1 - t174 / 0.4e1) * t600 + (t188 / 0.4e1 - t180 / 0.4e1 + t172 / 0.4e1) * t598;
t651 = t119 * t530 + t120 * t534;
t1 = (0.3e1 / 0.4e1 * t761 - t508 / 0.4e1 + t805 / 0.2e1 + (t283 / 0.4e1 + t282 / 0.4e1 + t281 / 0.4e1) * t599 + (pkin(2) * t858 + 0.3e1 / 0.4e1 * t797 - t854 / 0.2e1 + t573 / 0.4e1 + (t725 - t719) * t604 + (-t339 / 0.4e1 - t344 / 0.4e1 - t341 / 0.4e1) * t599) * t603) * t604 + t607 + (-pkin(3) * t252 * t599 + t651) * t863 + (-t338 / 0.4e1 - t345 / 0.4e1 - t340 / 0.4e1) * t541 + (-t187 / 0.4e1 - t171 / 0.4e1 + t179 / 0.4e1) * t529 + (t280 / 0.4e1 - t285 / 0.4e1 - t277 / 0.4e1) * t528 + (t181 / 0.4e1 - t177 / 0.4e1 - t173 / 0.4e1) * t527 + (-t279 / 0.4e1 - t278 / 0.4e1 + t284 / 0.4e1) * t526 + (t348 / 0.4e1 + t331 / 0.4e1 - t337 / 0.4e1) * t468 + (-t346 / 0.4e1 + t335 / 0.4e1 + t333 / 0.4e1) * t467 + t606 + (-t349 / 0.4e1 - t330 / 0.4e1 + t336 / 0.4e1) * t426 + (-t334 / 0.4e1 - t332 / 0.4e1 + t347 / 0.4e1) * t425 + (pkin(3) * t850 + t617) * t599 + (t506 / 0.4e1 - 0.3e1 / 0.4e1 * t760 + t806 / 0.2e1 + (-t185 / 0.4e1 - t183 / 0.4e1 - t175 / 0.4e1) * t599 + (-t855 / 0.2e1 + pkin(2) * t857 + t574 / 0.4e1 + t596 / 0.4e1 + (t725 + t719) * t602) * t603) * t602;
t5 = t873 * t811 + t199 * t443 + t256 * t444 + t294 * t445 + t291 * t446 + t293 * t447 + t290 * t448 + t160 * t437 + t253 * t438 + t198 * t439 + t254 * t440 + t162 * t441 + t255 * t442 + t416 * t376 + t411 * t378 + t234 * t377 + t227 * t379 + t163 * t374 + t161 * t375 + m(7) * (t160 * t162 + t161 * t163 + t198 * t199) + m(6) * (t227 * t234 + t253 * t255 + t254 * t256) + m(5) * (t290 * t293 + t291 * t294 + t411 * t416) + t659 * t813 + t573 * t814 - pkin(2) * t660 + t669 * t529 + t670 * t527 + (t602 * t672 - t604 * t671) * t599 + t673 * t526 + t674 * t528;
t655 = -t1 * qJD(1) + t5 * qJD(2);
t431 = t602 * t686 + t718;
t432 = -t752 * t870 + t582;
t24 = (t445 - t734) * t432 + (t441 + t444 - t447) * t431 + m(6) * (-t253 * t432 + t254 * t431) + m(7) * (t160 * t431 + t198 * t432) + m(5) * (-t290 * t431 + t291 * t432);
t610 = t676 * t432 + t675 * t431 + t668 * t342 + t667 * t343 + (-t116 * t431 + t117 * t432 - t290 * t342 + t291 * t343) * t863 + (-t253 * t343 + t254 * t342 + t431 * t99 - t432 * t98) * t861 + (t160 * t342 + t198 * t343 + t431 * t61 + t432 * t72) * t859;
t624 = t102 * t862 + t74 * t860 + t722;
t7 = t427 * t690 + t428 * t689 + t610 + t624;
t654 = -qJD(1) * t7 - qJD(2) * t24;
t611 = -t704 * t528 + t702 * t426 + t699 * t541 + t703 * t748 + (-t101 * t528 - t227 * t426 - t253 * t541 + t748 * t98) * t861 + (-t161 * t426 + t198 * t541 - t528 * t73 - t72 * t748) * t859;
t646 = t104 * t862 + t63 * t860;
t11 = t428 * t721 + t542 * t720 + t611 + t646;
t34 = t734 * t748 + (-t374 - t377) * t528 + m(6) * (-t227 * t528 + t253 * t748) + m(7) * (-t161 * t528 - t198 * t748);
t653 = qJD(1) * t11 + qJD(2) * t34;
t613 = (-t160 * t541 + t161 * t425 + t526 * t73 + t61 * t748) * t859 + t374 * t842 + t242 * t833 + t441 * t824 + t310 * t706;
t621 = t75 * t859 - t788 / 0.2e1 + t763 / 0.2e1;
t19 = -t613 + t621;
t49 = t526 * t374 + m(7) * (t160 * t748 + t161 * t526) + t441 * t748;
t652 = -qJD(1) * t19 + qJD(2) * t49;
t647 = t720 * t739;
t644 = m(6) * t849 + m(7) * t853;
t643 = t100 * t859 + t779 / 0.2e1;
t642 = t199 * t859 - t772 / 0.2e1;
t608 = (t598 * t668 + t600 * t667) * t599 + t663 * t432 + t662 * t431 + (-t431 * t530 + t432 * t534 + (-t290 * t598 + t291 * t600) * t599) * t863 + (t431 * t490 - t432 * t473 + (-t253 * t600 + t254 * t598) * t599) * t861 + (t415 * t431 + t429 * t432 + (t160 * t598 + t198 * t600) * t599) * t859;
t622 = -t809 / 0.2e1 + m(6) * t851 + m(7) * t852;
t16 = t527 * t690 + t529 * t689 + t608 + t622;
t47 = ((t550 + t875) * t600 + (-t549 + t551 + t554) * t598 + m(6) * (-t473 * t600 + t490 * t598) + m(7) * (t415 * t598 + t429 * t600) + m(5) * (-t530 * t598 + t534 * t600)) * t599;
t609 = (t675 * t598 + t676 * t600) * t599 + t663 * t343 + t662 * t342 + (-t342 * t530 + t343 * t534 + (-t116 * t598 + t117 * t600) * t599) * t863 + (t342 * t490 - t343 * t473 + (t598 * t99 - t600 * t98) * t599) * t861 + (t342 * t415 + t343 * t429 + (t598 * t61 + t600 * t72) * t599) * t859;
t623 = -t810 / 0.2e1 + t129 * t862 + t105 * t860;
t9 = -t467 * t690 - t468 * t689 + t609 + t623;
t630 = qJD(1) * t9 + qJD(2) * t16 + qJD(3) * t47;
t614 = (-t101 * t754 - t426 * t491 - t473 * t541 - t601 * t98) * t862 + (-t426 * t430 + t429 * t541 + t601 * t72 - t73 * t754) * t860;
t618 = t127 * t861 + t468 * t721 + t859 * t88;
t13 = t703 * t601 + t697 * t541 + t698 * t426 + (t598 * t704 - t647) * t599 + t614 + t618;
t612 = t699 * t601 - t698 * t528 + (-t253 * t601 - t491 * t528 + (-t227 * t598 + t473 * t604) * t599) * t861 + (t198 * t601 - t430 * t528 + (-t161 * t598 - t429 * t604) * t599) * t859;
t619 = t598 * t702 + t604 * t697;
t23 = t721 * t529 + (t602 * t720 + t619) * t599 + t612 + t644;
t56 = (m(6) * t491 + m(7) * t430 + t531 + t533) * t754 + (m(6) * t473 - m(7) * t429 - t875) * t601;
t629 = -qJD(1) * t13 + qJD(2) * t23 - qJD(3) * t56;
t113 = t533 * t751 + t601 * t551 - m(7) * (-t415 * t601 - t430 * t751);
t615 = (-t415 * t541 + t425 * t430 - t601 * t61 - t73 * t751) * t860 + t425 * t826 + t541 * t821 + t310 * t815;
t25 = (t242 * t816 + t692) * t599 + t615 + t643;
t616 = (-t160 * t601 + t430 * t526 + (-t161 * t600 + t415 * t604) * t599) * t860 + t526 * t826 + t441 * t815;
t35 = (mrSges(7,2) * t813 + t374 * t816 + t551 * t812) * t599 + t616 + t642;
t628 = qJD(1) * t25 + qJD(2) * t35 + qJD(3) * t113;
t125 = (t431 / 0.4e1 + t829) * t882;
t543 = t879 * t754;
t68 = (t840 - t342 / 0.4e1) * t882;
t627 = qJD(1) * t68 - qJD(2) * t125 - qJD(3) * t543;
t170 = (t841 - t343 / 0.4e1) * t868;
t298 = (t432 / 0.4e1 + t834) * t868;
t620 = m(7) * t600 * t730 - qJD(1) * t170 + qJD(2) * t298;
t299 = m(7) * t833 + t432 * t859;
t169 = m(7) * t842 + t343 * t859;
t126 = 0.2e1 * t728 * t431 - t879 * t528 / 0.2e1;
t67 = -0.2e1 * t728 * t426 + t879 * t342 / 0.2e1;
t36 = mrSges(7,2) * t709 + t374 * t710 + t551 * t706 - t616 + t642;
t26 = t242 * t710 + t599 * t692 - t615 + t643;
t22 = -t723 / 0.2e1 + t768 / 0.2e1 + mrSges(6,2) * t709 + t769 / 0.2e1 + t619 * t599 + t612 - t644;
t20 = t613 + t621;
t15 = t767 / 0.2e1 + t773 / 0.2e1 + t770 / 0.2e1 - t766 / 0.2e1 - t765 / 0.2e1 - t771 / 0.2e1 + t608 - t622;
t14 = t312 * t815 + t541 * t819 + t552 * t824 - t599 * t647 + t601 * t847 - t614 + t618 - t876 * t754 / 0.2e1 + (t826 - t531 / 0.2e1) * t426;
t10 = -t762 / 0.2e1 + t784 / 0.2e1 + t764 / 0.2e1 + t785 / 0.2e1 + t611 - t646;
t8 = t774 / 0.2e1 + t778 / 0.2e1 - t776 / 0.2e1 - t780 / 0.2e1 - t777 / 0.2e1 + t775 / 0.2e1 + t609 - t623;
t6 = -t781 / 0.2e1 - t787 / 0.2e1 + t783 / 0.2e1 + t789 / 0.2e1 + t786 / 0.2e1 - t782 / 0.2e1 + t610 - t624;
t2 = (t640 - t656 / 0.4e1) * t605 + (t334 + t332) * t841 + (t344 + t341 + t339) * t717 / 0.4e1 - (t283 + t282 + t281) * t748 / 0.4e1 + (t185 + t183 + t175) * t750 / 0.4e1 + (t345 + t340 + t338) * t541 / 0.4e1 + (t187 + t171) * t529 / 0.4e1 + (t177 + t173) * t527 / 0.4e1 + (t279 + t278) * t526 / 0.4e1 - (t348 + t331) * t468 / 0.4e1 - (t335 + t333) * t467 / 0.4e1 + (t349 + t330) * t426 / 0.4e1 + (t285 + t277) * t829 + t602 ^ 2 * t693 + t607 - t529 * t179 / 0.4e1 - t528 * t280 / 0.4e1 - t527 * t181 / 0.4e1 + t467 * t346 / 0.4e1 + t468 * t337 / 0.4e1 + (t633 / 0.4e1 + t693 * t604) * t604 - t425 * t347 / 0.4e1 + t651 * t863 + t284 * t834 + t336 * t840 + t805 * t812 + t806 * t814 + t739 * t817 + ((t722 + t850) * pkin(3) + t617) * t599 + t660 * t808 / 0.2e1 - t606 + (-t873 / 0.4e1 - t574 / 0.4e1) * t742 + t871 * t804 / 0.2e1 + t738 / 0.4e1 - t743 / 0.4e1;
t17 = [qJD(2) * t3 + qJD(3) * t4 + qJD(4) * t12 + qJD(5) * t21 + qJD(6) * t32, t791 + t2 * qJD(3) + t6 * qJD(4) + t10 * qJD(5) + t20 * qJD(6) + (t792 / 0.2e1 + t507 / 0.2e1 + pkin(9) * t561 + t493 * mrSges(4,3) + (-t855 + t574 / 0.2e1) * t605 - t681 * t599) * t731 + (t672 * t542 + t683 * t528 + t685 * t526 + t669 * t428 + t670 * t427 + (t796 / 0.2e1 + t509 / 0.2e1 - pkin(9) * t563 - t492 * mrSges(4,3) + (t817 + t854) * t605) * t602 + Ifges(3,5) * t605 - Ifges(3,6) * t603 - pkin(2) * t545 + t75 * t443 + t104 * t444 + t120 * t445 + t119 * t447 + t63 * t441 + t103 * t442 + t411 * t246 + t102 * t377 + t74 * t374 + t252 * t376 + t253 * t315 + t198 * t316 + t254 * t317 + t290 * t309 + t160 * t314 + t291 * t308 + t161 * t245 + t227 * t247 + 0.2e1 * (t119 * t290 + t120 * t291 + t252 * t411) * t863 + 0.2e1 * (t160 * t63 + t161 * t74 + t198 * t75) * t859 + 0.2e1 * (t102 * t227 + t103 * t253 + t104 * t254) * t861 - mrSges(3,1) * t807 + m(4) * (-pkin(2) * t807 + (-t492 * t602 + t493 * t604) * pkin(9)) + mrSges(3,2) * t808) * qJD(2), t790 + t2 * qJD(2) + t8 * qJD(4) + t14 * qJD(5) + t26 * qJD(6) + t677 * t729 + ((t139 * t530 + t140 * t534) * t863 + (t100 * t429 + t105 * t430 + t415 * t88) * t859 + (t124 * t473 + t127 * t490 + t129 * t491) * t861) * t865 + ((-t326 - t810) * pkin(3) + t666 * t739 - t678 * t600 + t679 * t598) * t730 + (t100 * t553 + t127 * t554 + t139 * t549 + t140 * t550 + t88 * t551 + t124 * t552 + t530 * t401 + t129 * t531 + t286 * t532 + t105 * t533 + t534 * t400 + t491 * t325 - t484 * mrSges(4,1) + t490 * t399 - t483 * mrSges(4,2) + t473 * t397 + t429 * t398 + t430 * t324 + t415 * t396 - Ifges(4,6) * t739 - Ifges(4,5) * t742 - t665 * t468 - t664 * t467) * qJD(3), qJD(2) * t6 + qJD(3) * t8 + qJD(5) * t67 + qJD(6) * t169 + t759, qJD(2) * t10 + qJD(3) * t14 + qJD(4) * t67 + t758, qJD(2) * t20 + qJD(3) * t26 + qJD(4) * t169 + t757; -qJD(3) * t1 + qJD(4) * t7 + qJD(5) * t11 - qJD(6) * t19 - t791, qJD(3) * t5 + qJD(4) * t24 + qJD(5) * t34 + qJD(6) * t49, t15 * qJD(4) + t22 * qJD(5) + t36 * qJD(6) + t671 * t729 + ((t293 * t530 + t294 * t534) * t863 + (t162 * t415 + t163 * t430 + t199 * t429) * t859 + (t234 * t491 + t255 * t473 + t256 * t490) * t861) * t865 + ((-t378 - t809) * pkin(3) + t666 * t602 - t673 * t600 + t674 * t598) * t730 + t655 + (t199 * t553 + t256 * t554 + t293 * t549 + t294 * t550 + t162 * t551 + t255 * t552 + t234 * t531 + t416 * t532 + t163 * t533 + t534 * t446 + t530 * t448 + t491 * t379 + t490 * t440 + t473 * t438 + t415 * t437 + t429 * t439 + t430 * t375 + t656 + t665 * t529 + t664 * t527 + t871 * pkin(9)) * qJD(3), qJD(3) * t15 + qJD(5) * t126 + qJD(6) * t299 - t654, qJD(3) * t22 + qJD(4) * t126 + t653, qJD(3) * t36 + qJD(4) * t299 + t652; qJD(2) * t1 + qJD(4) * t9 - qJD(5) * t13 - qJD(6) * t25 - t790, qJD(4) * t16 + qJD(5) * t23 - qJD(6) * t35 - t655, qJD(4) * t47 - qJD(5) * t56 - qJD(6) * t113, t630, t629, -t628; -qJD(2) * t7 - qJD(3) * t9 + qJD(5) * t68 + qJD(6) * t170 - t759, -qJD(3) * t16 - qJD(5) * t125 - qJD(6) * t298 + t654, -qJD(5) * t543 - t600 * t724 - t630, 0, t627, -t620; -qJD(2) * t11 + qJD(3) * t13 - qJD(4) * t68 - qJD(6) * t364 - t758, -qJD(3) * t23 + qJD(4) * t125 + t604 * t724 - t653, qJD(4) * t543 - t601 * t801 - t629, -t627, 0, t869; qJD(2) * t19 + qJD(3) * t25 - qJD(4) * t170 + qJD(5) * t364 - t757, -m(7) * qJD(5) * t748 + qJD(3) * t35 + qJD(4) * t298 - t652 (qJD(4) * t751 + qJD(5) * t601) * m(7) + t628, t620, -t869, 0;];
Cq  = t17;