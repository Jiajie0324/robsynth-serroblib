% Calculate matrix of centrifugal and coriolis load on the joints for
% S5RRRRR11
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,d1,d2,d3,d4,d5]';
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
% Cq [5x5]
%   matrix of coriolis and centrifugal joint torques

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 22:45
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S5RRRRR11_coriolismatJ_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(10,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRR11_coriolismatJ_fixb_slag_vp2: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRRR11_coriolismatJ_fixb_slag_vp2: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S5RRRRR11_coriolismatJ_fixb_slag_vp2: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRRRR11_coriolismatJ_fixb_slag_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RRRRR11_coriolismatJ_fixb_slag_vp2: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5RRRRR11_coriolismatJ_fixb_slag_vp2: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 22:38:57
% EndTime: 2019-12-31 22:39:44
% DurationCPUTime: 24.21s
% Computational Cost: add. (38509->1024), mult. (93450->1434), div. (0->0), fcn. (100487->10), ass. (0->515)
t599 = sin(qJ(3));
t603 = cos(qJ(3));
t596 = sin(pkin(5));
t600 = sin(qJ(2));
t739 = t596 * t600;
t752 = cos(pkin(5));
t526 = t599 * t739 - t603 * t752;
t527 = t599 * t752 + t603 * t739;
t598 = sin(qJ(4));
t602 = cos(qJ(4));
t604 = cos(qJ(2));
t738 = t596 * t604;
t438 = -t527 * t598 - t602 * t738;
t439 = t527 * t602 - t598 * t738;
t597 = sin(qJ(5));
t601 = cos(qJ(5));
t662 = t601 * t438 - t439 * t597;
t210 = -mrSges(6,2) * t526 + mrSges(6,3) * t662;
t273 = t438 * t597 + t439 * t601;
t729 = t601 * t602;
t642 = t597 * t598 - t729;
t643 = t597 * t602 + t601 * t598;
t430 = mrSges(6,1) * t643 - mrSges(6,2) * t642;
t799 = Ifges(6,4) * t643;
t436 = -Ifges(6,1) * t642 - t799;
t435 = -Ifges(6,2) * t642 + t799;
t876 = t435 / 0.4e1;
t670 = t876 - t436 / 0.4e1;
t904 = -pkin(10) - pkin(9);
t573 = t904 * t598;
t574 = t904 * t602;
t461 = t573 * t597 - t574 * t601;
t867 = t461 / 0.2e1;
t631 = mrSges(6,3) * t867 + t670;
t540 = Ifges(6,4) * t642;
t434 = -Ifges(6,2) * t643 - t540;
t437 = Ifges(6,1) * t643 - t540;
t874 = t437 / 0.4e1;
t669 = t874 + t434 / 0.4e1;
t661 = t601 * t573 + t574 * t597;
t871 = -t661 / 0.2e1;
t632 = mrSges(6,3) * t871 + t669;
t590 = -pkin(4) * t602 - pkin(3);
t834 = t590 / 0.2e1;
t691 = pkin(1) * t752;
t660 = t600 * t691;
t530 = pkin(7) * t738 + t660;
t490 = pkin(8) * t752 + t530;
t491 = (-pkin(2) * t604 - pkin(8) * t600 - pkin(1)) * t596;
t350 = -t599 * t490 + t491 * t603;
t316 = pkin(3) * t738 - t350;
t215 = -pkin(4) * t438 + t316;
t898 = t215 / 0.2e1;
t945 = t661 / 0.2e1;
t951 = mrSges(6,1) * t273 + mrSges(6,2) * t662;
t258 = Ifges(6,4) * t662;
t96 = Ifges(6,1) * t273 + t526 * Ifges(6,5) + t258;
t905 = t96 / 0.4e1;
t950 = -Ifges(6,2) * t273 + t258;
t961 = t905 + t950 / 0.4e1;
t801 = Ifges(6,4) * t273;
t95 = Ifges(6,2) * t662 + t526 * Ifges(6,6) + t801;
t907 = t95 / 0.4e1;
t963 = Ifges(6,1) * t662 - t801;
t973 = -t963 / 0.4e1 + t907;
t978 = t210 * t945 - t273 * t631 + t430 * t898 + t632 * t662 - t961 * t642 - t973 * t643 + t951 * t834;
t734 = t598 * t599;
t511 = t597 * t734 - t599 * t729;
t512 = t643 * t599;
t384 = -mrSges(6,1) * t511 - mrSges(6,2) * t512;
t800 = Ifges(6,4) * t511;
t389 = -Ifges(6,1) * t512 + t800;
t364 = -Ifges(6,2) * t512 - t603 * Ifges(6,6) - t800;
t886 = -t364 / 0.4e1;
t672 = t389 / 0.4e1 + t886;
t494 = Ifges(6,4) * t512;
t366 = -Ifges(6,1) * t511 - t603 * Ifges(6,5) - t494;
t388 = Ifges(6,2) * t511 - t494;
t673 = t366 / 0.4e1 + t388 / 0.4e1;
t820 = pkin(4) * t598;
t692 = pkin(8) + t820;
t553 = t692 * t599;
t840 = t553 / 0.2e1;
t976 = t672 * t273 + t384 * t898 + t973 * t511 - t961 * t512 + t673 * t662 + t951 * t840;
t779 = Ifges(6,3) * t599;
t575 = pkin(3) * t599 - pkin(9) * t603;
t486 = pkin(8) * t734 + t602 * t575;
t726 = t602 * t603;
t422 = pkin(4) * t599 - pkin(10) * t726 + t486;
t732 = t599 * t602;
t487 = -pkin(8) * t732 + t598 * t575;
t733 = t598 * t603;
t453 = -pkin(10) * t733 + t487;
t268 = t422 * t601 - t453 * t597;
t271 = t422 * t597 + t453 * t601;
t513 = t643 * t603;
t784 = Ifges(6,6) * t513;
t514 = t642 * t603;
t792 = Ifges(6,5) * t514;
t639 = t792 / 0.2e1 + t784 / 0.2e1;
t969 = mrSges(6,2) / 0.2e1;
t970 = -mrSges(6,1) / 0.2e1;
t929 = t268 * t970 + t271 * t969 + t639;
t919 = t779 / 0.2e1 - t929;
t528 = -pkin(7) * t739 + t604 * t691;
t529 = (pkin(2) * t600 - pkin(8) * t604) * t596;
t404 = t603 * t528 + t599 * t529;
t359 = pkin(9) * t739 + t404;
t410 = t660 + (pkin(7) + t575) * t738;
t207 = -t598 * t359 + t602 * t410;
t724 = t603 * t604;
t480 = (t598 * t600 + t602 * t724) * t596;
t731 = t599 * t604;
t704 = t596 * t731;
t146 = pkin(4) * t704 - t480 * pkin(10) + t207;
t208 = t602 * t359 + t598 * t410;
t479 = (-t598 * t724 + t600 * t602) * t596;
t168 = pkin(10) * t479 + t208;
t74 = t146 * t601 - t168 * t597;
t968 = -t74 / 0.2e1;
t889 = -t316 / 0.2e1;
t819 = pkin(8) * t599;
t967 = t215 * t951;
t432 = -Ifges(6,5) * t642 - Ifges(6,6) * t643;
t71 = -t461 * mrSges(6,1) - t661 * mrSges(6,2) + t432;
t964 = t71 * qJD(5);
t941 = Ifges(6,5) * t662;
t957 = Ifges(6,6) * t273;
t962 = t941 - t957;
t780 = Ifges(6,3) * t527;
t407 = pkin(3) * t527 + pkin(9) * t526;
t201 = -t350 * t598 + t602 * t407;
t740 = t526 * t602;
t139 = pkin(4) * t527 + pkin(10) * t740 + t201;
t202 = t602 * t350 + t598 * t407;
t741 = t526 * t598;
t167 = pkin(10) * t741 + t202;
t69 = t139 * t601 - t167 * t597;
t70 = t139 * t597 + t167 * t601;
t361 = t643 * t526;
t785 = Ifges(6,6) * t361;
t362 = t642 * t526;
t793 = Ifges(6,5) * t362;
t925 = -t785 / 0.2e1 - t793 / 0.2e1 + t70 * t969 + t69 * t970;
t921 = t780 / 0.2e1 - t925;
t675 = t957 / 0.2e1 - t941 / 0.2e1;
t931 = -mrSges(5,1) * t602 + mrSges(5,2) * t598;
t955 = t931 - mrSges(4,1);
t75 = t146 * t597 + t168 * t601;
t333 = t479 * t601 - t480 * t597;
t786 = Ifges(6,6) * t333;
t334 = t479 * t597 + t480 * t601;
t794 = Ifges(6,5) * t334;
t924 = -t786 / 0.2e1 - t794 / 0.2e1 + t75 * t969 + mrSges(6,1) * t968;
t915 = m(6) / 0.2e1;
t948 = 0.2e1 * t915;
t916 = m(5) / 0.2e1;
t947 = 0.2e1 * t916;
t211 = mrSges(6,1) * t526 - mrSges(6,3) * t273;
t946 = -t211 / 0.2e1;
t758 = t643 * mrSges(6,3);
t221 = Ifges(5,5) * t439 + Ifges(5,6) * t438 + t526 * Ifges(5,3);
t94 = Ifges(6,5) * t273 + Ifges(6,6) * t662 + t526 * Ifges(6,3);
t939 = t221 + t94;
t761 = t526 * mrSges(4,3);
t456 = mrSges(4,2) * t738 - t761;
t938 = t456 + t761;
t760 = t527 * mrSges(4,3);
t457 = -mrSges(4,1) * t738 - t760;
t937 = t457 + t760;
t593 = Ifges(5,5) * t602;
t787 = Ifges(5,6) * t598;
t936 = t593 - t787;
t594 = Ifges(5,4) * t602;
t935 = -Ifges(5,2) * t598 + t594;
t568 = Ifges(5,1) * t598 + t594;
t595 = Ifges(4,4) * t603;
t934 = -Ifges(4,2) * t599 + t595;
t782 = Ifges(5,3) * t527;
t933 = -t526 * t936 + t780 + t782 + t785 + t793;
t932 = -t486 * t598 + t487 * t602;
t500 = -Ifges(5,6) * t603 + t599 * t935;
t537 = t568 * t599;
t668 = -t500 / 0.4e1 - t537 / 0.4e1;
t805 = Ifges(4,4) * t527;
t930 = -Ifges(4,1) * t526 - t805 + t939;
t288 = mrSges(5,1) * t439 + mrSges(5,2) * t438;
t489 = -pkin(2) * t752 - t528;
t311 = t526 * pkin(3) - t527 * pkin(9) + t489;
t351 = t603 * t490 + t599 * t491;
t317 = -pkin(9) * t738 + t351;
t148 = t311 * t598 + t317 * t602;
t108 = pkin(10) * t438 + t148;
t751 = t108 * t597;
t147 = t602 * t311 - t317 * t598;
t107 = -pkin(10) * t439 + t147;
t84 = pkin(4) * t526 + t107;
t54 = t601 * t84 - t751;
t750 = t108 * t601;
t55 = t597 * t84 + t750;
t60 = -t107 * t597 - t750;
t61 = t107 * t601 - t751;
t836 = t568 / 0.4e1;
t664 = t935 / 0.4e1 + t836;
t666 = t936 / 0.4e1 + t432 / 0.4e1;
t705 = t55 / 0.2e1 + t60 / 0.2e1;
t909 = -t54 / 0.2e1;
t706 = t909 + t61 / 0.2e1;
t562 = mrSges(5,1) * t598 + mrSges(5,2) * t602;
t839 = t562 / 0.2e1;
t914 = -pkin(3) / 0.2e1;
t928 = ((t55 + t60) * t661 + (-t54 + t61) * t461) * t915 + t666 * t526 + t664 * t438 + (-t642 * t706 - t643 * t705) * mrSges(6,3) + t288 * t914 + t316 * t839 + t461 * t946 + t978;
t762 = t512 * mrSges(6,3);
t462 = mrSges(6,2) * t603 - t762;
t866 = t462 / 0.2e1;
t927 = t384 * t834 + t430 * t840 - t642 * t673 + t643 * t672 + t661 * t866;
t855 = t512 / 0.2e1;
t856 = t511 / 0.2e1;
t560 = -pkin(3) * t603 - pkin(9) * t599 - pkin(2);
t542 = t602 * t560;
t657 = -pkin(10) * t732 + t542;
t418 = (-pkin(8) * t598 - pkin(4)) * t603 + t657;
t484 = pkin(8) * t726 + t560 * t598;
t447 = -pkin(10) * t734 + t484;
t745 = t447 * t597;
t252 = t418 * t601 - t745;
t896 = -t252 / 0.2e1;
t926 = t54 * t855 + t55 * t856 + t662 * t896;
t122 = -mrSges(6,1) * t662 + mrSges(6,2) * t273;
t431 = mrSges(6,1) * t642 + mrSges(6,2) * t643;
t831 = t598 / 0.2e1;
t872 = t439 / 0.2e1;
t923 = (t215 * t598 + t439 * t590) * t915 + t122 * t831 + t431 * t872;
t682 = t738 / 0.2e1;
t658 = t599 * t682;
t922 = Ifges(6,3) * t658 - t924;
t920 = -t530 * mrSges(3,1) - t528 * mrSges(3,2);
t918 = 0.2e1 * m(6);
t913 = pkin(4) / 0.2e1;
t912 = pkin(8) / 0.2e1;
t911 = -pkin(9) / 0.2e1;
t910 = mrSges(5,2) / 0.2e1;
t908 = t95 / 0.2e1;
t906 = t96 / 0.2e1;
t903 = pkin(2) * mrSges(4,1);
t902 = pkin(2) * mrSges(4,2);
t901 = -t148 / 0.2e1;
t900 = -t207 / 0.2e1;
t899 = t208 / 0.2e1;
t425 = Ifges(5,4) * t438;
t796 = Ifges(5,5) * t526;
t223 = Ifges(5,1) * t439 + t425 + t796;
t897 = t223 / 0.4e1;
t744 = t447 * t601;
t253 = t418 * t597 + t744;
t895 = -t253 / 0.2e1;
t894 = -t273 / 0.2e1;
t893 = t662 / 0.2e1;
t892 = t273 / 0.2e1;
t721 = pkin(8) * t733;
t446 = t657 - t721;
t282 = -t446 * t597 - t744;
t891 = t282 / 0.2e1;
t283 = t446 * t601 - t745;
t890 = t283 / 0.2e1;
t770 = t438 * mrSges(5,3);
t340 = -mrSges(5,2) * t526 + t770;
t888 = -t340 / 0.2e1;
t887 = -t351 / 0.2e1;
t885 = t364 / 0.2e1;
t884 = t366 / 0.2e1;
t387 = -Ifges(6,5) * t512 + Ifges(6,6) * t511;
t882 = -t387 / 0.2e1;
t879 = t431 / 0.2e1;
t877 = t435 / 0.2e1;
t875 = t437 / 0.2e1;
t873 = t438 / 0.2e1;
t868 = -t461 / 0.2e1;
t464 = -mrSges(6,1) * t603 + t511 * mrSges(6,3);
t865 = -t464 / 0.2e1;
t864 = t464 / 0.2e1;
t863 = t479 / 0.2e1;
t862 = t480 / 0.2e1;
t861 = -t484 / 0.2e1;
t860 = -t486 / 0.2e1;
t859 = -t489 / 0.2e1;
t857 = -t511 / 0.2e1;
t854 = -t512 / 0.2e1;
t853 = -t513 / 0.2e1;
t852 = -t514 / 0.2e1;
t851 = -t526 / 0.2e1;
t850 = -t526 / 0.4e1;
t849 = t526 / 0.2e1;
t848 = t526 / 0.4e1;
t847 = t527 / 0.2e1;
t844 = -t642 / 0.2e1;
t843 = t643 / 0.2e1;
t549 = mrSges(5,2) * t603 - mrSges(5,3) * t734;
t842 = -t549 / 0.2e1;
t551 = -mrSges(5,1) * t603 - mrSges(5,3) * t732;
t841 = -t551 / 0.2e1;
t563 = Ifges(5,5) * t598 + Ifges(5,6) * t602;
t838 = t563 / 0.2e1;
t802 = Ifges(5,4) * t598;
t565 = Ifges(5,2) * t602 + t802;
t837 = -t565 / 0.4e1;
t569 = Ifges(5,1) * t602 - t802;
t835 = t569 / 0.4e1;
t833 = -t597 / 0.2e1;
t832 = -t598 / 0.2e1;
t830 = t598 / 0.4e1;
t828 = -t601 / 0.2e1;
t827 = t601 / 0.2e1;
t826 = -t602 / 0.2e1;
t825 = t602 / 0.2e1;
t824 = -t603 / 0.4e1;
t823 = t603 / 0.2e1;
t822 = m(6) * t553;
t821 = pkin(4) * t439;
t817 = t54 * mrSges(6,2);
t816 = t55 * mrSges(6,1);
t815 = t60 * mrSges(6,1);
t814 = t61 * mrSges(6,2);
t806 = Ifges(3,4) * t600;
t804 = Ifges(4,4) * t599;
t803 = Ifges(5,4) * t439;
t798 = Ifges(4,5) * t603;
t797 = Ifges(5,5) * t480;
t795 = Ifges(5,5) * t603;
t789 = Ifges(5,6) * t479;
t788 = Ifges(5,6) * t526;
t783 = Ifges(4,3) * t600;
t781 = Ifges(5,3) * t599;
t778 = pkin(4) * qJD(4);
t777 = t147 * mrSges(5,3);
t776 = t252 * mrSges(6,2);
t775 = t253 * mrSges(6,1);
t772 = t282 * mrSges(6,1);
t771 = t283 * mrSges(6,2);
t769 = t439 * mrSges(5,3);
t483 = t542 - t721;
t764 = t483 * mrSges(5,3);
t763 = t484 * mrSges(5,3);
t759 = t642 * mrSges(6,3);
t757 = t597 * t75;
t756 = t601 * t74;
t151 = Ifges(6,3) * t704 + t786 + t794;
t152 = Ifges(6,4) * t334 + Ifges(6,2) * t333 + Ifges(6,6) * t704;
t153 = Ifges(6,1) * t334 + Ifges(6,4) * t333 + Ifges(6,5) * t704;
t176 = -mrSges(6,1) * t333 + mrSges(6,2) * t334;
t222 = Ifges(5,2) * t438 + t788 + t803;
t403 = -t599 * t528 + t529 * t603;
t358 = -pkin(3) * t739 - t403;
t251 = -pkin(4) * t479 + t358;
t286 = -mrSges(6,2) * t704 + t333 * mrSges(6,3);
t287 = mrSges(6,1) * t704 - t334 * mrSges(6,3);
t289 = -mrSges(5,1) * t438 + mrSges(5,2) * t439;
t306 = Ifges(5,3) * t704 + t789 + t797;
t307 = Ifges(5,4) * t480 + Ifges(5,2) * t479 + Ifges(5,6) * t704;
t308 = Ifges(5,1) * t480 + Ifges(5,4) * t479 + Ifges(5,5) * t704;
t341 = mrSges(5,1) * t526 - t769;
t352 = -mrSges(5,1) * t479 + mrSges(5,2) * t480;
t372 = -Ifges(4,2) * t526 - Ifges(4,6) * t738 + t805;
t412 = -mrSges(5,2) * t704 + t479 * mrSges(5,3);
t413 = mrSges(5,1) * t704 - t480 * mrSges(5,3);
t444 = (Ifges(4,6) * t600 + t604 * t934) * t596;
t650 = Ifges(4,1) * t603 - t804;
t445 = (Ifges(4,5) * t600 + t604 * t650) * t596;
t653 = mrSges(4,1) * t599 + mrSges(4,2) * t603;
t485 = t653 * t738;
t509 = (-mrSges(4,2) * t600 - mrSges(4,3) * t731) * t596;
t510 = (mrSges(4,1) * t600 - mrSges(4,3) * t724) * t596;
t581 = Ifges(3,5) * t738;
t630 = t604 * (-Ifges(4,6) * t599 + t798);
t683 = -t738 / 0.2e1;
t659 = t599 * t683;
t684 = t739 / 0.2e1;
t520 = Ifges(4,4) * t526;
t716 = Ifges(4,5) * t738;
t373 = Ifges(4,1) * t527 - t520 - t716;
t725 = t603 * t373;
t7 = (-Ifges(3,6) * t739 + Ifges(3,5) * t682 + t581 / 0.2e1 + t920) * t752 + (t306 + t151) * t849 + (0.2e1 * Ifges(3,4) * t738 + t725 + (Ifges(3,1) - Ifges(3,2)) * t739) * t682 + (-(Ifges(3,2) * t604 + t806) * t739 / 0.2e1 + (-pkin(1) * (mrSges(3,1) * t600 + mrSges(3,2) * t604) - t604 * (t630 + t783) / 0.2e1 + t600 * (Ifges(3,1) * t604 - t806) / 0.2e1) * t596) * t596 + (Ifges(4,5) * t527 - Ifges(4,6) * t526 - Ifges(4,3) * t738) * t684 + t334 * t906 + t333 * t908 + t153 * t892 + t152 * t893 + t308 * t872 + t307 * t873 + t444 * t851 + t223 * t862 + t222 * t863 + t445 * t847 + m(5) * (t147 * t207 + t148 * t208 + t316 * t358) + m(6) * (t215 * t251 + t54 * t74 + t55 * t75) + m(4) * (t350 * t403 + t351 * t404 + t489 * t530) + t372 * t659 + t530 * (mrSges(4,1) * t526 + mrSges(4,2) * t527) + t351 * t509 + t350 * t510 + t489 * t485 + t404 * t456 + t403 * t457 + t148 * t412 + t147 * t413 + t358 * t289 + t316 * t352 + t208 * t340 + t207 * t341 + t55 * t286 + t54 * t287 + t251 * t122 + t74 * t211 + t215 * t176 + t75 * t210 + t939 * t658;
t755 = t7 * qJD(1);
t165 = Ifges(6,4) * t362 + Ifges(6,2) * t361 + Ifges(6,6) * t527;
t166 = Ifges(6,1) * t362 + Ifges(6,4) * t361 + Ifges(6,5) * t527;
t188 = -mrSges(6,1) * t361 + mrSges(6,2) * t362;
t259 = -pkin(4) * t741 + t351;
t276 = -mrSges(6,2) * t527 + mrSges(6,3) * t361;
t277 = mrSges(6,1) * t527 - mrSges(6,3) * t362;
t300 = Ifges(5,6) * t527 - t526 * t935;
t301 = Ifges(5,5) * t527 - t526 * t569;
t375 = t562 * t526;
t398 = -mrSges(5,2) * t527 + mrSges(5,3) * t741;
t399 = mrSges(5,1) * t527 + mrSges(5,3) * t740;
t654 = mrSges(4,1) * t527 - mrSges(4,2) * t526;
t663 = -Ifges(4,2) * t527 - t520;
t685 = -t740 / 0.2e1;
t686 = t741 / 0.2e1;
t723 = -Ifges(4,5) * t526 - Ifges(4,6) * t527;
t8 = t223 * t685 + t222 * t686 + t723 * t683 + t362 * t906 + t361 * t908 + t166 * t892 + t165 * t893 + t301 * t872 + t300 * t873 + (t663 + t373) * t851 - t527 * t372 / 0.2e1 + t148 * t398 + t147 * t399 - t316 * t375 + t202 * t340 + t201 * t341 + t55 * t276 + t54 * t277 + t259 * t122 + t69 * t211 + t215 * t188 + t70 * t210 + t489 * t654 + m(5) * (t147 * t201 + t148 * t202 + t316 * t351) + m(6) * (t215 * t259 + t54 * t69 + t55 * t70) + t930 * t847 + t933 * t849 + (t289 - t937) * t351 + t938 * t350;
t754 = t8 * qJD(1);
t290 = Ifges(5,5) * t438 - Ifges(5,6) * t439;
t291 = -Ifges(5,2) * t439 + t425;
t292 = Ifges(5,1) * t438 - t803;
t9 = t60 * t211 + m(6) * (t215 * t821 + t54 * t60 + t55 * t61) + t61 * t210 + t122 * t821 + t967 + t662 * t906 + t963 * t892 + t95 * t894 + t950 * t893 - t439 * t222 / 0.2e1 + t316 * t288 + t292 * t872 + t147 * t340 + (t962 / 0.2e1 + t290 / 0.2e1) * t526 + (-t341 - t769) * t148 + (-t273 * t55 - t54 * t662) * mrSges(6,3) + (t291 / 0.2e1 + t223 / 0.2e1 - t777) * t438;
t753 = t9 * qJD(1);
t14 = -t55 * t211 + t54 * t210 + t967 + t962 * t849 + (-t55 * mrSges(6,3) + t963 / 0.2e1 - t95 / 0.2e1) * t273 + (-t54 * mrSges(6,3) + t906 + t950 / 0.2e1) * t662;
t749 = t14 * qJD(1);
t748 = t268 * t601;
t747 = t271 * t597;
t746 = t439 * t553;
t737 = t597 * t511;
t736 = t598 * t222;
t735 = t598 * t500;
t730 = t601 * t512;
t728 = t602 * t301;
t502 = t569 * t599 - t795;
t727 = t602 * t502;
t722 = m(6) * t913;
t720 = mrSges(5,3) * t911;
t719 = mrSges(4,3) * t912;
t715 = t597 * t913;
t714 = pkin(4) * t827;
t707 = -Ifges(5,3) / 0.2e1 - Ifges(6,3) / 0.2e1;
t701 = t787 / 0.2e1;
t385 = mrSges(6,1) * t512 - mrSges(6,2) * t511;
t688 = t385 * t872;
t680 = -t736 / 0.4e1;
t679 = t565 * t832;
t678 = -t222 / 0.4e1 + t292 / 0.4e1;
t677 = t896 + t890;
t676 = t253 / 0.2e1 + t891;
t674 = t291 / 0.4e1 + t897;
t433 = Ifges(6,5) * t643 - Ifges(6,6) * t642;
t671 = t433 / 0.4e1 + t563 / 0.4e1;
t536 = t565 * t599;
t667 = t502 / 0.4e1 - t536 / 0.4e1;
t665 = t837 + t835;
t656 = -t769 / 0.2e1 - t341 / 0.2e1;
t363 = -Ifges(6,5) * t511 - Ifges(6,6) * t512 - t603 * Ifges(6,3);
t499 = -t603 * Ifges(5,3) + t599 * t936;
t567 = t603 * Ifges(4,2) + t804;
t655 = -t567 / 0.2e1 + t499 / 0.2e1 + t363 / 0.2e1;
t570 = t599 * Ifges(4,1) + t595;
t365 = -Ifges(6,4) * t514 - Ifges(6,2) * t513 + Ifges(6,6) * t599;
t367 = -Ifges(6,1) * t514 - Ifges(6,4) * t513 + Ifges(6,5) * t599;
t386 = mrSges(6,1) * t513 - mrSges(6,2) * t514;
t463 = -mrSges(6,2) * t599 - mrSges(6,3) * t513;
t465 = mrSges(6,1) * t599 + mrSges(6,3) * t514;
t501 = Ifges(5,6) * t599 + t603 * t935;
t503 = Ifges(5,5) * t599 + t569 * t603;
t533 = t562 * t599;
t534 = t562 * t603;
t550 = -mrSges(5,2) * t599 - mrSges(5,3) * t733;
t552 = mrSges(5,1) * t599 - mrSges(5,3) * t726;
t554 = t692 * t603;
t605 = -t662 * t365 / 0.4e1 + t465 * t909 + t276 * t895 + t277 * t896 + t550 * t901 + t361 * t886 + t533 * t887 + t487 * t888 + t534 * t889 + t341 * t860 + t398 * t861 + t69 * t865 + t201 * t841 + t202 * t842 + t268 * t946 + t514 * t905 + t513 * t907 - t553 * t188 / 0.2e1 - t554 * t122 / 0.2e1 - t147 * t552 / 0.2e1 + t512 * t165 / 0.4e1 - t439 * t503 / 0.4e1 + t511 * t166 / 0.4e1 - t438 * t501 / 0.4e1 - t483 * t399 / 0.2e1 - t70 * t462 / 0.2e1 - t55 * t463 / 0.2e1 - t259 * t385 / 0.2e1 - t215 * t386 / 0.2e1 - t362 * t366 / 0.4e1 - t273 * t367 / 0.4e1 - t271 * t210 / 0.2e1 - m(6) * (t215 * t554 + t252 * t69 + t253 * t70 + t259 * t553 + t268 * t54 + t271 * t55) / 0.2e1;
t607 = (t643 * t968 + t75 * t844) * mrSges(6,3) + (-pkin(3) * t358 + (-t207 * t598 + t208 * t602) * pkin(9)) * t916 + (t251 * t590 + t461 * t75 + t661 * t74) * t915 + t352 * t914 + t251 * t879 + t333 * t876 + t334 * t874 + t358 * t931 / 0.2e1 + t403 * mrSges(4,1) / 0.2e1 - t404 * mrSges(4,2) / 0.2e1 + t287 * t945 + t286 * t867 + t479 * t565 / 0.4e1 + t480 * t836 - t642 * t152 / 0.4e1 + t643 * t153 / 0.4e1 + t176 * t834;
t621 = t147 * t486 + t148 * t487 + t201 * t483 + t202 * t484;
t627 = t308 / 0.4e1 + t413 * t911 + mrSges(5,3) * t900;
t628 = t307 / 0.4e1 + pkin(9) * t412 / 0.2e1 + mrSges(5,3) * t899;
t640 = -t593 / 0.2e1 + t701;
t641 = -Ifges(4,1) / 0.4e1 + Ifges(4,2) / 0.4e1 + Ifges(5,3) / 0.4e1 + Ifges(6,3) / 0.4e1;
t1 = t607 + t605 + (t792 / 0.4e1 + t784 / 0.4e1 + t595 / 0.4e1 + t570 / 0.4e1 - t902 / 0.2e1) * t526 + (t502 * t848 + t628) * t602 + (t500 * t850 + t627) * t598 - m(5) * t621 / 0.2e1 + (t567 / 0.4e1 - t499 / 0.4e1 - t363 / 0.4e1 + t903 / 0.2e1) * t527 + (mrSges(4,2) * t859 + t520 / 0.4e1 - t373 / 0.4e1 + t793 / 0.4e1 + t785 / 0.4e1 - t602 * t223 / 0.4e1 + t736 / 0.4e1 + 0.3e1 / 0.4e1 * t716 + (t457 / 0.2e1 - t289 / 0.2e1 + m(5) * t889) * pkin(8) + (t719 + t641) * t527 + t640 * t526) * t603 + (t805 / 0.2e1 + mrSges(4,1) * t859 - t221 / 0.4e1 - t94 / 0.4e1 + t372 / 0.4e1 + t300 * t830 - t728 / 0.4e1 + (-0.3e1 / 0.4e1 * Ifges(4,6) + t671) * t738 + (t456 / 0.2e1 + t375 / 0.2e1 + m(5) * t887) * pkin(8) + (t719 - t641) * t526) * t599 + Ifges(4,3) * t684;
t20 = t553 * t386 + t554 * t385 + t487 * t549 + t484 * t550 + t486 * t551 + t483 * t552 + t367 * t857 + t365 * t854 + t364 * t853 + t366 * t852 + t271 * t462 + t253 * t463 + t268 * t464 + t252 * t465 + (-t902 + t595 / 0.2e1 + t570 / 0.2e1 + pkin(8) * t533 - t735 / 0.2e1 + t727 / 0.2e1 + t640 * t603 + t639) * t603 + (-t903 + pkin(8) * t534 + t501 * t832 + t503 * t825 - t804 / 0.2e1 + (Ifges(4,1) / 0.2e1 - Ifges(4,2) / 0.2e1 + t707) * t603 + t655) * t599 + m(6) * (t252 * t268 + t253 * t271 + t553 * t554) + m(5) * (pkin(8) ^ 2 * t599 * t603 + t483 * t486 + t484 * t487);
t647 = -t1 * qJD(1) + t20 * qJD(2);
t532 = t931 * t599;
t535 = t599 * t563;
t617 = t553 * t384 - (t884 + t388 / 0.2e1) * t512 + (t253 * mrSges(6,3) - t389 / 0.2e1 + t885) * t511 + t252 * t762;
t27 = t283 * t462 + t282 * t464 + m(6) * (t252 * t282 + t253 * t283) + t483 * t549 - t484 * t551 + (t882 + t535 / 0.2e1) * t603 + (-pkin(8) * t532 + (-t502 / 0.2e1 + t536 / 0.2e1 + t764) * t598 + (-t537 / 0.2e1 - t500 / 0.2e1 - t763 + (t385 + t822) * pkin(4)) * t602) * t599 + t617;
t606 = (-t290 / 0.4e1 - t962 / 0.4e1) * t603 + (-t535 / 0.4e1 + t387 / 0.4e1) * t526 + (-t764 / 0.2e1 + t667) * t438 + (t253 * t894 + t926) * mrSges(6,3) + t147 * t549 / 0.2e1 + t148 * t841 + t211 * t891 + t210 * t890 + t532 * t889 + t483 * t340 / 0.2e1 + t60 * t864 + t61 * t866 + t976;
t614 = t288 * t912 + (t777 / 0.2e1 - t674) * t598 + (mrSges(5,3) * t901 + (t122 / 0.2e1 + m(6) * t898) * pkin(4) + t678) * t602;
t619 = -t797 / 0.2e1 - t789 / 0.2e1 + mrSges(5,1) * t900 + mrSges(5,2) * t899;
t623 = t252 * t60 + t253 * t61 + t282 * t54 + t283 * t55;
t3 = t606 + t623 * t915 + (t707 * t738 + t614) * t599 + (t688 + t286 * t833 + t287 * t828 + (t746 / 0.4e1 - t757 / 0.4e1 - t756 / 0.4e1) * t918) * pkin(4) + t341 * t861 + (-t763 / 0.2e1 + t668) * t439 + t619 + t924;
t646 = t3 * qJD(1) + t27 * qJD(2);
t610 = (t273 * t895 + t926) * mrSges(6,3) + t252 * t210 / 0.2e1 + t211 * t895 + t387 * t848 + t54 * t866 + t55 * t865 + t962 * t824 + t976;
t10 = Ifges(6,3) * t659 + t610 + t924;
t28 = t252 * t462 - t253 * t464 + t603 * t882 + t617;
t645 = t10 * qJD(1) + t28 * qJD(2);
t638 = -t201 * mrSges(5,1) / 0.2e1 + t202 * t910;
t637 = mrSges(5,1) * t860 + t487 * t910;
t635 = pkin(9) * t841 + t667;
t634 = pkin(9) * t842 + t668;
t633 = m(6) * (t597 * t70 + t601 * t69);
t609 = t670 * t511 - t669 * t512 + (t461 * t856 - t642 * t677 - t643 * t676 + t661 * t855) * mrSges(6,3) + ((t253 + t282) * t661 + (-t252 + t283) * t461) * t915 - t532 * t914 - t461 * t864 + t927;
t613 = pkin(8) * t839 + (t598 * t720 - t664) * t598 + (t602 * t720 + (m(6) * t834 + t879) * pkin(4) + t665) * t602;
t17 = t609 + (t463 * t833 + t385 * t831 + t465 * t828 + (t553 * t830 - t748 / 0.4e1 - t747 / 0.4e1) * t918) * pkin(4) + (t613 + t707) * t599 + (-t795 / 0.2e1 + t635) * t602 + t634 * t598 + (t701 - t666) * t603 + t637 + t929;
t38 = t590 * t430 - (-t436 / 0.2e1 + t877) * t643 - (t875 + t434 / 0.2e1) * t642;
t32 = t569 * t831 + t679 - pkin(3) * t562 + (t568 / 0.2e1 + t935 / 0.2e1) * t602 + t38 + (m(6) * t590 + t431) * t820;
t5 = (t796 / 0.2e1 + t656 * pkin(9) + t674) * t602 + (-t788 / 0.2e1 + (t770 / 0.2e1 + t888) * pkin(9) + t678) * t598 + t665 * t439 + t707 * t527 + (t276 * t833 + t277 * t828 - t633 / 0.2e1 + t923) * pkin(4) + t638 + t925 + t928;
t626 = t5 * qJD(1) + t17 * qJD(2) + t32 * qJD(3);
t612 = t211 * t868 + t432 * t848 + t978;
t13 = t612 - t921;
t611 = t432 * t824 + t461 * t865 + t511 * t631 - t512 * t632 + t927;
t24 = t611 - t919;
t625 = t13 * qJD(1) + t24 * qJD(2) + t38 * qJD(3);
t615 = (t211 * t833 + t210 * t827 + (t273 * t833 + t662 * t828) * mrSges(6,3)) * pkin(4) - t675;
t16 = -mrSges(6,1) * t705 + mrSges(6,2) * t706 + t615 + t675;
t618 = (t462 * t827 + t464 * t833 + (t737 / 0.2e1 + t730 / 0.2e1) * mrSges(6,3)) * pkin(4);
t35 = -mrSges(6,1) * t676 + mrSges(6,2) * t677 + t618;
t559 = (mrSges(6,1) * t597 + mrSges(6,2) * t601) * pkin(4);
t77 = (t871 + t945) * mrSges(6,2) + (t868 + t867) * mrSges(6,1);
t620 = -qJD(1) * t16 - qJD(2) * t35 - qJD(3) * t77 + qJD(4) * t559;
t543 = t559 * qJD(5);
t33 = -t776 / 0.2e1 - t775 / 0.2e1 - t771 / 0.2e1 + t772 / 0.2e1 + t618 + t387;
t25 = t611 + t919;
t18 = t609 + (t747 + t748) * t722 + t613 * t599 + ((t822 / 0.2e1 + t385 / 0.2e1) * pkin(4) + t634) * t598 + t781 / 0.2e1 + t635 * t602 - t666 * t603 + t463 * t715 + t465 * t714 + Ifges(5,5) * t726 / 0.2e1 - Ifges(5,6) * t733 / 0.2e1 - t637 + t919;
t15 = -t817 / 0.2e1 - t816 / 0.2e1 - t814 / 0.2e1 + t815 / 0.2e1 + t615 - t675;
t12 = t612 + t921;
t11 = t610 + t922;
t6 = t921 + t276 * t715 + Ifges(5,5) * t685 + Ifges(5,6) * t686 + t277 * t714 + t782 / 0.2e1 - t638 + t680 + (t340 * t832 + t341 * t826 + (t438 * t831 + t439 * t826) * mrSges(5,3)) * pkin(9) + t633 * t913 + t674 * t602 + t923 * pkin(4) + t292 * t830 + t439 * t835 + t439 * t837 + t928;
t4 = t606 - t619 + (t756 + t757) * t722 + (pkin(4) * t746 + t623) * t915 + pkin(4) * t688 + t656 * t484 + t286 * t715 + t614 * t599 + t287 * t714 + Ifges(5,3) * t658 + t668 * t439 + t922;
t2 = t607 - t605 + (t351 * t819 + t621) * t916 - t300 * t734 / 0.4e1 + t726 * t897 + t725 / 0.4e1 - t599 * t372 / 0.4e1 - t527 * t567 / 0.4e1 + t489 * t653 / 0.2e1 - pkin(2) * t654 / 0.2e1 + t627 * t598 + t628 * t602 + t933 * t824 + (t783 / 0.2e1 + (t798 / 0.2e1 + (-Ifges(4,6) / 0.2e1 + t671) * t599) * t604 - t630 / 0.4e1) * t596 + (t727 + t570 + t934) * t850 + (t735 + t779 + t781 - t784 - t792) * t848 + (t650 + t499 + t363) * t527 / 0.4e1 + (t728 + t930) * t599 / 0.4e1 - (t375 + t938) * t819 / 0.2e1 + (t680 + t663 / 0.4e1 + t936 * t848 + (t316 * t916 + t289 / 0.2e1 - t937 / 0.2e1) * pkin(8)) * t603;
t19 = [qJD(2) * t7 + qJD(3) * t8 + qJD(4) * t9 + qJD(5) * t14, t2 * qJD(3) + t4 * qJD(4) + t11 * qJD(5) + t755 + (t920 + t581 + t334 * t884 + t333 * t885 + t152 * t854 + t153 * t857 + t502 * t862 + t500 * t863 + (t207 * t483 + t208 * t484 + t358 * t819) * t947 + (t251 * t553 + t252 * t74 + t253 * t75) * t948 + m(4) * (-pkin(2) * t530 + (-t403 * t599 + t404 * t603) * pkin(8)) + t553 * t176 + t208 * t549 + t207 * t551 + t358 * t533 + t483 * t413 + t484 * t412 - pkin(2) * t485 + t75 * t462 + t74 * t464 + t251 * t385 + t253 * t286 + t252 * t287 + (-t530 * mrSges(4,1) + t444 / 0.2e1 - t306 / 0.2e1 - t151 / 0.2e1 + t404 * mrSges(4,3) + pkin(8) * t509) * t603 + (t530 * mrSges(4,2) + t445 / 0.2e1 - t403 * mrSges(4,3) + t307 * t832 + t308 * t825 + (t352 - t510) * pkin(8)) * t599 + ((-Ifges(3,6) + Ifges(4,5) * t599 / 0.2e1 + Ifges(4,6) * t823) * t600 + (t570 * t823 + t599 * t655) * t604) * t596) * qJD(2), t2 * qJD(2) + t6 * qJD(4) + t12 * qJD(5) + t754 + (t590 * t188 + t527 * t838 + t166 * t843 + t165 * t844 + t433 * t847 + t661 * t277 + t461 * t276 + t361 * t877 + t362 * t875 + t259 * t431 + pkin(3) * t375 - t350 * mrSges(4,2) - t70 * t759 - t69 * t758 + t723 + (t300 / 0.2e1 + pkin(9) * t398 + t202 * mrSges(5,3) + t568 * t851) * t602 + (t301 / 0.2e1 - pkin(9) * t399 - t201 * mrSges(5,3) + t565 * t849) * t598 + (t259 * t590 + t461 * t70 + t661 * t69) * t948 + (-t201 * t598 + t202 * t602) * pkin(9) * t947 + (-pkin(3) * t947 + t955) * t351) * qJD(3), t753 + t4 * qJD(2) + t6 * qJD(3) + (-t148 * mrSges(5,1) - t147 * mrSges(5,2) + t290 - t814 + t815 + t962) * qJD(4) + t15 * qJD(5) + (m(6) * (t597 * t61 + t60 * t601) + (-t273 * t597 - t601 * t662) * mrSges(6,3)) * t778, t749 + t11 * qJD(2) + t12 * qJD(3) + t15 * qJD(4) + (t962 - t816 - t817) * qJD(5); -qJD(3) * t1 + qJD(4) * t3 + qJD(5) * t10 - t755, qJD(3) * t20 + qJD(4) * t27 + qJD(5) * t28, t18 * qJD(4) + t25 * qJD(5) + t647 + (t501 * t825 + t503 * t831 + t590 * t386 + t554 * t431 + t367 * t843 + t365 * t844 - pkin(3) * t534 + t435 * t853 + t437 * t852 + t461 * t463 + t661 * t465 - t271 * t759 - t268 * t758 + m(6) * (t268 * t661 + t271 * t461 + t554 * t590) + (m(5) * t932 + t602 * t550 - t598 * t552) * pkin(9) + (Ifges(4,5) + t679 + t568 * t825 + (-m(5) * pkin(3) + t955) * pkin(8)) * t603 + (t838 + t433 / 0.2e1 - Ifges(4,6) + pkin(8) * mrSges(4,2)) * t599 + t932 * mrSges(5,3)) * qJD(3), t18 * qJD(3) + (-t484 * mrSges(5,1) - t483 * mrSges(5,2) - Ifges(5,5) * t734 - Ifges(5,6) * t732 + t387 - t771 + t772) * qJD(4) + t33 * qJD(5) + (m(6) * (t282 * t601 + t283 * t597) + (t730 + t737) * mrSges(6,3)) * t778 + t646, t25 * qJD(3) + t33 * qJD(4) + (t387 - t775 - t776) * qJD(5) + t645; qJD(2) * t1 + qJD(4) * t5 + qJD(5) * t13 - t754, qJD(4) * t17 + qJD(5) * t24 - t647, qJD(4) * t32 + qJD(5) * t38, (pkin(9) * t931 + t71 + t936) * qJD(4) + t964 + (m(6) * (-t461 * t601 + t597 * t661) + (-t597 * t643 + t601 * t642) * mrSges(6,3)) * t778 + t626, t71 * qJD(4) + t625 + t964; -qJD(2) * t3 - qJD(3) * t5 + qJD(5) * t16 - t753, -qJD(3) * t17 + qJD(5) * t35 - t646, qJD(5) * t77 - t626, -t543, -t543 - t620; -qJD(2) * t10 - qJD(3) * t13 - qJD(4) * t16 - t749, -qJD(3) * t24 - qJD(4) * t35 - t645, -qJD(4) * t77 - t625, t620, 0;];
Cq = t19;