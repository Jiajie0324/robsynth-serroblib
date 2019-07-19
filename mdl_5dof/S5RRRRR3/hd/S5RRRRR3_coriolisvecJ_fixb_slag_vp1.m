% Calculate vector of centrifugal and Coriolis load on the joints for
% S5RRRRR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [5x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a3,a4,a5,d1,d4]';
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
% Datum: 2019-07-18 17:19
% Revision: 08c8d617a845f5dd194efdf9aca2774760f7818f (2019-07-16)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S5RRRRR3_coriolisvecJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRR3_coriolisvecJ_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRRR3_coriolisvecJ_fixb_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [5 1]), ...
  'S5RRRRR3_coriolisvecJ_fixb_slag_vp1: pkin has to be [5x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRRRR3_coriolisvecJ_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RRRRR3_coriolisvecJ_fixb_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RRRRR3_coriolisvecJ_fixb_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-07-18 17:17:10
% EndTime: 2019-07-18 17:18:23
% DurationCPUTime: 51.68s
% Computational Cost: add. (50163->1353), mult. (57431->1902), div. (0->0), fcn. (54272->10), ass. (0->659)
t594 = qJ(2) + qJ(3);
t579 = cos(t594);
t595 = sin(qJ(4));
t600 = cos(qJ(1));
t895 = t600 * t595;
t597 = sin(qJ(1));
t598 = cos(qJ(4));
t900 = t597 * t598;
t487 = t579 * t900 - t895;
t462 = Icges(5,4) * t487;
t898 = t598 * t600;
t903 = t595 * t597;
t486 = t579 * t903 + t898;
t577 = sin(t594);
t909 = t577 * t597;
t287 = -Icges(5,2) * t486 + Icges(5,6) * t909 + t462;
t461 = Icges(5,4) * t486;
t291 = -Icges(5,1) * t487 - Icges(5,5) * t909 + t461;
t1053 = t287 * t595 + t291 * t598;
t284 = Icges(5,5) * t487 - Icges(5,6) * t486 + Icges(5,3) * t909;
t131 = -t1053 * t577 - t284 * t579;
t593 = qJ(4) + qJ(5);
t578 = cos(t593);
t576 = sin(t593);
t896 = t600 * t576;
t906 = t579 * t597;
t436 = t578 * t906 - t896;
t423 = Icges(6,4) * t436;
t435 = t576 * t906 + t578 * t600;
t248 = -Icges(6,2) * t435 + Icges(6,6) * t909 + t423;
t422 = Icges(6,4) * t435;
t252 = -Icges(6,1) * t436 - Icges(6,5) * t909 + t422;
t1054 = t248 * t576 + t252 * t578;
t245 = Icges(6,5) * t436 - Icges(6,6) * t435 + Icges(6,3) * t909;
t121 = -t1054 * t577 - t245 * t579;
t589 = qJD(4) + qJD(5);
t779 = t579 * t589;
t1023 = qJD(1) - t779;
t756 = -rSges(6,1) * t436 + rSges(6,2) * t435;
t256 = rSges(6,3) * t909 - t756;
t974 = pkin(3) * t598;
t572 = pkin(2) + t974;
t506 = t572 * t906;
t842 = pkin(3) * t895;
t371 = pkin(2) * t906 - t506 + t842;
t590 = qJD(2) + qJD(3);
t530 = t590 * t600;
t851 = qJD(4) * t597;
t456 = -t577 * t851 + t530;
t849 = qJD(5) * t577;
t385 = -t597 * t849 + t456;
t755 = rSges(6,1) * t578 - rSges(6,2) * t576;
t386 = -rSges(6,3) * t579 + t577 * t755;
t970 = pkin(2) - t572;
t483 = t970 * t577;
t852 = qJD(4) * t579;
t550 = qJD(1) - t852;
t596 = sin(qJ(2));
t599 = cos(qJ(2));
t854 = qJD(2) * t600;
t856 = qJD(1) * t597;
t1031 = (t596 * t854 + t599 * t856) * pkin(1);
t973 = pkin(5) * t577;
t976 = pkin(2) * t579;
t513 = t973 + t976;
t481 = t513 * t597;
t512 = pkin(2) * t577 - pkin(5) * t579;
t624 = qJD(1) * t481 + t530 * t512 + t1031;
t106 = -t1023 * t256 + t550 * t371 - t385 * t386 + t456 * t483 - t624;
t760 = -rSges(5,1) * t487 + rSges(5,2) * t486;
t294 = rSges(5,3) * t909 - t760;
t759 = rSges(5,1) * t598 - rSges(5,2) * t595;
t405 = -rSges(5,3) * t579 + t577 * t759;
t136 = -t294 * t550 - t456 * t405 - t624;
t826 = t577 * t856;
t857 = qJD(1) * t579;
t780 = -t589 + t857;
t837 = t577 * t530;
t1019 = t597 * t780 + t837;
t708 = t600 * t1023;
t203 = t1019 * t576 + t578 * t708;
t204 = -t1019 * t578 + t576 * t708;
t835 = t579 * t530;
t834 = t204 * rSges(6,1) + t203 * rSges(6,2) + rSges(6,3) * t835;
t143 = -rSges(6,3) * t826 + t834;
t908 = t577 * t600;
t417 = t970 * t908;
t813 = t597 * t970;
t975 = pkin(3) * t595;
t839 = qJD(4) * t975;
t864 = qJD(1) * t842 + t851 * t974;
t178 = t590 * t417 + (qJD(1) * t813 - t600 * t839) * t579 + t864;
t1055 = t143 + t178;
t1046 = t256 - t371;
t109 = t245 * t909 - t248 * t435 - t252 * t436;
t437 = t578 * t597 - t579 * t896;
t905 = t579 * t600;
t438 = t576 * t597 + t578 * t905;
t247 = Icges(6,5) * t438 + Icges(6,6) * t437 + Icges(6,3) * t908;
t949 = Icges(6,4) * t438;
t250 = Icges(6,2) * t437 + Icges(6,6) * t908 + t949;
t424 = Icges(6,4) * t437;
t253 = Icges(6,1) * t438 + Icges(6,5) * t908 + t424;
t110 = t247 * t909 - t435 * t250 + t436 * t253;
t739 = Icges(6,5) * t578 - Icges(6,6) * t576;
t375 = -Icges(6,3) * t579 + t577 * t739;
t947 = Icges(6,4) * t578;
t743 = -Icges(6,2) * t576 + t947;
t377 = -Icges(6,6) * t579 + t577 * t743;
t948 = Icges(6,4) * t576;
t749 = Icges(6,1) * t578 - t948;
t379 = -Icges(6,5) * t579 + t577 * t749;
t146 = t375 * t909 - t377 * t435 + t379 * t436;
t575 = qJD(2) * t597;
t529 = qJD(3) * t597 + t575;
t850 = qJD(4) * t600;
t455 = t577 * t850 + t529;
t384 = t600 * t849 + t455;
t60 = t1023 * t146 - t109 * t385 + t110 * t384;
t123 = t284 * t909 - t287 * t486 - t291 * t487;
t488 = -t579 * t895 + t900;
t489 = t579 * t898 + t903;
t286 = Icges(5,5) * t489 + Icges(5,6) * t488 + Icges(5,3) * t908;
t952 = Icges(5,4) * t489;
t289 = Icges(5,2) * t488 + Icges(5,6) * t908 + t952;
t463 = Icges(5,4) * t488;
t292 = Icges(5,1) * t489 + Icges(5,5) * t908 + t463;
t124 = t286 * t909 - t486 * t289 + t487 * t292;
t741 = Icges(5,5) * t598 - Icges(5,6) * t595;
t398 = -Icges(5,3) * t579 + t577 * t741;
t950 = Icges(5,4) * t598;
t745 = -Icges(5,2) * t595 + t950;
t400 = -Icges(5,6) * t579 + t577 * t745;
t951 = Icges(5,4) * t595;
t751 = Icges(5,1) * t598 - t951;
t402 = -Icges(5,5) * t579 + t577 * t751;
t166 = t398 * t909 - t400 * t486 + t402 * t487;
t69 = -t123 * t456 + t124 * t455 + t166 * t550;
t125 = t284 * t908 + t488 * t287 - t291 * t489;
t126 = t286 * t908 + t488 * t289 + t489 * t292;
t167 = t398 * t908 + t400 * t488 + t402 * t489;
t70 = -t125 * t456 + t126 * t455 + t167 * t550;
t111 = t245 * t908 + t437 * t248 - t252 * t438;
t112 = t247 * t908 + t437 * t250 + t438 * t253;
t147 = t375 * t908 + t377 * t437 + t379 * t438;
t61 = t1023 * t147 - t111 * t385 + t112 * t384;
t258 = t438 * rSges(6,1) + t437 * rSges(6,2) + rSges(6,3) * t908;
t844 = pkin(2) * t905;
t869 = pkin(3) * t903 + t572 * t905;
t372 = -t844 + t869;
t1045 = t258 + t372;
t939 = Icges(4,6) * t600;
t412 = Icges(4,4) * t906 - Icges(4,2) * t909 - t939;
t566 = Icges(4,4) * t579;
t504 = Icges(4,1) * t577 + t566;
t1044 = -t504 * t597 - t412;
t746 = -Icges(4,2) * t577 + t566;
t413 = Icges(4,6) * t597 + t600 * t746;
t1043 = -t504 * t600 - t413;
t953 = Icges(4,4) * t577;
t505 = Icges(4,1) * t579 - t953;
t415 = Icges(4,5) * t597 + t505 * t600;
t502 = Icges(4,2) * t579 + t953;
t1042 = -t502 * t600 + t415;
t1041 = -t502 + t505;
t1040 = t504 + t746;
t592 = t600 ^ 2;
t1039 = t597 ^ 2 + t592;
t855 = qJD(1) * t600;
t810 = t855 / 0.2e1;
t907 = t579 * t590;
t814 = t907 / 0.2e1;
t1038 = t577 * t810 + t597 * t814;
t1037 = t600 * t814 - t826 / 0.2e1;
t904 = t590 * t597;
t662 = t577 * t855 + t579 * t904;
t846 = qJD(1) * qJD(2);
t1036 = qJD(1) * qJD(3) + t846;
t865 = rSges(4,2) * t909 + t600 * rSges(4,3);
t418 = rSges(4,1) * t906 - t865;
t508 = rSges(4,1) * t577 + rSges(4,2) * t579;
t209 = -qJD(1) * t418 - t530 * t508 - t1031;
t1033 = 0.2e1 * qJD(2);
t1032 = -rSges(5,3) - pkin(5);
t586 = Icges(3,4) * t599;
t747 = -Icges(3,2) * t596 + t586;
t535 = Icges(3,1) * t596 + t586;
t363 = t405 * t597;
t687 = t759 * t579;
t968 = rSges(5,3) * t577;
t406 = t687 + t968;
t485 = t512 * t856;
t480 = t512 * t597;
t782 = qJD(1) * t480 - t530 * t513;
t820 = t579 * t851;
t853 = qJD(4) * t577;
t1026 = t294 * t853 - t363 * t550 + t456 * t406 + t485 - t782 + (-t820 + t856) * t405;
t778 = -qJD(4) + t857;
t1020 = t597 * t778 + t837;
t704 = t598 * t550;
t262 = t1020 * t595 + t600 * t704;
t703 = t550 * t595;
t263 = -t1020 * t598 + t600 * t703;
t831 = t263 * rSges(5,1) + t262 * rSges(5,2) + rSges(5,3) * t835;
t163 = -rSges(5,3) * t826 + t831;
t838 = t577 * t904;
t264 = t597 * t704 + (-t600 * t778 + t838) * t595;
t910 = t577 * t590;
t265 = t778 * t898 + (-t598 * t910 + t703) * t597;
t761 = rSges(5,1) * t265 + rSges(5,2) * t264;
t164 = rSges(5,3) * t662 + t761;
t1022 = t600 * t163 + t597 * t164 + t294 * t855;
t969 = rSges(4,1) * t579;
t509 = -rSges(4,2) * t577 + t969;
t647 = rSges(4,3) * t597 + t509 * t600;
t964 = pkin(1) * qJD(2);
t840 = t599 * t964;
t863 = t1039 * t840;
t177 = t529 * t418 + t530 * t647 + t863;
t635 = qJD(1) * t647;
t897 = t599 * t600;
t565 = pkin(1) * t897;
t556 = qJD(1) * t565;
t841 = t596 * t964;
t702 = t597 * t841 - t556;
t208 = t508 * t529 - t635 + t702;
t478 = t508 * t597;
t479 = t508 * t600;
t1021 = -t209 * (qJD(1) * t478 - t530 * t509) - t177 * (-t529 * t478 - t479 * t530) + t208 * (-qJD(1) * t479 - t509 * t529);
t899 = t597 * t599;
t902 = t596 * t597;
t936 = Icges(3,3) * t600;
t449 = Icges(3,5) * t899 - Icges(3,6) * t902 - t936;
t560 = Icges(3,4) * t902;
t946 = Icges(3,5) * t600;
t453 = Icges(3,1) * t899 - t560 - t946;
t940 = Icges(3,6) * t600;
t451 = Icges(3,4) * t899 - Icges(3,2) * t902 - t940;
t918 = t451 * t596;
t713 = -t453 * t599 + t918;
t191 = -t449 * t600 - t597 * t713;
t1018 = t600 * t780 - t838;
t501 = Icges(4,5) * t579 - Icges(4,6) * t577;
t500 = Icges(4,5) * t577 + Icges(4,6) * t579;
t914 = t500 * t600;
t920 = t413 * t577;
t935 = Icges(4,3) * t600;
t1017 = -t590 * t914 + (-t415 * t579 - t501 * t597 + t920 + t935) * qJD(1);
t546 = Icges(4,4) * t909;
t945 = Icges(4,5) * t600;
t414 = Icges(4,1) * t906 - t546 - t945;
t715 = t412 * t577 - t414 * t579;
t411 = Icges(4,3) * t597 + t501 * t600;
t861 = qJD(1) * t411;
t915 = t500 * t597;
t1016 = qJD(1) * t715 - t590 * t915 + t861;
t532 = Icges(3,5) * t599 - Icges(3,6) * t596;
t531 = Icges(3,5) * t596 + Icges(3,6) * t599;
t672 = qJD(2) * t531;
t954 = Icges(3,4) * t596;
t536 = Icges(3,1) * t599 - t954;
t454 = Icges(3,5) * t597 + t536 * t600;
t452 = Icges(3,6) * t597 + t600 * t747;
t917 = t452 * t596;
t712 = -t454 * t599 + t917;
t1015 = -t600 * t672 + (-t532 * t597 + t712 + t936) * qJD(1);
t450 = Icges(3,3) * t597 + t532 * t600;
t860 = qJD(1) * t450;
t1014 = qJD(1) * t713 - t597 * t672 + t860;
t711 = t502 * t577 - t504 * t579;
t1013 = qJD(1) * t711 + t501 * t590;
t533 = Icges(3,2) * t599 + t954;
t710 = t533 * t596 - t535 * t599;
t1012 = t710 * qJD(1) + t532 * qJD(2);
t1011 = t597 * (-t533 * t600 + t454) - t600 * (-Icges(3,2) * t899 + t453 - t560);
t709 = t597 * t1023;
t205 = -t1018 * t576 + t578 * t709;
t206 = t1018 * t578 + t576 * t709;
t757 = rSges(6,1) * t206 + rSges(6,2) * t205;
t144 = rSges(6,3) * t662 + t757;
t484 = t970 * t579;
t523 = pkin(2) * t838;
t179 = -t572 * t838 + t523 - t484 * t855 + (-qJD(4) * t486 + t595 * t856) * pkin(3);
t1010 = t1046 * t855 + t1055 * t600 + (t144 + t179) * t597;
t676 = t739 * t579;
t717 = -t377 * t576 + t379 * t578;
t722 = -t250 * t576 + t253 * t578;
t1009 = t384 * (-t375 * t600 - t722) - t385 * (-t375 * t597 + t1054) + t1023 * (Icges(6,3) * t577 + t676 - t717);
t742 = -Icges(6,2) * t578 - t948;
t1008 = t384 * (-Icges(6,2) * t438 + t253 + t424) - t385 * (-Icges(6,2) * t436 - t252 - t422) + t1023 * (t742 * t577 + t379);
t677 = t741 * t579;
t716 = -t400 * t595 + t402 * t598;
t720 = -t289 * t595 + t292 * t598;
t1007 = t455 * (-t398 * t600 - t720) - t456 * (-t398 * t597 + t1053) + t550 * (Icges(5,3) * t577 + t677 - t716);
t744 = -Icges(5,2) * t598 - t951;
t1006 = t455 * (-Icges(5,2) * t489 + t292 + t463) - t456 * (-Icges(5,2) * t487 - t291 - t461) + t550 * (t744 * t577 + t402);
t1005 = qJD(1) * t1040 + t529 * t1042 - t530 * (-Icges(4,2) * t906 + t414 - t546);
t510 = t1036 * t597;
t812 = qJD(1) * t853;
t347 = t590 * t820 + t600 * t812 + t510;
t227 = qJD(5) * t662 + t347;
t1004 = t227 / 0.2e1;
t511 = t1036 * t600;
t819 = t579 * t850;
t827 = t590 * t819 + t511;
t228 = qJD(5) * t835 - t589 * t826 + t827;
t1003 = t228 / 0.2e1;
t1002 = t347 / 0.2e1;
t348 = -t597 * t812 + t827;
t1001 = t348 / 0.2e1;
t1000 = -t384 / 0.2e1;
t999 = t384 / 0.2e1;
t998 = -t385 / 0.2e1;
t997 = t385 / 0.2e1;
t996 = -t455 / 0.2e1;
t995 = t455 / 0.2e1;
t994 = -t456 / 0.2e1;
t993 = t456 / 0.2e1;
t992 = -t1023 / 0.2e1;
t991 = t1023 / 0.2e1;
t990 = t510 / 0.2e1;
t989 = t511 / 0.2e1;
t988 = -t529 / 0.2e1;
t987 = t529 / 0.2e1;
t986 = -t530 / 0.2e1;
t985 = t530 / 0.2e1;
t984 = -t550 / 0.2e1;
t983 = t550 / 0.2e1;
t982 = -t579 / 0.2e1;
t981 = t597 / 0.2e1;
t980 = -t600 / 0.2e1;
t979 = -rSges(6,3) - pkin(5);
t978 = pkin(1) * t596;
t977 = pkin(1) * t599;
t972 = -qJD(1) / 0.2e1;
t971 = qJD(1) / 0.2e1;
t966 = rSges(6,3) * t577;
t138 = Icges(6,5) * t206 + Icges(6,6) * t205 + Icges(6,3) * t662;
t140 = Icges(6,4) * t206 + Icges(6,2) * t205 + Icges(6,6) * t662;
t142 = Icges(6,1) * t206 + Icges(6,4) * t205 + Icges(6,5) * t662;
t39 = (-t1054 * t590 - t138) * t579 + (t245 * t590 + (-t248 * t589 + t142) * t578 + (t252 * t589 - t140) * t576) * t577;
t963 = t39 * t385;
t661 = -t826 + t835;
t137 = Icges(6,5) * t204 + Icges(6,6) * t203 + Icges(6,3) * t661;
t139 = Icges(6,4) * t204 + Icges(6,2) * t203 + Icges(6,6) * t661;
t141 = Icges(6,1) * t204 + Icges(6,4) * t203 + Icges(6,5) * t661;
t40 = (t590 * t722 - t137) * t579 + (t247 * t590 + (-t250 * t589 + t141) * t578 + (-t253 * t589 - t139) * t576) * t577;
t962 = t40 * t384;
t158 = Icges(5,5) * t265 + Icges(5,6) * t264 + Icges(5,3) * t662;
t160 = Icges(5,4) * t265 + Icges(5,2) * t264 + Icges(5,6) * t662;
t162 = Icges(5,1) * t265 + Icges(5,4) * t264 + Icges(5,5) * t662;
t47 = (-t1053 * t590 - t158) * t579 + (-t160 * t595 + t162 * t598 + t284 * t590 + (-t287 * t598 + t291 * t595) * qJD(4)) * t577;
t961 = t47 * t456;
t157 = Icges(5,5) * t263 + Icges(5,6) * t262 + Icges(5,3) * t661;
t159 = Icges(5,4) * t263 + Icges(5,2) * t262 + Icges(5,6) * t661;
t161 = Icges(5,1) * t263 + Icges(5,4) * t262 + Icges(5,5) * t661;
t48 = (t590 * t720 - t157) * t579 + (-t159 * t595 + t161 * t598 + t286 * t590 + (-t289 * t598 - t292 * t595) * qJD(4)) * t577;
t960 = t48 * t455;
t959 = t600 * rSges(3,3);
t168 = -t375 * t579 + t577 * t717;
t499 = t589 * t577;
t439 = t590 * t499;
t738 = -Icges(6,5) * t576 - Icges(6,6) * t578;
t197 = t590 * t676 + (Icges(6,3) * t590 + t589 * t738) * t577;
t678 = t743 * t579;
t198 = t590 * t678 + (Icges(6,6) * t590 + t589 * t742) * t577;
t680 = t749 * t579;
t748 = -Icges(6,1) * t576 - t947;
t199 = t590 * t680 + (Icges(6,5) * t590 + t589 * t748) * t577;
t84 = (t590 * t717 - t197) * t579 + (t375 * t590 + (-t377 * t589 + t199) * t578 + (-t379 * t589 - t198) * t576) * t577;
t958 = t1023 * t84 + t168 * t439;
t170 = -t398 * t579 + t577 * t716;
t821 = t590 * t853;
t740 = -Icges(5,5) * t595 - Icges(5,6) * t598;
t235 = t590 * t677 + (Icges(5,3) * t590 + qJD(4) * t740) * t577;
t679 = t745 * t579;
t236 = t590 * t679 + (Icges(5,6) * t590 + qJD(4) * t744) * t577;
t681 = t751 * t579;
t750 = -Icges(5,1) * t595 - t950;
t237 = t590 * t681 + (Icges(5,5) * t590 + qJD(4) * t750) * t577;
t91 = (t590 * t716 - t235) * t579 + (-t236 * t595 + t237 * t598 + t398 * t590 + (-t400 * t598 - t402 * t595) * qJD(4)) * t577;
t957 = t170 * t821 + t91 * t550;
t930 = t121 * t227;
t122 = -t247 * t579 + t577 * t722;
t929 = t122 * t228;
t926 = t131 * t347;
t132 = -t286 * t579 + t577 * t720;
t925 = t132 * t348;
t922 = t177 * t597;
t410 = Icges(4,5) * t906 - Icges(4,6) * t909 - t935;
t921 = t410 * t600;
t913 = t531 * t597;
t912 = t531 * t600;
t911 = t572 * t579;
t901 = t596 * t600;
t686 = t755 * t579;
t754 = -rSges(6,1) * t576 - rSges(6,2) * t578;
t202 = t590 * t686 + (rSges(6,3) * t590 + t589 * t754) * t577;
t351 = -t484 * t590 - t577 * t839;
t893 = -t202 - t351;
t758 = -rSges(5,1) * t595 - rSges(5,2) * t598;
t241 = t590 * t687 + (rSges(5,3) * t590 + qJD(4) * t758) * t577;
t448 = t513 * t590;
t892 = -t241 - t448;
t885 = -t597 * t410 - t414 * t905;
t884 = t597 * t411 + t415 * t905;
t881 = -t386 + t483;
t880 = t597 * t418 + t600 * t647;
t879 = -t597 * t449 - t453 * t897;
t878 = t597 * t450 + t454 * t897;
t876 = -t405 - t512;
t873 = t597 * t481 + t513 * t592;
t868 = rSges(4,2) * t826 + rSges(4,3) * t855;
t867 = -t533 + t536;
t866 = t535 + t747;
t862 = t1039 * t977;
t762 = rSges(3,1) * t599 - rSges(3,2) * t596;
t460 = rSges(3,3) * t597 + t600 * t762;
t859 = qJD(1) * t460;
t858 = qJD(1) * t532;
t224 = -t597 * t711 - t914;
t848 = t224 * qJD(1);
t310 = -t597 * t710 - t912;
t847 = t310 * qJD(1);
t843 = t577 * t975;
t833 = -t448 + t893;
t663 = -t579 * t856 - t837;
t275 = rSges(4,1) * t663 - rSges(4,2) * t835 + t868;
t276 = -t478 * t590 + t635;
t832 = t600 * t275 + t597 * t276 + t418 * t855;
t524 = pkin(5) * t835;
t308 = pkin(2) * t663 - pkin(5) * t826 + t524;
t309 = pkin(5) * t662 + qJD(1) * t844 - t523;
t830 = t600 * t308 + t597 * t309 + t481 * t855;
t354 = t386 * t856;
t829 = -t483 * t856 + t354 + t485;
t828 = -t512 + t881;
t296 = t489 * rSges(5,1) + t488 * rSges(5,2) + rSges(5,3) * t908;
t824 = t596 * t855;
t537 = rSges(3,1) * t596 + rSges(3,2) * t599;
t823 = t537 * t575;
t822 = t537 * t854;
t698 = t513 * t600;
t636 = t529 * t481 + t530 * t698 + t863;
t114 = t455 * t294 + t456 * t296 + t636;
t818 = t114 * qJD(1) * t296;
t817 = t910 / 0.2e1;
t816 = t909 / 0.2e1;
t815 = t908 / 0.2e1;
t811 = t856 / 0.2e1;
t809 = -t575 / 0.2e1;
t806 = t854 / 0.2e1;
t804 = -t508 - t978;
t803 = -t512 - t978;
t93 = t384 * t256 + t385 * t258 - t455 * t371 + t456 * t372 + t636;
t802 = t93 * t1045;
t800 = t596 * t1039;
t306 = -rSges(6,1) * t435 - rSges(6,2) * t436;
t307 = rSges(6,1) * t437 - rSges(6,2) * t438;
t799 = t384 * t306 + t307 * t385;
t431 = t754 * t577;
t798 = t1023 * t307 - t384 * t431;
t797 = (-t597 * t746 + t939) * qJD(1) + t1042 * t590;
t796 = qJD(1) * t413 + t414 * t590 - t502 * t904;
t795 = (-t505 * t597 + t945) * qJD(1) + t1043 * t590;
t794 = qJD(1) * t415 + t1044 * t590;
t793 = -t1023 * t306 - t385 * t431;
t367 = t415 * t906;
t792 = t411 * t600 - t367;
t482 = t512 * t600;
t791 = -t529 * t480 - t482 * t530;
t395 = t454 * t899;
t789 = t450 * t600 - t395;
t788 = -t410 + t920;
t787 = t1040 * t590;
t786 = t1041 * t590;
t785 = -qJD(1) * t482 - t513 * t529;
t784 = -t449 + t917;
t777 = qJD(1) * t841;
t776 = t597 * t294 + t600 * t296 + t873;
t601 = qJD(2) ^ 2;
t773 = (-qJD(1) ^ 2 - t601) * t977;
t770 = -t405 + t803;
t444 = t509 * t590;
t767 = -t444 - t840;
t766 = -t448 - t840;
t765 = qJD(1) * t802;
t764 = -t969 - t977;
t737 = t109 * t600 - t110 * t597;
t736 = t109 * t597 + t110 * t600;
t735 = t111 * t600 - t112 * t597;
t734 = t111 * t597 + t112 * t600;
t733 = t121 * t600 - t122 * t597;
t732 = t121 * t597 + t122 * t600;
t731 = t123 * t600 - t124 * t597;
t730 = t123 * t597 + t124 * t600;
t729 = t125 * t600 - t126 * t597;
t728 = t125 * t597 + t126 * t600;
t727 = t131 * t600 - t132 * t597;
t726 = t131 * t597 + t132 * t600;
t650 = -qJD(1) * t698 + t512 * t529 + t702;
t135 = -t550 * t296 + t405 * t455 + t650;
t725 = t135 * t597 - t136 * t600;
t724 = t208 * t597 - t209 * t600;
t719 = t294 * t600 - t296 * t597;
t349 = t823 - t859;
t459 = rSges(3,1) * t899 - rSges(3,2) * t902 - t959;
t350 = -qJD(1) * t459 - t822;
t718 = t349 * t597 - t350 * t600;
t232 = t412 * t579 + t414 * t577;
t298 = t451 * t599 + t453 * t596;
t299 = t452 * t599 + t454 * t596;
t707 = t601 * pkin(1) * t800;
t705 = t803 + t881;
t701 = -t241 + t766;
t700 = t1032 * t577 - t976;
t699 = t1045 * t600 + t1046 * t597 + t873;
t685 = t766 + t893;
t683 = qJD(2) * t537;
t682 = -t106 * t483 - t802;
t675 = t715 * t597;
t674 = qJD(2) * t535;
t673 = qJD(2) * t533;
t192 = -t452 * t902 - t789;
t671 = (-t191 * t600 + t192 * t597) * qJD(2);
t193 = -t451 * t901 - t879;
t194 = -t452 * t901 + t878;
t670 = (-t193 * t600 + t194 * t597) * qJD(2);
t283 = (t459 * t597 + t460 * t600) * qJD(2);
t669 = 0.2e1 * t597 * t777 + t600 * t773;
t668 = t597 * t773 - 0.2e1 * t600 * t777;
t667 = t93 * t481;
t666 = t572 * t910 + t841;
t665 = -t966 - t973 - t977;
t664 = t114 * t481;
t659 = -t284 * t456 + t286 * t455 + t398 * t550;
t658 = (-Icges(6,5) * t435 - Icges(6,6) * t436) * t385 - (Icges(6,5) * t437 - Icges(6,6) * t438) * t384 - t738 * t577 * t1023;
t657 = (-Icges(5,5) * t486 - Icges(5,6) * t487) * t456 - (Icges(5,5) * t488 - Icges(5,6) * t489) * t455 - t740 * t577 * t550;
t655 = qJD(1) * t501 - t529 * t914 + t530 * t915;
t654 = t451 * t600 - t452 * t597;
t651 = t1039 * t841;
t649 = t577 * t658;
t648 = t577 * t657;
t638 = (-t596 * t866 + t599 * t867) * qJD(1);
t637 = rSges(4,1) * t910 + rSges(4,2) * t907 + t841;
t633 = -qJD(1) * t309 - t530 * t448 + t510 * t512 + t669;
t632 = -t651 + t830;
t630 = (Icges(6,1) * t437 - t250 - t949) * t384 - (-Icges(6,1) * t435 - t248 - t423) * t385 + (t748 * t577 - t377) * t1023;
t628 = (Icges(5,1) * t488 - t289 - t952) * t455 - (-Icges(5,1) * t486 - t287 - t462) * t456 + (t750 * t577 - t400) * t550;
t625 = qJD(1) * t1041 + t1043 * t529 - t1044 * t530;
t622 = qJD(1) * t308 - t448 * t529 - t511 * t512 + t668;
t32 = t138 * t908 + t140 * t437 + t142 * t438 + t203 * t248 - t204 * t252 + t245 * t661;
t33 = t137 * t908 + t139 * t437 + t141 * t438 + t203 * t250 + t204 * t253 + t247 * t661;
t34 = t138 * t909 - t140 * t435 + t142 * t436 + t205 * t248 - t206 * t252 + t245 * t662;
t35 = t137 * t909 - t139 * t435 + t141 * t436 + t205 * t250 + t206 * t253 + t247 * t662;
t64 = t1023 * t168 - t121 * t385 + t122 * t384;
t72 = t197 * t908 + t198 * t437 + t199 * t438 + t203 * t377 + t204 * t379 + t375 * t661;
t7 = t1023 * t72 + t111 * t227 + t112 * t228 + t147 * t439 - t32 * t385 + t33 * t384;
t73 = t197 * t909 - t198 * t435 + t199 * t436 + t205 * t377 + t206 * t379 + t375 * t662;
t8 = t1023 * t73 + t109 * t227 + t110 * t228 + t146 * t439 - t34 * t385 + t35 * t384;
t621 = ((t590 * t734 - t72) * t579 + (qJD(1) * t735 + t147 * t590 + t32 * t597 + t33 * t600) * t577) * t999 + (t929 + t930 + t958 + t962 - t963) * t982 + ((t590 * t736 - t73) * t579 + (qJD(1) * t737 + t146 * t590 + t34 * t597 + t35 * t600) * t577) * t998 + t8 * t816 + (t1008 * t437 + t630 * t438 - t600 * t649) * t1000 + (-t1008 * t435 + t436 * t630 - t597 * t649) * t997 + (t658 * t579 + (-t1008 * t576 + t578 * t630) * t577) * t992 + t7 * t815 + (-t146 * t579 + t577 * t736) * t1004 + (-t147 * t579 + t577 * t734) * t1003 + t64 * t817 + t439 * (-t168 * t579 + t577 * t732) / 0.2e1 + ((t590 * t732 - t84) * t579 + (qJD(1) * t733 + t168 * t590 + t39 * t597 + t40 * t600) * t577) * t991 + t1037 * t61 + t1038 * t60;
t620 = qJD(1) * t410 - t577 * t796 + t579 * t794;
t619 = -t577 * t797 + t579 * t795 + t861;
t618 = qJD(1) * t500 - t577 * t787 + t579 * t786;
t318 = qJD(1) * t452 - t597 * t673;
t320 = qJD(1) * t454 - t597 * t674;
t615 = qJD(1) * t449 - qJD(2) * t298 - t318 * t596 + t320 * t599;
t317 = -t600 * t673 + (-t597 * t747 + t940) * qJD(1);
t319 = -t600 * t674 + (-t536 * t597 + t946) * qJD(1);
t614 = -qJD(2) * t299 - t317 * t596 + t319 * t599 + t860;
t517 = t747 * qJD(2);
t518 = t536 * qJD(2);
t613 = qJD(1) * t531 - t517 * t596 + t518 * t599 + (-t533 * t599 - t535 * t596) * qJD(2);
t612 = t530 * t308 + t529 * t309 + t511 * t481 - t510 * t698 - t707;
t343 = t386 * t597;
t387 = t686 + t966;
t416 = t577 * t813;
t457 = t597 * t779;
t611 = t1023 * t343 - t256 * t499 + t371 * t853 - t385 * t387 + t457 * t386 - t416 * t550 + t456 * t484 - t483 * t820 + t782;
t105 = -t1023 * t258 - t550 * t372 + t384 * t386 - t455 * t483 + t650;
t27 = t385 * t143 + t384 * t144 + t456 * t178 + t455 * t179 - t227 * t258 + t228 * t256 - t347 * t372 - t348 * t371 + t612;
t41 = -t1023 * t144 - t179 * t550 - t202 * t385 + t227 * t386 - t256 * t439 - t347 * t483 - t351 * t456 + t371 * t821 + t633;
t610 = t106 * (t579 * t144 + t202 * t909 + t386 * t662) + t27 * t256 * t908 + t41 * (t579 * t256 + t386 * t909) + t93 * (t144 * t908 + t256 * t835) - t105 * (t258 * t910 + t577 * t354);
t609 = -t1011 * t596 + t654 * t599;
t608 = t1007 * t577;
t607 = -t1005 * t577 + t625 * t579;
t364 = t405 * t600;
t606 = t114 * (t294 * t819 - t296 * t820 - t455 * t363 - t364 * t456 + t791) - t135 * (t296 * t853 - t550 * t364 - t405 * t819 - t406 * t455 + t785);
t605 = (t1023 * t375 - t245 * t385 + t247 * t384) * t579 + t1009 * t577;
t171 = -t675 - t921;
t172 = -t413 * t909 - t792;
t107 = -t171 * t530 + t172 * t529 + t848;
t173 = -t412 * t908 - t885;
t174 = -t413 * t908 + t884;
t225 = -t600 * t711 + t915;
t222 = t225 * qJD(1);
t108 = -t173 * t530 + t174 * t529 + t222;
t119 = t1013 * t597 + t618 * t600;
t120 = -t1013 * t600 + t618 * t597;
t127 = t577 * t794 + t579 * t796;
t128 = t577 * t795 + t579 * t797;
t43 = t158 * t908 + t160 * t488 + t162 * t489 + t262 * t287 - t263 * t291 + t284 * t661;
t44 = t157 * t908 + t159 * t488 + t161 * t489 + t262 * t289 + t263 * t292 + t286 * t661;
t82 = t235 * t908 + t236 * t488 + t237 * t489 + t262 * t400 + t263 * t402 + t398 * t661;
t13 = t125 * t347 + t126 * t348 + t167 * t821 - t43 * t456 + t44 * t455 + t550 * t82;
t45 = t158 * t909 - t160 * t486 + t162 * t487 + t264 * t287 - t265 * t291 + t284 * t662;
t46 = t157 * t909 - t159 * t486 + t161 * t487 + t264 * t289 + t265 * t292 + t286 * t662;
t83 = t235 * t909 - t236 * t486 + t237 * t487 + t264 * t400 + t265 * t402 + t398 * t662;
t14 = t123 * t347 + t124 * t348 + t166 * t821 - t45 * t456 + t455 * t46 + t550 * t83;
t233 = t413 * t579 + t415 * t577;
t339 = t377 * t597;
t340 = t377 * t600;
t341 = t379 * t597;
t342 = t379 * t600;
t357 = t400 * t597;
t358 = t400 * t600;
t359 = t402 * t597;
t360 = t402 * t600;
t378 = Icges(6,6) * t577 + t678;
t380 = Icges(6,5) * t577 + t680;
t401 = Icges(5,6) * t577 + t679;
t403 = Icges(5,5) * t577 + t681;
t458 = t600 * t779;
t78 = -t131 * t456 + t132 * t455 + t170 * t550;
t94 = t1016 * t597 + t620 * t600;
t95 = t1017 * t597 + t619 * t600;
t96 = -t1016 * t600 + t620 * t597;
t97 = -t1017 * t600 + t619 * t597;
t604 = (qJD(1) * t120 + t171 * t510 + t172 * t511 + t529 * t97 - t530 * t96 + t14 + t8) * t980 - t78 * t853 / 0.2e1 - t727 * t821 / 0.2e1 + ((t340 * t435 - t342 * t436) * t384 + t110 * t458 - (t339 * t435 - t341 * t436) * t385 + t109 * t457 + (-t378 * t435 + t380 * t436) * t1023 + t146 * t499 + t605 * t597) * t997 + ((-t340 * t437 - t342 * t438) * t384 + t112 * t458 - (-t339 * t437 - t341 * t438) * t385 + t111 * t457 + (t378 * t437 + t380 * t438) * t1023 + t147 * t499 + t605 * t600) * t1000 + (t121 * t457 + t122 * t458 + t168 * t499 - t1009 * t579 + ((t340 * t576 - t342 * t578 + t247) * t384 - (t339 * t576 - t341 * t578 + t245) * t385 + (-t378 * t576 + t380 * t578 + t375) * t1023) * t577) * t992 + (qJD(1) * t119 + t173 * t510 + t174 * t511 + t529 * t95 - t530 * t94 + t13 + t7) * t981 - (t597 * t69 + t600 * t70) * t852 / 0.2e1 + (t108 + t70 + t61) * t810 - t457 * t60 / 0.2e1 - t458 * t61 / 0.2e1 + (t107 + t69 + t60) * t811 + (t1005 * t579 + t625 * t577) * t972 - t499 * t64 / 0.2e1 - t228 * t735 / 0.2e1 - t227 * t737 / 0.2e1 - t348 * t729 / 0.2e1 - t347 * t731 / 0.2e1 - t439 * t733 / 0.2e1 + (-t127 * t600 + t128 * t597 + (t232 * t597 + t233 * t600) * qJD(1)) * t971 + (((t358 * t595 - t360 * t598 + t286) * t455 - (t357 * t595 - t359 * t598 + t284) * t456 + (-t401 * t595 + t403 * t598 + t398) * t550 + t170 * qJD(4)) * t577 + (qJD(4) * t726 - t1007) * t579) * t984 + ((t358 * t486 - t360 * t487) * t455 - (t357 * t486 - t359 * t487) * t456 + (-t401 * t486 + t403 * t487) * t550 + (t124 * t905 + t166 * t577) * qJD(4) + ((qJD(4) * t123 + t659) * t579 + t608) * t597) * t993 + ((-t358 * t488 - t360 * t489) * t455 - (-t357 * t488 - t359 * t489) * t456 + (t401 * t488 + t403 * t489) * t550 + (t125 * t906 + t167 * t577) * qJD(4) + ((qJD(4) * t126 + t659) * t579 + t608) * t600) * t996 + (qJD(1) * t726 - t47 * t600 + t48 * t597) * t983 + (t597 * t607 - t600 * t655) * t985 + (t597 * t97 - t600 * t96 + (t171 * t597 + t172 * t600) * qJD(1)) * t986 + (t597 * t95 - t600 * t94 + (t173 * t597 + t174 * t600) * qJD(1)) * t987 + (t597 * t655 + t600 * t607) * t988 + (-t173 * t600 + t174 * t597) * t989 + (-t171 * t600 + t172 * t597) * t990 + (qJD(1) * t732 - t39 * t600 + t40 * t597) * t991 + (qJD(1) * t730 - t45 * t600 + t46 * t597) * t994 + (qJD(1) * t728 - t43 * t600 + t44 * t597) * t995 + (qJD(1) * t736 - t34 * t600 + t35 * t597) * t998 + (qJD(1) * t734 - t32 * t600 + t33 * t597) * t999;
t344 = t386 * t600;
t603 = t93 * (t458 * t256 - t258 * t457 - t384 * t343 - t344 * t385 - t371 * t819 - t372 * t820 + t455 * t416 + t417 * t456 + t791) - t105 * (-t1023 * t344 + t499 * t258 + t372 * t853 - t384 * t387 - t386 * t458 + t550 * t417 + t455 * t484 + t483 * t819 + t785);
t521 = t762 * qJD(2);
t498 = t537 * t600;
t497 = t537 * t597;
t477 = t758 * t577;
t465 = t488 * pkin(3);
t464 = t486 * pkin(3);
t333 = rSges(5,1) * t488 - rSges(5,2) * t489;
t332 = -rSges(5,1) * t486 - rSges(5,2) * t487;
t322 = -t597 * t683 + t859;
t321 = -t600 * t683 + (-t597 * t762 + t959) * qJD(1);
t311 = -t600 * t710 + t913;
t297 = t311 * qJD(1);
t189 = -t521 * t575 + (t321 - t822) * qJD(1);
t188 = -t521 * t854 + (-t322 + t823) * qJD(1);
t153 = -t1012 * t600 + t613 * t597;
t152 = t1012 * t597 + t613 * t600;
t151 = -qJD(2) * t712 + t317 * t599 + t319 * t596;
t150 = -qJD(2) * t713 + t318 * t599 + t320 * t596;
t149 = qJD(1) * t275 - t444 * t529 - t508 * t511 + t668;
t148 = -qJD(1) * t276 - t444 * t530 + t508 * t510 + t669;
t116 = t297 + t670;
t115 = t671 + t847;
t113 = t530 * t275 + t529 * t276 + t511 * t418 - t510 * t647 - t707;
t80 = t163 * t550 - t241 * t455 + t296 * t821 - t348 * t405 + t622;
t79 = -t164 * t550 - t241 * t456 - t294 * t821 + t347 * t405 + t633;
t51 = t456 * t163 + t455 * t164 + t348 * t294 - t347 * t296 + t612;
t42 = t1023 * t143 + t178 * t550 - t202 * t384 - t228 * t386 + t258 * t439 + t348 * t483 - t351 * t455 + t372 * t821 + t622;
t1 = [m(4) * (t148 * t865 - t209 * t556 + t149 * t565 - t208 * t868 + (t208 * t637 + (-qJD(1) * t209 + t149) * t509) * t600 + (t148 * t764 + t209 * t637 + t149 * rSges(4,3) + (-t209 * rSges(4,3) - t208 * t764) * qJD(1)) * t597) + (-qJD(2) * t710 + t517 * t599 + t518 * t596 + t577 * t786 + t579 * t787) * qJD(1) + (-t847 + ((t600 * t784 + t194 - t878) * t600 + (t597 * t784 + t193 + t789) * t597) * qJD(2) + t115) * t809 + ((t299 + t311) * t600 + (t298 + t310) * t597) * t846 / 0.2e1 - (t150 + t153 + t116) * t854 / 0.2e1 + (t151 + t152) * t575 / 0.2e1 + (t120 + t108 + t127) * t986 + (t297 + ((t192 - t395 + (t450 + t918) * t600 + t879) * t600 + t878 * t597) * qJD(2)) * t806 + t930 / 0.2e1 + t929 / 0.2e1 + (-t848 + (t174 - t675 - t884) * t530 + (t597 * t788 + t173 - t367) * t529 + ((t411 + t715) * t529 + t788 * t530) * t600 + t107) * t988 + m(6) * (t41 * (-t506 + t756) + t106 * (-t556 - t757) + t42 * (t565 + t258 + t869) - t105 * (t524 + t834 + t864) + (t42 * t973 + t105 * t666 + (t41 * t595 + (t105 * t579 * t595 + t106 * t598) * qJD(4)) * pkin(3) + t106 * (t577 * t979 - t911) * qJD(1)) * t600 + (t41 * t665 - t105 * (t665 - t911) * qJD(1) + (t666 + (t590 * t979 + t839) * t579 - t975 * qJD(1)) * t106) * t597) + (t225 + t233) * t989 + t962 / 0.2e1 - t963 / 0.2e1 - t961 / 0.2e1 + (t79 * t760 + t136 * (t523 - t556 - t761) + t80 * (t565 + t296) + (t136 * t700 * qJD(1) + t80 * t513) * t600 + (t79 * (-t513 - t968 - t977) + t136 * (t1032 * t907 + t841)) * t597 + (-t524 - t831 + (pkin(2) * t910 + t841) * t600 - (t700 - t977) * t856) * t135) * m(5) + t960 / 0.2e1 + t926 / 0.2e1 + t957 + t958 + t925 / 0.2e1 + m(3) * (-t188 * t459 + t189 * t460 - t321 * t349 - t322 * t350) + (t119 + t128) * t987 + t61 * t997 + t70 * t993 + (t73 + t61) * t998 + (t222 + (t172 + (t412 * t600 + t413 * t597) * t577 + t792 + t885) * t530 + (-t414 * t906 + t921 + t171 + (t412 * t597 - t413 * t600) * t577 + t884) * t529) * t985 + t82 * t995 + t72 * t999 + t167 * t1001 + t166 * t1002 + t147 * t1003 + t146 * t1004 + (t224 + t232) * t990 + (t83 + t70) * t994; t604 + (-t150 * t600 + t151 * t597 + (t298 * t597 + t299 * t600) * qJD(1)) * t971 + ((t596 * t867 + t599 * t866) * qJD(1) + (t1011 * t599 + t654 * t596) * qJD(2)) * t972 + ((-t575 * t912 + t858) * t597 + (t638 + (t597 * t913 + t609) * qJD(2)) * t600) * t809 + ((-t854 * t913 - t858) * t600 + (t638 + (t600 * t912 + t609) * qJD(2)) * t597) * t806 + (qJD(1) * t152 + (-(t1014 * t597 + t615 * t600) * t600 + (t1015 * t597 + t614 * t600) * t597 + (t193 * t597 + t194 * t600) * qJD(1)) * t1033) * t981 + (qJD(1) * t153 + (-(-t1014 * t600 + t615 * t597) * t600 + (-t1015 * t600 + t614 * t597) * t597 + (t191 * t597 + t192 * t600) * qJD(1)) * t1033) * t980 + (t671 + t115) * t811 + (t670 + t116) * t810 + (-t106 * t611 - (t105 * t824 + ((t105 * t597 - t106 * t600) * t599 - t93 * t800) * qJD(2)) * pkin(1) - t603 + t106 * t829 + t27 * (t699 + t862) + t93 * (t632 + t1010) + (-t105 * t685 + t42 * t705 - t765) * t597 + (t41 * t705 + t106 * t685 + (-t105 * t705 - t667) * qJD(1)) * t600) * m(6) + (-(t135 * t824 + (-t114 * t800 + t599 * t725) * qJD(2)) * pkin(1) - t606 + t51 * (t776 + t862) + t114 * (t632 + t1022) + (-t135 * t701 + t770 * t80 - t818) * t597 + (t79 * t770 + (-t135 * t770 - t664) * qJD(1)) * t600 + (t600 * t701 + t1026) * t136) * m(5) + (t113 * (t862 + t880) + t177 * (-t651 + t832) + (t149 * t804 - t208 * t767 + (-rSges(4,3) * t922 + t209 * t508) * qJD(1)) * t597 + (t148 * t804 + t209 * t767 + (-t208 * t804 - t509 * t922) * qJD(1)) * t600 - (t208 * t824 + (-t177 * t800 + t599 * t724) * qJD(2)) * pkin(1) + t1021) * m(4) + (-(t349 * t498 + t350 * t497) * qJD(1) - (t283 * (-t497 * t597 - t498 * t600) + t718 * t762) * qJD(2) + 0.2e1 * t283 * (t321 * t600 + t322 * t597 + (t459 * t600 - t460 * t597) * qJD(1)) + t718 * t521 + (-t188 * t600 - t189 * t597 + (t349 * t600 + t350 * t597) * qJD(1)) * t537) * m(3); t604 + (-t603 + t27 * t699 + t93 * (t830 + t1010) + (-t105 * t833 + t42 * t828 - t765) * t597 + (t41 * t828 + (-t105 * t828 - t667) * qJD(1)) * t600 + (t600 * t833 - t611 + t829) * t106) * m(6) + (-t606 + t51 * t776 + t114 * (t830 + t1022) + (-t135 * t892 + t80 * t876 - t818) * t597 + (t79 * t876 + (-t135 * t876 - t664) * qJD(1)) * t600 + (t600 * t892 + t1026) * t136) * m(5) + (t113 * t880 + t177 * (-t597 * t635 + t832) + t724 * t444 + (-t148 * t600 - t149 * t597 + (t208 * t600 + t209 * t597) * qJD(1)) * t508 + t1021) * m(4); ((t590 * t726 - t91) * t579 + (qJD(1) * t727 + t170 * t590 + t47 * t597 + t48 * t600) * t577) * t983 + ((t590 * t728 - t82) * t579 + (qJD(1) * t729 + t167 * t590 + t43 * t597 + t44 * t600) * t577) * t995 + ((t590 * t730 - t83) * t579 + (qJD(1) * t731 + t166 * t590 + t45 * t597 + t46 * t600) * t577) * t994 + t13 * t815 + (t657 * t579 + (-t1006 * t595 + t598 * t628) * t577) * t984 + t621 + t14 * t816 + (t1006 * t488 + t628 * t489 - t600 * t648) * t996 + (t925 + t926 + t957 + t960 - t961) * t982 + (-t166 * t579 + t577 * t730) * t1002 + (-t167 * t579 + t577 * t728) * t1001 + (-t1006 * t486 + t487 * t628 - t597 * t648) * t993 + (qJD(4) * (-t170 * t579 + t577 * t726) + t78) * t817 + t1037 * t70 + t1038 * t69 + ((-t41 * t371 + t106 * t179 - t42 * t1045 + t105 * t1055 + ((-t105 * t881 - t93 * t371) * t600 + t682 * t597) * t590) * t579 + ((-t1046 * t106 - t105 * t372) * t590 + (qJD(1) * t682 - t105 * t893 + t93 * t179 - t27 * t371 + t42 * t881) * t600 + (-t41 * t483 + t106 * t351 - t27 * t1045 - t93 * t1055 + (-t1046 * t93 + t105 * t483) * qJD(1)) * t597) * t577 + t610 - t106 * (t456 * t843 + t464 * t550 + t793) + t105 * (t455 * t843 + t465 * t550 + t798) - t93 * (-t455 * t464 + t456 * t465 + t799)) * m(6) + (-t136 * (-t332 * t550 - t456 * t477) + t135 * (t333 * t550 - t455 * t477) - t114 * (t332 * t455 + t333 * t456) + (t135 * t163 + t136 * t164 + t79 * t294 - t80 * t296 + (t114 * t719 + (t135 * t600 + t136 * t597) * t405) * t590) * t579 + (t136 * (t241 * t597 - t294 * t590) - t135 * (-t241 * t600 + t296 * t590) + t51 * t719 + t114 * (-t163 * t597 + t164 * t600 - t294 * t856 - t296 * t855) + (-qJD(1) * t725 + t79 * t597 - t80 * t600) * t405) * t577) * m(5); t621 + ((-t105 * (-t386 * t530 - t143) + (-t904 * t93 - t42) * t258) * t579 + (-t106 * t256 * t590 + (-qJD(1) * t258 * t93 + t105 * t202 - t386 * t42) * t600 + (-t27 * t258 + t93 * (-qJD(1) * t256 - t143)) * t597) * t577 + t610 + t105 * t798 - t106 * t793 - t799 * t93) * m(6);];
tauc  = t1(:);