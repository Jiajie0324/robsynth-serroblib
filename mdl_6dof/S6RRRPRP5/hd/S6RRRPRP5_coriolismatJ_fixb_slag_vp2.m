% Calculate matrix of centrifugal and coriolis load on the joints for
% S6RRRPRP5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d5,theta4]';
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
% Datum: 2019-03-09 16:52
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S6RRRPRP5_coriolismatJ_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRP5_coriolismatJ_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRP5_coriolismatJ_fixb_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPRP5_coriolismatJ_fixb_slag_vp2: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRPRP5_coriolismatJ_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRRPRP5_coriolismatJ_fixb_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RRRPRP5_coriolismatJ_fixb_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 16:47:53
% EndTime: 2019-03-09 16:48:37
% DurationCPUTime: 24.76s
% Computational Cost: add. (38115->957), mult. (81397->1247), div. (0->0), fcn. (88004->8), ass. (0->478)
t615 = sin(qJ(2));
t614 = sin(qJ(3));
t775 = sin(pkin(10));
t715 = t775 * t614;
t616 = cos(qJ(3));
t776 = cos(pkin(10));
t716 = t776 * t616;
t664 = t715 - t716;
t544 = t664 * t615;
t613 = sin(qJ(5));
t714 = t775 * t616;
t663 = -t614 * t776 - t714;
t656 = t615 * t663;
t859 = cos(qJ(5));
t632 = -t544 * t859 + t613 * t656;
t399 = Ifges(7,5) * t632;
t646 = t859 * t663;
t416 = t544 * t613 + t615 * t646;
t617 = cos(qJ(2));
t219 = -t617 * Ifges(7,6) - Ifges(7,3) * t416 + t399;
t249 = Ifges(7,1) * t416 + t399;
t842 = Ifges(6,4) * t632;
t250 = Ifges(6,1) * t416 - t842;
t1015 = t249 + t250 + t219;
t473 = t613 * t663 - t859 * t664;
t990 = t473 * mrSges(7,2);
t1008 = t990 / 0.2e1;
t1014 = 0.2e1 * t1008;
t850 = t615 * pkin(8);
t580 = -pkin(2) * t617 - pkin(1) - t850;
t568 = t616 * t580;
t761 = t615 * t616;
t703 = -qJ(4) * t761 + t568;
t478 = (-pkin(7) * t614 - pkin(3)) * t617 + t703;
t759 = t616 * t617;
t749 = pkin(7) * t759;
t494 = t749 + (-qJ(4) * t615 + t580) * t614;
t483 = t776 * t494;
t316 = t775 * t478 + t483;
t762 = t614 * t617;
t750 = pkin(7) * t762;
t665 = t703 - t750;
t325 = -t665 * t775 - t483;
t1013 = t316 + t325;
t849 = -qJ(4) - pkin(8);
t950 = t849 * t775;
t569 = t614 * t950;
t701 = t776 * t849;
t498 = t616 * t701 - t569;
t501 = -t849 * t716 + t569;
t1012 = t498 + t501;
t928 = 2 * m(7);
t1011 = 2 * t928;
t1010 = -t762 / 0.2e1;
t921 = m(5) * pkin(3);
t1009 = t921 / 0.2e1;
t966 = -t613 * t664 - t646;
t991 = t473 * mrSges(6,2);
t292 = t966 * mrSges(6,1) + t991;
t599 = -t616 * pkin(3) - pkin(2);
t529 = pkin(4) * t664 + t599;
t1007 = t529 * t292;
t769 = t473 * qJ(6);
t855 = pkin(5) * t966;
t686 = t769 - t855;
t836 = Ifges(7,5) * t473;
t295 = Ifges(7,3) * t966 + t836;
t987 = t966 * mrSges(7,1);
t291 = -t473 * mrSges(7,3) + t987;
t465 = Ifges(6,4) * t473;
t297 = -Ifges(6,2) * t966 + t465;
t837 = Ifges(7,5) * t416;
t983 = Ifges(7,3) * t632 + t837;
t402 = Ifges(6,4) * t416;
t986 = -Ifges(6,2) * t632 + t402;
t1006 = -t983 / 0.4e1 + t986 / 0.4e1;
t993 = Ifges(7,6) * t966;
t994 = Ifges(6,6) * t966;
t996 = Ifges(6,5) * t473;
t997 = Ifges(7,4) * t473;
t941 = t996 - t994 + t997 + t993;
t685 = -pkin(5) * t473 - qJ(6) * t966;
t252 = t529 + t685;
t810 = t632 * mrSges(7,1);
t969 = t416 * mrSges(7,3);
t981 = -t969 + t810;
t802 = t416 * mrSges(6,2);
t952 = t632 * mrSges(6,1);
t982 = t952 + t802;
t1004 = t982 * t529 / 0.2e1 + t981 * t252 / 0.2e1;
t1003 = -t993 / 0.2e1 + t994 / 0.2e1 - t996 / 0.2e1 - t997 / 0.2e1;
t1002 = t473 / 0.2e1;
t1001 = -t966 / 0.2e1;
t1000 = t966 / 0.2e1;
t999 = t966 / 0.4e1;
t998 = Ifges(6,1) + Ifges(7,1);
t958 = Ifges(7,4) + Ifges(6,5);
t841 = Ifges(6,4) * t966;
t460 = Ifges(7,5) * t966;
t793 = t966 * mrSges(7,2);
t570 = t616 * t950;
t985 = t614 * t701 + t570;
t851 = t615 * pkin(2);
t588 = -pkin(8) * t617 + t851;
t763 = t614 * t615;
t532 = pkin(7) * t763 + t616 * t588;
t484 = t615 * pkin(3) - qJ(4) * t759 + t532;
t533 = -pkin(7) * t761 + t614 * t588;
t497 = -qJ(4) * t762 + t533;
t317 = t776 * t484 - t497 * t775;
t546 = t664 * t617;
t258 = t615 * pkin(4) + t546 * pkin(9) + t317;
t318 = t775 * t484 + t776 * t497;
t545 = t663 * t617;
t271 = pkin(9) * t545 + t318;
t111 = t613 * t258 + t859 * t271;
t101 = qJ(6) * t615 + t111;
t110 = t258 * t859 - t613 * t271;
t102 = -t615 * pkin(5) - t110;
t415 = -t545 * t859 - t546 * t613;
t350 = -mrSges(7,2) * t415 + mrSges(7,3) * t615;
t353 = -mrSges(6,2) * t615 - mrSges(6,3) * t415;
t418 = t613 * t545 - t546 * t859;
t356 = mrSges(6,1) * t615 - mrSges(6,3) * t418;
t778 = t615 * mrSges(7,1);
t796 = t418 * mrSges(7,2);
t357 = -t778 + t796;
t507 = -mrSges(5,2) * t615 + mrSges(5,3) * t545;
t509 = mrSges(5,1) * t615 + mrSges(5,3) * t546;
t737 = pkin(3) * t775;
t677 = t859 * t737;
t735 = t776 * pkin(3);
t598 = t735 + pkin(4);
t764 = t613 * t598;
t552 = t677 + t764;
t543 = qJ(6) + t552;
t551 = t598 * t859 - t613 * t737;
t547 = -pkin(5) - t551;
t977 = -mrSges(7,3) / 0.2e1;
t978 = mrSges(6,2) / 0.2e1;
t979 = mrSges(7,1) / 0.2e1;
t639 = t101 * t977 + t102 * t979 - t110 * mrSges(6,1) / 0.2e1 + t111 * t978;
t827 = Ifges(6,3) * t615;
t830 = Ifges(7,6) * t415;
t831 = Ifges(6,6) * t415;
t834 = Ifges(7,2) * t615;
t838 = Ifges(6,5) * t418;
t840 = Ifges(7,4) * t418;
t655 = t827 / 0.2e1 + t830 / 0.2e1 - t831 / 0.2e1 + t834 / 0.2e1 + t838 / 0.2e1 + t840 / 0.2e1 - t639;
t828 = Ifges(5,3) * t615;
t829 = Ifges(4,3) * t615;
t832 = Ifges(5,6) * t545;
t839 = Ifges(5,5) * t546;
t867 = -t552 / 0.2e1;
t869 = -t551 / 0.2e1;
t870 = -t547 / 0.2e1;
t874 = -t543 / 0.2e1;
t923 = -m(7) / 0.2e1;
t925 = -m(6) / 0.2e1;
t984 = t655 - (t110 * t551 + t111 * t552) * t925 - (t101 * t543 + t102 * t547) * t923 - t839 / 0.2e1 + t832 / 0.2e1 + t829 / 0.2e1 + t828 / 0.2e1 + t317 * mrSges(5,1) / 0.2e1 - t318 * mrSges(5,2) / 0.2e1 + t532 * mrSges(4,1) / 0.2e1 - t533 * mrSges(4,2) / 0.2e1 - t350 * t874 - t357 * t870 - t356 * t869 - t353 * t867 + (t317 * t776 + t318 * t775) * t1009 + Ifges(4,5) * t759 / 0.2e1 + Ifges(4,6) * t1010 + t509 * t735 / 0.2e1 + t507 * t737 / 0.2e1;
t774 = qJ(6) * t416;
t856 = pkin(5) * t632;
t688 = t774 - t856;
t718 = t952 / 0.2e1 - t969 / 0.2e1;
t397 = Ifges(7,6) * t632;
t398 = Ifges(6,6) * t632;
t400 = Ifges(6,5) * t416;
t401 = Ifges(7,4) * t416;
t940 = t401 + t400 + t397 - t398;
t420 = -pkin(9) * t664 + t501;
t662 = -pkin(9) * t776 + t701;
t649 = t662 * t614;
t627 = (-pkin(9) * t775 + t950) * t616 + t649;
t255 = t420 * t613 - t627 * t859;
t257 = t420 * t859 + t613 * t627;
t964 = -t632 / 0.2e1;
t975 = t416 / 0.2e1;
t980 = t255 * t975 + t257 * t964;
t608 = Ifges(4,4) * t616;
t584 = Ifges(4,1) * t614 + t608;
t863 = t616 / 0.2e1;
t844 = Ifges(4,4) * t614;
t965 = -Ifges(4,2) * t616 / 0.2e1 - t844 / 0.2e1;
t669 = t584 * t863 + t614 * t965;
t976 = -t416 / 0.2e1;
t956 = mrSges(5,3) * t663;
t648 = t956 / 0.2e1;
t972 = mrSges(7,2) + mrSges(6,3);
t971 = t416 * mrSges(7,2);
t970 = t416 * mrSges(6,3);
t963 = t632 / 0.2e1;
t962 = t632 / 0.4e1;
t961 = -t664 / 0.2e1;
t960 = mrSges(7,1) + mrSges(6,1);
t959 = mrSges(7,3) - mrSges(6,2);
t957 = -Ifges(6,6) + Ifges(7,6);
t955 = Ifges(5,4) * t663;
t809 = t632 * mrSges(7,2);
t951 = t632 * mrSges(6,3);
t223 = Ifges(7,1) * t632 - t617 * Ifges(7,4) - t837;
t225 = Ifges(6,1) * t632 - t617 * Ifges(6,5) + t402;
t949 = t225 + t223;
t948 = t958 * t615 + t998 * t418 + (-Ifges(6,4) + Ifges(7,5)) * t415;
t300 = Ifges(7,1) * t966 - t836;
t302 = Ifges(6,1) * t966 + t465;
t947 = t302 + t300;
t606 = t617 * mrSges(7,3);
t351 = -t606 + t971;
t352 = mrSges(6,2) * t617 + t970;
t946 = t351 + t352;
t945 = Ifges(4,5) * t616 - Ifges(4,6) * t614;
t944 = -Ifges(4,2) * t614 + t608;
t939 = -t532 * t614 + t533 * t616;
t937 = -mrSges(4,1) * t616 + mrSges(4,2) * t614;
t354 = -mrSges(6,1) * t617 - t951;
t355 = mrSges(7,1) * t617 + t809;
t719 = -t354 / 0.2e1 + t355 / 0.2e1;
t936 = Ifges(5,5) * t656 + Ifges(5,6) * t544 + t940;
t605 = m(7) * qJ(6) + mrSges(7,3);
t934 = -Ifges(5,5) * t664 + Ifges(5,6) * t663 + t941 + t945;
t653 = pkin(9) * t656;
t264 = t653 + t316;
t736 = t859 * t264;
t481 = t775 * t494;
t315 = t776 * t478 - t481;
t852 = t544 * pkin(9);
t251 = -t617 * pkin(4) + t315 + t852;
t765 = t613 * t251;
t104 = t736 + t765;
t758 = t617 * qJ(6);
t92 = t104 - t758;
t933 = m(7) * t92 + t946;
t103 = t251 * t859 - t613 * t264;
t93 = t617 * pkin(5) - t103;
t932 = m(7) * t93 - t354 + t355;
t931 = m(6) * t103 - t932;
t930 = m(6) * t104 + t933;
t926 = m(5) / 0.2e1;
t924 = m(6) / 0.2e1;
t922 = m(7) / 0.2e1;
t920 = -mrSges(7,2) / 0.2e1;
t919 = -qJ(6) / 0.2e1;
t918 = -t103 / 0.2e1;
t917 = t104 / 0.2e1;
t326 = t776 * t665 - t481;
t274 = t326 + t852;
t624 = -t653 + t325;
t118 = t274 * t613 - t624 * t859;
t916 = -t118 / 0.2e1;
t611 = t615 * pkin(7);
t578 = pkin(3) * t763 + t611;
t479 = -pkin(4) * t656 + t578;
t687 = -pkin(5) * t416 - qJ(6) * t632;
t175 = t479 + t687;
t915 = t175 / 0.2e1;
t221 = Ifges(6,2) * t416 - t617 * Ifges(6,6) + t842;
t914 = -t221 / 0.4e1;
t610 = t614 * pkin(3);
t534 = -pkin(4) * t663 + t610;
t253 = t534 - t686;
t912 = t253 / 0.2e1;
t419 = -pkin(9) * t714 + t570 + t649;
t629 = pkin(9) * t715 + t616 * t662 - t569;
t254 = t419 * t613 - t629 * t859;
t911 = t254 / 0.2e1;
t256 = t419 * t859 + t613 * t629;
t910 = t256 / 0.2e1;
t909 = -t257 / 0.2e1;
t293 = -mrSges(7,1) * t473 - mrSges(7,3) * t966;
t908 = t293 / 0.2e1;
t298 = Ifges(6,2) * t473 + t841;
t907 = -t298 / 0.4e1;
t899 = -t415 / 0.2e1;
t898 = t415 / 0.2e1;
t891 = t418 / 0.2e1;
t886 = -t473 / 0.2e1;
t880 = t479 / 0.2e1;
t596 = pkin(3) * t761;
t496 = -pkin(4) * t544 + t596;
t879 = t496 / 0.2e1;
t782 = t544 * mrSges(5,3);
t508 = -mrSges(5,1) * t617 + t782;
t878 = t508 / 0.2e1;
t876 = t534 / 0.2e1;
t585 = Ifges(4,1) * t616 - t844;
t540 = -t617 * Ifges(4,5) + t585 * t615;
t875 = t540 / 0.2e1;
t873 = -t544 / 0.2e1;
t872 = t545 / 0.2e1;
t871 = -t546 / 0.2e1;
t866 = t552 / 0.2e1;
t865 = t614 / 0.2e1;
t864 = t615 / 0.2e1;
t862 = -t617 / 0.2e1;
t861 = -t617 / 0.4e1;
t860 = t617 / 0.2e1;
t858 = m(7) * t257;
t857 = m(7) * t686;
t854 = pkin(8) * t614;
t853 = pkin(8) * t616;
t612 = t617 * pkin(7);
t845 = Ifges(3,4) * t615;
t843 = Ifges(5,4) * t544;
t824 = t103 * mrSges(6,2);
t823 = t103 * mrSges(7,3);
t822 = t104 * mrSges(6,1);
t821 = t104 * mrSges(7,1);
t818 = t118 * mrSges(6,1);
t817 = t118 * mrSges(7,1);
t119 = t274 * t859 + t613 * t624;
t816 = t119 * mrSges(6,2);
t815 = t119 * mrSges(7,3);
t814 = t254 * mrSges(6,1);
t813 = t254 * mrSges(7,1);
t812 = t256 * mrSges(6,2);
t811 = t256 * mrSges(7,3);
t804 = t415 * mrSges(6,1);
t803 = t415 * mrSges(7,1);
t797 = t418 * mrSges(6,2);
t795 = t418 * mrSges(7,3);
t792 = t966 * mrSges(6,3);
t787 = t473 * mrSges(6,3);
t579 = pkin(3) * t762 + t612;
t480 = -pkin(4) * t545 + t579;
t176 = pkin(5) * t415 - qJ(6) * t418 + t480;
t220 = Ifges(7,5) * t418 + t615 * Ifges(7,6) + Ifges(7,3) * t415;
t222 = Ifges(6,4) * t418 - Ifges(6,2) * t415 + t615 * Ifges(6,6);
t243 = -mrSges(7,1) * t416 - mrSges(7,3) * t632;
t244 = -mrSges(6,1) * t416 + mrSges(6,2) * t632;
t245 = -t795 + t803;
t246 = t797 + t804;
t406 = Ifges(5,2) * t656 - Ifges(5,6) * t617 - t843;
t407 = -Ifges(5,4) * t546 + Ifges(5,2) * t545 + Ifges(5,6) * t615;
t531 = Ifges(5,4) * t656;
t408 = -Ifges(5,1) * t544 - Ifges(5,5) * t617 + t531;
t409 = -Ifges(5,1) * t546 + Ifges(5,4) * t545 + Ifges(5,5) * t615;
t421 = -mrSges(5,1) * t656 - t544 * mrSges(5,2);
t780 = t546 * mrSges(5,2);
t781 = t545 * mrSges(5,1);
t422 = -t780 - t781;
t650 = mrSges(5,3) * t656;
t506 = t617 * mrSges(5,2) + t650;
t527 = t568 - t750;
t528 = t614 * t580 + t749;
t538 = -t617 * Ifges(4,6) + t615 * t944;
t539 = Ifges(4,6) * t615 + t617 * t944;
t541 = Ifges(4,5) * t615 + t585 * t617;
t581 = mrSges(4,1) * t614 + mrSges(4,2) * t616;
t566 = t581 * t617;
t747 = mrSges(4,3) * t763;
t574 = mrSges(4,2) * t617 - t747;
t575 = -t615 * mrSges(4,2) - mrSges(4,3) * t762;
t746 = mrSges(4,3) * t761;
t576 = -mrSges(4,1) * t617 - t746;
t577 = t615 * mrSges(4,1) - mrSges(4,3) * t759;
t644 = t656 / 0.2e1;
t726 = t761 / 0.2e1;
t760 = t615 * t617;
t5 = t220 * t976 + t222 * t975 + 0.2e1 * t566 * t611 + t949 * t891 - t615 * (Ifges(3,2) * t617 + t845) / 0.2e1 + t948 * t963 + (-Ifges(5,5) * t544 + Ifges(5,6) * t656 + t615 * t945 - t845 + t958 * t632 - t957 * t416 + (Ifges(3,1) - Ifges(7,2) - Ifges(4,3) - Ifges(5,3) - Ifges(6,3)) * t617) * t864 + (t617 * t945 + t827 + t828 + t829 + t830 - t831 + t832 + t834 + t838 - t839 + t840) * t862 + m(4) * (pkin(7) ^ 2 * t760 + t527 * t532 + t528 * t533) + (0.2e1 * Ifges(3,4) * t617 + (Ifges(3,1) - Ifges(3,2)) * t615) * t860 + t538 * t1010 + t219 * t898 + t221 * t899 + t408 * t871 + t406 * t872 + t409 * t873 + t759 * t875 + t541 * t726 + t407 * t644 - pkin(1) * (t615 * mrSges(3,1) + mrSges(3,2) * t617) + t579 * t421 + t533 * t574 + t528 * t575 + t532 * t576 + t527 * t577 + t578 * t422 + t317 * t508 + t315 * t509 + t318 * t506 + t316 * t507 + t479 * t246 + t480 * t244 + t103 * t356 + t93 * t357 + t92 * t350 + t101 * t351 + t111 * t352 + t104 * t353 + t110 * t354 + t102 * t355 + t176 * t243 + t175 * t245 + m(5) * (t315 * t317 + t316 * t318 + t578 * t579) + m(6) * (t103 * t110 + t104 * t111 + t479 * t480) + m(7) * (t101 * t92 + t102 * t93 + t175 * t176) - t539 * t763 / 0.2e1;
t783 = t5 * qJD(1);
t178 = t496 - t688;
t635 = Ifges(5,1) * t656 + t843;
t640 = -t544 * mrSges(5,1) + mrSges(5,2) * t656;
t645 = -t656 / 0.2e1;
t691 = Ifges(4,5) * t614 + Ifges(4,6) * t616;
t711 = Ifges(5,2) * t544 + t531;
t6 = t103 * t970 - t93 * t971 - t316 * t782 + (t576 + t746) * t528 + (-t574 - t747) * t527 + (t711 + t408) * t645 + t104 * t951 + t221 * t963 + t936 * t860 - t691 * t760 / 0.2e1 + t406 * t873 + t763 * t875 + t92 * t809 + t538 * t726 - t326 * t506 - t325 * t508 - t496 * t244 + t931 * t118 - t178 * t243 + (pkin(7) * t937 + t669) * t615 ^ 2 - t930 * t119 + t315 * t650 + t1015 * t964 + t983 * t975 + (t949 + t986) * t976 + (-m(6) * t496 - t982) * t479 + (-m(7) * t178 - t981) * t175 - t421 * t596 - m(5) * (t315 * t325 + t316 * t326 + t578 * t596) + t544 * t635 / 0.2e1 - t578 * t640;
t779 = t6 * qJD(1);
t7 = t479 * t982 - t688 * t243 + (t249 / 0.2e1 - t221 / 0.2e1 - t92 * mrSges(7,2) + t219 / 0.2e1 + t250 / 0.2e1) * t632 - (-t223 / 0.2e1 - t986 / 0.2e1 - t93 * mrSges(7,2) + t983 / 0.2e1 - t225 / 0.2e1) * t416 + t940 * t862 + (-m(7) * t688 + t981) * t175 + (t932 - t951) * t104 + (t933 - t970) * t103;
t777 = t7 * qJD(1);
t16 = m(5) * (t315 * t544 + t316 * t656) + t506 * t656 + t544 * t508 + t930 * t416 - t931 * t632;
t773 = qJD(1) * t16;
t33 = -t632 * t243 + m(7) * (-t175 * t632 - t617 * t92) - t617 * t351;
t772 = qJD(1) * t33;
t766 = t543 * t632;
t748 = pkin(5) * t920;
t745 = t610 / 0.2e1;
t744 = mrSges(6,1) / 0.2e1 + t979;
t743 = t978 + t977;
t742 = Ifges(7,4) / 0.2e1 + Ifges(6,5) / 0.2e1;
t741 = Ifges(7,6) / 0.2e1 - Ifges(6,6) / 0.2e1;
t740 = t971 / 0.2e1;
t739 = -t793 / 0.2e1;
t725 = t473 * t860;
t720 = -t351 / 0.2e1 - t352 / 0.2e1;
t709 = t118 * t255 + t257 * t119;
t708 = m(5) * t745;
t707 = t254 * t255 + t257 * t256;
t706 = t255 * t632 + t257 * t416;
t705 = -mrSges(4,3) * t850 / 0.2e1;
t704 = pkin(3) * t726;
t294 = -mrSges(6,1) * t473 + mrSges(6,2) * t966;
t296 = -Ifges(7,3) * t473 + t460;
t299 = Ifges(7,1) * t473 + t460;
t301 = Ifges(6,1) * t473 - t841;
t487 = -mrSges(5,1) * t663 - t664 * mrSges(5,2);
t488 = mrSges(5,1) * t664 - mrSges(5,2) * t663;
t565 = Ifges(5,4) * t664;
t489 = Ifges(5,2) * t663 - t565;
t490 = -Ifges(5,2) * t664 - t955;
t491 = -Ifges(5,1) * t664 + t955;
t492 = -Ifges(5,1) * t663 - t565;
t659 = mrSges(5,3) * t664;
t618 = -t104 * t792 / 0.2e1 + t93 * t1008 - (0.2e1 * t584 + t944) * t763 / 0.4e1 + t937 * t851 / 0.2e1 + t501 * t782 / 0.2e1 - t576 * t853 / 0.2e1 - t574 * t854 / 0.2e1 + t581 * t611 / 0.2e1 + t946 * t910 + t1013 * t648 + t966 * t914 + (-t103 * t924 + t922 * t93 + t719) * t254 + t585 * t761 / 0.4e1 + (t947 / 0.4e1 + t297 / 0.4e1 - t295 / 0.4e1) * t416 + (t315 * t498 + t326 * t501 + (t578 * t614 + t599 * t761) * pkin(3)) * t926 + (t492 + t489) * t656 / 0.4e1 + t632 * t907 + t178 * t908 + t243 * t912 + t291 * t915 + t787 * t918 + (-t711 / 0.4e1 - t408 / 0.4e1) * t664 + (t406 / 0.4e1 - t635 / 0.4e1) * t663 - (-t315 / 0.2e1 + t326 / 0.2e1) * t659 + (t540 / 0.4e1 + t705 * t616) * t616 + (t490 / 0.4e1 - t491 / 0.4e1) * t544 + t244 * t876 + t498 * t878 + t294 * t879 + t292 * t880 + t92 * t739 + t421 * t745 + (t104 * t256 + t479 * t534 + t496 * t529 + t709) * t924 + (t175 * t253 + t178 * t252 + t256 * t92 + t709) * t922 - t614 * t538 / 0.4e1 + t578 * t487 / 0.2e1 + t934 * t861 + (t301 + t299 + t296) * t962 + t1015 * t999 + t972 * (t1000 * t118 + t1002 * t119 + t980) + (mrSges(5,3) * t645 + t1013 * t926 + t506 / 0.2e1) * t985 + t488 * t704 + t614 ^ 2 * t705 + (t949 / 0.4e1 + t1006) * t473 + t761 * t965 + t1004 + t599 * t640 / 0.2e1;
t1 = t618 - t984;
t10 = m(5) * (t1012 * t985 + t599 * t610) + m(6) * (t529 * t534 + t707) + m(7) * (t252 * t253 + t707) + t488 * t610 + t944 * t863 + t585 * t865 - pkin(2) * t581 + t599 * t487 + t534 * t294 + t1007 + t252 * t291 + t253 * t293 + t669 + (-t489 / 0.2e1 - t492 / 0.2e1) * t664 + (t1012 * mrSges(5,3) + t490 / 0.2e1 - t491 / 0.2e1) * t663 + (t299 / 0.2e1 + t301 / 0.2e1 - t298 / 0.2e1 + t296 / 0.2e1 + t972 * (t254 - t257)) * t966 + (t300 / 0.2e1 + t302 / 0.2e1 + t297 / 0.2e1 - t295 / 0.2e1 + t972 * (t255 + t256)) * t473;
t684 = t1 * qJD(1) + t10 * qJD(2);
t13 = -t1007 + t686 * t293 + t295 * t1002 + t298 * t1000 + (t857 - t291) * t252 + (t947 + t297) * t886 + (t473 * t998 + t296 + t460 - t841) * t1001;
t620 = ((t917 - t92 / 0.2e1) * t966 - (-t93 / 0.2e1 + t918) * t473 + t980) * mrSges(7,2) + (t914 + mrSges(6,1) * t880 + t250 / 0.4e1 + t249 / 0.4e1 + t219 / 0.4e1 + mrSges(7,1) * t915) * t966 - (-t479 * mrSges(6,2) / 0.2e1 + mrSges(7,3) * t915 - t225 / 0.4e1 - t223 / 0.4e1 - t1006) * t473 + (-t175 * t686 - t688 * t252 + (t104 - t92) * t255 + (t93 + t103) * t257) * t922 - t688 * t908 - t686 * t243 / 0.2e1 + t941 * t861 + t1004;
t636 = (-pkin(5) * t102 + qJ(6) * t101) * t923 + pkin(5) * t357 / 0.2e1 + t350 * t919;
t637 = -t841 / 0.4e1 + t460 / 0.4e1 + t296 / 0.4e1 + t907 - (-Ifges(6,1) / 0.4e1 - Ifges(7,1) / 0.4e1) * t473;
t638 = -t465 / 0.4e1 + t836 / 0.4e1 - t302 / 0.4e1 - t300 / 0.4e1 + (Ifges(6,2) / 0.4e1 + Ifges(7,3) / 0.4e1) * t966;
t670 = t951 / 0.2e1 - t719;
t671 = t970 / 0.2e1 + t720;
t3 = t620 - t670 * t257 - t742 * t418 + t671 * t255 - t741 * t415 - t638 * t416 + t637 * t632 + (-Ifges(7,2) / 0.2e1 - Ifges(6,3) / 0.2e1) * t615 + t636 + t639;
t683 = t3 * qJD(1) - t13 * qJD(2);
t619 = (t315 * t663 - t316 * t664 + t501 * t656 + t544 * t985) * t926 + (-t103 * t966 + t104 * t473 + t706) * t924 + (t473 * t92 + t93 * t966 + t706) * t922 + t354 * t1001 + t355 * t1000 + t506 * t961 + t663 * t878 + t544 * t648 - t644 * t659 + t946 * t1002 + t972 * (t1000 * t632 + t1002 * t416);
t623 = -m(5) * t579 / 0.2e1 + t480 * t925 + t176 * t923 - t804 / 0.2e1 - t803 / 0.2e1 - t797 / 0.2e1 + t795 / 0.2e1 + t781 / 0.2e1 + t780 / 0.2e1;
t12 = t619 + t623;
t24 = -t664 ^ 2 * mrSges(5,3) - t663 * t956 - m(5) * (-t501 * t664 + t663 * t985) + (-m(7) - m(6)) * (t255 * t966 + t257 * t473) + t972 * (-t473 ^ 2 - t966 ^ 2);
t682 = -qJD(1) * t12 + qJD(2) * t24;
t631 = (-t175 * t966 - t252 * t632 - t257 * t617) * t922 + t293 * t964 + t243 * t1001;
t674 = t102 * t923 + t778 / 0.2e1;
t23 = (-t725 - t418 / 0.2e1) * mrSges(7,2) + t631 + t674;
t62 = (-m(7) * t252 - t293) * t966;
t681 = qJD(1) * t23 + qJD(2) * t62;
t641 = t663 * t775;
t622 = (t416 * t552 - t551 * t632) * t924 + (t416 * t543 + t547 * t632) * t922 + (t544 * t776 + t615 * t641) * t1009;
t652 = m(5) * t704 + m(6) * t879 + t178 * t922;
t30 = -t622 + t640 + t652 + t982 + t981;
t625 = (t473 * t552 - t551 * t966) * t924 + (t473 * t543 + t547 * t966) * t922 + (-t775 ^ 2 - t776 ^ 2) * t708;
t661 = m(6) * t876 + m(7) * t912 + t708;
t34 = -t291 - t292 - t487 + t625 - t661;
t680 = qJD(1) * t30 - qJD(2) * t34;
t31 = 0.2e1 * t975 * mrSges(6,2) + 0.2e1 * t963 * mrSges(7,1) + (-t688 / 0.4e1 + t856 / 0.4e1 - t774 / 0.4e1) * t928 + 0.2e1 * t718;
t41 = 0.2e1 * t1002 * mrSges(7,3) + 0.2e1 * t1001 * mrSges(6,1) + (-t855 / 0.4e1 + t769 / 0.4e1 + t686 / 0.4e1) * t928 - t987 - t991;
t679 = qJD(1) * t31 - qJD(2) * t41;
t213 = t962 * t1011;
t281 = t999 * t1011;
t676 = qJD(1) * t213 + qJD(2) * t281;
t673 = m(7) * t916 - t971 / 0.2e1;
t668 = (-pkin(5) * t118 + qJ(6) * t119) * t922;
t626 = ((-t543 + t552) * t255 + (t547 + t551) * t257) * t922 - t1003;
t633 = (-pkin(5) * t254 + qJ(6) * t256) * t923 + t1003;
t647 = (t866 + t874) * t966 - (t869 + t870) * t473;
t14 = (pkin(5) * t1002 + qJ(6) * t1000 + t647) * mrSges(7,2) + t626 + t633 - t959 * (t255 / 0.2e1 + t910) + t960 * (t909 + t911);
t654 = t551 * t959 - t552 * t960;
t64 = m(7) * (t543 * t551 + t547 * t552) + t654;
t628 = -t397 / 0.2e1 + t398 / 0.2e1 - t400 / 0.2e1 - t401 / 0.2e1 + (t103 * t543 + t104 * t547 + t551 * t92 + t552 * t93) * t923;
t8 = t742 * t416 + t741 * t632 + t670 * t552 + t671 * t551 + t668 + (t766 / 0.2e1 + qJ(6) * t964 + (t547 + pkin(5)) * t976) * mrSges(7,2) + t628 + t960 * (t916 + t917) + t959 * (t119 / 0.2e1 + t918);
t667 = -t8 * qJD(1) + t14 * qJD(2) + t64 * qJD(3);
t630 = -t606 + ((-qJ(6) - t543) * t617 + t104) * t922 + t740;
t37 = t630 + t673;
t511 = m(7) * t543 + mrSges(7,3);
t56 = (t1002 + t886) * mrSges(7,2) + (t254 / 0.4e1 - t257 / 0.4e1) * t928;
t666 = -qJD(1) * t37 + qJD(2) * t56 - qJD(3) * t511;
t289 = t1008 - t990 / 0.2e1;
t39 = -t606 + (t736 / 0.4e1 - t758 / 0.2e1 + t765 / 0.4e1 - t104 / 0.4e1) * t928;
t403 = -mrSges(7,3) + (t552 / 0.4e1 - t677 / 0.4e1 - t764 / 0.4e1 + t919) * t928;
t642 = qJD(1) * t39 + qJD(2) * t289 - qJD(3) * t403 + qJD(5) * t605;
t404 = mrSges(7,3) + (0.2e1 * qJ(6) + t552) * t922 + m(7) * t866;
t282 = (t1001 + t1000) * m(7);
t214 = (t964 + t963) * m(7);
t120 = t1014 + t858;
t57 = t1014 + t858 / 0.2e1 + m(7) * t911;
t50 = t625 + t661;
t42 = -t857 / 0.2e1 + t686 * t922;
t40 = t622 + t652;
t38 = (t104 - 0.2e1 * t758) * t922 + m(7) * t917 + t351;
t36 = t630 - t673;
t32 = -t802 / 0.2e1 - t810 / 0.2e1 + t744 * t632 + t743 * t416 - t718;
t22 = -mrSges(7,2) * t725 + t796 / 0.2e1 + t631 - t674;
t15 = t626 + t473 * t748 - t812 / 0.2e1 + t811 / 0.2e1 - t813 / 0.2e1 - t814 / 0.2e1 + qJ(6) * t739 + t647 * mrSges(7,2) - t744 * t257 + t743 * t255 - t633;
t11 = t619 - t623;
t9 = -t628 + t668 + (t748 + t742) * t416 + (mrSges(7,2) * t919 + t741) * t632 + t547 * t740 + t766 * t920 + t355 * t866 - t816 / 0.2e1 + t815 / 0.2e1 - t817 / 0.2e1 - t818 / 0.2e1 - t821 / 0.2e1 - t822 / 0.2e1 - t824 / 0.2e1 + t823 / 0.2e1 + (t951 + t354) * t867 + (-t970 + t946) * t551 / 0.2e1;
t4 = t655 + t620 + t719 * t257 + t720 * t255 + (mrSges(6,3) * t909 + t637) * t632 - (-t255 * mrSges(6,3) / 0.2e1 + t638) * t416 - t636;
t2 = t618 + t984;
t17 = [qJD(2) * t5 - qJD(3) * t6 + qJD(4) * t16 + qJD(5) * t7 + qJD(6) * t33, t2 * qJD(3) + t11 * qJD(4) + t4 * qJD(5) + t22 * qJD(6) + t783 + ((-t110 * t966 + t111 * t473) * mrSges(6,3) + (-Ifges(5,5) * t663 - Ifges(5,6) * t664 - t473 * t957 + t958 * t966 + t691) * t864 + (Ifges(3,5) + (-mrSges(3,1) + t937) * pkin(7) + t669) * t617 - t577 * t854 + t947 * t891 + m(4) * (-pkin(2) * t612 + pkin(8) * t939) + t939 * mrSges(4,3) + t317 * t956 + 0.2e1 * (-t110 * t255 + t111 * t257 + t480 * t529) * t924 + 0.2e1 * (t101 * t257 + t102 * t255 + t176 * t252) * t922 + t296 * t898 + t298 * t899 + t220 * t886 + t541 * t865 + t492 * t871 + t490 * t872 + t539 * t863 + mrSges(3,2) * t611 + t575 * t853 - Ifges(3,6) * t615 + t599 * t422 + t579 * t488 - pkin(2) * t566 + t529 * t246 + t501 * t507 + t480 * t294 - t255 * t356 + t255 * t357 + t257 * t350 + t257 * t353 + t176 * t293 + t252 * t245 - t318 * t659 + t102 * t793 + 0.2e1 * (t317 * t985 + t318 * t501 + t579 * t599) * t926 + t985 * t509 + t101 * t990 + t948 * t1000 + t222 * t1002 - t663 * t409 / 0.2e1 + t407 * t961) * qJD(2), -t779 + t2 * qJD(2) + (t936 - Ifges(4,6) * t761 + (t325 * t776 + t326 * t775) * t921 + t547 * t971 + t737 * t782 - t650 * t735 - t552 * t951 - t543 * t809 - t527 * mrSges(4,2) - t528 * mrSges(4,1) - t326 * mrSges(5,2) + t325 * mrSges(5,1) - t817 - t818 - t551 * t970 + m(6) * (-t118 * t551 + t119 * t552) + m(7) * (t118 * t547 + t119 * t543) + t815 - t816 - Ifges(4,5) * t763) * qJD(3) + t40 * qJD(4) + t9 * qJD(5) + t36 * qJD(6), qJD(2) * t11 + qJD(3) * t40 + qJD(5) * t32 + qJD(6) * t214 + t773, t777 + t4 * qJD(2) + t9 * qJD(3) + t32 * qJD(4) + (-t824 - t822 + m(7) * (-pkin(5) * t104 + qJ(6) * t103) + t823 - t821 + t687 * mrSges(7,2) + t940) * qJD(5) + t38 * qJD(6), qJD(2) * t22 + qJD(3) * t36 + qJD(4) * t214 + qJD(5) * t38 + t772; qJD(3) * t1 + qJD(4) * t12 + qJD(5) * t3 + qJD(6) * t23 - t783, qJD(3) * t10 - qJD(4) * t24 - qJD(5) * t13 + qJD(6) * t62 (-t552 * t792 - t543 * t793 - t551 * t787 + t934 + t937 * pkin(8) - t813 - t814 + m(6) * (-t254 * t551 + t256 * t552) + m(7) * (t254 * t547 + t256 * t543) + (t498 * t776 + t775 * t985) * t921 + t547 * t990 + t659 * t735 + pkin(3) * mrSges(5,3) * t641 - t985 * mrSges(5,2) + t498 * mrSges(5,1) + t811 - t812) * qJD(3) + t50 * qJD(4) + t15 * qJD(5) + t57 * qJD(6) + t684, qJD(3) * t50 + qJD(5) * t42 + qJD(6) * t282 - t682, t15 * qJD(3) + t42 * qJD(4) + (t685 * mrSges(7,2) + (-m(7) * pkin(5) - t960) * t257 + (mrSges(6,2) - t605) * t255 + t941) * qJD(5) + t120 * qJD(6) + t683, qJD(3) * t57 + qJD(4) * t282 + qJD(5) * t120 + t681; -qJD(2) * t1 - qJD(4) * t30 - qJD(5) * t8 + qJD(6) * t37 + t779, qJD(4) * t34 + qJD(5) * t14 - qJD(6) * t56 - t684, qJD(5) * t64 + qJD(6) * t511, -t680 (m(7) * (-pkin(5) * t552 + qJ(6) * t551) + t654) * qJD(5) + t404 * qJD(6) + t667, qJD(5) * t404 - t666; -qJD(2) * t12 + qJD(3) * t30 + qJD(5) * t31 - qJD(6) * t213 - t773, -qJD(3) * t34 - qJD(5) * t41 - qJD(6) * t281 + t682, t680, 0, t679, -t676; -qJD(2) * t3 + qJD(3) * t8 - qJD(4) * t31 + qJD(6) * t39 - t777, -qJD(3) * t14 + qJD(4) * t41 + qJD(6) * t289 - t683, -qJD(6) * t403 - t667, -t679, t605 * qJD(6), t642; -qJD(2) * t23 - qJD(3) * t37 + qJD(4) * t213 - qJD(5) * t39 - t772, qJD(3) * t56 + qJD(4) * t281 - qJD(5) * t289 - t681, qJD(5) * t403 + t666, t676, -t642, 0;];
Cq  = t17;