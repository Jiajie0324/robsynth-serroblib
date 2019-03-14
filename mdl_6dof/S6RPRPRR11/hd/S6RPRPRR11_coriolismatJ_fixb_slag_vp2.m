% Calculate matrix of centrifugal and coriolis load on the joints for
% S6RPRPRR11
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
% Datum: 2019-03-09 04:17
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S6RPRPRR11_coriolismatJ_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(13,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRR11_coriolismatJ_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRR11_coriolismatJ_fixb_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6RPRPRR11_coriolismatJ_fixb_slag_vp2: pkin has to be [13x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRPRR11_coriolismatJ_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RPRPRR11_coriolismatJ_fixb_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RPRPRR11_coriolismatJ_fixb_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 04:11:46
% EndTime: 2019-03-09 04:12:22
% DurationCPUTime: 23.41s
% Computational Cost: add. (88544->1000), mult. (240743->1447), div. (0->0), fcn. (282568->14), ass. (0->562)
t568 = sin(qJ(3));
t565 = sin(pkin(7));
t771 = sin(pkin(6));
t772 = cos(pkin(12));
t635 = t772 * t771;
t773 = cos(pkin(7));
t774 = cos(pkin(6));
t588 = t774 * t565 + t773 * t635;
t564 = sin(pkin(12));
t659 = t564 * t771;
t839 = cos(qJ(3));
t484 = t568 * t588 + t659 * t839;
t563 = sin(pkin(13));
t566 = cos(pkin(13));
t587 = t565 * t635 - t773 * t774;
t413 = -t484 * t566 + t563 * t587;
t582 = t484 * t563 + t566 * t587;
t837 = sin(qJ(5));
t838 = cos(qJ(5));
t317 = t413 * t837 - t582 * t838;
t943 = -t317 / 0.2e1;
t942 = pkin(11) * t317;
t935 = -t413 * t838 - t582 * t837;
t886 = -t935 / 0.2e1;
t710 = 0.2e1 * t565;
t940 = m(5) / 0.2e1;
t636 = t773 * t771;
t622 = t564 * t636;
t597 = t839 * t622;
t623 = t568 * t635;
t512 = t623 + t597;
t939 = t512 / 0.2e1;
t715 = 2 * m(6);
t938 = t715 / 0.2e1;
t536 = -t563 * t838 - t566 * t837;
t569 = cos(qJ(6));
t780 = t569 * mrSges(7,2);
t567 = sin(qJ(6));
t783 = t567 * mrSges(7,1);
t542 = t780 + t783;
t467 = t542 * t536;
t785 = t536 * mrSges(6,3);
t937 = -t467 - t785;
t534 = t563 * t837 - t566 * t838;
t487 = mrSges(6,1) * t534 - mrSges(6,2) * t536;
t538 = -mrSges(5,1) * t566 + mrSges(5,2) * t563;
t936 = t487 + t538;
t926 = t563 ^ 2 + t566 ^ 2;
t934 = m(6) + m(5);
t483 = t568 * t659 - t588 * t839;
t378 = t536 * t483;
t933 = t378 / 0.2e1;
t932 = t587 / 0.2e1;
t931 = -t484 * Ifges(6,6) / 0.2e1;
t561 = t567 ^ 2;
t562 = t569 ^ 2;
t676 = -t562 / 0.2e1 - t561 / 0.2e1;
t638 = t676 * mrSges(7,3);
t351 = t483 * mrSges(5,1) + mrSges(5,3) * t413;
t930 = t563 * t351;
t714 = 2 * m(7);
t652 = t714 / 0.4e1;
t719 = t561 + t562;
t929 = pkin(11) * t652 * t719;
t782 = t567 * mrSges(7,3);
t707 = t536 * t782;
t477 = -mrSges(7,2) * t534 + t707;
t556 = -pkin(4) * t566 - pkin(3);
t472 = pkin(5) * t534 + pkin(11) * t536 + t556;
t827 = pkin(10) + qJ(4);
t539 = t827 * t566;
t666 = t827 * t563;
t495 = t539 * t838 - t666 * t837;
t385 = t567 * t472 + t495 * t569;
t833 = m(7) * t385;
t928 = t477 + t833;
t558 = Ifges(7,4) * t569;
t545 = Ifges(7,1) * t567 + t558;
t633 = Ifges(7,2) * t567 - t558;
t927 = t545 - t633;
t695 = pkin(1) * t774;
t720 = qJ(2) * t635 + t564 * t695;
t475 = pkin(9) * t588 + t720;
t639 = t565 * t659;
t511 = -pkin(1) * t771 - pkin(2) * t635 - pkin(9) * t639;
t552 = t772 * t695;
t485 = t774 * pkin(2) + t552 + (-pkin(9) * t636 - qJ(2) * t771) * t564;
t656 = t773 * t485;
t340 = t839 * t475 + (t511 * t565 + t656) * t568;
t557 = Ifges(7,5) * t569;
t813 = Ifges(7,6) * t567;
t632 = t813 - t557;
t403 = -t485 * t565 + t773 * t511;
t290 = pkin(3) * t483 - qJ(4) * t484 + t403;
t301 = -qJ(4) * t587 + t340;
t181 = t566 * t290 - t301 * t563;
t182 = t563 * t290 + t566 * t301;
t350 = -t483 * mrSges(5,2) - mrSges(5,3) * t582;
t711 = 0.2e1 * qJ(4);
t756 = t566 * t582;
t757 = t413 * t563;
t847 = t566 / 0.2e1;
t920 = m(5) / 0.4e1;
t925 = (-0.2e1 * t181 * t563 + 0.2e1 * t182 * t566 + (-t756 - t757) * t711) * t920 - t930 / 0.2e1 + t350 * t847 + (-t756 / 0.2e1 - t757 / 0.2e1) * mrSges(5,3);
t924 = -0.2e1 * pkin(3);
t737 = t565 * t568;
t523 = t563 * t773 + t566 * t737;
t658 = t566 * t773;
t602 = t563 * t737 - t658;
t444 = t523 * t838 - t602 * t837;
t923 = 0.2e1 * t444;
t922 = 0.2e1 * t523;
t919 = m(6) / 0.2e1;
t918 = m(6) / 0.4e1;
t917 = m(7) / 0.2e1;
t916 = m(7) / 0.4e1;
t915 = m(7) * pkin(5);
t914 = -mrSges(6,1) / 0.2e1;
t913 = -mrSges(7,2) / 0.2e1;
t912 = -mrSges(6,3) / 0.2e1;
t911 = -mrSges(7,3) / 0.2e1;
t202 = pkin(5) * t935 - t942;
t126 = pkin(4) * t483 + pkin(10) * t413 + t181;
t153 = -pkin(10) * t582 + t182;
t80 = t126 * t838 - t153 * t837;
t64 = t202 * t569 - t567 * t80;
t910 = t64 / 0.2e1;
t746 = t483 * t563;
t471 = pkin(4) * t746;
t282 = -t471 + t340;
t379 = t534 * t483;
t163 = t378 * pkin(5) - t379 * pkin(11) + t282;
t694 = t565 * t839;
t339 = -t568 * t475 + t511 * t694 + t656 * t839;
t394 = pkin(3) * t484 + qJ(4) * t483;
t237 = -t339 * t563 + t566 * t394;
t745 = t483 * t566;
t195 = pkin(4) * t484 + pkin(10) * t745 + t237;
t238 = t566 * t339 + t563 * t394;
t210 = pkin(10) * t746 + t238;
t94 = t837 * t195 + t838 * t210;
t88 = pkin(11) * t484 + t94;
t70 = t163 * t569 - t567 * t88;
t909 = t70 / 0.2e1;
t71 = t567 * t163 + t569 * t88;
t908 = -t71 / 0.2e1;
t907 = m(6) + m(7);
t906 = m(6) * t80;
t81 = t126 * t837 + t153 * t838;
t905 = m(6) * t81;
t303 = pkin(3) * t587 - t339;
t236 = pkin(4) * t582 + t303;
t109 = -pkin(5) * t317 - pkin(11) * t935 + t236;
t77 = t483 * pkin(11) + t81;
t53 = t109 * t569 - t567 * t77;
t904 = m(7) * t53;
t54 = t567 * t109 + t569 * t77;
t903 = m(7) * t54;
t902 = m(7) * t64;
t65 = t567 * t202 + t569 * t80;
t901 = m(7) * t65;
t76 = -t483 * pkin(5) - t80;
t900 = m(7) * t76;
t93 = t195 * t838 - t210 * t837;
t87 = -t484 * pkin(5) - t93;
t899 = pkin(5) * t87;
t259 = t483 * t569 - t567 * t935;
t260 = t483 * t567 + t569 * t935;
t147 = -mrSges(7,1) * t259 + mrSges(7,2) * t260;
t898 = t147 / 0.2e1;
t808 = t259 * mrSges(7,3);
t172 = mrSges(7,2) * t317 + t808;
t897 = -t172 / 0.2e1;
t807 = t260 * mrSges(7,3);
t173 = -mrSges(7,1) * t317 - t807;
t896 = t173 / 0.2e1;
t196 = -mrSges(7,2) * t935 - t317 * t782;
t895 = t196 / 0.2e1;
t328 = -t567 * t379 + t484 * t569;
t329 = t379 * t569 + t484 * t567;
t205 = -mrSges(7,1) * t328 + mrSges(7,2) * t329;
t894 = t205 / 0.2e1;
t893 = -Ifges(6,4) * t379 / 0.2e1 + Ifges(6,2) * t933 + t931;
t892 = t259 / 0.2e1;
t891 = t260 / 0.2e1;
t890 = t260 / 0.4e1;
t804 = t317 * mrSges(6,3);
t266 = -mrSges(6,2) * t483 + t804;
t889 = -t266 / 0.2e1;
t887 = -t317 / 0.4e1;
t885 = t935 / 0.2e1;
t883 = t328 / 0.2e1;
t882 = t329 / 0.2e1;
t513 = -t568 * t622 + t635 * t839;
t449 = -t563 * t513 + t566 * t639;
t450 = t566 * t513 + t563 * t639;
t362 = -t449 * t838 + t450 * t837;
t881 = -t362 / 0.2e1;
t880 = -t378 / 0.2e1;
t879 = t379 / 0.2e1;
t384 = t472 * t569 - t567 * t495;
t878 = t384 / 0.2e1;
t830 = pkin(5) * t536;
t492 = pkin(11) * t534 - t830;
t494 = t539 * t837 + t666 * t838;
t398 = t567 * t492 - t494 * t569;
t877 = t398 / 0.2e1;
t420 = -t567 * t444 - t569 * t694;
t876 = t420 / 0.2e1;
t421 = t444 * t569 - t567 * t694;
t875 = t421 / 0.2e1;
t443 = t523 * t837 + t602 * t838;
t874 = -t443 / 0.2e1;
t873 = t444 / 0.2e1;
t643 = t839 * t837;
t644 = t839 * t838;
t510 = (-t563 * t643 + t566 * t644) * t565;
t462 = -t567 * t510 + t569 * t737;
t872 = t462 / 0.2e1;
t541 = -mrSges(7,1) * t569 + t567 * mrSges(7,2);
t465 = t536 * t541;
t871 = t465 / 0.2e1;
t466 = t542 * t534;
t870 = -t466 / 0.2e1;
t869 = -t467 / 0.2e1;
t740 = t534 * t567;
t476 = mrSges(7,2) * t536 + mrSges(7,3) * t740;
t868 = t476 / 0.2e1;
t867 = -t477 / 0.2e1;
t866 = t477 / 0.2e1;
t739 = t534 * t569;
t478 = -t536 * mrSges(7,1) + mrSges(7,3) * t739;
t865 = t478 / 0.2e1;
t779 = t569 * mrSges(7,3);
t479 = t534 * mrSges(7,1) + t536 * t779;
t864 = -t479 / 0.2e1;
t863 = t484 / 0.2e1;
t862 = t494 / 0.2e1;
t861 = t495 / 0.2e1;
t509 = (t563 * t644 + t566 * t643) * t565;
t860 = -t509 / 0.2e1;
t858 = -t534 / 0.2e1;
t857 = t534 / 0.4e1;
t856 = -t536 / 0.2e1;
t855 = -t541 / 0.2e1;
t854 = t541 / 0.2e1;
t853 = -t542 / 0.2e1;
t852 = t542 / 0.2e1;
t820 = Ifges(7,4) * t567;
t544 = Ifges(7,2) * t569 + t820;
t851 = t544 / 0.2e1;
t850 = -t545 / 0.2e1;
t849 = -t545 / 0.4e1;
t848 = t563 / 0.2e1;
t846 = -t567 / 0.2e1;
t845 = t567 / 0.2e1;
t844 = t567 / 0.4e1;
t843 = -t569 / 0.2e1;
t842 = -t569 / 0.4e1;
t841 = t569 / 0.2e1;
t840 = t569 / 0.4e1;
t836 = m(6) * t444;
t835 = m(6) * t495;
t834 = m(7) * t384;
t832 = pkin(5) * t362;
t831 = pkin(5) * t509;
t228 = -mrSges(7,2) * t378 + mrSges(7,3) * t328;
t829 = pkin(11) * t228;
t828 = pkin(11) * t567;
t825 = Ifges(5,4) * t563;
t824 = Ifges(5,4) * t566;
t823 = Ifges(6,4) * t935;
t822 = Ifges(6,4) * t536;
t821 = Ifges(7,4) * t260;
t819 = Ifges(6,5) * t379;
t818 = Ifges(7,5) * t329;
t817 = Ifges(7,5) * t534;
t480 = Ifges(4,6) * t484;
t815 = Ifges(7,6) * t328;
t814 = Ifges(7,6) * t534;
t812 = Ifges(6,3) * t484;
t811 = Ifges(7,3) * t935;
t810 = Ifges(7,3) * t378;
t809 = Ifges(7,3) * t536;
t107 = Ifges(7,2) * t259 - Ifges(7,6) * t317 + t821;
t258 = Ifges(7,4) * t259;
t108 = Ifges(7,1) * t260 - Ifges(7,5) * t317 + t258;
t156 = t810 + t815 + t818;
t157 = Ifges(7,4) * t329 + Ifges(7,2) * t328 + Ifges(7,6) * t378;
t158 = Ifges(7,1) * t329 + Ifges(7,4) * t328 + Ifges(7,5) * t378;
t311 = Ifges(6,4) * t317;
t177 = Ifges(6,1) * t935 + t483 * Ifges(6,5) + t311;
t199 = -mrSges(6,1) * t317 + mrSges(6,2) * t935;
t790 = t484 * Ifges(6,5);
t231 = Ifges(6,1) * t379 - Ifges(6,4) * t378 + t790;
t799 = t379 * mrSges(6,2);
t800 = t378 * mrSges(6,1);
t265 = t799 + t800;
t802 = t935 * mrSges(6,3);
t267 = mrSges(6,1) * t483 - t802;
t333 = -mrSges(6,2) * t484 - mrSges(6,3) * t378;
t337 = t484 * Ifges(5,6) + (t563 * Ifges(5,2) - t824) * t483;
t338 = t484 * Ifges(5,5) + (-t566 * Ifges(5,1) + t825) * t483;
t380 = (-mrSges(5,1) * t563 - mrSges(5,2) * t566) * t483;
t395 = mrSges(4,1) * t484 - mrSges(4,2) * t483;
t792 = t483 * mrSges(4,3);
t423 = mrSges(4,2) * t587 - t792;
t324 = mrSges(5,1) * t582 - mrSges(5,2) * t413;
t791 = t484 * mrSges(4,3);
t424 = -mrSges(4,1) * t587 - t791;
t640 = m(5) * t303 + t324 - t424;
t388 = -mrSges(5,2) * t484 + mrSges(5,3) * t746;
t662 = m(5) * t238 + t388;
t389 = mrSges(5,1) * t484 + mrSges(5,3) * t745;
t663 = m(5) * t237 + t389;
t229 = mrSges(7,1) * t378 - mrSges(7,3) * t329;
t667 = m(7) * t70 + t229;
t668 = m(7) * t87 + t205;
t334 = mrSges(6,1) * t484 - mrSges(6,3) * t379;
t673 = m(6) * t93 + t334;
t106 = Ifges(7,5) * t260 + Ifges(7,6) * t259 - Ifges(7,3) * t317;
t176 = Ifges(6,2) * t317 + t483 * Ifges(6,6) + t823;
t681 = t106 / 0.2e1 - t176 / 0.2e1;
t703 = Ifges(6,6) * t880;
t722 = -Ifges(4,5) * t483 - t480;
t3 = t480 * t932 - t582 * t337 / 0.2e1 + t339 * t423 + t403 * t395 + t303 * t380 + t238 * t350 + t237 * t351 + t282 * t199 + t94 * t266 + t93 * t267 + t71 * t172 + t70 * t173 + t87 * t147 + (-Ifges(5,5) * t413 + Ifges(6,5) * t935 - Ifges(5,6) * t582 + Ifges(6,6) * t317) * t863 - t317 * t893 - t413 * t338 / 0.2e1 + (-t566 * (-Ifges(5,1) * t413 - Ifges(5,4) * t582) / 0.2e1 + (-Ifges(5,4) * t413 - Ifges(5,2) * t582) * t848 + Ifges(4,5) * t932 + t819 / 0.2e1 + t703 + t812 + t339 * mrSges(4,3) + (-Ifges(5,5) * t566 + t563 * Ifges(5,6) + Ifges(4,4)) * t483 + (Ifges(5,3) - Ifges(4,1) + Ifges(4,2)) * t484) * t483 + t108 * t882 + t107 * t883 + t231 * t885 + t158 * t891 + t157 * t892 + t177 * t879 + (t640 - t791) * t340 - t587 * t722 / 0.2e1 + (m(6) * t94 + t333) * t81 + (m(7) * t71 + t228) * t54 + t681 * t378 + t668 * t76 + t673 * t80 + t662 * t182 + t663 * t181 + t667 * t53 - t484 ^ 2 * Ifges(4,4) + t156 * t943 + (m(6) * t282 + t265) * t236;
t806 = t3 * qJD(1);
t805 = t317 * mrSges(6,2);
t803 = t935 * mrSges(6,1);
t363 = t449 * t837 + t450 * t838;
t801 = t363 * mrSges(6,2);
t798 = t384 * t64;
t797 = t385 * mrSges(7,3);
t796 = t385 * t65;
t397 = t492 * t569 + t567 * t494;
t795 = t397 * t53;
t794 = t398 * t54;
t116 = -t317 * t632 + t811;
t117 = Ifges(7,6) * t935 - t317 * t633;
t634 = Ifges(7,1) * t569 - t820;
t118 = Ifges(7,5) * t935 + t317 * t634;
t194 = t542 * t317;
t198 = t803 + t805;
t200 = -Ifges(6,2) * t935 + t311;
t201 = Ifges(6,1) * t317 - t823;
t645 = t147 - t267 + t900;
t197 = mrSges(7,1) * t935 - t317 * t779;
t669 = t197 + t902;
t670 = t196 + t901;
t723 = Ifges(6,5) * t317 - Ifges(6,6) * t935;
t729 = t569 * t108;
t735 = t567 * t107;
t4 = t76 * t194 + t65 * t172 + t64 * t173 + t118 * t891 + t117 * t892 + t236 * t198 + t483 * t723 / 0.2e1 + t80 * t266 + t670 * t54 + t669 * t53 + t645 * t81 + (t201 / 0.2e1 - t81 * mrSges(6,3) + t681) * t935 - (t116 / 0.2e1 - t200 / 0.2e1 - t177 / 0.2e1 - t729 / 0.2e1 + t735 / 0.2e1 + t80 * mrSges(6,3)) * t317;
t793 = t4 * qJD(1);
t788 = t510 * mrSges(6,2);
t787 = t53 * t567;
t786 = t534 * mrSges(6,3);
t784 = t54 * t569;
t781 = t567 * t65;
t778 = t569 * t64;
t777 = t70 * t567;
t776 = t71 * t569;
t146 = mrSges(7,1) * t260 + mrSges(7,2) * t259;
t148 = Ifges(7,5) * t259 - Ifges(7,6) * t260;
t149 = -Ifges(7,2) * t260 + t258;
t150 = Ifges(7,1) * t259 - t821;
t9 = t76 * t146 + t53 * t172 - t54 * t173 + t148 * t943 + (-t54 * mrSges(7,3) + t150 / 0.2e1 - t107 / 0.2e1) * t260 + (-t53 * mrSges(7,3) + t108 / 0.2e1 + t149 / 0.2e1) * t259;
t775 = t9 * qJD(1);
t606 = t645 - t906;
t664 = m(5) * t182 + t350;
t665 = m(5) * t181 + t351;
t671 = t173 + t904;
t672 = t172 + t903;
t674 = t266 + t905;
t17 = -t664 * t582 + t665 * t413 + t606 * t935 + (-t567 * t671 + t569 * t672 + t674) * t317;
t770 = qJD(1) * t17;
t583 = -t623 / 0.2e1 - t597 / 0.2e1;
t593 = t602 * t413;
t752 = t421 * t569;
t754 = t420 * t567;
t612 = t754 / 0.2e1 - t752 / 0.2e1;
t751 = t443 * t935;
t688 = t751 / 0.2e1;
t326 = -t567 * t363 + t512 * t569;
t727 = t569 * t326;
t327 = t363 * t569 + t567 * t512;
t734 = t567 * t327;
t741 = t523 * t582;
t43 = (t688 - t727 / 0.2e1 - t734 / 0.2e1 - t612 * t317) * m(7) + (t317 * t873 + t583 + t688) * m(6) + (-t741 / 0.2e1 - t593 / 0.2e1 + t583) * m(5);
t769 = qJD(1) * t43;
t16 = (m(4) * t340 + t423) * t513 + t664 * t450 + t674 * t363 + t672 * t327 + t665 * t449 + t671 * t326 + (-t774 * mrSges(3,1) - m(3) * t552 + (m(4) * t403 + mrSges(4,1) * t483 + mrSges(4,2) * t484) * t565 + (m(3) * qJ(2) + mrSges(3,3)) * t659) * t659 + t606 * t362 + (-m(4) * t339 + m(6) * t236 + t199 + t640) * t512 + (m(3) * t720 - mrSges(3,2) * t774 + mrSges(3,3) * t635) * t635;
t768 = t16 * qJD(1);
t590 = t146 * t874 + t173 * t875 + t420 * t897;
t620 = t326 * mrSges(7,1) / 0.2e1 + t327 * t913;
t753 = t421 * t260;
t755 = t420 * t259;
t18 = (t753 / 0.2e1 + t755 / 0.2e1) * mrSges(7,3) + t590 + t620;
t767 = t18 * qJD(1);
t766 = t326 * t567;
t765 = t327 * t569;
t764 = t362 * t443;
t763 = t362 * t494;
t762 = t384 * t567;
t761 = t385 * t569;
t760 = t397 * t420;
t759 = t397 * t569;
t758 = t398 * t421;
t750 = t449 * t563;
t749 = t450 * t566;
t748 = t462 * t567;
t463 = t510 * t569 + t567 * t737;
t747 = t463 * t569;
t744 = t494 * t935;
t743 = t494 * t444;
t742 = t494 * t509;
t738 = t536 * t443;
t736 = t566 * t523;
t733 = t567 * t398;
t430 = t536 * t633 + t814;
t732 = t567 * t430;
t731 = t567 * t463;
t730 = t567 * t479;
t728 = t569 * t173;
t432 = -t536 * t634 + t817;
t726 = t569 * t432;
t725 = t569 * t462;
t724 = t569 * t477;
t721 = -Ifges(6,5) * t534 + Ifges(6,6) * t536;
t718 = qJD(5) * t567;
t717 = qJD(5) * t569;
t713 = 0.2e1 * pkin(11);
t709 = t917 + t919;
t708 = t900 / 0.2e1;
t706 = -t828 / 0.2e1;
t704 = -t557 / 0.2e1;
t702 = t808 / 0.2e1;
t701 = mrSges(6,3) * t886;
t700 = mrSges(6,3) * t943;
t699 = -t782 / 0.2e1;
t698 = -t779 / 0.2e1;
t697 = t779 / 0.2e1;
t696 = t855 + mrSges(6,1) / 0.2e1;
t693 = t566 * t839;
t691 = t839 * t512;
t687 = -t745 / 0.2e1;
t686 = t740 / 0.2e1;
t685 = -t739 / 0.2e1;
t684 = -t738 / 0.2e1;
t683 = -t737 / 0.2e1;
t682 = t737 / 0.2e1;
t680 = t898 - t267 / 0.2e1;
t679 = t889 + t194 / 0.2e1;
t469 = t545 * t536;
t678 = -t430 / 0.4e1 + t469 / 0.4e1;
t468 = t544 * t536;
t677 = t432 / 0.4e1 + t468 / 0.4e1;
t661 = m(7) * t397 + t478;
t660 = m(7) * t398 + t476;
t654 = -t714 / 0.4e1;
t653 = t714 / 0.2e1;
t651 = 0.4e1 * t916;
t646 = t915 / 0.2e1 + t855;
t642 = -t694 / 0.2e1;
t637 = t534 * t676;
t543 = Ifges(7,5) * t567 + Ifges(7,6) * t569;
t631 = -t784 + t787;
t540 = -0.4e1 * t565 ^ 2 * t839 * t568;
t594 = t563 * t602;
t100 = (t420 * t462 + t421 * t463) * t651 + (0.4e1 * t444 * t510 + t540) * t918 + (0.4e1 * t523 * t565 * t693 + 0.4e1 * t594 * t694 + t540) * t920 + t907 * t509 * t443;
t570 = (t420 * t70 + t421 * t71 + t443 * t87 + t462 * t53 + t463 * t54 + t509 * t76) * t652 - t602 * t389 / 0.2e1 + t523 * t388 / 0.2e1 + t510 * t266 / 0.2e1 + t463 * t172 / 0.2e1 + (-0.2e1 * t443 * t93 + t94 * t923 - 0.2e1 * t509 * t80 + 0.2e1 * t510 * t81 + (t236 * t568 - t282 * t839) * t710) * t918 + (0.2e1 * t237 * t658 + t238 * t922 + (t182 * t693 - t839 * t340 + t568 * t303 + (-t181 * t839 - t237 * t568) * t563) * t710) * t920 + t443 * t894 + t509 * t898 + t173 * t872 + t333 * t873 + t334 * t874 + t228 * t875 + t229 * t876 + t267 * t860 + t773 * t395 / 0.2e1 + (t424 + t791) * t683 + (t324 + t199) * t682 + (t265 + t380 + t930) * t642 + (t566 * t350 + t423 + t792) * t694 / 0.2e1;
t572 = -m(5) * (t512 * t924 + (t749 - t750) * t711) / 0.4e1 + t326 * t864 + t327 * t867 - t467 * t881 + mrSges(4,1) * t939 + t513 * mrSges(4,2) / 0.2e1 - (t363 * t495 + t512 * t556 + t763) * t715 / 0.4e1 + (t326 * t384 + t327 * t385 + t763) * t654 + t362 * t785 / 0.2e1 + t363 * t786 / 0.2e1 - t936 * t512 / 0.2e1 + (t750 / 0.2e1 - t749 / 0.2e1) * mrSges(5,3);
t8 = t570 + t572;
t630 = t8 * qJD(1) + t100 * qJD(2);
t629 = t761 - t762;
t628 = -t752 + t754;
t105 = (t444 + t628) * t443 * t651;
t609 = t172 * t841 + t173 * t846;
t576 = ((t631 + t81) * t652 + t804 / 0.2e1 - t609 + t679) * t443 + t198 * t642;
t613 = t766 / 0.2e1 - t765 / 0.2e1;
t614 = -t802 / 0.2e1 + t680;
t11 = t196 * t875 + t197 * t876 + t801 / 0.2e1 + t696 * t362 + t613 * mrSges(7,3) + t614 * t444 + (t64 * t876 + t65 * t875 + t76 * t873 + t832 / 0.2e1 + t613 * pkin(11)) * m(7) + t576;
t627 = t11 * qJD(1) + t105 * qJD(2);
t525 = t534 * mrSges(6,2);
t608 = t476 * t845 + t478 * t841;
t121 = t525 + (t855 + mrSges(6,1)) * t536 + mrSges(7,3) * t637 + (t830 / 0.2e1 - t759 / 0.2e1 - t733 / 0.2e1 + pkin(11) * t637) * m(7) - t608;
t591 = -t805 / 0.2e1 + t196 * t846 + t197 * t843;
t605 = -mrSges(6,2) / 0.2e1 - t638;
t25 = t935 * t854 + 0.2e1 * t886 * mrSges(6,1) + t605 * t317 + (pkin(5) * t886 - t781 / 0.2e1 - t778 / 0.2e1 - t676 * t942) * m(7) + t591;
t626 = qJD(1) * t25 + qJD(3) * t121;
t617 = t780 / 0.2e1 + t783 / 0.2e1;
t603 = t617 * t534;
t607 = t730 / 0.2e1 - t724 / 0.2e1;
t179 = t603 + t607;
t28 = (mrSges(7,2) * t943 + t702 + t897) * t569 + (mrSges(7,1) * t943 + t807 / 0.2e1 + t896) * t567;
t625 = t28 * qJD(1) + t179 * qJD(3);
t624 = qJD(5) * (-mrSges(6,1) + t541 - t915);
t621 = t708 + t680;
t619 = -t397 * mrSges(7,1) / 0.2e1 + mrSges(7,2) * t877;
t618 = mrSges(7,1) * t872 + t463 * t913;
t616 = pkin(11) * t867 + t678;
t615 = pkin(11) * t864 + t677;
t611 = -t747 / 0.2e1 + t748 / 0.2e1;
t610 = t735 / 0.4e1 - t729 / 0.4e1;
t427 = t534 * t632 - t809;
t428 = Ifges(7,3) * t534 + t536 * t632;
t429 = -Ifges(7,6) * t536 + t534 * t633;
t431 = -Ifges(7,5) * t536 - t534 * t634;
t486 = -t536 * mrSges(6,1) - t525;
t528 = Ifges(6,4) * t534;
t488 = Ifges(6,2) * t536 - t528;
t489 = -Ifges(6,2) * t534 - t822;
t490 = -Ifges(6,1) * t534 + t822;
t491 = -Ifges(6,1) * t536 - t528;
t571 = (-t489 / 0.4e1 + t490 / 0.4e1 + t428 / 0.4e1 + t495 * t912) * t935 + (-t200 / 0.4e1 - t177 / 0.4e1 + t116 / 0.4e1 + t610) * t534 + (-t201 / 0.4e1 - t106 / 0.4e1 + t176 / 0.4e1 + t118 * t842 + t117 * t844) * t536 - (-t488 / 0.4e1 - t491 / 0.4e1 + t427 / 0.4e1 - t726 / 0.4e1 + t732 / 0.4e1 + t494 * t912) * t317 + t236 * t486 / 0.2e1 + t259 * t429 / 0.4e1 + t431 * t890 + t197 * t878 + t385 * t895 + t397 * t896 + t172 * t877 + t483 * t721 / 0.4e1 + t53 * t865 + t54 * t868 + t556 * t198 / 0.2e1 + t479 * t910 + t65 * t866 + t76 * t870 + t81 * t869;
t578 = -t819 / 0.2e1 - t812 / 0.2e1 + pkin(5) * t894 - t328 * t544 / 0.4e1 + t329 * t849 + t87 * t855 + t93 * t914 + t94 * mrSges(6,2) / 0.2e1;
t1 = t680 * t495 + (-t157 / 0.4e1 - t829 / 0.2e1 + mrSges(7,3) * t908) * t569 + (-t158 / 0.4e1 + pkin(11) * t229 / 0.2e1 + mrSges(7,3) * t909) * t567 + t679 * t494 + t571 + (t899 / 0.2e1 + t798 / 0.2e1 + t796 / 0.2e1 + t795 / 0.2e1 + t794 / 0.2e1 + t81 * t862 + t76 * t861 + (-t776 / 0.2e1 + t777 / 0.2e1) * pkin(11)) * m(7) + (-t543 / 0.4e1 + Ifges(6,6) / 0.2e1) * t378 + t578;
t585 = t420 * t865 + t421 * t868 + t444 * t869 + t486 * t642;
t599 = t870 + t607;
t38 = t788 / 0.2e1 + t696 * t509 + t611 * mrSges(7,3) + t599 * t443 + (t760 / 0.2e1 + t758 / 0.2e1 + t743 / 0.2e1 + t831 / 0.2e1 + t611 * pkin(11) + (t762 / 0.2e1 - t761 / 0.2e1 + t861) * t443) * m(7) + t585;
t39 = t397 * t479 + t398 * t477 - t495 * t467 + t556 * t486 + (m(7) * t495 - t466) * t494 + t660 * t385 + t661 * t384 + (t431 * t843 + t429 * t845 - t428 / 0.2e1 + t489 / 0.2e1 - t490 / 0.2e1) * t536 + (-t726 / 0.2e1 + t732 / 0.2e1 + t427 / 0.2e1 - t488 / 0.2e1 - t491 / 0.2e1) * t534;
t601 = t1 * qJD(1) + t38 * qJD(2) + t39 * qJD(3);
t55 = t385 * t479 - t494 * t465 + ((-t432 / 0.2e1 - t468 / 0.2e1 - t817 / 0.2e1) * t567 + (t469 / 0.2e1 - t430 / 0.2e1 - t814 / 0.2e1 - t797) * t569) * t536 + (-t477 + t707) * t384;
t580 = -mrSges(7,3) * t536 * t612 + t420 * t866 + t421 * t864 + t443 * t871;
t58 = t580 - t618;
t573 = (t384 * t911 + t677) * t259 + (-t797 / 0.2e1 + t678) * t260 + (t543 * t887 + t150 * t842 + t107 * t840 + (-t787 / 0.2e1 + t784 / 0.2e1) * mrSges(7,3) + (t149 + t108) * t844) * t536 + t172 * t878 - t385 * t173 / 0.2e1 + t146 * t862 + t53 * t866 + t148 * t857 + t54 * t864 + t76 * t871;
t584 = t818 / 0.2e1 + t815 / 0.2e1 + t810 / 0.2e1 + mrSges(7,1) * t909 + mrSges(7,2) * t908;
t6 = t573 - t584;
t600 = t6 * qJD(1) + t58 * qJD(2) - t55 * qJD(3);
t102 = (t444 * t858 + t683 + t684) * m(6) + (t736 / 0.2e1 + t594 / 0.2e1 + t683) * m(5) + (t684 - t725 / 0.2e1 - t731 / 0.2e1 + t612 * t534) * m(7);
t586 = 0.2e1 * t340;
t574 = t586 * t920 + (-0.2e1 * t471 + t586) * t918 + t800 / 0.2e1 + t799 / 0.2e1 + t228 * t845 + t229 * t841 + (t567 * t71 + t569 * t70) * t652 - mrSges(5,1) * t746 / 0.2e1 + mrSges(5,2) * t687;
t15 = (t317 * t495 - t534 * t81 + t536 * t80 + t744) * t715 / 0.4e1 - t574 + t147 * t856 + t536 * t267 / 0.2e1 + t266 * t858 + t935 * t869 + t317 * t724 / 0.2e1 + t172 * t685 + t730 * t943 + t173 * t686 + t536 * t701 + t534 * t700 + t925 + 0.2e1 * (t317 * t629 + t534 * t631 - t536 * t76 + t744) * t916;
t84 = (-t494 * t907 - t937) * t536 + (-t835 + t786 - t928 * t569 + (t479 + t834) * t567) * t534 + t926 * (m(5) * qJ(4) + mrSges(5,3));
t598 = -qJD(1) * t15 - qJD(2) * t102 - qJD(3) * t84;
t595 = t811 / 0.2e1 + mrSges(7,1) * t910 + t65 * t913;
t592 = -pkin(5) * t465 / 0.2e1 + t494 * t852 + t557 * t857;
t113 = (t853 + t617) * t443;
t575 = pkin(5) * t146 / 0.2e1 + t544 * t890 - t260 * t634 / 0.4e1 - t567 * t150 / 0.4e1 + t149 * t842 + t76 * t853 + t610 + (t849 + t633 / 0.4e1) * t259;
t12 = t575 + (t172 * t845 + t728 / 0.2e1 + (t259 * t846 + t260 * t841) * mrSges(7,3)) * pkin(11) - (t704 + 0.3e1 / 0.4e1 * t813 - t557 / 0.4e1) * t317 + t595;
t396 = pkin(5) * t542 + t544 * t845 + t634 * t846 + t843 * t927;
t577 = -pkin(11) * t638 + t544 * t840 + t634 * t842 + t844 * t927;
t57 = (t817 / 0.2e1 + t615) * t569 + (-0.3e1 / 0.4e1 * t814 + t616) * t567 + (Ifges(7,3) / 0.2e1 + t577) * t536 + t592 + t619;
t589 = t12 * qJD(1) + t113 * qJD(2) - t57 * qJD(3) + t396 * qJD(5);
t493 = -0.2e1 * t565 * t691;
t180 = t603 - t607;
t137 = (t733 + t759) * t652 + t646 * t536 + (-t929 + t638) * t534 + t608;
t114 = (t617 + t852) * t443;
t101 = (t594 + t736) * t940 + (t725 + t731) * t652 - t709 * t738 + (t628 * t652 - t836 / 0.2e1) * t534 + t934 * t682;
t59 = t580 + t618;
t56 = Ifges(7,5) * t685 + Ifges(7,6) * t686 - t809 / 0.2e1 + (-t814 / 0.4e1 + t616) * t567 + t615 * t569 + t577 * t536 + t592 - t619;
t42 = (-t593 - t741) * t940 + (t727 + t734) * t652 + t709 * t751 + (t628 * t654 + t836 / 0.2e1) * t317 + t934 * t939;
t37 = (t743 + t758 + t760) * t652 + t463 * t697 + t462 * t699 + (-0.2e1 * t831 + (t747 - t748) * t713) * t916 + t509 * t854 - t788 / 0.2e1 + mrSges(6,1) * t860 + ((t495 - t629) * t652 + t599) * t443 + t585;
t29 = t259 * t698 + t260 * t699 - t317 * t617 + t609;
t26 = (t778 + t781) * t652 + t803 / 0.2e1 + (t914 - t646) * t935 + (t605 + t929) * t317 - t591;
t19 = -t590 + t620 + (t753 + t755) * t911;
t14 = t574 + (-t905 / 0.2e1 + t889 + t700 + (-t903 / 0.2e1 + t897) * t569 + (t904 / 0.2e1 + t896) * t567) * t534 + (t494 * t709 + t869) * t935 + (t835 / 0.2e1 + (t833 / 0.2e1 + t866) * t569 + (-t834 / 0.2e1 + t864) * t567) * t317 + (t906 / 0.2e1 + t701 - t621) * t536 + t925;
t13 = -t575 - t632 * t887 + t702 * t828 + t172 * t706 - (t704 + t813 / 0.2e1) * t317 + t595 + (t260 * t698 - t728 / 0.2e1) * pkin(11);
t10 = (-0.2e1 * t832 + (t765 - t766) * t713) * t916 + t362 * t854 + t326 * t699 + t327 * t697 + mrSges(6,1) * t881 - t801 / 0.2e1 + (t901 / 0.2e1 + t895) * t421 + (t902 / 0.2e1 + t197 / 0.2e1) * t420 + (t708 + t614) * t444 + t576;
t7 = t570 - t572;
t5 = t573 + t584;
t2 = (t794 + t795 + t796 + t798) * t652 + t571 + t157 * t840 + t158 * t844 + t378 * t543 / 0.4e1 + t703 + t621 * t495 + t829 * t841 + t71 * t697 + t229 * t706 + t70 * t699 + (t81 * t917 + t679) * t494 + (-0.2e1 * t899 + (t776 - t777) * t713) * t916 - t578;
t20 = [qJD(2) * t16 + qJD(3) * t3 + qJD(4) * t17 + qJD(5) * t4 + qJD(6) * t9, t768 + ((t326 * t420 + t327 * t421 + t764) * t653 + (t363 * t923 + t493 + 0.2e1 * t764) * t919 + (-0.2e1 * t449 * t602 + t450 * t922 + t493) * t940 + m(4) * (t513 * t568 + t622 - t691) * t710 / 0.2e1) * qJD(2) + t7 * qJD(3) + t42 * qJD(4) + t10 * qJD(5) + t19 * qJD(6), t7 * qJD(2) + t14 * qJD(4) + t2 * qJD(5) + t5 * qJD(6) + t806 + (t428 * t933 + (-t237 * t563 + t238 * t566) * mrSges(5,3) + (-t790 / 0.2e1 - t231 / 0.2e1 + t158 * t843 + t157 * t845 + t93 * mrSges(6,3)) * t536 + (-m(5) * pkin(3) - mrSges(4,1) + t538) * t340 + t667 * t384 + (t668 - t673) * t494 + (-t563 * t663 + t566 * t662) * qJ(4) + t556 * t265 + t495 * t333 + t70 * t479 - t87 * t467 + t385 * t228 - pkin(3) * t380 - t339 * mrSges(4,2) + t430 * t883 + (Ifges(5,1) * t563 + t824) * t687 + (Ifges(5,2) * t566 + t825) * t746 / 0.2e1 + t491 * t879 + t489 * t880 + t432 * t882 + (Ifges(5,5) * t563 + Ifges(5,6) * t566) * t863 + t928 * t71 + t337 * t847 + t338 * t848 + (m(6) * t556 + t487) * t282 + t722 + t94 * t835 + (t931 + t893 + t156 / 0.2e1 - t94 * mrSges(6,3)) * t534) * qJD(3), qJD(2) * t42 + qJD(3) * t14 + qJD(5) * t26 + qJD(6) * t29 + t770, t793 + t10 * qJD(2) + t2 * qJD(3) + t26 * qJD(4) + (-t80 * mrSges(6,2) - pkin(5) * t194 + t543 * t885 + t723) * qJD(5) + t13 * qJD(6) + t81 * t624 + (t117 / 0.2e1 - t317 * t850 + t65 * mrSges(7,3) + t670 * pkin(11)) * t717 + (t118 / 0.2e1 - t317 * t851 - t64 * mrSges(7,3) - t669 * pkin(11)) * t718, t775 + t19 * qJD(2) + t5 * qJD(3) + t29 * qJD(4) + t13 * qJD(5) + (-mrSges(7,1) * t54 - mrSges(7,2) * t53 + t148) * qJD(6); qJD(3) * t8 + qJD(4) * t43 + qJD(5) * t11 - qJD(6) * t18 - t768, t100 * qJD(3) + t105 * qJD(5) (t463 * t477 + t462 * t479 + (t384 * t462 + t385 * t463 + t742) * t653 + (t495 * t510 + t742) * t938 - t510 * t786 + (t711 * t839 * t926 + t568 * t924) * t565 * t940 + (t556 * t938 - mrSges(4,1) + t936) * t737 + t937 * t509 + (mrSges(5,3) * t926 - mrSges(4,2)) * t694) * qJD(3) + t101 * qJD(4) + t37 * qJD(5) + t59 * qJD(6) + t630, qJD(3) * t101 + t769, t37 * qJD(3) + t114 * qJD(6) + t444 * t624 + (mrSges(6,2) + t719 * (-m(7) * pkin(11) - mrSges(7,3))) * qJD(5) * t443 + t627, -t767 + t59 * qJD(3) + t114 * qJD(5) + (-mrSges(7,1) * t421 - mrSges(7,2) * t420) * qJD(6); -qJD(2) * t8 + qJD(4) * t15 + qJD(5) * t1 + qJD(6) * t6 - t806, qJD(4) * t102 + qJD(5) * t38 + qJD(6) * t58 - t630, qJD(4) * t84 + qJD(5) * t39 - qJD(6) * t55, qJD(5) * t137 + qJD(6) * t180 - t598, t137 * qJD(4) + (t494 * mrSges(6,2) + pkin(5) * t466 + t543 * t856 + t721) * qJD(5) + t56 * qJD(6) + t495 * t624 + (t398 * mrSges(7,3) + t429 / 0.2e1 + t534 * t850 + t660 * pkin(11)) * t717 + (-t397 * mrSges(7,3) + t431 / 0.2e1 + t534 * t851 - t661 * pkin(11)) * t718 + t601, t180 * qJD(4) + t56 * qJD(5) + (-t385 * mrSges(7,1) - t384 * mrSges(7,2) + t536 * t543) * qJD(6) + t600; -qJD(2) * t43 - qJD(3) * t15 - qJD(5) * t25 - qJD(6) * t28 - t770, -qJD(3) * t102 - t769, -qJD(5) * t121 - qJD(6) * t179 + t598, 0, -t626, -t542 * qJD(6) - t625; -qJD(2) * t11 - qJD(3) * t1 + qJD(4) * t25 - qJD(6) * t12 - t793, -qJD(3) * t38 - qJD(6) * t113 - t627, qJD(4) * t121 + qJD(6) * t57 - t601, t626, -t396 * qJD(6) (pkin(11) * t541 - t632) * qJD(6) - t589; qJD(2) * t18 - qJD(3) * t6 + qJD(4) * t28 + qJD(5) * t12 - t775, -t58 * qJD(3) + t113 * qJD(5) + t767, qJD(4) * t179 - qJD(5) * t57 - t600, t625, t589, 0;];
Cq  = t20;