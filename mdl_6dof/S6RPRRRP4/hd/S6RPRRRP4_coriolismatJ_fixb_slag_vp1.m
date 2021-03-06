% Calculate matrix of centrifugal and coriolis load on the joints for
% S6RPRRRP4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d5,theta2]';
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
% Datum: 2019-03-09 06:09
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S6RPRRRP4_coriolismatJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRP4_coriolismatJ_fixb_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRRP4_coriolismatJ_fixb_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRRP4_coriolismatJ_fixb_slag_vp1: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRRRP4_coriolismatJ_fixb_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RPRRRP4_coriolismatJ_fixb_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RPRRRP4_coriolismatJ_fixb_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 06:07:00
% EndTime: 2019-03-09 06:08:21
% DurationCPUTime: 69.50s
% Computational Cost: add. (240229->1238), mult. (207280->1731), div. (0->0), fcn. (223041->9), ass. (0->795)
t1026 = cos(qJ(1));
t1554 = -0.2e1 * t1026;
t1018 = pkin(10) + qJ(3);
t1008 = qJ(4) + t1018;
t1000 = sin(t1008);
t1023 = sin(qJ(5));
t1025 = cos(qJ(5));
t920 = (-rSges(6,1) * t1023 - rSges(6,2) * t1025) * t1000;
t1218 = t920 * t1554;
t1024 = sin(qJ(1));
t1001 = cos(t1008);
t1227 = t1024 * t1025;
t1229 = t1023 * t1026;
t949 = -t1001 * t1229 + t1227;
t1226 = t1025 * t1026;
t1228 = t1024 * t1023;
t950 = t1001 * t1226 + t1228;
t1118 = t950 * rSges(6,1) + t949 * rSges(6,2);
t1451 = pkin(4) * t1001;
t1533 = rSges(6,3) + pkin(9);
t1601 = -t1000 * t1533 - t1451;
t1002 = cos(pkin(10)) * pkin(2) + pkin(1);
t1007 = cos(t1018);
t1452 = pkin(3) * t1007;
t974 = t1002 + t1452;
t1466 = -pkin(7) - qJ(2);
t1223 = -pkin(8) + t1466;
t995 = t1024 * t1223;
t629 = -t995 + (-t1601 + t974) * t1026 + t1118;
t1254 = t629 * t1024;
t1350 = -t1024 * t974 - t1026 * t1223;
t947 = t1001 * t1228 + t1226;
t948 = t1001 * t1227 - t1229;
t1618 = -t948 * rSges(6,1) + t947 * rSges(6,2);
t628 = t1024 * t1601 + t1350 + t1618;
t1399 = t628 * t1218 - 0.2e1 * t920 * t1254;
t1243 = t1000 * t1023;
t1128 = -(-rSges(7,1) * t1023 - rSges(7,2) * t1025) * t1000 + pkin(5) * t1243;
t807 = t1128 * t1026;
t1558 = 0.2e1 * t807;
t1005 = pkin(5) * t1025 + pkin(4);
t1438 = rSges(7,3) * t1000;
t1022 = -qJ(6) - pkin(9);
t1240 = t1000 * t1026;
t1689 = t950 * rSges(7,1) + t949 * rSges(7,2) + pkin(5) * t1228 - t1022 * t1240;
t604 = -t995 + (t1001 * t1005 + t1438 + t974) * t1026 + t1689;
t1584 = 0.2e1 * t604;
t1242 = t1000 * t1024;
t1234 = t1005 * t1024;
t1716 = -t948 * rSges(7,1) + t947 * rSges(7,2) + pkin(5) * t1229 - t1001 * t1234;
t603 = (-rSges(7,3) + t1022) * t1242 + t1350 + t1716;
t806 = t1128 * t1024;
t1401 = t603 * t1558 + t806 * t1584;
t1547 = m(7) / 0.4e1;
t1549 = m(6) / 0.4e1;
t779 = rSges(6,1) * t949 - rSges(6,2) * t950;
t1559 = -0.2e1 * t779;
t777 = -rSges(6,1) * t947 - rSges(6,2) * t948;
t1560 = -0.2e1 * t777;
t1701 = rSges(7,1) + pkin(5);
t691 = -t950 * rSges(7,2) + t1701 * t949;
t1566 = -0.2e1 * t691;
t690 = t948 * rSges(7,2) + t1701 * t947;
t1567 = 0.2e1 * t690;
t1440 = rSges(7,1) * t1025;
t1113 = -rSges(7,2) * t1023 + t1440;
t1437 = rSges(7,3) * t1001;
t1447 = pkin(9) + t1022;
t1448 = pkin(4) - t1005;
t1610 = t1000 * t1448;
t1375 = t1000 * t1113 + t1001 * t1447 - t1437 - t1610;
t958 = pkin(4) * t1000 - pkin(9) * t1001;
t1200 = t958 + t1375;
t630 = t1200 * t1024;
t632 = t1200 * t1026;
t1441 = rSges(6,1) * t1025;
t1114 = -rSges(6,2) * t1023 + t1441;
t1439 = rSges(6,3) * t1001;
t860 = t1000 * t1114 - t1439;
t1365 = t860 + t958;
t714 = t1365 * t1024;
t716 = t1365 * t1026;
t1621 = (t1566 * t630 - t1567 * t632 + t1401) * t1547 + (t1559 * t714 - t1560 * t716 + t1399) * t1549;
t1579 = 0.2e1 * t629;
t737 = rSges(6,3) * t1242 - t1618;
t1196 = rSges(6,2) * t1243;
t1182 = t1000 * t1227;
t971 = rSges(6,1) * t1182;
t832 = -t971 + (t1196 + t1439) * t1024;
t862 = rSges(6,3) * t1000 + t1001 * t1114;
t517 = (t1024 * t860 + t832) * t1001 + (t1024 * t862 - t737) * t1000;
t741 = rSges(6,3) * t1240 + t1118;
t1181 = t1000 * t1226;
t1183 = t1000 * t1229;
t1235 = t1001 * t1026;
t1346 = rSges(6,2) * t1183 + rSges(6,3) * t1235;
t834 = -rSges(6,1) * t1181 + t1346;
t518 = (-t1026 * t860 - t834) * t1001 + (-t1026 * t862 + t741) * t1000;
t1409 = t518 * t1579 + 0.2e1 * t517 * t628;
t1149 = t1448 * t1001;
t1611 = t1000 * t1447;
t1374 = t1001 * t1113 - t1149 + t1438 - t1611;
t1237 = t1001 * t1024;
t984 = pkin(4) * t1242;
t1125 = pkin(9) * t1237 - t984;
t1074 = rSges(7,2) * t1243 + t1437;
t1198 = rSges(7,1) * t1182 + t1000 * t1234 + t1022 * t1237;
t676 = -t1024 * t1074 + t1198;
t1381 = -t1125 - t676;
t1391 = -(t1451 + t1611) * t1024 + rSges(7,3) * t1242 - t1716;
t320 = (t1024 * t1375 + t1381) * t1001 + (t1024 * t1374 - t1391) * t1000;
t1450 = pkin(9) * t1000;
t1390 = (-t1149 - t1450) * t1026 + rSges(7,3) * t1240 + t1689;
t1239 = t1001 * t1022;
t1347 = rSges(7,2) * t1183 + rSges(7,3) * t1235;
t985 = pkin(9) * t1235;
t1692 = -t985 + (-t1239 + t1610) * t1026 - rSges(7,1) * t1181 + t1347;
t321 = (-t1026 * t1375 - t1692) * t1001 + (-t1026 * t1374 + t1390) * t1000;
t1419 = t321 * t1584 + 0.2e1 * t320 * t603;
t1115 = (-pkin(4) - t1441) * t1000;
t1197 = t985 + t1346;
t699 = t1026 * t1115 + t1197;
t1564 = -0.2e1 * t699;
t1062 = -t1001 * t1533 - t1196;
t1348 = t971 + t984;
t698 = t1024 * t1062 + t1348;
t1565 = 0.2e1 * t698;
t1053 = -t1239 + (-t1005 - t1440) * t1000;
t677 = t1026 * t1053 + t1347;
t1570 = -0.2e1 * t677;
t1571 = 0.2e1 * t676;
t1704 = t1001 * t737 + t860 * t1242;
t1712 = t1001 * t1391 + t1375 * t1242;
t475 = t1001 * t1390 + t1240 * t1375;
t625 = t1001 * t741 + t1240 * t860;
t1623 = (t1564 * t625 + t1565 * t1704 + t1409) * t1549 + (t1570 * t475 + t1571 * t1712 + t1419) * t1547;
t1735 = t1623 - t1621;
t1006 = sin(t1018);
t1453 = pkin(3) * t1006;
t1152 = t958 + t1453;
t1084 = t1152 + t1375;
t612 = t1084 * t1024;
t614 = t1084 * t1026;
t1130 = t1152 + t860;
t680 = t1130 * t1024;
t682 = t1130 * t1026;
t1622 = (t1566 * t612 - t1567 * t614 + t1401) * t1547 + (t1559 * t680 - t1560 * t682 + t1399) * t1549;
t648 = (t1053 - t1453) * t1026 + t1347;
t1572 = -0.2e1 * t648;
t647 = (-t1074 + t1453) * t1024 + t1198;
t1573 = 0.2e1 * t647;
t1580 = -0.2e1 * t625;
t671 = (t1062 + t1453) * t1024 + t1348;
t672 = (t1115 - t1453) * t1026 + t1197;
t1624 = (t1580 * t672 + 0.2e1 * t1704 * t671 + t1409) * t1549 + (t1572 * t475 + t1573 * t1712 + t1419) * t1547;
t1734 = t1624 - t1622;
t1473 = -t1001 / 0.2e1;
t1435 = Icges(7,4) * t950;
t726 = Icges(7,2) * t949 + Icges(7,6) * t1240 + t1435;
t926 = Icges(7,4) * t949;
t732 = Icges(7,1) * t950 + Icges(7,5) * t1240 + t926;
t1097 = -t1023 * t726 + t1025 * t732;
t720 = Icges(7,5) * t950 + Icges(7,6) * t949 + Icges(7,3) * t1240;
t1321 = t1001 * t720;
t512 = t1000 * t1097 - t1321;
t1436 = Icges(6,4) * t950;
t729 = Icges(6,2) * t949 + Icges(6,6) * t1240 + t1436;
t929 = Icges(6,4) * t949;
t735 = Icges(6,1) * t950 + Icges(6,5) * t1240 + t929;
t1095 = -t1023 * t729 + t1025 * t735;
t723 = Icges(6,5) * t950 + Icges(6,6) * t949 + Icges(6,3) * t1240;
t1319 = t1001 * t723;
t515 = t1000 * t1095 - t1319;
t1654 = t512 + t515;
t1338 = Icges(7,4) * t1025;
t1107 = -Icges(7,2) * t1023 + t1338;
t849 = -Icges(7,6) * t1001 + t1000 * t1107;
t1339 = Icges(7,4) * t1023;
t1109 = Icges(7,1) * t1025 - t1339;
t853 = -Icges(7,5) * t1001 + t1000 * t1109;
t1094 = -t1023 * t849 + t1025 * t853;
t1102 = Icges(7,5) * t1025 - Icges(7,6) * t1023;
t846 = Icges(7,3) * t1000 + t1001 * t1102;
t1065 = -t1094 + t846;
t845 = -Icges(7,3) * t1001 + t1000 * t1102;
t1318 = t1001 * t845;
t1041 = t1000 * t1065 + t1318;
t850 = Icges(7,6) * t1000 + t1001 * t1107;
t854 = Icges(7,5) * t1000 + t1001 * t1109;
t415 = t1026 * t1041 + t949 * t850 + t950 * t854;
t1340 = Icges(6,4) * t1025;
t1108 = -Icges(6,2) * t1023 + t1340;
t851 = -Icges(6,6) * t1001 + t1000 * t1108;
t1341 = Icges(6,4) * t1023;
t1110 = Icges(6,1) * t1025 - t1341;
t855 = -Icges(6,5) * t1001 + t1000 * t1110;
t1093 = -t1023 * t851 + t1025 * t855;
t1103 = Icges(6,5) * t1025 - Icges(6,6) * t1023;
t848 = Icges(6,3) * t1000 + t1001 * t1103;
t1064 = -t1093 + t848;
t847 = -Icges(6,3) * t1001 + t1000 * t1103;
t1316 = t1001 * t847;
t1040 = t1000 * t1064 + t1316;
t852 = Icges(6,6) * t1000 + t1001 * t1108;
t856 = Icges(6,5) * t1000 + t1001 * t1110;
t416 = t1026 * t1040 + t949 * t852 + t950 * t856;
t1656 = t415 + t416;
t1680 = t1000 / 0.2e1;
t925 = Icges(7,4) * t948;
t725 = Icges(7,2) * t947 - Icges(7,6) * t1242 - t925;
t924 = Icges(7,4) * t947;
t730 = Icges(7,1) * t948 + Icges(7,5) * t1242 - t924;
t1098 = t1023 * t725 + t1025 * t730;
t718 = Icges(7,5) * t948 - Icges(7,6) * t947 + Icges(7,3) * t1242;
t1322 = t1001 * t718;
t510 = t1000 * t1098 - t1322;
t928 = Icges(6,4) * t948;
t728 = Icges(6,2) * t947 - Icges(6,6) * t1242 - t928;
t927 = Icges(6,4) * t947;
t733 = Icges(6,1) * t948 + Icges(6,5) * t1242 - t927;
t1096 = t1023 * t728 + t1025 * t733;
t721 = Icges(6,5) * t948 - Icges(6,6) * t947 + Icges(6,3) * t1242;
t1320 = t1001 * t721;
t513 = t1000 * t1096 - t1320;
t1721 = -t510 - t513;
t1068 = -t1026 * t845 - t1097;
t824 = t849 * t1026;
t828 = t853 * t1026;
t367 = -t1068 * t1001 + (t1023 * t824 - t1025 * t828 + t720) * t1000;
t1066 = -t1026 * t847 - t1095;
t826 = t851 * t1026;
t830 = t855 * t1026;
t369 = -t1066 * t1001 + (t1023 * t826 - t1025 * t830 + t723) * t1000;
t440 = -t1065 * t1001 + (-t1023 * t850 + t1025 * t854 + t845) * t1000;
t441 = -t1064 * t1001 + (-t1023 * t852 + t1025 * t856 + t847) * t1000;
t554 = t1242 * t845 - t849 * t947 + t853 * t948;
t555 = t1242 * t847 - t851 * t947 + t855 * t948;
t558 = t1240 * t845 + t949 * t849 + t950 * t853;
t559 = t1240 * t847 + t949 * t851 + t950 * t855;
t590 = t1000 * t1094 - t1318;
t591 = t1000 * t1093 - t1316;
t1733 = (t590 + t591) * t1680 + (t440 + t441) * t1473 + (t554 + t555 - t1721) * t1237 / 0.4e1 + (t558 + t559 + t1654) * t1235 / 0.4e1 + t1240 * (t367 + t369 + t1656) / 0.4e1;
t764 = -Icges(7,5) * t947 - Icges(7,6) * t948;
t766 = -Icges(6,5) * t947 - Icges(6,6) * t948;
t1732 = t764 + t766;
t765 = Icges(7,5) * t949 - Icges(7,6) * t950;
t767 = Icges(6,5) * t949 - Icges(6,6) * t950;
t1731 = t765 + t767;
t1382 = -Icges(6,2) * t950 + t735 + t929;
t1384 = -Icges(7,2) * t950 + t732 + t926;
t1730 = t1382 + t1384;
t1383 = -Icges(6,2) * t948 + t733 - t927;
t1385 = -Icges(7,2) * t948 + t730 - t924;
t1729 = t1383 + t1385;
t1386 = Icges(6,1) * t949 - t1436 - t729;
t1388 = Icges(7,1) * t949 - t1435 - t726;
t1728 = t1386 + t1388;
t1387 = -Icges(6,1) * t947 + t728 - t928;
t1389 = -Icges(7,1) * t947 + t725 - t925;
t1727 = t1387 + t1389;
t1458 = m(7) * qJD(1);
t1699 = -t1458 / 0.4e1;
t479 = t1242 * t721 + t728 * t947 + t733 * t948;
t480 = t723 * t1242 - t947 * t729 + t948 * t735;
t1091 = t479 * t1024 + t1026 * t480;
t88 = -t1000 * t1091 + t555 * t1001;
t477 = t1242 * t718 + t725 * t947 + t730 * t948;
t478 = t720 * t1242 - t947 * t726 + t948 * t732;
t1092 = t477 * t1024 + t1026 * t478;
t87 = -t1000 * t1092 + t554 * t1001;
t481 = t718 * t1240 - t949 * t725 + t950 * t730;
t482 = t720 * t1240 + t949 * t726 + t950 * t732;
t1090 = t1024 * t481 + t1026 * t482;
t1714 = t1000 * t1090 - t558 * t1001;
t483 = t721 * t1240 - t949 * t728 + t950 * t733;
t484 = t723 * t1240 + t949 * t729 + t950 * t735;
t1089 = t1024 * t483 + t1026 * t484;
t1715 = t1000 * t1089 - t559 * t1001;
t1693 = t1714 + t1715;
t1698 = -m(6) * qJD(1) / 0.4e1;
t1726 = t1242 * t1732 + t1727 * t948 - t1729 * t947;
t1725 = t1242 * t1731 + t1728 * t948 - t1730 * t947;
t1724 = t1240 * t1732 + t1727 * t950 + t1729 * t949;
t1723 = t1240 * t1731 + t1728 * t950 + t1730 * t949;
t907 = (-Icges(7,5) * t1023 - Icges(7,6) * t1025) * t1000;
t908 = (-Icges(6,5) * t1023 - Icges(6,6) * t1025) * t1000;
t911 = (-Icges(7,2) * t1025 - t1339) * t1000;
t912 = (-Icges(6,2) * t1025 - t1341) * t1000;
t915 = (-Icges(7,1) * t1023 - t1338) * t1000;
t916 = (-Icges(6,1) * t1023 - t1340) * t1000;
t1713 = -t1000 * (-(t855 / 0.2e1 + t912 / 0.2e1 + t853 / 0.2e1 + t911 / 0.2e1) * t1023 + (t916 / 0.2e1 - t851 / 0.2e1 + t915 / 0.2e1 - t849 / 0.2e1) * t1025) + (t908 / 0.2e1 + t907 / 0.2e1) * t1001;
t1171 = t1242 / 0.4e1;
t1173 = -t1242 / 0.4e1;
t1703 = (t482 + t484) * t1024 + (-t483 - t481) * t1026;
t1711 = (t1171 + t1173) * t1703;
t1367 = t853 + t911;
t1369 = -t849 + t915;
t465 = t1242 * t907 - t1367 * t947 + t1369 * t948;
t1366 = t855 + t912;
t1368 = -t851 + t916;
t466 = t1242 * t908 - t1366 * t947 + t1368 * t948;
t1710 = t465 + t466;
t467 = t1240 * t907 + t1367 * t949 + t1369 * t950;
t468 = t1240 * t908 + t1366 * t949 + t1368 * t950;
t1709 = t467 + t468;
t1702 = m(7) / 0.2e1;
t1696 = t1024 * t1725 - t1026 * t1726;
t1695 = t1024 * t1723 - t1026 * t1724;
t993 = Icges(5,4) * t1001;
t953 = -Icges(5,2) * t1000 + t993;
t954 = Icges(5,1) * t1000 + t993;
t1691 = t953 + t954;
t438 = 0.4e1 * (-t1024 * t603 + t1026 * t604) * t1000;
t1690 = t438 * t1458;
t1019 = t1024 ^ 2;
t1020 = t1026 ^ 2;
t1224 = t1019 + t1020;
t956 = rSges(5,1) * t1000 + rSges(5,2) * t1001;
t1061 = t956 + t1453;
t1608 = t1061 * t1024;
t1248 = t1608 * t1024;
t1607 = t1061 * t1026;
t1280 = t1026 * t1607;
t1688 = t1248 + t1280;
t1684 = t1024 * t690 - t1026 * t691;
t1683 = t1024 * t691 + t1026 * t690;
t1551 = m(5) / 0.4e1;
t1681 = -t1000 / 0.2e1;
t1679 = t1001 / 0.2e1;
t1469 = t1024 / 0.2e1;
t1468 = -t1026 / 0.2e1;
t1677 = -t1026 / 0.4e1;
t1467 = t1026 / 0.2e1;
t1675 = -t1224 / 0.2e1;
t1629 = 0.2e1 * m(6);
t1672 = t1629 / 0.4e1;
t1069 = -t1024 * t845 - t1098;
t1045 = t1000 * t1069 + t1322;
t823 = t849 * t1024;
t827 = t853 * t1024;
t341 = t1024 * t1045 + t823 * t947 - t827 * t948;
t1044 = t1000 * t1068 + t1321;
t342 = t1024 * t1044 + t824 * t947 - t828 * t948;
t413 = t1024 * t1041 - t850 * t947 + t854 * t948;
t64 = (t1092 - t413) * t1001 + (t1024 * t341 + t1026 * t342 + t554) * t1000;
t1067 = -t1024 * t847 - t1096;
t1043 = t1000 * t1067 + t1320;
t825 = t851 * t1024;
t829 = t855 * t1024;
t343 = t1024 * t1043 + t825 * t947 - t829 * t948;
t1042 = t1000 * t1066 + t1319;
t344 = t1024 * t1042 + t826 * t947 - t830 * t948;
t414 = t1024 * t1040 - t852 * t947 + t856 * t948;
t65 = (t1091 - t414) * t1001 + (t1024 * t343 + t1026 * t344 + t555) * t1000;
t1671 = t65 + t64;
t345 = t1026 * t1045 - t949 * t823 - t950 * t827;
t346 = t1026 * t1044 - t949 * t824 - t950 * t828;
t66 = (t1090 - t415) * t1001 + (t1024 * t345 + t1026 * t346 + t558) * t1000;
t347 = t1026 * t1043 - t949 * t825 - t950 * t829;
t348 = t1026 * t1042 - t949 * t826 - t950 * t830;
t67 = (t1089 - t416) * t1001 + (t1024 * t347 + t1026 * t348 + t559) * t1000;
t1670 = t67 + t66;
t1663 = -t1710 * t1001 + (t1024 * t1726 + t1026 * t1725) * t1000;
t1662 = -t1709 * t1001 + (t1024 * t1724 + t1026 * t1723) * t1000;
t1661 = (-t341 - t343) * t1026 + (t342 + t344) * t1024;
t1660 = (-t345 - t347) * t1026 + (t346 + t348) * t1024;
t1657 = t413 + t414;
t1284 = t1026 * t682;
t1286 = t1026 * t614;
t1256 = t612 * t1024;
t605 = -0.2e1 * t1256;
t1252 = t680 * t1024;
t675 = -0.2e1 * t1252;
t839 = -0.2e1 * t1248;
t968 = rSges(4,1) * t1006 + rSges(4,2) * t1007;
t1136 = (t605 - 0.2e1 * t1286) * t1547 + (t675 - 0.2e1 * t1284) * t1549 + (t839 - 0.2e1 * t1280) * t1551 + m(4) * t968 * t1675;
t1215 = 0.2e1 * t1248;
t1204 = (t605 + 0.2e1 * t1256) * t1547 + (t675 + 0.2e1 * t1252) * t1549 + (t839 + t1215) * t1551;
t1639 = t1136 - t1204;
t1282 = t1026 * t716;
t1285 = t1026 * t632;
t1253 = t630 * t1024;
t626 = -0.2e1 * t1253;
t1251 = t714 * t1024;
t700 = -0.2e1 * t1251;
t1202 = (t626 - 0.2e1 * t1285) * t1547 + (t700 - 0.2e1 * t1282) * t1549 + m(5) * t956 * t1675;
t1405 = (t626 + 0.2e1 * t1253) * t1547 + (t700 + 0.2e1 * t1251) * t1549;
t1638 = t1202 - t1405;
t1147 = -rSges(5,2) * t1240 + t1024 * rSges(5,3);
t1442 = rSges(5,1) * t1001;
t750 = -t995 + (t974 + t1442) * t1026 + t1147;
t1250 = t750 * t1024;
t957 = -rSges(5,2) * t1000 + t1442;
t665 = -0.2e1 * t957 * t1250;
t1217 = t957 * t1554;
t881 = rSges(5,1) * t1237 - rSges(5,2) * t1242 - t1026 * rSges(5,3);
t749 = -t881 + t1350;
t666 = t749 * t1217;
t1392 = t665 + t666;
t959 = t1450 + t1451;
t1364 = -t862 - t959;
t715 = t1364 * t1024;
t537 = t715 * t1579;
t717 = t1364 * t1026;
t1561 = 0.2e1 * t717;
t538 = t628 * t1561;
t1402 = t537 + t538;
t1199 = -t959 - t1374;
t631 = t1199 * t1024;
t1577 = 0.2e1 * t631;
t485 = t604 * t1577;
t633 = t1199 * t1026;
t1575 = 0.2e1 * t633;
t486 = t603 * t1575;
t1406 = t485 + t486;
t1562 = -0.2e1 * t716;
t1563 = -0.2e1 * t714;
t1209 = (t1572 * t630 - t1573 * t632 + t1406) * t1547 + (t1562 * t671 + t1563 * t672 + t1402) * t1549 + (0.2e1 * (t1024 * t1607 - t1026 * t1608) * t956 + t1392) * t1551;
t921 = t956 * t1024;
t922 = t956 * t1026;
t1210 = (t1570 * t612 - t1571 * t614 + t1406) * t1547 + (t1564 * t680 - t1565 * t682 + t1402) * t1549 + (-0.2e1 * t1607 * t921 + 0.2e1 * t1608 * t922 + t1392) * t1551;
t1637 = t1209 - t1210;
t1263 = t475 * t1024;
t1553 = 0.2e1 * t1026;
t301 = t1553 * t1712 - 0.2e1 * t1263;
t1255 = t625 * t1024;
t487 = t1553 * t1704 - 0.2e1 * t1255;
t1418 = t1547 * t301 + t1549 * t487;
t1216 = 0.2e1 * t1255;
t1420 = (t1554 * t1712 + 0.2e1 * t1263 + t301) * t1547 + (t1554 * t1704 + t1216 + t487) * t1549;
t1636 = t1418 - t1420;
t1588 = -0.2e1 * t475;
t1056 = -t1024 * t1390 + t1026 * t1391;
t420 = t1056 * t1000;
t1590 = 0.2e1 * t420;
t1359 = t1024 * t1125 + t1026 * (-pkin(4) * t1240 + t985);
t1602 = t1024 * t1381 + t1026 * t1692;
t439 = t1359 + t1602;
t1208 = t1575 * t1712 + t631 * t1588 + t439 * t1590;
t1576 = -0.2e1 * t632;
t1578 = -0.2e1 * t630;
t271 = t1056 * t1001 + (-t1024 * t1692 + t1026 * t1381) * t1000;
t1592 = 0.2e1 * t271;
t1358 = t1224 * t959;
t394 = t1024 * t1391 + t1026 * t1390 + t1358;
t36 = t1576 * t320 + t1578 * t321 + t1592 * t394 + t1208;
t1086 = -t1024 * t741 + t1026 * t737;
t581 = t1086 * t1000;
t1585 = 0.2e1 * t581;
t1620 = t1024 * t832 + t1026 * t834;
t565 = t1359 + t1620;
t1206 = t1561 * t1704 + t715 * t1580 + t565 * t1585;
t457 = t1086 * t1001 + (-t1024 * t834 + t1026 * t832) * t1000;
t1589 = 0.2e1 * t457;
t523 = t1024 * t737 + t1026 * t741 + t1358;
t94 = t1562 * t517 + t1563 * t518 + t1589 * t523 + t1206;
t1464 = t1547 * t36 + t1549 * t94;
t1003 = t1024 * t1466;
t1184 = t1026 * t1466;
t1377 = -t1024 * (t1024 * t1002 + t1184 + t1350) + t1026 * (t1003 - t995 + (-t1002 + t974) * t1026);
t339 = t394 + t1377;
t169 = t339 * t1592;
t1582 = -0.2e1 * t614;
t263 = t320 * t1582;
t1583 = -0.2e1 * t612;
t264 = t321 * t1583;
t423 = t523 + t1377;
t269 = t423 * t1589;
t1568 = -0.2e1 * t682;
t425 = t517 * t1568;
t1569 = -0.2e1 * t680;
t426 = t518 * t1569;
t1465 = (t263 + t264 + t169 + t1208) * t1547 + (t425 + t426 + t269 + t1206) * t1549;
t1635 = t1464 - t1465;
t366 = -t1069 * t1001 + (t1023 * t823 - t1025 * t827 + t718) * t1000;
t368 = -t1067 * t1001 + (t1023 * t825 - t1025 * t829 + t721) * t1000;
t1633 = t366 + t368 + t1657;
t1342 = Icges(5,4) * t1000;
t952 = Icges(5,2) * t1001 + t1342;
t955 = Icges(5,1) * t1001 - t1342;
t1036 = t952 * t1681 + t1691 * t1679 + (t845 + t847 + t955) * t1680 - (t850 + t852) * t1243 / 0.2e1 + ((t854 + t856) * t1000 + (t855 + t853) * t1001) * t1025 / 0.2e1 + (t846 + t848 + (t851 + t849) * t1023) * t1473;
t1630 = 0.2e1 * m(5);
t1627 = 0.2e1 * t1000;
t998 = Icges(4,4) * t1007;
t965 = -Icges(4,2) * t1006 + t998;
t966 = Icges(4,1) * t1006 + t998;
t944 = t1224 * t1000;
t1225 = qJD(3) + qJD(4);
t692 = t1024 * t881 + t1026 * (rSges(5,1) * t1235 + t1147);
t745 = -t1024 * t921 - t1026 * t922;
t1605 = t1224 * t957 * t956 + t692 * t745;
t639 = t1024 * t777 + t1026 * t779;
t1400 = t1684 * t1702 - t639 * t1629 / 0.4e1;
t1604 = m(6) * (t1704 * t517 + t457 * t581 - t518 * t625) + m(7) * (t1712 * t320 + t271 * t420 - t321 * t475);
t1134 = 0.2e1 * t339 + 0.2e1 * t394;
t1603 = ((t423 + t523) * t639 + ((t682 + t716) * t1026 + (t680 + t714) * t1024) * t920) * t1672 + (-t1684 * t1134 + (-t614 - t632) * t1558 + 0.2e1 * (-t612 - t630) * t806) * t1547;
t1122 = t423 * t565 - t680 * t715 - t682 * t717;
t1123 = t339 * t439 - t612 * t631 - t614 * t633;
t1552 = m(4) / 0.4e1;
t1443 = rSges(4,1) * t1007;
t1142 = t1002 + t1443;
t1233 = t1006 * t1024;
t1245 = rSges(4,2) * t1233 + t1026 * rSges(4,3);
t801 = -t1024 * t1142 - t1184 + t1245;
t1232 = t1006 * t1026;
t1148 = -rSges(4,2) * t1232 + t1024 * rSges(4,3);
t802 = t1026 * t1142 - t1003 + t1148;
t945 = t968 * t1024;
t946 = t968 * t1026;
t1343 = Icges(4,4) * t1006;
t964 = Icges(4,2) * t1007 + t1343;
t967 = Icges(4,1) * t1007 - t1343;
t1600 = -(t967 / 0.2e1 - t964 / 0.2e1) * t1006 - 0.4e1 * t1551 * (-t1607 * t750 + t1608 * t749) - 0.4e1 * t1552 * (t801 * t945 - t802 * t946);
t1201 = (t1024 * t676 - t1026 * t677) * t1702 + (t1024 * t698 - t1026 * t699) * t1672 - t745 * t1630 / 0.4e1;
t1137 = t1468 * t1696 + t1469 * t1695;
t1085 = t1024 * t945 + t1026 * t946;
t1135 = (t1024 * t647 - t1026 * t648) * t1702 + (t1024 * t671 - t1026 * t672) * t1672 + t1688 * t1630 / 0.4e1 + m(4) * t1085 / 0.2e1;
t903 = Icges(4,5) * t1024 + t1026 * t967;
t1353 = -t964 * t1026 + t903;
t1231 = t1007 * t1024;
t990 = Icges(4,4) * t1233;
t902 = Icges(4,1) * t1231 - Icges(4,5) * t1026 - t990;
t1354 = -Icges(4,2) * t1231 + t902 - t990;
t901 = Icges(4,6) * t1024 + t1026 * t965;
t1355 = -t1026 * t966 - t901;
t900 = Icges(4,4) * t1231 - Icges(4,2) * t1233 - Icges(4,6) * t1026;
t1356 = t1024 * t966 + t900;
t1596 = (-t1353 * t1024 + t1026 * t1354) * t1006 + (t1355 * t1024 + t1026 * t1356) * t1007;
t880 = Icges(5,5) * t1024 + t1026 * t955;
t1360 = -t952 * t1026 + t880;
t979 = Icges(5,4) * t1242;
t879 = Icges(5,1) * t1237 - Icges(5,5) * t1026 - t979;
t1361 = -Icges(5,2) * t1237 + t879 - t979;
t878 = Icges(5,6) * t1024 + t1026 * t953;
t1362 = -t1026 * t954 - t878;
t877 = Icges(5,4) * t1237 - Icges(5,2) * t1242 - Icges(5,6) * t1026;
t1363 = t1024 * t954 + t877;
t1595 = (-t1360 * t1024 + t1026 * t1361) * t1000 + (t1362 * t1024 + t1026 * t1363) * t1001;
t400 = -t1001 * t767 + (-t1023 * t1382 + t1025 * t1386) * t1000;
t1266 = t400 * t1024;
t399 = -t1001 * t766 + (-t1023 * t1383 + t1025 * t1387) * t1000;
t1267 = t399 * t1026;
t398 = -t1001 * t765 + (-t1023 * t1384 + t1025 * t1388) * t1000;
t1268 = t398 * t1024;
t397 = -t1001 * t764 + (-t1023 * t1385 + t1025 * t1389) * t1000;
t1269 = t397 * t1026;
t1058 = -t1269 / 0.4e1 + t1268 / 0.4e1 - t1267 / 0.4e1 + t1266 / 0.4e1 + t1709 * t1024 / 0.4e1 + t1710 * t1677;
t1593 = (t1677 + t1026 / 0.4e1) * t1693;
t835 = t880 * t1237;
t951 = Icges(5,5) * t1001 - Icges(5,6) * t1000;
t1275 = t1026 * t951;
t876 = Icges(5,3) * t1024 + t1275;
t1139 = t1026 * t876 - t835;
t875 = Icges(5,5) * t1237 - Icges(5,6) * t1242 - Icges(5,3) * t1026;
t1141 = t1000 * t878 - t875;
t1327 = t1000 * t877;
t1372 = t1024 * t876 + t880 * t1235;
t1373 = -t1024 * t875 - t879 * t1235;
t618 = -t1242 * t878 - t1139;
t619 = -t1240 * t877 - t1373;
t620 = -t1240 * t878 + t1372;
t1038 = ((t618 - t835 + (t876 + t1327) * t1026 + t1373) * t1026 + t1372 * t1024 + t1703) * t1468 + (t620 * t1024 - t1026 * t619 + t1703) * t1467 + ((t1024 * t1141 + t1139 + t618 + t619) * t1024 + (-t1372 + t620 + t1024 * (-t1001 * t879 + t1327) + (t1141 + t875) * t1026) * t1026) * t1469;
t521 = t1683 * t1000;
t1587 = -0.2e1 * t521;
t616 = (-t1024 * t779 + t1026 * t777) * t1000;
t1581 = 0.2e1 * t616;
t1574 = 0.4e1 * t639;
t1557 = 0.4e1 * t944;
t1555 = -0.2e1 * t1001;
t1550 = m(6) / 0.2e1;
t1212 = 0.2e1 * t1235;
t1213 = -0.2e1 * t1237;
t1408 = t1212 * t1712 + t475 * t1213;
t1538 = m(7) * (t271 * t1555 + (t1024 * t321 + t1026 * t320 + t420) * t1627 + t1408);
t1527 = 0.4e1 * m(5) * (t749 * t921 - t750 * t922);
t1214 = -0.2e1 * t1242;
t277 = t1214 * t1712 + t1240 * t1588;
t1502 = m(7) * ((t1024 * t1712 + t1026 * t475) * t1627 + t277);
t1395 = -t632 * t1212 + t630 * t1213;
t596 = t612 * t1213;
t598 = t614 * t1212;
t1397 = t596 - t598;
t1501 = m(7) * (t1134 * t944 + t1395 + t1397);
t1205 = t1240 * t1575 + t1242 * t1577 + t439 * t1555;
t337 = t339 * t1627;
t1500 = m(7) * (t337 + t1205 + t1397);
t148 = t1627 * t394 + t1205 + t1395;
t1499 = m(7) * t148;
t1495 = m(7) * (t1590 * t944 + t1408);
t1187 = t612 * t1240;
t597 = -0.2e1 * t1187;
t1492 = m(7) * (0.2e1 * t1187 + t597);
t1186 = t630 * t1240;
t610 = -0.2e1 * t1186;
t1491 = m(7) * (0.2e1 * t1186 + t610);
t1398 = t603 * t1212 + t1237 * t1584;
t1490 = m(7) * (-t1214 * t614 + t1398 + t597);
t1489 = m(7) * (-t1214 * t632 + t1398 + t610);
t1488 = m(7) * t277;
t1486 = m(7) * ((t1024 * t648 + t1026 * t647) * t1627 + t1398);
t1485 = m(7) * ((t1024 * t677 + t1026 * t676) * t1627 + t1398);
t1484 = m(7) * (-t1684 * t1555 + (t1024 * t806 + t1026 * t807) * t1627);
t1478 = m(7) * t1683 * t1627;
t1470 = -t1024 / 0.2e1;
t1463 = m(5) * qJD(3);
t1462 = m(5) * qJD(4);
t1460 = m(6) * qJD(3);
t1459 = m(6) * qJD(4);
t1457 = m(7) * qJD(3);
t1456 = m(7) * qJD(4);
t1455 = m(7) * qJD(5);
t1454 = m(7) * qJD(6);
t1057 = (t517 * t1024 - t1026 * t518) * t1629;
t120 = -t1057 / 0.4e1 + ((-t806 / 0.2e1 + t321 / 0.2e1) * t1026 + (t807 / 0.2e1 - t320 / 0.2e1) * t1024) * m(7);
t1274 = t120 * qJD(2);
t189 = t1495 / 0.4e1;
t428 = t1484 / 0.4e1;
t32 = t189 + t428 - t1538 / 0.4e1;
t1446 = t32 * qJD(6) + t1274;
t1211 = t1454 / 0.4e1;
t46 = t1538 / 0.4e1;
t30 = t428 + t46 - t1495 / 0.4e1;
t1219 = 0.4e1 * t1001;
t756 = (-0.1e1 + t1224) * t1000 * t1219;
t1445 = t30 * qJD(5) + t756 * t1211;
t1444 = t32 * qJD(5) - t756 * t1454 / 0.4e1;
t544 = t692 + t1377;
t1428 = t544 * t745;
t119 = t1057 / 0.4e1 + ((-t321 - t806) * t1026 + (t320 + t807) * t1024) * t1702;
t379 = (-m(6) * t715 - m(7) * t631) * t1026 + (m(6) * t717 + m(7) * t633) * t1024;
t1421 = t379 * qJD(4) + t119 * qJD(5);
t1230 = t1007 * t1026;
t898 = Icges(4,5) * t1231 - Icges(4,6) * t1233 - Icges(4,3) * t1026;
t1371 = -t1024 * t898 - t902 * t1230;
t1106 = Icges(4,5) * t1007 - Icges(4,6) * t1006;
t899 = Icges(4,3) * t1024 + t1026 * t1106;
t1370 = t1024 * t899 + t903 * t1230;
t1312 = t1006 * t900;
t1273 = t366 * t1026;
t1272 = t367 * t1024;
t1271 = t368 * t1026;
t1270 = t369 * t1024;
t1262 = t510 * t1024;
t1261 = t513 * t1024;
t758 = m(7) * t944;
t1249 = t758 * qJD(1);
t1244 = qJD(5) * t1000;
t1222 = 0.4e1 * t920;
t1088 = t1026 * t512 + t1262;
t255 = t1000 * t1088 - t590 * t1001;
t1087 = t1026 * t515 + t1261;
t256 = t1000 * t1087 - t591 * t1001;
t91 = (t1088 - t440) * t1001 + (t1024 * t366 + t1026 * t367 + t590) * t1000;
t92 = (t1087 - t441) * t1001 + (t1024 * t368 + t1026 * t369 + t591) * t1000;
t10 = (-t92 / 0.2e1 - t91 / 0.2e1 + (t1714 / 0.2e1 + t1715 / 0.2e1) * t1026 + (-t87 / 0.2e1 - t88 / 0.2e1) * t1024) * t1001 + (t256 / 0.2e1 + t255 / 0.2e1 + (t66 / 0.2e1 + t67 / 0.2e1) * t1026 + (t64 / 0.2e1 + t65 / 0.2e1) * t1024) * t1000 + t1604;
t31 = t189 + t46 - t1484 / 0.4e1;
t1221 = t10 * qJD(5) + t31 * qJD(6) - t1274;
t1207 = t1558 * t1712 + t806 * t1588 - t1590 * t1684;
t1203 = t920 * t1216 + t1218 * t1704 + t639 * t1585;
t1172 = t1242 / 0.2e1;
t1166 = t1240 / 0.2e1;
t1151 = -t957 - t1452;
t1150 = -t959 - t1452;
t1140 = t1006 * t901 - t898;
t840 = t903 * t1231;
t1138 = t1026 * t899 - t840;
t1129 = t1150 - t862;
t1124 = t1224 * t1453;
t1121 = t1428 + t957 * t1215 / 0.2e1 - t1607 * t1217 / 0.2e1;
t1105 = -Icges(4,5) * t1006 - Icges(4,6) * t1007;
t1104 = Icges(5,5) * t1000 + Icges(5,6) * t1001;
t1101 = t1000 * t879 + t1001 * t877;
t1083 = t1150 - t1374;
t1081 = t1137 + t1603;
t909 = t1104 * t1024;
t910 = t1026 * t1104;
t1078 = (-t1019 * t910 + (t1024 * t909 + t1595) * t1026 + t1660) * t1469 + (-t1020 * t909 + (t1026 * t910 + t1595) * t1024 + t1661) * t1468;
t1077 = t1128 * t1000;
t1063 = -t1124 + t1359;
t1060 = t394 * t439 - t630 * t631 - t632 * t633;
t1059 = t523 * t565 - t714 * t715 - t716 * t717;
t1055 = (-t952 + t955) * t1001 - t1691 * t1000;
t1054 = -m(5) * (t1026 * t749 + t1250) - m(4) * (t802 * t1024 + t1026 * t801) - m(3) * t1224 * (rSges(3,3) + qJ(2));
t1035 = t1593 + t1711;
t1034 = -t1137 + (t1024 * t1654 + t1026 * t1721) * t1680 + (t1272 - t1273 + t1270 - t1271) * t1473 + t1670 * t1469 + t1671 * t1468 + t1661 * t1172 + t1660 * t1166 + (-t1024 * (-t480 - t478) - (t477 + t479) * t1026) * t1237 / 0.2e1 + t1703 * t1235 / 0.2e1;
t1033 = t1171 * t1633 + t1733;
t1032 = -t1604 + (t256 + t255) * t1681 + (t1268 - t1269 + t1266 - t1267) * t1473 + (t92 + t91) * t1679 + t1662 * t1469 + t1663 * t1468 - t1671 * t1242 / 0.2e1 + t1696 * t1172 - t1670 * t1240 / 0.2e1 + t1695 * t1166 - (-t88 - t87) * t1237 / 0.2e1 - t1693 * t1235 / 0.2e1;
t1031 = -t1271 / 0.2e1 - t1273 / 0.2e1 - t1038 + t1270 / 0.2e1 + t1272 / 0.2e1 + (t1000 * t1362 + t1001 * t1360 + t1024 * t951 + t1026 * t1055 + t1656) * t1469 + (-t1000 * t1363 + t1001 * t1361 + t1024 * t1055 - t1275 + t1657) * t1468;
t1030 = t1261 / 0.2e1 + t1262 / 0.2e1 + t1101 * t1470 + (t1101 + t1721) * t1469 - t1036;
t1029 = t1033 + t1058 - t1593 + t1711;
t1028 = t1173 * t1633 + t1035 + t1058 - t1733;
t1027 = t1035 + t1033 - t1058;
t969 = -rSges(4,2) * t1006 + t1443;
t939 = t1105 * t1026;
t938 = t1105 * t1024;
t866 = t1151 * t1026;
t864 = t1151 * t1024;
t757 = t1702 * t944 - t758 / 0.2e1;
t683 = t1129 * t1026;
t681 = t1129 * t1024;
t669 = -t1124 + t745;
t644 = -t1001 * t779 - t1240 * t920;
t643 = t1001 * t777 + t1242 * t920;
t638 = -t1232 * t901 + t1370;
t637 = -t1232 * t900 - t1371;
t636 = -t1233 * t901 - t1138;
t615 = t1083 * t1026;
t613 = t1083 * t1024;
t586 = -t1001 * t691 + t1026 * t1077;
t585 = -t1001 * t690 - t1024 * t1077;
t542 = t1478 / 0.4e1;
t539 = t1063 + t1620;
t520 = -t1001 * t908 + (-t1023 * t1366 + t1025 * t1368) * t1000;
t519 = -t1001 * t907 + (-t1023 * t1367 + t1025 * t1369) * t1000;
t516 = 0.4e1 * t1605;
t505 = t638 * t1024 - t1026 * t637;
t504 = t636 * t1024 - t1026 * (-t1024 * (-t1007 * t902 + t1312) - t1026 * t898);
t492 = 0.4e1 * t1026 * t628 + 0.4e1 * t1254;
t442 = 0.4e1 * t604 * t1024 + 0.4e1 * t1026 * t603;
t418 = t1063 + t1602;
t396 = -0.4e1 * t628 * t777 + 0.4e1 * t629 * t779;
t383 = 0.4e1 * t1688 * t957 + 0.4e1 * t1428;
t380 = 0.4e1 * t628 * t698 + 0.4e1 * t629 * t699;
t365 = 0.4e1 * t628 * t671 + 0.4e1 * t629 * t672;
t350 = 0.4e1 * t603 * t690 + 0.4e1 * t604 * t691;
t349 = 0.4e1 * t603 * t676 + 0.4e1 * t604 * t677;
t338 = 0.4e1 * t603 * t647 + 0.4e1 * t604 * t648;
t323 = t1485 / 0.4e1;
t318 = t1486 / 0.4e1;
t316 = t523 * t1574 + (t1251 + t1282) * t1222;
t276 = t1488 / 0.4e1;
t274 = t1489 / 0.4e1;
t268 = t1490 / 0.4e1;
t265 = t1491 / 0.4e1;
t260 = 0.4e1 * t1059;
t259 = t394 * t1557 + (-t1253 - t1285) * t1219;
t254 = t423 * t1574 + (t1252 + t1284) * t1222;
t244 = (t636 - t840 + (t899 + t1312) * t1026 + t1371) * t1026 + t1370 * t1024;
t243 = (t1026 * t1140 - t1370 + t638) * t1026 + (t1024 * t1140 + t1138 + t637) * t1024;
t225 = t1492 / 0.4e1;
t223 = 0.4e1 * t1122;
t222 = t339 * t1557 + (-t1256 - t1286) * t1219;
t192 = -0.4e1 * t1684 * t394 - 0.4e1 * t630 * t806 - 0.4e1 * t632 * t807;
t191 = t1547 * t442 + t1549 * t492 - t1054;
t171 = -0.4e1 * t1684 * t339 - 0.4e1 * t612 * t806 - 0.4e1 * t614 * t807;
t154 = 0.4e1 * t1060;
t147 = t1499 / 0.4e1;
t146 = t350 * t1547 + t396 * t1549 - t1713;
t145 = t1202 + t1405 - t1201;
t144 = t1201 - t1638;
t143 = t1201 + t1638;
t142 = 0.4e1 * t1123;
t140 = t1500 / 0.4e1;
t138 = t1501 / 0.4e1;
t136 = t1502 / 0.4e1;
t116 = t120 * qJD(5);
t104 = t1136 + t1204 - t1135;
t103 = t1135 - t1639;
t102 = t1135 + t1639;
t101 = t274 + t265 - t1485 / 0.4e1;
t100 = t274 + t323 - t1491 / 0.4e1;
t99 = t323 + t265 - t1489 / 0.4e1;
t97 = t1036 + t1527 / 0.4e1 + t349 * t1547 + t380 * t1549;
t76 = t268 + t225 - t1486 / 0.4e1;
t75 = t268 + t318 - t1492 / 0.4e1;
t74 = t318 + t225 - t1490 / 0.4e1;
t53 = t1036 + (t966 / 0.2e1 + t965 / 0.2e1) * t1007 + t338 * t1547 + t365 * t1549 - t1600;
t52 = t276 + t542 - t1502 / 0.4e1;
t51 = t276 + t136 - t1478 / 0.4e1;
t50 = t542 + t136 - t1488 / 0.4e1;
t43 = t1418 + t1420 - t1400;
t42 = t1400 - t1636;
t41 = t1400 + t1636;
t25 = t138 + t147 - t1500 / 0.4e1;
t24 = t138 + t140 - t1499 / 0.4e1;
t23 = t140 + t147 - t1501 / 0.4e1;
t22 = t1547 * t192 + t1549 * t316 + t1137;
t21 = t1547 * t171 + t1549 * t254 + t1137;
t20 = t154 * t1547 + t1549 * t260 + t1551 * t516 + t1078;
t19 = t20 * qJD(4);
t18 = t142 * t1547 + t1549 * t223 + t1551 * t383 + t1078;
t15 = t1038 + (t504 / 0.2e1 + t243 / 0.2e1) * t1024 + (-t244 / 0.2e1 + t505 / 0.2e1) * t1026;
t14 = t1081 + t1635;
t13 = t1081 - t1635;
t12 = t1038 + t1637;
t11 = t1038 - t1637;
t8 = t1031 + t1209 + t1210;
t7 = t1034 + t1464 + t1465 - t1603;
t6 = t1029 + t1621 + t1623;
t5 = t1027 + t1735;
t4 = t1028 - t1735;
t3 = t1029 + t1622 + t1624;
t2 = t1027 + t1734;
t1 = t1028 - t1734;
t9 = [t191 * qJD(2) + t53 * qJD(3) + t97 * qJD(4) + t146 * qJD(5) + t438 * t1211, qJD(1) * t191 + qJD(3) * t102 + qJD(4) * t143 + qJD(5) * t41 + qJD(6) * t757, t53 * qJD(1) + t102 * qJD(2) + t8 * qJD(4) + t3 * qJD(5) + t75 * qJD(6) + (t603 * t615 + t604 * t613 - t612 * t648 - t614 * t647) * t1457 + (t628 * t683 + t629 * t681 - t671 * t682 - t672 * t680) * t1460 + (t749 * t866 + t750 * t864) * t1463 + ((t1006 * t1355 + t1007 * t1353) * t1469 + t1031 + t244 * t1467 + (t243 + t504) * t1470 + (-t1006 * t1356 + t1007 * t1354 + t505) * t1468 + (t1020 / 0.2e1 + t1019 / 0.2e1) * t1106 + ((-t801 * t969 - t945 * t968) * t1026 + (-t802 * t969 + t946 * t968) * t1024) * m(4)) * qJD(3), t97 * qJD(1) + t143 * qJD(2) + t8 * qJD(3) + t1031 * qJD(4) + t6 * qJD(5) + t100 * qJD(6) + (-t630 * t677 - t632 * t676 + t485 / 0.2e1 + t486 / 0.2e1) * t1456 + (-t698 * t716 - t699 * t714 + t537 / 0.2e1 + t538 / 0.2e1) * t1459 + (t665 / 0.2e1 + t666 / 0.2e1 + (t1024 * t922 - t1026 * t921) * t956) * t1462, t146 * qJD(1) + t41 * qJD(2) + t3 * qJD(3) + t6 * qJD(4) + t52 * qJD(6) + (t1712 * t690 - t475 * t691 + t585 * t603 + t586 * t604) * t1455 + ((t468 / 0.2e1 + t467 / 0.2e1 + t400 / 0.2e1 + t398 / 0.2e1) * t1026 + (t466 / 0.2e1 + t465 / 0.2e1 + t399 / 0.2e1 + t397 / 0.2e1) * t1024) * t1244 + ((-t520 - t519) * t1001 + (-t1704 * t777 - t625 * t779 + t628 * t643 + t629 * t644) * m(6)) * qJD(5), t1690 / 0.4e1 + t757 * qJD(2) + t75 * qJD(3) + t100 * qJD(4) + t52 * qJD(5); t1054 * qJD(1) + t103 * qJD(3) + t144 * qJD(4) + t42 * qJD(5) - t758 * qJD(6) + t1698 * t492 + t1699 * t442, 0, t103 * qJD(1) + ((-m(5) * t864 - m(6) * t681 - m(7) * t613) * t1026 + (m(5) * t866 + m(6) * t683 + m(7) * t615) * t1024) * qJD(3) + t1421, qJD(1) * t144 + qJD(3) * t379 + t1421, t42 * qJD(1) + ((-m(6) * t644 - m(7) * t586) * t1026 + (m(6) * t643 + m(7) * t585) * t1024) * qJD(5) + t1225 * t119, -t1249; t104 * qJD(2) + t15 * qJD(3) + t11 * qJD(4) + t1 * qJD(5) + t76 * qJD(6) + t338 * t1699 + t365 * t1698 + (t1030 - (t965 + t966) * t1007 / 0.2e1 + t1600) * qJD(1), qJD(1) * t104 + t116, t15 * qJD(1) + ((t339 * t418 - t612 * t613 - t614 * t615) * m(7) + (t423 * t539 - t680 * t681 - t682 * t683) * m(6) + m(5) * (-t1607 * t866 - t1608 * t864 + t544 * t669) + (t1020 * t938 + (-t1026 * t939 + t1596) * t1024) * t1468 + (t1019 * t939 + (-t1024 * t938 + t1596) * t1026) * t1469 + 0.4e1 * (t1224 * t968 * t969 - t1085 * (t1024 * (rSges(4,1) * t1231 - t1245) + t1026 * (rSges(4,1) * t1230 + t1148))) * t1552 + t1078) * qJD(3) + t18 * qJD(4) + t21 * qJD(5) + t222 * t1211, t11 * qJD(1) + t18 * qJD(3) + t1078 * qJD(4) + t13 * qJD(5) + t24 * qJD(6) + (-t154 / 0.4e1 + t1060 + t1123) * t1456 + (-t260 / 0.4e1 + t1059 + t1122) * t1459 + (-t516 / 0.4e1 + t1121 + t1605) * t1462, t1 * qJD(1) + t21 * qJD(3) + t13 * qJD(4) + (t1032 + (t1568 * t643 + t1569 * t644 + t1581 * t423 + t1203) * t1550 + (t1582 * t585 + t1583 * t586 + t1587 * t339 + t1207) * t1702) * qJD(5) + t1446, t76 * qJD(1) + t222 * t1457 / 0.4e1 + t24 * qJD(4) + t1444; (-t1527 / 0.4e1 + t1030) * qJD(1) + t145 * qJD(2) + t12 * qJD(3) + t1038 * qJD(4) + t4 * qJD(5) + t101 * qJD(6) + t349 * t1699 + t380 * t1698, qJD(1) * t145 + t116, t12 * qJD(1) + t1078 * qJD(3) + t19 + t14 * qJD(5) + t25 * qJD(6) + (-t142 / 0.4e1 + t394 * t418 - t613 * t630 - t615 * t632 + t1123) * t1457 + (-t223 / 0.4e1 + t523 * t539 - t681 * t714 - t683 * t716 + t1122) * t1460 + (t692 * t669 - t383 / 0.4e1 + (-t1024 * t864 - t1026 * t866) * t956 + t1121) * t1463, qJD(1) * t1038 + t20 * qJD(3) + t22 * qJD(5) + t1211 * t259 + t19, t4 * qJD(1) + t14 * qJD(3) + t22 * qJD(4) + (t1032 + (t1562 * t643 + t1563 * t644 + t1581 * t523 + t1203) * t1550 + (t1576 * t585 + t1578 * t586 + t1587 * t394 + t1207) * t1702) * qJD(5) + t1446, t101 * qJD(1) + t25 * qJD(3) + t259 * t1456 / 0.4e1 + t1444; t1713 * qJD(1) + t43 * qJD(2) + t2 * qJD(3) + t5 * qJD(4) + t51 * qJD(6) + t396 * t1698 + t1699 * t350, qJD(1) * t43 - t120 * t1225, t2 * qJD(1) + t1034 * qJD(3) + t7 * qJD(4) + (-t171 / 0.4e1 + t418 * t420 + t1712 * t615 - t475 * t613 + t169 / 0.2e1 + t263 / 0.2e1 + t264 / 0.2e1) * t1457 + (-t254 / 0.4e1 + t539 * t581 + t1704 * t683 - t625 * t681 + t269 / 0.2e1 + t425 / 0.2e1 + t426 / 0.2e1) * t1460 + t1221, t5 * qJD(1) + t7 * qJD(3) + (t1034 + (-t316 / 0.4e1 + t94 / 0.2e1) * m(6) + (-t192 / 0.4e1 + t36 / 0.2e1) * m(7)) * qJD(4) + t1221, t1225 * t10 + (((t398 + t400) * t1026 + (t397 + t399) * t1024) * t1473 + t1663 * t1469 + t1662 * t1467) * t1244 + ((t1712 * t585 - t420 * t521 - t475 * t586) * m(7) + (t1704 * t643 + t581 * t616 - t625 * t644) * m(6) + (t520 / 0.2e1 + t519 / 0.2e1) * t1001 ^ 2) * qJD(5), qJD(1) * t51 + t1225 * t31; -t1690 / 0.4e1 + t758 * qJD(2) + t74 * qJD(3) + t99 * qJD(4) + t50 * qJD(5), t1249, t74 * qJD(1) + (-t1001 * t418 + t337 / 0.2e1 + t596 / 0.2e1 - t598 / 0.2e1 - t222 / 0.4e1 + (t1024 * t613 + t1026 * t615) * t1000) * t1457 + t23 * qJD(4) + t1445, t99 * qJD(1) + t23 * qJD(3) + (t148 / 0.2e1 - t259 / 0.4e1) * t1456 + t1445, t50 * qJD(1) + (-t521 * t1555 + (t1024 * t586 + t1026 * t585) * t1627) * t1455 / 0.2e1 + t1225 * t30 (qJD(3) / 0.4e1 + qJD(4) / 0.4e1) * t756 * m(7);];
Cq  = t9;
