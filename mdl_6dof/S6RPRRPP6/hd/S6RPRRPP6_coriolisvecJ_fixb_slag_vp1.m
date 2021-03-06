% Calculate vector of centrifugal and Coriolis load on the joints for
% S6RPRRPP6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,theta5]';
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
% Datum: 2019-03-09 04:49
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S6RPRRPP6_coriolisvecJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(9,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPP6_coriolisvecJ_fixb_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRPP6_coriolisvecJ_fixb_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPRRPP6_coriolisvecJ_fixb_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRRPP6_coriolisvecJ_fixb_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RPRRPP6_coriolisvecJ_fixb_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RPRRPP6_coriolisvecJ_fixb_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 04:46:22
% EndTime: 2019-03-09 04:48:18
% DurationCPUTime: 104.40s
% Computational Cost: add. (33260->1346), mult. (58447->1688), div. (0->0), fcn. (55007->8), ass. (0->618)
t1108 = Icges(6,1) + Icges(7,1);
t1089 = Icges(7,4) + Icges(6,5);
t1088 = Icges(6,6) - Icges(7,6);
t564 = qJ(4) + pkin(9);
t548 = sin(t564);
t1138 = (Icges(6,4) - Icges(7,5)) * t548;
t549 = cos(t564);
t1137 = t1108 * t549 - t1138;
t1107 = Icges(6,2) + Icges(7,3);
t567 = sin(qJ(3));
t570 = cos(qJ(3));
t916 = Icges(6,4) * t549;
t679 = -Icges(6,2) * t548 + t916;
t1136 = -t1088 * t567 - t570 * t679;
t571 = cos(qJ(1));
t886 = t567 * t571;
t568 = sin(qJ(1));
t890 = t549 * t568;
t402 = t548 * t886 + t890;
t390 = Icges(7,5) * t402;
t877 = t571 * t549;
t883 = t568 * t548;
t403 = t567 * t877 - t883;
t878 = t570 * t571;
t203 = -Icges(7,1) * t403 + Icges(7,4) * t878 - t390;
t393 = Icges(6,4) * t402;
t205 = Icges(6,1) * t403 - Icges(6,5) * t878 - t393;
t1016 = -t205 + t203;
t391 = Icges(7,5) * t403;
t190 = -Icges(7,6) * t878 + Icges(7,3) * t402 + t391;
t394 = Icges(6,4) * t403;
t200 = Icges(6,2) * t402 + Icges(6,6) * t878 - t394;
t1017 = -t200 - t190;
t569 = cos(qJ(4));
t879 = t569 * t571;
t566 = sin(qJ(4));
t882 = t568 * t566;
t450 = t567 * t879 - t882;
t438 = Icges(5,4) * t450;
t881 = t568 * t569;
t449 = t566 * t886 + t881;
t278 = Icges(5,2) * t449 + Icges(5,6) * t878 - t438;
t437 = Icges(5,4) * t449;
t280 = Icges(5,1) * t450 - Icges(5,5) * t878 - t437;
t1135 = t1016 * t403 + t1017 * t402 - t278 * t449 - t280 * t450;
t1134 = Icges(7,2) + Icges(5,3) + Icges(6,3);
t1133 = Icges(5,5) * t569 - Icges(5,6) * t566 - t1088 * t548 + t1089 * t549;
t909 = Icges(7,5) * t549;
t510 = t570 * t909;
t891 = t548 * t570;
t1106 = Icges(7,3) * t891 + t1136 + t510;
t1099 = t1089 * t567 + t1137 * t570;
t1128 = t1133 * t570 + t1134 * t567;
t919 = Icges(5,4) * t569;
t680 = -Icges(5,2) * t566 + t919;
t409 = Icges(5,6) * t567 + t570 * t680;
t920 = Icges(5,4) * t566;
t684 = Icges(5,1) * t569 - t920;
t413 = Icges(5,5) * t567 + t570 * t684;
t1001 = -t1099 * t403 - t1106 * t402 + t1128 * t878 + t409 * t449 - t413 * t450;
t400 = t567 * t883 - t877;
t887 = t567 * t568;
t401 = t548 * t571 + t549 * t887;
t880 = t568 * t570;
t192 = Icges(6,5) * t401 - Icges(6,6) * t400 - Icges(6,3) * t880;
t195 = Icges(7,4) * t401 - Icges(7,2) * t880 + Icges(7,6) * t400;
t447 = -t567 * t882 + t879;
t888 = t566 * t571;
t448 = t567 * t881 + t888;
t273 = Icges(5,5) * t448 + Icges(5,6) * t447 - Icges(5,3) * t880;
t1111 = t192 + t195 + t273;
t911 = Icges(7,5) * t400;
t201 = Icges(7,1) * t401 - Icges(7,4) * t880 + t911;
t392 = Icges(6,4) * t400;
t204 = Icges(6,1) * t401 - Icges(6,5) * t880 - t392;
t1118 = t201 + t204;
t389 = Icges(7,5) * t401;
t189 = -Icges(7,6) * t880 + Icges(7,3) * t400 + t389;
t918 = Icges(6,4) * t401;
t198 = -Icges(6,2) * t400 - Icges(6,6) * t880 + t918;
t1119 = t189 - t198;
t921 = Icges(5,4) * t448;
t276 = Icges(5,2) * t447 - Icges(5,6) * t880 + t921;
t436 = Icges(5,4) * t447;
t279 = Icges(5,1) * t448 - Icges(5,5) * t880 + t436;
t1038 = t1111 * t878 - t1118 * t403 - t1119 * t402 + t449 * t276 - t450 * t279;
t802 = qJD(4) * t570;
t804 = qJD(3) * t571;
t481 = -t568 * t802 + t804;
t803 = qJD(4) * t567;
t536 = qJD(1) + t803;
t1132 = -t1001 * t536 - t1038 * t481;
t1102 = t1118 * t401 + t1119 * t400 + t447 * t276 + t448 * t279;
t194 = -Icges(6,5) * t403 + Icges(6,6) * t402 + Icges(6,3) * t878;
t197 = -Icges(7,4) * t403 + Icges(7,2) * t878 - Icges(7,6) * t402;
t275 = -Icges(5,5) * t450 + Icges(5,6) * t449 + Icges(5,3) * t878;
t998 = t194 + t197 + t275;
t1131 = (-t1111 * t568 - t571 * t998) * t570 + t1102 + t1135;
t674 = Icges(7,3) * t548 + t909;
t1064 = -t1088 * t570 + (-t674 + t679) * t567;
t1063 = t1089 * t570 - t1137 * t567;
t1130 = (t1107 * t549 + t1138) * t570;
t1127 = -t1133 * t567 + t1134 * t570;
t1126 = (-Icges(5,5) * t566 - Icges(5,6) * t569 - t1088 * t549 - t1089 * t548) * t570;
t1096 = t1016 * t401 + t1017 * t400 + t447 * t278 - t280 * t448 - t880 * t998;
t1109 = -t1099 * t549 - t1106 * t548 + t409 * t566 - t413 * t569;
t765 = t567 * t804;
t809 = qJD(1) * t570;
t1058 = t568 * t809 + t765;
t735 = qJD(1) * t567 + qJD(4);
t763 = t570 * t804;
t1061 = -t735 * t568 + t763;
t801 = qJD(4) * t571;
t761 = t567 * t801;
t808 = qJD(1) * t571;
t181 = (-t761 - t808) * t549 - t1061 * t548;
t651 = t571 * t536;
t182 = -t1061 * t549 + t548 * t651;
t104 = Icges(6,4) * t182 - Icges(6,2) * t181 - Icges(6,6) * t1058;
t98 = Icges(7,5) * t182 - Icges(7,6) * t1058 + Icges(7,3) * t181;
t1123 = t104 - t98;
t648 = t735 * t571;
t805 = qJD(3) * t570;
t764 = t568 * t805;
t1060 = -t764 - t648;
t183 = -t1060 * t548 + t536 * t890;
t652 = t568 * t536;
t184 = -t1060 * t549 - t548 * t652;
t806 = qJD(3) * t568;
t766 = t567 * t806;
t768 = t570 * t808;
t620 = t766 - t768;
t105 = Icges(6,4) * t184 - Icges(6,2) * t183 + Icges(6,6) * t620;
t99 = Icges(7,5) * t184 + Icges(7,6) * t620 + Icges(7,3) * t183;
t1122 = t105 - t99;
t106 = Icges(7,1) * t182 - Icges(7,4) * t1058 + Icges(7,5) * t181;
t108 = Icges(6,1) * t182 - Icges(6,4) * t181 - Icges(6,5) * t1058;
t1121 = t106 + t108;
t107 = Icges(7,1) * t184 + Icges(7,4) * t620 + Icges(7,5) * t183;
t109 = Icges(6,1) * t184 - Icges(6,4) * t183 + Icges(6,5) * t620;
t1120 = t107 + t109;
t1117 = qJD(3) * t1064 + t1130 * qJD(4);
t421 = (-Icges(6,1) * t548 - t916) * t570;
t1116 = (-Icges(7,1) * t548 + t909) * t802 + qJD(4) * t421 + t1063 * qJD(3);
t100 = Icges(6,5) * t182 - Icges(6,6) * t181 - Icges(6,3) * t1058;
t102 = Icges(7,4) * t182 - Icges(7,2) * t1058 + Icges(7,6) * t181;
t242 = t1061 * t566 + t569 * t651;
t243 = -t1061 * t569 + t566 * t651;
t128 = Icges(5,5) * t243 + Icges(5,6) * t242 - Icges(5,3) * t1058;
t1113 = t100 + t102 + t128;
t101 = Icges(6,5) * t184 - Icges(6,6) * t183 + Icges(6,3) * t620;
t103 = Icges(7,4) * t184 + Icges(7,2) * t620 + Icges(7,6) * t183;
t244 = t1060 * t566 - t569 * t652;
t650 = t536 * t566;
t245 = t569 * t648 + (t569 * t805 - t650) * t568;
t129 = Icges(5,5) * t245 + Icges(5,6) * t244 + Icges(5,3) * t620;
t1112 = t101 + t103 + t129;
t1110 = qJD(3) * t1127 + qJD(4) * t1126;
t480 = t570 * t801 + t806;
t664 = t278 * t566 + t280 * t569;
t666 = t276 * t566 - t279 * t569;
t667 = t200 * t548 + t205 * t549;
t669 = t198 * t548 - t204 * t549;
t670 = -t190 * t548 + t203 * t549;
t672 = t189 * t548 + t201 * t549;
t1104 = (t1109 + t1127) * t536 + (t1128 * t568 + t666 + t669 - t672) * t481 + (-t1128 * t571 + t664 + t667 - t670) * t480;
t1002 = t1099 * t401 + t1106 * t400 - t1128 * t880 + t409 * t447 + t413 * t448;
t1072 = rSges(7,1) + pkin(5);
t1071 = rSges(7,3) + qJ(6);
t1100 = t570 * t674 + t1136;
t131 = Icges(5,4) * t245 + Icges(5,2) * t244 + Icges(5,6) * t620;
t133 = Icges(5,1) * t245 + Icges(5,4) * t244 + Icges(5,5) * t620;
t1047 = -t1058 * t1111 + t1112 * t878 + t1118 * t182 + t1119 * t181 - t1120 * t403 + t1122 * t402 + t131 * t449 - t133 * t450 + t242 * t276 + t243 * t279;
t130 = Icges(5,4) * t243 + Icges(5,2) * t242 - Icges(5,6) * t1058;
t132 = Icges(5,1) * t243 + Icges(5,4) * t242 - Icges(5,5) * t1058;
t1046 = t1016 * t182 + t1017 * t181 - t998 * t1058 + t1113 * t878 - t1121 * t403 + t1123 * t402 + t130 * t449 - t132 * t450 + t242 * t278 - t243 * t280;
t1045 = t1111 * t620 - t1112 * t880 + t1118 * t184 + t1119 * t183 + t1120 * t401 - t1122 * t400 + t131 * t447 + t133 * t448 + t244 * t276 + t245 * t279;
t1044 = t1016 * t184 + t1017 * t183 - t1113 * t880 + t1121 * t401 - t1123 * t400 + t130 * t447 + t132 * t448 + t244 * t278 - t245 * t280 + t998 * t620;
t408 = Icges(5,6) * t570 - t567 * t680;
t457 = (-Icges(5,2) * t569 - t920) * t570;
t290 = qJD(3) * t408 + qJD(4) * t457;
t412 = Icges(5,5) * t570 - t567 * t684;
t460 = (-Icges(5,1) * t566 - t919) * t570;
t293 = qJD(3) * t412 + qJD(4) * t460;
t1005 = -t1058 * t1128 + t1099 * t182 + t1106 * t181 + t1110 * t878 - t1116 * t403 - t1117 * t402 + t242 * t409 + t243 * t413 + t290 * t449 - t293 * t450;
t1004 = t1099 * t184 + t1106 * t183 - t1110 * t880 + t1116 * t401 + t1117 * t400 + t1128 * t620 + t244 * t409 + t245 * t413 + t290 * t447 + t293 * t448;
t1040 = -t1111 * t880 + t1102;
t1095 = t878 * t998 - t1135;
t79 = t195 * t567 + t570 * t672;
t81 = t192 * t567 - t570 * t669;
t88 = t273 * t567 - t570 * t666;
t1094 = t79 + t81 + t88;
t80 = t197 * t567 + t570 * t670;
t82 = t194 * t567 - t570 * t667;
t89 = t275 * t567 - t570 * t664;
t1093 = t80 + t82 + t89;
t1000 = -t1109 * t570 + t1128 * t567;
t1091 = (t1108 * t400 - t1119 - t389 + t918) * t481 + (-t1108 * t402 - t1017 + t391 - t394) * t480 + (Icges(7,1) * t891 - t1106 - t421 - t510) * t536;
t1090 = (-t1107 * t401 + t1118 - t392 + t911) * t481 + (t1107 * t403 + t1016 - t390 + t393) * t480 + (t1099 - t1130) * t536;
t537 = pkin(3) * t887;
t773 = pkin(3) * t763 + pkin(8) * t1058;
t318 = qJD(1) * t537 - t773;
t512 = pkin(3) * t570 + pkin(8) * t567;
t469 = t512 * t571;
t884 = t568 * t512;
t1087 = t571 * t318 + t469 * t804 + t806 * t884;
t1080 = (-t290 * t566 + t293 * t569 + t1116 * t549 + t1117 * t548 + (-t1099 * t548 + t1106 * t549 - t409 * t569 - t413 * t566) * qJD(4) + t1128 * qJD(3)) * t570 + (qJD(3) * t1109 + t1110) * t567;
t1077 = t1002 * t536 + t1096 * t480;
t1076 = t1104 * t570;
t1073 = 0.2e1 * qJD(3);
t1069 = t1071 * t402 + t1072 * t403;
t1068 = t1100 * t568;
t1067 = t1100 * t571;
t1066 = t1099 * t568;
t1065 = t1099 * t571;
t707 = rSges(7,1) * t549 + rSges(7,3) * t548;
t382 = rSges(7,2) * t567 + t570 * t707;
t706 = pkin(5) * t549 + qJ(6) * t548;
t833 = t706 * t570 + t382;
t545 = pkin(4) * t569 + pkin(3);
t957 = pkin(3) - t545;
t1026 = t567 * t957;
t565 = -qJ(5) - pkin(8);
t956 = pkin(8) + t565;
t364 = -t570 * t956 + t1026;
t550 = qJD(5) * t567;
t947 = pkin(4) * qJD(4);
t791 = t566 * t947;
t271 = qJD(3) * t364 - t570 * t791 + t550;
t983 = t567 * t956 + t570 * t957;
t345 = t983 * t808;
t531 = t568 * t550;
t963 = pkin(3) * t567;
t511 = pkin(8) * t570 - t963;
t737 = qJD(1) * t469 + t511 * t806;
t490 = qJD(3) * t511;
t821 = t568 * t490 + t512 * t808;
t1062 = t568 * t271 - t480 * t364 - t345 - t531 - t737 + t821;
t1059 = t567 * t808 + t764;
t441 = t449 * pkin(4);
t477 = t545 * t763;
t800 = qJD(5) * t571;
t532 = t570 * t800;
t538 = pkin(4) * t888;
t889 = t565 * t570;
t126 = t565 * t765 - t477 + t532 + qJD(4) * t441 + (t538 + (t889 - t1026) * t568) * qJD(1) + t773;
t466 = -pkin(8) * t880 + t537;
t777 = t545 * t887 + t565 * t880 + t538;
t282 = -t466 + t777;
t468 = pkin(3) * t886 - pkin(8) * t878;
t820 = t545 * t886 + t565 * t878;
t283 = pkin(4) * t882 + t468 - t820;
t315 = t983 * t571;
t551 = qJD(5) * t570;
t762 = t568 * t803;
t1057 = t571 * t126 - t282 * t761 - t283 * t762 - t481 * t315 + t1087 - t551;
t713 = rSges(5,1) * t569 - rSges(5,2) * t566;
t430 = rSges(5,3) * t567 + t570 * t713;
t1056 = qJD(1) * t430;
t922 = Icges(4,4) * t570;
t498 = -Icges(4,2) * t567 + t922;
t685 = Icges(4,1) * t567 + t922;
t818 = t498 + t685;
t923 = Icges(4,4) * t567;
t500 = Icges(4,1) * t570 - t923;
t681 = Icges(4,2) * t570 + t923;
t819 = -t681 + t500;
t1055 = (t567 * t818 - t570 * t819) * qJD(1);
t508 = t571 * pkin(1) + t568 * qJ(2);
t562 = t571 * pkin(7);
t1010 = t562 + t508;
t561 = t571 * rSges(4,3);
t429 = rSges(4,1) * t887 + rSges(4,2) * t880 + t561;
t1054 = t429 + t1010;
t810 = qJD(1) * t568;
t474 = t512 * t810;
t885 = t568 * t983;
t1053 = -t282 * t802 + t536 * t885 - t810 * t983 + t474;
t387 = t402 * qJD(6);
t1014 = t1071 * t400 + t1072 * t401;
t861 = -rSges(7,2) * t880 + t1014;
t785 = t282 + t861;
t1052 = -t481 * t833 + t785 * t536 - t387;
t794 = qJD(3) * qJD(4);
t753 = t567 * t794;
t366 = -qJD(1) * t480 + t568 * t753;
t367 = qJD(1) * t481 - t571 * t753;
t752 = t570 * t794;
t1051 = t1001 * t752 + t1005 * t536 + t1038 * t366 + t1046 * t480 + t1047 * t481 + t1095 * t367;
t1050 = t1002 * t752 + t1004 * t536 + t1040 * t366 + t1044 * t480 + t1045 * t481 + t1096 * t367;
t533 = Icges(4,4) * t880;
t914 = Icges(4,5) * t571;
t414 = Icges(4,1) * t887 + t533 + t914;
t415 = -Icges(4,5) * t568 + t571 * t685;
t459 = t498 * t571;
t605 = t568 * (t415 + t459) - t571 * (-Icges(4,2) * t887 + t414 + t533);
t410 = Icges(4,6) * t571 + t568 * t681;
t411 = -Icges(4,6) * t568 + t571 * t681;
t461 = t500 * t568;
t462 = t500 * t571;
t606 = t568 * (t411 - t462) - t571 * (t410 - t461);
t1049 = -t606 * t567 + t605 * t570;
t19 = (-qJD(3) * t672 + t103) * t567 + (qJD(3) * t195 + t107 * t549 + t548 * t99 + (t189 * t549 - t201 * t548) * qJD(4)) * t570;
t21 = (qJD(3) * t669 + t101) * t567 + (qJD(3) * t192 - t105 * t548 + t109 * t549 + (-t198 * t549 - t204 * t548) * qJD(4)) * t570;
t29 = (qJD(3) * t666 + t129) * t567 + (qJD(3) * t273 - t131 * t566 + t133 * t569 + (-t276 * t569 - t279 * t566) * qJD(4)) * t570;
t1043 = t19 + t21 + t29;
t20 = (-qJD(3) * t670 + t102) * t567 + (qJD(3) * t197 + t106 * t549 + t548 * t98 + (-t190 * t549 - t203 * t548) * qJD(4)) * t570;
t22 = (qJD(3) * t667 + t100) * t567 + (qJD(3) * t194 - t104 * t548 + t108 * t549 + (-t200 * t549 + t205 * t548) * qJD(4)) * t570;
t30 = (qJD(3) * t664 + t128) * t567 + (qJD(3) * t275 - t130 * t566 + t132 * t569 + (-t278 * t569 + t280 * t566) * qJD(4)) * t570;
t1042 = t20 + t22 + t30;
t1007 = t1095 * t480 - t1132;
t1006 = t1040 * t481 + t1077;
t1041 = t1000 * t536 + t1093 * t480 + t1094 * t481;
t1036 = -t1111 * t481 - t1128 * t536 - t480 * t998;
t996 = -t1093 * t571 + t1094 * t568;
t995 = t1038 * t568 - t1095 * t571;
t994 = t1040 * t568 - t1096 * t571;
t1035 = t1093 * t568 + t1094 * t571;
t1034 = t1038 * t571 + t1095 * t568;
t1033 = t1040 * t571 + t1096 * t568;
t286 = -rSges(5,1) * t450 + rSges(5,2) * t449 + rSges(5,3) * t878;
t1032 = -t286 * t536 + t430 * t480;
t388 = qJD(6) * t400;
t472 = t512 * t806;
t552 = qJD(2) * t568;
t555 = t571 * qJ(2);
t504 = pkin(1) * t568 - t555;
t961 = pkin(7) * t568;
t742 = -t504 - t961;
t601 = t472 + t552 + (t468 + t742) * qJD(1);
t760 = t568 * t551;
t582 = -t480 * t983 + t601 - t760;
t858 = rSges(7,2) * t878 - t1069;
t783 = -t283 - t858;
t50 = t480 * t833 + t536 * t783 + t388 + t582;
t305 = t481 * t983;
t553 = qJD(2) * t571;
t988 = (t466 + t1010) * qJD(1) - t512 * t804;
t600 = -t553 + t988;
t592 = t532 + t305 + t600;
t51 = t592 + t1052;
t953 = rSges(7,2) * t570;
t380 = -t567 * t707 + t953;
t425 = (-rSges(7,1) * t548 + rSges(7,3) * t549) * t570;
t799 = qJD(6) * t570;
t501 = t548 * t799;
t807 = qJD(3) * t567;
t618 = -t548 * t807 + t549 * t802;
t870 = t501 + t618 * qJ(6) + (-t548 * t802 - t549 * t807) * pkin(5) + qJD(3) * t380 + qJD(4) * t425;
t797 = qJD(1) * qJD(2);
t542 = t571 * t797;
t572 = qJD(1) ^ 2;
t723 = -t562 * t572 + t542;
t796 = qJD(1) * qJD(3);
t754 = t512 * t796;
t628 = t490 * t806 + t571 * t754 + t723;
t439 = qJD(1) * t508 - t553;
t845 = -t318 - t439;
t593 = qJD(1) * t845 + t628;
t1029 = -t1071 * t181 - t1072 * t182 + t387;
t928 = -rSges(7,2) * t1058 - t1029;
t789 = -t126 - t928;
t795 = qJD(1) * qJD(5);
t999 = qJD(3) * t531 + t480 * t271 - t367 * t983;
t9 = qJD(6) * t183 + t870 * t480 + t833 * t367 + t789 * t536 + (-t571 * t795 + t783 * t794) * t570 + t593 + t999;
t1031 = t50 * t870 + (qJD(1) * t51 + t9) * t833;
t710 = rSges(6,1) * t549 - rSges(6,2) * t548;
t383 = rSges(6,3) * t567 + t570 * t710;
t831 = t401 * rSges(6,1) - t400 * rSges(6,2);
t208 = -rSges(6,3) * t880 + t831;
t860 = t208 + t282;
t68 = -t383 * t481 + t536 * t860 + t592;
t839 = -t983 + t383;
t1030 = t68 * t839;
t1028 = rSges(7,2) * t766 + t1071 * t183 + t1072 * t184 + t388;
t657 = t411 * t570 + t415 * t567;
t1021 = t657 * t571;
t774 = pkin(3) * t1059 + pkin(8) * t766;
t617 = pkin(8) * t768 - t774;
t1013 = -qJD(1) * t617 + t568 * t754;
t1012 = -t490 - t550;
t738 = -rSges(3,2) * t571 + t568 * rSges(3,3);
t1011 = t508 + t738;
t1003 = qJD(3) * t551 + t481 * t126 + t366 * t283;
t997 = t1126 * t536 + (Icges(5,5) * t447 - Icges(5,6) * t448 - t1088 * t401 - t1089 * t400) * t481 + (Icges(5,5) * t449 + Icges(5,6) * t450 + t1088 * t403 + t1089 * t402) * t480;
t991 = t1000 * t752 + t1080 * t536;
t238 = t411 * t567 - t415 * t570;
t291 = qJD(1) * t410 - qJD(3) * t459;
t294 = -qJD(3) * t462 + (t568 * t685 + t914) * qJD(1);
t677 = Icges(4,5) * t567 + Icges(4,6) * t570;
t407 = -Icges(4,3) * t568 + t571 * t677;
t812 = qJD(1) * t407;
t987 = qJD(3) * t238 + t291 * t570 + t294 * t567 + t812;
t483 = t681 * qJD(3);
t484 = t685 * qJD(3);
t496 = Icges(4,5) * t570 - Icges(4,6) * t567;
t986 = qJD(1) * t496 + qJD(3) * (t498 * t567 - t500 * t570) + t483 * t570 + t484 * t567;
t292 = qJD(1) * t411 + t498 * t806;
t295 = qJD(1) * t415 + qJD(3) * t461;
t658 = t410 * t567 - t414 * t570;
t406 = Icges(4,3) * t571 + t568 * t677;
t813 = qJD(1) * t406;
t985 = qJD(3) * t658 - t292 * t570 - t295 * t567 + t813;
t962 = pkin(4) * t566;
t977 = -pkin(1) - pkin(7);
t736 = -t962 + t977;
t982 = t568 * t736 - t571 * t953;
t585 = t480 * (Icges(5,2) * t450 - t280 + t437) + t481 * (-Icges(5,2) * t448 + t279 + t436) + t536 * (t413 + t457);
t980 = t480 * (-Icges(5,1) * t449 + t278 - t438) + t481 * (-Icges(5,1) * t447 + t276 + t921) + t536 * (t409 - t460);
t979 = m(6) / 0.2e1;
t978 = m(7) / 0.2e1;
t976 = t366 / 0.2e1;
t975 = t367 / 0.2e1;
t974 = -t480 / 0.2e1;
t973 = t480 / 0.2e1;
t972 = -t481 / 0.2e1;
t971 = t481 / 0.2e1;
t970 = -t536 / 0.2e1;
t969 = t536 / 0.2e1;
t967 = t568 / 0.2e1;
t966 = -t571 / 0.2e1;
t964 = rSges(3,2) - pkin(1);
t960 = pkin(7) * t572;
t959 = t568 * t9;
t625 = -t565 * t807 - t551;
t790 = t569 * t947;
t730 = t1059 * t545 + t565 * t768 + t571 * t790;
t127 = (-pkin(4) * t650 + t625) * t568 + t617 + t730;
t817 = qJ(2) * t808 + t552;
t823 = qJD(1) * (-pkin(1) * t810 + t817) + t568 * t797;
t579 = t536 * t127 + t282 * t752 + (-t570 * t795 - t960) * t568 + t823 + t1013;
t654 = t1012 * t571;
t779 = -t983 + t833;
t780 = -t271 - t870;
t927 = -rSges(7,2) * t768 + t1028;
t8 = qJD(6) * t181 + t927 * t536 + t780 * t481 - t779 * t366 + (t802 * t861 + t654) * qJD(3) + t579;
t958 = t571 * t8;
t952 = rSges(3,3) * t571;
t950 = rSges(5,3) * t570;
t948 = rSges(6,3) * t570;
t946 = t19 * t481;
t945 = t20 * t480;
t944 = t21 * t481;
t943 = t22 * t480;
t786 = t184 * rSges(6,1) - t183 * rSges(6,2) + rSges(6,3) * t766;
t115 = -rSges(6,3) * t768 + t786;
t381 = -t567 * t710 + t948;
t426 = (-rSges(6,1) * t548 - rSges(6,2) * t549) * t570;
t221 = qJD(3) * t381 + qJD(4) * t426;
t856 = -t221 - t271;
t23 = t115 * t536 + t856 * t481 - t839 * t366 + (t208 * t802 + t654) * qJD(3) + t579;
t942 = t23 * t571;
t711 = rSges(6,1) * t403 - rSges(6,2) * t402;
t212 = rSges(6,3) * t878 - t711;
t857 = -t212 - t283;
t712 = rSges(6,1) * t182 - rSges(6,2) * t181;
t113 = -rSges(6,3) * t1058 + t712;
t876 = -t113 - t126;
t24 = t221 * t480 + t367 * t383 + t876 * t536 + t857 * t752 + (-t532 + t845) * qJD(1) + t628 + t999;
t941 = t24 * t568;
t940 = t29 * t481;
t939 = t30 * t480;
t935 = t68 * t383;
t934 = t79 * t366;
t933 = t80 * t367;
t932 = t81 * t366;
t931 = t82 * t367;
t930 = t88 * t366;
t929 = t89 * t367;
t775 = rSges(4,1) * t1059 + rSges(4,2) * t768;
t300 = (-rSges(4,2) * t807 - rSges(4,3) * qJD(1)) * t568 + t775;
t507 = rSges(4,1) * t570 - rSges(4,2) * t567;
t470 = t507 * t806;
t715 = rSges(4,1) * t567 + rSges(4,2) * t570;
t486 = t715 * qJD(3);
t653 = -t568 * t960 + t823;
t136 = t486 * t804 + (t300 + t470) * qJD(1) + t653;
t900 = t136 * t571;
t465 = t507 * t571;
t299 = -qJD(3) * t465 + (t568 * t715 + t561) * qJD(1);
t767 = t507 * t804;
t137 = -t486 * t806 + (-t299 - t439 + t767) * qJD(1) + t723;
t899 = t137 * t568;
t559 = t568 * rSges(4,3);
t431 = t571 * t715 - t559;
t177 = t470 + t552 + (t431 + t742) * qJD(1);
t897 = t177 * t571;
t892 = t496 * t571;
t455 = t568 * t496;
t875 = -t115 - t127;
t855 = t567 * t282 - t880 * t983;
t435 = t571 * t468;
t854 = t571 * t283 - t435;
t853 = t1071 * t401 - t1072 * t400;
t852 = -t1071 * t403 + t1072 * t402;
t822 = t448 * rSges(5,1) + t447 * rSges(5,2);
t284 = -rSges(5,3) * t880 + t822;
t847 = -t284 - t466;
t846 = -t286 + t468;
t844 = t833 * t568;
t843 = -t382 * t571 - t706 * t878;
t841 = -t885 + t884;
t440 = t447 * pkin(4);
t792 = t570 * t962;
t840 = t536 * t440 + t481 * t792;
t834 = -t706 * t567 + t380;
t824 = -(-pkin(5) * t548 + qJ(6) * t549) * t570 - t425;
t816 = rSges(3,2) * t810 + rSges(3,3) * t808;
t815 = -qJD(1) * t504 + t552;
t814 = t553 - t532;
t811 = qJD(1) * t677;
t656 = t498 * t570 + t500 * t567;
t247 = t571 * t656 - t455;
t798 = t247 * qJD(1);
t793 = -rSges(4,3) + t977;
t788 = -t127 - t927;
t784 = -t466 - t860;
t782 = t1058 * t282 + t283 * t766;
t781 = t245 * rSges(5,1) + t244 * rSges(5,2) + rSges(5,3) * t766;
t146 = t571 * t406 + t410 * t880 + t414 * t887;
t147 = -t571 * t407 - t411 * t880 - t415 * t887;
t778 = t477 + t814;
t776 = t555 + t820;
t771 = t570 * (-rSges(5,3) - pkin(8));
t759 = t549 * t799;
t758 = qJD(6) * t567 * t548;
t750 = -t809 / 0.2e1;
t748 = -t806 / 0.2e1;
t747 = t806 / 0.2e1;
t746 = t805 / 0.2e1;
t745 = -t804 / 0.2e1;
t734 = t567 * t127 + t271 * t880 + t282 * t805 - t570 * t345;
t733 = -t466 - t785;
t731 = qJD(1) * t468 + t472 + t815;
t720 = qJD(4) * t746;
t719 = -t466 * t806 - t468 * t804;
t445 = qJD(1) * t884;
t717 = -t511 * t804 + t445;
t714 = rSges(5,1) * t243 + rSges(5,2) * t242;
t67 = t383 * t480 + t536 * t857 + t582;
t705 = t67 * t221 + t24 * t383;
t686 = -t536 * t283 + t731;
t178 = qJD(1) * t1054 - t553 - t767;
t673 = t177 * t568 - t178 * t571;
t663 = t284 * t571 + t286 * t568;
t659 = t410 * t570 + t414 * t567;
t646 = t730 + t817;
t645 = t1010 + t777;
t638 = -t545 * t567 - qJ(2) - t889;
t464 = (-rSges(5,1) * t566 - rSges(5,2) * t569) * t570;
t627 = t68 * t208 + t67 * t857;
t623 = t481 * t283 + t550 + t719;
t58 = t212 * t481 - t480 * t860 + t623;
t626 = t58 * t208 - t67 * t839;
t622 = (t146 * t571 + t147 * t568) * qJD(3);
t384 = t568 * t406;
t149 = -t571 * t659 + t384;
t150 = -t407 * t568 + t1021;
t621 = (t149 * t571 + t150 * t568) * qJD(3);
t230 = (-t429 * t568 - t431 * t571) * qJD(3);
t604 = -qJD(1) * t657 - qJD(3) * t892 + t813;
t603 = qJD(1) * t659 + qJD(3) * t455 + t812;
t602 = qJD(1) * t656 - t677 * qJD(3);
t598 = t50 * t783 + t51 * t861;
t44 = -t480 * t785 + t481 * t858 + t501 + t623;
t597 = t44 * t861 - t50 * t779;
t428 = -t567 * t713 + t950;
t594 = t617 * t568 + (-t466 * t571 + t468 * t568) * qJD(1);
t591 = -t567 * t791 + t625;
t301 = t318 * t804;
t583 = qJD(3) * t594 + t301;
t110 = t1032 + t601;
t111 = t284 * t536 - t430 * t481 + t600;
t87 = -t284 * t480 + t286 * t481 + t719;
t578 = t87 * t663 + (-t110 * t571 - t111 * t568) * t430;
t577 = t626 * t571 + (t58 * t212 - t1030) * t568;
t576 = t597 * t571 + (t44 * t858 - t51 * t779) * t568;
t505 = rSges(3,2) * t568 + t952;
t463 = t507 * t568;
t356 = t430 * t571;
t355 = t430 * t568;
t354 = t413 * t571;
t353 = t413 * t568;
t352 = t409 * t571;
t351 = t409 * t568;
t347 = qJD(1) * t1011 - t553;
t346 = t552 + (-t504 + t505) * qJD(1);
t343 = -t481 * t567 - t536 * t880;
t342 = t480 * t567 - t536 * t878;
t341 = t983 * t878;
t339 = t481 * t441;
t338 = t383 * t571;
t336 = t383 * t568;
t317 = rSges(5,1) * t449 + rSges(5,2) * t450;
t316 = rSges(5,1) * t447 - rSges(5,2) * t448;
t302 = (t480 * t568 + t481 * t571) * t570;
t298 = qJD(3) * t428 + qJD(4) * t464;
t297 = t542 + (-qJD(1) * t738 - t439) * qJD(1);
t296 = qJD(1) * t816 + t823;
t268 = rSges(6,1) * t402 + rSges(6,2) * t403;
t264 = -rSges(6,1) * t400 - rSges(6,2) * t401;
t246 = t568 * t656 + t892;
t234 = t246 * qJD(1);
t229 = t271 * t878;
t135 = -rSges(5,3) * t768 + t781;
t134 = -rSges(5,3) * t1058 + t714;
t97 = -t568 * t986 + t602 * t571;
t96 = t602 * t568 + t571 * t986;
t95 = qJD(3) * t657 - t291 * t567 + t294 * t570;
t94 = -qJD(3) * t659 - t292 * t567 + t295 * t570;
t70 = t621 - t798;
t69 = t234 + t622;
t47 = -t134 * t536 - t286 * t752 + t298 * t480 + t367 * t430 + t593;
t46 = t135 * t536 - t298 * t481 - t366 * t430 + (t284 * t802 - t490 * t571) * qJD(3) + t653 + t1013;
t35 = t134 * t481 - t135 * t480 - t284 * t367 + t286 * t366 + t583;
t10 = t113 * t481 + t212 * t366 - t367 * t860 + t480 * t875 + t1003 + t583;
t7 = qJD(4) * t759 + t301 + t928 * t481 + t858 * t366 + t788 * t480 - t785 * t367 + (t594 - t758) * qJD(3) + t1003;
t1 = [t991 + (qJD(1) * t238 + t94 + t97) * t804 / 0.2e1 + (t47 * (t555 + t846) + t110 * (rSges(5,3) * t765 + t553 - t714 + t773) + t46 * (t537 + t1010 + t822) + t111 * (t774 + t781 + t817) + (t46 * t771 + t47 * t977) * t568 + ((t110 * t977 + t111 * t771) * t571 + (t110 * (-qJ(2) + t950 - t963) + t111 * t977) * t568) * qJD(1) - (-pkin(7) * t810 + t1032 - t110 + t731) * t111) * m(5) + t946 / 0.2e1 + t943 / 0.2e1 + t944 / 0.2e1 + t945 / 0.2e1 + (t297 * (t568 * t964 + t555 + t952) + t346 * t553 + t296 * t1011 + t347 * (t816 + t817) + (t346 * t964 * t571 + (t346 * (-rSges(3,3) - qJ(2)) - t347 * pkin(1)) * t568) * qJD(1) - (qJD(1) * t505 - t346 + t815) * t347) * m(3) + (t137 * (-t559 + t742) + t177 * t553 + t136 * t1054 + t178 * (-rSges(4,2) * t766 + t775 + t817) + (qJD(3) * t177 * t507 + t137 * t715) * t571 + (t793 * t897 + (t177 * (-qJ(2) - t715) + t178 * t793) * t568) * qJD(1) - (-t177 + t470 + (t431 - t961) * qJD(1) + t815) * t178) * m(4) - ((-t658 + t246) * t568 + t571 * t247) * t796 / 0.2e1 + (t234 + ((-t149 + t384 + t147) * t568 + (t150 - t1021 + (t407 - t659) * t568 + t146) * t571) * qJD(3)) * t748 + ((t1095 + t1131) * t481 + t1077) * t974 + ((-t1040 + t1131) * t480 + t1007 + t1132) * t972 + t939 / 0.2e1 + t940 / 0.2e1 + ((-t1016 * t549 - t1017 * t548 + t664) * t570 - t998 * t567 + t1093) * t481 * t970 + ((-t568 * t953 + t1014 + t645) * t8 + (t776 + t982 + t1069) * t9 + (-t779 * t480 + t858 * t536 + t591 * t568 - t388 + t646 - t686 + t760 + (t961 + t982) * qJD(1) + t1028) * t51 + (t305 - t814 + t778 + ((-t791 + (rSges(7,2) - t565) * qJD(3)) * t567 + t736 * qJD(1)) * t571 + (-t790 + (t638 + t953) * qJD(1)) * t568 + t988 + t1029 + t1052) * t50) * m(7) + (-qJD(3) * t656 + t483 * t567 - t484 * t570) * qJD(1) + t934 / 0.2e1 + t932 / 0.2e1 + t933 / 0.2e1 + t930 / 0.2e1 + t931 / 0.2e1 + t929 / 0.2e1 + t1001 * t975 + t1002 * t976 + t1004 * t971 + (t1005 + t1006) * t973 + (t24 * (t711 + t776) + t67 * (-t712 + t778) + t23 * (t645 + t831) + t68 * (t646 + t786) + (-t24 * t948 + t67 * (-t791 + (rSges(6,3) - t565) * qJD(3)) * t567 + (t67 * t736 - t68 * t948) * qJD(1)) * t571 + (t24 * t736 - t67 * t790 - t23 * t948 + t68 * t591 + (t67 * (t638 + t948) + t68 * t736) * qJD(1)) * t568 - (-t212 * t536 - t67 + (-pkin(7) * qJD(1) - t551) * t568 + t686) * t68 - t1030 * t480) * m(6) + (t95 + t96 + t69) * t747 + (t70 + t798 + (t407 * t568 ^ 2 + (-t384 + t147 + (t407 + t659) * t571) * t571) * qJD(3)) * t745; 0.2e1 * (t959 / 0.2e1 - t958 / 0.2e1) * m(7) + 0.2e1 * (-t942 / 0.2e1 + t941 / 0.2e1) * m(6) + 0.2e1 * (t46 * t966 + t47 * t967) * m(5) + 0.2e1 * (-t900 / 0.2e1 + t899 / 0.2e1) * m(4) + 0.2e1 * (t296 * t966 + t297 * t967) * m(3); qJD(1) * (t95 * t568 + t94 * t571 + (t238 * t571 + t568 * t658) * qJD(1)) / 0.2e1 + ((t455 * t804 - t811) * t571 + (-t1055 + (-t571 * t892 - t1049) * qJD(3)) * t568) * t745 + ((-t806 * t892 - t811) * t568 + (t1055 + (t455 * t568 + t1049) * qJD(3)) * t571) * t748 - qJD(1) * ((-t567 * t819 - t570 * t818) * qJD(1) + (t567 * t605 + t570 * t606) * qJD(3)) / 0.2e1 + (t9 * t841 + t7 * t854 + (t7 * t733 + t1031) * t568 + (t8 * (-t512 - t779) + t7 * t858) * t571 - (t567 * t576 + t570 * t598) * qJD(4) + (-t445 - t844 * t536 - (-t364 - t834) * t481 + (-t490 + t780 + t501 - t1012) * t571 + t1053) * t51 + (t833 * t808 - t501 * t568 - (-t315 - t843) * t536 - t834 * t480 + t1062) * t50 + ((t617 + t788 + (t468 + t783) * qJD(1)) * t568 + (qJD(1) * t733 + t928) * t571 + t758 - t843 * t481 - (t885 - t844) * t480 + t1057) * t44) * m(7) + (t24 * t841 + t10 * t854 + (qJD(1) * t935 + t10 * t784 + t705) * t568 + (t23 * (-t512 - t839) + t10 * t212) * t571 - (t567 * t577 + t570 * t627) * qJD(4) + ((-t490 + t856) * t571 - t336 * t536 + t567 * t800 - t717 - (-t364 - t381) * t481 + t1053) * t68 + (t383 * t808 - t381 * t480 - (-t315 + t338) * t536 + t1062) * t67 + ((t617 + t875 + (t468 + t857) * qJD(1)) * t568 + (qJD(1) * t784 + t113) * t571 + t338 * t481 - (t885 - t336) * t480 + t1057) * t58) * m(6) + (t47 * t884 + t110 * t821 + t111 * t474 - t35 * t435 + (t1056 * t111 + t110 * t298 + t35 * t847 + t47 * t430) * t568 + (t46 * (-t430 - t512) + t111 * (-t298 - t490) + t35 * t286 + t110 * t1056) * t571 - t110 * (t356 * t536 + t428 * t480 + t737) - t111 * (t355 * t536 - t428 * t481 + t717) - ((-t110 * t286 + t111 * t284) * t570 + t578 * t567) * qJD(4) + ((qJD(1) * t846 - t135 + t617) * t568 + (qJD(1) * t847 + t134) * t571 + t355 * t480 + t356 * t481 + t1087) * t87) * m(5) + (-(t177 * t465 + t178 * t463) * qJD(1) - (t230 * (-t463 * t568 - t465 * t571) - t673 * t715) * qJD(3) + 0.2e1 * t230 * (t299 * t571 - t300 * t568 + (-t429 * t571 + t431 * t568) * qJD(1)) - t673 * t486 + (-t900 + t899 + (t178 * t568 + t897) * qJD(1)) * t507) * m(4) + t1033 * t976 + t1034 * t975 + ((t1001 * t570 + t1038 * t887) * qJD(4) + ((-qJD(4) * t1095 + t1036) * t567 + t1076) * t571 + (-t1063 * t403 - t1064 * t402 + t408 * t449 - t412 * t450) * t536 + (-t1066 * t403 - t1068 * t402 + t351 * t449 - t353 * t450) * t481 + (t1065 * t403 + t1067 * t402 - t352 * t449 + t354 * t450) * t480) * t974 + (-qJD(1) * t995 + t1046 * t568 + t1047 * t571) * t973 + ((t1002 * t570 - t1096 * t886) * qJD(4) + ((qJD(4) * t1040 - t1036) * t567 - t1076) * t568 + (t1063 * t401 + t1064 * t400 + t408 * t447 + t412 * t448) * t536 + (t1066 * t401 + t1068 * t400 + t351 * t447 + t353 * t448) * t481 + (-t1065 * t401 - t1067 * t400 - t352 * t447 - t354 * t448) * t480) * t972 + (-qJD(1) * t994 + t1044 * t568 + t1045 * t571) * t971 + (((t1063 * t549 + t1064 * t548 - t408 * t566 + t412 * t569 + t1128) * t536 + (t1066 * t549 + t1068 * t548 - t351 * t566 + t353 * t569 + t1111) * t481 + (-t1065 * t549 - t1067 * t548 + t352 * t566 - t354 * t569 + t998) * t480 + t1000 * qJD(4)) * t570 + (qJD(4) * t996 + t1104) * t567) * t970 + (-qJD(1) * t996 + t1042 * t568 + t1043 * t571) * t969 - t1041 * t802 / 0.2e1 - t1006 * t762 / 0.2e1 + t1007 * t761 / 0.2e1 + t1035 * t720 + (qJD(1) * t96 + (t568 * (t604 * t568 - t571 * t987) + t571 * (t603 * t568 + t571 * t985) + (-t149 * t568 + t150 * t571) * qJD(1)) * t1073 + t1051) * t967 + (qJD(1) * t97 + (t568 * (t568 * t987 + t604 * t571) + t571 * (-t568 * t985 + t603 * t571) + (-t146 * t568 + t147 * t571) * qJD(1)) * t1073 + t1050) * t571 / 0.2e1 - (t622 + t69 + t1006) * t810 / 0.2e1 + (t621 + t70 + t1007) * t808 / 0.2e1; (-t9 * t341 + t8 * t855 + (qJD(3) * t576 + t783 * t9 + t8 * t861) * t567 + (t598 * qJD(3) + (-t7 * t785 + t1031) * t571 + (qJD(1) * t597 + t7 * t783 + t8 * t833) * t568) * t570 + (qJD(6) * t403 - t481 * t824 - t536 * t853 + t567 * t927 + t870 * t880 + t734 - t840) * t51 + (t782 + ((qJD(1) * t783 + t788) * t571 + t789 * t568) * t570 - t339 - t759 - t852 * t481 - (-t440 - t853) * t480) * t44 + (t229 + t789 * t567 - qJD(6) * t401 - (-t441 - t852) * t536 - (-t792 - t824) * t480) * t50) * m(7) + (-t24 * t341 + t67 * t229 + t23 * t855 + t68 * t734 + t58 * t782 + (qJD(3) * t577 + t68 * t115 + t23 * t208 + t24 * t857 + t67 * t876) * t567 + (t627 * qJD(3) + (-t10 * t860 + t58 * t875 + (t58 * t857 + t935) * qJD(1) + t705) * t571 + (qJD(1) * t626 + t10 * t857 + t68 * t221 + t23 * t383 + t58 * t876) * t568) * t570 - t68 * (-t426 * t481 + t840) - t58 * (t268 * t481 + t339) - (t67 * (-t268 - t441) + t68 * t264) * t536 - (t67 * (t426 - t792) + t58 * (-t264 - t440)) * t480) * m(6) + ((qJD(3) * t578 - t110 * t134 + t111 * t135 + t46 * t284 - t47 * t286) * t567 + (t110 * (-qJD(3) * t286 + t298 * t571) + t111 * (qJD(3) * t284 + t298 * t568) - t35 * t663 + t87 * (-t134 * t568 - t135 * t571 + t284 * t810 - t286 * t808) + (t46 * t568 + t47 * t571 + (-t110 * t568 + t111 * t571) * qJD(1)) * t430) * t570 - t110 * (-t317 * t536 + t464 * t480) - t111 * (t316 * t536 - t464 * t481) - t87 * (-t316 * t480 + t317 * t481)) * m(5) + (t1002 * t567 - t570 * t994) * t976 + (t1001 * t567 - t570 * t995) * t975 + (t1090 * t402 + t1091 * t403 + t585 * t449 + t980 * t450 + t997 * t878) * t974 + ((-qJD(1) * t1034 + t1001 * qJD(3) + t1046 * t571 - t1047 * t568) * t570 + (qJD(3) * t995 + t1005) * t567) * t973 + (-t1090 * t400 - t1091 * t401 + t447 * t585 - t448 * t980 - t880 * t997) * t972 + ((-qJD(1) * t1033 + t1002 * qJD(3) + t1044 * t571 - t1045 * t568) * t570 + (qJD(3) * t994 + t1004) * t567) * t971 + ((-t1090 * t548 - t1091 * t549 - t566 * t585 - t569 * t980) * t570 + t997 * t567) * t970 + ((-qJD(1) * t1035 + t1000 * qJD(3) + t1042 * t571 - t1043 * t568) * t570 + (qJD(3) * t996 + t1080) * t567) * t969 + (t933 + t934 + t945 + t946 + t931 + t932 + t943 + t944 + t929 + t930 + t939 + t940 + t991) * t567 / 0.2e1 - t1050 * t880 / 0.2e1 + t1051 * t878 / 0.2e1 + t1041 * t746 + (t1000 * t567 - t570 * t996) * t720 + (t567 * t745 + t568 * t750) * t1007 + (t567 * t747 + t571 * t750) * t1006; -m(6) * (t302 * t58 + t342 * t67 + t343 * t68) - m(7) * (t302 * t44 + t342 * t50 + t343 * t51) + 0.2e1 * ((t67 * t806 - t68 * t804 + t10) * t979 + (t50 * t806 - t51 * t804 + t7) * t978) * t567 + 0.2e1 * ((qJD(3) * t58 - t67 * t808 - t68 * t810 - t941 + t942) * t979 + (qJD(3) * t44 - t50 * t808 - t51 * t810 + t958 - t959) * t978) * t570; (t400 * t9 - t402 * t8 + t7 * t891 + (-t400 * t536 + t481 * t891 + t181) * t51 + (-t402 * t536 - t480 * t891 + t183) * t50 + (t400 * t480 + t402 * t481 + t618) * t44) * m(7);];
tauc  = t1(:);
