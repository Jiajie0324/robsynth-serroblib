% Calculate vector of centrifugal and Coriolis load on the joints for
% S6RPRPRP10
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5]';
% m_mdh [7x1]
%   mass of all robot links (including the base)
% rSges [7x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% Icges [7x6]
%   inertia of all robot links about their respective center of mass, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertiavector2matrix.m)
% 
% Output:
% tauc [6x1]
%   joint torques required to compensate Coriolis and centrifugal load

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 03:32
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S6RPRPRP10_coriolisvecJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(8,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRP10_coriolisvecJ_fixb_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRP10_coriolisvecJ_fixb_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S6RPRPRP10_coriolisvecJ_fixb_slag_vp1: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRPRP10_coriolisvecJ_fixb_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RPRPRP10_coriolisvecJ_fixb_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RPRPRP10_coriolisvecJ_fixb_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 03:31:08
% EndTime: 2019-03-09 03:32:19
% DurationCPUTime: 69.18s
% Computational Cost: add. (16483->1163), mult. (43524->1453), div. (0->0), fcn. (40130->6), ass. (0->572)
t990 = Icges(7,4) + Icges(6,5);
t989 = Icges(6,6) - Icges(7,6);
t1063 = -Icges(7,2) - Icges(6,3);
t496 = sin(qJ(5));
t499 = cos(qJ(5));
t1062 = t496 * t990 + t989 * t499;
t497 = sin(qJ(3));
t500 = cos(qJ(3));
t809 = Icges(6,4) * t496;
t606 = Icges(6,2) * t499 + t809;
t1061 = t497 * t606 + t500 * t989;
t801 = Icges(7,5) * t499;
t609 = Icges(7,1) * t496 - t801;
t1060 = t497 * t609 + t500 * t990;
t798 = Icges(5,6) * t500;
t405 = Icges(5,2) * t497 + t798;
t812 = Icges(4,4) * t500;
t611 = Icges(4,1) * t497 + t812;
t1059 = -t405 - t611;
t484 = Icges(5,6) * t497;
t406 = -Icges(5,2) * t500 + t484;
t813 = Icges(4,4) * t497;
t414 = Icges(4,1) * t500 - t813;
t1058 = t406 - t414;
t412 = -Icges(4,2) * t497 + t812;
t600 = -Icges(5,3) * t497 + t798;
t1037 = -t412 - t600;
t498 = sin(qJ(1));
t501 = cos(qJ(1));
t608 = Icges(4,2) * t500 + t813;
t294 = -Icges(4,6) * t498 + t501 * t608;
t300 = -Icges(4,5) * t498 + t501 * t611;
t599 = Icges(5,3) * t500 + t484;
t301 = Icges(5,5) * t498 + t501 * t599;
t303 = Icges(5,4) * t498 + t405 * t501;
t587 = t301 * t500 + t303 * t497;
t1002 = t294 * t500 + t300 * t497 + t587;
t1057 = t599 + t608;
t408 = Icges(4,5) * t500 - Icges(4,6) * t497;
t607 = Icges(5,4) * t500 - Icges(5,5) * t497;
t1056 = t607 - t408;
t711 = qJD(5) * t497;
t714 = qJD(3) * t501;
t388 = t498 * t711 + t714;
t710 = qJD(5) * t500;
t466 = qJD(1) + t710;
t709 = qJD(5) * t501;
t716 = qJD(3) * t498;
t559 = t497 * t709 - t716;
t783 = t497 * t499;
t458 = Icges(6,4) * t783;
t785 = t496 * t497;
t1016 = Icges(6,1) * t785 + t1060 + t458;
t1017 = -t1062 * t497 + t1063 * t500;
t457 = Icges(7,5) * t785;
t1018 = -Icges(7,3) * t783 - t1061 + t457;
t779 = t498 * t500;
t344 = t496 * t501 + t499 * t779;
t778 = t499 * t501;
t345 = -t496 * t779 + t778;
t784 = t497 * t498;
t907 = t1016 * t345 - t1017 * t784 + t1018 * t344;
t803 = Icges(7,5) * t344;
t180 = Icges(7,1) * t345 + Icges(7,4) * t784 + t803;
t326 = Icges(6,4) * t344;
t183 = Icges(6,1) * t345 + Icges(6,5) * t784 - t326;
t1022 = t180 + t183;
t323 = Icges(7,5) * t345;
t168 = Icges(7,6) * t784 + Icges(7,3) * t344 + t323;
t810 = Icges(6,4) * t345;
t177 = -Icges(6,2) * t344 + Icges(6,6) * t784 + t810;
t1024 = t168 - t177;
t171 = Icges(6,5) * t345 - Icges(6,6) * t344 + Icges(6,3) * t784;
t174 = Icges(7,4) * t345 + Icges(7,2) * t784 + Icges(7,6) * t344;
t951 = t171 + t174;
t962 = t1022 * t345 + t1024 * t344 + t951 * t784;
t777 = t500 * t501;
t342 = t496 * t498 - t499 * t777;
t321 = Icges(7,5) * t342;
t780 = t498 * t499;
t343 = t496 * t777 + t780;
t782 = t497 * t501;
t178 = Icges(7,1) * t343 - Icges(7,4) * t782 + t321;
t324 = Icges(6,4) * t342;
t182 = -Icges(6,1) * t343 + Icges(6,5) * t782 + t324;
t1023 = t178 - t182;
t322 = Icges(7,5) * t343;
t167 = Icges(7,6) * t782 - Icges(7,3) * t342 - t322;
t325 = Icges(6,4) * t343;
t175 = -Icges(6,2) * t342 - Icges(6,6) * t782 + t325;
t952 = t167 + t175;
t1055 = -t1023 * t345 + t952 * t344;
t170 = -Icges(6,5) * t343 + Icges(6,6) * t342 + Icges(6,3) * t782;
t173 = -Icges(7,4) * t343 + Icges(7,2) * t782 - Icges(7,6) * t342;
t950 = t173 + t170;
t994 = -t784 * t950 - t1055;
t921 = t388 * t962 + t466 * t907 - t559 * t994;
t996 = t1023 * t343 - t342 * t952 + t782 * t950;
t802 = Icges(7,5) * t496;
t602 = -Icges(7,3) * t499 + t802;
t898 = (t602 - t606) * t500 + t989 * t497;
t1051 = t1062 * t500 + t1063 * t497;
t604 = Icges(4,5) * t497 + Icges(4,6) * t500;
t288 = -Icges(4,3) * t498 + t501 * t604;
t409 = Icges(5,4) * t497 + Icges(5,5) * t500;
t305 = Icges(5,1) * t498 + t409 * t501;
t1050 = t288 - t305;
t808 = Icges(6,4) * t499;
t610 = Icges(6,1) * t496 + t808;
t897 = (t609 + t610) * t500 - t990 * t497;
t1049 = (-t989 * t496 + t499 * t990) * t497;
t583 = t412 * t500 + t414 * t497;
t585 = t406 * t497 - t500 * t600;
t1036 = t583 - t585;
t293 = Icges(4,6) * t501 + t498 * t608;
t302 = Icges(5,5) * t501 - t498 * t599;
t1048 = t293 - t302;
t1047 = t294 + t301;
t459 = Icges(4,4) * t779;
t806 = Icges(4,5) * t501;
t299 = Icges(4,1) * t784 + t459 + t806;
t304 = Icges(5,4) * t501 - t405 * t498;
t1046 = -t299 + t304;
t1045 = t300 + t303;
t1044 = t1037 * t501;
t1043 = t1058 * t498;
t1042 = t1058 * t501;
t1041 = t1057 * qJD(3);
t1040 = t1059 * qJD(3);
t1038 = t409 - t604;
t939 = t1056 * t501;
t1035 = t1002 * t501;
t579 = t466 * t496;
t718 = qJD(1) * t501;
t686 = t500 * t718;
t717 = qJD(3) * t497;
t156 = t579 * t498 + (t498 * t717 - t686 - t709) * t499;
t719 = qJD(1) * t500;
t654 = qJD(5) + t719;
t677 = t497 * t716;
t157 = -t466 * t780 + (-t501 * t654 + t677) * t496;
t715 = qJD(3) * t500;
t684 = t498 * t715;
t688 = t497 * t718;
t550 = t684 + t688;
t82 = Icges(7,5) * t157 + Icges(7,6) * t550 - Icges(7,3) * t156;
t88 = Icges(6,4) * t157 + Icges(6,2) * t156 + Icges(6,6) * t550;
t1034 = t82 - t88;
t678 = t497 * t714;
t875 = t498 * t654 + t678;
t158 = t499 * t875 + t501 * t579;
t159 = t466 * t778 - t496 * t875;
t683 = t500 * t714;
t720 = qJD(1) * t498;
t689 = t497 * t720;
t549 = -t683 + t689;
t83 = Icges(7,5) * t159 + Icges(7,6) * t549 + Icges(7,3) * t158;
t89 = Icges(6,4) * t159 - Icges(6,2) * t158 + Icges(6,6) * t549;
t1033 = t83 - t89;
t84 = Icges(6,5) * t157 + Icges(6,6) * t156 + Icges(6,3) * t550;
t86 = Icges(7,4) * t157 + Icges(7,2) * t550 - Icges(7,6) * t156;
t1032 = t84 + t86;
t85 = Icges(6,5) * t159 - Icges(6,6) * t158 + Icges(6,3) * t549;
t87 = Icges(7,4) * t159 + Icges(7,2) * t549 + Icges(7,6) * t158;
t1031 = t85 + t87;
t90 = Icges(7,1) * t157 + Icges(7,4) * t550 - Icges(7,5) * t156;
t92 = Icges(6,1) * t157 + Icges(6,4) * t156 + Icges(6,5) * t550;
t1030 = t90 + t92;
t91 = Icges(7,1) * t159 + Icges(7,4) * t549 + Icges(7,5) * t158;
t93 = Icges(6,1) * t159 - Icges(6,4) * t158 + Icges(6,5) * t549;
t1029 = t91 + t93;
t1028 = -Icges(6,2) - Icges(7,3);
t287 = Icges(4,3) * t501 + t498 * t604;
t115 = t501 * t287 + t293 * t779 + t299 * t784;
t306 = Icges(5,1) * t501 - t409 * t498;
t276 = t501 * t306;
t586 = t302 * t500 + t304 * t497;
t122 = -t498 * t586 + t276;
t1027 = t115 + t122;
t275 = t501 * t305;
t955 = -t501 * t288 - t294 * t779 - t300 * t784 - t498 * t587 + t275;
t271 = t498 * t287;
t590 = t293 * t500 + t299 * t497;
t117 = -t501 * t590 + t271;
t120 = t302 * t777 + t304 * t782 + t498 * t306;
t1026 = t117 + t120;
t954 = -t1050 * t498 + t1035;
t1025 = t1036 * t498 - t939;
t350 = (Icges(7,3) * t496 + t801) * t497;
t1021 = qJD(5) * t350 - (-Icges(6,2) * t496 + t808) * t711 + t898 * qJD(3);
t1020 = qJD(3) * t1051 + qJD(5) * t1049;
t361 = (Icges(6,1) * t499 - t809) * t497;
t1019 = (Icges(7,1) * t499 + t802) * t711 + qJD(5) * t361 + t897 * qJD(3);
t1015 = t1016 * t496 - t1018 * t499;
t1014 = -t1022 * t343 - t1024 * t342;
t946 = t1016 * t343 + t1017 * t782 + t1018 * t342;
t1013 = -t946 * t466 + t559 * t996;
t995 = -t782 * t951 - t1014;
t594 = t177 * t499 + t183 * t496;
t595 = t175 * t499 - t182 * t496;
t596 = -t168 * t499 + t180 * t496;
t597 = t167 * t499 + t178 * t496;
t893 = t388 * (-t1017 * t498 + t594 + t596) + t466 * (t1015 + t1051) + (-t1017 * t501 - t595 - t597) * t559;
t1012 = t893 * t497;
t953 = -t1045 * t500 + t1047 * t497;
t1010 = qJD(1) * t1048 + qJD(3) * t1044;
t346 = t600 * t498;
t1009 = -qJD(1) * t1047 - qJD(3) * t346 - t412 * t716;
t1008 = t1042 * qJD(3) + (t498 * t611 - t304 + t806) * qJD(1);
t1007 = qJD(1) * t1045 - qJD(3) * t1043;
t352 = t498 * t408;
t356 = t607 * t498;
t947 = t352 - t356;
t1006 = t1036 * qJD(1) + qJD(3) * t1038;
t1005 = (Icges(4,2) * t784 + t1046 - t346 - t459) * t501 + (-t1044 + t1045) * t498;
t1004 = (-t1043 - t1048) * t501 + (t1042 + t1047) * t498;
t1003 = t586 - t590;
t943 = t1046 * t500 + t1048 * t497;
t1001 = -t1037 - t1059;
t1000 = t1058 + t1057;
t999 = -t1041 * t500 + t1040 * t497 + (t1037 * t497 - t1058 * t500) * qJD(3) + t1056 * qJD(1);
t998 = t388 * (t1028 * t345 + t1022 - t326 + t803) + t466 * (-Icges(6,2) * t785 + t1016 - t350 + t458) - (t1028 * t343 + t1023 + t321 - t324) * t559;
t969 = rSges(7,1) + pkin(5);
t929 = t1023 * t157 + t1029 * t345 + t1031 * t784 + t1033 * t344 + t156 * t952 - t550 * t950;
t928 = t1022 * t157 - t1024 * t156 + t1030 * t345 + t1032 * t784 + t1034 * t344 + t550 * t951;
t926 = t1023 * t159 + t1029 * t343 - t1031 * t782 + t1033 * t342 - t158 * t952 - t549 * t950;
t925 = t1022 * t159 + t1024 * t158 + t1030 * t343 - t1032 * t782 + t1034 * t342 + t549 * t951;
t968 = t1016 * t157 - t1017 * t550 - t1018 * t156 + t1019 * t345 + t1020 * t784 + t1021 * t344;
t967 = t1016 * t159 - t1017 * t549 + t1018 * t158 + t1019 * t343 - t1020 * t782 + t1021 * t342;
t997 = (qJD(3) * t1015 + t1020) * t500 + (-t1021 * t499 + t1019 * t496 + (t1016 * t499 + t1018 * t496) * qJD(5) + t1017 * qJD(3)) * t497;
t70 = -t500 * t173 + t497 * t597;
t72 = -t500 * t170 + t497 * t595;
t993 = t70 + t72;
t71 = t174 * t500 + t497 * t596;
t73 = t171 * t500 + t497 * t594;
t992 = t71 + t73;
t957 = rSges(7,3) + qJ(6);
t991 = Icges(6,1) + Icges(7,1);
t906 = t1015 * t497 - t1017 * t500;
t988 = t1025 * qJD(1);
t986 = -t497 * t602 + t1061;
t985 = t497 * t610 + t1060;
t984 = (t1027 * t501 + t498 * t955) * qJD(3);
t983 = (t1026 * t501 + t498 * t954) * qJD(3);
t161 = t501 * t583 - t352;
t162 = t501 * t585 - t356;
t980 = (-t161 + t162) * qJD(1);
t979 = (t287 + t306) * qJD(1);
t978 = t1050 * qJD(1);
t973 = (t1000 * t500 + t1001 * t497) * qJD(1);
t320 = qJD(6) * t344;
t767 = -rSges(7,2) * t782 + t957 * t342 + t343 * t969;
t970 = -t466 * t767 + t320;
t845 = pkin(8) * t500;
t922 = t388 * t995 - t1013;
t966 = t984 + t988;
t965 = t980 + t983;
t961 = qJD(3) * t1003 + t1007 * t500 + t1009 * t497;
t960 = qJD(3) * t1002 + t1008 * t500 - t1010 * t497;
t959 = t1006 * t498 - t501 * t999;
t958 = t1006 * t501 + t498 * t999;
t793 = qJ(4) * t500;
t188 = rSges(6,1) * t343 - rSges(6,2) * t342 - rSges(6,3) * t782;
t956 = t188 * t466;
t478 = qJD(4) * t500;
t682 = t498 * t478;
t629 = rSges(7,1) * t496 - rSges(7,3) * t499;
t309 = rSges(7,2) * t500 + t497 * t629;
t626 = pkin(5) * t496 - qJ(6) * t499;
t747 = t626 * t497 + t309;
t489 = t501 * rSges(4,3);
t311 = rSges(4,1) * t784 + rSges(4,2) * t779 + t489;
t426 = t501 * pkin(1) + t498 * qJ(2);
t491 = t501 * pkin(7);
t894 = t491 + t426;
t948 = t311 + t894;
t746 = -rSges(7,2) * t497 + (t626 + t629) * t500;
t945 = -qJD(1) * t1002 + qJD(3) * t939 + t979;
t944 = -qJD(1) * t1003 + qJD(3) * t947 + t978;
t470 = pkin(8) * t782;
t399 = pkin(4) * t498 - t470;
t456 = qJ(4) * t777;
t374 = pkin(3) * t782 - t456;
t477 = qJD(4) * t497;
t728 = -t374 * t714 + t477;
t468 = pkin(3) * t784;
t369 = -qJ(4) * t779 + t468;
t467 = pkin(8) * t784;
t400 = t501 * pkin(4) + t467;
t739 = -t369 - t400;
t530 = t399 * t714 + t716 * t739 + t728;
t708 = qJD(6) * t499;
t680 = t497 * t708;
t765 = rSges(7,2) * t784 + t957 * t344 + t345 * t969;
t33 = t388 * t767 + t559 * t765 + t530 - t680;
t442 = pkin(8) * t684;
t423 = pkin(3) * t500 + qJ(4) * t497;
t379 = t423 * t716;
t479 = qJD(2) * t498;
t576 = t379 + t479 - t682;
t482 = t501 * qJ(2);
t420 = pkin(1) * t498 - t482;
t847 = pkin(7) * t498;
t662 = -t420 - t847;
t640 = t374 + t662;
t510 = t442 + (-t399 + t640) * qJD(1) + t576;
t49 = -t559 * t747 + t510 + t970;
t659 = t49 * t747;
t942 = -t33 * t765 + t659;
t941 = t498 * t719 + t678;
t940 = t1038 * qJD(1);
t937 = qJD(3) * t943 - t1007 * t497 + t1009 * t500 + t979;
t936 = qJD(3) * t953 + t1008 * t497 + t1010 * t500 + t978;
t628 = rSges(5,2) * t500 - rSges(5,3) * t497;
t935 = qJD(3) * t628;
t934 = -t1004 * t497 + t1005 * t500;
t319 = qJD(6) * t342;
t933 = -t388 * t747 + t466 * t765 + t319;
t932 = 0.2e1 * qJD(3);
t702 = qJD(3) * qJD(5);
t671 = t500 * t702;
t269 = qJD(1) * t559 + t498 * t671;
t270 = qJD(1) * t388 - t501 * t671;
t672 = t497 * t702;
t931 = t269 * t962 + t270 * t994 + t388 * t928 + t466 * t968 - t559 * t929 - t672 * t907;
t930 = t269 * t995 + t270 * t996 + t388 * t925 + t466 * t967 - t559 * t926 - t672 * t946;
t445 = pkin(8) * t683;
t278 = qJD(1) * t400 - t445;
t712 = qJD(4) * t501;
t455 = t500 * t712;
t848 = pkin(3) * t497;
t417 = t793 - t848;
t327 = qJD(3) * t417 + t477;
t704 = qJD(1) * qJD(2);
t473 = t501 * t704;
t503 = qJD(1) ^ 2;
t642 = -t491 * t503 + t473;
t703 = qJD(1) * qJD(3);
t673 = t423 * t703;
t551 = qJD(4) * t677 + t327 * t716 + t501 * t673 + t642;
t653 = t703 * t845;
t650 = -pkin(3) * t683 - qJ(4) * t941 + t455;
t185 = pkin(3) * t689 + t650;
t480 = qJD(2) * t501;
t328 = qJD(1) * t426 - t480;
t770 = -t185 - t328;
t507 = t501 * t653 + (-t278 - t455 + t770) * qJD(1) + t551;
t502 = qJD(3) ^ 2;
t699 = t502 * t498 * pkin(8);
t367 = (rSges(7,1) * t499 + rSges(7,3) * t496) * t497;
t627 = pkin(5) * t499 + qJ(6) * t496;
t764 = qJD(5) * t367 + (qJD(5) * t627 - t708) * t497 + t746 * qJD(3);
t918 = t957 * t158 + t159 * t969 + t319;
t840 = rSges(7,2) * t549 + t918;
t6 = -qJD(6) * t156 - t840 * t466 - t764 * t559 + t747 * t270 + (t702 * t767 - t699) * t497 + t507;
t927 = t6 * t747;
t17 = (qJD(3) * t597 + t87) * t500 + (qJD(3) * t173 + t496 * t91 - t499 * t83 + (-t167 * t496 + t178 * t499) * qJD(5)) * t497;
t19 = (qJD(3) * t595 + t85) * t500 + (qJD(3) * t170 + t496 * t93 + t499 * t89 + (-t175 * t496 - t182 * t499) * qJD(5)) * t497;
t924 = t17 + t19;
t18 = (qJD(3) * t596 + t86) * t500 + (-qJD(3) * t174 + t496 * t90 - t499 * t82 + (t168 * t496 + t180 * t499) * qJD(5)) * t497;
t20 = (qJD(3) * t594 + t84) * t500 + (-qJD(3) * t171 + t496 * t92 + t499 * t88 + (-t177 * t496 + t183 * t499) * qJD(5)) * t497;
t923 = t18 + t20;
t920 = t388 * t992 + t466 * t906 - t559 * t993;
t641 = t369 + t894;
t580 = t400 + t641;
t691 = -t423 * t714 + t455 - t480;
t651 = -t445 + t691;
t521 = qJD(1) * t580 + t651;
t50 = t521 + t933;
t658 = t50 * t747;
t693 = pkin(3) * t550 + qJ(4) * t677;
t713 = qJD(4) * t498;
t186 = (-qJ(4) * t718 - t713) * t500 + t693;
t903 = qJD(1) * t186 + t498 * t673;
t902 = t986 * t498;
t901 = t986 * t501;
t900 = t985 * t498;
t899 = t985 * t501;
t656 = -rSges(3,2) * t501 + t498 * rSges(3,3);
t896 = t426 + t656;
t895 = -qJD(1) * t399 + t442;
t833 = rSges(5,3) * t500;
t836 = rSges(5,2) * t497;
t418 = t833 + t836;
t490 = t501 * rSges(5,1);
t316 = -t418 * t498 + t490;
t891 = (t342 * t991 - t322 + t325 + t952) * t559 + (Icges(7,1) * t783 + t1018 + t361 + t457) * t466 + (-t344 * t991 + t1024 + t323 - t810) * t388;
t890 = (t342 * t990 + t343 * t989) * t559 + t1049 * t466 + (-t344 * t990 - t345 * t989) * t388;
t889 = -t1017 * t466 + t388 * t951 + t559 * t950;
t888 = t466 * t997 - t672 * t906;
t887 = t498 * t993 + t501 * t992;
t886 = t498 * t992 - t501 * t993;
t885 = t498 * t994 + t501 * t962;
t884 = t498 * t962 - t501 * t994;
t883 = t498 * t996 + t501 * t995;
t882 = t498 * t995 - t501 * t996;
t879 = -t680 - t764;
t315 = rSges(5,1) * t498 + t418 * t501;
t631 = rSges(6,1) * t496 + rSges(6,2) * t499;
t310 = rSges(6,3) * t500 + t497 * t631;
t164 = t501 * t185;
t494 = t498 ^ 2;
t726 = t501 ^ 2 + t494;
t375 = t423 * t501;
t748 = -t375 * t714 + t478;
t781 = t498 * t423;
t866 = t501 * t278 + t164 - t748 - (-t781 * t498 - t726 * t845) * qJD(3);
t865 = m(5) / 0.2e1;
t864 = m(6) / 0.2e1;
t863 = m(7) / 0.2e1;
t862 = -pkin(1) - pkin(7);
t861 = -pkin(3) - pkin(8);
t860 = t269 / 0.2e1;
t859 = t270 / 0.2e1;
t858 = t559 / 0.2e1;
t857 = -t559 / 0.2e1;
t856 = -t388 / 0.2e1;
t855 = t388 / 0.2e1;
t854 = -t466 / 0.2e1;
t853 = t466 / 0.2e1;
t852 = t498 / 0.2e1;
t851 = t500 / 0.2e1;
t849 = rSges(3,2) - pkin(1);
t846 = pkin(7) * t503;
t844 = t6 * t498;
t732 = pkin(8) * t688 + t442;
t277 = -pkin(4) * t720 + t732;
t730 = qJ(2) * t718 + t479;
t743 = qJD(1) * (-pkin(1) * t720 + t730) + t498 * t704;
t508 = qJD(1) * t277 + t502 * t470 + t743 + t903 + (-qJD(1) * t478 + t653 - t846) * t498;
t789 = t327 * t501;
t839 = -t550 * rSges(7,2) + t957 * t156 - t157 * t969 - t320;
t7 = qJD(6) * t158 - t839 * t466 - t764 * t388 - t747 * t269 + (-t789 + (-qJD(5) * t765 - t712) * t497) * qJD(3) + t508;
t843 = t7 * t501;
t834 = rSges(3,3) * t501;
t831 = t17 * t559;
t830 = t18 * t388;
t829 = t19 * t559;
t828 = t20 * t388;
t192 = t345 * rSges(6,1) - t344 * rSges(6,2) + rSges(6,3) * t784;
t313 = -rSges(6,3) * t497 + t500 * t631;
t368 = (rSges(6,1) * t499 - rSges(6,2) * t496) * t497;
t214 = qJD(3) * t313 + qJD(5) * t368;
t97 = t157 * rSges(6,1) + t156 * rSges(6,2) + rSges(6,3) * t550;
t25 = -t214 * t388 - t269 * t310 + t466 * t97 + (-t789 + (-qJD(5) * t192 - t712) * t497) * qJD(3) + t508;
t827 = t25 * t501;
t632 = rSges(6,1) * t159 - rSges(6,2) * t158;
t99 = rSges(6,3) * t549 + t632;
t26 = -t214 * t559 + t270 * t310 - t466 * t99 + (t188 * t702 - t699) * t497 + t507;
t826 = t26 * t498;
t434 = rSges(5,3) * t677;
t217 = -rSges(5,2) * t684 - qJD(1) * t315 + t434;
t581 = -t498 * t846 + t743;
t396 = t418 * qJD(3);
t741 = -t327 - t396;
t55 = (t217 - t682) * qJD(1) + (-t628 * t720 + (-t477 + t741) * t501) * qJD(3) + t581 + t903;
t821 = t55 * t501;
t376 = t628 * t501;
t218 = qJD(1) * t316 + qJD(3) * t376;
t56 = t396 * t716 + (-t218 + (-t478 - t935) * t501 + t770) * qJD(1) + t551;
t820 = t56 * t498;
t69 = t192 * t466 - t310 * t388 + t521;
t819 = t69 * t310;
t818 = t70 * t270;
t817 = t71 * t269;
t816 = t72 * t270;
t815 = t73 * t269;
t692 = rSges(4,1) * t550 + rSges(4,2) * t686;
t216 = (-rSges(4,2) * t717 - rSges(4,3) * qJD(1)) * t498 + t692;
t425 = rSges(4,1) * t500 - rSges(4,2) * t497;
t381 = t425 * t716;
t633 = rSges(4,1) * t497 + rSges(4,2) * t500;
t397 = t633 * qJD(3);
t100 = t397 * t714 + (t216 + t381) * qJD(1) + t581;
t792 = t100 * t501;
t377 = t425 * t501;
t215 = -qJD(3) * t377 + (t498 * t633 + t489) * qJD(1);
t685 = t425 * t714;
t101 = -t397 * t716 + (-t215 - t328 + t685) * qJD(1) + t642;
t791 = t101 * t498;
t487 = t498 * rSges(4,3);
t314 = t501 * t633 - t487;
t137 = t381 + t479 + (t314 + t662) * qJD(1);
t790 = t137 * t501;
t786 = t417 * t501;
t776 = qJD(3) * t478 + t185 * t714;
t769 = -t186 - t217;
t768 = -t186 - t277;
t763 = -t342 * t969 + t957 * t343;
t762 = -t344 * t969 + t957 * t345;
t761 = t747 * t498;
t760 = -t309 * t501 - t626 * t782;
t759 = t498 * t327 + t423 * t718;
t745 = -t315 + t374;
t744 = -t316 - t369;
t318 = t501 * t374;
t742 = t501 * t399 - t318;
t740 = t627 * t497 + t367;
t738 = t374 - t399;
t737 = pkin(8) * t779 + t781;
t731 = t941 * pkin(8);
t729 = rSges(3,2) * t720 + rSges(3,3) * t718;
t401 = qJD(1) * t420;
t727 = t479 - t401;
t705 = -pkin(4) + t862;
t701 = -rSges(5,1) + t862;
t700 = -rSges(4,3) + t862;
t698 = pkin(8) * t717;
t697 = t278 * t714 + t776;
t696 = -t192 + t739;
t451 = pkin(8) * t686;
t695 = t451 + t759;
t383 = t423 * t720;
t694 = t383 + t731;
t681 = t496 * t711;
t679 = t500 * t708;
t675 = t784 / 0.2e1;
t669 = t718 / 0.2e1;
t668 = -t717 / 0.2e1;
t667 = -t716 / 0.2e1;
t666 = t716 / 0.2e1;
t665 = -t714 / 0.2e1;
t660 = -t423 - t845;
t652 = t739 - t765;
t649 = t468 + t894;
t637 = qJD(5) * t668;
t636 = qJD(1) * t781 - t497 * t712;
t635 = qJD(1) * t375 + t417 * t716 + t497 * t713;
t613 = t693 + t730;
t612 = t480 - t650;
t138 = qJD(1) * t948 - t480 - t685;
t598 = t137 * t498 - t138 * t501;
t593 = t188 * t498 + t192 * t501;
t575 = t451 + t635;
t574 = t445 + t612;
t573 = t649 + t400;
t562 = -t305 - t586;
t561 = t374 + t470 + t482;
t557 = t636 + t731;
t139 = (-t311 * t498 - t314 * t501) * qJD(3);
t552 = t613 + t732;
t509 = t768 * t498 + (t498 * t738 + t501 * t739) * qJD(1);
t5 = qJD(6) * t681 + t840 * t388 - t839 * t559 - t765 * t270 + t767 * t269 + (t509 - t679) * qJD(3) + t697;
t548 = t33 * t840 + t5 * t767;
t335 = qJD(1) * t374;
t543 = t335 - t401 + t576;
t536 = t49 * t767 - t50 * t765;
t535 = t33 * t767 - t658;
t57 = t188 * t388 + t192 * t559 + t530;
t68 = -t310 * t559 + t510 - t956;
t511 = t57 * t593 + (-t498 * t69 - t501 * t68) * t310;
t506 = t535 * t498 - t501 * t942;
t421 = rSges(3,2) * t498 + t834;
t380 = t628 * t716;
t372 = t425 * t498;
t371 = t628 * t498;
t340 = t726 * t715;
t339 = t677 - t686;
t260 = t310 * t501;
t258 = t310 * t498;
t243 = qJD(1) * t896 - t480;
t242 = t479 + (-t420 + t421) * qJD(1);
t238 = -rSges(6,1) * t344 - rSges(6,2) * t345;
t233 = -rSges(6,1) * t342 - rSges(6,2) * t343;
t212 = t473 + (-qJD(1) * t656 - t328) * qJD(1);
t211 = qJD(1) * t729 + t743;
t112 = (t315 * t501 + t498 * t744) * qJD(3) + t728;
t111 = t628 * t714 + (t316 + t641) * qJD(1) + t691;
t110 = -t380 + (-t315 + t640) * qJD(1) + t576;
t34 = (t218 * t501 + t769 * t498 + (t498 * t745 + t501 * t744) * qJD(1)) * qJD(3) + t776;
t16 = qJD(3) * t509 + t188 * t269 - t192 * t270 + t388 * t99 + t559 * t97 + t697;
t1 = [t968 * t855 + (t967 + t921) * t857 + t818 / 0.2e1 + (t101 * (-t487 + t662) + t137 * t480 + t100 * t948 + t138 * (-rSges(4,2) * t677 + t692 + t730) + (qJD(3) * t137 * t425 + t101 * t633) * t501 + (t700 * t790 + (t137 * (-qJ(2) - t633) + t138 * t700) * t498) * qJD(1) - (-t137 + t381 + (t314 - t847) * qJD(1) + t727) * t138) * m(4) + (-(-t956 + t335 + t379 - t68 + (-pkin(7) * qJD(1) - t478) * t498 + t727 + t895) * t69 + t819 * t559 + t26 * (-t188 + t561) + t68 * (rSges(6,3) * t683 + t574 - t632) + t25 * (t573 + t192) + t69 * (t552 + t97) + (t26 * t705 + (-qJ(4) * t25 - qJD(4) * t69) * t500) * t498 + ((t68 * t705 - t69 * t793) * t501 + (t69 * t705 + (-qJ(2) + (-rSges(6,3) + t861) * t497) * t68) * t498) * qJD(1)) * m(6) + (t950 * t500 + (-t1023 * t496 - t499 * t952) * t497 + t993) * t388 * t854 + t830 / 0.2e1 - t831 / 0.2e1 + t828 / 0.2e1 - t829 / 0.2e1 + t888 + (-qJD(3) * t1036 + t1040 * t500 + t1041 * t497) * qJD(1) + t921 * t858 + (((t498 * t950 + t501 * t951) * t497 + t994 + t1014 + t1055) * t388 + t922 + t1013) * t856 + t815 / 0.2e1 + t816 / 0.2e1 + t817 / 0.2e1 + (t212 * (t498 * t849 + t482 + t834) + t242 * t480 + t211 * t896 + t243 * (t729 + t730) + (t242 * t849 * t501 + (t242 * (-rSges(3,3) - qJ(2)) - t243 * pkin(1)) * t498) * qJD(1) - (qJD(1) * t421 - t242 + t727) * t243) * m(3) + (t959 + t960 + t966) * t666 + (t56 * (-t456 + t482) + t110 * t612 + t55 * (t490 + t649) + t111 * (t434 + t613) + (t56 * (-t833 + (-rSges(5,2) + pkin(3)) * t497) - t110 * t935) * t501 + (t56 * t701 - t55 * t836 + (t55 * (-rSges(5,3) - qJ(4)) + t111 * (-rSges(5,2) * qJD(3) - qJD(4))) * t500) * t498 + ((t110 * t701 + t111 * (-t418 - t793)) * t501 + (t110 * (-qJ(2) + t418 - t848) + t111 * t701) * t498) * qJD(1) - (-t110 - t380 + (-t315 - t847) * qJD(1) + t543) * t111) * m(5) + (((t562 * t498 - t122 + t276) * t498 + t288 * t494 + (-t120 - t275 - t271 + (t288 + t590) * t501 + t955) * t501) * qJD(3) + t965 - t980) * t665 + t907 * t860 + ((t162 + t953) * qJD(1) + t958 + t961) * t714 / 0.2e1 + (t6 * (t561 - t767) + t7 * (t573 + t765) + (t6 * t705 - t7 * t793) * t498 + t658 * t559 + (-t543 + t552 - t682 - t839 - t895 - t970) * t50 + (rSges(7,2) * t683 + t574 + t651 - t918 + t933) * t49 + ((t49 * t705 - t50 * t793) * t501 + (t50 * t705 + (-qJ(2) + (-rSges(7,2) + t861) * t497) * t49) * t498 + t49 * t580 + t50 * t847) * qJD(1)) * m(7) + (((t115 + t276 + t954 - t1035) * t501 + (-t117 + t271 + (t288 - t590 + t562) * t501 + t955) * t498) * qJD(3) + t988) * t667 + t946 * t859 - ((-t943 + t1025) * t498 + t501 * t161) * t703 / 0.2e1; 0.2e1 * (t844 / 0.2e1 - t843 / 0.2e1) * m(7) + 0.2e1 * (-t827 / 0.2e1 + t826 / 0.2e1) * m(6) + 0.2e1 * (t820 / 0.2e1 - t821 / 0.2e1) * m(5) + 0.2e1 * (-t792 / 0.2e1 + t791 / 0.2e1) * m(4) + 0.2e1 * (-t211 * t501 / 0.2e1 + t212 * t852) * m(3); t885 * t860 + t883 * t859 + ((t342 * t898 + t343 * t897) * t466 + (-t342 * t902 + t343 * t900) * t388 - (t342 * t901 - t343 * t899) * t559 + (-t497 * t946 + t779 * t995) * qJD(5) + ((-qJD(5) * t996 - t889) * t500 - t1012) * t501) * t858 + (-qJD(1) * t882 + t498 * t926 + t501 * t925) * t857 + ((-t907 * t497 - t777 * t994) * qJD(5) + ((qJD(5) * t962 + t889) * t500 + t1012) * t498 + (t344 * t898 + t345 * t897) * t466 + (-t344 * t902 + t345 * t900) * t388 - (t344 * t901 - t345 * t899) * t559) * t856 + (-qJD(1) * t884 + t498 * t929 + t501 * t928) * t855 + ((qJD(5) * t886 + t893) * t500 + ((t496 * t897 - t499 * t898 + t1017) * t466 + (t496 * t900 + t499 * t902 - t951) * t388 - (-t496 * t899 - t499 * t901 + t950) * t559 - t906 * qJD(5)) * t497) * t854 + (-qJD(1) * t886 + t498 * t924 + t501 * t923) * t853 - ((t1004 * t500 + t1005 * t497) * qJD(3) + (t1000 * t497 - t1001 * t500) * qJD(1)) * qJD(1) / 0.2e1 + (t961 * t501 + t960 * t498 + (t498 * t943 + t501 * t953) * qJD(1)) * qJD(1) / 0.2e1 + ((t716 * t939 + t940) * t498 + ((t498 * t947 + t934) * qJD(3) + t973) * t501) * t667 + ((t714 * t947 + t940) * t501 + ((t501 * t939 - t934) * qJD(3) - t973) * t498) * t665 + t920 * t711 / 0.2e1 - t921 * t498 * t710 / 0.2e1 + t922 * t709 * t851 + t887 * t637 + (-(t497 * t536 + t500 * t506) * qJD(5) + t6 * t737 + t5 * t742 + (t7 * (t660 - t747) + t659 * qJD(1) + t548) * t501 + (t658 * qJD(1) + t5 * t652 + t927) * t498 + (qJD(3) * t467 + t746 * t559 + t760 * t466 - t575 + t695 + (-t698 - t879) * t498) * t49 + (t679 - t760 * t388 - t761 * t559 + t652 * t718 + (t768 + t839 + (t738 - t767) * qJD(1)) * t498 + t866) * t33 + (t786 * qJD(3) + t746 * t388 - t761 * t466 - t557 + t694 + (-t327 + t879) * t501) * t50) * m(7) + (t26 * t737 + t68 * t695 + t69 * t694 + t16 * t742 + (t25 * (-t310 + t660) + t69 * (-t214 - t327) + t16 * t188 + t68 * t310 * qJD(1)) * t501 + (t26 * t310 + t68 * (t214 - t698) + t16 * t696 + t819 * qJD(1)) * t498 - t68 * (t260 * t466 - t313 * t559 + t575) - t69 * (t258 * t466 - t313 * t388 + t557) - (-t467 * t68 - t69 * t786) * qJD(3) - ((t188 * t68 - t192 * t69) * t497 + t511 * t500) * qJD(5) + ((qJD(1) * t696 + t99) * t501 + (-t97 + t768 + (-t188 + t738) * qJD(1)) * t498 - t258 * t559 + t260 * t388 + t866) * t57) * m(6) + (t56 * t781 + t110 * t759 + t111 * t383 - t34 * t318 + t112 * t164 + (-t56 * t628 + t110 * t396 + t34 * t744 + t112 * t769 + (-t111 * t628 + t112 * t745) * qJD(1)) * t498 + (t55 * (-t423 + t628) + t111 * t741 + t34 * t315 + t112 * t218 + (-t110 * t628 + t112 * t744) * qJD(1)) * t501 - t110 * (-qJD(1) * t376 + t635) - t111 * (-qJD(1) * t371 + t636) - t112 * t748 - ((t111 * (-t417 - t418) + t112 * t376) * t501 + (t110 * t418 + t112 * (-t781 + t371)) * t498) * qJD(3)) * m(5) + (-(t137 * t377 + t138 * t372) * qJD(1) - (t139 * (-t372 * t498 - t377 * t501) - t598 * t633) * qJD(3) + 0.2e1 * t139 * (t215 * t501 - t216 * t498 + (-t311 * t501 + t314 * t498) * qJD(1)) - t598 * t397 + (-t792 + t791 + (t138 * t498 + t790) * qJD(1)) * t425) * m(4) + (t959 * qJD(1) + t930 + ((t954 * qJD(1) + t937 * t501) * t501 + (t945 * t498 - t1026 * qJD(1) + (-t936 + t944) * t501) * t498) * t932) * t852 + (t958 * qJD(1) + t931 + ((t955 * qJD(1) + t944 * t501) * t501 + (t936 * t498 - t1027 * qJD(1) + (-t937 + t945) * t501) * t498) * t932) * t501 / 0.2e1 - (t921 + t966 + t984) * t720 / 0.2e1 + (t922 + t965 + t983) * t669; -m(5) * (t110 * t339 - t111 * t941 + t112 * t340) - m(6) * (t339 * t68 + t340 * t57 - t69 * t941) - m(7) * (t33 * t340 + t339 * t49 - t50 * t941) + 0.2e1 * ((t110 * t716 - t111 * t714 + t34) * t865 + (t68 * t716 - t69 * t714 + t16) * t864 + (t49 * t716 - t50 * t714 + t5) * t863) * t497 + 0.2e1 * ((qJD(3) * t112 - t110 * t718 - t111 * t720 - t820 + t821) * t865 + (qJD(3) * t57 - t68 * t718 - t69 * t720 - t826 + t827) * t864 + (qJD(3) * t33 - t49 * t718 - t50 * t720 + t843 - t844) * t863) * t500; (t497 * t884 + t500 * t907) * t860 + (t497 * t882 + t500 * t946) * t859 + (-t342 * t998 + t343 * t891 - t782 * t890) * t858 + ((qJD(3) * t882 + t967) * t500 + (qJD(1) * t883 - qJD(3) * t946 + t498 * t925 - t501 * t926) * t497) * t857 + (-t344 * t998 + t345 * t891 + t784 * t890) * t856 + ((qJD(3) * t884 + t968) * t500 + (qJD(1) * t885 - qJD(3) * t907 + t498 * t928 - t501 * t929) * t497) * t855 + (t890 * t500 + (t891 * t496 + t499 * t998) * t497) * t854 + ((qJD(3) * t886 + t997) * t500 + (qJD(1) * t887 - qJD(3) * t906 + t498 * t923 - t501 * t924) * t497) * t853 + (t817 + t818 + t830 - t831 + t815 + t816 + t828 - t829 + t888) * t851 + t931 * t675 - t930 * t782 / 0.2e1 + t920 * t668 + (t497 * t886 + t500 * t906) * t637 + (-(t33 * t785 + t343 * t50 + t345 * t49) * qJD(6) - (-t49 * t763 + t50 * t762) * t466 - (t33 * t763 - t50 * t740) * t388 + (-t33 * t762 + t49 * t740) * t559 + (qJD(3) * t506 - t49 * t840 - t50 * t839 - t6 * t767 + t7 * t765) * t500 + (t536 * qJD(3) + (qJD(1) * t535 - t33 * t839 - t49 * t764 + t5 * t765 - t927) * t501 + (qJD(1) * t942 - t50 * t764 - t7 * t747 + t548) * t498) * t497) * m(7) + ((qJD(3) * t511 - t26 * t188 + t25 * t192 - t68 * t99 + t69 * t97) * t500 + (t68 * (qJD(3) * t188 - t214 * t501) + t69 * (-qJD(3) * t192 - t214 * t498) + t16 * t593 + t57 * (t188 * t718 - t192 * t720 + t498 * t99 + t501 * t97) + (-t25 * t498 - t26 * t501 + (t498 * t68 - t501 * t69) * qJD(1)) * t310) * t497 - t68 * (-t233 * t466 - t368 * t559) - t69 * (t238 * t466 - t368 * t388) - t57 * (t233 * t388 + t238 * t559)) * m(6) + t922 * (qJD(1) * t675 + t500 * t665) + t921 * (t497 * t669 + t500 * t666); (t342 * t7 + t344 * t6 - t5 * t783 + (-t344 * t466 - t388 * t783 + t158) * t50 + (t342 * t466 - t559 * t783 - t156) * t49 + (-t342 * t388 - t344 * t559 - t499 * t715 + t681) * t33) * m(7);];
tauc  = t1(:);
