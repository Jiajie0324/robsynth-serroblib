% Calculate vector of centrifugal and Coriolis load on the joints for
% S5RRPRP7
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d4,theta3]';
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
% Datum: 2019-12-31 20:02
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S5RRPRP7_coriolisvecJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(8,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRP7_coriolisvecJ_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPRP7_coriolisvecJ_fixb_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RRPRP7_coriolisvecJ_fixb_slag_vp1: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRPRP7_coriolisvecJ_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RRPRP7_coriolisvecJ_fixb_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RRPRP7_coriolisvecJ_fixb_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 19:59:56
% EndTime: 2019-12-31 20:01:20
% DurationCPUTime: 72.59s
% Computational Cost: add. (26470->1061), mult. (39968->1384), div. (0->0), fcn. (37416->8), ass. (0->533)
t977 = Icges(5,1) + Icges(6,1);
t1000 = Icges(6,4) + Icges(5,5);
t999 = Icges(5,6) - Icges(6,6);
t1036 = Icges(3,3) + Icges(4,3);
t488 = sin(qJ(4));
t1035 = (Icges(5,4) - Icges(6,5)) * t488;
t976 = Icges(5,2) + Icges(6,3);
t1034 = Icges(6,2) + Icges(5,3);
t484 = qJ(2) + pkin(8);
t466 = sin(t484);
t467 = cos(t484);
t489 = sin(qJ(2));
t492 = cos(qJ(2));
t1006 = Icges(3,5) * t492 + Icges(4,5) * t467 - Icges(3,6) * t489 - Icges(4,6) * t466;
t491 = cos(qJ(4));
t1033 = t1000 * t491 - t999 * t488;
t1032 = t977 * t491 - t1035;
t820 = Icges(5,4) * t491;
t603 = -Icges(5,2) * t488 + t820;
t1031 = t466 * t603 - t999 * t467;
t493 = cos(qJ(1));
t1030 = t1036 * t493;
t782 = t466 * t491;
t431 = Icges(6,5) * t782;
t784 = t466 * t488;
t995 = Icges(6,3) * t784 - t1031 + t431;
t813 = Icges(6,5) * t491;
t600 = Icges(6,3) * t488 + t813;
t923 = (t600 - t603) * t467 - t999 * t466;
t1029 = t1033 * t467 + t1034 * t466;
t984 = -t1000 * t467 + t1032 * t466;
t922 = t1000 * t466 + t1032 * t467;
t490 = sin(qJ(1));
t774 = t490 * t492;
t777 = t489 * t490;
t780 = t467 * t490;
t783 = t466 * t490;
t994 = -Icges(3,5) * t774 - Icges(4,5) * t780 + Icges(3,6) * t777 + Icges(4,6) * t783 + t1030;
t1007 = t1006 * t493 + t1036 * t490;
t1028 = (t491 * t976 + t1035) * t466;
t1027 = (-t1000 * t488 - t999 * t491) * t466;
t1020 = Icges(3,5) * t489 + Icges(4,5) * t466 + Icges(3,6) * t492 + Icges(4,6) * t467;
t808 = Icges(4,6) * t493;
t306 = Icges(4,4) * t780 - Icges(4,2) * t783 - t808;
t809 = Icges(3,6) * t493;
t328 = Icges(3,4) * t774 - Icges(3,2) * t777 - t809;
t1026 = t306 * t466 + t328 * t489;
t716 = qJD(4) * t493;
t723 = qJD(2) * t490;
t387 = t466 * t716 + t723;
t718 = qJD(4) * t490;
t721 = qJD(2) * t493;
t388 = -t466 * t718 + t721;
t719 = qJD(4) * t467;
t439 = qJD(1) - t719;
t771 = t493 * t488;
t775 = t490 * t491;
t374 = t467 * t771 - t775;
t773 = t491 * t493;
t706 = t467 * t773;
t778 = t488 * t490;
t375 = t706 + t778;
t781 = t466 * t493;
t986 = t1033 * t466 - t1034 * t467;
t899 = t995 * t374 + t984 * t375 + t986 * t781;
t815 = Icges(6,5) * t374;
t187 = Icges(6,1) * t375 + Icges(6,4) * t781 + t815;
t351 = Icges(5,4) * t374;
t190 = Icges(5,1) * t375 + Icges(5,5) * t781 - t351;
t1008 = t187 + t190;
t348 = Icges(6,5) * t375;
t175 = Icges(6,6) * t781 + Icges(6,3) * t374 + t348;
t822 = Icges(5,4) * t375;
t184 = -Icges(5,2) * t374 + Icges(5,6) * t781 + t822;
t1010 = t175 - t184;
t178 = Icges(5,5) * t375 - Icges(5,6) * t374 + Icges(5,3) * t781;
t181 = Icges(6,4) * t375 + Icges(6,2) * t781 + Icges(6,6) * t374;
t987 = t178 + t181;
t940 = t1008 * t375 + t1010 * t374 + t987 * t781;
t372 = t467 * t778 + t773;
t346 = Icges(6,5) * t372;
t373 = t467 * t775 - t771;
t185 = Icges(6,1) * t373 + Icges(6,4) * t783 + t346;
t349 = Icges(5,4) * t372;
t189 = -Icges(5,1) * t373 - Icges(5,5) * t783 + t349;
t1009 = t185 - t189;
t176 = Icges(5,5) * t373 - Icges(5,6) * t372 + Icges(5,3) * t783;
t179 = Icges(6,4) * t373 + Icges(6,2) * t783 + Icges(6,6) * t372;
t930 = t176 + t179;
t347 = Icges(6,5) * t373;
t174 = -Icges(6,6) * t783 - Icges(6,3) * t372 - t347;
t350 = Icges(5,4) * t373;
t182 = -Icges(5,2) * t372 + Icges(5,6) * t783 + t350;
t931 = t174 + t182;
t941 = t1009 * t375 - t374 * t931 + t781 * t930;
t949 = t940 * t387 - t388 * t941 + t439 * t899;
t900 = t995 * t372 + t984 * t373 + t986 * t783;
t942 = t1008 * t373 + t1010 * t372 + t987 * t783;
t943 = t1009 * t373 - t372 * t931 + t783 * t930;
t950 = t942 * t387 - t388 * t943 + t900 * t439;
t823 = Icges(4,4) * t466;
t396 = Icges(4,1) * t467 - t823;
t309 = Icges(4,5) * t490 + t396 * t493;
t824 = Icges(3,4) * t489;
t421 = Icges(3,1) * t492 - t824;
t331 = Icges(3,5) * t490 + t421 * t493;
t1021 = -t309 * t780 - t331 * t774;
t393 = Icges(4,2) * t467 + t823;
t456 = Icges(4,4) * t467;
t395 = Icges(4,1) * t466 + t456;
t418 = Icges(3,2) * t492 + t824;
t476 = Icges(3,4) * t492;
t420 = Icges(3,1) * t489 + t476;
t1005 = t393 * t466 - t395 * t467 + t418 * t489 - t420 * t492;
t432 = Icges(4,4) * t783;
t817 = Icges(4,5) * t493;
t308 = Icges(4,1) * t780 - t432 - t817;
t453 = Icges(3,4) * t777;
t818 = Icges(3,5) * t493;
t330 = Icges(3,1) * t774 - t453 - t818;
t990 = -t308 * t467 - t330 * t492 + t1026;
t690 = t466 * t721;
t159 = qJD(1) * t372 - qJD(4) * t706 + (t690 - t718) * t488;
t583 = t439 * t488;
t651 = qJD(1) * t467 - qJD(4);
t160 = t493 * t583 + (-t490 * t651 - t690) * t491;
t689 = t467 * t721;
t726 = qJD(1) * t490;
t696 = t466 * t726;
t547 = t689 - t696;
t83 = Icges(6,5) * t160 + Icges(6,6) * t547 - Icges(6,3) * t159;
t89 = Icges(5,4) * t160 + Icges(5,2) * t159 + Icges(5,6) * t547;
t1019 = t83 - t89;
t691 = t466 * t723;
t717 = qJD(4) * t491;
t725 = qJD(1) * t493;
t161 = t717 * t780 - t491 * t726 + (t467 * t725 - t691 - t716) * t488;
t722 = qJD(2) * t491;
t162 = t651 * t773 + (-t466 * t722 + t583) * t490;
t548 = t466 * t725 + t467 * t723;
t84 = Icges(6,5) * t162 + Icges(6,6) * t548 + Icges(6,3) * t161;
t90 = Icges(5,4) * t162 - Icges(5,2) * t161 + Icges(5,6) * t548;
t1018 = t84 - t90;
t85 = Icges(5,5) * t160 + Icges(5,6) * t159 + Icges(5,3) * t547;
t87 = Icges(6,4) * t160 + Icges(6,2) * t547 - Icges(6,6) * t159;
t1017 = t85 + t87;
t86 = Icges(5,5) * t162 - Icges(5,6) * t161 + Icges(5,3) * t548;
t88 = Icges(6,4) * t162 + Icges(6,2) * t548 + Icges(6,6) * t161;
t1016 = t86 + t88;
t91 = Icges(6,1) * t160 + Icges(6,4) * t547 - Icges(6,5) * t159;
t93 = Icges(5,1) * t160 + Icges(5,4) * t159 + Icges(5,5) * t547;
t1015 = t91 + t93;
t92 = Icges(6,1) * t162 + Icges(6,4) * t548 + Icges(6,5) * t161;
t94 = Icges(5,1) * t162 - Icges(5,4) * t161 + Icges(5,5) * t548;
t1014 = t92 + t94;
t1013 = t923 * qJD(2) + t1028 * qJD(4);
t1012 = t1029 * qJD(2) + t1027 * qJD(4);
t341 = (-Icges(5,1) * t488 - t820) * t466;
t720 = qJD(4) * t466;
t1011 = (-Icges(6,1) * t488 + t813) * t720 + qJD(4) * t341 + t922 * qJD(2);
t1004 = t995 * t488 + t984 * t491;
t1003 = t1007 * t493 + t1021;
t772 = t492 * t493;
t779 = t467 * t493;
t910 = t1007 * t490 + t309 * t779 + t331 * t772;
t1002 = -t308 * t779 - t330 * t772 + t994 * t490;
t909 = t1020 * t493;
t908 = t1020 * t490;
t604 = -Icges(4,2) * t466 + t456;
t307 = Icges(4,6) * t490 + t493 * t604;
t605 = -Icges(3,2) * t489 + t476;
t329 = Icges(3,6) * t490 + t493 * t605;
t1001 = t307 * t466 + t329 * t489;
t998 = -t990 * t490 + t994 * t493;
t975 = -t307 * t783 - t329 * t777 - t1003;
t776 = t489 * t493;
t974 = -t306 * t781 - t328 * t776 - t1002;
t973 = -t307 * t781 - t329 * t776 + t910;
t997 = -t1005 * t490 - t909;
t996 = -t1005 * t493 + t908;
t933 = t306 * t467 + t308 * t466 + t328 * t492 + t330 * t489;
t932 = t307 * t467 + t309 * t466 + t329 * t492 + t331 * t489;
t992 = t1020 * qJD(2);
t991 = t309 * t467 + t331 * t492 - t1001;
t957 = rSges(6,1) + pkin(4);
t956 = t1009 * t160 + t1014 * t375 + t1016 * t781 + t1018 * t374 + t931 * t159 + t930 * t547;
t955 = t1008 * t160 - t1010 * t159 + t1015 * t375 + t1017 * t781 + t1019 * t374 + t987 * t547;
t954 = t1009 * t162 + t1014 * t373 + t1016 * t783 + t1018 * t372 - t931 * t161 + t930 * t548;
t953 = t1008 * t162 + t1010 * t161 + t1015 * t373 + t1017 * t783 + t1019 * t372 + t987 * t548;
t947 = t1011 * t375 + t1012 * t781 + t1013 * t374 - t995 * t159 + t984 * t160 + t986 * t547;
t946 = t1011 * t373 + t1012 * t783 + t1013 * t372 + t995 * t161 + t984 * t162 + t986 * t548;
t599 = -t174 * t488 + t185 * t491;
t73 = -t179 * t467 + t466 * t599;
t597 = -t182 * t488 - t189 * t491;
t75 = -t176 * t467 + t466 * t597;
t989 = t73 + t75;
t598 = t175 * t488 + t187 * t491;
t74 = -t181 * t467 + t466 * t598;
t596 = -t184 * t488 + t190 * t491;
t76 = -t178 * t467 + t466 * t596;
t988 = t74 + t76;
t935 = rSges(6,3) + qJ(5);
t898 = t1004 * t466 - t986 * t467;
t985 = -t466 * t600 + t1031;
t377 = t604 * qJD(2);
t378 = t396 * qJD(2);
t403 = t605 * qJD(2);
t404 = t421 * qJD(2);
t983 = -t377 * t466 + t378 * t467 - t403 * t489 + t404 * t492 + (-t393 * t467 - t395 * t466 - t418 * t492 - t420 * t489) * qJD(2) + t1020 * qJD(1);
t982 = t1007 * qJD(1);
t981 = (-t1004 + t1029) * t439 + (t986 * t490 + t597 + t599) * t388 + (-t986 * t493 - t596 - t598) * t387;
t980 = t1005 * qJD(1) + t1006 * qJD(2);
t979 = (t1004 * qJD(2) - t1012) * t467 + (t1011 * t491 + t1013 * t488 + (-t488 * t984 + t491 * t995) * qJD(4) + t986 * qJD(2)) * t466;
t856 = pkin(3) * t467;
t401 = pkin(7) * t466 + t856;
t367 = t401 * t490;
t468 = qJD(3) * t490;
t400 = pkin(3) * t466 - pkin(7) * t467;
t858 = pkin(2) * t489;
t664 = -t400 - t858;
t633 = t664 * t493;
t544 = qJD(2) * t633 + t468;
t482 = t493 * pkin(6);
t437 = pkin(1) * t490 - t482;
t487 = -qJ(3) - pkin(6);
t459 = t493 * t487;
t857 = pkin(2) * t492;
t462 = pkin(1) + t857;
t734 = -t490 * t462 - t459;
t302 = t437 + t734;
t752 = t302 - t437;
t512 = (-t367 + t752) * qJD(1) + t544;
t624 = pkin(4) * t491 + qJ(5) * t488;
t625 = rSges(6,1) * t491 + rSges(6,3) * t488;
t756 = -rSges(6,2) * t467 + (t624 + t625) * t466;
t345 = qJD(5) * t374;
t928 = -t935 * t372 - t957 * t373;
t769 = rSges(6,2) * t783 - t928;
t961 = -t439 * t769 + t345;
t44 = -t388 * t756 + t512 + t961;
t978 = t44 * t493;
t972 = t996 * qJD(1);
t559 = qJD(2) * t393;
t167 = -t493 * t559 + (-t490 * t604 + t808) * qJD(1);
t561 = qJD(2) * t395;
t169 = -t493 * t561 + (-t396 * t490 + t817) * qJD(1);
t560 = qJD(2) * t418;
t221 = -t493 * t560 + (-t490 * t605 + t809) * qJD(1);
t562 = qJD(2) * t420;
t223 = -t493 * t562 + (-t421 * t490 + t818) * qJD(1);
t971 = -qJD(2) * t932 - t167 * t466 + t169 * t467 - t221 * t489 + t223 * t492 + t982;
t168 = qJD(1) * t307 - t490 * t559;
t170 = qJD(1) * t309 - t490 * t561;
t222 = qJD(1) * t329 - t490 * t560;
t224 = qJD(1) * t331 - t490 * t562;
t970 = qJD(1) * t994 + qJD(2) * t933 + t168 * t466 - t170 * t467 + t222 * t489 - t224 * t492;
t969 = -t1027 * t439 + (-t1000 * t372 - t373 * t999) * t388 + (t1000 * t374 + t375 * t999) * t387;
t968 = (t490 * t973 - t493 * t974) * qJD(2);
t967 = (t490 * t975 - t493 * t998) * qJD(2);
t966 = t997 * qJD(1);
t965 = qJD(1) * t990 - t490 * t992 + t982;
t964 = -t992 * t493 + (-t1006 * t490 + t1030 - t991) * qJD(1);
t960 = 0.2e1 * qJD(2);
t710 = qJD(2) * qJD(4);
t676 = t467 * t710;
t273 = qJD(1) * t387 + t490 * t676;
t274 = qJD(1) * t388 + t493 * t676;
t677 = t466 * t710;
t959 = t941 * t273 + t940 * t274 + t955 * t387 - t956 * t388 + t947 * t439 + t899 * t677;
t958 = t943 * t273 + t942 * t274 + t953 * t387 - t954 * t388 + t946 * t439 + t900 * t677;
t17 = (qJD(2) * t599 - t88) * t467 + (qJD(2) * t179 + t488 * t84 + t491 * t92 + (-t174 * t491 - t185 * t488) * qJD(4)) * t466;
t19 = (qJD(2) * t597 - t86) * t467 + (qJD(2) * t176 - t488 * t90 + t491 * t94 + (-t182 * t491 + t189 * t488) * qJD(4)) * t466;
t952 = t17 + t19;
t18 = (qJD(2) * t598 - t87) * t467 + (qJD(2) * t181 + t488 * t83 + t491 * t91 + (t175 * t491 - t187 * t488) * qJD(4)) * t466;
t20 = (qJD(2) * t596 - t85) * t467 + (qJD(2) * t178 - t488 * t89 + t491 * t93 + (-t184 * t491 - t190 * t488) * qJD(4)) * t466;
t951 = t18 + t20;
t948 = t988 * t387 - t989 * t388 + t898 * t439;
t945 = t966 + t967;
t944 = t968 + t972;
t939 = t980 * t490 + t983 * t493;
t938 = t983 * t490 - t980 * t493;
t937 = qJD(2) * t990 - t168 * t467 - t170 * t466 - t222 * t492 - t224 * t489;
t936 = qJD(2) * t991 + t167 * t467 + t169 * t466 + t221 * t492 + t223 * t489;
t310 = rSges(4,1) * t780 - rSges(4,2) * t783 - t493 * rSges(4,3);
t477 = t490 * rSges(4,3);
t311 = rSges(4,1) * t779 - rSges(4,2) * t781 + t477;
t589 = t310 * t490 + t311 * t493;
t481 = t490 * pkin(6);
t438 = t493 * pkin(1) + t481;
t443 = t493 * t462;
t653 = -t487 * t490 + t443;
t303 = t653 - t438;
t758 = -t302 * t723 + t303 * t721;
t105 = qJD(2) * t589 + t758;
t757 = -t490 * t302 + t493 * t303;
t550 = t589 + t757;
t934 = qJD(2) * t550 + t105;
t927 = t985 * t490;
t926 = t985 * t493;
t925 = t984 * t490;
t924 = t984 * t493;
t921 = t981 * t466;
t535 = t328 * t493 - t329 * t490;
t536 = t306 * t493 - t307 * t490;
t874 = t490 * (-t393 * t493 + t309) - t493 * (-Icges(4,2) * t780 + t308 - t432);
t875 = t490 * (-t418 * t493 + t331) - t493 * (-Icges(3,2) * t774 + t330 - t453);
t920 = -t466 * t874 + t536 * t467 - t489 * t875 + t535 * t492;
t736 = t420 + t605;
t737 = -t418 + t421;
t739 = t395 + t604;
t740 = -t393 + t396;
t919 = (-t466 * t739 + t467 * t740 - t489 * t736 + t492 * t737) * qJD(1);
t917 = t987 * t387 - t930 * t388 + t986 * t439;
t893 = t989 * t490 + t988 * t493;
t916 = t988 * t490 - t989 * t493;
t892 = t941 * t490 + t940 * t493;
t915 = t940 * t490 - t941 * t493;
t891 = t943 * t490 + t942 * t493;
t914 = t942 * t490 - t943 * t493;
t913 = t994 + t1001;
t344 = qJD(5) * t372;
t441 = pkin(3) * t779;
t369 = pkin(7) * t781 + t441;
t370 = t400 * t723;
t445 = t723 * t858;
t732 = qJD(3) * t493 + t445;
t749 = t303 + t438;
t534 = (t369 + t749) * qJD(1) - t370 - t732;
t767 = rSges(6,2) * t781 + t374 * t935 + t375 * t957;
t45 = -t387 * t756 + t767 * t439 + t344 + t534;
t660 = t45 * t756;
t715 = qJD(5) * t488;
t423 = t466 * t715;
t649 = t367 * t723 + t369 * t721 + t758;
t37 = t387 * t769 + t388 * t767 + t423 + t649;
t662 = t37 * t769;
t912 = t660 - t662;
t911 = t1006 * qJD(1);
t629 = rSges(5,1) * t373 - rSges(5,2) * t372;
t192 = rSges(5,3) * t783 + t629;
t628 = rSges(5,1) * t491 - rSges(5,2) * t488;
t293 = -rSges(5,3) * t467 + t466 * t628;
t907 = -t192 * t439 - t293 * t388;
t906 = rSges(6,2) * t689 - t935 * t159 + t160 * t957 + t345;
t901 = -t935 * t161 - t162 * t957 - t344;
t410 = qJD(1) * t437;
t897 = qJD(1) * t302 - t410;
t896 = (-t984 + t1028) * t439 + (-t373 * t976 + t1009 + t346 - t349) * t388 + (t375 * t976 - t1008 + t351 - t815) * t387;
t895 = (-Icges(6,1) * t784 + t341 + t431 + t995) * t439 + (t372 * t977 - t347 + t350 + t931) * t388 + (-t374 * t977 + t1010 + t348 - t822) * t387;
t894 = t969 * t466;
t888 = t439 * t979 + t677 * t898;
t884 = -qJD(1) * t367 + t897;
t415 = pkin(7) * t689;
t549 = -t467 * t726 - t690;
t217 = pkin(3) * t549 - pkin(7) * t696 + t415;
t414 = pkin(3) * t691;
t218 = pkin(7) * t548 + qJD(1) * t441 - t414;
t712 = qJD(1) * qJD(2);
t678 = t493 * t712;
t465 = pkin(6) * t725;
t688 = t489 * t721;
t581 = -pkin(2) * t688 + t468;
t853 = pkin(1) - t462;
t215 = -t465 + (t490 * t853 - t459) * qJD(1) + t581;
t697 = t487 * t726 + t732;
t216 = (-t493 * t853 - t481) * qJD(1) - t697;
t703 = t215 * t721 + t216 * t723 - t302 * t678;
t578 = t217 * t721 + t218 * t723 + t367 * t678 + t703;
t750 = t303 + t369;
t635 = t750 * t726;
t683 = t467 * t715;
t684 = t466 * t717;
t829 = rSges(6,2) * t548 - t901;
t852 = -rSges(6,2) * t696 + t906;
t5 = qJD(5) * t684 + t852 * t388 + t829 * t387 + t769 * t274 - t767 * t273 + (-t635 + t683) * qJD(2) + t578;
t876 = t37 * t852 + t5 * t767;
t871 = t273 / 0.2e1;
t870 = t274 / 0.2e1;
t869 = -t387 / 0.2e1;
t868 = t387 / 0.2e1;
t867 = -t388 / 0.2e1;
t866 = t388 / 0.2e1;
t865 = -t439 / 0.2e1;
t864 = t439 / 0.2e1;
t862 = t490 / 0.2e1;
t861 = -t493 / 0.2e1;
t860 = -rSges(6,2) - pkin(7);
t859 = -rSges(5,3) - pkin(7);
t851 = rSges(3,1) * t492;
t850 = rSges(4,1) * t467;
t849 = rSges(6,2) * t466;
t847 = rSges(5,3) * t466;
t845 = t17 * t388;
t844 = t18 * t387;
t843 = t19 * t388;
t842 = t20 * t387;
t295 = t467 * t628 + t847;
t354 = (-rSges(5,1) * t488 - rSges(5,2) * t491) * t466;
t164 = qJD(2) * t295 + qJD(4) * t354;
t196 = t375 * rSges(5,1) - t374 * rSges(5,2) + rSges(5,3) * t781;
t380 = t401 * qJD(2);
t532 = qJD(1) * t633 - t380 * t490;
t399 = qJD(1) * (-pkin(1) * t726 + t465);
t711 = qJD(1) * qJD(3);
t701 = qJD(1) * t215 + t490 * t711 + t399;
t708 = qJD(2) ^ 2 * t857;
t533 = qJD(1) * t217 - t490 * t708 + t701;
t705 = t160 * rSges(5,1) + t159 * rSges(5,2) + rSges(5,3) * t689;
t96 = -rSges(5,3) * t696 + t705;
t25 = -t164 * t387 - t274 * t293 + t439 * t96 + (t196 * t720 + t532) * qJD(2) + t533;
t841 = t25 * t493;
t735 = qJD(1) * t445 + t493 * t711;
t409 = t438 * qJD(1);
t766 = -t216 - t409;
t513 = -t493 * t708 + t735 + (t370 - t218 + t766) * qJD(1);
t789 = t380 * t493;
t630 = rSges(5,1) * t162 - rSges(5,2) * t161;
t98 = rSges(5,3) * t548 + t630;
t26 = -t164 * t388 + t273 * t293 - t439 * t98 + (-t192 * t720 - t789) * qJD(2) + t513;
t840 = t26 * t490;
t835 = t45 * t490;
t478 = t490 * rSges(3,3);
t66 = t196 * t439 - t293 * t387 + t534;
t834 = t490 * t66;
t833 = t73 * t273;
t832 = t74 * t274;
t831 = t75 * t273;
t830 = t76 * t274;
t397 = rSges(4,1) * t466 + rSges(4,2) * t467;
t666 = -t397 - t858;
t634 = t493 * t666;
t579 = qJD(2) * t634;
t545 = t468 + t579;
t112 = (-t310 + t752) * qJD(1) + t545;
t800 = t112 * t397;
t731 = rSges(3,2) * t777 + t493 * rSges(3,3);
t363 = rSges(3,1) * t774 - t731;
t425 = rSges(3,1) * t489 + rSges(3,2) * t492;
t692 = t425 * t721;
t203 = -t692 + (-t363 - t437) * qJD(1);
t799 = t203 * t490;
t798 = t203 * t493;
t693 = t425 * t723;
t364 = rSges(3,1) * t772 - rSges(3,2) * t776 + t478;
t742 = t364 + t438;
t204 = qJD(1) * t742 - t693;
t390 = t425 * t493;
t797 = t204 * t390;
t294 = t467 * t625 + t849;
t353 = (-rSges(6,1) * t488 + rSges(6,3) * t491) * t466;
t724 = qJD(2) * t467;
t546 = t488 * t724 + t684;
t770 = t423 + t546 * qJ(5) + (t467 * t722 - t488 * t720) * pkin(4) + qJD(2) * t294 + qJD(4) * t353;
t765 = -t372 * t957 + t373 * t935;
t764 = -t374 * t957 + t375 * t935;
t763 = t756 * t490;
t755 = -t624 * t467 - t294;
t366 = t400 * t490;
t368 = t400 * t493;
t746 = -t366 * t723 - t368 * t721;
t743 = -(-pkin(4) * t488 + qJ(5) * t491) * t466 - t353;
t695 = t489 * t726;
t446 = pkin(2) * t695;
t741 = t400 * t726 + t446;
t738 = rSges(4,2) * t696 + rSges(4,3) * t725;
t733 = rSges(3,2) * t695 + rSges(3,3) * t725;
t709 = pkin(2) * t776;
t707 = qJD(2) * t857;
t702 = t493 * t215 + t490 * t216 - t302 * t725;
t698 = t443 + t369;
t694 = t397 * t723;
t687 = t492 * t721;
t679 = -pkin(1) - t851;
t674 = t725 / 0.2e1;
t673 = qJD(2) * t466 / 0.2e1;
t672 = -t723 / 0.2e1;
t671 = t723 / 0.2e1;
t669 = t721 / 0.2e1;
t398 = -rSges(4,2) * t466 + t850;
t665 = -t398 - t857;
t663 = -t462 - t856;
t661 = t44 * t756;
t658 = t489 * (-t490 ^ 2 - t493 ^ 2);
t652 = qJD(1) * t366 + t446;
t648 = t490 * t367 + t493 * t369 + t757;
t647 = t414 + t697;
t640 = -t293 + t664;
t637 = qJD(4) * t673;
t636 = -t380 - t707;
t631 = -rSges(3,2) * t489 + t851;
t623 = -t835 - t978;
t65 = t512 + t907;
t614 = t493 * t65 + t834;
t595 = t192 * t493 - t196 * t490;
t594 = -t204 * t490 - t798;
t584 = t664 - t756;
t582 = (-t368 - t709) * qJD(1);
t580 = -t164 + t636;
t577 = t493 * t217 + t490 * t218 + t367 * t725 + t702;
t379 = t398 * qJD(2);
t576 = -qJD(2) * t379 - t708;
t389 = t425 * t490;
t356 = t397 * t490;
t564 = t636 - t770;
t197 = (t363 * t490 + t364 * t493) * qJD(2);
t552 = -t401 - t849;
t551 = -t401 - t847;
t543 = t37 * t829 + t5 * t769;
t538 = -t44 * t769 + t45 * t767;
t537 = -t37 * t767 + t661;
t519 = -pkin(3) * t690 + t415 + t581;
t52 = t192 * t387 + t196 * t388 + t649;
t507 = t52 * t595 + (t490 * t65 - t493 * t66) * t293;
t500 = t537 * t490 - t493 * t912;
t405 = t631 * qJD(2);
t358 = t397 * t493;
t263 = t293 * t493;
t261 = t293 * t490;
t246 = -rSges(5,1) * t374 - rSges(5,2) * t375;
t241 = -rSges(5,1) * t372 - rSges(5,2) * t373;
t226 = -qJD(2) * t389 + (t493 * t631 + t478) * qJD(1);
t225 = -rSges(3,2) * t687 + (-t492 * t726 - t688) * rSges(3,1) + t733;
t172 = -qJD(2) * t356 + (t398 * t493 + t477) * qJD(1);
t171 = rSges(4,1) * t549 - rSges(4,2) * t689 + t738;
t119 = -t405 * t721 + (-t226 - t409 + t693) * qJD(1);
t118 = -t405 * t723 + t399 + (t225 - t692) * qJD(1);
t113 = -t694 + (t311 + t749) * qJD(1) - t732;
t70 = t576 * t493 + (-t172 + t694 + t766) * qJD(1) + t735;
t69 = t576 * t490 + (t171 + t579) * qJD(1) + t701;
t16 = -qJD(2) * t635 + t192 * t274 - t196 * t273 + t387 * t98 + t388 * t96 + t578;
t7 = -qJD(5) * t159 - t829 * t439 - t770 * t388 + t756 * t273 + (-t720 * t769 - t789) * qJD(2) + t513;
t6 = qJD(5) * t161 + t852 * t439 - t770 * t387 - t756 * t274 + (t720 * t767 + t532) * qJD(2) + t533;
t1 = [((t932 + t996) * t493 + (t933 + t997) * t490) * t712 / 0.2e1 + (t7 * (t734 + t928) + t44 * (t647 + t901) + t6 * (t698 + t767) + (t44 * t724 * t860 - t6 * t487 + t552 * t7) * t490 + ((t466 * t860 + t663) * t835 + (-t462 + t552) * t978) * qJD(1) + t660 * t388 + (t400 * t721 - t487 * t725 + t44 + t519 - t581 - t884 + t906 - t961) * t45) * m(6) + (-(-qJD(1) * t310 - t112 + t545 + t897) * t113 + t70 * (-t310 + t734) + t112 * t697 + t69 * (t311 + t653) + t113 * (t468 + t738) + (t113 * t634 + t490 * t800) * qJD(2) + ((-t112 * rSges(4,3) + t113 * (-t462 - t850)) * t490 + (t112 * (-t398 - t462) - t113 * t487) * t493) * qJD(1)) * m(4) + (((t493 * t913 - t910 + t973) * t493 + (t490 * t913 + t1003 + t974) * t490) * qJD(2) + t945 - t966) * t672 + (-t1005 * qJD(2) + t377 * t467 + t378 * t466 + t403 * t492 + t404 * t489) * qJD(1) + (t930 * t467 + (-t1009 * t491 + t488 * t931) * t466 + t989) * t387 * t865 + (t119 * (t490 * t679 + t482 + t731) + t118 * t742 + t204 * (t465 + t733) + (t425 * t799 - t797) * qJD(2) + ((-pkin(1) - t631) * t798 + (t203 * (-rSges(3,3) - pkin(6)) + t204 * t679) * t490) * qJD(1) - (-qJD(1) * t363 - t203 - t410 - t692) * t204) * m(3) + t842 / 0.2e1 + t899 * t870 + t900 * t871 - t845 / 0.2e1 - t843 / 0.2e1 + t844 / 0.2e1 + t947 * t868 + (t946 + t949) * t867 + (t936 + t939) * t671 - (-t937 + t938 + t944) * t721 / 0.2e1 + t888 + (-(t544 - t65 + t884 + t907) * t66 + t26 * (-t629 + t734) + t65 * (-t630 + t647) + t25 * (t698 + t196) + t66 * (t519 + t705) + (t65 * t724 * t859 - t25 * t487 + t26 * t551) * t490 + ((t466 * t859 + t663) * t834 + (t65 * (-t462 + t551) - t66 * t487) * t493) * qJD(1)) * m(5) + t949 * t866 + ((t910 * t490 + ((t1007 + t1026) * t493 + t975 + t1002 + t1021) * t493) * qJD(2) + t972) * t669 + t830 / 0.2e1 + t831 / 0.2e1 + t832 / 0.2e1 + t833 / 0.2e1; t914 * t871 + t915 * t870 + ((t466 * t899 + t780 * t941) * qJD(4) + ((qJD(4) * t940 + t917) * t467 + t921) * t493 + (t374 * t923 + t375 * t922) * t439 + (-t374 * t927 + t375 * t925) * t388 + (t374 * t926 - t375 * t924) * t387) * t869 + (qJD(1) * t892 + t490 * t955 - t493 * t956) * t868 + (qJD(1) * t891 + t490 * t953 - t493 * t954) * t867 + ((t466 * t900 + t779 * t942) * qJD(4) + ((qJD(4) * t943 + t917) * t467 + t921) * t490 + (t372 * t923 + t373 * t922) * t439 + (-t372 * t927 + t373 * t925) * t388 + (t372 * t926 - t373 * t924) * t387) * t866 + ((qJD(4) * t893 - t981) * t467 + ((t488 * t923 + t491 * t922 + t986) * t439 + (-t488 * t927 + t491 * t925 - t930) * t388 + (t488 * t926 - t491 * t924 + t987) * t387 + t898 * qJD(4)) * t466) * t865 + (qJD(1) * t893 + t490 * t951 - t493 * t952) * t864 - ((t536 * t466 + t467 * t874 + t535 * t489 + t492 * t875) * qJD(2) + (t466 * t740 + t467 * t739 + t489 * t737 + t492 * t736) * qJD(1)) * qJD(1) / 0.2e1 + (t937 * t493 + t936 * t490 + (t490 * t933 + t493 * t932) * qJD(1)) * qJD(1) / 0.2e1 + ((-t723 * t909 + t911) * t490 + ((t490 * t908 + t920) * qJD(2) + t919) * t493) * t672 + ((-t721 * t908 - t911) * t493 + ((t493 * t909 + t920) * qJD(2) + t919) * t490) * t669 - t948 * t720 / 0.2e1 + t916 * t637 + (-t45 * (-t423 * t490 + t582) - t37 * (t683 + t746) - (-t37 * t763 + t45 * t755) * t387 - (t623 * t401 + (t37 * t658 + t492 * t623) * pkin(2)) * qJD(2) - (t466 * t538 + t467 * t500) * qJD(4) + t5 * t648 + t37 * t577 + (t6 * t584 + t45 * t564 + (t661 + t37 * (-t750 - t767)) * qJD(1) + t543) * t490 + (-t755 * t388 - t763 * t439 - t652 + t741) * t44 + (t7 * t584 + (t45 * t584 + t662) * qJD(1) + t876 - (-t37 * t388 - t439 * t45) * t756 + (t423 + t564) * t44) * t493) * m(6) + (-t65 * (t261 * t439 - t295 * t388 + t652) - t66 * (-t263 * t439 - t295 * t387 + t582) - t52 * (-t261 * t387 - t263 * t388 + t746) - ((-t192 * t65 + t196 * t66) * t466 + t507 * t467) * qJD(4) - (-t614 * t401 + (-t492 * t614 + t52 * t658) * pkin(2)) * qJD(2) + t65 * t741 + t16 * t648 + t52 * t577 + (t26 * t640 + t65 * t580 + t16 * t196 + t52 * t96 + (t52 * t192 + t640 * t66) * qJD(1)) * t493 + (t25 * t640 + t66 * t580 + t16 * t192 + t52 * t98 + (t65 * t293 + t52 * (-t196 - t750)) * qJD(1)) * t490) * m(5) + (-(t112 * t356 + t113 * (-t358 - t709)) * qJD(1) - (t105 * pkin(2) * t658 + (-t105 * t358 + t112 * t665) * t493 + (-t105 * t356 + t113 * t665) * t490) * qJD(2) + t70 * t634 - t112 * pkin(2) * t687 + (t171 * t721 + t172 * t723 + t703) * t550 + t105 * t702 + (-t112 * t379 + t105 * t171 + (t113 * t666 + t310 * t934) * qJD(1)) * t493 + (t69 * t666 + t113 * (-t379 - t707) + t105 * t172 + (t800 + t934 * (-t303 - t311)) * qJD(1)) * t490) * m(4) + (-(t203 * t389 - t797) * qJD(1) - (t197 * (-t389 * t490 - t390 * t493) + t594 * t631) * qJD(2) + 0.2e1 * t197 * (t225 * t493 + t226 * t490 + (t363 * t493 - t364 * t490) * qJD(1)) + t594 * t405 + (-t118 * t490 - t119 * t493 + (-t204 * t493 + t799) * qJD(1)) * t425) * m(3) + (t939 * qJD(1) + t959 + ((t973 * qJD(1) + t970 * t493) * t493 + (t964 * t490 + t974 * qJD(1) + (-t965 + t971) * t493) * t490) * t960) * t862 + (t938 * qJD(1) + t958 + ((t975 * qJD(1) + t965 * t493) * t493 + (t971 * t490 + t998 * qJD(1) + (-t964 + t970) * t493) * t490) * t960) * t861 + (t945 + t950 + t967) * t726 / 0.2e1 + (t944 + t949 + t968) * t674 - (t490 * t950 + t493 * t949) * t719 / 0.2e1; 0.2e1 * (t6 * t861 + t7 * t862) * m(6) + 0.2e1 * (-t841 / 0.2e1 + t840 / 0.2e1) * m(5) + 0.2e1 * (t69 * t861 + t70 * t862) * m(4); (t466 * t891 - t467 * t900) * t871 + (t466 * t892 - t467 * t899) * t870 + (t374 * t896 + t375 * t895 - t493 * t894) * t869 + ((qJD(2) * t892 - t947) * t467 + (-qJD(1) * t915 + t899 * qJD(2) + t490 * t956 + t493 * t955) * t466) * t868 + ((qJD(2) * t891 - t946) * t467 + (-qJD(1) * t914 + t900 * qJD(2) + t490 * t954 + t493 * t953) * t466) * t867 + (t372 * t896 + t373 * t895 - t490 * t894) * t866 + (t969 * t467 + (t488 * t896 + t491 * t895) * t466) * t865 + ((qJD(2) * t893 - t979) * t467 + (-qJD(1) * t916 + t898 * qJD(2) + t490 * t952 + t493 * t951) * t466) * t864 - (t832 + t833 + t844 - t845 + t830 + t831 + t842 - t843 + t888) * t467 / 0.2e1 + t958 * t783 / 0.2e1 + t959 * t781 / 0.2e1 + t948 * t673 + (t466 * t893 - t467 * t898) * t637 + (-(t37 * t782 + t373 * t45 + t375 * t44) * qJD(5) - (-t44 * t765 + t45 * t764) * t439 - (t37 * t764 + t44 * t743) * t388 - (t37 * t765 + t45 * t743) * t387 + (qJD(2) * t500 + t44 * t829 - t45 * t852 - t6 * t767 + t7 * t769) * t467 + (t538 * qJD(2) + (qJD(1) * t537 - t45 * t770 - t6 * t756 + t543) * t493 + (qJD(1) * t912 + t44 * t770 + t7 * t756 - t876) * t490) * t466) * m(6) + (-t65 * (-t241 * t439 - t354 * t388) - t66 * (t246 * t439 - t354 * t387) - t52 * (t241 * t387 + t246 * t388) + (qJD(2) * t507 + t26 * t192 - t25 * t196 + t65 * t98 - t66 * t96) * t467 + (t65 * (-qJD(2) * t192 + t164 * t490) + t66 * (qJD(2) * t196 - t164 * t493) + t16 * t595 + t52 * (-t192 * t726 - t196 * t725 - t490 * t96 + t493 * t98) + (qJD(1) * t614 + t840 - t841) * t293) * t466) * m(5) + t949 * (t467 * t669 - t696 / 0.2e1) + t950 * (t466 * t674 + t467 * t671); (t372 * t6 + t374 * t7 + t5 * t784 + (-t374 * t439 + t387 * t784 + t161) * t45 + (t372 * t439 + t388 * t784 - t159) * t44 + (-t372 * t387 - t374 * t388 + t546) * t37) * m(6);];
tauc = t1(:);