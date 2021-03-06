% Calculate vector of centrifugal and Coriolis load on the joints for
% S6RPRPRP4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,theta2]';
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
% Datum: 2019-03-09 03:13
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S6RPRPRP4_coriolisvecJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(9,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRP4_coriolisvecJ_fixb_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRP4_coriolisvecJ_fixb_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPRPRP4_coriolisvecJ_fixb_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRPRP4_coriolisvecJ_fixb_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RPRPRP4_coriolisvecJ_fixb_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RPRPRP4_coriolisvecJ_fixb_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 03:11:13
% EndTime: 2019-03-09 03:12:41
% DurationCPUTime: 82.78s
% Computational Cost: add. (31593->1113), mult. (42291->1402), div. (0->0), fcn. (39195->8), ass. (0->550)
t1094 = Icges(5,1) + Icges(4,3);
t1093 = Icges(6,4) - Icges(7,5);
t1037 = Icges(6,1) + Icges(7,1);
t1088 = Icges(7,4) + Icges(6,5);
t1035 = Icges(6,2) + Icges(7,3);
t1086 = Icges(6,6) - Icges(7,6);
t491 = sin(qJ(3));
t494 = cos(qJ(3));
t426 = Icges(4,5) * t494 - Icges(4,6) * t491;
t605 = Icges(5,4) * t494 - Icges(5,5) * t491;
t1092 = t426 - t605;
t489 = qJ(1) + pkin(9);
t485 = cos(t489);
t1091 = t1094 * t485;
t493 = cos(qJ(5));
t1090 = t1093 * t493;
t490 = sin(qJ(5));
t1089 = t1093 * t490;
t1087 = Icges(7,2) + Icges(6,3);
t484 = sin(t489);
t807 = t484 * t494;
t808 = t484 * t491;
t1078 = t1091 + (-Icges(5,5) + Icges(4,6)) * t808 + (Icges(5,4) - Icges(4,5)) * t807;
t1046 = t1092 * t485 + t1094 * t484;
t849 = Icges(4,4) * t491;
t432 = Icges(4,1) * t494 - t849;
t833 = Icges(5,6) * t491;
t599 = Icges(5,2) * t494 - t833;
t1085 = t432 + t599;
t832 = Icges(5,6) * t494;
t597 = -Icges(5,3) * t491 + t832;
t487 = Icges(4,4) * t494;
t606 = -Icges(4,2) * t491 + t487;
t1084 = t597 + t606;
t1083 = -t1035 * t493 - t1089;
t1082 = t1086 * t493 + t1088 * t490;
t1081 = t1037 * t490 + t1090;
t834 = Icges(4,6) * t485;
t275 = Icges(4,4) * t807 - Icges(4,2) * t808 - t834;
t449 = Icges(5,6) * t808;
t847 = Icges(5,4) * t485;
t282 = Icges(5,2) * t807 - t449 + t847;
t1080 = t275 * t491 - t282 * t494;
t278 = Icges(4,5) * t484 + t432 * t485;
t279 = Icges(5,5) * t484 - t485 * t597;
t1079 = -t278 * t807 - t279 * t808;
t429 = Icges(4,2) * t494 + t849;
t431 = Icges(4,1) * t491 + t487;
t580 = t429 * t491 - t431 * t494;
t596 = Icges(5,3) * t494 + t833;
t598 = Icges(5,2) * t491 + t832;
t1068 = -t491 * t596 + t494 * t598 - t580;
t454 = Icges(4,4) * t808;
t842 = Icges(4,5) * t485;
t277 = Icges(4,1) * t807 - t454 - t842;
t841 = Icges(5,5) * t485;
t280 = Icges(5,6) * t807 - Icges(5,3) * t808 + t841;
t1040 = -t277 * t494 + t280 * t491 + t1080;
t802 = t490 * t491;
t329 = t484 * t493 + t485 * t802;
t312 = Icges(7,5) * t329;
t801 = t491 * t493;
t809 = t484 * t490;
t328 = -t485 * t801 + t809;
t803 = t485 * t494;
t161 = Icges(7,6) * t803 + Icges(7,3) * t328 + t312;
t846 = Icges(6,4) * t329;
t170 = -Icges(6,2) * t328 + Icges(6,6) * t803 + t846;
t1054 = t161 - t170;
t804 = t485 * t493;
t331 = -t484 * t802 + t804;
t314 = Icges(7,5) * t331;
t806 = t485 * t490;
t330 = t484 * t801 + t806;
t162 = -Icges(7,6) * t807 + Icges(7,3) * t330 + t314;
t317 = Icges(6,4) * t331;
t172 = Icges(6,2) * t330 + Icges(6,6) * t807 - t317;
t1063 = t162 + t172;
t164 = Icges(6,5) * t329 - Icges(6,6) * t328 + Icges(6,3) * t803;
t167 = Icges(7,4) * t329 + Icges(7,2) * t803 + Icges(7,6) * t328;
t1052 = t164 + t167;
t166 = -Icges(6,5) * t331 + Icges(6,6) * t330 + Icges(6,3) * t807;
t169 = -Icges(7,4) * t331 + Icges(7,2) * t807 - Icges(7,6) * t330;
t1006 = t166 + t169;
t839 = Icges(7,5) * t328;
t173 = Icges(7,1) * t329 + Icges(7,4) * t803 + t839;
t315 = Icges(6,4) * t328;
t176 = Icges(6,1) * t329 + Icges(6,5) * t803 - t315;
t1051 = t173 + t176;
t313 = Icges(7,5) * t330;
t175 = -Icges(7,1) * t331 + Icges(7,4) * t807 - t313;
t316 = Icges(6,4) * t330;
t177 = Icges(6,1) * t331 - Icges(6,5) * t807 - t316;
t1050 = t175 - t177;
t952 = t1083 * t491 - t1086 * t494;
t1077 = t1082 * t491 + t1087 * t494;
t951 = t1081 * t491 + t1088 * t494;
t1076 = (-t1035 * t490 + t1090) * t494;
t1075 = (t1086 * t490 - t1088 * t493) * t494;
t1074 = (-t1037 * t493 + t1089) * t494;
t1073 = t1084 * qJD(3);
t1072 = t1085 * qJD(3);
t1070 = -t429 - t596;
t1069 = t431 + t598;
t1003 = t1083 * t494 + t1086 * t491;
t1032 = -t1082 * t494 + t1087 * t491;
t1002 = t1081 * t494 - t1088 * t491;
t425 = Icges(4,5) * t491 + Icges(4,6) * t494;
t604 = Icges(5,4) * t491 + Icges(5,5) * t494;
t1067 = -t604 + t425;
t1066 = t1046 * t485 + t1079;
t805 = t485 * t491;
t1065 = t1078 * t484 - t277 * t803 + t280 * t805;
t999 = t1046 * t484 + t278 * t803 + t279 * t805;
t1064 = -t1040 * t484 + t1078 * t485;
t276 = Icges(4,6) * t484 + t485 * t606;
t450 = Icges(5,6) * t805;
t848 = Icges(5,4) * t484;
t281 = -Icges(5,2) * t803 + t450 + t848;
t1012 = -t276 * t808 - t281 * t807 - t1066;
t1011 = -t275 * t805 + t282 * t803 - t1065;
t1010 = -t276 * t805 - t281 * t803 + t999;
t350 = t604 * t484;
t811 = t425 * t484;
t1062 = t1068 * t485 - t350 + t811;
t1061 = t276 * t491 + t281 * t494;
t1023 = t1051 * t329 + t1052 * t803 + t1054 * t328;
t1022 = t1006 * t803 + t1050 * t329 - t1063 * t328;
t729 = qJD(5) * t491;
t469 = qJD(1) + t729;
t731 = qJD(3) * t494;
t699 = t493 * t731;
t736 = qJD(1) * t491;
t708 = t485 * t736;
t154 = -qJD(5) * t804 + t469 * t809 - t484 * t699 - t493 * t708;
t531 = t469 * t493 + t490 * t731;
t658 = qJD(5) + t736;
t155 = t484 * t531 + t658 * t806;
t732 = qJD(3) * t491;
t705 = t484 * t732;
t735 = qJD(1) * t494;
t707 = t485 * t735;
t550 = -t705 + t707;
t79 = Icges(7,5) * t155 + Icges(7,6) * t550 + Icges(7,3) * t154;
t85 = Icges(6,4) * t155 - Icges(6,2) * t154 + Icges(6,6) * t550;
t1060 = t79 - t85;
t156 = qJD(1) * t330 + qJD(5) * t329 - t485 * t699;
t157 = t485 * t531 - t658 * t809;
t701 = t485 * t732;
t709 = t484 * t735;
t942 = t701 + t709;
t80 = Icges(7,5) * t157 - Icges(7,6) * t942 + Icges(7,3) * t156;
t86 = Icges(6,4) * t157 - Icges(6,2) * t156 - Icges(6,6) * t942;
t1059 = t80 - t86;
t81 = Icges(6,5) * t155 - Icges(6,6) * t154 + Icges(6,3) * t550;
t83 = Icges(7,4) * t155 + Icges(7,2) * t550 + Icges(7,6) * t154;
t1058 = t81 + t83;
t82 = Icges(6,5) * t157 - Icges(6,6) * t156 - Icges(6,3) * t942;
t84 = Icges(7,4) * t157 - Icges(7,2) * t942 + Icges(7,6) * t156;
t1057 = t82 + t84;
t87 = Icges(7,1) * t155 + Icges(7,4) * t550 + Icges(7,5) * t154;
t89 = Icges(6,1) * t155 - Icges(6,4) * t154 + Icges(6,5) * t550;
t1056 = t87 + t89;
t88 = Icges(7,1) * t157 - Icges(7,4) * t942 + Icges(7,5) * t156;
t90 = Icges(6,1) * t157 - Icges(6,4) * t156 - Icges(6,5) * t942;
t1055 = t88 + t90;
t929 = -t1002 * t329 - t1003 * t328 + t1032 * t803;
t1049 = qJD(3) * t952 + qJD(5) * t1076;
t1048 = qJD(3) * t1077 + qJD(5) * t1075;
t1047 = qJD(3) * t951 + qJD(5) * t1074;
t1045 = t276 - t279;
t1044 = t1072 * t494 - t1073 * t491 + (-t1069 * t491 + t1070 * t494) * qJD(3) + t1067 * qJD(1);
t1043 = t1070 * qJD(3);
t1042 = t1069 * qJD(3);
t1041 = -t1002 * t490 + t1003 * t493;
t1039 = t278 * t494 + t279 * t491 - t1061;
t1038 = t1068 * qJD(1) - qJD(3) * t1092;
t1021 = -t1051 * t331 + t1052 * t807 - t1054 * t330;
t1020 = t1006 * t807 - t1050 * t331 + t1063 * t330;
t928 = t1002 * t331 + t1003 * t330 + t1032 * t807;
t1033 = t1062 * qJD(1);
t1031 = (t1012 * t484 - t1064 * t485) * qJD(3);
t1030 = (t1010 * t484 - t1011 * t485) * qJD(3);
t1029 = t1067 * qJD(3);
t495 = cos(qJ(1));
t488 = t495 * pkin(1);
t1028 = t484 * (-pkin(4) - pkin(7)) - t488;
t980 = t162 * t493 + t175 * t490;
t68 = t169 * t491 - t494 * t980;
t976 = rSges(7,1) + pkin(5);
t975 = t1051 * t155 + t1052 * t550 + t1054 * t154 - t1055 * t331 + t1057 * t807 - t1059 * t330;
t974 = t1006 * t550 + t1050 * t155 - t1056 * t331 + t1058 * t807 - t1060 * t330 - t1063 * t154;
t973 = t1051 * t157 - t1052 * t942 + t1054 * t156 + t1055 * t329 + t1057 * t803 + t1059 * t328;
t972 = -t1006 * t942 + t1050 * t157 + t1056 * t329 + t1058 * t803 + t1060 * t328 - t1063 * t156;
t728 = qJD(5) * t494;
t734 = qJD(3) * t484;
t372 = t485 * t728 + t734;
t733 = qJD(3) * t485;
t373 = -t484 * t728 + t733;
t969 = -t1022 * t373 + t1023 * t372 + t929 * t469;
t1027 = -t1002 * t155 - t1003 * t154 + t1032 * t550 - t1047 * t331 + t1048 * t807 - t1049 * t330;
t1026 = -t1002 * t157 - t1003 * t156 - t1032 * t942 + t1047 * t329 + t1048 * t803 + t1049 * t328;
t351 = t604 * t485;
t725 = (t596 * t808 - t598 * t807 - t351) * qJD(1);
t810 = t425 * t485;
t199 = -t484 * t580 - t810;
t726 = t199 * qJD(1);
t1025 = t726 - t725 + t1031;
t1024 = t1030 + t1033;
t594 = t161 * t493 - t173 * t490;
t67 = t167 * t491 + t494 * t594;
t592 = t170 * t493 + t176 * t490;
t69 = t164 * t491 - t494 * t592;
t1019 = t67 + t69;
t591 = t172 * t493 - t177 * t490;
t70 = t166 * t491 - t494 * t591;
t1018 = t68 + t70;
t1017 = (-qJD(1) * t1045 - t1043 * t484) * t494 + (t1042 * t484 + (-t485 * t599 - t278 + t848) * qJD(1)) * t491 + t1040 * qJD(3);
t1016 = (t1043 * t485 + (-t1084 * t484 + t834 - t841) * qJD(1)) * t494 + (-t1042 * t485 + (-t1085 * t484 + t842 - t847) * qJD(1)) * t491 + t1039 * qJD(3);
t1015 = -t1038 * t484 + t1044 * t485;
t1014 = t1038 * t485 + t1044 * t484;
t966 = rSges(7,3) + qJ(6);
t1013 = (-t1029 * t484 + (t1040 + t1046) * qJD(1)) * t485;
t927 = t1032 * t491 - t1041 * t494;
t1009 = (t275 + t280) * t494 + (t277 + t282) * t491;
t1008 = t1045 * t494 + (t278 - t281) * t491;
t1005 = (t1041 + t1077) * t469 + (t1032 * t484 - t591 - t980) * t373 + (-t1032 * t485 + t592 - t594) * t372;
t461 = pkin(8) * t807;
t379 = pkin(4) * t485 - t461;
t737 = qJD(1) * t485;
t467 = pkin(4) * t737;
t466 = pkin(7) * t737;
t486 = qJD(4) * t491;
t437 = t485 * t486;
t700 = t485 * t731;
t754 = qJ(4) * t700 + t437;
t714 = t466 + t754;
t827 = qJ(4) * t491;
t443 = pkin(3) * t494 + t827;
t359 = t443 * t484;
t479 = t485 * pkin(7);
t393 = pkin(2) * t484 - t479;
t380 = qJD(1) * t393;
t926 = -qJD(1) * t359 - t380;
t1001 = -qJD(1) * t379 + t467 + t714 - t926;
t1000 = t1061 + t1078;
t673 = -pkin(2) - t827;
t882 = -rSges(6,3) - pkin(3);
t720 = -pkin(8) + t882;
t998 = qJD(1) * (t720 * t494 + t673);
t311 = qJD(6) * t328;
t959 = t966 * t330 + t331 * t976;
t786 = rSges(7,2) * t807 - t959;
t997 = t469 * t786 - t311;
t310 = t330 * qJD(6);
t788 = rSges(7,2) * t803 + t328 * t966 + t329 * t976;
t624 = pkin(5) * t490 - qJ(6) * t493;
t626 = rSges(7,1) * t490 - rSges(7,3) * t493;
t873 = rSges(7,2) * t491;
t948 = -t873 + (t624 + t626) * t494;
t996 = t372 * t948 + t788 * t469 - t310;
t922 = t372 * (t1037 * t328 - t1054 - t312 + t846) - t373 * (-t1037 * t330 + t1063 + t314 - t317) + t469 * (t1003 - t1074);
t995 = t372 * (-t1035 * t329 + t1051 - t315 + t839) - t373 * (t1035 * t331 + t1050 - t313 + t316) + t469 * (-t1002 - t1076);
t994 = (t1049 * t493 - t1047 * t490 + (t1002 * t493 + t1003 * t490) * qJD(5) + t1032 * qJD(3)) * t494 + (qJD(3) * t1041 + t1048) * t491;
t474 = t484 * rSges(5,1);
t294 = -rSges(5,2) * t803 + rSges(5,3) * t805 + t474;
t363 = pkin(3) * t803 + qJ(4) * t805;
t394 = t485 * pkin(2) + t484 * pkin(7);
t925 = t488 + t394;
t950 = t363 + t925;
t993 = t294 + t950;
t990 = t1075 * t469 + (-t1086 * t331 - t1088 * t330) * t373 + (-t1086 * t329 - t1088 * t328) * t372;
t983 = -t1029 * t485 + (-t1092 * t484 - t1039 + t1091) * qJD(1);
t462 = pkin(8) * t803;
t378 = t484 * pkin(4) + t462;
t981 = t950 + t378;
t497 = qJD(1) ^ 2;
t979 = 0.2e1 * qJD(3);
t722 = qJD(3) * qJD(5);
t688 = t491 * t722;
t268 = qJD(1) * t372 - t484 * t688;
t269 = qJD(1) * t373 - t485 * t688;
t687 = t494 * t722;
t978 = t1020 * t268 + t1021 * t269 + t1027 * t469 + t372 * t975 - t373 * t974 + t687 * t928;
t977 = t1022 * t268 + t1023 * t269 + t1026 * t469 + t372 * t973 - t373 * t972 + t687 * t929;
t17 = (-qJD(3) * t594 + t84) * t491 + (qJD(3) * t167 - t490 * t88 + t493 * t80 + (-t161 * t490 - t173 * t493) * qJD(5)) * t494;
t19 = (qJD(3) * t592 + t82) * t491 + (qJD(3) * t164 - t490 * t90 - t493 * t86 + (t170 * t490 - t176 * t493) * qJD(5)) * t494;
t971 = t17 + t19;
t18 = (qJD(3) * t980 + t83) * t491 + (qJD(3) * t169 - t490 * t87 + t493 * t79 + (t162 * t490 - t175 * t493) * qJD(5)) * t494;
t20 = (qJD(3) * t591 + t81) * t491 + (qJD(3) * t166 - t490 * t89 - t493 * t85 + (t172 * t490 + t177 * t493) * qJD(5)) * t494;
t970 = t18 + t20;
t968 = -t1020 * t373 + t1021 * t372 + t928 * t469;
t967 = -t1018 * t373 + t1019 * t372 + t469 * t927;
t958 = t1003 * t484;
t957 = t1003 * t485;
t956 = t1002 * t484;
t955 = t1002 * t485;
t473 = t484 * rSges(4,3);
t293 = rSges(4,1) * t803 - rSges(4,2) * t805 + t473;
t954 = t293 + t925;
t949 = t1005 * t494;
t947 = t1006 * t373 - t1032 * t469 - t1052 * t372;
t920 = t1018 * t484 + t1019 * t485;
t946 = -t1018 * t485 + t1019 * t484;
t919 = t1020 * t484 + t1021 * t485;
t945 = -t1020 * t485 + t1021 * t484;
t944 = -t1022 * t485 + t1023 * t484;
t918 = t1022 * t484 + t1023 * t485;
t727 = qJD(6) * t493;
t468 = t494 * t727;
t730 = qJD(4) * t494;
t575 = t359 * t734 + t363 * t733 + qJD(2) - t730;
t541 = t378 * t733 - t379 * t734 + t575;
t33 = t372 * t786 + t373 * t788 + t468 + t541;
t826 = qJ(4) * t494;
t439 = pkin(3) * t491 - t826;
t672 = -pkin(8) * t491 - t439;
t635 = t672 * t485;
t547 = qJD(3) * t635 + t437;
t492 = sin(qJ(1));
t881 = pkin(1) * t492;
t676 = -t393 - t881;
t645 = -t359 + t676;
t510 = (t379 + t645) * qJD(1) + t547;
t43 = t373 * t948 + t510 - t997;
t670 = t43 * t948;
t943 = -t33 * t788 - t670;
t738 = qJD(1) * t484;
t377 = t439 * t738;
t356 = t439 * t484;
t661 = qJD(1) * t356 + t485 * t730;
t941 = t377 - t661;
t630 = rSges(6,1) * t331 - rSges(6,2) * t330;
t186 = rSges(6,3) * t807 - t630;
t629 = rSges(6,1) * t490 + rSges(6,2) * t493;
t871 = rSges(6,3) * t491;
t532 = t494 * t629 - t871;
t940 = -t186 * t469 + t373 * t532;
t939 = t33 * t786;
t418 = pkin(8) * t705;
t376 = t439 * t734;
t435 = t484 * t486;
t748 = t435 - t376;
t712 = -t418 + t748;
t522 = qJD(1) * t981 + t712;
t44 = t522 + t996;
t937 = t44 * t948;
t936 = -t966 * t154 - t155 * t976 + t310;
t935 = t966 * t156 + t157 * t976 + t311;
t667 = t485 * rSges(3,1) - rSges(3,2) * t484;
t924 = t488 + t667;
t921 = t990 * t494;
t883 = -rSges(7,2) - pkin(3);
t721 = -pkin(8) + t883;
t914 = t721 * t494 + t673;
t913 = t469 * t994 + t687 * t927;
t182 = t329 * rSges(6,1) - t328 * rSges(6,2) + rSges(6,3) * t803;
t65 = t182 * t469 + t372 * t532 + t522;
t64 = t510 + t940;
t859 = t485 * t64;
t912 = t484 * t65 + t859;
t270 = qJD(1) * t378 - t418;
t271 = -pkin(8) * t942 + t467;
t710 = t484 * t736;
t179 = -pkin(3) * t942 - qJ(4) * t710 + t754;
t326 = t484 * t731 + t708;
t747 = -pkin(3) * t705 + t435;
t180 = pkin(3) * t707 + qJ(4) * t326 + t747;
t724 = qJD(1) * qJD(3);
t690 = t485 * t724;
t723 = qJD(3) * qJD(4);
t657 = t179 * t733 + t180 * t734 + t359 * t690 + t491 * t723;
t554 = t270 * t734 + t271 * t733 - t379 * t690 + t657;
t760 = -t363 - t378;
t637 = t760 * t738;
t695 = t491 * t727;
t696 = t490 * t728;
t877 = -rSges(7,2) * t942 + t935;
t878 = rSges(7,2) * t550 - t936;
t5 = -qJD(6) * t696 + t877 * t373 + t878 * t372 + t786 * t269 - t788 * t268 + (t637 - t695) * qJD(3) + t554;
t901 = t33 * t877 + t5 * t788;
t769 = -Icges(5,3) * t807 + t282 - t449;
t771 = t598 * t484 + t280;
t900 = -t491 * t769 - t494 * t771;
t774 = -Icges(4,2) * t807 + t277 - t454;
t776 = t431 * t484 + t275;
t899 = -t491 * t774 - t494 * t776;
t898 = m(5) / 0.2e1;
t897 = m(6) / 0.2e1;
t896 = m(7) / 0.2e1;
t894 = t268 / 0.2e1;
t893 = t269 / 0.2e1;
t892 = -t372 / 0.2e1;
t891 = t372 / 0.2e1;
t890 = -t373 / 0.2e1;
t889 = t373 / 0.2e1;
t888 = -t469 / 0.2e1;
t887 = t469 / 0.2e1;
t876 = rSges(4,1) * t494;
t874 = rSges(5,2) * t491;
t872 = rSges(5,3) * t491;
t870 = t17 * t372;
t869 = t18 * t373;
t868 = t19 * t372;
t867 = t20 * t373;
t862 = t43 * t485;
t858 = t67 * t269;
t857 = t68 * t268;
t856 = t69 * t269;
t855 = t70 * t268;
t854 = -rSges(5,3) - qJ(4);
t53 = t182 * t373 + t186 * t372 + t541;
t825 = qJD(3) * t53;
t744 = rSges(4,2) * t808 + t485 * rSges(4,3);
t292 = rSges(4,1) * t807 - t744;
t441 = rSges(4,1) * t491 + rSges(4,2) * t494;
t702 = t441 * t733;
t133 = -t702 + (-t292 + t676) * qJD(1);
t822 = t133 * t484;
t821 = t133 * t485;
t706 = t441 * t734;
t134 = qJD(1) * t954 - t706;
t362 = t441 * t485;
t820 = t134 * t362;
t374 = qJD(3) * t443 - t730;
t812 = t374 * t485;
t800 = t493 * t494;
t798 = t157 * rSges(6,1) - t156 * rSges(6,2);
t375 = t394 * qJD(1);
t789 = -t180 - t375;
t785 = -t328 * t976 + t329 * t966;
t784 = t330 * t976 - t331 * t966;
t364 = rSges(7,2) * t494 + t491 * t626;
t390 = (-rSges(7,1) * t493 - rSges(7,3) * t490) * t494;
t548 = -t493 * t732 - t696;
t783 = t468 + t548 * qJ(6) + (t490 * t732 - t493 * t728) * pkin(5) + qJD(3) * t364 + qJD(5) * t390;
t778 = t948 * t484;
t775 = -t431 * t485 - t276;
t773 = -t429 * t485 + t278;
t772 = -t598 * t485 + t279;
t770 = Icges(5,3) * t803 + t281 + t450;
t767 = -t294 - t363;
t766 = t484 * t359 + t485 * t363;
t360 = t439 * t485;
t765 = -qJD(1) * t360 + t484 * t730;
t759 = -t624 * t491 - t364;
t444 = -rSges(5,2) * t494 + t872;
t757 = -t444 * qJD(3) - t374;
t755 = -(-pkin(5) * t493 - qJ(6) * t490) * t494 - t390;
t753 = rSges(4,2) * t710 + rSges(4,3) * t737;
t752 = -t596 + t599;
t751 = -t597 - t598;
t750 = -t429 + t432;
t749 = t431 + t606;
t625 = rSges(5,3) * t494 + t874;
t746 = -t439 + t625;
t745 = -t443 - t444;
t743 = t484 ^ 2 + t485 ^ 2;
t740 = qJD(1) * t426;
t739 = qJD(1) * t605;
t719 = t497 * t881;
t718 = t497 * t488;
t717 = t65 * t737;
t716 = t485 * t179 + t484 * t180 + t359 * t737;
t715 = -t356 * t734 - t360 * t733 + t486;
t713 = t418 - t747;
t698 = t182 * t728;
t697 = t186 * t728;
t691 = -pkin(2) - t876;
t689 = t494 * t723;
t685 = t737 / 0.2e1;
t684 = -t734 / 0.2e1;
t681 = t733 / 0.2e1;
t680 = -t732 / 0.2e1;
t679 = t731 / 0.2e1;
t674 = t479 - t881;
t668 = rSges(5,1) * t485 - rSges(5,3) * t808;
t666 = t485 * t746;
t655 = t485 * t378 - t484 * t379 + t766;
t653 = rSges(5,1) * t737 + rSges(5,2) * t942 + rSges(5,3) * t700;
t646 = qJD(1) * (-pkin(2) * t738 + t466) - t719;
t643 = t532 + t672;
t640 = qJD(5) * t679;
t639 = -pkin(2) + (rSges(5,2) - pkin(3)) * t494;
t638 = -pkin(8) * t731 - t374;
t392 = rSges(3,1) * t484 + rSges(3,2) * t485;
t632 = -rSges(4,2) * t491 + t876;
t631 = rSges(6,1) * t155 - rSges(6,2) * t154;
t623 = -t44 * t484 - t862;
t595 = -t134 * t484 - t821;
t590 = t182 * t484 - t186 * t485;
t584 = t292 * t484 + t293 * t485;
t579 = qJD(1) * t376 + t485 * t689 - t718;
t577 = t672 + t948;
t365 = rSges(6,3) * t494 + t491 * t629;
t391 = (-rSges(6,1) * t493 + rSges(6,2) * t490) * t494;
t236 = qJD(3) * t365 + qJD(5) * t391;
t576 = -t236 + t638;
t574 = t484 * t270 + t485 * t271 - t379 * t737 + t716;
t569 = qJD(3) * t666 + t437;
t358 = t441 * t484;
t357 = t625 * t484;
t567 = t638 - t783;
t565 = t379 + t674;
t551 = t484 * t689 + t646 + (t179 + t437) * qJD(1);
t546 = t33 * t878 + t5 * t786;
t540 = -t43 * t786 + t44 * t788;
t539 = -t937 - t939;
t538 = -t491 * t773 + t494 * t775;
t537 = t491 * t770 + t494 * t772;
t536 = qJD(1) * t635 - t374 * t484;
t524 = (t491 * t751 + t494 * t752) * qJD(1);
t523 = (-t491 * t749 + t494 * t750) * qJD(1);
t203 = -rSges(4,1) * t942 - rSges(4,2) * t700 + t753;
t204 = -qJD(3) * t358 + (t485 * t632 + t473) * qJD(1);
t517 = t203 * t485 + t204 * t484 + (t292 * t485 - t293 * t484) * qJD(1);
t496 = qJD(3) ^ 2;
t516 = qJD(1) * t271 - t461 * t496 + t551;
t511 = t53 * t590 - (-t484 * t64 + t485 * t65) * t532;
t503 = -t496 * t462 + t579 + (t418 - t270 - t435 + t789) * qJD(1);
t502 = -t484 * t943 + t539 * t485;
t402 = t632 * qJD(3);
t361 = t625 * t485;
t327 = t700 - t710;
t325 = t743 * t732;
t295 = rSges(5,2) * t807 + t668;
t262 = t532 * t485;
t260 = t532 * t484;
t225 = rSges(6,1) * t330 + rSges(6,2) * t331;
t221 = -rSges(6,1) * t328 - rSges(6,2) * t329;
t206 = -rSges(5,3) * t710 + t653;
t205 = qJD(3) * t357 + (t444 * t485 + t474) * qJD(1);
t132 = qJD(3) * t584 + qJD(2);
t103 = qJD(1) * t993 + t625 * t734 + t748;
t102 = (t295 + t645) * qJD(1) + t569;
t101 = -t718 - t402 * t733 + (-t204 - t375 + t706) * qJD(1);
t100 = -t402 * t734 + (t203 - t702) * qJD(1) + t646;
t97 = (t294 * t485 - t295 * t484) * qJD(3) + t575;
t96 = -rSges(6,3) * t942 + t798;
t94 = rSges(6,3) * t550 + t631;
t66 = t517 * qJD(3);
t55 = t757 * t733 + (-t205 + (-qJD(3) * t625 - t486) * t484 + t789) * qJD(1) + t579;
t54 = qJD(1) * t206 + (qJD(1) * t666 + t484 * t757) * qJD(3) + t551;
t34 = (t205 * t484 + t206 * t485 + (-t295 * t485 + t484 * t767) * qJD(1)) * qJD(3) + t657;
t26 = -t236 * t373 - t268 * t532 - t469 * t94 + (-t697 - t812) * qJD(3) + t503;
t25 = -t236 * t372 + t269 * t532 + t469 * t96 + (t536 + t698) * qJD(3) + t516;
t16 = qJD(3) * t637 - t182 * t268 + t186 * t269 + t372 * t94 + t373 * t96 + t554;
t7 = qJD(6) * t156 - t878 * t469 - t783 * t373 - t948 * t268 + (-t728 * t786 - t812) * qJD(3) + t503;
t6 = qJD(6) * t154 + t877 * t469 - t783 * t372 + t948 * t269 + (t728 * t788 + t536) * qJD(3) + t516;
t1 = [t913 + ((t999 * t484 + ((t1046 + t1080) * t485 + t1012 + t1065 + t1079) * t485) * qJD(3) + t1033) * t681 + t928 * t894 + t929 * t893 + (-t937 * t373 + t6 * (t981 + t788) + t914 * t862 * qJD(1) + (t565 + t959 + (t494 * t883 + t673) * t484) * t7 + (t439 * t733 + t738 * t914 - t437 + t935 + (pkin(8) + t721) * t701 + t997 + t1001) * t44 + (t712 + t713 + t936 + (-t826 + t873) * t734 + (t981 + t1028) * qJD(1) + t996) * t43) * m(7) + (t25 * (t981 + t182) + t859 * t998 + (t565 + t630 + (t494 * t882 + t673) * t484) * t26 + (-t631 + t713 + (-t826 + t871) * t734 + t1028 * qJD(1)) * t64 + (t484 * t998 + t720 * t701 + t1001 - t547 + t64 + t798 - t940) * t65) * m(6) + (-(-t102 + (t295 - t881) * qJD(1) + t569 + t926) * t103 + t55 * (t668 + t674) - t102 * t747 + t54 * t993 + t103 * (-pkin(3) * t701 + t653 + t714) + (t55 * (t639 - t827) + t102 * (t494 * t854 - t874) * qJD(3)) * t484 + ((-t102 * t495 - t103 * t492) * pkin(1) + t102 * (t491 * t854 + t639) * t485 + (t102 * (-rSges(5,1) - pkin(7)) + t103 * (-pkin(2) - t443 - t872)) * t484) * qJD(1)) * m(5) + (t101 * (t484 * t691 + t674 + t744) + t100 * t954 + t134 * (t466 + t753) + (t441 * t822 - t820) * qJD(3) + ((-t133 * t495 - t134 * t492) * pkin(1) + (-pkin(2) - t632) * t821 + (t133 * (-rSges(4,3) - pkin(7)) + t134 * t691) * t484) * qJD(1) - (-t702 - t133 - t380 + (-t292 - t881) * qJD(1)) * t134) * m(4) - (t1014 - t1017 + t1024) * t733 / 0.2e1 + t1026 * t891 + (t1027 + t969) * t890 + t969 * t889 + m(3) * ((-t392 * t497 - t719) * t924 + (-t718 + (-0.2e1 * t667 - t488 + t924) * t497) * (-t392 - t881)) + t858 / 0.2e1 + (-t726 + 0.2e1 * t725 + ((t1000 * t485 + t1010 - t999) * t485 + (t1000 * t484 + t1011 + t1066) * t484) * qJD(3) + t1025) * t684 + t855 / 0.2e1 + t856 / 0.2e1 + t857 / 0.2e1 - t867 / 0.2e1 + (t1015 + t1016) * t734 / 0.2e1 + t870 / 0.2e1 + t868 / 0.2e1 - t869 / 0.2e1 + (t1068 * qJD(3) + t1072 * t491 + t1073 * t494) * qJD(1) + ((t1008 + t1062) * t485 + (t199 + t1009) * t484) * t724 / 0.2e1; m(4) * t66 + m(5) * t34 + m(6) * t16 + m(7) * t5; t945 * t894 + t944 * t893 + ((-t1022 * t808 + t929 * t494) * qJD(5) + ((-qJD(5) * t1023 + t947) * t491 + t949) * t485 + (t328 * t952 + t329 * t951) * t469 + (-t328 * t958 - t329 * t956) * t373 + (t328 * t957 + t329 * t955) * t372) * t892 + (qJD(1) * t918 + t484 * t973 - t485 * t972) * t891 + (qJD(1) * t919 + t484 * t975 - t485 * t974) * t890 + ((-t1021 * t805 + t928 * t494) * qJD(5) + ((-qJD(5) * t1020 + t947) * t491 + t949) * t484 + (-t330 * t952 - t331 * t951) * t469 + (t330 * t958 + t331 * t956) * t373 + (-t330 * t957 - t331 * t955) * t372) * t889 + (((-t490 * t951 + t493 * t952 + t1032) * t469 + (t490 * t956 - t493 * t958 - t1006) * t373 + (-t490 * t955 + t493 * t957 + t1052) * t372 + t927 * qJD(5)) * t494 + (-qJD(5) * t920 + t1005) * t491) * t888 + (qJD(1) * t920 + t484 * t971 - t485 * t970) * t887 - ((((-t769 - t774) * t485 + (-t770 + t773) * t484) * t494 + ((t771 + t776) * t485 + (t772 + t775) * t484) * t491) * qJD(3) + ((t749 - t751) * t494 + (t750 + t752) * t491) * qJD(1)) * qJD(1) / 0.2e1 + (t1017 * t485 + t1016 * t484 + (t1008 * t485 + t1009 * t484) * qJD(1)) * qJD(1) / 0.2e1 + ((-t734 * t810 + t740) * t484 + (t523 + (-t899 * t485 + (t811 + t538) * t484) * qJD(3)) * t485 + (t351 * t734 - t739) * t484 + (t524 + (-t900 * t485 + (-t350 + t537) * t484) * qJD(3)) * t485) * t684 + ((t350 * t733 + t739) * t485 + (t524 + (t537 * t484 + (-t351 - t900) * t485) * qJD(3)) * t484 + (-t733 * t811 - t740) * t485 + (t523 + (t538 * t484 + (t810 - t899) * t485) * qJD(3)) * t484) * t681 - t967 * t728 / 0.2e1 + t946 * t640 + (t5 * t655 + t33 * t574 + (t6 * t577 + t44 * t567 + (-t670 + t33 * (t760 - t788)) * qJD(1) + t546) * t484 - t44 * (-pkin(8) * t708 - t468 * t484 + t765) - t33 * (-t695 + t715) - (t33 * t778 + t44 * t759) * t372 - (t623 * t443 + (-t33 * t491 * t743 + t494 * t623) * pkin(8)) * qJD(3) - (t491 * t502 + t494 * t540) * qJD(5) + (-t759 * t373 + t778 * t469 + t941) * t43 + (t7 * t577 + (t44 * t577 + t939) * qJD(1) + t901 + (-t33 * t373 - t44 * t469) * t948 + (t468 + t567) * t43) * t485) * m(7) + (-t65 * (t262 * t469 - t365 * t372 + t698 + t765) - ((-t743 * t825 - t717) * pkin(8) + t511 * qJD(5)) * t491 - t912 * qJD(3) * (-pkin(8) * t494 - t443) + t16 * t655 + (t16 * t182 + (qJD(1) * t65 + t26) * t643) * t485 + (t16 * t186 + t25 * t643 + t65 * t576) * t484 + (t260 * t469 + t365 * t373 + t485 * t576 - t532 * t738 + t697 + t941) * t64 + (-t260 * t372 - t262 * t373 - t715 + t574 + (qJD(1) * t186 + t96) * t485 + (t94 + (-t182 + t760) * qJD(1)) * t484) * t53) * m(6) + (-t102 * (-qJD(1) * t357 + t661) - t103 * (qJD(1) * t361 + t765) - t97 * t715 - ((t102 * t745 + t97 * t361) * t485 + (t103 * t745 + t97 * t357) * t484) * qJD(3) + t102 * t377 + t34 * t766 + t97 * t716 + (t55 * t746 + t102 * t757 + t34 * t294 + t97 * t206 + (t103 * t746 - t97 * t295) * qJD(1)) * t485 + (t54 * t746 + t103 * t757 - t34 * t295 + t97 * t205 + (-t102 * t625 + t767 * t97) * qJD(1)) * t484) * m(5) + (t66 * t584 + t132 * t517 + t595 * t402 + (-t100 * t484 - t101 * t485 + (-t134 * t485 + t822) * qJD(1)) * t441 - (t133 * t358 - t820) * qJD(1) - (t132 * (-t358 * t484 - t362 * t485) + t595 * t632) * qJD(3)) * m(4) + (t1015 * qJD(1) + t977 + (t1010 * t737 + (qJD(1) * t1011 + t983 * t484 - t1013) * t484) * t979) * t484 / 0.2e1 - (t1014 * qJD(1) + t978 + ((qJD(1) * t1012 + t1013) * t485 + (qJD(1) * t1064 - t983 * t485) * t484) * t979) * t485 / 0.2e1 + (t968 + t1025 + t1031) * t738 / 0.2e1 + (t969 + t1024 + t1030) * t685 + (t484 * t968 + t485 * t969) * t729 / 0.2e1; -m(5) * (t102 * t327 + t103 * t326 + t325 * t97) - m(6) * (t325 * t53 + t326 * t65 + t327 * t64) - m(7) * (t325 * t33 + t326 * t44 + t327 * t43) + 0.2e1 * ((t102 * t733 + t103 * t734 - t34) * t898 + (t64 * t733 + t65 * t734 - t16) * t897 + (t43 * t733 + t44 * t734 - t5) * t896) * t494 + 0.2e1 * ((qJD(3) * t97 - t102 * t738 + t103 * t737 + t484 * t54 + t485 * t55) * t898 + (t25 * t484 + t26 * t485 - t64 * t738 + t717 + t825) * t897 + (qJD(3) * t33 - t43 * t738 + t44 * t737 + t484 * t6 + t485 * t7) * t896) * t491; (t491 * t928 + t494 * t919) * t894 + (t491 * t929 + t494 * t918) * t893 + (-t328 * t995 - t329 * t922 + t921 * t485) * t892 + ((-qJD(1) * t944 + t929 * qJD(3) + t484 * t972 + t485 * t973) * t494 + (-qJD(3) * t918 + t1026) * t491) * t891 + ((-qJD(1) * t945 + t928 * qJD(3) + t484 * t974 + t485 * t975) * t494 + (-qJD(3) * t919 + t1027) * t491) * t890 + (t330 * t995 + t922 * t331 + t921 * t484) * t889 + ((t490 * t922 - t493 * t995) * t494 + t990 * t491) * t888 + ((-qJD(1) * t946 + t927 * qJD(3) + t484 * t970 + t485 * t971) * t494 + (-qJD(3) * t920 + t994) * t491) * t887 + (t857 + t858 - t869 + t870 + t855 + t856 - t867 + t868 + t913) * t491 / 0.2e1 + t978 * t807 / 0.2e1 + t977 * t803 / 0.2e1 + t967 * t679 + (t491 * t927 + t494 * t920) * t640 + ((qJD(3) * t502 - t43 * t878 + t44 * t877 + t6 * t788 - t7 * t786) * t491 + (t540 * qJD(3) + (qJD(1) * t943 - t44 * t783 + t6 * t948 + t546) * t485 + (qJD(1) * t539 + t43 * t783 - t7 * t948 - t901) * t484) * t494 - (-t33 * t490 * t494 + t329 * t43 - t331 * t44) * qJD(6) - (-t43 * t784 + t44 * t785) * t469 - (t33 * t785 + t43 * t755) * t373 - (t33 * t784 + t44 * t755) * t372) * m(7) + ((qJD(3) * t511 + t25 * t182 - t26 * t186 - t64 * t94 + t65 * t96) * t491 + (t64 * (-qJD(3) * t186 + t236 * t484) + t65 * (qJD(3) * t182 - t236 * t485) - t16 * t590 + t53 * (-t182 * t737 - t186 * t738 - t484 * t96 + t485 * t94) - (qJD(1) * t912 - t25 * t485 + t26 * t484) * t532) * t494 - t64 * (-t225 * t469 - t373 * t391) - t65 * (t221 * t469 - t372 * t391) - t53 * (t221 * t373 + t225 * t372)) * m(6) + t968 * (t484 * t680 + t494 * t685) + t969 * (t485 * t680 - t709 / 0.2e1); (t328 * t7 - t330 * t6 + t5 * t800 + (-t328 * t469 + t372 * t800 + t154) * t44 + (-t330 * t469 + t373 * t800 + t156) * t43 + (-t328 * t373 + t330 * t372 + t548) * t33) * m(7);];
tauc  = t1(:);
