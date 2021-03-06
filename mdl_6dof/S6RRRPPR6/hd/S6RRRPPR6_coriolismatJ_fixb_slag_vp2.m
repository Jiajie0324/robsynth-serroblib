% Calculate matrix of centrifugal and coriolis load on the joints for
% S6RRRPPR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d6,theta4]';
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
% Datum: 2019-03-09 15:55
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S6RRRPPR6_coriolismatJ_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPPR6_coriolismatJ_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPPR6_coriolismatJ_fixb_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRPPR6_coriolismatJ_fixb_slag_vp2: pkin has to be [11x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRPPR6_coriolismatJ_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRRPPR6_coriolismatJ_fixb_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RRRPPR6_coriolismatJ_fixb_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 15:47:54
% EndTime: 2019-03-09 15:48:34
% DurationCPUTime: 22.45s
% Computational Cost: add. (38675->997), mult. (91854->1353), div. (0->0), fcn. (102489->10), ass. (0->504)
t995 = Ifges(6,4) - Ifges(5,5);
t994 = Ifges(6,5) - Ifges(5,6);
t623 = sin(qJ(6));
t618 = t623 ^ 2;
t626 = cos(qJ(6));
t619 = t626 ^ 2;
t763 = t618 + t619;
t932 = -mrSges(7,2) / 0.2e1;
t622 = cos(pkin(6));
t625 = sin(qJ(2));
t621 = sin(pkin(6));
t628 = cos(qJ(2));
t792 = t621 * t628;
t563 = t622 * t625 * pkin(1) + pkin(8) * t792;
t528 = pkin(9) * t622 + t563;
t529 = (-pkin(2) * t628 - pkin(9) * t625 - pkin(1)) * t621;
t624 = sin(qJ(3));
t627 = cos(qJ(3));
t372 = -t624 * t528 + t627 * t529;
t793 = t621 * t625;
t560 = t622 * t624 + t627 * t793;
t315 = -t560 * qJ(4) + t372;
t620 = sin(pkin(11));
t373 = t528 * t627 + t529 * t624;
t559 = t622 * t627 - t624 * t793;
t316 = t559 * qJ(4) + t373;
t805 = cos(pkin(11));
t715 = t805 * t316;
t144 = t315 * t620 + t715;
t432 = t559 * t805 - t620 * t560;
t861 = pkin(5) * t432;
t103 = t144 + t861;
t652 = t620 * t559 + t560 * t805;
t863 = pkin(3) * t560;
t691 = -qJ(5) * t432 + t863;
t927 = pkin(4) + pkin(10);
t141 = t652 * t927 + t691;
t68 = t103 * t626 - t141 * t623;
t993 = t68 / 0.2e1;
t714 = t805 * t627;
t576 = t620 * t624 - t714;
t578 = t620 * t627 + t624 * t805;
t613 = -pkin(3) * t627 - pkin(2);
t670 = -qJ(5) * t578 + t613;
t464 = pkin(4) * t576 + t670;
t482 = -mrSges(6,2) * t576 - mrSges(6,3) * t578;
t992 = -m(6) * t464 - t482;
t931 = -mrSges(7,3) / 0.2e1;
t991 = t763 * t931;
t615 = Ifges(4,5) * t627;
t844 = Ifges(4,6) * t624;
t990 = t576 * t995 + t994 * t578 + t615 - t844;
t519 = t578 * t792;
t448 = t519 * t626 - t623 * t793;
t906 = t448 / 0.2e1;
t449 = t519 * t623 + t626 * t793;
t905 = t449 / 0.2e1;
t781 = t624 * t628;
t756 = t621 * t781;
t520 = -t620 * t756 + t714 * t792;
t989 = t520 / 0.2e1;
t857 = mrSges(5,3) + mrSges(6,1);
t987 = Ifges(5,4) + Ifges(6,6);
t986 = Ifges(5,4) * t432;
t985 = Ifges(6,6) * t432;
t617 = t624 * pkin(3);
t708 = qJ(5) * t576 + t617;
t360 = t578 * t927 + t708;
t856 = -qJ(4) - pkin(9);
t586 = t856 * t624;
t588 = t856 * t627;
t961 = t620 * t586 - t805 * t588;
t981 = -t576 * pkin(5) + t961;
t223 = t360 * t626 + t623 * t981;
t801 = t223 * t623;
t222 = -t360 * t623 + t626 * t981;
t802 = t222 * t626;
t675 = t801 + t802;
t69 = t103 * t623 + t141 * t626;
t984 = -t623 * t69 - t626 * t68;
t751 = t805 * pkin(3);
t612 = -t751 - pkin(4);
t983 = t612 * mrSges(6,1) - mrSges(5,3) * t751;
t843 = Ifges(6,6) * t578;
t483 = t576 * Ifges(6,3) - t843;
t851 = Ifges(5,4) * t578;
t485 = -t576 * Ifges(5,2) + t851;
t849 = Ifges(7,4) * t623;
t693 = Ifges(7,2) * t626 + t849;
t816 = t578 * Ifges(7,6);
t355 = t576 * t693 + t816;
t776 = t626 * t355;
t795 = t576 * t626;
t552 = Ifges(7,4) * t795;
t796 = t576 * t623;
t817 = t578 * Ifges(7,5);
t357 = Ifges(7,1) * t796 + t552 + t817;
t786 = t623 * t357;
t657 = t786 / 0.4e1 + t776 / 0.4e1;
t982 = -t485 / 0.4e1 + t483 / 0.4e1 + t657;
t841 = Ifges(7,6) * t626;
t846 = Ifges(7,5) * t623;
t667 = t846 / 0.2e1 + t841 / 0.2e1;
t840 = Ifges(7,3) * t432;
t980 = t652 * t667 + t840 / 0.2e1 + mrSges(7,1) * t993 + t69 * t932;
t862 = pkin(3) * t620;
t609 = qJ(5) + t862;
t937 = m(5) * pkin(3);
t761 = t937 / 0.2e1;
t938 = m(7) / 0.2e1;
t941 = m(6) / 0.2e1;
t979 = -t609 * (t941 + t938) - t620 * t761;
t300 = t620 * t316;
t145 = t315 * t805 - t300;
t969 = pkin(5) * t652;
t104 = t145 - t969;
t285 = -pkin(3) * t792 + t315;
t140 = t620 * t285 + t715;
t129 = qJ(5) * t792 - t140;
t139 = t285 * t805 - t300;
t133 = pkin(4) * t792 - t139;
t604 = pkin(8) * t793;
t864 = pkin(1) * t628;
t527 = t604 + (-pkin(2) - t864) * t622;
t453 = -t559 * pkin(3) + t527;
t644 = -qJ(5) * t652 + t453;
t166 = -pkin(4) * t432 + t644;
t213 = pkin(4) * t652 + t691;
t359 = t576 * t927 + t670;
t509 = -t805 * t586 - t588 * t620;
t410 = pkin(5) * t578 + t509;
t214 = -t359 * t623 + t410 * t626;
t215 = t359 * t626 + t410 * t623;
t811 = t626 * mrSges(7,1);
t813 = t623 * mrSges(7,2);
t585 = -t811 + t813;
t245 = t585 * t652;
t855 = mrSges(7,3) * t623;
t247 = mrSges(7,1) * t432 - t652 * t855;
t854 = mrSges(7,3) * t626;
t248 = -mrSges(7,2) * t432 + t652 * t854;
t249 = mrSges(5,1) * t652 + t432 * mrSges(5,2);
t250 = -mrSges(6,2) * t652 - t432 * mrSges(6,3);
t251 = -mrSges(5,1) * t432 + mrSges(5,2) * t652;
t252 = mrSges(6,2) * t432 - mrSges(6,3) * t652;
t346 = -t432 * t626 + t623 * t792;
t347 = t432 * t623 + t626 * t792;
t356 = -Ifges(7,6) * t576 + t578 * t693;
t848 = Ifges(7,4) * t626;
t694 = Ifges(7,1) * t623 + t848;
t358 = -Ifges(7,5) * t576 + t578 * t694;
t455 = t585 * t578;
t460 = mrSges(4,1) * t560 + mrSges(4,2) * t559;
t555 = Ifges(4,4) * t559;
t461 = -Ifges(4,2) * t560 + t555;
t853 = Ifges(4,4) * t560;
t462 = Ifges(4,1) * t559 - t853;
t465 = pkin(4) * t578 + t708;
t471 = mrSges(7,1) * t578 - mrSges(7,3) * t796;
t472 = -mrSges(7,1) * t576 - t578 * t855;
t474 = mrSges(7,2) * t576 + t578 * t854;
t481 = mrSges(5,1) * t576 + mrSges(5,2) * t578;
t514 = mrSges(4,2) * t792 + t559 * mrSges(4,3);
t515 = -mrSges(4,1) * t792 - t560 * mrSges(4,3);
t589 = mrSges(4,1) * t624 + mrSges(4,2) * t627;
t852 = Ifges(4,4) * t624;
t593 = Ifges(4,2) * t627 + t852;
t616 = Ifges(4,4) * t627;
t596 = Ifges(4,1) * t624 + t616;
t113 = -t432 * t927 + t644;
t94 = pkin(10) * t792 + t133 + t969;
t60 = -t113 * t623 + t626 * t94;
t61 = t113 * t626 + t623 * t94;
t678 = t144 * t509 + t145 * t961;
t695 = Ifges(4,1) * t627 - t852;
t711 = -Ifges(4,2) * t624 + t616;
t601 = mrSges(6,3) * t792;
t827 = t432 * mrSges(6,1);
t361 = t601 - t827;
t363 = mrSges(5,2) * t792 + mrSges(5,3) * t432;
t722 = -t361 / 0.2e1 + t363 / 0.2e1;
t760 = Ifges(4,5) * t792;
t398 = Ifges(4,1) * t560 + t555 - t760;
t772 = t627 * t398;
t397 = Ifges(4,2) * t559 - Ifges(4,6) * t792 + t853;
t782 = t624 * t397;
t868 = -t627 / 0.2e1;
t872 = t624 / 0.2e1;
t873 = -t624 / 0.2e1;
t891 = t560 / 0.2e1;
t473 = -mrSges(7,2) * t578 + mrSges(7,3) * t795;
t901 = t473 / 0.2e1;
t902 = t465 / 0.2e1;
t454 = t585 * t576;
t903 = t454 / 0.2e1;
t911 = t981 / 0.2e1;
t826 = t652 * mrSges(7,1);
t829 = t347 * mrSges(7,3);
t225 = t826 + t829;
t918 = t225 / 0.2e1;
t825 = t652 * mrSges(7,2);
t831 = t346 * mrSges(7,3);
t224 = -t825 + t831;
t919 = t224 / 0.2e1;
t920 = t213 / 0.2e1;
t99 = -t129 + t861;
t928 = t99 / 0.2e1;
t943 = m(5) / 0.2e1;
t830 = t347 * mrSges(7,2);
t832 = t346 * mrSges(7,1);
t185 = -t830 - t832;
t974 = -t185 / 0.2e1;
t978 = t410 * t974 - t722 * t509 + (t129 * t509 + t133 * t961 + t166 * t465 + t213 * t464 + t678) * t941 + (-t139 * t961 - t140 * t509 + (t453 * t624 + t560 * t613) * pkin(3) + t678) * t943 + (t251 * t872 + t481 * t891) * pkin(3) + t471 * t993 + t627 * t461 / 0.4e1 + t624 * t462 / 0.4e1 + t613 * t249 / 0.2e1 + t527 * t589 / 0.2e1 - t560 * t593 / 0.4e1 + t60 * t472 / 0.2e1 + t61 * t474 / 0.2e1 - pkin(2) * t460 / 0.2e1 + t464 * t250 / 0.2e1 + t346 * t356 / 0.4e1 - t347 * t358 / 0.4e1 + t214 * t247 / 0.2e1 + t215 * t248 / 0.2e1 - t782 / 0.4e1 - t990 * t792 / 0.4e1 + ((t559 * t872 + t560 * t868) * mrSges(4,3) + t514 * t873 + t515 * t868) * pkin(9) + (t104 * t981 + t214 * t68 + t215 * t69 + t222 * t60 + t223 * t61 - t410 * t99) * t938 + t772 / 0.4e1 + t560 * t695 / 0.4e1 + (t711 + t596) * t559 / 0.4e1 + t69 * t901 + t252 * t902 + t104 * t903 + t245 * t911 + t222 * t918 + t223 * t919 + t482 * t920 + t455 * t928;
t977 = m(6) * t612 - t805 * t937 - mrSges(5,1) + mrSges(6,2);
t976 = m(6) * t609 + t620 * t937 - mrSges(5,2) + mrSges(6,3);
t975 = -mrSges(5,1) / 0.2e1;
t895 = -t519 / 0.2e1;
t894 = t519 / 0.2e1;
t909 = t652 / 0.2e1;
t741 = -t792 / 0.2e1;
t971 = -t793 / 0.2e1;
t742 = t793 / 0.2e1;
t970 = m(7) * t763;
t968 = Ifges(5,4) * t652;
t967 = Ifges(6,2) * t652;
t966 = Ifges(6,6) * t652;
t692 = t841 + t846;
t963 = t652 * t692;
t960 = t991 * t576;
t153 = Ifges(7,6) * t432 + t652 * t693;
t154 = Ifges(7,5) * t432 + t652 * t694;
t869 = t626 / 0.4e1;
t958 = t153 * t869 + t623 * t154 / 0.4e1;
t561 = t622 * t864 - t604;
t562 = (pkin(2) * t625 - pkin(9) * t628) * t621;
t450 = -t624 * t561 + t627 * t562;
t771 = t627 * t628;
t339 = (pkin(3) * t625 - qJ(4) * t771) * t621 + t450;
t451 = t627 * t561 + t624 * t562;
t370 = -qJ(4) * t756 + t451;
t686 = -t339 * t805 + t620 * t370;
t134 = t520 * pkin(5) - t793 * t927 + t686;
t516 = pkin(3) * t756 + t563;
t669 = -qJ(5) * t520 + t516;
t206 = t519 * t927 + t669;
t79 = t134 * t626 - t206 * t623;
t80 = t134 * t623 + t206 * t626;
t687 = t80 * t623 + t79 * t626;
t758 = Ifges(5,5) / 0.2e1 - Ifges(6,4) / 0.2e1;
t954 = Ifges(5,3) + Ifges(4,3) + Ifges(6,1);
t592 = -Ifges(7,2) * t623 + t848;
t595 = Ifges(7,1) * t626 - t849;
t870 = t626 / 0.2e1;
t874 = t623 / 0.2e1;
t953 = -mrSges(5,3) * t862 + t592 * t870 + t595 * t874;
t952 = Ifges(4,5) * t559 - Ifges(4,6) * t560 - t432 * t995 + t994 * t652;
t354 = Ifges(7,3) * t578 + t576 * t692;
t566 = Ifges(6,6) * t576;
t484 = -Ifges(6,2) * t578 + t566;
t571 = Ifges(5,4) * t576;
t486 = Ifges(5,1) * t578 - t571;
t951 = t486 / 0.4e1 - t484 / 0.4e1 + t354 / 0.4e1;
t948 = Ifges(7,5) * t905 + Ifges(7,6) * t906 + Ifges(7,3) * t989;
t779 = t626 * t224;
t789 = t623 * t225;
t658 = t789 / 0.2e1 - t779 / 0.2e1;
t871 = -t626 / 0.2e1;
t947 = (t346 * t871 + t347 * t874) * mrSges(7,3) - t658;
t608 = -pkin(10) + t612;
t946 = t608 * t763 * t938 + t612 * t941 - t805 * t761 + t991;
t944 = 0.2e1 * t578;
t942 = -m(6) / 0.2e1;
t940 = m(6) / 0.4e1;
t939 = -m(7) / 0.2e1;
t936 = mrSges(7,1) / 0.2e1;
t935 = -mrSges(5,2) / 0.2e1;
t934 = -mrSges(6,2) / 0.2e1;
t933 = mrSges(6,2) / 0.2e1;
t925 = t129 / 0.2e1;
t924 = -t133 / 0.2e1;
t923 = t144 / 0.2e1;
t922 = -t145 / 0.2e1;
t921 = t166 / 0.2e1;
t917 = t346 / 0.2e1;
t916 = -t347 / 0.2e1;
t364 = -mrSges(5,1) * t792 - mrSges(5,3) * t652;
t912 = -t364 / 0.2e1;
t910 = -t652 / 0.2e1;
t908 = t432 / 0.2e1;
t907 = t652 / 0.4e1;
t904 = t453 / 0.2e1;
t896 = t961 / 0.2e1;
t893 = t559 / 0.2e1;
t890 = -t576 / 0.2e1;
t887 = -t578 / 0.2e1;
t886 = -t578 / 0.4e1;
t885 = t578 / 0.2e1;
t884 = t578 / 0.4e1;
t810 = t626 * mrSges(7,2);
t814 = t623 * mrSges(7,1);
t587 = t810 + t814;
t883 = t587 / 0.2e1;
t882 = t592 / 0.4e1;
t881 = t595 / 0.4e1;
t880 = -t608 / 0.2e1;
t879 = t608 / 0.2e1;
t878 = -t609 / 0.2e1;
t877 = t609 / 0.2e1;
t876 = -t623 / 0.2e1;
t875 = -t623 / 0.4e1;
t867 = t627 / 0.2e1;
t859 = t60 * mrSges(7,3);
t858 = t61 * mrSges(7,3);
t850 = Ifges(7,4) * t347;
t838 = Ifges(7,3) * t576;
t837 = t139 * mrSges(5,3);
t836 = t140 * mrSges(5,3);
t835 = t214 * mrSges(7,3);
t834 = t215 * mrSges(7,3);
t152 = t840 + t963;
t253 = Ifges(6,3) * t652 - t985;
t254 = -Ifges(6,2) * t432 + t966;
t255 = -Ifges(5,2) * t652 + t986;
t256 = Ifges(5,1) * t432 - t968;
t130 = -Ifges(7,5) * t347 + Ifges(7,6) * t346 + Ifges(7,3) * t652;
t235 = -Ifges(6,4) * t792 - t967 - t985;
t237 = Ifges(5,1) * t652 - Ifges(5,5) * t792 + t986;
t699 = -t235 / 0.2e1 + t237 / 0.2e1 + t130 / 0.2e1;
t234 = -Ifges(6,5) * t792 - Ifges(6,3) * t432 - t966;
t236 = Ifges(5,2) * t432 - Ifges(5,6) * t792 + t968;
t726 = t234 / 0.2e1 - t236 / 0.2e1;
t362 = mrSges(6,1) * t652 - mrSges(6,2) * t792;
t769 = t362 - t364;
t770 = -t361 + t363;
t131 = Ifges(7,2) * t346 + Ifges(7,6) * t652 - t850;
t780 = t626 * t131;
t342 = Ifges(7,4) * t346;
t132 = -Ifges(7,1) * t347 + Ifges(7,5) * t652 + t342;
t791 = t623 * t132;
t3 = t769 * t144 + t770 * t145 + (t462 / 0.2e1 - t397 / 0.2e1 + pkin(3) * t251 - t373 * mrSges(4,3)) * t560 + (t780 / 0.2e1 + t791 / 0.2e1 + t129 * mrSges(6,1) - t836 + t726 + t256 / 0.2e1 + t152 / 0.2e1 - t254 / 0.2e1) * t652 + m(5) * (-t139 * t144 + t140 * t145 + t453 * t863) + t527 * t460 + t372 * t514 - t373 * t515 + t453 * t249 + m(7) * (t104 * t99 + t60 * t68 + t61 * t69) + m(6) * (-t129 * t145 + t133 * t144 + t166 * t213) + t166 * t250 + t213 * t252 + t99 * t245 + t60 * t247 + t61 * t248 + t69 * t224 + t68 * t225 + (t461 / 0.2e1 + t398 / 0.2e1 - t372 * mrSges(4,3)) * t559 + t104 * t185 + t154 * t916 + t153 * t917 + t952 * t741 + (t255 / 0.2e1 - t253 / 0.2e1 + t133 * mrSges(6,1) + t699 - t837) * t432;
t833 = t3 * qJD(1);
t181 = t620 * t339 + t805 * t370;
t168 = -qJ(5) * t793 - t181;
t138 = -pkin(5) * t519 - t168;
t169 = -pkin(4) * t793 + t686;
t204 = Ifges(7,4) * t449 + Ifges(7,2) * t448 + Ifges(7,6) * t520;
t205 = Ifges(7,1) * t449 + Ifges(7,4) * t448 + Ifges(7,5) * t520;
t258 = -mrSges(7,1) * t448 + mrSges(7,2) * t449;
t273 = pkin(4) * t519 + t669;
t307 = -mrSges(7,2) * t520 + mrSges(7,3) * t448;
t308 = mrSges(7,1) * t520 - mrSges(7,3) * t449;
t821 = t520 * mrSges(5,2);
t824 = t519 * mrSges(5,1);
t344 = t821 + t824;
t820 = t520 * mrSges(6,3);
t823 = t519 * mrSges(6,2);
t345 = -t820 - t823;
t467 = mrSges(6,1) * t519 - mrSges(6,3) * t793;
t822 = t520 * mrSges(6,1);
t468 = mrSges(6,2) * t793 + t822;
t469 = -mrSges(5,2) * t793 - mrSges(5,3) * t519;
t470 = mrSges(5,1) * t793 - mrSges(5,3) * t520;
t488 = (Ifges(4,6) * t625 + t628 * t711) * t621;
t489 = (Ifges(4,5) * t625 + t628 * t695) * t621;
t525 = t589 * t792;
t548 = (-mrSges(4,2) * t625 - mrSges(4,3) * t781) * t621;
t549 = (mrSges(4,1) * t625 - mrSges(4,3) * t771) * t621;
t602 = Ifges(3,5) * t792;
t696 = -t563 * mrSges(3,1) - t561 * mrSges(3,2);
t698 = Ifges(6,4) * t971 + Ifges(5,5) * t742 + t948 + (Ifges(5,1) + Ifges(6,2)) * t989 + t987 * t895;
t725 = Ifges(6,5) * t742 + Ifges(5,6) * t971 - t987 * t520 / 0.2e1 + (Ifges(5,2) + Ifges(6,3)) * t894;
t757 = Ifges(5,6) / 0.2e1 - Ifges(6,5) / 0.2e1;
t4 = -t686 * t364 + m(5) * (-t139 * t686 + t140 * t181 + t453 * t516) + ((-Ifges(3,6) * t622 + Ifges(4,5) * t891 + Ifges(4,6) * t893 + (-mrSges(3,1) * pkin(1) - Ifges(3,4) * t625) * t621 + t758 * t652 + t757 * t432) * t625 + (-t782 / 0.2e1 + t772 / 0.2e1 + Ifges(3,4) * t792 + Ifges(3,5) * t622 / 0.2e1 + (-pkin(1) * mrSges(3,2) + (-t615 / 0.2e1 + t844 / 0.2e1) * t628) * t621 - t758 * t520 + t757 * t519 + (Ifges(3,1) - Ifges(3,2) - t954) * t793) * t628) * t621 - t725 * t432 + m(7) * (t138 * t99 + t60 * t79 + t61 * t80) + m(6) * (t129 * t168 + t133 * t169 + t166 * t273) + m(4) * (t372 * t450 + t373 * t451 + t527 * t563) + t726 * t519 + t563 * (-mrSges(4,1) * t559 + mrSges(4,2) * t560) + t373 * t548 + t372 * t549 + t527 * t525 + t451 * t514 + t450 * t515 + t516 * t251 + t129 * t467 + t133 * t468 + t140 * t469 + t139 * t470 + t453 * t344 + t168 * t361 + t169 * t362 + t181 * t363 + t166 * t345 + t61 * t307 + t60 * t308 + t273 * t252 + t99 * t258 + t80 * t224 + t79 * t225 + t138 * t185 + (t602 / 0.2e1 + t696) * t622 + t699 * t520 + t698 * t652 + t489 * t891 + t488 * t893 + t132 * t905 + t131 * t906 + t205 * t916 + t204 * t917;
t828 = t4 * qJD(1);
t819 = t576 * mrSges(6,1);
t818 = t578 * mrSges(6,1);
t184 = -mrSges(7,1) * t347 + mrSges(7,2) * t346;
t186 = Ifges(7,5) * t346 + Ifges(7,6) * t347;
t187 = Ifges(7,2) * t347 + t342;
t188 = Ifges(7,1) * t346 + t850;
t7 = t186 * t909 + t99 * t184 + t60 * t224 - t61 * t225 + (-t188 / 0.2e1 + t131 / 0.2e1 + t858) * t347 + (t132 / 0.2e1 + t187 / 0.2e1 - t859) * t346;
t808 = t7 * qJD(1);
t690 = t60 * t626 + t61 * t623;
t778 = t626 * t225;
t790 = t623 * t224;
t15 = (t185 + t770) * t432 + (t769 + t778 + t790) * t652 + m(7) * (t432 * t99 + t652 * t690) + m(6) * (-t129 * t432 + t133 * t652) + m(5) * (-t139 * t652 + t140 * t432);
t804 = qJD(1) * t15;
t689 = t60 * t623 - t61 * t626;
t17 = (-m(6) * t129 + m(7) * t99 + t185 - t361) * t792 + (m(6) * t166 - m(7) * t689 + t252 + t779 - t789) * t652;
t803 = qJD(1) * t17;
t788 = t623 * t248;
t787 = t623 * t307;
t785 = t623 * t471;
t784 = t623 * t473;
t783 = t623 * t474;
t777 = t626 * t247;
t775 = t626 * t471;
t774 = t626 * t472;
t773 = t626 * t473;
t759 = mrSges(5,3) / 0.2e1 + mrSges(6,1) / 0.2e1;
t743 = t608 * t870;
t740 = t791 / 0.4e1;
t732 = t780 / 0.4e1;
t459 = t576 * t595;
t724 = t355 / 0.4e1 - t459 / 0.4e1;
t458 = -Ifges(7,2) * t796 + t552;
t723 = t357 / 0.4e1 + t458 / 0.4e1;
t721 = t362 / 0.2e1 + t912;
t720 = t694 / 0.4e1 + t882;
t719 = t881 - t693 / 0.4e1;
t718 = t618 / 0.2e1 + t619 / 0.2e1;
t565 = t576 * mrSges(5,2);
t713 = t578 * mrSges(5,1) - t565;
t564 = t576 * mrSges(6,3);
t712 = -t578 * mrSges(6,2) + t564;
t457 = Ifges(7,5) * t795 - Ifges(7,6) * t796;
t704 = mrSges(7,3) * t718;
t703 = t919 - t831 / 0.2e1;
t702 = t918 - t829 / 0.2e1;
t697 = -t484 / 0.2e1 + t486 / 0.2e1 + t354 / 0.2e1;
t654 = t593 * t873 + t596 * t867;
t12 = t711 * t868 + t695 * t873 + pkin(2) * t589 - t464 * t712 - t222 * t471 - t214 * t472 - t223 * t473 - t215 * t474 + t410 * t454 - t981 * t455 + (t485 / 0.2e1 - t483 / 0.2e1 - t776 / 0.2e1 - t786 / 0.2e1 + (Ifges(6,6) / 0.2e1 + Ifges(5,4) / 0.2e1 - t667) * t578 + (Ifges(7,3) / 0.2e1 + Ifges(6,2) / 0.2e1 + Ifges(5,1) / 0.2e1 - Ifges(5,2) / 0.2e1 - Ifges(6,3) / 0.2e1) * t576) * t578 - m(7) * (t214 * t222 + t215 * t223 - t410 * t981) + (-t571 / 0.2e1 - t566 / 0.2e1 + t356 * t871 + t358 * t876 + t697) * t576 - t481 * t617 - t654 + (-m(5) * t617 - t713) * t613 + t992 * t465;
t590 = Ifges(7,5) * t626 - Ifges(7,6) * t623;
t630 = (t181 * t620 - t686 * t805) * t761 + t686 * t975 + t205 * t869 + t204 * t875 + t258 * t877 + (t590 / 0.4e1 + t758) * t520 + t687 * t931 + t954 * t742 + t470 * t751 / 0.2e1 + t469 * t862 / 0.2e1 + t612 * t468 / 0.2e1 + t450 * mrSges(4,1) / 0.2e1 - t451 * mrSges(4,2) / 0.2e1 - t168 * mrSges(6,3) / 0.2e1 + t741 * t844 + t760 * t867 + t308 * t743 + t467 * t878 + t787 * t879 + t449 * t881 + t448 * t882 + t138 * t883 + Ifges(6,5) * t894 + Ifges(5,6) * t895 + t169 * t933 + t181 * t935 + (t138 * t609 + t608 * t687) * t938 + (-t168 * t609 + t169 * t612) * t941;
t2 = -t630 - t432 * (Ifges(6,3) * t578 + t566) / 0.4e1 + t432 * (-Ifges(5,2) * t578 - t571) / 0.4e1 + t961 * t912 + t857 * (t144 * t885 + t145 * t890 + t509 * t908 + t910 * t961) + (t256 + t234 + t152) * t884 + (t254 + t236) * t886 + t978 + (-t843 / 0.4e1 + t982) * t652 + t951 * t432 + (t578 * t692 - t838 - t851) * t907 + (-t967 / 0.4e1 + t837 / 0.2e1 - Ifges(5,1) * t907 + t958) * t576 + (t253 + t235) * t576 / 0.4e1 - (t255 + t237 + t130) * t576 / 0.4e1 + t578 * t732 + t578 * t740 + t836 * t887 + t362 * t896 + t713 * t904 + t712 * t921 + t819 * t924 + t818 * t925;
t685 = t2 * qJD(1) - t12 * qJD(2);
t456 = t576 * t587;
t24 = t214 * t473 - t215 * t471 + t981 * t456 + t457 * t885 + ((-t835 + t357 / 0.2e1 + t458 / 0.2e1) * t626 + (-t834 + t459 / 0.2e1 - t355 / 0.2e1) * t623) * t576;
t632 = ((t187 / 0.4e1 + t132 / 0.4e1 - t859 / 0.2e1) * t626 + (-t858 / 0.2e1 + t188 / 0.4e1 - t131 / 0.4e1) * t623) * t576 + (-t835 / 0.2e1 + t723) * t346 + (t834 / 0.2e1 + t724) * t347 + t214 * t919 - t215 * t225 / 0.2e1 + t184 * t911 + t457 * t907 + t186 * t884 + t60 * t901 - t61 * t471 / 0.2e1 + t456 * t928;
t643 = t79 * t936 + t80 * t932 + t948;
t5 = t632 - t643;
t684 = t5 * qJD(1) + t24 * qJD(2);
t677 = t214 * t626 + t215 * t623;
t38 = (t576 * t857 - t454) * t576 + (t578 * t857 + t775 + t784) * t578 + m(7) * (-t576 * t981 + t578 * t677) + (m(5) + m(6)) * (t509 * t578 - t576 * t961);
t653 = t775 / 0.2e1 + t784 / 0.2e1;
t659 = t790 / 0.2e1 + t778 / 0.2e1;
t674 = t432 * t961 + t509 * t652;
t631 = t653 * t652 + (-t759 * t432 - t722 + t974) * t576 + (t652 * t759 + t659 + t721) * t578 + (-t139 * t578 - t140 * t576 + t674) * t943 + (t129 * t576 + t133 * t578 + t674) * t941 + (t432 * t981 - t576 * t99 + t578 * t690 + t652 * t677) * t938 + t432 * t903;
t641 = -m(5) * t516 / 0.2e1 + t273 * t942 + (-t623 * t79 + t626 * t80) * t939 + t308 * t874 + t307 * t871;
t9 = (t935 + mrSges(6,3) / 0.2e1) * t520 + (t933 + t975) * t519 + t631 + t641;
t683 = -qJD(1) * t9 - qJD(2) * t38;
t656 = t785 / 0.2e1 - t773 / 0.2e1;
t676 = t214 * t623 - t215 * t626;
t634 = (-t252 / 0.2e1 + t658) * t578 + (-t482 / 0.2e1 + t656) * t652 + (-t578 * t166 - t464 * t652 - t792 * t961) * t941 + (t578 * t689 + t652 * t676 - t792 * t981) * t938;
t640 = t169 * t942 + t687 * t939 - t822 / 0.2e1 - t787 / 0.2e1 + t308 * t871;
t663 = (-t454 / 0.2e1 + t819 / 0.2e1) * t628;
t14 = (t625 * t934 + t663) * t621 + t634 + t640;
t50 = (m(7) * t676 - t773 + t785 + t992) * t578;
t682 = -qJD(1) * t14 - qJD(2) * t50;
t636 = t946 * t652 + (t883 - t979) * t432;
t639 = m(6) * t920 + (-t623 * t68 + t626 * t69) * t938 + t247 * t876 + t248 * t870 + t560 * t761;
t19 = t249 + t250 - t636 + t639;
t635 = t576 * t979 + t946 * t578 + t587 * t890;
t638 = m(6) * t902 + (-t222 * t623 + t223 * t626) * t938 + t472 * t876 + t474 * t870 + t624 * t761;
t42 = t635 - t638 - t712 - t713;
t681 = qJD(1) * t19 - qJD(2) * t42;
t27 = (mrSges(7,1) * t909 + t702) * t626 + (mrSges(7,2) * t910 + t703) * t623;
t664 = t811 / 0.2e1 - t813 / 0.2e1;
t648 = t664 * t578;
t71 = t648 + t653;
t680 = qJD(1) * t27 + qJD(2) * t71;
t28 = (t825 / 0.2e1 - t703) * t626 + (t826 / 0.2e1 + t702) * t623;
t665 = t814 / 0.2e1 + t810 / 0.2e1;
t649 = t665 * t578;
t64 = t576 * t704 + t649 + t656;
t679 = qJD(1) * t28 + qJD(2) * t64;
t178 = (m(7) * t718 + t941) * t944;
t650 = (-t970 / 0.4e1 - m(6) / 0.4e1) * t652;
t668 = t970 / 0.4e1 + t940;
t74 = -0.2e1 * t652 * t668 + 0.2e1 * t650;
t671 = qJD(1) * t74 - qJD(2) * t178;
t666 = t222 * t936 + t223 * t932;
t661 = t456 * t878 + t585 * t911;
t660 = t740 + t732;
t655 = -t783 / 0.2e1 - t774 / 0.2e1;
t651 = (-qJ(5) - t609) * t792 + t140;
t633 = t720 * t347 + t719 * t346 + t947 * t608 - t963 / 0.4e1 + t184 * t877 + t187 * t875 + t188 * t869 - t99 * t585 / 0.2e1 - t660;
t11 = t633 - t980;
t25 = (-Ifges(7,3) / 0.2e1 + t608 * t704) * t576 + (0.3e1 / 0.4e1 * t816 + t473 * t880 - t719 * t576 + t724) * t626 + (0.3e1 / 0.4e1 * t817 + t471 * t879 + t720 * t576 + t723) * t623 + t661 + t666;
t286 = -t609 * t585 + (-t694 / 0.2e1 - t592 / 0.2e1) * t626 + (-t595 / 0.2e1 + t693 / 0.2e1) * t623;
t647 = t11 * qJD(1) - t25 * qJD(2) + t286 * qJD(3);
t637 = -t601 + t651 * t941 + (t651 + t861) * t938 - t832 / 0.2e1 - t830 / 0.2e1 + t587 * t741;
t642 = t144 * t942 - t984 * t939 - t788 / 0.2e1 - t777 / 0.2e1;
t21 = t637 + t642;
t475 = mrSges(6,3) + 0.4e1 * (t940 + m(7) / 0.4e1) * t609 + t587;
t51 = -t664 * t576 + 0.2e1 * (t981 / 0.4e1 - t802 / 0.4e1 - t801 / 0.4e1) * m(7) + t655;
t646 = qJD(1) * t21 + qJD(2) * t51 + qJD(3) * t475;
t179 = m(6) * t887 + t668 * t944 - t885 * t970;
t73 = 0.2e1 * t650 + (m(6) + t970) * t909;
t72 = t648 - t653;
t65 = t649 - t656 + t960;
t49 = t675 * t938 + m(6) * t896 + m(7) * t911 + t961 * t941 + (-mrSges(6,1) - t664) * t576 - t655;
t43 = t635 + t638;
t30 = t652 * t665 + t947;
t29 = t652 * t664 + t829 * t870 + t831 * t874 - t659;
t26 = t459 * t869 + t458 * t875 + t692 * t886 + t473 * t743 + t785 * t880 - t838 / 0.2e1 + t667 * t578 - t657 - t661 + t666 + (-t694 / 0.4e1 - t592 / 0.4e1) * t796 + (t595 - t693) * t795 / 0.4e1 + t960 * t608;
t22 = t636 + t639;
t20 = t827 / 0.2e1 + mrSges(6,1) * t908 + t637 - t642;
t13 = mrSges(6,2) * t742 + t621 * t663 + t634 - t640;
t10 = t633 + t980;
t8 = -t823 / 0.2e1 + t824 / 0.2e1 + t821 / 0.2e1 - t820 / 0.2e1 + t631 - t641;
t6 = t632 + t643;
t1 = (t256 / 0.4e1 + t234 / 0.4e1 + t152 / 0.4e1 + t166 * t934 + mrSges(5,1) * t904 - t254 / 0.4e1 - t236 / 0.4e1 + (t846 / 0.4e1 + t841 / 0.4e1 - Ifges(6,6) / 0.4e1 - Ifges(5,4) / 0.4e1) * t652 + (t923 - t140 / 0.2e1) * mrSges(5,3) + (t925 + t923) * mrSges(6,1) + t660) * t578 + (-t759 * t961 + t982) * t652 + t630 + t721 * t961 + (-t130 / 0.4e1 + t253 / 0.4e1 + t235 / 0.4e1 - t255 / 0.4e1 - t237 / 0.4e1 + (t922 + t139 / 0.2e1) * mrSges(5,3) + (t922 + t924) * mrSges(6,1) + (-Ifges(7,3) / 0.4e1 - Ifges(6,2) / 0.4e1 - Ifges(5,1) / 0.4e1) * t652 + t958) * t576 + t564 * t921 - t453 * t565 / 0.2e1 + t978 + ((-Ifges(6,3) / 0.4e1 - Ifges(5,2) / 0.4e1) * t578 + t509 * t759 + t951 - t571 / 0.4e1 - t566 / 0.4e1) * t432;
t16 = [qJD(2) * t4 + qJD(3) * t3 + qJD(4) * t15 - qJD(5) * t17 + qJD(6) * t7, t1 * qJD(3) + t8 * qJD(4) + t13 * qJD(5) + t6 * qJD(6) + t828 + ((-t563 * mrSges(4,1) + t488 / 0.2e1 + t451 * mrSges(4,3) + pkin(9) * t548) * t627 + (t169 * mrSges(6,1) + mrSges(5,3) * t686 + t698) * t578 + 0.2e1 * (t181 * t961 + t509 * t686 + t516 * t613) * t943 + t961 * t469 - t961 * t467 + 0.2e1 * (-t168 * t961 + t169 * t509 + t273 * t464) * t941 + t696 + t613 * t344 - pkin(2) * t525 + t516 * t481 + t509 * t468 - t509 * t470 + t273 * t482 + t79 * t471 + t80 * t473 + t464 * t345 + t138 * t454 + t215 * t307 + t214 * t308 + t981 * t258 + 0.2e1 * (t138 * t981 + t214 * t79 + t215 * t80) * t938 + m(4) * (-pkin(2) * t563 + (-t450 * t624 + t451 * t627) * pkin(9)) + (t563 * mrSges(4,2) + t489 / 0.2e1 - t450 * mrSges(4,3) - pkin(9) * t549) * t624 + t697 * t520 + (t168 * mrSges(6,1) - t181 * mrSges(5,3) + t204 * t870 + t205 * t874 + t725) * t576 + ((Ifges(4,5) * t872 + Ifges(4,6) * t867 - t576 * t757 + t578 * t758 - Ifges(3,6)) * t625 + t654 * t628) * t621 + t602 + t483 * t894 + t485 * t895 + t357 * t905 + t355 * t906) * qJD(2), t1 * qJD(2) + t22 * qJD(4) + t20 * qJD(5) + t10 * qJD(6) + t833 + (t154 * t870 + t153 * t876 + t952 + t609 * t245 - t372 * mrSges(4,2) - t373 * mrSges(4,1) + t590 * t908 + (-mrSges(6,1) * t609 + t953) * t652 + (m(7) * t609 + t587) * t104 + (-m(7) * t984 + t777 + t788) * t608 + t983 * t432 + t976 * t145 + t977 * t144 + t984 * mrSges(7,3)) * qJD(3), qJD(2) * t8 + qJD(3) * t22 + qJD(5) * t73 + qJD(6) * t29 + t804, qJD(2) * t13 + qJD(3) * t20 + qJD(4) * t73 + qJD(6) * t30 - t803, t808 + t6 * qJD(2) + t10 * qJD(3) + t29 * qJD(4) + t30 * qJD(5) + (-mrSges(7,1) * t61 - mrSges(7,2) * t60 + t186) * qJD(6); qJD(3) * t2 + qJD(4) * t9 + qJD(5) * t14 + qJD(6) * t5 - t828, -qJD(3) * t12 + qJD(4) * t38 + qJD(5) * t50 + qJD(6) * t24, t43 * qJD(4) + t49 * qJD(5) + t26 * qJD(6) + t685 + (t356 * t876 + t358 * t870 - t410 * t587 + t953 * t578 + t590 * t890 + (-m(7) * t410 + t455 - t818) * t609 + (m(7) * t675 + t774 + t783) * t608 - t983 * t576 - t976 * t509 + t977 * t961 + (-mrSges(4,1) * t627 + mrSges(4,2) * t624) * pkin(9) - t675 * mrSges(7,3) + t990) * qJD(3), qJD(3) * t43 + qJD(5) * t179 + qJD(6) * t72 - t683, qJD(3) * t49 + qJD(4) * t179 + qJD(6) * t65 - t682, t26 * qJD(3) + t72 * qJD(4) + t65 * qJD(5) + (-mrSges(7,1) * t215 - mrSges(7,2) * t214 + t457) * qJD(6) + t684; -qJD(2) * t2 - qJD(4) * t19 + qJD(5) * t21 + qJD(6) * t11 - t833, qJD(4) * t42 + qJD(5) * t51 - qJD(6) * t25 - t685, qJD(5) * t475 + qJD(6) * t286, -t681, t646 (-t587 * t608 - t692) * qJD(6) + t647; -qJD(2) * t9 + qJD(3) * t19 + qJD(5) * t74 - qJD(6) * t27 - t804, -qJD(3) * t42 - qJD(5) * t178 - qJD(6) * t71 + t683, t681, 0, t671, qJD(6) * t585 - t680; -qJD(2) * t14 - qJD(3) * t21 - qJD(4) * t74 - qJD(6) * t28 + t803, -qJD(3) * t51 + qJD(4) * t178 - qJD(6) * t64 + t682, -t646, -t671, 0, -qJD(6) * t587 - t679; -qJD(2) * t5 - qJD(3) * t11 + qJD(4) * t27 + qJD(5) * t28 - t808, qJD(3) * t25 + qJD(4) * t71 + qJD(5) * t64 - t684, -t647, t680, t679, 0;];
Cq  = t16;
