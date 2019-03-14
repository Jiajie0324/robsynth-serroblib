% Calculate matrix of centrifugal and coriolis load on the joints for
% S6RPRPRR9
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d3,d5,d6,theta2,theta4]';
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
% Datum: 2019-03-09 04:06
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S6RPRPRR9_coriolismatJ_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(13,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRR9_coriolismatJ_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRR9_coriolismatJ_fixb_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6RPRPRR9_coriolismatJ_fixb_slag_vp2: pkin has to be [13x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRPRR9_coriolismatJ_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RPRPRR9_coriolismatJ_fixb_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RPRPRR9_coriolismatJ_fixb_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 04:01:45
% EndTime: 2019-03-09 04:02:17
% DurationCPUTime: 19.91s
% Computational Cost: add. (85123->940), mult. (237775->1380), div. (0->0), fcn. (277848->14), ass. (0->527)
t881 = mrSges(6,2) / 0.2e1;
t560 = cos(qJ(6));
t550 = Ifges(7,4) * t560;
t557 = sin(qJ(6));
t529 = Ifges(7,1) * t557 + t550;
t924 = -t529 / 0.4e1;
t558 = sin(qJ(5));
t561 = cos(qJ(5));
t556 = sin(pkin(6));
t746 = sin(pkin(7));
t649 = t556 * t746;
t748 = cos(pkin(12));
t749 = cos(pkin(7));
t750 = cos(pkin(6));
t580 = t649 * t748 - t749 * t750;
t626 = t746 * t750;
t628 = t749 * t748;
t555 = sin(pkin(12));
t559 = sin(qJ(3));
t715 = t555 * t559;
t804 = cos(qJ(3));
t432 = t804 * t626 + (t628 * t804 - t715) * t556;
t433 = t559 * t626 + (t555 * t804 + t559 * t628) * t556;
t554 = sin(pkin(13));
t747 = cos(pkin(13));
t598 = t554 * t432 + t433 * t747;
t334 = t558 * t598 + t561 * t580;
t548 = Ifges(7,5) * t560;
t786 = Ifges(7,6) * t557;
t905 = t548 - t786;
t923 = t334 * t905;
t890 = m(6) / 0.4e1;
t922 = 0.2e1 * t890;
t887 = m(7) / 0.4e1;
t367 = -t747 * t432 + t433 * t554;
t921 = -t367 / 0.4e1;
t920 = t367 / 0.2e1;
t919 = t367 / 0.4e1;
t895 = t561 ^ 2;
t896 = t558 ^ 2;
t899 = -t896 - t895;
t918 = mrSges(6,3) * t899;
t775 = t367 * mrSges(5,3);
t917 = t923 / 0.4e1;
t632 = t749 * t804;
t469 = (-t555 * t632 - t559 * t748) * t556;
t470 = (-t715 * t749 + t748 * t804) * t556;
t396 = t554 * t469 + t470 * t747;
t634 = t555 * t649;
t375 = t396 * t558 - t561 * t634;
t376 = t561 * t396 + t558 * t634;
t625 = mrSges(7,1) * t560 - mrSges(7,2) * t557;
t884 = -mrSges(6,1) / 0.2e1;
t668 = -t625 / 0.2e1 + t884;
t916 = -t668 * t375 + t376 * t881;
t915 = 2 * pkin(5);
t627 = t747 * t746;
t631 = t804 * t746;
t488 = t554 * t631 + t559 * t627;
t894 = 0.2e1 * t488;
t914 = -0.2e1 * t561;
t552 = t557 ^ 2;
t553 = t560 ^ 2;
t694 = t552 + t553;
t682 = -0.1e1 + t694;
t463 = 0.4e1 * t682 * t561 * t558;
t913 = t463 * t887;
t795 = mrSges(5,3) * t598;
t912 = Ifges(4,5) * t432;
t911 = Ifges(5,5) * t367;
t910 = Ifges(4,6) * t433;
t909 = Ifges(5,6) * t598;
t908 = t556 * t748;
t601 = t625 * t558;
t629 = t750 * t748;
t543 = pkin(1) * t629;
t716 = t555 * t556;
t434 = t750 * pkin(2) + t543 + (-pkin(9) * t749 - qJ(2)) * t716;
t468 = (-pkin(9) * t555 * t746 - pkin(2) * t748 - pkin(1)) * t556;
t382 = -t434 * t746 + t749 * t468;
t333 = -t432 * pkin(3) + t382;
t906 = m(5) * t333 + mrSges(5,1) * t367 + mrSges(5,2) * t598;
t904 = -Ifges(7,2) * t557 + t550;
t903 = t904 + t529;
t902 = t375 * t558 + t376 * t561;
t549 = Ifges(6,5) * t561;
t900 = -Ifges(6,6) * t558 + t549;
t691 = 0.2e1 * m(5);
t677 = pkin(3) * t691;
t636 = t677 / 0.2e1;
t898 = t554 * t636 - mrSges(5,2);
t763 = t558 * mrSges(6,2);
t523 = -mrSges(6,1) * t561 + t763;
t891 = m(6) / 0.2e1;
t666 = t747 * pkin(3);
t546 = -t666 - pkin(4);
t893 = 0.2e1 * t546;
t897 = -t636 * t747 + t891 * t893 - mrSges(5,1) + t523;
t892 = m(5) / 0.2e1;
t889 = -m(7) / 0.4e1;
t888 = m(7) / 0.2e1;
t886 = -pkin(5) / 0.2e1;
t885 = -pkin(11) / 0.2e1;
t883 = -mrSges(7,1) / 0.2e1;
t882 = mrSges(7,1) / 0.2e1;
t880 = -mrSges(7,2) / 0.2e1;
t879 = mrSges(7,2) / 0.2e1;
t877 = Ifges(7,3) / 0.2e1;
t695 = t750 * t555 * pkin(1) + qJ(2) * t908;
t426 = (t556 * t628 + t626) * pkin(9) + t695;
t323 = -t559 * t426 + t434 * t632 + t468 * t631;
t291 = -t433 * qJ(4) + t323;
t266 = -pkin(3) * t580 + t291;
t324 = t804 * t426 + (t434 * t749 + t468 * t746) * t559;
t292 = t432 * qJ(4) + t324;
t647 = t747 * t292;
t156 = t554 * t266 + t647;
t145 = -pkin(10) * t580 + t156;
t187 = t367 * pkin(4) - pkin(10) * t598 + t333;
t76 = -t558 * t145 + t187 * t561;
t71 = -t367 * pkin(5) - t76;
t876 = t71 / 0.2e1;
t875 = m(6) + m(7);
t287 = t554 * t292;
t168 = t291 * t747 - t287;
t797 = t433 * pkin(3);
t247 = pkin(4) * t598 + pkin(10) * t367 + t797;
t87 = -t558 * t168 + t247 * t561;
t874 = m(6) * t87;
t88 = t561 * t168 + t558 * t247;
t873 = m(6) * t88;
t167 = t554 * t291 + t647;
t796 = t558 * pkin(5);
t798 = pkin(11) * t561;
t534 = t796 - t798;
t102 = -t367 * t534 + t167;
t81 = pkin(11) * t598 + t88;
t57 = t102 * t560 - t557 * t81;
t872 = m(7) * t57;
t58 = t102 * t557 + t560 * t81;
t871 = m(7) * t58;
t335 = -t558 * t580 + t561 * t598;
t228 = pkin(5) * t335 + pkin(11) * t334;
t64 = t228 * t560 - t557 * t76;
t870 = m(7) * t64;
t65 = t228 * t557 + t560 * t76;
t869 = m(7) * t65;
t868 = m(7) * t71;
t80 = -pkin(5) * t598 - t87;
t867 = m(7) * t80;
t866 = pkin(5) * t80;
t253 = -t335 * t557 + t367 * t560;
t175 = -mrSges(7,2) * t334 + t253 * mrSges(7,3);
t865 = t175 / 0.2e1;
t737 = t334 * t557;
t218 = -mrSges(7,2) * t335 + mrSges(7,3) * t737;
t864 = t218 / 0.2e1;
t863 = -t253 / 0.2e1;
t862 = t253 / 0.2e1;
t861 = t253 / 0.4e1;
t254 = t335 * t560 + t367 * t557;
t860 = t254 / 0.2e1;
t859 = t254 / 0.4e1;
t780 = t334 * mrSges(6,3);
t256 = -mrSges(6,2) * t367 - t780;
t858 = -t256 / 0.2e1;
t711 = t557 * t561;
t274 = t367 * t711 + t560 * t598;
t857 = t274 / 0.2e1;
t702 = t560 * t561;
t275 = -t367 * t702 + t557 * t598;
t856 = t275 / 0.2e1;
t855 = -t334 / 0.2e1;
t854 = t334 / 0.2e1;
t852 = t335 / 0.2e1;
t851 = t598 / 0.2e1;
t848 = -t367 / 0.2e1;
t441 = t561 * t488 + t558 * t749;
t648 = t559 * t746;
t487 = t554 * t648 - t627 * t804;
t387 = -t441 * t557 + t487 * t560;
t847 = t387 / 0.2e1;
t388 = t441 * t560 + t487 * t557;
t846 = -t388 / 0.2e1;
t845 = t388 / 0.2e1;
t399 = t487 * t711 + t560 * t488;
t844 = t399 / 0.2e1;
t504 = -t561 * pkin(5) - t558 * pkin(11) + t546;
t800 = pkin(3) * t554;
t545 = pkin(10) + t800;
t436 = t560 * t504 - t545 * t711;
t843 = t436 / 0.2e1;
t437 = t557 * t504 + t545 * t702;
t842 = -t437 / 0.2e1;
t440 = t488 * t558 - t561 * t749;
t841 = -t440 / 0.2e1;
t840 = t440 / 0.2e1;
t839 = t441 / 0.2e1;
t712 = t557 * t558;
t456 = t534 * t560 + t545 * t712;
t838 = t456 / 0.2e1;
t836 = -t487 / 0.2e1;
t835 = t487 / 0.2e1;
t761 = t560 * mrSges(7,2);
t764 = t557 * mrSges(7,1);
t524 = t761 + t764;
t502 = t524 * t558;
t833 = -t502 / 0.2e1;
t832 = t502 / 0.2e1;
t503 = t561 * t524;
t831 = t503 / 0.2e1;
t681 = mrSges(7,3) * t712;
t517 = t561 * mrSges(7,2) - t681;
t830 = -t517 / 0.2e1;
t829 = t517 / 0.2e1;
t518 = -t558 * mrSges(7,2) - mrSges(7,3) * t711;
t828 = t518 / 0.2e1;
t707 = t558 * t560;
t519 = -mrSges(7,1) * t561 - mrSges(7,3) * t707;
t827 = -t519 / 0.2e1;
t826 = t519 / 0.2e1;
t520 = t558 * mrSges(7,1) - mrSges(7,3) * t702;
t825 = t520 / 0.2e1;
t823 = -t524 / 0.2e1;
t822 = t524 / 0.2e1;
t760 = t561 * mrSges(6,2);
t525 = t558 * mrSges(6,1) + t760;
t821 = t525 / 0.2e1;
t791 = Ifges(7,4) * t557;
t527 = Ifges(7,2) * t560 + t791;
t820 = -t527 / 0.4e1;
t819 = t529 / 0.4e1;
t818 = t545 / 0.2e1;
t817 = t548 / 0.4e1;
t816 = -t557 / 0.2e1;
t815 = -t557 / 0.4e1;
t814 = t557 / 0.2e1;
t813 = t557 / 0.4e1;
t812 = -t558 / 0.2e1;
t811 = t558 / 0.2e1;
t810 = -t560 / 0.2e1;
t809 = t560 / 0.2e1;
t808 = t560 / 0.4e1;
t807 = -t561 / 0.2e1;
t806 = -t561 / 0.4e1;
t805 = t561 / 0.2e1;
t802 = m(6) * t376;
t400 = -t487 * t702 + t557 * t488;
t727 = t400 * t560;
t728 = t399 * t557;
t619 = t727 - t728;
t684 = 0.2e1 * t558;
t720 = t487 * t561;
t293 = (t619 + t720) * t684;
t801 = m(7) * t293;
t799 = pkin(5) * t375;
t792 = Ifges(6,4) * t558;
t551 = Ifges(6,4) * t561;
t790 = Ifges(7,5) * t275;
t787 = Ifges(7,6) * t274;
t785 = Ifges(7,3) * t335;
t783 = t254 * Ifges(7,4);
t100 = t253 * Ifges(7,2) + t334 * Ifges(7,6) + t783;
t250 = Ifges(7,4) * t253;
t101 = t254 * Ifges(7,1) + Ifges(7,5) * t334 + t250;
t710 = t367 * t558;
t108 = -Ifges(7,3) * t710 + t787 + t790;
t109 = Ifges(7,4) * t275 + Ifges(7,2) * t274 - Ifges(7,6) * t710;
t110 = Ifges(7,1) * t275 + Ifges(7,4) * t274 - Ifges(7,5) * t710;
t130 = -mrSges(7,1) * t253 + mrSges(7,2) * t254;
t155 = t266 * t747 - t287;
t144 = pkin(4) * t580 - t155;
t781 = t275 * mrSges(7,2);
t782 = t274 * mrSges(7,1);
t148 = t781 - t782;
t176 = mrSges(7,1) * t334 - t254 * mrSges(7,3);
t776 = t367 * Ifges(6,6);
t777 = t335 * Ifges(6,4);
t181 = -t334 * Ifges(6,2) + t776 + t777;
t332 = Ifges(6,4) * t334;
t778 = t335 * Ifges(6,1);
t182 = t367 * Ifges(6,5) - t332 + t778;
t197 = mrSges(7,2) * t710 + mrSges(7,3) * t274;
t198 = -mrSges(7,1) * t710 - mrSges(7,3) * t275;
t201 = Ifges(6,6) * t598 - (-Ifges(6,2) * t558 + t551) * t367;
t202 = Ifges(6,5) * t598 - (Ifges(6,1) * t561 - t792) * t367;
t779 = t335 * mrSges(6,3);
t257 = mrSges(6,1) * t367 - t779;
t276 = t525 * t367;
t279 = -mrSges(6,2) * t598 + mrSges(6,3) * t710;
t735 = t367 * t561;
t280 = mrSges(6,1) * t598 + mrSges(6,3) * t735;
t283 = mrSges(5,1) * t598 - mrSges(5,2) * t367;
t377 = mrSges(4,1) * t433 + mrSges(4,2) * t432;
t772 = t432 * mrSges(4,3);
t393 = mrSges(4,2) * t580 + t772;
t771 = t433 * mrSges(4,3);
t394 = -mrSges(4,1) * t580 - t771;
t77 = t145 * t561 + t558 * t187;
t72 = t367 * pkin(11) + t77;
t83 = t334 * pkin(5) - t335 * pkin(11) + t144;
t49 = -t557 * t72 + t560 * t83;
t50 = t557 * t83 + t560 * t72;
t221 = mrSges(6,1) * t334 + mrSges(6,2) * t335;
t339 = -mrSges(5,1) * t580 - t795;
t597 = -m(5) * t155 + m(6) * t144 + t221 - t339;
t338 = mrSges(5,2) * t580 - t775;
t650 = m(5) * t156 + t338;
t696 = -t910 + t912;
t697 = -t909 - t911;
t99 = Ifges(7,5) * t254 + Ifges(7,6) * t253 + t334 * Ifges(7,3);
t1 = (t108 / 0.2e1 - t201 / 0.2e1) * t334 + t597 * t167 + t101 * t856 + t100 * t857 + t110 * t860 + t109 * t862 + t202 * t852 + (t198 + t872) * t49 + (t279 + t873) * t77 + (t280 + t874) * t76 + (t148 + t867) * t71 + (t197 + t871) * t50 - (-t155 * mrSges(5,3) + Ifges(5,1) * t598 - Ifges(5,4) * t367 + t181 * t812 + t182 * t805 + t99 * t811 + t900 * t920) * t367 + (-Ifges(5,4) * t598 - t156 * mrSges(5,3) + Ifges(6,5) * t852 + Ifges(6,6) * t855 + (Ifges(5,2) + Ifges(6,3)) * t367) * t598 + t650 * t168 + (-t323 * mrSges(4,3) + Ifges(4,4) * t432) * t432 + t323 * t393 - t324 * t394 + t382 * t377 + t333 * t283 - t144 * t276 + t88 * t256 + t87 * t257 + (-t324 * mrSges(4,3) - Ifges(4,4) * t433 + (Ifges(4,1) - Ifges(4,2)) * t432 + t906 * pkin(3)) * t433 + (t911 / 0.2e1 + t909 / 0.2e1 + t910 / 0.2e1 - t912 / 0.2e1 - t696 / 0.2e1 - t697 / 0.2e1) * t580 + t80 * t130 + t58 * t175 + t57 * t176;
t784 = t1 * qJD(1);
t161 = t785 - t923;
t162 = Ifges(7,6) * t335 - t334 * t904;
t624 = Ifges(7,1) * t560 - t791;
t163 = Ifges(7,5) * t335 - t334 * t624;
t215 = t524 * t334;
t220 = mrSges(6,1) * t335 - mrSges(6,2) * t334;
t222 = -Ifges(6,2) * t335 - t332;
t223 = -Ifges(6,1) * t334 - t777;
t635 = t130 - t257 + t868;
t736 = t334 * t560;
t219 = mrSges(7,1) * t335 + mrSges(7,3) * t736;
t651 = t219 + t870;
t652 = t218 + t869;
t698 = -Ifges(6,5) * t334 - Ifges(6,6) * t335;
t705 = t560 * t101;
t714 = t557 * t100;
t4 = t65 * t175 + t64 * t176 + t162 * t862 + t163 * t860 - t71 * t215 + t144 * t220 + t698 * t920 + t76 * t256 + t652 * t50 + t651 * t49 + t635 * t77 + (t99 / 0.2e1 + t223 / 0.2e1 - t181 / 0.2e1 - t77 * mrSges(6,3)) * t335 + (t161 / 0.2e1 - t182 / 0.2e1 - t222 / 0.2e1 - t705 / 0.2e1 + t76 * mrSges(6,3) + t714 / 0.2e1) * t334;
t773 = t4 * qJD(1);
t770 = t436 * t64;
t769 = t437 * t65;
t768 = t456 * t49;
t457 = t534 * t557 - t545 * t707;
t767 = t457 * t50;
t766 = t49 * t557;
t765 = t50 * t560;
t759 = t561 * Ifges(7,5);
t758 = t561 * Ifges(7,6);
t756 = t57 * t557;
t755 = t58 * t560;
t754 = t64 * t557;
t753 = t65 * t560;
t129 = mrSges(7,1) * t254 + mrSges(7,2) * t253;
t131 = Ifges(7,5) * t253 - Ifges(7,6) * t254;
t132 = -Ifges(7,2) * t254 + t250;
t133 = Ifges(7,1) * t253 - t783;
t9 = t49 * t175 - t50 * t176 + t71 * t129 + t131 * t854 + (-t50 * mrSges(7,3) - t100 / 0.2e1 + t133 / 0.2e1) * t254 + (-t49 * mrSges(7,3) + t132 / 0.2e1 + t101 / 0.2e1) * t253;
t752 = t9 * qJD(1);
t751 = -mrSges(6,1) - t625;
t395 = -t469 * t747 + t470 * t554;
t302 = t376 * t560 + t395 * t557;
t738 = t302 * t560;
t301 = -t376 * t557 + t395 * t560;
t739 = t301 * t557;
t607 = -t738 / 0.2e1 + t739 / 0.2e1;
t617 = t634 / 0.2e1;
t701 = t561 * t375;
t656 = -t701 / 0.2e1;
t722 = t487 * t598;
t664 = -t722 / 0.2e1;
t700 = t561 * t441;
t709 = t558 * t440;
t719 = t488 * t367;
t730 = t388 * t275;
t732 = t387 * t274;
t36 = (t617 + t664 + t719 / 0.2e1) * m(5) + (t656 - t732 / 0.2e1 - t730 / 0.2e1 + (-t367 * t841 - t607) * t558) * m(7) + (t656 + t376 * t811 + t664 - (-t709 / 0.2e1 - t700 / 0.2e1) * t367) * m(6);
t745 = qJD(1) * t36;
t602 = -m(6) * t76 + t635;
t653 = m(7) * t49 + t176;
t654 = m(7) * t50 + t175;
t655 = m(6) * t77 + t256;
t16 = (-mrSges(3,2) * t629 + (m(3) * t695 + mrSges(3,3) * t908) * t748) * t556 + (m(4) * t324 + t393) * t470 + t650 * t396 + t655 * t376 + t654 * t302 + (m(4) * t323 + t394) * t469 + t653 * t301 + t602 * t375 + t597 * t395 + (-t750 * mrSges(3,1) - m(3) * t543 + (m(3) * qJ(2) + mrSges(3,3)) * t716 + (m(4) * t382 - mrSges(4,1) * t432 + mrSges(4,2) * t433 + t906) * t746) * t716;
t744 = t16 * qJD(1);
t17 = t654 * t275 + t597 * t598 + t653 * t274 - (t558 * t602 + t561 * t655 + t650) * t367;
t743 = t17 * qJD(1);
t575 = (t254 * t846 + t387 * t863) * mrSges(7,3) + t175 * t847 + t176 * t846 + t129 * t840;
t614 = t301 * t882 + t302 * t880;
t18 = t575 - t614;
t742 = t18 * qJD(1);
t741 = t274 * t557;
t740 = t275 * t560;
t731 = t387 * t557;
t729 = t388 * t560;
t726 = t436 * t557;
t725 = t437 * t560;
t724 = t456 * t387;
t723 = t457 * t388;
t721 = t487 * t558;
t718 = t545 * t558;
t717 = t545 * t561;
t490 = t558 * t904 - t758;
t713 = t557 * t490;
t526 = Ifges(7,5) * t557 + Ifges(7,6) * t560;
t708 = t558 * t526;
t706 = t896 * t545;
t600 = t624 * t558;
t492 = t600 - t759;
t704 = t560 * t492;
t703 = t560 * t519;
t584 = t726 / 0.2e1 - t725 / 0.2e1 + t717 / 0.2e1;
t592 = t517 * t810 + t519 * t814 + t831;
t180 = (m(7) * t584 + t592) * t561 + (t520 * t814 + t833 + t518 * t810 + (t456 * t814 + t457 * t810 - t718 / 0.2e1) * m(7)) * t558;
t633 = mrSges(7,3) * (t552 / 0.2e1 + t553 / 0.2e1);
t281 = (t703 / 0.2e1 + t625 * t805 + t517 * t814 + t558 * t633) * t558;
t699 = -t180 * qJD(5) - t281 * qJD(6);
t693 = qJD(5) * t557;
t692 = qJD(5) * t560;
t690 = 0.2e1 * m(7);
t689 = 0.4e1 * m(7);
t688 = 0.2e1 * pkin(11);
t687 = 0.2e1 * t749;
t686 = 0.2e1 * t487;
t685 = 0.2e1 * t545;
t683 = -0.2e1 * t487 * t545;
t680 = pkin(11) * t816;
t679 = Ifges(7,2) / 0.4e1 - Ifges(7,1) / 0.4e1;
t676 = qJD(4) * t889;
t675 = mrSges(7,3) * t812;
t674 = t548 / 0.2e1;
t672 = mrSges(7,3) * t816;
t671 = mrSges(7,3) * t809;
t670 = -t760 / 0.2e1;
t608 = t441 - t729 + t731;
t139 = (-t440 * t682 * t684 + t608 * t914) * t887;
t667 = t139 * qJD(5) + qJD(3) * t801 / 0.4e1;
t665 = -t735 / 0.2e1;
t663 = -t721 / 0.2e1;
t662 = t721 / 0.2e1;
t661 = -t712 / 0.2e1;
t659 = t710 / 0.2e1;
t658 = -t710 / 0.2e1;
t657 = t197 * t809;
t646 = t691 / 0.4e1;
t645 = -t690 / 0.4e1;
t644 = t690 / 0.2e1;
t643 = t690 / 0.4e1;
t642 = t689 / 0.4e1;
t639 = t797 * t892;
t637 = -m(7) * pkin(5) + t751;
t620 = t740 - t741;
t576 = t175 * t816 + t176 * t810 + (t253 * t814 + t254 * t810) * mrSges(7,3);
t574 = t129 * t807 + t558 * t576;
t615 = t782 / 0.2e1 - t781 / 0.2e1;
t28 = t574 - t615;
t618 = t28 * qJD(1) - t281 * qJD(3);
t616 = -t765 + t77 + t766;
t613 = mrSges(7,1) * t844 + t400 * t880;
t612 = mrSges(7,1) * t838 + t457 * t880;
t611 = t761 / 0.2e1 + t764 / 0.2e1;
t610 = t130 / 0.2e1 - t257 / 0.2e1 - t779 / 0.2e1;
t609 = -t215 / 0.2e1 + t858 - t780 / 0.2e1;
t606 = t387 * t830 + t388 * t826;
t605 = -t727 / 0.2e1 + t728 / 0.2e1;
t604 = -t714 / 0.4e1 + t705 / 0.4e1;
t603 = t713 / 0.4e1 - t704 / 0.4e1;
t565 = (t367 * t685 * t899 + t598 * t893) * t890 + t274 * t826 + t275 * t829 + t523 * t851 + (t274 * t436 + t275 * t437 - t367 * t706) * t643 + t502 * t658 + (-t367 * t554 - t598 * t747) * pkin(3) * t646 - t848 * t918;
t596 = 0.2e1 * t755 - 0.2e1 * t756;
t20 = (t558 * t88 + t561 * t87) * t922 + (t558 * t596 + t80 * t914) * t887 + t639 + t280 * t805 + t148 * t807 + t279 * t811 - t565 + t198 * t661 + t558 * t657 + t283;
t599 = -t20 * qJD(1) - qJD(2) * t801 / 0.4e1;
t595 = 0.2e1 * t738 - 0.2e1 * t739;
t594 = (t674 - t786 / 0.2e1) * t561;
t593 = t823 + t611;
t591 = t620 * t688;
t578 = t175 * t810 + t176 * t814 + t609;
t572 = t616 * t645 - t578;
t579 = t218 * t809 + t219 * t816 + t610;
t15 = t591 * t889 + (-t740 / 0.2e1 + t741 / 0.2e1) * mrSges(7,3) + (mrSges(6,2) * t848 + t572) * t561 + (t668 * t367 + (-t754 / 0.2e1 + t753 / 0.2e1 + t876 + pkin(5) * t848) * m(7) + t579) * t558;
t590 = -t15 * qJD(1) - t139 * qJD(2) + t180 * qJD(3);
t571 = (t616 * t643 + t578) * t440 + t220 * t835;
t11 = t218 * t845 + t219 * t847 + t607 * mrSges(7,3) + t610 * t441 + (t64 * t847 + t65 * t845 + t71 * t839 + t799 / 0.2e1 + t607 * pkin(11)) * m(7) + t571 + t916;
t115 = t608 * t440 * t642;
t589 = t11 * qJD(1) + t115 * qJD(2) + t139 * qJD(4);
t588 = -t785 / 0.2e1 + t64 * t883 + t65 * t879;
t587 = t868 / 0.2e1 + t610;
t562 = t720 * t858 + t400 * t865 + (t144 * t894 - 0.2e1 * t440 * t87 + 0.2e1 * t441 * t88 + (t558 * t76 - t561 * t77 + t167) * t686) * t890 + m(5) * (t687 * t797 + (-t155 + t168) * t894 + (-t156 + t167) * t686) / 0.4e1 + (t387 * t57 + t388 * t58 + t399 * t49 + t400 * t50 + t440 * t80 - t71 * t721) * t643 + t148 * t840 + t280 * t841 + t176 * t844 + t197 * t845 + t198 * t847 + t279 * t839 + t338 * t836 + t488 * t221 / 0.2e1 + t257 * t662 + t130 * t663 + (-t775 - t276) * t835 - (t795 + t339) * t488 / 0.2e1 + (t377 + t283) * t749 / 0.2e1 + (-t772 / 0.2e1 + t393 / 0.2e1) * t631 - (t394 + t771) * t648 / 0.2e1;
t563 = -m(6) * (t395 * t893 + t685 * t902) / 0.4e1 + t301 * t827 + t302 * t830 + t375 * t833 + t395 * mrSges(5,1) / 0.2e1 - t395 * t523 / 0.2e1 + t396 * mrSges(5,2) / 0.2e1 - t469 * mrSges(4,1) / 0.2e1 + t470 * mrSges(4,2) / 0.2e1 + (t301 * t436 + t302 * t437 + t375 * t718) * t645 - (-t395 * t747 + t396 * t554) * t677 / 0.4e1 - t902 * mrSges(6,3) / 0.2e1;
t8 = t563 + t562;
t84 = (t387 * t399 + t388 * t400) * t642 + (0.4e1 * (t488 - t700) * t890 - t875 * t709) * t487;
t586 = -t8 * qJD(1) - t84 * qJD(2) + t293 * t676;
t585 = t387 * t825 + t388 * t828 + t441 * t832;
t489 = -t561 * Ifges(7,3) + t558 * t905;
t491 = Ifges(7,6) * t558 + t561 * t904;
t493 = Ifges(7,5) * t558 + t561 * t624;
t528 = t561 * Ifges(6,2) + t792;
t530 = Ifges(6,1) * t558 + t551;
t564 = (-t528 / 0.4e1 + t489 / 0.4e1) * t335 + (-t551 / 0.4e1 - t530 / 0.4e1 + t603) * t334 + t144 * t821 + t491 * t861 + t493 * t859 + t549 * t919 + t219 * t843 + t437 * t864 + t176 * t838 + t457 * t865 + t49 * t825 + t50 * t828 + t546 * t220 / 0.2e1 + t64 * t826 + t65 * t829 + t71 * t831 + t77 * t832;
t568 = t778 / 0.4e1 + t917 + t222 / 0.4e1 + t182 / 0.4e1 - t161 / 0.4e1 + t587 * t545 + t604;
t570 = (Ifges(7,3) / 0.4e1 + Ifges(6,2) / 0.4e1) * t334 + (t77 * t888 + t609) * t545 - t181 / 0.4e1 + t223 / 0.4e1 + t99 / 0.4e1 - t777 / 0.4e1 + t162 * t815 + t163 * t808;
t573 = -Ifges(6,3) * t598 / 0.2e1 + pkin(5) * t148 / 0.2e1 + t274 * t820 + t275 * t924 + t80 * t625 / 0.2e1 + t87 * t884 + t88 * t881;
t3 = t564 + (Ifges(6,5) * t920 + t568) * t561 + (t526 * t919 + (t921 + t848) * Ifges(6,6) + t570) * t558 + (t770 / 0.2e1 + t769 / 0.2e1 + t768 / 0.2e1 + t767 / 0.2e1 + t866 / 0.2e1 + (t756 / 0.2e1 - t755 / 0.2e1) * pkin(11)) * m(7) + (-t109 / 0.4e1 + t197 * t885 - t58 * mrSges(7,3) / 0.2e1) * t560 + (-t110 / 0.4e1 + pkin(11) * t198 / 0.2e1 + t57 * mrSges(7,3) / 0.2e1) * t557 + t573;
t40 = t605 * mrSges(7,3) + t592 * t440 + (t558 * t668 + t670 + t821) * t487 + (t724 / 0.2e1 + t723 / 0.2e1 + (pkin(5) * t836 + t441 * t818) * t558 + t605 * pkin(11) + t584 * t440) * m(7) + t585;
t78 = -t502 * t717 - t503 * t718 - t456 * t519 - t436 * t520 - t457 * t517 - t437 * t518 - (t436 * t456 + t437 * t457) * t689 / 0.4e1 - t546 * t525 + (t713 / 0.2e1 - t704 / 0.2e1 - t530 / 0.2e1 - t551 / 0.2e1 + t594) * t561 + (t491 * t814 + t493 * t810 - t489 / 0.2e1 + t528 / 0.2e1 + t792 / 0.2e1 + (t877 - m(7) * t545 ^ 2 - Ifges(6,1) / 0.2e1 + Ifges(6,2) / 0.2e1) * t561) * t558;
t583 = t3 * qJD(1) + t40 * qJD(2) - t78 * qJD(3) - t180 * qJD(4);
t103 = -t625 * t706 + t437 * t519 + (t490 * t809 + t492 * t814 + t526 * t807 + mrSges(7,3) * t725 + (t527 * t816 - t529 * t810) * t558) * t558 + (-t681 - t517) * t436;
t567 = -t334 * t526 / 0.4e1 - t529 * t859 + t253 * t820 + t625 * t876 + t129 * t818 + t133 * t808 - t560 * t100 / 0.4e1 + (t766 / 0.2e1 - t765 / 0.2e1) * mrSges(7,3) + (t132 + t101) * t815;
t569 = (t254 * t842 + t436 * t863) * mrSges(7,3) + t492 * t861 - t254 * t490 / 0.4e1 + t175 * t843 + t176 * t842 + t49 * t829 + t50 * t827 + t131 * t806;
t581 = -t790 / 0.2e1 - t787 / 0.2e1 + t57 * t883 + t58 * t879;
t5 = (Ifges(7,3) * t920 + t567) * t558 + t569 + t581;
t66 = (t625 * t841 + (t729 / 0.2e1 - t731 / 0.2e1) * mrSges(7,3)) * t558 + t606 + t613;
t582 = t5 * qJD(1) - t66 * qJD(2) - t103 * qJD(3) - t281 * qJD(4);
t566 = pkin(11) * t576 + t129 * t886 + t132 * t808 + t133 * t813 + t253 * t819 + t254 * t820 + t624 * t859 + t71 * t822 + t861 * t904 + t604;
t12 = (-0.3e1 / 0.4e1 * t786 + t817 + t674) * t334 + t566 + t588;
t120 = t593 * t440;
t378 = pkin(5) * t524 + t527 * t814 + t624 * t816 + t810 * t903;
t438 = t593 * t561;
t89 = t561 * t817 + (t759 / 0.2e1 + pkin(11) * t826 - t492 / 0.4e1) * t560 + (-0.3e1 / 0.4e1 * t758 + t490 / 0.4e1 + pkin(11) * t829) * t557 + (t877 + t545 * t823 + pkin(11) * t633 + (pkin(5) * t880 + t550 / 0.4e1 + t819 - t679 * t557) * t557 + (0.3e1 / 0.4e1 * t791 + pkin(5) * t882 + t527 / 0.4e1 + t679 * t560) * t560) * t558 + t612;
t577 = t12 * qJD(1) - t120 * qJD(2) - t89 * qJD(3) + t438 * qJD(4) - t378 * qJD(5);
t515 = t634 * t687;
t443 = t896 * t683;
t439 = t524 * t807 - t561 * t611;
t121 = (t611 + t822) * t440;
t90 = -t527 * t707 / 0.2e1 + t703 * t885 + t601 * t886 + t905 * t806 + t517 * t680 + t600 * t808 + t718 * t822 + Ifges(7,3) * t811 + t594 - t603 + t612 + t694 * pkin(11) * t675 + (t924 - t903 / 0.4e1) * t712;
t67 = t601 * t840 + t675 * t729 + t681 * t847 - t606 + t613;
t39 = (t441 * t718 + t723 + t724) * t643 + t487 * t821 + (t619 * t688 + t721 * t915) * t887 - t625 * t663 + t400 * t671 + t399 * t672 + mrSges(6,1) * t662 + t720 * t881 + ((t717 - t725 + t726) * t643 + t592) * t440 + t585;
t37 = (-t367 * t709 + t730 + t732) * t643 + (t722 - (t700 + t709) * t367) * t922 + (-t719 + t722) * t646 + m(5) * t617 + (-m(7) / 0.2e1 - m(6) / 0.2e1) * t701 + (t595 * t887 + t802 / 0.2e1) * t558;
t29 = t574 + t615;
t21 = t639 + (-t867 / 0.2e1 - t148 / 0.2e1 + t280 / 0.2e1 + t874 / 0.2e1) * t561 + (t279 / 0.2e1 + t873 / 0.2e1 + (t197 / 0.2e1 + t871 / 0.2e1) * t560 + (-t198 / 0.2e1 - t872 / 0.2e1) * t557) * t558 + t565;
t19 = t575 + t614;
t14 = t275 * t671 + t274 * t672 + (t710 * t915 + t591) * t887 + mrSges(6,1) * t659 - t367 * t670 - t625 * t658 + t572 * t561 + ((t71 + t753 - t754) * t643 + t579) * t558;
t13 = t917 + Ifges(7,6) * t737 / 0.2e1 + t566 - Ifges(7,5) * t736 / 0.2e1 - t588;
t10 = t302 * t671 + t301 * t672 + (pkin(11) * t595 - 0.2e1 * t799) * t887 + (t864 + t869 / 0.2e1) * t388 + (t219 / 0.2e1 + t870 / 0.2e1) * t387 + t587 * t441 + t571 - t916;
t7 = -t563 + t562;
t6 = Ifges(7,3) * t658 + t558 * t567 + t569 - t581;
t2 = t564 + (t767 + t768 + t769 + t770) * t643 + (-t776 / 0.4e1 + t570) * t558 + t568 * t561 + (pkin(11) * t596 - 0.2e1 * t866) * t887 + t109 * t808 + t110 * t813 + t198 * t680 + t57 * t672 + Ifges(6,6) * t659 + t708 * t921 + pkin(11) * t657 + t58 * t671 + Ifges(6,5) * t665 - t573;
t22 = [qJD(2) * t16 + qJD(3) * t1 + qJD(4) * t17 + qJD(5) * t4 + qJD(6) * t9, t744 + ((t301 * t387 + t302 * t388) * t644 + t441 * t802 + (t396 * t894 + t515) * t892 + m(4) * (0.2e1 * t469 * t631 + 0.2e1 * t470 * t648 + t515) / 0.2e1 + (m(5) + m(6)) * t487 * t395 + t875 * t440 * t375) * qJD(2) + t7 * qJD(3) + t37 * qJD(4) + t10 * qJD(5) + t19 * qJD(6), t784 + t7 * qJD(2) + (t489 * t658 + t528 * t659 + (t436 * t57 + t437 * t58) * t644 + t492 * t856 + t490 * t857 + (Ifges(6,5) * t558 + Ifges(6,6) * t561) * t851 + t696 + t697 - t795 * t800 + t666 * t775 + t110 * t707 / 0.2e1 + t202 * t811 + t108 * t807 + t201 * t805 + t279 * t717 + (t644 * t80 + t148 - t280) * t718 + (t685 * t891 + mrSges(6,3)) * (-t558 * t87 + t561 * t88) - t546 * t276 + t58 * t517 + t57 * t519 + t80 * t502 + t437 * t197 + t436 * t198 - t323 * mrSges(4,2) - t324 * mrSges(4,1) + t109 * t661 + t897 * t167 + t898 * t168 + t530 * t665) * qJD(3) + t21 * qJD(4) + t2 * qJD(5) + t6 * qJD(6), t743 + t37 * qJD(2) + t21 * qJD(3) + t14 * qJD(5) + t29 * qJD(6) + (t620 + t735) * qJD(4) * t558 * t644, t773 + t10 * qJD(2) + t2 * qJD(3) + t14 * qJD(4) + t13 * qJD(6) + (t65 * mrSges(7,3) + t162 / 0.2e1 + t529 * t855 + t652 * pkin(11)) * t692 + (-t64 * mrSges(7,3) + t163 / 0.2e1 + t527 * t854 - t651 * pkin(11)) * t693 + (-t76 * mrSges(6,2) + pkin(5) * t215 + t526 * t852 + t637 * t77 + t698) * qJD(5), t752 + t19 * qJD(2) + t6 * qJD(3) + t29 * qJD(4) + t13 * qJD(5) + (-mrSges(7,1) * t50 - mrSges(7,2) * t49 + t131) * qJD(6); qJD(3) * t8 - qJD(4) * t36 + qJD(5) * t11 + qJD(6) * t18 - t744, t84 * qJD(3) + t115 * qJD(5) ((0.2e1 * t399 * t436 + 0.2e1 * t400 * t437 + t443) * t888 - t502 * t721 + t400 * t517 + t399 * t519 + (t683 * t895 + t443) * t891 - mrSges(4,2) * t631 - mrSges(4,1) * t648 + t897 * t488 + (-t898 + t918) * t487) * qJD(3) + t39 * qJD(5) + t67 * qJD(6) - t586, t667 - t745, t39 * qJD(3) + (t637 * t441 + (mrSges(6,2) + t694 * (-m(7) * pkin(11) - mrSges(7,3))) * t440) * qJD(5) + t121 * qJD(6) + t589, t742 + t67 * qJD(3) + t121 * qJD(5) + (-mrSges(7,1) * t388 - mrSges(7,2) * t387) * qJD(6); -qJD(2) * t8 - qJD(4) * t20 + qJD(5) * t3 + qJD(6) * t5 - t784, t40 * qJD(5) - t66 * qJD(6) + t586, -qJD(5) * t78 - qJD(6) * t103, t599 + t699, t90 * qJD(6) + (t491 / 0.2e1 + t457 * mrSges(7,3) + t529 * t805 + (m(7) * t457 + t518) * pkin(11)) * t692 + (-t456 * mrSges(7,3) + t493 / 0.2e1 + t527 * t807 + (-m(7) * t456 - t520) * pkin(11)) * t693 + t583 + (-pkin(5) * t503 + t708 / 0.2e1 + (t561 * t637 + t763) * t545 + t900) * qJD(5), t90 * qJD(5) + (-mrSges(7,1) * t437 - mrSges(7,2) * t436 - t708) * qJD(6) + t582; qJD(2) * t36 + qJD(3) * t20 + qJD(5) * t15 + qJD(6) * t28 - t743, t667 + t745, -t599 + t699, qJD(5) * t913, qJD(4) * t913 + t439 * qJD(6) - t590 + (t751 * t558 + (mrSges(7,3) * t694 - mrSges(6,2)) * t561 + (t694 * t798 - t796) * m(7)) * qJD(5), t439 * qJD(5) - qJD(6) * t601 + t618; -qJD(2) * t11 - qJD(3) * t3 - qJD(4) * t15 + qJD(6) * t12 - t773, -qJD(3) * t40 - qJD(6) * t120 - t589, -qJD(6) * t89 - t583, t438 * qJD(6) + t463 * t676 + t590, -t378 * qJD(6) (-pkin(11) * t625 + t905) * qJD(6) + t577; -qJD(2) * t18 - qJD(3) * t5 - qJD(4) * t28 - qJD(5) * t12 - t752, t66 * qJD(3) + t120 * qJD(5) - t742, qJD(5) * t89 - t582, -t438 * qJD(5) - t618, -t577, 0;];
Cq  = t22;