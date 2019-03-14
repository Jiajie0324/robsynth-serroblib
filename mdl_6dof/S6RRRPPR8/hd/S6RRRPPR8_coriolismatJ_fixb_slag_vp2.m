% Calculate matrix of centrifugal and coriolis load on the joints for
% S6RRRPPR8
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d6]';
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
% Datum: 2019-03-09 16:10
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S6RRRPPR8_coriolismatJ_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPPR8_coriolismatJ_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPPR8_coriolismatJ_fixb_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPPR8_coriolismatJ_fixb_slag_vp2: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRPPR8_coriolismatJ_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRRPPR8_coriolismatJ_fixb_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RRRPPR8_coriolismatJ_fixb_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 16:03:48
% EndTime: 2019-03-09 16:04:24
% DurationCPUTime: 20.02s
% Computational Cost: add. (21218->1009), mult. (49887->1351), div. (0->0), fcn. (49829->8), ass. (0->477)
t889 = Ifges(6,1) + Ifges(5,3);
t561 = sin(qJ(6));
t557 = t561 ^ 2;
t564 = cos(qJ(6));
t558 = t564 ^ 2;
t707 = t557 + t558;
t895 = mrSges(7,3) * t707;
t890 = -Ifges(4,1) - Ifges(5,1);
t894 = Ifges(7,3) - t890;
t888 = Ifges(5,4) + Ifges(4,5);
t886 = -Ifges(4,6) + Ifges(5,6);
t565 = cos(qJ(3));
t562 = sin(qJ(3));
t781 = Ifges(5,5) * t562;
t786 = Ifges(6,4) * t562;
t893 = -t889 * t565 + t781 - t786;
t567 = -pkin(3) - pkin(4);
t699 = t562 * t567;
t714 = t565 * qJ(4);
t602 = t699 + t714;
t559 = sin(pkin(6));
t563 = sin(qJ(2));
t734 = t559 * t563;
t680 = -t734 / 0.2e1;
t892 = -mrSges(4,1) - mrSges(5,1);
t891 = mrSges(5,3) - mrSges(4,2);
t887 = Ifges(5,2) + Ifges(4,3);
t668 = -t558 / 0.2e1 - t557 / 0.2e1;
t885 = mrSges(7,3) * t668;
t551 = t564 * mrSges(7,1);
t753 = t561 * mrSges(7,2);
t876 = -t551 + t753;
t884 = -mrSges(6,1) + t876;
t560 = qJ(4) + pkin(5);
t883 = t560 * t565;
t566 = cos(qJ(2));
t733 = t559 * t566;
t882 = t560 * t733;
t742 = cos(pkin(6));
t684 = pkin(1) * t742;
t657 = t563 * t684;
t465 = pkin(8) * t733 + t657;
t404 = pkin(9) * t742 + t465;
t405 = (-pkin(2) * t566 - pkin(9) * t563 - pkin(1)) * t559;
t224 = t404 * t565 + t405 * t562;
t698 = qJ(4) * t733;
t182 = t224 - t698;
t460 = t562 * t734 - t565 * t742;
t741 = qJ(5) * t460;
t127 = -t182 - t741;
t153 = t224 + t741;
t881 = t153 + t127;
t665 = t404 * t562 - t565 * t405;
t183 = pkin(3) * t733 + t665;
t880 = t183 - t665;
t461 = t562 * t742 + t565 * t734;
t435 = Ifges(5,5) * t461;
t235 = -Ifges(5,6) * t733 + t460 * Ifges(5,3) + t435;
t787 = Ifges(6,4) * t461;
t238 = t460 * Ifges(6,1) + Ifges(6,5) * t733 - t787;
t879 = t238 + t235;
t760 = t460 * mrSges(5,2);
t351 = -mrSges(5,3) * t733 - t760;
t353 = mrSges(4,2) * t733 - t460 * mrSges(4,3);
t878 = t351 + t353;
t322 = t460 * t564 + t561 * t733;
t765 = t322 * mrSges(7,2);
t715 = t564 * t566;
t321 = -t460 * t561 + t559 * t715;
t767 = t321 * mrSges(7,1);
t158 = t765 - t767;
t759 = t460 * mrSges(6,3);
t352 = mrSges(6,1) * t733 - t759;
t711 = t352 - t158;
t505 = -t565 * pkin(3) - t562 * qJ(4) - pkin(2);
t510 = -t565 * mrSges(5,1) - t562 * mrSges(5,3);
t877 = -m(5) * t505 - t510;
t550 = t562 * mrSges(6,2);
t553 = t565 * mrSges(6,1);
t708 = t550 + t553;
t745 = t564 * mrSges(7,3);
t687 = -t745 / 0.2e1;
t752 = t561 * mrSges(7,3);
t689 = t752 / 0.2e1;
t875 = t321 * t689 + t322 * t687;
t805 = t565 / 0.2e1;
t874 = t805 * t895;
t797 = pkin(9) * t565;
t700 = -t797 / 0.2e1;
t798 = pkin(9) * t562;
t701 = -t798 / 0.2e1;
t873 = t460 * t701 + t461 * t700;
t872 = -t460 * t888 + t461 * t886;
t755 = t461 * mrSges(6,3);
t356 = -mrSges(6,2) * t733 - t755;
t756 = t461 * mrSges(7,2);
t766 = t321 * mrSges(7,3);
t210 = -t756 + t766;
t721 = t564 * t210;
t871 = t721 + t356;
t853 = -pkin(4) - pkin(10);
t556 = -pkin(3) + t853;
t664 = t556 * t562;
t376 = t664 + t883;
t511 = -t565 * qJ(5) + t797;
t271 = t376 * t561 + t511 * t564;
t737 = t271 * t564;
t270 = t376 * t564 - t511 * t561;
t738 = t270 * t561;
t611 = t737 - t738;
t115 = t322 * Ifges(7,5) + t321 * Ifges(7,6) + t461 * Ifges(7,3);
t782 = Ifges(5,5) * t460;
t239 = t461 * Ifges(5,1) - Ifges(5,4) * t733 + t782;
t439 = Ifges(4,4) * t460;
t240 = t461 * Ifges(4,1) - Ifges(4,5) * t733 - t439;
t870 = t240 + t239 + t115;
t774 = Ifges(7,6) * t561;
t777 = Ifges(7,5) * t564;
t626 = -t774 + t777;
t780 = Ifges(5,5) * t565;
t788 = Ifges(4,4) * t565;
t869 = t562 * t894 - t565 * t626 - t780 + t788;
t868 = t158 / 0.2e1 - t352 / 0.2e1;
t463 = -pkin(8) * t734 + t566 * t684;
t867 = -t465 * mrSges(3,1) - t463 * mrSges(3,2);
t464 = (pkin(2) * t563 - pkin(9) * t566) * t559;
t282 = t565 * t463 + t562 * t464;
t230 = qJ(4) * t734 + t282;
t723 = t562 * t566;
t697 = qJ(5) * t723;
t155 = (pkin(5) * t563 + t697) * t559 + t230;
t281 = -t562 * t463 + t464 * t565;
t712 = t565 * t566;
t696 = qJ(5) * t712;
t156 = (t563 * t567 - t696) * t559 - t281;
t180 = -t559 * t697 - t230;
t390 = (-t561 * t723 - t563 * t564) * t559;
t391 = (-t561 * t563 + t562 * t715) * t559;
t225 = -mrSges(7,1) * t390 + mrSges(7,2) * t391;
t232 = -pkin(3) * t734 - t281;
t423 = (-mrSges(6,1) * t563 - mrSges(6,3) * t723) * t559;
t425 = (t563 * mrSges(6,2) - mrSges(6,3) * t712) * t559;
t694 = t559 * t712;
t507 = mrSges(5,2) * t694;
t427 = -mrSges(5,1) * t734 + t507;
t428 = (-mrSges(5,2) * t723 + mrSges(5,3) * t563) * t559;
t136 = (t556 * t563 - t696) * t559 - t281;
t609 = qJ(4) * t694 - t657;
t151 = (pkin(5) * t565 - pkin(8) + t664) * t733 + t609;
t74 = -t136 * t561 + t151 * t564;
t75 = t136 * t564 + t151 * t561;
t621 = -t561 * t74 + t564 * t75;
t783 = Ifges(7,4) * t564;
t634 = Ifges(7,1) * t561 + t783;
t784 = Ifges(7,4) * t561;
t514 = -Ifges(7,2) * t564 - t784;
t821 = t514 / 0.4e1;
t825 = -t876 / 0.2e1;
t847 = -t232 / 0.2e1;
t857 = m(7) / 0.2e1;
t859 = m(6) / 0.2e1;
t861 = m(5) / 0.2e1;
t866 = (-pkin(3) * t232 + qJ(4) * t230) * t861 + (-qJ(4) * t180 + t156 * t567) * t859 + (t155 * t560 + t556 * t621) * t857 - pkin(3) * t427 / 0.2e1 + t155 * t825 + t156 * mrSges(6,2) / 0.2e1 - t180 * mrSges(6,1) / 0.2e1 + t230 * mrSges(5,3) / 0.2e1 + mrSges(5,1) * t847 + t281 * mrSges(4,1) / 0.2e1 - t282 * mrSges(4,2) / 0.2e1 + t390 * t821 - t391 * t634 / 0.4e1 + t560 * t225 / 0.2e1 + t567 * t425 / 0.2e1 + (t428 / 0.2e1 - t423 / 0.2e1) * qJ(4);
t776 = Ifges(7,2) * t561;
t629 = -t776 + t783;
t792 = Ifges(7,1) * t564;
t635 = -t784 + t792;
t746 = t564 * mrSges(7,2);
t754 = t561 * mrSges(7,1);
t642 = t746 + t754;
t810 = -t564 / 0.2e1;
t818 = -t561 / 0.2e1;
t865 = t560 * t642 + t629 * t810 + t635 * t818;
t863 = 0.2e1 * t461;
t862 = 2 * qJD(3);
t860 = -m(6) / 0.2e1;
t858 = -m(7) / 0.2e1;
t856 = m(7) / 0.4e1;
t855 = -mrSges(6,2) / 0.2e1;
t854 = -mrSges(7,2) / 0.2e1;
t317 = Ifges(7,4) * t321;
t117 = t322 * Ifges(7,1) + Ifges(7,5) * t461 + t317;
t852 = t117 / 0.2e1;
t118 = t153 - t882;
t851 = t118 / 0.2e1;
t160 = -Ifges(7,2) * t322 + t317;
t850 = t160 / 0.4e1;
t758 = t461 * mrSges(7,1);
t764 = t322 * mrSges(7,3);
t211 = t758 - t764;
t849 = t211 / 0.2e1;
t848 = t224 / 0.2e1;
t471 = t565 * pkin(4) - t505;
t368 = pkin(5) * t562 + pkin(10) * t565 + t471;
t509 = -t562 * qJ(5) + t798;
t265 = t368 * t564 - t509 * t561;
t846 = t265 / 0.2e1;
t845 = t270 / 0.2e1;
t287 = mrSges(6,1) * t461 + mrSges(6,2) * t460;
t844 = t287 / 0.2e1;
t843 = t321 / 0.2e1;
t842 = t321 / 0.4e1;
t841 = t322 / 0.2e1;
t840 = t322 / 0.4e1;
t594 = t629 * t565;
t747 = t562 * Ifges(7,6);
t410 = -t594 + t747;
t839 = t410 / 0.2e1;
t724 = t561 * t565;
t542 = Ifges(7,4) * t724;
t716 = t564 * t565;
t748 = t562 * Ifges(7,5);
t411 = -Ifges(7,1) * t716 + t542 + t748;
t838 = t411 / 0.2e1;
t832 = -t461 / 0.2e1;
t831 = -t461 / 0.4e1;
t830 = t461 / 0.2e1;
t829 = t461 / 0.4e1;
t467 = t642 * t565;
t828 = t467 / 0.2e1;
t749 = t562 * mrSges(7,2);
t492 = mrSges(7,3) * t724 - t749;
t827 = t492 / 0.2e1;
t751 = t562 * mrSges(7,1);
t493 = mrSges(7,3) * t716 + t751;
t826 = t493 / 0.2e1;
t824 = t511 / 0.2e1;
t512 = mrSges(6,1) * t562 - mrSges(6,2) * t565;
t823 = t512 / 0.2e1;
t773 = Ifges(7,6) * t564;
t778 = Ifges(7,5) * t561;
t513 = -t773 - t778;
t822 = t513 / 0.4e1;
t820 = t634 / 0.4e1;
t819 = t556 / 0.2e1;
t817 = -t561 / 0.4e1;
t816 = t561 / 0.2e1;
t815 = t561 / 0.4e1;
t814 = -t562 / 0.2e1;
t813 = -t562 / 0.4e1;
t812 = t562 / 0.2e1;
t811 = t562 / 0.4e1;
t809 = -t564 / 0.4e1;
t808 = t564 / 0.2e1;
t807 = -t565 / 0.2e1;
t803 = -t566 / 0.2e1;
t801 = m(6) * t471;
t800 = m(7) * t560;
t799 = pkin(3) * t562;
t431 = t461 * qJ(5);
t119 = pkin(4) * t733 + t183 - t431;
t106 = pkin(10) * t733 + t119;
t403 = -t742 * pkin(2) - t463;
t181 = t460 * pkin(3) - t461 * qJ(4) + t403;
t84 = pkin(5) * t461 + t460 * t853 - t181;
t55 = -t106 * t561 + t564 * t84;
t796 = t55 * mrSges(7,3);
t56 = t106 * t564 + t561 * t84;
t795 = t56 * mrSges(7,3);
t794 = mrSges(6,1) + mrSges(5,3);
t793 = -mrSges(5,2) + mrSges(6,3);
t791 = Ifges(3,4) * t563;
t790 = Ifges(4,4) * t461;
t789 = Ifges(4,4) * t562;
t785 = Ifges(6,4) * t565;
t779 = Ifges(7,5) * t391;
t775 = Ifges(7,6) * t390;
t772 = Ifges(7,3) * t460;
t771 = Ifges(7,3) * t565;
t770 = t265 * mrSges(7,3);
t266 = t368 * t561 + t509 * t564;
t769 = t266 * mrSges(7,3);
t763 = t322 * Ifges(7,4);
t116 = t321 * Ifges(7,2) + t461 * Ifges(7,6) + t763;
t126 = -pkin(4) * t460 - t181;
t173 = Ifges(7,3) * t694 + t775 + t779;
t174 = Ifges(7,4) * t391 + Ifges(7,2) * t390 + Ifges(7,6) * t694;
t175 = Ifges(7,1) * t391 + Ifges(7,4) * t390 + Ifges(7,5) * t694;
t231 = (-pkin(8) + t699) * t733 + t609;
t237 = -t460 * Ifges(4,2) - Ifges(4,6) * t733 + t790;
t289 = mrSges(5,1) * t460 - mrSges(5,3) * t461;
t290 = (pkin(8) + t799) * t733 - t609;
t296 = -mrSges(7,2) * t694 + mrSges(7,3) * t390;
t297 = mrSges(7,1) * t694 - mrSges(7,3) * t391;
t628 = Ifges(5,3) * t562 + t780;
t325 = (t563 * Ifges(5,6) + t566 * t628) * t559;
t630 = -Ifges(6,2) * t565 + t786;
t326 = (-t563 * Ifges(6,6) + t566 * t630) * t559;
t633 = -Ifges(4,2) * t562 + t788;
t327 = (t563 * Ifges(4,6) + t566 * t633) * t559;
t636 = Ifges(6,1) * t562 - t785;
t328 = (-t563 * Ifges(6,5) + t566 * t636) * t559;
t639 = Ifges(5,1) * t565 + t781;
t329 = (t563 * Ifges(5,4) + t566 * t639) * t559;
t641 = Ifges(4,1) * t565 - t789;
t330 = (t563 * Ifges(4,5) + t566 * t641) * t559;
t354 = -mrSges(4,1) * t733 - t461 * mrSges(4,3);
t355 = mrSges(5,1) * t733 + t461 * mrSges(5,2);
t396 = t708 * t733;
t644 = mrSges(5,1) * t562 - mrSges(5,3) * t565;
t397 = t644 * t733;
t645 = mrSges(4,1) * t562 + mrSges(4,2) * t565;
t398 = t645 * t733;
t424 = (-mrSges(4,2) * t563 - mrSges(4,3) * t723) * t559;
t426 = (mrSges(4,1) * t563 - mrSges(4,3) * t712) * t559;
t534 = Ifges(3,5) * t733;
t592 = (Ifges(6,5) * t562 - Ifges(6,6) * t565) * t566;
t593 = (Ifges(4,5) * t565 - Ifges(4,6) * t562) * t566;
t595 = (Ifges(5,4) * t565 + Ifges(5,6) * t562) * t566;
t677 = t733 / 0.2e1;
t654 = t565 * t677;
t655 = t562 * t677;
t678 = -t733 / 0.2e1;
t656 = t562 * t678;
t679 = t734 / 0.2e1;
t437 = Ifges(6,4) * t460;
t236 = -t461 * Ifges(6,2) + Ifges(6,6) * t733 + t437;
t713 = t565 * t236;
t3 = ((Ifges(3,2) * t566 + t791) * t559 + Ifges(6,5) * t460 - Ifges(6,6) * t461 + Ifges(6,3) * t733) * t680 + m(5) * (t181 * t290 + t182 * t230 + t183 * t232) + m(6) * (t119 * t156 + t126 * t231 + t127 * t180) + m(7) * (t118 * t155 + t55 * t74 + t56 * t75) + (0.2e1 * Ifges(3,4) * t733 + (Ifges(3,1) - Ifges(3,2)) * t734) * t677 + (t328 + t325) * t460 / 0.2e1 + (t330 + t329 + t173) * t830 + t237 * t656 + t465 * (mrSges(4,1) * t460 + mrSges(4,2) * t461) - t460 * t327 / 0.2e1 + t182 * t428 + t127 * t423 + t224 * t424 + t119 * t425 + t183 * t427 + t403 * t398 + t390 * t116 / 0.2e1 + t126 * t396 + t181 * t397 + t230 * t351 + t180 * t352 + t282 * t353 + t281 * t354 + t232 * t355 + t156 * t356 + t56 * t296 + t55 * t297 + t231 * t287 + t290 * t289 + t118 * t225 + t75 * t210 + t74 * t211 + t155 * t158 + t175 * t841 + t174 * t843 + t391 * t852 + t326 * t832 + (t534 / 0.2e1 + Ifges(3,5) * t677 + 0.2e1 * Ifges(3,6) * t680 + t867) * t742 + (t460 * t886 + t461 * t888 - t733 * t887) * t679 + t879 * t655 + t870 * t654 + (t563 * (Ifges(3,1) * t566 - t791) / 0.2e1 + t566 * (-Ifges(6,3) * t563 + t592) / 0.2e1 + (t563 * t887 + t593 + t595) * t803 - pkin(1) * (mrSges(3,1) * t563 + mrSges(3,2) * t566)) * t559 ^ 2 + m(4) * (t224 * t282 - t281 * t665 + t403 * t465) - t665 * t426 + t678 * t713;
t768 = t3 * qJD(1);
t152 = -t431 + t665;
t166 = -t460 * Ifges(7,6) + t461 * t629;
t167 = -t460 * Ifges(7,5) + t461 * t635;
t430 = t460 * qJ(4);
t288 = t461 * pkin(3) + t430;
t188 = -pkin(4) * t461 - t288;
t250 = t642 * t461;
t272 = mrSges(7,2) * t460 - t461 * t752;
t273 = -mrSges(7,1) * t460 - t461 * t745;
t606 = t777 / 0.2e1 - t774 / 0.2e1;
t101 = -pkin(5) * t460 + t461 * t853 - t288;
t65 = t101 * t564 - t153 * t561;
t66 = t101 * t561 + t153 * t564;
t722 = t564 * t117;
t731 = t561 * t116;
t4 = t153 * t356 + t166 * t843 + t167 * t841 + t188 * t287 + t288 * t289 + t56 * t272 + t55 * t273 + t118 * t250 + t66 * t210 + t65 * t211 + (-t354 + t355) * t224 - t878 * t665 + t711 * t152 + m(5) * (t181 * t288 - t182 * t665 + t183 * t224) + m(6) * (t119 * t153 + t126 * t188 + t127 * t152) + m(7) * (-t118 * t152 + t55 * t65 + t56 * t66) + (-t665 * mrSges(4,3) - t183 * mrSges(5,2) + t119 * mrSges(6,3) + Ifges(6,6) * t677 - t239 / 0.2e1 - t240 / 0.2e1 - t115 / 0.2e1 + t236 / 0.2e1 + t439 / 0.2e1 + t437 / 0.2e1 - t403 * mrSges(4,2) + t181 * mrSges(5,3) - t126 * mrSges(6,1) - t782 / 0.2e1) * t460 + (-t731 / 0.2e1 - t224 * mrSges(4,3) - t182 * mrSges(5,2) - t127 * mrSges(6,3) + t403 * mrSges(4,1) - t237 / 0.2e1 + t435 / 0.2e1 + t181 * mrSges(5,1) + t126 * mrSges(6,2) + t235 / 0.2e1 + t238 / 0.2e1 + t722 / 0.2e1 + Ifges(6,5) * t677 + (-Ifges(4,4) / 0.2e1 - Ifges(6,4) / 0.2e1 + t606) * t461 + (-Ifges(7,3) / 0.2e1 - Ifges(4,1) / 0.2e1 - Ifges(6,2) / 0.2e1 + Ifges(4,2) / 0.2e1 + Ifges(5,3) / 0.2e1 - Ifges(5,1) / 0.2e1 + Ifges(6,1) / 0.2e1) * t460) * t461 + t872 * t559 * t803;
t762 = t4 * qJD(1);
t761 = t460 * mrSges(6,1);
t757 = t461 * mrSges(6,2);
t744 = t565 * mrSges(6,3);
t157 = mrSges(7,1) * t322 + mrSges(7,2) * t321;
t159 = Ifges(7,5) * t321 - Ifges(7,6) * t322;
t161 = Ifges(7,1) * t321 - t763;
t7 = t118 * t157 + t55 * t210 - t56 * t211 + t159 * t830 + (-t795 + t161 / 0.2e1 - t116 / 0.2e1) * t322 + (-t796 + t852 + t160 / 0.2e1) * t321;
t743 = t7 * qJD(1);
t624 = t55 * t564 + t56 * t561;
t720 = t564 * t211;
t730 = t561 * t210;
t14 = (m(5) * t182 - m(6) * t127 + m(7) * t118 + t351 - t711) * t733 + (m(5) * t181 - m(6) * t126 - m(7) * t624 - t287 + t289 - t720 - t730) * t461;
t740 = qJD(1) * t14;
t623 = t55 * t561 - t56 * t564;
t729 = t561 * t211;
t16 = -t711 * t460 + (t729 - t871) * t461 + m(7) * (t118 * t460 + t461 * t623) + m(6) * (-t119 * t461 - t127 * t460);
t739 = qJD(1) * t16;
t736 = t460 * t511;
t735 = t511 * t565;
t466 = t876 * t565;
t732 = t560 * t466;
t728 = t561 * t410;
t727 = t561 * t492;
t726 = t561 * t493;
t725 = t561 * t562;
t719 = t564 * t411;
t718 = t564 * t492;
t717 = t564 * t493;
t468 = Ifges(7,5) * t724 + Ifges(7,6) * t716;
t705 = t825 + mrSges(6,1);
t704 = Ifges(4,4) + Ifges(6,4) - Ifges(5,5);
t695 = t511 * t733;
t691 = t759 / 0.2e1;
t690 = t755 / 0.2e1;
t685 = -t744 / 0.2e1;
t683 = t296 * t819;
t682 = t556 * t818;
t681 = t556 * t810;
t676 = -t731 / 0.4e1;
t675 = t724 / 0.4e1;
t674 = t722 / 0.4e1;
t672 = t876 * t805;
t470 = t634 * t565;
t670 = -t410 / 0.4e1 + t470 / 0.4e1;
t469 = Ifges(7,2) * t716 + t542;
t669 = t411 / 0.4e1 + t469 / 0.4e1;
t667 = m(7) * t707;
t666 = t707 * t556;
t653 = Ifges(5,4) / 0.2e1 + Ifges(4,5) / 0.2e1 + Ifges(6,6) / 0.2e1;
t652 = -Ifges(5,6) / 0.2e1 + Ifges(4,6) / 0.2e1 + Ifges(6,5) / 0.2e1;
t651 = t668 * m(7);
t650 = t707 * t858;
t647 = t751 / 0.2e1 + t826;
t646 = t749 / 0.2e1 - t492 / 0.2e1;
t632 = Ifges(4,2) * t565 + t789;
t631 = -Ifges(6,2) * t562 - t785;
t625 = -t714 + t799;
t622 = -t561 * t65 + t564 * t66;
t596 = t642 * t562;
t607 = -mrSges(7,2) * t565 - mrSges(7,3) * t725;
t608 = mrSges(7,1) * t565 - t562 * t745;
t17 = -m(7) * (t265 * t270 + t266 * t271 - t509 * t511) - t511 * t596 - t471 * t708 - t509 * t467 - t602 * t512 - t505 * t644 - t271 * t492 - t270 * t493 - t266 * t607 - t265 * t608 + (t728 / 0.2e1 + pkin(2) * mrSges(4,1) - t567 * t801 - t719 / 0.2e1 + (-t606 + t704) * t562) * t562 + (pkin(2) * mrSges(4,2) - qJ(4) * t801 + (t626 - t704) * t565 + (Ifges(4,2) - Ifges(6,2) + t558 * Ifges(7,1) / 0.2e1 + (-t783 + t776 / 0.2e1) * t561 + t889 - t894) * t562) * t565 + t877 * t625;
t568 = (t636 + t631 + t628) * t460 / 0.4e1 + (Ifges(6,2) * t460 + t237 + t787) * t813 + (t356 + t250) * t824 + t119 * t685 + (t562 * t626 + t639 + t641 + t719 + t771 + t893) * t829 + t288 * t510 / 0.2e1 + t505 * (mrSges(5,1) * t461 + mrSges(5,3) * t460) / 0.2e1 - pkin(2) * (mrSges(4,1) * t461 - mrSges(4,2) * t460) / 0.2e1 + t271 * t210 / 0.2e1 + t266 * t272 / 0.2e1 + t881 * mrSges(6,3) * t814 + t181 * t644 / 0.2e1 + t403 * t645 / 0.2e1 + t625 * t289 / 0.2e1 + (-t595 / 0.4e1 - t593 / 0.4e1 + t592 / 0.4e1) * t559 - t713 / 0.4e1 + (Ifges(7,6) * t565 + t562 * t629) * t842 + t602 * t844 + t211 * t845 + t273 * t846 + t596 * t851 + t56 * t607 / 0.2e1 + t55 * t608 / 0.2e1 + (t728 + t632 + t630) * t831 + (Ifges(7,5) * t565 + t562 * t635) * t840 + t188 * t823 + t65 * t826 + t66 * t827 + t152 * t828 + t562 * t674 - (t889 * t461 + t437 - t782) * t565 / 0.4e1 + (t460 * t890 + t461 * t626 + t435 - t772 - t790 + t879) * t811 + (t625 * t181 + t505 * t288 + (t880 * t565 + (-t182 + t224) * t562) * pkin(9)) * t861 + (-t118 * t857 + t859 * t881 + t691 - t868) * t509 + t878 * t701 + t873 * mrSges(4,3) + (-Ifges(4,2) * t461 - t439 + t870) * t565 / 0.4e1 - (t633 + t869) * t460 / 0.4e1 + t355 * t797 / 0.2e1 + ((t848 - t182 / 0.2e1) * t562 + t880 * t805 + t873) * mrSges(5,2) + t471 * (t757 - t761) / 0.2e1 + t152 * t744 / 0.2e1 - t167 * t716 / 0.4e1 + t126 * t708 / 0.2e1 + (t602 * t126 + t471 * t188 + (t119 - t152) * t511) * t859 + (-t511 * t152 + t265 * t65 + t266 * t66 + t270 * t55 + t271 * t56) * t857 + t166 * t675 + t562 * t676 + t511 * t690 + t354 * t700;
t2 = Ifges(5,6) * t655 + t174 * t809 + t175 * t817 + t297 * t682 + t564 * t683 + t75 * t687 + t74 * t689 + t694 * t822 - t568 + (Ifges(6,5) + Ifges(4,6)) * t656 + (Ifges(6,3) + t887) * t679 + (Ifges(6,6) + t888) * t654 + t866;
t620 = -t2 * qJD(1) - t17 * qJD(2);
t32 = t511 * t466 + t468 * t812 + t265 * t492 - t266 * t493 + ((t769 + t839 - t470 / 0.2e1) * t564 + (-t770 + t469 / 0.2e1 + t838) * t561) * t565;
t573 = (-t770 / 0.2e1 + t669) * t321 + (-t769 / 0.2e1 + t670) * t322 + t466 * t851 + t210 * t846 - t266 * t211 / 0.2e1 + t468 * t829 + t157 * t824 + t55 * t827 - t56 * t493 / 0.2e1 + t159 * t811;
t580 = (t795 / 0.2e1 - t161 / 0.4e1 + t116 / 0.4e1) * t564 + (-t796 / 0.2e1 + t850 + t117 / 0.4e1) * t561;
t582 = -t779 / 0.2e1 - t775 / 0.2e1 - t74 * mrSges(7,1) / 0.2e1 + t75 * mrSges(7,2) / 0.2e1;
t6 = (Ifges(7,3) * t678 + t580) * t565 + t573 + t582;
t619 = t6 * qJD(1) + t32 * qJD(2);
t612 = t265 * t561 - t266 * t564;
t574 = (-t119 * t562 + t127 * t565 - t461 * t509 + t736) * t860 + (-t118 * t565 + t461 * t612 + t562 * t623 + t736) * t858 + t460 * t828;
t578 = t231 * t859 + (t561 * t75 + t564 * t74) * t857 + t296 * t816 + t297 * t808;
t598 = -t726 / 0.2e1 + t718 / 0.2e1;
t600 = -t729 / 0.2e1 + t721 / 0.2e1;
t10 = t598 * t461 + (mrSges(6,1) * t677 + t691 + t868) * t565 + (mrSges(6,2) * t677 + t356 / 0.2e1 - t755 / 0.2e1 + t600) * t562 + t574 + t578;
t54 = t562 * t718 - t565 * t467 - t493 * t725 - m(7) * (t562 * t612 - t735) - m(6) * (-t509 * t562 - t735) + (-t562 ^ 2 - t565 ^ 2) * mrSges(6,3);
t618 = qJD(1) * t10 + qJD(2) * t54;
t599 = t727 / 0.2e1 + t717 / 0.2e1;
t601 = t730 / 0.2e1 + t720 / 0.2e1;
t613 = t265 * t564 + t266 * t561;
t569 = (t844 - t289 / 0.2e1 + t601) * t562 + (-t510 / 0.2e1 + t823 + t599) * t461 + (-pkin(9) * t694 - t181 * t562 - t461 * t505) * t861 + (t126 * t562 + t461 * t471 - t695) * t859 + (t461 * t613 + t562 * t624 - t695) * t857;
t576 = m(5) * t847 + t156 * t860 + t296 * t810 + t297 * t816 + t621 * t858;
t12 = -t507 + ((t828 + t744) * t566 + (t855 + mrSges(5,1) / 0.2e1) * t563) * t559 + t569 + t576;
t57 = (m(7) * t613 + t512 + t717 + t727 + t801 + t877) * t562;
t617 = -qJD(1) * t12 - qJD(2) * t57;
t579 = t188 * t860 + (t561 * t66 + t564 * t65) * t858 + t272 * t818 + t273 * t810;
t581 = (-t461 * t567 + t430) * t859 + (t460 * t560 - t461 * t666) * t857;
t22 = t705 * t460 + (-mrSges(6,2) - t885) * t461 + t579 + t581;
t575 = (t270 * t564 + t271 * t561) * t857 + t607 * t816 + t608 * t808;
t43 = t672 + 0.2e1 * (-t800 / 0.4e1 + qJ(4) * t860) * t565 + 0.2e1 * ((-t567 / 0.4e1 + pkin(3) / 0.4e1 + pkin(4) / 0.4e1) * m(6) - t666 * t856) * t562 - t575 - t708 + t812 * t895;
t616 = qJD(1) * t22 + qJD(2) * t43;
t589 = t756 / 0.2e1 - t210 / 0.2e1 + t766 / 0.2e1;
t590 = t758 / 0.2e1 + t764 / 0.2e1 + t849;
t24 = t561 * t590 + t564 * t589;
t76 = t561 * t647 + t564 * t646;
t615 = t24 * qJD(1) + t76 * qJD(2);
t25 = -t561 * t589 + t564 * t590;
t67 = -t561 * t646 + t564 * t647 + t565 * t885;
t614 = qJD(1) * t25 + qJD(2) * t67;
t274 = (m(6) - 0.2e1 * t651) * t562;
t80 = (t859 - t651) * t863;
t610 = qJD(1) * t80 + qJD(2) * t274;
t605 = mrSges(7,1) * t845 + t271 * t854;
t604 = t551 / 0.2e1 - t753 / 0.2e1;
t603 = t746 / 0.2e1 + t754 / 0.2e1;
t597 = t514 * t818 - t634 * t808;
t591 = pkin(3) * mrSges(5,2) - t513 / 0.2e1 - Ifges(6,6) + t567 * mrSges(6,3);
t139 = t597 + t865;
t28 = -t732 / 0.2e1 + (Ifges(7,3) / 0.2e1 + t556 * t885) * t565 + (0.3e1 / 0.4e1 * t748 + mrSges(7,2) * t824 + t493 * t819 + (-t514 / 0.4e1 - t792 / 0.4e1) * t565 + t669) * t564 + (-0.3e1 / 0.4e1 * t747 + mrSges(7,1) * t824 + t492 * t819 + (t783 / 0.2e1 + t820 - t776 / 0.4e1) * t565 + t670) * t561 + t605;
t572 = t642 * t851 + t321 * t820 + t629 * t842 + t322 * t821 + t635 * t840 - t560 * t157 / 0.2e1 + t676 + t161 * t815 + t674 + t564 * t850;
t586 = -t772 / 0.2e1 + t65 * mrSges(7,1) / 0.2e1 + t66 * t854;
t8 = ((t321 * t818 + t322 * t808) * mrSges(7,3) + t601) * t556 + (0.3e1 / 0.4e1 * t777 - 0.3e1 / 0.4e1 * t774) * t461 + t572 + t586;
t588 = t8 * qJD(1) + t28 * qJD(2) + t139 * qJD(3);
t585 = t224 - 0.2e1 * t698;
t571 = -m(5) * t585 / 0.2e1 + (t585 + t741) * t860 + (t153 - 0.2e1 * t882) * t858 + t767 / 0.2e1 - t765 / 0.2e1;
t577 = m(5) * t848 + t153 * t859 + t272 * t808 + t273 * t818 + t622 * t857;
t20 = (mrSges(5,3) + t705) * t733 + t571 + t577;
t362 = t800 + (m(5) + m(6)) * qJ(4) - t876 + t794;
t69 = 0.2e1 * (t511 / 0.4e1 + t738 / 0.4e1 - t737 / 0.4e1) * m(7);
t587 = qJD(1) * t20 - qJD(2) * t69 - qJD(3) * t362;
t583 = qJ(4) * t793 - Ifges(6,5) + t597;
t295 = t562 * t650 + t667 * t812;
t81 = t461 * t650 + m(6) * t832 + (t667 / 0.4e1 + m(6) / 0.4e1) * t863;
t77 = t562 * t603 + t598;
t68 = t562 * t604 - t599 + t874;
t59 = t611 * t857 + t607 * t808 + t608 * t818 + 0.2e1 * (t856 + t859) * t511 + (m(5) * pkin(9) - t603 - t793) * t565;
t49 = t672 - t562 * t885 + (-t562 * t666 - t883) * t857 + t575;
t29 = t732 / 0.2e1 - t511 * t642 / 0.2e1 + t626 * t813 - t719 / 0.4e1 + t470 * t817 + t728 / 0.4e1 + t469 * t809 - t594 * t815 - t634 * t675 + t492 * t682 + t493 * t681 + t771 / 0.2e1 + t606 * t562 + t605 + (t514 + t635) * t716 / 0.4e1 + t874 * t556;
t27 = -t322 * t752 / 0.2e1 + t321 * t687 + t603 * t461 + t600;
t26 = t461 * t604 - t601 + t875;
t21 = t757 / 0.2e1 - t761 / 0.2e1 + (t825 + mrSges(6,1) / 0.2e1) * t460 + (t855 - t885) * t461 - t579 + t581;
t19 = t876 * t677 - t760 / 0.2e1 - t794 * t733 + (mrSges(6,3) - mrSges(5,2) / 0.2e1) * t460 - t571 + t577;
t13 = mrSges(5,1) * t680 + mrSges(6,2) * t679 - t467 * t678 + t569 - t576;
t11 = t158 * t807 + t725 * t849 + t726 * t830 + t718 * t832 + t352 * t805 + t562 * t690 + t460 * t685 + (t550 / 0.2e1 + t553 / 0.2e1) * t733 - t574 + t578 + t871 * t814;
t9 = t210 * t682 + t211 * t681 + t461 * t606 + t556 * t875 + t626 * t831 - t572 + t586;
t5 = Ifges(7,3) * t654 + t565 * t580 + t573 - t582;
t1 = t568 + ((Ifges(5,2) / 0.2e1 + Ifges(4,3) / 0.2e1 + Ifges(6,3) / 0.2e1) * t563 + (-t652 * t562 + (t822 + t653) * t565) * t566) * t559 + (-t174 / 0.4e1 + t683 - t75 * mrSges(7,3) / 0.2e1) * t564 + (t74 * mrSges(7,3) / 0.2e1 - t556 * t297 / 0.2e1 - t175 / 0.4e1) * t561 + t866;
t15 = [qJD(2) * t3 + qJD(3) * t4 - qJD(4) * t14 + qJD(5) * t16 + qJD(6) * t7, t1 * qJD(3) + t13 * qJD(4) + t11 * qJD(5) + t5 * qJD(6) + t768 + (-pkin(2) * t398 - t155 * t467 + t231 * t512 + t265 * t297 + t266 * t296 + t290 * t510 + t390 * t839 + t391 * t838 + t471 * t396 + t505 * t397 + t509 * t425 + t75 * t492 + t74 * t493 + t534 + (t225 - t423) * t511 + t867 + (t465 * mrSges(4,2) - t326 / 0.2e1 + t329 / 0.2e1 + t330 / 0.2e1 + t173 / 0.2e1 - t281 * mrSges(4,3) + t232 * mrSges(5,2) - t156 * mrSges(6,3) + (-t426 + t427) * pkin(9)) * t562 + (-t465 * mrSges(4,1) - t325 / 0.2e1 + t327 / 0.2e1 - t328 / 0.2e1 + t174 * t816 + t282 * mrSges(4,3) + t230 * mrSges(5,2) + t180 * mrSges(6,3) + t175 * t810 + (t428 + t424) * pkin(9)) * t565 + 0.2e1 * (t156 * t509 - t180 * t511 + t231 * t471) * t859 + 0.2e1 * (t155 * t511 + t265 * t74 + t266 * t75) * t857 + 0.2e1 * (t290 * t505 + (t230 * t565 + t232 * t562) * pkin(9)) * t861 + m(4) * (-pkin(2) * t465 + (-t281 * t562 + t282 * t565) * pkin(9)) + ((t562 * t653 + t565 * t652 - Ifges(3,6)) * t563 + (t631 * t807 + t632 * t814 + t869 * t805 + t812 * t893) * t566) * t559) * qJD(2), t762 + t1 * qJD(2) + t19 * qJD(4) + t21 * qJD(5) + t9 * qJD(6) + ((-pkin(3) * t224 - qJ(4) * t665) * t861 + (-t152 * t560 + t556 * t622) * t857 + (-qJ(4) * t152 + t153 * t567) * t859) * t862 + (t153 * mrSges(6,2) + t560 * t250 + (-t166 / 0.2e1 + t556 * t272 - t66 * mrSges(7,3)) * t564 + (-t556 * t273 + t65 * mrSges(7,3) - t167 / 0.2e1) * t561 + t591 * t460 + t583 * t461 + t892 * t224 - t891 * t665 + t884 * t152 + t872) * qJD(3), qJD(2) * t13 + qJD(3) * t19 + qJD(5) * t81 + qJD(6) * t26 - t740, qJD(2) * t11 + qJD(3) * t21 + qJD(4) * t81 + qJD(6) * t27 + t739, t743 + t5 * qJD(2) + t9 * qJD(3) + t26 * qJD(4) + t27 * qJD(5) + (-mrSges(7,1) * t56 - mrSges(7,2) * t55 + t159) * qJD(6); -qJD(3) * t2 + qJD(4) * t12 - qJD(5) * t10 + qJD(6) * t6 - t768, -qJD(3) * t17 + qJD(4) * t57 - qJD(5) * t54 + qJD(6) * t32, t59 * qJD(4) + t49 * qJD(5) + t29 * qJD(6) + ((-t509 * t560 + t556 * t611) * t857 + (-qJ(4) * t509 + t511 * t567) * t859) * t862 + t620 + (t511 * mrSges(6,2) + (-t778 / 0.2e1 - t773 / 0.2e1 - t642 * t556 + (-m(5) * pkin(3) + t892) * pkin(9) - t591 + t888) * t565 + ((-m(5) * qJ(4) - t891) * pkin(9) + t583 + t865 + t886) * t562 + t884 * t509 - t611 * mrSges(7,3)) * qJD(3), qJD(3) * t59 + qJD(5) * t295 + qJD(6) * t68 - t617, qJD(3) * t49 + qJD(4) * t295 + qJD(6) * t77 - t618, t29 * qJD(3) + t68 * qJD(4) + t77 * qJD(5) + (-mrSges(7,1) * t266 - mrSges(7,2) * t265 + t468) * qJD(6) + t619; qJD(2) * t2 - qJD(4) * t20 + qJD(5) * t22 - qJD(6) * t8 - t762, qJD(4) * t69 + qJD(5) * t43 - qJD(6) * t28 - t620, qJD(4) * t362 - qJD(6) * t139, -t587, t616 (t556 * t876 - t626) * qJD(6) - t588; -qJD(2) * t12 + qJD(3) * t20 - qJD(5) * t80 - qJD(6) * t25 + t740, -qJD(3) * t69 - qJD(5) * t274 - qJD(6) * t67 + t617, t587, 0, -t610, qJD(6) * t876 - t614; qJD(2) * t10 - qJD(3) * t22 + qJD(4) * t80 - qJD(6) * t24 - t739, -qJD(3) * t43 + qJD(4) * t274 - qJD(6) * t76 + t618, -t616, t610, 0, -qJD(6) * t642 - t615; -qJD(2) * t6 + qJD(3) * t8 + qJD(4) * t25 + qJD(5) * t24 - t743, qJD(3) * t28 + qJD(4) * t67 + qJD(5) * t76 - t619, t588, t614, t615, 0;];
Cq  = t15;