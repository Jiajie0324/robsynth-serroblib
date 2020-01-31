% Calculate vector of centrifugal and Coriolis load on the joints for
% S5RRPRP8
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d4]';
% m_mdh [6x1]
%   mass of all robot links (including the base)
% rSges [6x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% Icges [6x6]
%   inertia of all robot links about their respective center of mass, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertiavector2matrix.m)
% 
% Output:
% tauc [5x1]
%   joint torques required to compensate Coriolis and centrifugal load

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 20:04
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S5RRPRP8_coriolisvecJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(7,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRP8_coriolisvecJ_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPRP8_coriolisvecJ_fixb_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S5RRPRP8_coriolisvecJ_fixb_slag_vp1: pkin has to be [7x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRPRP8_coriolisvecJ_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RRPRP8_coriolisvecJ_fixb_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RRPRP8_coriolisvecJ_fixb_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 20:03:21
% EndTime: 2019-12-31 20:04:13
% DurationCPUTime: 44.52s
% Computational Cost: add. (13195->850), mult. (35073->1048), div. (0->0), fcn. (32969->6), ass. (0->424)
t977 = Icges(5,4) + Icges(6,4);
t938 = Icges(5,1) + Icges(6,1);
t976 = Icges(5,5) + Icges(6,5);
t960 = Icges(5,2) + Icges(6,2);
t936 = Icges(5,6) + Icges(6,6);
t999 = Icges(5,3) + Icges(6,3);
t493 = cos(qJ(2));
t491 = sin(qJ(2));
t476 = Icges(4,5) * t491;
t579 = Icges(4,3) * t493 - t476;
t772 = Icges(3,4) * t491;
t984 = Icges(3,2) * t493 + t579 + t772;
t765 = Icges(4,5) * t493;
t417 = Icges(4,1) * t491 - t765;
t479 = Icges(3,4) * t493;
t983 = Icges(3,1) * t491 + t417 + t479;
t412 = Icges(3,5) * t493 - Icges(3,6) * t491;
t492 = sin(qJ(1));
t494 = cos(qJ(1));
t310 = Icges(3,3) * t492 + t412 * t494;
t414 = Icges(4,4) * t493 + Icges(4,6) * t491;
t312 = Icges(4,2) * t492 + t414 * t494;
t997 = t310 + t312;
t583 = Icges(4,1) * t493 + t476;
t315 = -Icges(4,4) * t494 + t492 * t583;
t736 = t491 * t492;
t453 = Icges(3,4) * t736;
t734 = t492 * t493;
t766 = Icges(3,5) * t494;
t317 = Icges(3,1) * t734 - t453 - t766;
t954 = t315 + t317;
t316 = Icges(4,4) * t492 + t494 * t583;
t420 = Icges(3,1) * t493 - t772;
t318 = Icges(3,5) * t492 + t420 * t494;
t953 = t316 + t318;
t490 = sin(qJ(4));
t737 = t491 * t490;
t794 = cos(qJ(4));
t557 = t493 * t794 + t737;
t996 = t977 * t557;
t644 = t491 * t794;
t733 = t493 * t490;
t395 = t644 - t733;
t995 = t977 * t395;
t410 = Icges(4,3) * t491 + t765;
t580 = -Icges(3,2) * t491 + t479;
t994 = t410 - t580;
t969 = (Icges(3,6) - Icges(4,6)) * t493 + (Icges(4,4) + Icges(3,5)) * t491;
t993 = t420 + t583;
t339 = t557 * t492;
t992 = t977 * t339;
t338 = t395 * t492;
t991 = t977 * t338;
t656 = qJD(2) - qJD(4);
t407 = t656 * t492;
t665 = qJD(2) * t494;
t408 = -qJD(4) * t494 + t665;
t603 = t494 * t644;
t732 = t493 * t494;
t340 = t490 * t732 - t603;
t341 = t557 * t494;
t986 = t977 * t340;
t930 = t938 * t341 - t976 * t492 - t986;
t985 = t977 * t341;
t931 = -t960 * t340 - t936 * t492 + t985;
t973 = -t936 * t340 + t976 * t341 - t492 * t999;
t866 = -t931 * t340 + t930 * t341 - t973 * t492;
t872 = -t339 * t938 - t976 * t494 - t991;
t873 = t338 * t960 + t494 * t936 + t992;
t874 = t338 * t936 + t339 * t976 + t494 * t999;
t885 = -t340 * t873 - t341 * t872 - t492 * t874;
t915 = -t557 * t960 + t995;
t928 = t395 * t938 - t996;
t929 = -t395 * t976 + t557 * t936;
t961 = -t915 * t340 + t928 * t341 + t929 * t492;
t894 = t961 * qJD(1) + t866 * t407 - t408 * t885;
t967 = -t491 * t984 + t493 * t983;
t668 = qJD(2) * t491;
t666 = qJD(2) * t493;
t887 = t338 * t873 - t339 * t872 + t494 * t874;
t610 = qJD(1) * t656;
t386 = t492 * t610;
t387 = t494 * t610;
t669 = qJD(1) * t494;
t670 = qJD(1) * t492;
t791 = -qJD(1) / 0.2e1;
t797 = t494 / 0.2e1;
t800 = -t492 / 0.2e1;
t801 = t408 / 0.2e1;
t838 = (-t338 * t976 + t936 * t339) * t408 + (-t340 * t976 - t936 * t341) * t407 + (-t936 * t395 - t557 * t976) * qJD(1);
t841 = (t938 * t338 - t873 - t992) * t408 + (t938 * t340 + t931 + t985) * t407 + (t938 * t557 + t915 + t995) * qJD(1);
t856 = (-t341 * t960 + t930 - t986) * t407 - (-t339 * t960 - t872 + t991) * t408;
t905 = t395 * t960 - t928 + t996;
t843 = -t905 * qJD(1) + t856;
t877 = t930 * t395 - t931 * t557;
t878 = -t395 * t872 - t557 * t873;
t886 = t931 * t338 + t930 * t339 + t973 * t494;
t530 = t557 * qJD(4);
t245 = qJD(2) * t557 - t530;
t830 = t395 * qJD(4);
t500 = -qJD(2) * t395 + t830;
t143 = t245 * t494 - t395 * t670;
t144 = t494 * t500 - t557 * t670;
t943 = t977 * t143 + t938 * t144 - t976 * t669;
t945 = t960 * t143 + t977 * t144 - t936 * t669;
t890 = t930 * t245 + t943 * t395 - t931 * t500 - t945 * t557;
t538 = t494 * t395;
t145 = qJD(1) * t538 + t245 * t492;
t146 = qJD(1) * t341 + t492 * t500;
t942 = -t977 * t145 - t938 * t146 + t976 * t670;
t944 = t960 * t145 + t977 * t146 - t936 * t670;
t891 = t872 * t245 + t942 * t395 + t873 * t500 + t944 * t557;
t933 = t938 * t245 - t977 * t500;
t934 = t977 * t245 - t960 * t500;
t935 = t976 * t245 - t936 * t500;
t892 = t915 * t145 + t928 * t146 + t934 * t338 + t933 * t339 + t935 * t494 + t929 * t670;
t893 = t915 * t143 + t928 * t144 - t934 * t340 + t933 * t341 - t935 * t492 + t929 * t669;
t947 = t936 * t143 + t976 * t144 - t669 * t999;
t896 = t931 * t145 + t930 * t146 + t945 * t338 + t943 * t339 + t947 * t494 - t670 * t973;
t946 = t936 * t145 + t976 * t146 - t670 * t999;
t897 = -t873 * t145 + t872 * t146 - t944 * t338 + t942 * t339 - t946 * t494 + t874 * t670;
t898 = t931 * t143 + t930 * t144 - t945 * t340 + t943 * t341 - t947 * t492 - t669 * t973;
t899 = -t873 * t143 + t872 * t144 + t944 * t340 + t942 * t341 + t946 * t492 + t874 * t669;
t962 = -t915 * t338 - t928 * t339 + t929 * t494;
t982 = -(t886 * t492 - t887 * t494) * t386 / 0.2e1 - (t866 * t492 - t885 * t494) * t387 / 0.2e1 + (t893 * qJD(1) + t885 * t386 + t866 * t387 + t898 * t407 + t408 * t899) * t800 + (qJD(1) * t892 + t887 * t386 + t387 * t886 + t407 * t896 + t408 * t897) * t797 + (t891 * t494 + t890 * t492 + (t492 * t878 + t494 * t877) * qJD(1)) * t791 - (-t962 * qJD(1) + t886 * t407 - t887 * t408) * t670 / 0.2e1 - t894 * t669 / 0.2e1 - (-t340 * t843 - t341 * t841 + (t866 * qJD(1) + t899) * t494 + (t885 * qJD(1) - t838 + t898) * t492) * t407 / 0.2e1 + (t338 * t843 - t339 * t841 + (t887 * qJD(1) + t896) * t492 + (t886 * qJD(1) + t838 + t897) * t494) * t801;
t978 = t953 * t491;
t452 = Icges(4,5) * t732;
t735 = t491 * t494;
t755 = Icges(4,6) * t492;
t308 = Icges(4,3) * t735 + t452 + t755;
t974 = t308 * t735 + t997 * t492 + t953 * t732;
t972 = t994 * qJD(2);
t971 = t993 * qJD(2);
t970 = -t412 - t414;
t311 = -Icges(4,2) * t494 + t414 * t492;
t288 = t492 * t311;
t307 = -Icges(4,6) * t494 + t410 * t492;
t753 = Icges(3,3) * t494;
t309 = Icges(3,5) * t734 - Icges(3,6) * t736 - t753;
t966 = -t307 * t735 - t492 * t309 - t954 * t732 - t288;
t845 = t969 * t494;
t846 = t969 * t492;
t963 = t984 * t666 + t983 * t668;
t745 = t311 * t494;
t574 = t307 * t491 + t315 * t493;
t849 = t492 * t574;
t111 = -t745 + t849;
t756 = Icges(3,6) * t494;
t313 = Icges(3,4) * t734 - Icges(3,2) * t736 - t756;
t744 = t313 * t491;
t571 = -t317 * t493 + t744;
t959 = -t309 * t494 - t492 * t571 + t111;
t876 = -t313 * t735 - t966;
t314 = Icges(3,6) * t492 + t494 * t580;
t875 = -t314 * t735 + t974;
t958 = t967 * t492 - t845;
t957 = t967 * t494 + t846;
t956 = -t307 + t313;
t955 = -t308 + t314;
t278 = t318 * t734;
t613 = t310 * t494 - t278;
t114 = -t314 * t736 - t613;
t595 = -t308 * t736 + t312 * t494 - t316 * t734;
t949 = -t595 + t114;
t489 = -qJ(5) - pkin(7);
t783 = -rSges(6,3) + t489;
t939 = t841 * t395;
t927 = t971 * t493 + t972 * t491 + (-t491 * t983 - t493 * t984) * qJD(2) + t969 * qJD(1);
t926 = t969 * qJD(2);
t743 = t314 * t491;
t925 = t308 * t491 + t953 * t493 - t743;
t924 = t571 - t574;
t923 = t967 * qJD(1) + t970 * qJD(2);
t920 = (-t494 * t984 + t953) * t492 - (-Icges(3,2) * t734 - t579 * t492 - t453 + t954) * t494;
t917 = (-t926 * t492 + (t924 + t997) * qJD(1)) * t494;
t916 = t957 * qJD(1);
t914 = t956 * t494 + (-Icges(4,1) * t735 + t417 * t494 + t452 - t955) * t492;
t913 = (t492 * t875 - t494 * t876) * qJD(2);
t912 = (t492 * t949 - t494 * t959) * qJD(2);
t465 = pkin(4) * t794 + pkin(3);
t652 = pkin(4) * t737;
t911 = rSges(6,1) * t339 + rSges(6,2) * t338 + t465 * t734 + t492 * t652;
t910 = t958 * qJD(1);
t909 = t983 - t994;
t908 = -t984 + t993;
t639 = t465 * t668;
t902 = -(t490 * t666 + t830) * pkin(4) + t639;
t889 = t910 + t912;
t888 = t913 + t916;
t884 = t924 * qJD(2) + t963 * t492 + ((t410 * t494 - t314 + t755) * t493 - t978) * qJD(1);
t883 = t925 * qJD(2) - t963 * t494 + ((-t492 * t580 + t307 + t756) * t493 + (-t420 * t492 - t315 + t766) * t491) * qJD(1);
t882 = -t923 * t492 + t927 * t494;
t881 = t927 * t492 + t923 * t494;
t265 = -rSges(5,1) * t557 - rSges(5,2) * t395;
t880 = t265 * t407;
t879 = t265 * t408;
t654 = pkin(3) * t734;
t720 = -t654 + t911 + (-pkin(7) - t783) * t494;
t869 = t745 + t974;
t868 = t493 * t955 + t978;
t867 = t491 * t954 + t493 * t956;
t789 = pkin(3) - t465;
t630 = t789 * t491;
t653 = pkin(4) * t733;
t541 = t630 + t653;
t631 = t789 * t493;
t865 = t631 - t652;
t863 = -t926 * t494 + (-t412 * t492 - t311 + t753 - t925) * qJD(1);
t859 = t341 * rSges(6,1) - t340 * rSges(6,2) + t465 * t732 + t783 * t492 + t494 * t652;
t426 = pkin(2) * t493 + qJ(3) * t491;
t564 = -pkin(1) - t426;
t858 = qJD(1) * (-t465 * t493 + t564 - t652) - qJD(5);
t235 = -rSges(5,1) * t338 + rSges(5,2) * t339;
t239 = rSges(5,1) * t340 + rSges(5,2) * t341;
t857 = t235 * t407 + t239 * t408;
t855 = 0.2e1 * qJD(2);
t792 = pkin(7) * t494;
t400 = t654 + t792;
t458 = pkin(3) * t732;
t401 = -pkin(7) * t492 + t458;
t372 = t426 * t492;
t376 = pkin(2) * t732 + qJ(3) * t735;
t664 = qJD(3) * t493;
t667 = qJD(2) * t492;
t594 = t372 * t667 + t376 * t665 - t664;
t552 = t400 * t667 + t401 * t665 + t594;
t719 = -t401 + t859;
t41 = t407 * t720 + t408 * t719 + t552;
t854 = t41 * t720;
t663 = qJD(3) * t494;
t447 = t491 * t663;
t422 = pkin(2) * t491 - qJ(3) * t493;
t617 = -pkin(3) * t491 - t422;
t561 = t617 * t665;
t662 = qJD(5) * t492;
t527 = t561 - t662;
t485 = t494 * pkin(6);
t432 = pkin(1) * t492 - t485;
t691 = -t372 - t432;
t648 = -t400 + t691;
t708 = rSges(6,1) * t395 - rSges(6,2) * t557 - t541;
t51 = t447 - t708 * t408 + (t648 - t720) * qJD(1) + t527;
t853 = t51 * t708;
t433 = t494 * pkin(1) + t492 * pkin(6);
t382 = t422 * t667;
t638 = t491 * t667;
t442 = pkin(3) * t638;
t471 = qJD(3) * t491;
t633 = t492 * t471;
t562 = -t382 - t442 + t633;
t690 = -t376 - t401;
t608 = t690 - t719;
t661 = qJD(5) * t494;
t52 = t661 - t708 * t407 + (t433 - t608) * qJD(1) + t562;
t852 = t52 * t708;
t787 = rSges(4,1) * t491;
t423 = -rSges(4,3) * t493 + t787;
t848 = (qJD(2) * t423 - t471) * t492;
t404 = qJD(1) * t432;
t847 = -qJD(1) * t372 - t404;
t844 = -t920 * t491 + t914 * t493;
t839 = (-t909 * t491 + t908 * t493) * qJD(1);
t481 = t492 * rSges(4,2);
t334 = rSges(4,1) * t732 + rSges(4,3) * t735 + t481;
t604 = t376 + t433;
t836 = t604 + t334;
t636 = t493 * t665;
t835 = t489 * t669 + (qJD(4) * t603 + t490 * t636) * pkin(4) + t144 * rSges(6,1) + t143 * rSges(6,2);
t833 = t970 * qJD(1);
t540 = -t491 * t665 - t493 * t670;
t290 = pkin(3) * t540 - pkin(7) * t669;
t642 = t493 * t669;
t678 = pkin(7) * t670 + t442;
t291 = pkin(3) * t642 - t678;
t643 = t491 * t670;
t681 = qJ(3) * t636 + t447;
t191 = pkin(2) * t540 - qJ(3) * t643 + t681;
t353 = t491 * t669 + t492 * t666;
t443 = pkin(2) * t638;
t192 = pkin(2) * t642 + qJ(3) * t353 - t443 + t633;
t658 = qJD(1) * qJD(2);
t628 = t494 * t658;
t657 = qJD(2) * qJD(3);
t609 = t191 * t665 + t192 * t667 + t372 * t628 + t491 * t657;
t629 = t492 * t658;
t511 = t290 * t665 + t291 * t667 + t400 * t628 + t629 * t690 + t609;
t589 = -t146 * rSges(6,1) - t145 * rSges(6,2);
t781 = -rSges(6,3) * t670 + (-qJD(1) * t865 + qJD(5)) * t494 + (qJD(1) * t489 - t902) * t492 + t678 - t589;
t611 = qJD(4) * t653;
t782 = -rSges(6,3) * t669 - t662 + (qJD(2) * t630 - t611) * t494 + (t492 * t865 + t792) * qJD(1) + t835;
t11 = -t386 * t719 + t387 * t720 + t407 * t781 + t408 * t782 + t511;
t813 = t11 * t719 + t41 * t782;
t812 = t11 * t720 + t41 * t781;
t811 = m(4) / 0.2e1;
t810 = m(5) / 0.2e1;
t809 = m(6) / 0.2e1;
t796 = -rSges(4,1) - pkin(2);
t795 = -rSges(5,3) - pkin(7);
t793 = pkin(3) * t493;
t788 = rSges(3,1) * t493;
t480 = t492 * rSges(3,3);
t784 = -rSges(4,3) - qJ(3);
t676 = rSges(3,2) * t736 + t494 * rSges(3,3);
t333 = rSges(3,1) * t734 - t676;
t424 = rSges(3,1) * t491 + rSges(3,2) * t493;
t640 = t424 * t665;
t152 = -t640 + (-t333 - t432) * qJD(1);
t749 = t152 * t492;
t748 = t152 * t494;
t641 = t424 * t667;
t335 = rSges(3,1) * t732 - rSges(3,2) * t735 + t480;
t696 = t335 + t433;
t153 = qJD(1) * t696 - t641;
t375 = t424 * t494;
t747 = t153 * t375;
t267 = rSges(5,1) * t395 - rSges(5,2) * t557;
t742 = t408 * t267;
t731 = rSges(6,1) * t245 - rSges(6,2) * t500 - qJD(2) * t631 + (t490 * t668 - t530) * pkin(4);
t729 = t144 * rSges(5,1) + t143 * rSges(5,2);
t399 = t433 * qJD(1);
t718 = -t192 - t399;
t234 = -rSges(6,1) * t338 + rSges(6,2) * t339;
t717 = t541 * t492 + t234;
t716 = pkin(4) * t338 - t234;
t238 = rSges(6,1) * t340 + rSges(6,2) * t341;
t715 = t541 * t494 + t238;
t714 = pkin(4) * t538 - t238;
t264 = -rSges(6,1) * t557 - rSges(6,2) * t395;
t709 = t557 * pkin(4) - t264;
t707 = t264 + t865;
t699 = t341 * rSges(5,1) - t340 * rSges(5,2);
t697 = -t334 - t376;
t695 = t492 * t372 + t494 * t376;
t343 = qJD(2) * t426 - t664;
t427 = rSges(4,1) * t493 + rSges(4,3) * t491;
t694 = -t427 * qJD(2) - t343;
t373 = t422 * t494;
t693 = -qJD(1) * t373 + t492 * t664;
t627 = t493 * t657;
t692 = t422 * t629 + t494 * t627;
t383 = t422 * t670;
t444 = pkin(3) * t643;
t689 = t383 + t444;
t683 = -t422 - t423;
t682 = -t426 - t427;
t680 = rSges(4,2) * t669 + rSges(4,3) * t636;
t679 = rSges(3,2) * t643 + rSges(3,3) * t669;
t448 = t493 * t663;
t677 = t444 + t448;
t675 = t492 ^ 2 + t494 ^ 2;
t655 = pkin(3) * t735;
t651 = t494 * t191 + t492 * t192 + t372 * t669;
t189 = -rSges(5,3) * t492 + t699;
t650 = -t189 + t690;
t369 = t422 * t492;
t649 = -t369 * t667 - t373 * t665 + t471;
t469 = pkin(6) * t669;
t645 = t469 + t681;
t632 = -pkin(1) - t788;
t621 = -t667 / 0.2e1;
t618 = t665 / 0.2e1;
t615 = t494 * t683;
t614 = t675 * t491;
t612 = -t309 + t743;
t384 = qJD(1) * (-pkin(1) * t670 + t469);
t607 = t492 * t627 + t384 + (t191 + t447) * qJD(1);
t605 = t492 * t400 + t494 * t401 + t695;
t602 = -t267 + t617;
t599 = t493 * t796 - pkin(1);
t598 = -pkin(3) * t666 - t343;
t592 = -rSges(3,2) * t491 + t788;
t591 = rSges(5,1) * t146 + rSges(5,2) * t145;
t590 = -rSges(5,1) * t339 - rSges(5,2) * t338;
t126 = rSges(5,1) * t245 - rSges(5,2) * t500;
t559 = (-qJD(2) * t793 - t343) * qJD(2);
t512 = qJD(1) * t290 + t492 * t559 + t607;
t93 = -rSges(5,3) * t669 + t729;
t35 = -t126 * t407 - t267 * t387 + (t93 + t561) * qJD(1) + t512;
t523 = qJD(1) * t442 + t494 * t559 + t692;
t553 = -t291 - t633 + t718;
t95 = -rSges(5,3) * t670 + t591;
t36 = -t126 * t408 + t267 * t386 + (t553 - t95) * qJD(1) + t523;
t587 = t35 * t492 + t36 * t494;
t586 = -t492 * t52 - t494 * t51;
t185 = rSges(5,3) * t494 - t590;
t539 = t447 + t561;
t68 = -t742 + (-t185 + t648) * qJD(1) + t539;
t69 = -t267 * t407 + (t433 - t650) * qJD(1) + t562;
t585 = t492 * t69 + t494 * t68;
t576 = -t153 * t492 - t748;
t567 = t617 - t708;
t565 = -t126 + t598;
t560 = t494 * t290 + t492 * t291 + t400 * t669 + t651;
t558 = qJD(2) * t615 + t447;
t371 = t424 * t492;
t370 = t423 * t492;
t556 = -qJ(3) * t666 - t471;
t555 = t598 - t731;
t147 = (t333 * t492 + t335 * t494) * qJD(2);
t533 = t564 - t793;
t524 = -qJD(1) * t400 + t539 + t847;
t483 = t494 * rSges(4,2);
t397 = t592 * qJD(2);
t374 = t423 * t494;
t354 = t636 - t643;
t352 = t675 * t668;
t332 = t427 * t492 - t483;
t233 = -qJD(2) * t371 + (t494 * t592 + t480) * qJD(1);
t232 = -qJD(2) * t370 + (t427 * t494 + t481) * qJD(1);
t231 = rSges(3,1) * t540 - rSges(3,2) * t636 + t679;
t230 = rSges(4,1) * t540 - rSges(4,3) * t643 + t680;
t110 = qJD(1) * t836 - t382 - t848;
t109 = (-t332 + t691) * qJD(1) + t558;
t108 = -t397 * t665 + (-t233 - t399 + t641) * qJD(1);
t107 = -t397 * t667 + t384 + (t231 - t640) * qJD(1);
t106 = (t332 * t492 + t334 * t494) * qJD(2) + t594;
t59 = t185 * t407 + t189 * t408 + t552;
t58 = t694 * t665 + (-t232 + t718 + t848) * qJD(1) + t692;
t57 = qJD(1) * t230 + (qJD(1) * t615 + t492 * t694) * qJD(2) + t607;
t42 = (t230 * t494 + t232 * t492 + (t332 * t494 + t492 * t697) * qJD(1)) * qJD(2) + t609;
t22 = -t731 * t407 - t708 * t387 + (t527 + t782) * qJD(1) + t512;
t21 = -t731 * t408 + t708 * t386 + (t553 - t661 - t781) * qJD(1) + t523;
t20 = t185 * t387 - t189 * t386 + t407 * t95 + t408 * t93 + t511;
t1 = [t894 * t801 + (((t114 - t278 + (t310 + t744) * t494 + t966) * t494 + (t111 - t849 + t869) * t492) * qJD(2) + t916) * t618 + (t967 * qJD(2) + t928 * t245 + t933 * t395 + t971 * t491 - t972 * t493 - t915 * t500 - t934 * t557) * qJD(1) + (t852 * t408 + (t604 + t859) * t22 + (t492 * t564 + t494 * t783 + t485 - t911) * t21 + (t443 + t589 + t858 * t494 + (t556 + (-pkin(6) - t783) * qJD(1) + t902) * t492) * t51 + (t662 + t51 + t720 * qJD(1) - t524 + t645 + t835 + (-rSges(6,3) * qJD(1) - pkin(2) * t668 - t611 - t639) * t494 + t858 * t492) * t52) * m(6) + (-(-qJD(1) * t185 + t524 - t68 - t742) * t69 + t36 * (t485 + t590) + t68 * (t443 - t591 + t678) + t35 * (t458 + t604 + t699) + t69 * (t645 + t729) + (t36 * t795 + t69 * (-pkin(2) - pkin(3)) * t668) * t494 + (t35 * t795 + t36 * t533 + t556 * t68) * t492 + ((t533 * t68 + t69 * t795) * t494 + (t68 * (rSges(5,3) - pkin(6)) + t69 * t533) * t492) * qJD(1)) * m(5) + (t58 * (t483 + t485) + t109 * t443 + t57 * t836 + t110 * (t645 + t680) + (t110 * t796 * t668 + t109 * (t491 * t784 + t599) * qJD(1)) * t494 + (t58 * t599 + (-t109 * qJD(3) + t58 * t784) * t491 + t109 * (t493 * t784 + t787) * qJD(2) + (t109 * (-rSges(4,2) - pkin(6)) + t110 * (-t427 + t564)) * qJD(1)) * t492 - (-qJD(1) * t332 - t109 + t558 + t847) * t110) * m(4) + (t108 * (t492 * t632 + t485 + t676) + t107 * t696 + t153 * (t469 + t679) + (t424 * t749 - t747) * qJD(2) + ((-pkin(1) - t592) * t748 + (t152 * (-rSges(3,3) - pkin(6)) + t153 * t632) * t492) * qJD(1) - (-qJD(1) * t333 - t152 - t404 - t640) * t153) * m(3) + (t878 - t962) * t386 / 0.2e1 + (t877 + t961) * t387 / 0.2e1 + (t890 + t893) * t407 / 0.2e1 + (t882 + t883) * t667 / 0.2e1 + (((t494 * t612 - t869 + t875) * t494 + (t492 * t612 - t288 + t595 + t613 + t876) * t492) * qJD(2) + t889 - t910) * t621 - (-t891 + t892 + t894) * t408 / 0.2e1 - (t881 - t884 + t888) * t665 / 0.2e1 + ((t867 + t958) * t492 + (t868 + t957) * t494) * t658 / 0.2e1; (t884 * t494 + t883 * t492 + (t867 * t492 + t868 * t494) * qJD(1)) * qJD(1) / 0.2e1 + ((-t667 * t845 - t833) * t492 + ((t492 * t846 + t844) * qJD(2) + t839) * t494) * t621 + ((-t665 * t846 + t833) * t494 + ((t494 * t845 + t844) * qJD(2) + t839) * t492) * t618 + (t11 * t605 + t41 * t560 + (t21 * t567 + (t52 * t567 + t854) * qJD(1) + t813) * t494 + (t22 * t567 + t52 * t555 + (t41 * t608 + t853) * qJD(1) + t812) * t492 - t52 * t693 - t41 * t649 - t41 * t715 * t408 - (t41 * t717 + t52 * t707) * t407 - (t586 * t426 + (-t41 * t614 + t493 * t586) * pkin(3)) * qJD(2) - t52 * (-t655 + t715) * qJD(1) + (t689 + t555 * t494 - t677 - t707 * t408 - (t369 - t717) * qJD(1)) * t51) * m(6) + (-t68 * (t677 + t879) - t69 * (t693 + t880) - t59 * (t649 + t857) - (t68 * (-t235 + t369) + t69 * (t239 - t655)) * qJD(1) - (-t585 * t426 + (-t493 * t585 - t59 * t614) * pkin(3)) * qJD(2) + t68 * t689 + t20 * t605 + t59 * t560 + (t36 * t602 + t68 * t565 + t20 * t189 + t59 * t93 + (t59 * t185 + t602 * t69) * qJD(1)) * t494 + (t35 * t602 + t69 * t565 + t20 * t185 + t59 * t95 + (t68 * t267 + t59 * t650) * qJD(1)) * t492) * m(5) + (-t109 * (t448 + (t369 + t370) * qJD(1)) - t110 * (-qJD(1) * t374 + t693) - t106 * t649 - ((-t106 * t374 + t109 * t682) * t494 + (-t106 * t370 + t110 * t682) * t492) * qJD(2) + t109 * t383 + t42 * t695 + t106 * t651 + (t58 * t683 + t109 * t694 + t42 * t334 + t106 * t230 + (t106 * t332 + t110 * t683) * qJD(1)) * t494 + (t57 * t683 + t110 * t694 + t42 * t332 + t106 * t232 + (t106 * t697 + t109 * t423) * qJD(1)) * t492) * m(4) + (-(t152 * t371 - t747) * qJD(1) - (t147 * (-t371 * t492 - t375 * t494) + t576 * t592) * qJD(2) + 0.2e1 * t147 * (t231 * t494 + t233 * t492 + (t333 * t494 - t335 * t492) * qJD(1)) + t576 * t397 + (-t107 * t492 - t108 * t494 + (-t153 * t494 + t749) * qJD(1)) * t424) * m(3) + (t882 * qJD(1) + (t875 * t669 + (t876 * qJD(1) + t863 * t492 - t917) * t492) * t855) * t492 / 0.2e1 - (t881 * qJD(1) + ((qJD(1) * t949 + t917) * t494 + (qJD(1) * t959 - t863 * t494) * t492) * t855) * t494 / 0.2e1 + (t939 + t856 * t557 + (t914 * t491 + t920 * t493) * qJD(2) + (t908 * t491 + t909 * t493 - t905 * t557) * qJD(1)) * t791 + (t889 + t912) * t670 / 0.2e1 + (t888 + t913) * t669 / 0.2e1 - t982; -m(4) * (t106 * t352 + t109 * t354 + t110 * t353) - m(5) * (t352 * t59 + t353 * t69 + t354 * t68) - m(6) * (t352 * t41 + t353 * t52 + t354 * t51) + 0.2e1 * ((t109 * t665 + t110 * t667 - t42) * t811 + (t665 * t68 + t667 * t69 - t20) * t810 + (t51 * t665 + t52 * t667 - t11) * t809) * t493 + 0.2e1 * ((qJD(2) * t106 - t109 * t670 + t110 * t669 + t492 * t57 + t494 * t58) * t811 + (qJD(2) * t59 + t669 * t69 - t670 * t68 + t587) * t810 + (qJD(2) * t41 + t21 * t494 + t22 * t492 - t51 * t670 + t52 * t669) * t809) * t491; (-t843 * t557 - t939) * t791 + (-(t41 * t714 + t51 * t709) * t408 - (t41 * t716 + t52 * t709) * t407 - (-t51 * t716 + t52 * t714) * qJD(1) + (t21 * t708 + t51 * t731 + (t852 - t854) * qJD(1) - t813) * t494 + (t22 * t708 + t52 * t731 + (t41 * t719 - t853) * qJD(1) - t812) * t492) * m(6) + (-t68 * (qJD(1) * t235 - t879) - t69 * (-qJD(1) * t239 - t880) + t20 * (-t185 * t492 - t189 * t494) + t585 * t126 + ((-t68 * t492 + t494 * t69) * qJD(1) + t587) * t267 + (-t492 * t95 - t494 * t93 + (-t185 * t494 + t189 * t492) * qJD(1) + t857) * t59) * m(5) + t982; 0.2e1 * (t21 * t800 + t22 * t797 - t41 * (t407 * t494 - t408 * t492) / 0.2e1) * m(6);];
tauc = t1(:);