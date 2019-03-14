% Calculate matrix of centrifugal and coriolis load on the joints for
% S6RPRPRR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,d6,theta2,theta4]';
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
% Cq [6x6]
%   matrix of coriolis and centrifugal joint torques.
%   Gives coriolis joint torques when multiplied with joint velocities

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 03:39
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S6RPRPRR2_coriolismatJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRR2_coriolismatJ_fixb_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRR2_coriolismatJ_fixb_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RPRPRR2_coriolismatJ_fixb_slag_vp1: pkin has to be [11x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRPRR2_coriolismatJ_fixb_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RPRPRR2_coriolismatJ_fixb_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RPRPRR2_coriolismatJ_fixb_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 03:37:10
% EndTime: 2019-03-09 03:38:03
% DurationCPUTime: 49.52s
% Computational Cost: add. (200515->1144), mult. (142668->1627), div. (0->0), fcn. (155861->12), ass. (0->703)
t961 = 2 * m(7);
t778 = qJ(3) + pkin(11);
t771 = sin(t778);
t779 = qJ(1) + pkin(10);
t772 = sin(t779);
t1080 = t771 * t772;
t774 = cos(t779);
t780 = qJ(5) + qJ(6);
t776 = cos(t780);
t1044 = t774 * t776;
t775 = sin(t780);
t1068 = t772 * t775;
t773 = cos(t778);
t668 = t1068 * t773 + t1044;
t1045 = t774 * t775;
t1067 = t772 * t776;
t669 = t1067 * t773 - t1045;
t1242 = -t669 * rSges(7,1) + t668 * rSges(7,2);
t508 = -rSges(7,3) * t1080 + t1242;
t1152 = t773 * pkin(4);
t787 = -pkin(9) - pkin(8);
t1149 = pkin(8) + t787;
t1236 = t1149 * t771;
t781 = sin(qJ(5));
t1043 = t774 * t781;
t784 = cos(qJ(5));
t766 = pkin(5) * t784 + pkin(4);
t1054 = t773 * t766;
t891 = pkin(5) * t1043 - t772 * t1054;
t517 = (t1152 + t1236) * t772 + t891;
t1005 = -t508 - t517;
t1150 = pkin(4) - t766;
t1234 = t1150 * t771;
t1235 = t1149 * t773;
t611 = -t1234 + t1235;
t571 = t611 * t1080;
t1137 = rSges(7,1) * t776;
t877 = -rSges(7,2) * t775 + t1137;
t632 = -rSges(7,3) * t773 + t771 * t877;
t591 = t632 * t1080;
t335 = t1005 * t773 + t571 + t591;
t1092 = t517 * t773;
t1302 = -t508 * t773 + t591;
t336 = t1302 + t571 - t1092;
t1018 = t335 - t336;
t1314 = t1018 * t961;
t1309 = -qJD(1) / 0.4e1;
t1313 = Icges(4,3) + Icges(5,3);
t1079 = t771 * t774;
t544 = -rSges(7,1) * t668 - rSges(7,2) * t669;
t514 = t544 * t1079;
t670 = -t1045 * t773 + t1067;
t671 = t1044 * t773 + t1068;
t545 = t670 * rSges(7,1) - t671 * rSges(7,2);
t408 = -t545 * t1080 + t514;
t407 = 0.2e1 * t408;
t1295 = m(6) * t1309;
t1141 = m(7) * qJD(6);
t939 = t1080 / 0.4e1;
t941 = -t1080 / 0.4e1;
t1312 = t941 + t939;
t1069 = t772 * t773;
t569 = t632 * t772;
t1135 = rSges(7,3) * t771;
t633 = t773 * t877 + t1135;
t943 = t632 * t1069 + t633 * t1080 - t773 * t569;
t355 = t508 * t771 + t943;
t878 = rSges(7,1) * t671 + rSges(7,2) * t670;
t509 = rSges(7,3) * t1079 + t878;
t488 = t771 * t509;
t1053 = t773 * t774;
t979 = t771 * rSges(7,2) * t1045 + rSges(7,3) * t1053;
t570 = -rSges(7,1) * t1044 * t771 + t979;
t356 = -t633 * t1079 + t488 + (-t632 * t774 - t570) * t773;
t232 = 0.2e1 * t355 * t772 - 0.2e1 * t356 * t774;
t1311 = t232 * t1141;
t714 = Icges(5,5) * t773 - Icges(5,6) * t771;
t782 = sin(qJ(3));
t785 = cos(qJ(3));
t736 = Icges(4,5) * t785 - Icges(4,6) * t782;
t1308 = (t714 + t736) * t774 + t1313 * t772;
t1063 = t772 * t785;
t1065 = t772 * t782;
t1292 = -Icges(4,5) * t1063 - Icges(5,5) * t1069 + Icges(4,6) * t1065 + Icges(5,6) * t1080 + t1313 * t774;
t866 = Icges(7,5) * t776 - Icges(7,6) * t775;
t626 = -Icges(7,3) * t773 + t771 * t866;
t1120 = Icges(7,4) * t776;
t870 = -Icges(7,2) * t775 + t1120;
t628 = -Icges(7,6) * t773 + t771 * t870;
t1121 = Icges(7,4) * t775;
t872 = Icges(7,1) * t776 - t1121;
t630 = -Icges(7,5) * t773 + t771 * t872;
t390 = t1079 * t626 + t628 * t670 + t630 * t671;
t498 = Icges(7,5) * t669 - Icges(7,6) * t668 + Icges(7,3) * t1080;
t647 = Icges(7,4) * t669;
t501 = -Icges(7,2) * t668 + Icges(7,6) * t1080 + t647;
t646 = Icges(7,4) * t668;
t505 = -Icges(7,1) * t669 - Icges(7,5) * t1080 + t646;
t292 = t498 * t1079 + t670 * t501 - t505 * t671;
t500 = Icges(7,5) * t671 + Icges(7,6) * t670 + Icges(7,3) * t1079;
t1122 = Icges(7,4) * t671;
t503 = Icges(7,2) * t670 + Icges(7,6) * t1079 + t1122;
t648 = Icges(7,4) * t670;
t506 = Icges(7,1) * t671 + Icges(7,5) * t1079 + t648;
t293 = t500 * t1079 + t670 * t503 + t671 * t506;
t863 = t292 * t772 + t293 * t774;
t1300 = -t390 * t773 + t771 * t863;
t942 = -t1080 / 0.2e1;
t1307 = t1300 * t942;
t1041 = t774 * t784;
t1066 = t772 * t781;
t694 = t1066 * t773 + t1041;
t1064 = t772 * t784;
t695 = t1064 * t773 - t1043;
t1241 = -t695 * rSges(6,1) + t694 * rSges(6,2);
t536 = -rSges(6,3) * t1080 + t1241;
t1058 = t536 * t773;
t1138 = rSges(6,1) * t784;
t880 = -rSges(6,2) * t781 + t1138;
t829 = t880 * t771;
t665 = -rSges(6,3) * t773 + t829;
t1306 = t665 * t1080 - t1058;
t867 = Icges(6,5) * t784 - Icges(6,6) * t781;
t653 = -Icges(6,3) * t773 + t771 * t867;
t1123 = Icges(6,4) * t784;
t871 = -Icges(6,2) * t781 + t1123;
t657 = -Icges(6,6) * t773 + t771 * t871;
t1124 = Icges(6,4) * t781;
t873 = Icges(6,1) * t784 - t1124;
t661 = -Icges(6,5) * t773 + t771 * t873;
t402 = t1080 * t653 - t657 * t694 + t661 * t695;
t526 = Icges(6,5) * t695 - Icges(6,6) * t694 + Icges(6,3) * t1080;
t679 = Icges(6,4) * t695;
t529 = -Icges(6,2) * t694 + Icges(6,6) * t1080 + t679;
t678 = Icges(6,4) * t694;
t533 = -Icges(6,1) * t695 - Icges(6,5) * t1080 + t678;
t323 = t1080 * t526 - t529 * t694 - t533 * t695;
t696 = -t773 * t1043 + t1064;
t697 = t1041 * t773 + t1066;
t528 = Icges(6,5) * t697 + Icges(6,6) * t696 + Icges(6,3) * t1079;
t1125 = Icges(6,4) * t697;
t531 = Icges(6,2) * t696 + Icges(6,6) * t1079 + t1125;
t680 = Icges(6,4) * t696;
t534 = Icges(6,1) * t697 + Icges(6,5) * t1079 + t680;
t324 = t528 * t1080 - t694 * t531 + t695 * t534;
t862 = t323 * t772 + t324 * t774;
t165 = -t773 * t402 + t771 * t862;
t388 = t1080 * t626 - t628 * t668 + t630 * t669;
t290 = t1080 * t498 - t501 * t668 - t505 * t669;
t291 = t500 * t1080 - t668 * t503 + t669 * t506;
t864 = t290 * t772 + t291 * t774;
t156 = -t388 * t773 + t771 * t864;
t1089 = t526 * t773;
t1285 = t529 * t781 + t533 * t784;
t358 = t1285 * t771 + t1089;
t1095 = t498 * t773;
t1286 = t501 * t775 + t505 * t776;
t331 = t1286 * t771 + t1095;
t1298 = -t292 * t774 + t293 * t772;
t1305 = t1312 * t1298;
t1243 = -t772 * t544 - t774 * t545;
t1288 = t1243 * t961;
t1304 = -t1288 / 0.4e1;
t415 = t1288 / 0.4e1;
t1126 = Icges(5,4) * t771;
t718 = Icges(5,1) * t773 - t1126;
t622 = Icges(5,5) * t772 + t718 * t774;
t1127 = Icges(4,4) * t782;
t740 = Icges(4,1) * t785 - t1127;
t664 = Icges(4,5) * t772 + t740 * t774;
t1303 = -t664 * t1063 - t622 * t1069;
t769 = t772 ^ 2;
t770 = t774 ^ 2;
t974 = t769 + t770;
t404 = t1079 * t653 + t657 * t696 + t661 * t697;
t325 = t526 * t1079 + t696 * t529 - t533 * t697;
t326 = t528 * t1079 + t696 * t531 + t697 * t534;
t861 = t325 * t772 + t326 * t774;
t1301 = -t773 * t404 + t771 * t861;
t1299 = -t325 * t774 + t326 * t772;
t1297 = -t771 / 0.2e1;
t912 = t961 / 0.4e1;
t928 = t1069 / 0.4e1;
t1144 = m(7) * qJD(1);
t1296 = -t1144 / 0.4e1;
t1284 = 0.2e1 * m(6);
t1294 = -t1284 / 0.4e1;
t915 = t1284 / 0.4e1;
t984 = t630 + (-Icges(7,2) * t776 - t1121) * t771;
t1293 = t775 * t984;
t1291 = -Icges(4,5) * t782 - Icges(5,5) * t771 - Icges(4,6) * t785 - Icges(5,6) * t773;
t1290 = t1308 * t774 + t1303;
t1040 = t774 * t785;
t1264 = t664 * t1040 + t622 * t1053 + t1308 * t772;
t727 = Icges(5,4) * t1080;
t621 = Icges(5,1) * t1069 - Icges(5,5) * t774 - t727;
t749 = Icges(4,4) * t1065;
t663 = Icges(4,1) * t1063 - Icges(4,5) * t774 - t749;
t1289 = -t663 * t1040 - t621 * t1053 + t1292 * t772;
t1156 = pkin(3) * t782;
t893 = t974 * t1156;
t619 = Icges(5,4) * t1069 - Icges(5,2) * t1080 - Icges(5,6) * t774;
t659 = Icges(4,4) * t1063 - Icges(4,2) * t1065 - Icges(4,6) * t774;
t1287 = t619 * t771 + t659 * t782;
t1283 = m(5) / 0.2e1;
t1282 = m(5) / 0.4e1;
t1205 = m(6) / 0.4e1;
t1203 = m(7) / 0.4e1;
t1192 = t771 / 0.2e1;
t1191 = t772 / 0.2e1;
t1190 = t772 / 0.4e1;
t1189 = -t773 / 0.2e1;
t1188 = -t774 / 0.2e1;
t1187 = -t774 / 0.4e1;
t1274 = t665 * t772;
t565 = t628 * t772;
t567 = t630 * t772;
t837 = -t626 * t772 + t1286;
t249 = -t837 * t773 + (t565 * t775 - t567 * t776 + t498) * t771;
t629 = Icges(7,6) * t771 + t773 * t870;
t631 = Icges(7,5) * t771 + t773 * t872;
t1085 = t626 * t773;
t627 = Icges(7,3) * t771 + t773 * t866;
t1037 = t776 * t630;
t1039 = t775 * t628;
t850 = t1037 - t1039;
t833 = t627 - t850;
t800 = t771 * t833 + t1085;
t285 = -t629 * t668 + t631 * t669 + t772 * t800;
t1272 = t249 + t285;
t566 = t628 * t774;
t568 = t630 * t774;
t855 = -t503 * t775 + t506 * t776;
t836 = -t626 * t774 - t855;
t250 = -t836 * t773 + (t566 * t775 - t568 * t776 + t500) * t771;
t286 = t629 * t670 + t631 * t671 + t774 * t800;
t1271 = t250 + t286;
t1269 = -t331 + t388;
t1094 = t500 * t773;
t332 = t771 * t855 - t1094;
t1268 = t332 + t390;
t1042 = t774 * t782;
t1116 = Icges(5,2) * t771;
t762 = Icges(5,4) * t773;
t620 = Icges(5,6) * t772 + (t762 - t1116) * t774;
t777 = Icges(4,4) * t785;
t738 = -Icges(4,2) * t782 + t777;
t660 = Icges(4,6) * t772 + t738 * t774;
t1267 = -t1042 * t660 - t1079 * t620 + t1264;
t1266 = t620 * t771 + t660 * t782 + t1292;
t917 = t771 * pkin(4) - t773 * pkin(8) + t1156;
t888 = t665 + t917;
t524 = t888 * t774;
t1090 = t524 * t774;
t989 = t611 + t632;
t847 = t917 + t989;
t446 = t847 * t774;
t1098 = t446 * t774;
t1207 = -0.2e1 * t774;
t720 = rSges(5,1) * t771 + rSges(5,2) * t773;
t823 = t720 + t1156;
t1244 = t823 * t774;
t444 = t847 * t772;
t1072 = t772 * t444;
t435 = -0.2e1 * t1072;
t522 = t888 * t772;
t1071 = t772 * t522;
t512 = -0.2e1 * t1071;
t1245 = t823 * t772;
t1070 = t772 * t1245;
t601 = -0.2e1 * t1070;
t945 = (t435 - 0.2e1 * t1098) * t1203 + (t512 - 0.2e1 * t1090) * t1205 + (t1207 * t1244 + t601) * t1282;
t946 = (t435 + 0.2e1 * t1072) * t1203 + (t512 + 0.2e1 * t1071) * t1205 + (t601 + 0.2e1 * t1070) * t1282;
t1265 = t945 - t946;
t1130 = -rSges(7,3) + t787;
t1151 = sin(qJ(1)) * pkin(1);
t1148 = -qJ(4) - pkin(7);
t1155 = pkin(3) * t785;
t767 = pkin(2) + t1155;
t977 = -t774 * t1148 - t772 * t767;
t889 = t977 - t1151;
t412 = t1080 * t1130 + t1242 + t889 + t891;
t1184 = rSges(6,3) + pkin(8);
t1226 = -t1184 * t771 - t1152;
t442 = t1226 * t772 + t1241 + t889;
t1153 = t771 * pkin(8);
t958 = pkin(5) * t1066;
t890 = -t787 * t1079 + t958;
t920 = t1150 * t773;
t518 = (-t920 - t1153) * t774 + t890;
t1004 = t509 + t518;
t1238 = t1004 * t773;
t337 = t1079 * t989 + t1238;
t1104 = t337 * t772;
t1230 = t336 * t774 - t1104;
t212 = 0.2e1 * t1230;
t881 = rSges(6,1) * t697 + rSges(6,2) * t696;
t537 = rSges(6,3) * t1079 + t881;
t1057 = t773 * t537;
t450 = t1079 * t665 + t1057;
t1096 = t450 * t772;
t1232 = t1306 * t774 - t1096;
t346 = 0.2e1 * t1232;
t1021 = t1203 * t212 + t1205 * t346;
t1031 = (t1207 * t335 + 0.2e1 * t1104 + t212) * t1203 + (t1207 * t1306 + 0.2e1 * t1096 + t346) * t1205;
t1259 = t1021 - t1031;
t1157 = cos(qJ(1)) * pkin(1);
t753 = t772 * t1148;
t919 = -t753 + t1157;
t413 = (t1054 + t767 + t1135) * t774 + t878 + t890 + t919;
t681 = t694 * pkin(5);
t476 = -t544 + t681;
t561 = -rSges(6,1) * t694 - rSges(6,2) * t695;
t562 = rSges(6,1) * t696 - rSges(6,2) * t697;
t1154 = pkin(5) * t781;
t693 = (-rSges(7,1) * t775 - rSges(7,2) * t776) * t771;
t892 = t1154 * t771 - t693;
t572 = t892 * t772;
t573 = t892 * t774;
t707 = (-rSges(6,1) * t781 - rSges(6,2) * t784) * t771;
t443 = (-t1226 + t767) * t774 + t881 + t919;
t857 = t442 * t774 + t443 * t772;
t682 = t696 * pkin(5);
t998 = -t545 - t682;
t1258 = (t412 * t573 + t413 * t572 + t444 * t998 - t446 * t476) * t912 + (-t522 * t562 + t524 * t561 - t707 * t857) * t915;
t732 = pkin(4) * t1080;
t551 = t732 + (-t771 * t766 - t1235) * t772;
t612 = -t920 - t1236;
t237 = (t611 * t772 + t551) * t773 + (t612 * t772 - t1005) * t771 + t943;
t988 = -t612 - t633;
t1052 = t773 * t787;
t733 = pkin(8) * t1053;
t552 = -t733 + (-t1052 + t1234) * t774;
t996 = t552 + t570;
t238 = t488 + (t774 * t988 + t518) * t771 + (-t774 * t989 - t996) * t773;
t667 = rSges(6,3) * t771 + t773 * t880;
t366 = (t667 * t772 + t536) * t771;
t978 = t771 * rSges(6,2) * t1043 + rSges(6,3) * t1053;
t590 = -rSges(6,1) * t1041 * t771 + t978;
t367 = (-t665 * t774 - t590) * t773 + (-t667 * t774 + t537) * t771;
t473 = (t1156 + t1130 * t773 + (t766 + t877) * t771) * t772;
t474 = (-t1156 - t1052 + (-t766 - t1137) * t771) * t774 + t979;
t490 = t732 + (-t1184 * t773 + t1156 + t829) * t772;
t491 = t733 + (-t1156 + (-pkin(4) - t1138) * t771) * t774 + t978;
t1257 = (t1306 * t490 + t366 * t442 + t367 * t443 - t450 * t491) * t1294 - (t237 * t412 + t238 * t413 + t336 * t473 - t337 * t474) * t961 / 0.4e1;
t1256 = -t1042 * t659 - t1065 * t660 - t1079 * t619 - t1080 * t620 - t1289 - t1290;
t1033 = t784 * t661;
t1035 = t781 * t657;
t1128 = Icges(5,1) * t771;
t845 = rSges(5,1) * t1069 - rSges(5,2) * t1080 - t774 * rSges(5,3);
t549 = -t845 + t889;
t1139 = rSges(5,1) * t773;
t910 = -rSges(5,2) * t1079 + rSges(5,3) * t772;
t550 = (t767 + t1139) * t774 + t910 + t919;
t765 = t774 * pkin(7);
t1140 = rSges(4,1) * t785;
t921 = pkin(2) + t1140;
t975 = rSges(4,2) * t1065 + t774 * rSges(4,3);
t574 = -t772 * t921 - t1151 + t765 + t975;
t751 = rSges(4,2) * t1042;
t575 = t1157 - t751 + t921 * t774 + (rSges(4,3) + pkin(7)) * t772;
t654 = Icges(6,3) * t771 + t773 * t867;
t743 = rSges(4,1) * t782 + rSges(4,2) * t785;
t708 = t743 * t772;
t709 = t743 * t774;
t737 = Icges(4,2) * t785 + t1127;
t1255 = -(t740 / 0.2e1 - t737 / 0.2e1) * t782 - (t1033 / 0.2e1 - t1035 / 0.2e1 + t1037 / 0.2e1 - t1039 / 0.2e1 + t762 + t1128 / 0.2e1 - t1116 / 0.2e1 - t654 / 0.2e1 - t627 / 0.2e1) * t773 - m(4) * (t574 * t708 - t575 * t709) - m(5) * (-t1244 * t550 + t1245 * t549);
t1254 = t444 * t1314 / 0.4e1;
t690 = (-Icges(7,5) * t775 - Icges(7,6) * t776) * t771;
t1056 = t773 * t690;
t1253 = -t1056 / 0.2e1 + t1293 * t1297;
t1186 = t774 / 0.2e1;
t1011 = -t1053 * t508 - t569 * t1079;
t1240 = t1291 * t772;
t1239 = t1291 * t774;
t852 = -t536 * t774 - t537 * t772;
t312 = t852 * t773 + (-t1274 * t774 - t590 * t772) * t771;
t739 = Icges(4,1) * t782 + t777;
t1093 = t509 * t773;
t432 = t1079 * t632 + t1093;
t1099 = t432 * t772;
t1231 = t1302 * t774 - t1099;
t1008 = -Icges(7,2) * t669 - t505 - t646;
t1010 = -Icges(7,1) * t668 - t501 - t647;
t538 = -Icges(7,5) * t668 - Icges(7,6) * t669;
t226 = -t1008 * t668 + t1010 * t669 + t1080 * t538;
t1007 = -Icges(7,2) * t671 + t506 + t648;
t1009 = Icges(7,1) * t670 - t1122 - t503;
t539 = Icges(7,5) * t670 - Icges(7,6) * t671;
t227 = -t1007 * t668 + t1009 * t669 + t1080 * t539;
t125 = -t226 * t774 + t227 * t772;
t228 = t1008 * t670 + t1010 * t671 + t1079 * t538;
t229 = t1007 * t670 + t1009 * t671 + t1079 * t539;
t126 = -t228 * t774 + t229 * t772;
t1030 = t1188 * t125 + t1191 * t126;
t1036 = t776 * t631;
t1038 = t775 * t629;
t327 = -t833 * t773 + (t1036 + t626 - t1038) * t771;
t429 = t771 * t850 - t1085;
t860 = -t331 * t772 + t332 * t774;
t1228 = (-t429 * t773 + t771 * t860) * t1192 + ((-t327 + t860) * t773 + (t249 * t772 + t250 * t774 + t429) * t771) * t1189;
t1227 = t1189 * t327 + t429 * t1192;
t439 = t561 * t772 + t562 * t774;
t1016 = (t476 * t772 + t774 * t998) * t912 + t439 * t1294;
t1091 = t517 * t774;
t483 = t508 * t1079;
t279 = -t483 + (-t1004 * t772 - t1091) * t771;
t457 = t693 * t1080 + t773 * t544;
t458 = -t1079 * t693 - t545 * t773;
t885 = t279 * t408 + t336 * t457 - t337 * t458;
t944 = (t473 * t772 - t474 * t774) * t912 + (t490 * t772 - t491 * t774) * t915 + (t1244 * t774 + t1070) * t1283;
t715 = Icges(5,2) * t773 + t1126;
t675 = t715 * t774;
t874 = -t762 - t1128;
t677 = t874 * t774;
t1225 = (-t622 + t675) * t1080 + (-t620 + t677) * t1069;
t701 = (-Icges(6,2) * t784 - t1124) * t771;
t704 = (-Icges(6,1) * t781 - t1123) * t771;
t1224 = -(t661 / 0.2e1 + t701 / 0.2e1) * t781 + (t704 / 0.2e1 - t657 / 0.2e1) * t784;
t1001 = -Icges(6,2) * t695 - t533 - t678;
t1003 = -Icges(6,1) * t694 - t529 - t679;
t555 = -Icges(6,5) * t694 - Icges(6,6) * t695;
t275 = -t555 * t773 + (-t1001 * t781 + t1003 * t784) * t771;
t1000 = -Icges(6,2) * t697 + t534 + t680;
t1002 = Icges(6,1) * t696 - t1125 - t531;
t556 = Icges(6,5) * t696 - Icges(6,6) * t697;
t276 = -t556 * t773 + (-t1000 * t781 + t1002 * t784) * t771;
t698 = (-Icges(6,5) * t781 - Icges(6,6) * t784) * t771;
t981 = t661 + t701;
t982 = -t657 + t704;
t351 = t1080 * t698 - t694 * t981 + t695 * t982;
t352 = t1079 * t698 + t696 * t981 + t697 * t982;
t1223 = t1258 + (t276 + t352) * t1190 + (t275 + t351) * t1187;
t674 = -Icges(5,2) * t1069 - t727;
t676 = t874 * t772;
t702 = -Icges(4,2) * t1063 - t749;
t705 = t739 * t772;
t1222 = t771 * (t621 + t674) + t773 * (t619 - t676) + (t659 + t705) * t785 + (t663 + t702) * t782;
t267 = -t539 * t773 + (-t1007 * t775 + t1009 * t776) * t771;
t1110 = t267 * t772;
t266 = -t538 * t773 + (-t1008 * t775 + t1010 * t776) * t771;
t1111 = t266 * t774;
t692 = (-Icges(7,1) * t775 - t1120) * t771;
t985 = -t628 + t692;
t309 = t1080 * t690 - t668 * t984 + t669 * t985;
t310 = t1079 * t690 + t670 * t984 + t671 * t985;
t901 = -t1111 / 0.4e1 + t1110 / 0.4e1 + t310 * t1190 + t309 * t1187;
t1050 = t774 * t1300;
t1221 = t1050 / 0.4e1 + t1300 * t1187;
t1049 = t774 * t1301;
t1074 = t772 * t165;
t1220 = t1074 / 0.4e1 + t1049 / 0.4e1 - t165 * t1190 + t1301 * t1187 - t1254 + t1312 * t1299;
t585 = t657 * t772;
t587 = t661 * t772;
t835 = -t653 * t772 + t1285;
t268 = -t835 * t773 + (t585 * t781 - t587 * t784 + t526) * t771;
t586 = t657 * t774;
t588 = t661 * t774;
t853 = -t531 * t781 + t534 * t784;
t834 = -t653 * t774 - t853;
t269 = -t834 * t773 + (t586 * t781 - t588 * t784 + t528) * t771;
t658 = Icges(6,6) * t771 + t773 * t871;
t662 = Icges(6,5) * t771 + t773 * t873;
t1084 = t653 * t773;
t849 = t1033 - t1035;
t832 = t654 - t849;
t799 = t771 * t832 + t1084;
t307 = -t658 * t694 + t662 * t695 + t772 * t799;
t308 = t658 * t696 + t662 * t697 + t774 * t799;
t1088 = t528 * t773;
t359 = t771 * t853 - t1088;
t1032 = t784 * t662;
t1034 = t781 * t658;
t361 = -t832 * t773 + (t1032 + t653 - t1034) * t771;
t451 = t771 * t849 - t1084;
t925 = t1053 / 0.4e1;
t935 = t1079 / 0.4e1;
t1219 = t361 * t1189 + t451 * t1192 - t1257 + (t268 + t307) * t939 + (t269 + t308) * t935 + (-t358 + t402) * t928 + (t359 + t404) * t925;
t1212 = 0.2e1 * t1302;
t1211 = -0.2e1 * t432;
t1210 = 0.2e1 * t457;
t1209 = -0.2e1 * t544;
t1208 = -0.2e1 * t545;
t1204 = m(7) / 0.2e1;
t186 = (t551 * t771 - t1092) * t774 + (-t771 * t996 - t1238) * t772 + t1011;
t296 = (-t570 * t771 - t1093) * t772 + t1011;
t386 = -t1080 * t509 - t483;
t1201 = (t1302 * t237 + t186 * t386 - t238 * t432 + t279 * t296 + t336 * t355 - t337 * t356) * t961;
t1199 = t432 * t1314;
t723 = t1152 + t1153;
t992 = -t772 * (pkin(2) * t772 - t765 + t977) + t774 * (-pkin(7) * t772 - t753 + (-pkin(2) + t767) * t774);
t897 = t723 * t974 + t992;
t235 = t1004 * t774 + t1005 * t772 + t897;
t181 = t235 * t407;
t363 = t446 * t1210;
t364 = -0.2e1 * t458 * t444;
t947 = t181 - t363 + t364;
t959 = 0.2e1 * t693;
t1197 = m(7) * (-t1230 * t959 - 0.2e1 * t1243 * t279 + t947);
t368 = -t681 * t772 + t682 * t774 - t1243;
t1195 = m(7) * (t1211 * t572 + t1212 * t573 + 0.2e1 * t368 * t386 + t947);
t1194 = -t1301 / 0.2e1;
t1193 = t275 / 0.2e1;
t1183 = 0.4e1 * m(5) * (t549 * t774 + t550 * t772);
t1171 = (t1302 * t473 + t355 * t412 + t356 * t413 - t432 * t474) * t961;
t333 = t412 * t1210;
t334 = 0.2e1 * t458 * t413;
t1019 = t333 + t334;
t1170 = m(7) * (t1208 * t337 + t1209 * t336 + t1019);
t1168 = m(7) * (-t1211 * t998 + t1212 * t476 + t1019);
t858 = t412 * t774 + t413 * t772;
t1166 = m(7) * (t1208 * t444 - t1209 * t446 - t858 * t959);
t322 = 0.2e1 * t1231;
t1165 = m(7) * (t1207 * t1302 + 0.2e1 * t1099 + t322);
t1163 = m(7) * t322;
t1146 = m(6) * qJD(3);
t1145 = m(6) * qJD(5);
t1143 = m(7) * qJD(3);
t1142 = m(7) * qJD(5);
t370 = -t1056 + (t776 * t985 - t1293) * t771;
t1103 = t370 * t773;
t1077 = t771 * t776;
t1055 = t773 * t698;
t997 = t551 - t569;
t976 = -0.2e1 * t893;
t973 = qJD(1) * t771;
t972 = qJD(3) * t772;
t971 = qJD(3) * t774;
t970 = qJD(5) * t771;
t969 = qJD(5) * t773;
t966 = t232 * qJD(4);
t900 = -0.2e1 * t509 * t1069 - 0.2e1 * t570 * t1080 + 0.2e1 * t1011;
t828 = t900 * t1203;
t247 = t415 + t828;
t965 = t247 * qJD(2);
t93 = -t309 * t773 + (t226 * t772 + t227 * t774) * t771;
t936 = t1079 / 0.2e1;
t94 = -t310 * t773 + (t228 * t772 + t229 * t774) * t771;
t940 = t1080 / 0.2e1;
t957 = t93 * t940 + t94 * t936 + (-t1103 + (t266 * t772 + t267 * t774) * t771) * t1189;
t952 = t1142 / 0.2e1;
t951 = t1141 / 0.2e1;
t949 = t1194 + t1301 / 0.2e1;
t932 = -t1077 / 0.2e1;
t931 = t1077 / 0.2e1;
t929 = t1069 / 0.2e1;
t926 = t1053 / 0.2e1;
t922 = t736 / 0.2e1 + t714 / 0.2e1;
t918 = rSges(5,2) * t771 - t1139 - t1155;
t916 = -t723 - t1155;
t913 = t961 / 0.2e1;
t887 = -t667 + t916;
t884 = t1300 * t940 + t1307;
t876 = t628 * t932 + t692 * t931 + t1253;
t821 = (t366 * t772 - t367 * t774) * t1284;
t84 = -t821 / 0.4e1 + ((-t572 / 0.2e1 + t238 / 0.2e1) * t774 + (t573 / 0.2e1 - t237 / 0.2e1) * t772) * m(7);
t788 = (t900 + 0.2e1 * (-t518 * t772 - t1091) * t773 + 0.2e1 * (t551 * t774 - t552 * t772) * t771) * t1203;
t807 = t368 * t961;
t95 = t788 - t807 / 0.4e1 + ((-t1058 / 0.2e1 - t1274 * t1192 - t562 / 0.2e1) * t774 + (-t1057 / 0.2e1 + t590 * t1297 - t561 / 0.2e1) * t772) * m(6);
t865 = t95 * qJD(2) - t84 * qJD(4);
t859 = -t358 * t772 + t359 * t774;
t846 = t916 + t988;
t844 = -t1199 / 0.4e1 + t884;
t804 = t771 * t837 + t1095;
t215 = t565 * t668 - t567 * t669 + t772 * t804;
t803 = t771 * t836 + t1094;
t216 = t566 * t668 - t568 * t669 + t772 * t803;
t41 = (-t285 + t864) * t773 + (t215 * t772 + t216 * t774 + t388) * t771;
t217 = -t565 * t670 - t567 * t671 + t774 * t804;
t218 = -t566 * t670 - t568 * t671 + t774 * t803;
t42 = (-t286 + t863) * t773 + (t217 * t772 + t218 * t774 + t390) * t771;
t843 = t1300 * t926 + t156 * t929 + t41 * t940 + t42 * t936 + t1228;
t253 = -t1001 * t694 + t1003 * t695 + t1080 * t555;
t254 = -t1000 * t694 + t1002 * t695 + t1080 * t556;
t139 = -t253 * t774 + t254 * t772;
t255 = t1001 * t696 + t1003 * t697 + t1079 * t555;
t256 = t1000 * t696 + t1002 * t697 + t1079 * t556;
t140 = -t255 * t774 + t256 * t772;
t831 = t1188 * t139 + t1191 * t140;
t827 = t1201 / 0.4e1 + t843;
t640 = t772 * (pkin(8) * t1069 - t732);
t644 = t774 * (-pkin(4) * t1079 + t733);
t824 = t640 + t644 - t893;
t822 = t1302 * t457 + t386 * t408 - t432 * t458;
t703 = t737 * t774;
t706 = t739 * t774;
t819 = (-t660 - t706) * t785 + (-t664 + t703) * t782;
t818 = t1221 + t1305;
t817 = t1307 + (t267 + t310) * t936 + (t1300 + t266 + t309) * t940;
t816 = t628 * t931 + t692 * t932 - t1253;
t116 = -t215 * t774 + t216 * t772;
t117 = -t217 * t774 + t218 * t772;
t814 = t116 * t940 + t117 * t936 + t41 * t1188 + t42 * t1191 + (-t249 * t774 + t250 * t772) * t1189 + (-t290 * t774 + t291 * t772) * t929 + t1298 * t926 + (t331 * t774 + t332 * t772) * t1192 - t1030;
t806 = t1268 * t925 + t1269 * t928 + t1271 * t935 + t1272 * t939 + t1227;
t805 = t41 * t942 - t42 * t1079 / 0.2e1 + t125 * t940 + t126 * t936 - t156 * t1069 / 0.2e1 + t94 * t1191 + t93 * t1188 - t1228 + (t1050 + t1110 - t1111) * t1189;
t802 = t771 * t835 + t1089;
t801 = t771 * t834 + t1088;
t798 = t817 - t1103;
t797 = -t1264 * t772 / 0.2e1 + t1267 * t1191 + ((t1287 + t1308) * t774 + t1256 + t1289 + t1303) * t1188;
t796 = (t1292 * t774 + (t621 * t773 + t663 * t785 - t1287) * t772) * t1188 + (t1266 * t774 - t1264 + t1267) * t1186 + (t1266 * t772 + t1256 + t1290) * t1191;
t792 = t1032 / 0.2e1 - t1034 / 0.2e1 + t1036 / 0.2e1 - t1038 / 0.2e1 + t718 / 0.2e1 - t715 / 0.2e1 + t653 / 0.2e1 + t626 / 0.2e1;
t791 = t806 + t818 - t901;
t790 = -t1227 + t818 + t901 + t1272 * t941 - t1271 * t1079 / 0.4e1 - t1269 * t1069 / 0.4e1 - t1268 * t1053 / 0.4e1;
t789 = -t1221 + t1305 + t806 + t901;
t768 = t771 ^ 2;
t745 = -rSges(4,2) * t782 + t1140;
t684 = t720 * t774;
t683 = t720 * t772;
t639 = t918 * t774;
t637 = t918 * t772;
t525 = t887 * t774;
t523 = t887 * t772;
t466 = -t1079 * t707 - t562 * t773;
t465 = t1080 * t707 + t561 * t773;
t447 = t846 * t774;
t445 = t846 * t772;
t428 = (t561 * t774 - t562 * t772) * t771;
t401 = t407 * t951;
t400 = (t1154 * t768 - t693 * t771) * t774 + t998 * t773;
t399 = -t681 * t773 - t768 * t958 + t457;
t398 = t852 * t771;
t392 = -t1055 + (-t781 * t981 + t784 * t982) * t771;
t375 = -t1274 * t772 + t590 * t774 + t824;
t362 = t514 + (-t681 * t774 + t772 * t998) * t771;
t360 = 0.2e1 * t457 * t772 - 0.2e1 * t458 * t774;
t354 = t360 * t951;
t338 = 0.4e1 * t857;
t313 = t1163 / 0.4e1;
t294 = -t536 * t772 + t537 * t774 + t897;
t287 = 0.4e1 * t858;
t284 = t772 * t997 + t774 * t996 + t824;
t274 = -0.4e1 * t442 * t561 + 0.4e1 * t443 * t562;
t261 = 0.4e1 * t442 * t490 + 0.4e1 * t443 * t491;
t252 = -0.4e1 * t412 * t544 + 0.4e1 * t413 * t545;
t248 = t828 + t1304;
t246 = -t586 * t696 - t588 * t697 + t774 * t801;
t245 = -t585 * t696 - t587 * t697 + t774 * t802;
t244 = t586 * t694 - t588 * t695 + t772 * t801;
t243 = t585 * t694 - t587 * t695 + t772 * t802;
t233 = 0.4e1 * t412 * t476 - 0.4e1 * t413 * t998;
t225 = t232 * t1143 / 0.4e1;
t223 = 0.4e1 * t412 * t473 + 0.4e1 * t413 * t474;
t201 = t1165 / 0.4e1;
t187 = -t451 * t773 + t771 * t859;
t184 = 0.4e1 * t294 * t439 + 0.4e1 * (t1071 + t1090) * t707;
t180 = t1203 * t252 + t876;
t170 = t287 * t1203 + t338 * t1205 + t1183 / 0.4e1;
t164 = t1166 / 0.4e1;
t160 = 0.4e1 * t822;
t135 = -0.4e1 * t1243 * t235 + 0.4e1 * (t1072 + t1098) * t693;
t134 = -t245 * t774 + t246 * t772;
t133 = -t243 * t774 + t244 * t772;
t131 = t1168 / 0.4e1;
t129 = t313 + t201 + t1304;
t128 = t415 + t313 - t1165 / 0.4e1;
t127 = t415 + t201 - t1163 / 0.4e1;
t118 = 0.4e1 * t235 * t368 - 0.4e1 * t444 * t572 - 0.4e1 * t446 * t573;
t106 = 0.4e1 * t1306 * t366 + 0.4e1 * t312 * t398 - 0.4e1 * t367 * t450;
t105 = -t352 * t773 + (t255 * t772 + t256 * t774) * t771;
t104 = -t351 * t773 + (t253 * t772 + t254 * t774) * t771;
t102 = t1170 / 0.4e1;
t101 = 0.4e1 * t1302 * t355 + 0.4e1 * t296 * t386 - 0.4e1 * t356 * t432;
t99 = t1171 / 0.4e1;
t98 = t233 * t1203 - t1055 / 0.2e1 + t274 * t1205 + t1224 * t771 + t876;
t97 = 0.4e1 * t885;
t96 = t439 * t915 + t807 / 0.4e1 + t788 + 0.2e1 * t312 * t1205;
t87 = t945 + t946 - t944;
t86 = t944 + t1265;
t85 = t944 - t1265;
t83 = t821 / 0.4e1 + ((-t238 - t572) * t774 + (t237 + t573) * t772) * t912;
t78 = (-t361 + t859) * t773 + (t268 * t772 + t269 * t774 + t451) * t771;
t75 = 0.4e1 * t1018 * t337;
t71 = t1195 / 0.4e1;
t59 = t223 * t1203 + t261 * t1205 + (t739 / 0.2e1 + t738 / 0.2e1) * t785 + t792 * t771 - t1255;
t57 = (-t308 + t861) * t773 + (t245 * t772 + t246 * t774 + t404) * t771;
t56 = (-t307 + t862) * t773 + (t243 * t772 + t244 * t774 + t402) * t771;
t43 = t1197 / 0.4e1;
t32 = 0.4e1 * t186 * t279 + 0.4e1 * t237 * t336 - 0.4e1 * t238 * t337;
t29 = t1021 + t1031 - t1016;
t28 = t1016 - t1259;
t27 = t1016 + t1259;
t26 = t1203 * t135 + t1030;
t21 = t1203 * t160 + t957;
t20 = t21 * qJD(6);
t19 = t1203 * t97 + t957;
t18 = t118 * t1203 + t1205 * t184 + t1030 + t831;
t16 = t101 * t1203 + t843;
t15 = t131 - t1170 / 0.4e1 + t844;
t14 = t102 - t1168 / 0.4e1 + t844;
t13 = t102 + t131 + t1199 / 0.4e1 + t798;
t12 = t1080 * t949 - t75 * t1203 + t884;
t11 = t71 - t1197 / 0.4e1 + t827;
t10 = t43 - t1195 / 0.4e1 + t827;
t9 = t772 * t796 + t774 * t797;
t8 = t32 * t1203 + t106 * t1205 + (t1049 / 0.2e1 + t1074 / 0.2e1 - t78 / 0.2e1) * t773 + (t57 * t1186 + t56 * t1191 + t187 / 0.2e1) * t771 + t843;
t7 = t789 + t99 + t164;
t6 = t791 + t99 - t1166 / 0.4e1;
t5 = t790 + t164 - t1171 / 0.4e1;
t4 = t43 - t1201 / 0.4e1 + t71 + t805;
t3 = t1219 + t789 + t1223 + t1254;
t2 = t1220 + (t361 / 0.2e1 + (-t404 / 0.4e1 - t359 / 0.4e1) * t774 + (-t402 / 0.4e1 + t358 / 0.4e1) * t772) * t773 + t790 + (-t451 / 0.2e1 + (-t308 / 0.4e1 - t269 / 0.4e1) * t774 + (-t307 / 0.4e1 - t268 / 0.4e1) * t772) * t771 + t1223 + t1257;
t1 = t1220 + t1219 + (t351 / 0.4e1 + t275 / 0.4e1) * t774 + t791 + (-t352 / 0.4e1 - t276 / 0.4e1) * t772 - t1258;
t17 = [t59 * qJD(3) + t170 * qJD(4) + t98 * qJD(5) + t180 * qJD(6), 0, t59 * qJD(1) + t86 * qJD(4) + t3 * qJD(5) + t7 * qJD(6) + (-t268 / 0.2e1 - t285 / 0.2e1 - t249 / 0.2e1 + (-t621 / 0.2e1 - t674 / 0.2e1) * t773 + (t619 / 0.2e1 - t676 / 0.2e1) * t771 + (t659 / 0.2e1 + t705 / 0.2e1) * t782 + t922 * t774 + (-t663 / 0.2e1 - t702 / 0.2e1) * t785 - t797 - t307 / 0.2e1) * t971 + (t269 / 0.2e1 + t250 / 0.2e1 + t286 / 0.2e1 - t796 + t922 * t772 + (t677 / 0.2e1 - t620 / 0.2e1) * t771 + (t622 / 0.2e1 - t675 / 0.2e1) * t773 + (-t706 / 0.2e1 - t660 / 0.2e1) * t782 + t308 / 0.2e1 + (t664 / 0.2e1 - t703 / 0.2e1) * t785) * t972 + (t412 * t447 + t413 * t445 - t444 * t474 - t446 * t473) * t1143 + (t442 * t525 + t443 * t523 - t490 * t524 - t491 * t522) * t1146 + ((t549 * t639 + t550 * t637) * m(5) + ((-t574 * t774 - t575 * t772) * t745 + (-t708 * t774 + t709 * t772) * t743) * m(4)) * qJD(3), qJD(1) * t170 + qJD(3) * t86 + qJD(5) * t27 + qJD(6) * t128, t98 * qJD(1) + t3 * qJD(3) + t27 * qJD(4) + t817 * qJD(5) + t13 * qJD(6) + (-t370 - t392) * t969 + (t75 / 0.4e1 + t336 * t476 + t337 * t998 + t399 * t412 + t400 * t413) * t1142 + (-t1306 * t561 + t442 * t465 + t443 * t466 - t450 * t562) * t1145 + ((t352 / 0.2e1 + t276 / 0.2e1) * t774 + (t351 / 0.2e1 + t1193 - t949) * t772) * t970, t180 * qJD(1) + t7 * qJD(3) + t128 * qJD(4) + t13 * qJD(5) + t798 * qJD(6) + (-t1302 * t544 - t432 * t545 + t333 / 0.2e1 + t334 / 0.2e1) * t1141; 0, 0 (t976 * t1283 + (m(6) / 0.2e1 + t1204) * (0.2e1 * t640 + 0.2e1 * t644 + t976)) * qJD(3) + t96 * qJD(5) + t248 * qJD(6) + (-m(4) * t709 - m(5) * t684 + m(6) * t590 + t913 * t996) * t971 + (-m(4) * t708 - m(5) * t683 - m(6) * t1274 + t913 * t997) * t972, 0, t96 * qJD(3) + (t407 * t1204 + (m(6) * t561 - m(7) * t681) * t1079 + (-m(6) * t562 - m(7) * t682) * t1080) * qJD(5) + t401, t248 * qJD(3) + t407 * t952 + t401; t9 * qJD(3) + t87 * qJD(4) + t2 * qJD(5) + t5 * qJD(6) + t223 * t1296 + t261 * t1295 - t792 * t973 + (-(t739 + t738) * t785 / 0.2e1 + t1255) * qJD(1), -qJD(5) * t95 - qJD(6) * t247, t9 * qJD(1) + t18 * qJD(5) + t26 * qJD(6) + ((t235 * t284 - t444 * t445 - t446 * t447) * m(7) + (t294 * t375 - t522 * t523 - t524 * t525) * m(6) + m(5) * (-t1244 * t639 - t1245 * t637 + (t772 * t845 + t774 * (rSges(5,1) * t1053 + t910) + t992) * (-t683 * t772 - t684 * t774 - t893)) + m(4) * ((t772 * (rSges(4,1) * t1063 - t975) + t774 * (rSges(4,1) * t1040 + rSges(4,3) * t772 - t751)) * (-t708 * t772 - t709 * t774) + t974 * t745 * t743) + (t117 + t134 + (t1222 * t774 + (t819 - t1240) * t772 + t1225) * t774 + t1239 * t769) * t1191 + (t116 + t133 + (t819 * t772 + (t1222 - t1239) * t774 + t1225) * t772 + t1240 * t770) * t1188) * qJD(3), t87 * qJD(1) + t84 * qJD(5) - t1311 / 0.4e1, t2 * qJD(1) + t18 * qJD(3) + (t104 * t1188 + t105 * t1191 + t805) * qJD(5) + t4 * qJD(6) + (t78 / 0.2e1 + (t1194 + t1193) * t774 + (-t165 / 0.2e1 - t276 / 0.2e1) * t772) * t969 + (-t187 / 0.2e1 + (-t57 / 0.2e1 + t140 / 0.2e1) * t774 + (-t56 / 0.2e1 + t139 / 0.2e1) * t772) * t970 + (-t32 / 0.4e1 + t235 * t362 + t279 * t368 + t336 * t573 - t337 * t572 - t399 * t446 - t400 * t444) * t1142 + (t294 * t428 + t398 * t439 - t465 * t524 - t466 * t522 - t106 / 0.4e1 - t1232 * t707) * t1145 - t865, t5 * qJD(1) - t965 + t26 * qJD(3) + t4 * qJD(5) + t805 * qJD(6) + (-t966 / 0.4e1 + (-t386 * t1243 + t181 / 0.2e1 - t363 / 0.2e1 + t364 / 0.2e1 - t101 / 0.4e1 - t1231 * t693) * qJD(6)) * m(7); t85 * qJD(3) + t28 * qJD(5) + t127 * qJD(6) + t1183 * t1309 + t338 * t1295 + t287 * t1296, 0, t85 * qJD(1) + ((-m(5) * t637 - m(6) * t523 - m(7) * t445) * t774 + (m(5) * t639 + m(6) * t525 + m(7) * t447) * t772) * qJD(3) + t83 * qJD(5) + t1311 / 0.4e1, 0, t28 * qJD(1) + t83 * qJD(3) + ((-m(6) * t466 - m(7) * t400) * t774 + (m(6) * t465 + m(7) * t399) * t772) * qJD(5) + t354, t127 * qJD(1) + t360 * t952 + t225 + t354; (t1055 / 0.2e1 + t816) * qJD(1) + t1 * qJD(3) + t29 * qJD(4) + t12 * qJD(5) + t14 * qJD(6) + (-t233 / 0.4e1 + t1018 * t413) * t1144 + t274 * t1295 - t1224 * t973, qJD(3) * t95, t1 * qJD(1) + (t1299 * t926 + t134 * t936 + (-t323 * t774 + t324 * t772) * t929 + t133 * t940 + t56 * t1188 + (-t268 * t774 + t269 * t772) * t1189 + (t358 * t774 + t359 * t772) * t1192 + t57 * t1191 + t814 - t831) * qJD(3) + t8 * qJD(5) + t10 * qJD(6) + (-t118 / 0.4e1 + t186 * t235 - t237 * t446 - t238 * t444 + t279 * t284 + t336 * t447 - t337 * t445) * t1143 + (-t184 / 0.4e1 + t294 * t312 - t366 * t524 - t367 * t522 + t375 * t398 + t1306 * t525 - t450 * t523) * t1146 + t865, qJD(1) * t29 - qJD(3) * t84, t12 * qJD(1) + t8 * qJD(3) + ((t279 * t362 + t336 * t399 - t337 * t400) * m(7) + (t1306 * t465 + t398 * t428 - t450 * t466) * m(6) + t773 ^ 2 * t392 / 0.2e1 + (t105 * t1186 + t104 * t1191 + (t275 * t772 + t276 * t774) * t1189) * t771 + t957) * qJD(5) + t19 * qJD(6), t14 * qJD(1) + t10 * qJD(3) + t19 * qJD(5) + t957 * qJD(6) + (-t160 / 0.4e1 + t822 + t885) * t1141; m(7) * t1309 * t252 + t816 * qJD(1) + t6 * qJD(3) + t129 * qJD(4) + t15 * qJD(5) + qJD(6) * t884, qJD(3) * t247, t6 * qJD(1) + t965 + t814 * qJD(3) + t11 * qJD(5) + t16 * qJD(6) + ((t235 * t296 + t284 * t386 - t355 * t446 - t356 * t444 + t1302 * t447 - t432 * t445 - t135 / 0.4e1) * qJD(3) + t966 / 0.4e1) * m(7), qJD(1) * t129 + t225, t15 * qJD(1) + t11 * qJD(3) + t957 * qJD(5) + t20 + (t362 * t386 + t399 * t1302 - t400 * t432 - t97 / 0.4e1 + t885) * t1142, qJD(1) * t884 + qJD(3) * t16 + qJD(5) * t21 + t20;];
Cq  = t17;