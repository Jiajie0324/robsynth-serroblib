% Calculate matrix of centrifugal and coriolis load on the joints for
% S6RRPRPR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d6,theta3,theta5]';
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
% Datum: 2019-03-09 10:11
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S6RRPRPR1_coriolismatJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPR1_coriolismatJ_fixb_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRPR1_coriolismatJ_fixb_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPRPR1_coriolismatJ_fixb_slag_vp1: pkin has to be [11x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRPRPR1_coriolismatJ_fixb_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RRPRPR1_coriolismatJ_fixb_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RRPRPR1_coriolismatJ_fixb_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 10:07:56
% EndTime: 2019-03-09 10:09:06
% DurationCPUTime: 55.79s
% Computational Cost: add. (189687->1188), mult. (141766->1650), div. (0->0), fcn. (150250->12), ass. (0->771)
t926 = qJ(2) + pkin(10);
t909 = qJ(4) + t926;
t901 = cos(t909);
t936 = cos(qJ(1));
t1249 = t901 * t936;
t934 = sin(qJ(1));
t1250 = t901 * t934;
t900 = sin(t909);
t1258 = t900 * t936;
t1427 = -t901 / 0.2e1;
t1538 = t900 / 0.2e1;
t925 = pkin(11) + qJ(6);
t907 = cos(t925);
t1223 = t934 * t907;
t905 = sin(t925);
t1247 = t905 * t936;
t790 = -t1247 * t901 + t1223;
t1224 = t934 * t905;
t1244 = t907 * t936;
t791 = t1244 * t901 + t1224;
t574 = Icges(7,5) * t791 + Icges(7,6) * t790 + Icges(7,3) * t1258;
t1320 = Icges(7,4) * t907;
t1014 = -Icges(7,2) * t905 + t1320;
t705 = -Icges(7,6) * t901 + t1014 * t900;
t658 = t705 * t936;
t1321 = Icges(7,4) * t905;
t1016 = Icges(7,1) * t907 - t1321;
t707 = -Icges(7,5) * t901 + t1016 * t900;
t660 = t707 * t936;
t1322 = Icges(7,4) * t791;
t577 = Icges(7,2) * t790 + Icges(7,6) * t1258 + t1322;
t757 = Icges(7,4) * t790;
t580 = Icges(7,1) * t791 + Icges(7,5) * t1258 + t757;
t1000 = -t577 * t905 + t580 * t907;
t1007 = Icges(7,5) * t907 - Icges(7,6) * t905;
t703 = -Icges(7,3) * t901 + t1007 * t900;
t979 = -t703 * t936 - t1000;
t274 = -t979 * t901 + (t658 * t905 - t660 * t907 + t574) * t900;
t706 = Icges(7,6) * t900 + t1014 * t901;
t708 = Icges(7,5) * t900 + t1016 * t901;
t1279 = t703 * t901;
t704 = Icges(7,3) * t900 + t1007 * t901;
t1277 = t707 * t907;
t1278 = t705 * t905;
t995 = t1277 - t1278;
t976 = t704 - t995;
t948 = t900 * t976 + t1279;
t311 = t790 * t706 + t791 * t708 + t936 * t948;
t322 = -t976 * t901 + (-t706 * t905 + t708 * t907 + t703) * t900;
t1259 = t900 * t934;
t788 = t1224 * t901 + t1244;
t789 = t1223 * t901 - t1247;
t572 = Icges(7,5) * t789 - Icges(7,6) * t788 + Icges(7,3) * t1259;
t1287 = t572 * t901;
t756 = Icges(7,4) * t789;
t575 = -Icges(7,2) * t788 + Icges(7,6) * t1259 + t756;
t755 = Icges(7,4) * t788;
t579 = -Icges(7,1) * t789 - Icges(7,5) * t1259 + t755;
t1540 = t575 * t905 + t579 * t907;
t368 = t1540 * t900 + t1287;
t1286 = t574 * t901;
t369 = t1000 * t900 - t1286;
t408 = t1259 * t703 - t705 * t788 + t707 * t789;
t410 = t1258 * t703 + t790 * t705 + t791 * t707;
t435 = t900 * t995 - t1279;
t1562 = t1427 * t322 + t1538 * t435 + (-t368 + t408) * t1250 / 0.4e1 + (t369 + t410) * t1249 / 0.4e1 + t1258 * (t274 + t311) / 0.4e1;
t743 = (-Icges(7,5) * t905 - Icges(7,6) * t907) * t900;
t1254 = t901 * t743;
t744 = (-Icges(7,2) * t907 - t1321) * t900;
t745 = (-Icges(7,1) * t905 - t1320) * t900;
t1561 = t1254 / 0.2e1 - ((t745 / 0.2e1 - t705 / 0.2e1) * t907 - (t707 / 0.2e1 + t744 / 0.2e1) * t905) * t900;
t1560 = -m(7) / 0.4e1;
t342 = t1259 * t572 - t575 * t788 - t579 * t789;
t343 = t574 * t1259 - t788 * t577 + t789 * t580;
t1006 = t342 * t934 + t343 * t936;
t60 = -t1006 * t900 + t408 * t901;
t1545 = qJD(1) * t1560;
t344 = t572 * t1258 + t790 * t575 - t791 * t579;
t345 = t574 * t1258 + t790 * t577 + t791 * t580;
t1005 = t934 * t344 + t345 * t936;
t1557 = t1005 * t900 - t410 * t901;
t209 = -t342 * t936 + t343 * t934;
t1076 = t1259 / 0.4e1;
t1078 = -t1259 / 0.4e1;
t1546 = -t344 * t936 + t345 * t934;
t1556 = (t1076 + t1078) * t1546;
t1555 = -m(6) / 0.4e1;
t1424 = t934 / 0.2e1;
t1421 = t936 / 0.2e1;
t929 = sin(pkin(11));
t930 = cos(pkin(11));
t1008 = Icges(6,5) * t930 - Icges(6,6) * t929;
t714 = -Icges(6,3) * t901 + t1008 * t900;
t1323 = Icges(5,4) * t900;
t832 = Icges(5,1) * t901 - t1323;
t1554 = t714 + t832;
t890 = Icges(5,4) * t901;
t830 = -Icges(5,2) * t900 + t890;
t740 = Icges(5,6) * t934 + t830 * t936;
t1221 = t934 * t930;
t1241 = t929 * t936;
t825 = -t1241 * t901 + t1221;
t1222 = t934 * t929;
t1240 = t930 * t936;
t826 = t1240 * t901 + t1222;
t831 = Icges(5,1) * t900 + t890;
t1552 = Icges(6,5) * t826 + Icges(6,6) * t825 + Icges(6,3) * t1258 - t831 * t936 - t740;
t823 = t1222 * t901 + t1240;
t824 = t1221 * t901 - t1241;
t606 = Icges(6,5) * t824 - Icges(6,6) * t823 + Icges(6,3) * t1259;
t739 = Icges(5,4) * t1250 - Icges(5,2) * t1259 - Icges(5,6) * t936;
t1551 = t831 * t934 - t606 + t739;
t742 = Icges(5,5) * t934 + t832 * t936;
t829 = Icges(5,2) * t901 + t1323;
t1550 = -(Icges(6,4) * t826 + Icges(6,2) * t825 + Icges(6,6) * t1258) * t929 + (Icges(6,1) * t826 + Icges(6,4) * t825 + Icges(6,5) * t1258) * t930 + t742 + (t714 - t829) * t936;
t867 = Icges(5,4) * t1259;
t741 = Icges(5,1) * t1250 - Icges(5,5) * t936 - t867;
t1549 = -(Icges(6,4) * t824 - Icges(6,2) * t823 + Icges(6,6) * t1259) * t929 + (Icges(6,1) * t824 - Icges(6,4) * t823 + Icges(6,5) * t1259) * t930 + t714 * t934 - Icges(5,2) * t1250 + t741 - t867;
t1017 = Icges(6,1) * t930 - Icges(6,4) * t929;
t718 = -Icges(6,5) * t901 + t1017 * t900;
t1548 = -t718 * t930 - t830 - t831;
t1488 = -t789 * rSges(7,1) + t788 * rSges(7,2);
t581 = rSges(7,3) * t1259 - t1488;
t1344 = rSges(7,1) * t907;
t1021 = -rSges(7,2) * t905 + t1344;
t1341 = rSges(7,3) * t901;
t709 = t1021 * t900 - t1341;
t1547 = t709 * t1259 + t581 * t901;
t1544 = qJD(1) * t1555;
t927 = t934 ^ 2;
t928 = t936 ^ 2;
t1134 = t927 + t928;
t933 = sin(qJ(2));
t1362 = pkin(2) * t933;
t906 = sin(t926);
t1032 = pkin(3) * t906 + t1362;
t834 = rSges(5,1) * t900 + rSges(5,2) * t901;
t989 = t1032 + t834;
t1524 = t989 * t934;
t1226 = t934 * t1524;
t1015 = Icges(6,4) * t930 - Icges(6,2) * t929;
t716 = -Icges(6,6) * t901 + t1015 * t900;
t1542 = Icges(6,3) * t900 + t1008 * t901 + t716 * t929;
t908 = cos(t926);
t935 = cos(qJ(2));
t1541 = -Icges(3,5) * t933 - Icges(4,5) * t906 - Icges(3,6) * t935 - Icges(4,6) * t908;
t737 = Icges(5,5) * t1250 - Icges(5,6) * t1259 - Icges(5,3) * t936;
t1049 = t740 * t900 - t737;
t700 = t742 * t1250;
t828 = Icges(5,5) * t901 - Icges(5,6) * t900;
t1268 = t828 * t936;
t738 = Icges(5,3) * t934 + t1268;
t1051 = t738 * t936 - t700;
t1169 = t742 * t1249 + t934 * t738;
t1170 = -t741 * t1249 - t934 * t737;
t1273 = t739 * t900;
t1422 = -t936 / 0.2e1;
t1523 = t1421 * t1546 + t1424 * t209;
t490 = -t1259 * t740 - t1051;
t491 = -t1258 * t739 - t1170;
t492 = -t1258 * t740 + t1169;
t944 = (-t491 * t936 + t492 * t934) * t1421 + ((t490 - t700 + (t738 + t1273) * t936 + t1170) * t936 + t1169 * t934 + t1546) * t1422 + (-t209 + (-t1259 * t606 - t1169 + t492 + (t737 + t1049) * t936) * t936 + (-(t741 * t901 - t1273) * t936 + t490 + t1051 + t491 + t606 * t1258 + t1049 * t934) * t934) * t1424 + t1523;
t1443 = m(4) / 0.4e1;
t1442 = m(5) / 0.4e1;
t1441 = m(6) / 0.4e1;
t1439 = m(7) / 0.4e1;
t1539 = -t900 / 0.2e1;
t1498 = t901 / 0.2e1;
t1537 = t934 / 0.4e1;
t1536 = -t936 / 0.4e1;
t1501 = 0.2e1 * m(7);
t1535 = t1501 / 0.4e1;
t1534 = m(6) / 0.2e1;
t1533 = m(5) / 0.2e1;
t1246 = t906 * t934;
t1243 = t908 * t934;
t1238 = t933 * t934;
t1220 = t934 * t935;
t657 = t705 * t934;
t659 = t707 * t934;
t980 = -t703 * t934 + t1540;
t273 = -t980 * t901 + (t657 * t905 - t659 * t907 + t572) * t900;
t310 = -t706 * t788 + t708 * t789 + t934 * t948;
t1522 = t273 + t310;
t1520 = (-t829 + t1554) * t901 + (t1542 + t1548) * t900;
t1519 = t1259 * t714 - t716 * t823 + t718 * t824 + t739 * t901 + t741 * t900;
t856 = rSges(4,1) * t906 + rSges(4,2) * t908;
t971 = t856 + t1362;
t1494 = t971 * t934;
t1225 = t934 * t1494;
t931 = -qJ(3) - pkin(7);
t1130 = -pkin(8) + t931;
t1361 = pkin(3) * t908;
t923 = t935 * pkin(2);
t904 = t923 + pkin(1);
t860 = t904 + t1361;
t1140 = -t936 * t1130 - t934 * t860;
t1334 = rSges(6,3) + qJ(5);
t1360 = pkin(4) * t901;
t1477 = -t1334 * t900 - t1360;
t1487 = -t824 * rSges(6,1) + t823 * rSges(6,2);
t498 = t1477 * t934 + t1140 + t1487;
t902 = pkin(5) * t930 + pkin(4);
t1248 = t902 * t934;
t1035 = pkin(5) * t1241 - t901 * t1248;
t932 = -pkin(9) - qJ(5);
t460 = t1488 + (-rSges(7,3) + t932) * t1259 + t1035 + t1140;
t1131 = qJD(2) + qJD(4);
t696 = t989 * t936;
t1280 = t696 * t936;
t1345 = rSges(6,1) * t930;
t1024 = -rSges(6,2) * t929 + t1345;
t1343 = rSges(6,3) * t901;
t720 = t1024 * t900 - t1343;
t833 = pkin(4) * t900 - qJ(5) * t901;
t990 = t1032 + t833;
t975 = t720 + t990;
t552 = t975 * t936;
t1288 = t552 * t936;
t1206 = qJ(5) + t932;
t1358 = pkin(4) - t902;
t1483 = t1358 * t900;
t1491 = t1206 * t901 - t1483 + t709;
t969 = t990 + t1491;
t468 = t969 * t936;
t1294 = t468 * t936;
t1445 = 0.2e1 * t936;
t1493 = t971 * t936;
t466 = t969 * t934;
t1229 = t934 * t466;
t458 = -0.2e1 * t1229;
t550 = t975 * t934;
t1227 = t934 * t550;
t541 = -0.2e1 * t1227;
t677 = -0.2e1 * t1226;
t728 = -0.2e1 * t1225;
t1043 = (t458 - 0.2e1 * t1294) * t1439 + (t541 - 0.2e1 * t1288) * t1441 + (t677 - 0.2e1 * t1280) * t1442 + (-t1445 * t1493 + t728) * t1443;
t1116 = 0.2e1 * t1226;
t1044 = (t458 + 0.2e1 * t1229) * t1439 + (t541 + 0.2e1 * t1227) * t1441 + (t677 + t1116) * t1442 + (t728 + 0.2e1 * t1225) * t1443;
t1513 = t1043 - t1044;
t1037 = 0.2e1 * t1134;
t1164 = t720 + t833;
t617 = t1164 * t936;
t1282 = t617 * t936;
t1081 = t833 + t1491;
t495 = t1081 * t936;
t1291 = t495 * t936;
t493 = t1081 * t934;
t1292 = t493 * t934;
t488 = -0.2e1 * t1292;
t615 = t1164 * t934;
t1283 = t615 * t934;
t596 = -0.2e1 * t1283;
t1084 = (t488 - 0.2e1 * t1291) * t1439 + (t596 - 0.2e1 * t1282) * t1441 - m(5) * t834 * t1037 / 0.4e1;
t1188 = (t488 + 0.2e1 * t1292) * t1439 + (t596 + 0.2e1 * t1283) * t1441;
t1512 = t1084 - t1188;
t1058 = -rSges(5,2) * t1258 + t934 * rSges(5,3);
t1346 = rSges(5,1) * t901;
t896 = t934 * t1130;
t634 = -t896 + (t860 + t1346) * t936 + t1058;
t1281 = t634 * t934;
t836 = -rSges(5,2) * t900 + t1346;
t556 = -0.2e1 * t836 * t1281;
t1446 = -0.2e1 * t936;
t1123 = t836 * t1446;
t748 = rSges(5,1) * t1250 - rSges(5,2) * t1259 - t936 * rSges(5,3);
t633 = -t748 + t1140;
t557 = t633 * t1123;
t1176 = t556 + t557;
t1025 = t826 * rSges(6,1) + t825 * rSges(6,2);
t499 = -t896 + (-t1477 + t860) * t936 + t1025;
t721 = rSges(6,3) * t900 + t1024 * t901;
t1310 = qJ(5) * t900;
t835 = t1310 + t1360;
t1163 = -t721 - t835;
t616 = t1163 * t934;
t415 = 0.2e1 * t616 * t499;
t618 = t1163 * t936;
t416 = 0.2e1 * t618 * t498;
t1187 = t415 + t416;
t1022 = t791 * rSges(7,1) + t790 * rSges(7,2);
t1034 = pkin(5) * t1222 - t932 * t1258;
t1342 = rSges(7,3) * t900;
t461 = -t896 + (t901 * t902 + t1342 + t860) * t936 + t1022 + t1034;
t1461 = 0.2e1 * t461;
t1064 = t1358 * t901;
t1484 = t1206 * t900;
t710 = t1021 * t901 + t1342;
t1490 = t1064 + t1484 - t710;
t1080 = -t835 + t1490;
t494 = t1080 * t934;
t358 = t494 * t1461;
t496 = t1080 * t936;
t1458 = 0.2e1 * t496;
t359 = t460 * t1458;
t1190 = t358 + t359;
t1141 = t900 * t1248 + t932 * t1250;
t1262 = t900 * t907;
t1112 = rSges(7,1) * t1262;
t840 = t934 * t1112;
t1079 = t840 + t1141;
t1263 = t900 * t905;
t1110 = rSges(7,2) * t1263;
t985 = t1110 + t1341;
t519 = (t1032 - t985) * t934 + t1079;
t1454 = 0.2e1 * t519;
t1139 = rSges(7,3) * t1249 + t936 * t1110;
t1251 = t901 * t932;
t555 = (-t1251 + (-t902 - t1344) * t900) * t936 + t1139;
t850 = t936 * t1032;
t518 = -t850 + t555;
t1455 = -0.2e1 * t518;
t1261 = t900 * t929;
t1111 = rSges(6,2) * t1261;
t1137 = rSges(6,3) * t1249 + t936 * t1111;
t864 = qJ(5) * t1249;
t594 = t864 + (-pkin(4) - t1345) * t1258 + t1137;
t542 = -t850 + t594;
t1260 = t900 * t930;
t1113 = rSges(6,1) * t1260;
t858 = t934 * t1113;
t872 = pkin(4) * t1259;
t1138 = t858 + t872;
t970 = -t1334 * t901 - t1111;
t543 = (t1032 + t970) * t934 + t1138;
t806 = t834 * t936;
t699 = -t850 - t806;
t1088 = (-t1454 * t495 + t1455 * t493 + t1190) * t1439 + (-0.2e1 * t542 * t615 - 0.2e1 * t543 * t617 + t1187) * t1441 + (0.2e1 * (-t1524 * t936 - t699 * t934) * t834 + t1176) * t1442;
t1452 = -0.2e1 * t555;
t1495 = t934 * t985;
t554 = t1079 - t1495;
t1453 = 0.2e1 * t554;
t593 = t934 * t970 + t1138;
t804 = t834 * t934;
t1089 = (t1452 * t466 - t1453 * t468 + t1190) * t1439 + (-0.2e1 * t550 * t594 - 0.2e1 * t552 * t593 + t1187) * t1441 + (0.2e1 * t1524 * t806 - 0.2e1 * t696 * t804 + t1176) * t1442;
t1511 = t1088 - t1089;
t1122 = -0.2e1 * t1259;
t1117 = 0.2e1 * t1249;
t1118 = 0.2e1 * t1250;
t1179 = t498 * t1117 + t499 * t1118;
t1185 = t460 * t1117 + t461 * t1118;
t1095 = t493 * t1258;
t480 = -0.2e1 * t1095;
t1093 = t615 * t1258;
t565 = -0.2e1 * t1093;
t1196 = (-t1122 * t495 + t1185 + t480) * t1439 + (-t1122 * t617 + t1179 + t565) * t1441;
t1202 = (0.2e1 * t1095 + t480) * t1439 + (0.2e1 * t1093 + t565) * t1441;
t1510 = t1196 - t1202;
t1096 = t466 * t1258;
t446 = -0.2e1 * t1096;
t1094 = t550 * t1258;
t527 = -0.2e1 * t1094;
t1201 = (-t1122 * t468 + t1185 + t446) * t1439 + (-t1122 * t552 + t1179 + t527) * t1441;
t1203 = (0.2e1 * t1096 + t446) * t1439 + (0.2e1 * t1094 + t527) * t1441;
t1509 = t1201 - t1203;
t1120 = 0.2e1 * t1258;
t1121 = 0.2e1 * t1259;
t1447 = -0.2e1 * t901;
t1030 = qJ(5) * t1250 - t872;
t1154 = t934 * t1030 + t936 * (-pkin(4) * t1258 + t864);
t1492 = t934 * (-t858 + (t1111 + t1343) * t934) + t936 * (-t1113 * t936 + t1137);
t436 = t1154 + t1492;
t1082 = t618 * t1120 + t616 * t1121 + t436 * t1447;
t661 = -t840 + t1495;
t662 = -t1112 * t936 + t1139;
t1476 = (-t864 + t662 + (-t1251 + t1483) * t936) * t936 + (-t1030 - t1141 + t661) * t934;
t338 = t1154 + t1476;
t1086 = t496 * t1120 + t494 * t1121 + t338 * t1447;
t526 = t901 * t541;
t528 = t552 * t1117;
t1177 = t526 - t528;
t445 = t901 * t458;
t447 = t468 * t1117;
t1184 = t445 - t447;
t1500 = 0.2e1 * t900;
t1239 = t931 * t936;
t1359 = pkin(1) - t904;
t903 = t934 * t931;
t924 = t936 * pkin(7);
t1161 = -t934 * (t1359 * t934 - t1239 - t924) + t936 * (-t934 * pkin(7) - t1359 * t936 - t903);
t1040 = -t934 * (t934 * t904 + t1140 + t1239) + t1161 + t936 * (-t896 + t903 + (t860 - t904) * t936);
t1153 = t1134 * t835;
t583 = rSges(7,3) * t1258 + t1022;
t315 = t1153 + (t583 + t1034 + (-t1064 - t1310) * t936) * t936 + (t581 - (t1360 + t1484) * t934 - t1035) * t934;
t233 = t315 + t1040;
t230 = t233 * t1500;
t406 = t934 * (rSges(6,3) * t1259 - t1487) + t1153 + t936 * (rSges(6,3) * t1258 + t1025);
t312 = t406 + t1040;
t307 = t312 * t1500;
t1332 = (t307 + t1082 + t1177) * t1441 + (t230 + t1086 + t1184) * t1439;
t1039 = 0.2e1 * t233 + 0.2e1 * t315;
t1119 = -0.2e1 * t1250;
t1175 = -t617 * t1117 + t615 * t1119;
t1180 = -t495 * t1117 + t493 * t1119;
t822 = t1134 * t900;
t821 = 0.2e1 * t822;
t1333 = ((t312 + t406) * t821 + t1175 + t1177) * t1441 + (t1039 * t822 + t1180 + t1184) * t1439;
t1508 = t1332 - t1333;
t1507 = (t1551 * t936 + t1552 * t934) * t901 + (t1549 * t936 - t1550 * t934) * t900;
t1444 = m(3) / 0.4e1;
t1347 = rSges(4,1) * t908;
t1060 = t904 + t1347;
t1136 = rSges(4,2) * t1246 + t936 * rSges(4,3);
t685 = -t1060 * t934 + t1136 - t1239;
t1245 = t906 * t936;
t1059 = -rSges(4,2) * t1245 + t934 * rSges(4,3);
t686 = t1060 * t936 + t1059 - t903;
t1348 = rSges(3,1) * t935;
t1065 = pkin(1) + t1348;
t1135 = rSges(3,2) * t1238 + t936 * rSges(3,3);
t733 = -t1065 * t934 + t1135 + t924;
t1237 = t933 * t936;
t895 = rSges(3,2) * t1237;
t734 = -t895 + t1065 * t936 + (rSges(3,3) + pkin(7)) * t934;
t880 = rSges(3,1) * t933 + rSges(3,2) * t935;
t848 = t880 * t934;
t849 = t880 * t936;
t1324 = Icges(4,4) * t906;
t852 = Icges(4,2) * t908 + t1324;
t855 = Icges(4,1) * t908 - t1324;
t1325 = Icges(3,4) * t933;
t876 = Icges(3,2) * t935 + t1325;
t879 = Icges(3,1) * t935 - t1325;
t1505 = (t876 / 0.2e1 - t879 / 0.2e1) * t933 - (t855 / 0.2e1 - t852 / 0.2e1) * t906 - 0.4e1 * t1442 * (t1524 * t633 + t634 * t699) - 0.4e1 * t1443 * (-t1493 * t686 + t1494 * t685) - 0.4e1 * t1444 * (t733 * t848 - t734 * t849);
t1499 = m(6) + m(7);
t1489 = t934 * t804 + t936 * t806;
t1486 = t1541 * t934;
t1485 = t1541 * t936;
t898 = Icges(4,4) * t908;
t853 = -Icges(4,2) * t906 + t898;
t854 = Icges(4,1) * t906 + t898;
t919 = Icges(3,4) * t935;
t877 = -Icges(3,2) * t933 + t919;
t878 = Icges(3,1) * t933 + t919;
t591 = t934 * t748 + t936 * (rSges(5,1) * t1249 + t1058);
t1482 = t1134 * t836 * t834 - t1489 * t591;
t1172 = -Icges(7,2) * t789 - t579 - t755;
t1174 = -Icges(7,1) * t788 - t575 - t756;
t623 = -Icges(7,5) * t788 - Icges(7,6) * t789;
t264 = -t1172 * t788 + t1174 * t789 + t1259 * t623;
t1171 = -Icges(7,2) * t791 + t580 + t757;
t1173 = Icges(7,1) * t790 - t1322 - t577;
t624 = Icges(7,5) * t790 - Icges(7,6) * t791;
t265 = -t1171 * t788 + t1173 * t789 + t1259 * t624;
t141 = -t264 * t936 + t265 * t934;
t266 = t1172 * t790 + t1174 * t791 + t1258 * t623;
t267 = t1171 * t790 + t1173 * t791 + t1258 * t624;
t142 = -t266 * t936 + t267 * t934;
t1204 = t141 * t1422 + t142 * t1424;
t1192 = ((t554 * t936 + t555 * t934) * t1500 + t1185) * t1439 + ((t593 * t936 + t594 * t934) * t1500 + t1179) * t1441;
t1195 = ((t518 * t934 + t519 * t936) * t1500 + t1185) * t1439 + ((t542 * t934 + t543 * t936) * t1500 + t1179) * t1441;
t115 = t1500 * t315 + t1086 + t1180;
t186 = t1500 * t406 + t1082 + t1175;
t1205 = t115 * t1439 + t1441 * t186;
t1028 = t312 * t436 - t550 * t616 - t552 * t618;
t1029 = t233 * t338 - t466 * t494 - t468 * t496;
t1083 = (t934 * t554 - t555 * t936) * t1535 + (t934 * t593 - t594 * t936) * t1534 + t1489 * t1533;
t292 = -t624 * t901 + (-t1171 * t905 + t1173 * t907) * t900;
t1305 = t292 * t934;
t291 = -t623 * t901 + (-t1172 * t905 + t1174 * t907) * t900;
t1306 = t291 * t936;
t1167 = t707 + t744;
t1168 = -t705 + t745;
t329 = -t1167 * t788 + t1168 * t789 + t1259 * t743;
t330 = t1167 * t790 + t1168 * t791 + t1258 * t743;
t1045 = -t1306 / 0.4e1 + t1305 / 0.4e1 + t330 * t1537 + t329 * t1536;
t1042 = (-t518 * t936 + t934 * t519) * t1535 + (-t542 * t936 + t934 * t543) * t1534 + (-t699 * t936 + t1226) * t1533 + m(4) * (t1493 * t936 + t1225) / 0.2e1;
t1217 = t936 * t1557;
t1235 = t934 * t60;
t1472 = t1217 / 0.4e1 - t1235 / 0.4e1 + t1557 * t1536 + t60 * t1537;
t814 = Icges(3,5) * t934 + t879 * t936;
t1142 = -t876 * t936 + t814;
t812 = Icges(3,6) * t934 + t877 * t936;
t1144 = -t878 * t936 - t812;
t786 = Icges(4,5) * t934 + t855 * t936;
t1147 = -t852 * t936 + t786;
t784 = Icges(4,6) * t934 + t853 * t936;
t1149 = -t854 * t936 - t784;
t1471 = -t1142 * t1238 + t1144 * t1220 - t1147 * t1246 + t1149 * t1243;
t893 = Icges(3,4) * t1238;
t813 = Icges(3,1) * t1220 - Icges(3,5) * t936 - t893;
t1143 = -Icges(3,2) * t1220 + t813 - t893;
t811 = Icges(3,4) * t1220 - Icges(3,2) * t1238 - Icges(3,6) * t936;
t1145 = t878 * t934 + t811;
t886 = Icges(4,4) * t1246;
t785 = Icges(4,1) * t1243 - Icges(4,5) * t936 - t886;
t1148 = -Icges(4,2) * t1243 + t785 - t886;
t783 = Icges(4,4) * t1243 - Icges(4,2) * t1246 - Icges(4,6) * t936;
t1150 = t854 * t934 + t783;
t1470 = t1143 * t933 + t1145 * t935 + t1148 * t906 + t1150 * t908;
t717 = Icges(6,6) * t900 + t1015 * t901;
t719 = Icges(6,5) * t900 + t1017 * t901;
t942 = -t706 * t1263 / 0.2e1 + t708 * t1262 / 0.2e1 - t717 * t1261 / 0.2e1 + t719 * t1260 / 0.2e1 + t829 * t1539 + (t703 + t1554) * t1538 + (t1277 - t1548) * t1498 + (t1278 + t704 + t1542) * t1427;
t999 = t936 * t581 - t583 * t934;
t339 = t999 * t901 + (t661 * t936 - t662 * t934) * t900;
t1467 = 0.2e1 * t339;
t383 = (t709 * t934 + t661) * t901 + (t710 * t934 - t581) * t900;
t1466 = 0.2e1 * t383;
t384 = (-t709 * t936 - t662) * t901 + (-t710 * t936 + t583) * t900;
t1465 = -0.2e1 * t384;
t433 = t999 * t900;
t1463 = 0.2e1 * t433;
t631 = -rSges(7,1) * t788 - rSges(7,2) * t789;
t632 = rSges(7,1) * t790 - rSges(7,2) * t791;
t996 = t631 * t936 - t632 * t934;
t456 = t996 * t900;
t1462 = 0.2e1 * t456;
t475 = t1258 * t709 + t901 * t583;
t1460 = -0.2e1 * t475;
t483 = t934 * t631 + t632 * t936;
t1459 = 0.4e1 * t483;
t746 = (-rSges(7,1) * t905 - rSges(7,2) * t907) * t900;
t502 = t1259 * t746 + t631 * t901;
t1457 = 0.2e1 * t502;
t503 = -t1258 * t746 - t901 * t632;
t1456 = -0.2e1 * t503;
t1451 = -0.2e1 * t631;
t1450 = -0.2e1 * t632;
t1449 = 0.4e1 * t822;
t1440 = m(7) / 0.2e1;
t1087 = t1458 * t1547 + t494 * t1460 + t338 * t1463;
t156 = t233 * t1467;
t297 = t468 * t1466;
t298 = t466 * t1465;
t1436 = m(7) * (-t297 + t298 + t156 + t1087);
t39 = t1465 * t493 - t1466 * t495 + t1467 * t315 + t1087;
t1434 = m(7) * t39;
t1432 = m(7) * (t483 * t1039 + 0.2e1 * ((t468 + t495) * t936 + (t466 + t493) * t934) * t746);
t1183 = t1117 * t1547 + t475 * t1119;
t1429 = m(7) * (t339 * t1447 + (t383 * t936 + t384 * t934 + t433) * t1500 + t1183);
t1425 = -t934 / 0.2e1;
t1414 = 0.4e1 * m(5) * (t633 * t804 - t634 * t806);
t1191 = t384 * t1461 + t460 * t1466;
t1391 = m(7) * (t1454 * t1547 + t1455 * t475 + t1191);
t1390 = 0.4e1 * m(7) * (t1547 * t383 + t339 * t433 - t384 * t475);
t1389 = m(7) * (t1452 * t475 + t1453 * t1547 + t1191);
t341 = t1122 * t1547 + t1258 * t1460;
t1384 = m(7) * ((t1547 * t934 + t475 * t936) * t1500 + t341);
t1124 = t746 * t1446;
t1297 = t461 * t934;
t1186 = t460 * t1124 - 0.2e1 * t746 * t1297;
t1383 = m(7) * (t1450 * t466 - t1451 * t468 + t1186);
t1382 = m(7) * (t1450 * t493 - t1451 * t495 + t1186);
t1293 = t475 * t934;
t1125 = 0.2e1 * t1293;
t351 = t1445 * t1547 - 0.2e1 * t1293;
t1378 = m(7) * (t1446 * t1547 + t1125 + t351);
t1376 = (t383 * t934 - t384 * t936) * t1501;
t1374 = m(7) * (t1463 * t822 + t1183);
t1373 = m(7) * t341;
t1370 = m(7) * t351;
t1367 = m(7) * (-t1037 * t746 * t900 + t1447 * t483);
t1364 = m(7) * t996 * t1500;
t1363 = t483 * t1501;
t1357 = m(5) * qJD(2);
t1356 = m(5) * qJD(4);
t1354 = m(6) * qJD(2);
t1353 = m(6) * qJD(4);
t1351 = m(7) * qJD(2);
t1350 = m(7) * qJD(4);
t1349 = m(7) * qJD(6);
t1107 = -t1376 / 0.4e1;
t251 = t1374 / 0.4e1;
t394 = t1367 / 0.4e1;
t54 = t394 + t251 - t1429 / 0.4e1;
t1331 = qJD(3) * t1107 + t54 * qJD(5);
t1126 = 0.4e1 * t901;
t648 = (-0.1e1 + t1134) * t900 * t1126;
t1330 = t54 * qJD(6) + t1499 * ((-0.2e1 * t822 + t821) * t1498 - t648 / 0.4e1) * qJD(5);
t1115 = t1441 + t1439;
t501 = t1115 * t648;
t95 = t1429 / 0.4e1;
t53 = t394 + t95 - t1374 / 0.4e1;
t1329 = t501 * qJD(5) + t53 * qJD(6);
t1308 = t273 * t936;
t1307 = t274 * t934;
t1302 = t368 * t934;
t388 = t1040 + t591;
t1300 = t388 * t1489;
t1271 = t783 * t906;
t1269 = t811 * t933;
t1242 = t908 * t936;
t1219 = t935 * t936;
t1106 = t1376 / 0.4e1;
t294 = (-m(6) * t616 - m(7) * t494) * t936 + (m(6) * t618 + m(7) * t496) * t934;
t1194 = t294 * qJD(4) + qJD(6) * t1106;
t1193 = t1131 * t1106;
t781 = Icges(4,5) * t1243 - Icges(4,6) * t1246 - Icges(4,3) * t936;
t1166 = -t785 * t1242 - t934 * t781;
t1011 = Icges(4,5) * t908 - Icges(4,6) * t906;
t782 = Icges(4,3) * t934 + t1011 * t936;
t1165 = t786 * t1242 + t934 * t782;
t809 = Icges(3,5) * t1220 - Icges(3,6) * t1238 - Icges(3,3) * t936;
t1156 = -t813 * t1219 - t934 * t809;
t1013 = Icges(3,5) * t935 - Icges(3,6) * t933;
t810 = Icges(3,3) * t934 + t1013 * t936;
t1155 = t814 * t1219 + t934 * t810;
t509 = (-m(7) / 0.2e1 - m(6) / 0.2e1) * t821;
t1133 = t509 * qJD(1);
t1129 = 0.4e1 * t746;
t1127 = 0.4e1 * t900;
t1004 = t369 * t936 - t1302;
t181 = t1004 * t900 - t435 * t901;
t950 = t900 * t980 + t1287;
t252 = t657 * t788 - t659 * t789 + t934 * t950;
t949 = t900 * t979 + t1286;
t253 = t658 * t788 - t660 * t789 + t934 * t949;
t45 = (t1006 - t310) * t901 + (t252 * t934 + t253 * t936 + t408) * t900;
t254 = -t790 * t657 - t791 * t659 + t936 * t950;
t255 = -t790 * t658 - t791 * t660 + t936 * t949;
t46 = (t1005 - t311) * t901 + (t254 * t934 + t255 * t936 + t410) * t900;
t63 = (t1004 - t322) * t901 + (t273 * t934 + t274 * t936 + t435) * t900;
t14 = t1390 / 0.4e1 + (t1217 / 0.2e1 - t1235 / 0.2e1 - t63 / 0.2e1) * t901 + (t46 * t1421 + t45 * t1424 + t181 / 0.2e1) * t900;
t55 = t251 + t95 - t1367 / 0.4e1;
t1114 = qJD(3) * t1106 + t55 * qJD(5) + t14 * qJD(6);
t1105 = t1432 / 0.4e1 + t1204;
t1092 = t1349 / 0.2e1;
t1085 = t1124 * t1547 + t746 * t1125 + t483 * t1463;
t1077 = t1259 / 0.2e1;
t1074 = t1258 / 0.2e1;
t1063 = rSges(4,2) * t906 - t1347 - t923;
t711 = t786 * t1243;
t1050 = t782 * t936 - t711;
t750 = t814 * t1220;
t1048 = t810 * t936 - t750;
t1047 = t784 * t906 - t781;
t1046 = t812 * t933 - t809;
t1036 = t1134 * t1362;
t1031 = -t923 - t1361;
t1027 = -t1300 + t836 * t1116 / 0.2e1 - t696 * t1123 / 0.2e1;
t1009 = Icges(5,5) * t900 + Icges(5,6) * t901;
t1003 = t1229 + t1294;
t1002 = t1291 + t1292;
t988 = t1031 - t835;
t987 = t1031 - t836;
t986 = -m(5) * (t633 * t936 + t1281) - m(4) * (t685 * t936 + t686 * t934);
t124 = -t252 * t936 + t253 * t934;
t125 = -t254 * t936 + t255 * t934;
t689 = t716 * t934;
t690 = t716 * t936;
t691 = t718 * t934;
t692 = t718 * t936;
t798 = t1009 * t934;
t799 = t936 * t1009;
t983 = (t125 + (-t825 * t690 - t826 * t692) * t934 - t927 * t799 + (t825 * t689 + t826 * t691 + t934 * t798 + t1507) * t936) * t1424 + (t124 - (t689 * t823 - t691 * t824) * t936 - t928 * t798 + (t823 * t690 - t824 * t692 + t936 * t799 + t1507) * t934) * t1422;
t974 = -t721 + t988;
t972 = t927 * (-t1032 + t1362) + t936 * (pkin(2) * t1237 - t850) - t1036;
t968 = t988 + t1490;
t966 = t315 * t338 - t493 * t494 - t495 * t496;
t965 = t406 * t436 - t615 * t616 - t617 * t618;
t963 = t1472 + t1556;
t960 = t972 + t1154;
t959 = t125 * t1074 + t124 * t1077 + t45 * t1422 + t46 * t1424 + (t1307 - t1308) * t1427 + (t368 * t936 + t369 * t934) * t1538 - t1204 + t1523 * t901;
t952 = t1076 * t1522 + t1562;
t100 = -t330 * t901 + (t266 * t934 + t267 * t936) * t900;
t99 = -t329 * t901 + (t264 * t934 + t265 * t936) * t900;
t945 = -t1390 / 0.4e1 + t141 * t1077 + t142 * t1074 + t181 * t1539 - t45 * t1259 / 0.2e1 - t46 * t1258 / 0.2e1 + t63 * t1498 + t100 * t1424 + t99 * t1422 + (-t1235 + t1217 + t1305 - t1306) * t1427;
t941 = t952 + t963 - t1045;
t940 = t1078 * t1522 + t1045 - t1562 + t963;
t939 = t1045 - t1472 + t1556 + t952;
t938 = t1307 / 0.2e1 - t1308 / 0.2e1 + (t825 * t717 + t826 * t719 + t934 * t828 + t311 + t1520 * t936 + t1550 * t901 + (t690 * t929 - t692 * t930 + t1552) * t900) * t1424 + (-t717 * t823 + t719 * t824 - t1268 + t310 + t1520 * t934 + t1549 * t901 + (t689 * t929 - t691 * t930 - t1551) * t900) * t1422 - t944;
t937 = -t1302 / 0.2e1 - t942 + t1519 * t1425 + (t368 + t1519) * t1424;
t882 = -rSges(3,2) * t933 + t1348;
t779 = t1063 * t936;
t777 = t1063 * t934;
t697 = t987 * t936;
t695 = t987 * t934;
t553 = t974 * t936;
t551 = t974 * t934;
t534 = -t1237 * t812 + t1155;
t533 = -t1237 * t811 - t1156;
t532 = -t1238 * t812 - t1048;
t508 = (-t1115 + t1499 / 0.4e1) * t821;
t507 = -t1245 * t784 + t1165;
t506 = -t1245 * t783 - t1166;
t505 = -t1246 * t784 - t1050;
t476 = -t1363 / 0.4e1;
t470 = t972 - t1489;
t469 = t968 * t936;
t467 = t968 * t934;
t451 = -t1364 / 0.4e1;
t413 = -t533 * t936 + t534 * t934;
t412 = -(-t934 * (-t813 * t935 + t1269) - t809 * t936) * t936 + t532 * t934;
t396 = 0.4e1 * t1482;
t393 = -t506 * t936 + t507 * t934;
t392 = -(-t934 * (-t785 * t908 + t1271) - t781 * t936) * t936 + t505 * t934;
t387 = t960 + t1492;
t386 = 0.4e1 * t498 * t936 + 0.4e1 * t499 * t934;
t385 = -t1254 + (-t1167 * t905 + t1168 * t907) * t900;
t372 = (-t498 * t934 + t499 * t936) * t1127;
t350 = t1370 / 0.4e1;
t340 = 0.4e1 * t460 * t936 + 0.4e1 * t1297;
t337 = t1373 / 0.4e1;
t328 = (-t460 * t934 + t461 * t936) * t1127;
t306 = t960 + t1476;
t305 = t406 * t1449 + (-t1282 - t1283) * t1126;
t304 = 0.4e1 * t498 * t593 + 0.4e1 * t499 * t594;
t281 = -0.4e1 * t460 * t631 + 0.4e1 * t461 * t632;
t279 = 0.4e1 * t498 * t543 + 0.4e1 * t499 * t542;
t276 = -0.4e1 * t1300 + 0.4e1 * (t1226 + t1280) * t836;
t269 = 0.4e1 * t460 * t554 + 0.4e1 * t461 * t555;
t256 = 0.4e1 * t460 * t519 + 0.4e1 * t461 * t518;
t243 = qJD(6) * t1107;
t224 = (t532 - t750 + (t810 + t1269) * t936 + t1156) * t936 + t1155 * t934;
t223 = (t1046 * t936 - t1155 + t534) * t936 + (t1046 * t934 + t1048 + t533) * t934;
t221 = t1378 / 0.4e1;
t218 = t1439 * t328 + t1441 * t372;
t215 = t312 * t1449 + (-t1227 - t1288) * t1126;
t196 = 0.4e1 * t965;
t193 = -t1002 * t1126 + t1449 * t315;
t190 = t281 * t1439 - t1561;
t183 = (t505 - t711 + (t782 + t1271) * t936 + t1166) * t936 + t1165 * t934;
t182 = (t1047 * t936 - t1165 + t507) * t936 + (t1047 * t934 + t1050 + t506) * t934;
t178 = t1382 / 0.4e1;
t168 = t1383 / 0.4e1;
t166 = t1384 / 0.4e1;
t165 = t1439 * t340 + t1441 * t386 - t986;
t164 = t1002 * t1129 + t1459 * t315;
t152 = 0.4e1 * t1028;
t149 = -t1003 * t1126 + t1449 * t233;
t131 = t350 + t221 + t1363 / 0.4e1;
t130 = t476 + t350 - t1378 / 0.4e1;
t129 = t476 + t221 - t1370 / 0.4e1;
t119 = t1003 * t1129 + t1459 * t233;
t118 = t1439 * t193 + t1441 * t305;
t116 = 0.4e1 * t966;
t112 = t337 + t166 + t1364 / 0.4e1;
t111 = t451 + t337 - t1384 / 0.4e1;
t110 = t451 + t166 - t1373 / 0.4e1;
t108 = t1389 / 0.4e1;
t105 = t1084 + t1188 - t1083;
t104 = t1083 - t1512;
t103 = t1083 + t1512;
t101 = t1391 / 0.4e1;
t94 = 0.4e1 * t1029;
t91 = t1439 * t149 + t1441 * t215;
t79 = t1414 / 0.4e1 + t942 + t269 * t1439 + t304 * t1441;
t66 = t1043 + t1044 - t1042;
t65 = t1042 + t1513;
t64 = t1042 - t1513;
t40 = (t853 / 0.2e1 + t854 / 0.2e1) * t908 + (t877 / 0.2e1 + t878 / 0.2e1) * t935 + t942 + t256 * t1439 + t279 * t1441 - t1505;
t38 = t1434 / 0.4e1;
t34 = t1436 / 0.4e1;
t33 = t1439 * t164 + t1204;
t30 = t119 * t1439 + t1204;
t29 = t1196 + t1202 - t1192;
t28 = t1192 + t1510;
t27 = t1192 - t1510;
t26 = t1201 + t1203 - t1195;
t25 = t1195 + t1509;
t24 = t1195 - t1509;
t23 = t116 * t1439 + t1441 * t196 + t1442 * t396 + t983;
t22 = t23 * qJD(4);
t21 = t1205 - t1508;
t20 = t1332 + t1333 - t1205;
t19 = t1205 + t1508;
t17 = t1439 * t94 + t1441 * t152 + t1442 * t276 + t983;
t16 = t38 - t1436 / 0.4e1 + t1105;
t15 = t34 - t1434 / 0.4e1 + t1105;
t11 = t34 + t38 - t1432 / 0.4e1 + t959;
t10 = (t413 / 0.2e1 + t393 / 0.2e1 - t183 / 0.2e1 - t224 / 0.2e1) * t936 + (t412 / 0.2e1 + t392 / 0.2e1 + t182 / 0.2e1 + t223 / 0.2e1) * t934 + t944;
t9 = t108 + t178 + t939;
t8 = t940 - t1389 / 0.4e1 + t178;
t7 = t941 + t108 - t1382 / 0.4e1;
t6 = t168 + t101 + t939;
t5 = t940 + t168 - t1391 / 0.4e1;
t4 = t941 - t1383 / 0.4e1 + t101;
t3 = t944 - t1511;
t2 = t944 + t1511;
t1 = t938 + t1088 + t1089;
t12 = [t40 * qJD(2) + t165 * qJD(3) + t79 * qJD(4) + t218 * qJD(5) + t190 * qJD(6), t40 * qJD(1) + t65 * qJD(3) + t1 * qJD(4) + t25 * qJD(5) + t6 * qJD(6) + (t460 * t469 + t461 * t467 - t466 * t518 - t468 * t519) * t1351 + (t498 * t553 + t499 * t551 - t542 * t550 - t543 * t552) * t1354 + (t633 * t697 + t634 * t695 + (-t696 - t699) * t1524) * t1357 + ((t1013 + t1011) * (t928 / 0.2e1 + t927 / 0.2e1) + t938 + (t1142 * t935 + t1144 * t933 + t1147 * t908 + t1149 * t906) * t1424 + (t183 + t224) * t1421 + (t412 + t392 + t182 + t223) * t1425 + (t1143 * t935 - t1145 * t933 + t1148 * t908 - t1150 * t906 + t393 + t413) * t1422 + (t685 * t779 + t686 * t777) * m(4) + ((-t733 * t936 - t734 * t934) * t882 + (-t848 * t936 + t849 * t934) * t880) * m(3)) * qJD(2), qJD(1) * t165 + qJD(2) * t65 + qJD(4) * t103 + qJD(5) * t508 + qJD(6) * t130, t79 * qJD(1) + t1 * qJD(2) + t103 * qJD(3) + t938 * qJD(4) + t28 * qJD(5) + t9 * qJD(6) + (-t493 * t555 - t495 * t554 + t358 / 0.2e1 + t359 / 0.2e1) * t1350 + (-t593 * t617 - t594 * t615 + t415 / 0.2e1 + t416 / 0.2e1) * t1353 + (t556 / 0.2e1 + t557 / 0.2e1 + (-t804 * t936 + t806 * t934) * t834) * t1356, qJD(1) * t218 + qJD(2) * t25 + qJD(3) * t508 + qJD(4) * t28 + qJD(6) * t111, t190 * qJD(1) + t6 * qJD(2) + t130 * qJD(3) + t9 * qJD(4) + t111 * qJD(5) + (-t1547 * t631 + t460 * t502 + t461 * t503 - t475 * t632) * t1349 + (-t385 * t901 + ((t330 / 0.2e1 + t292 / 0.2e1) * t936 + (t291 / 0.2e1 + t329 / 0.2e1) * t934) * t900) * qJD(6); (t937 - (t853 + t854) * t908 / 0.2e1 - (t877 + t878) * t935 / 0.2e1 + t1505) * qJD(1) + t10 * qJD(2) + t66 * qJD(3) + t3 * qJD(4) + t26 * qJD(5) + t5 * qJD(6) + t256 * t1545 + t279 * t1544, t10 * qJD(1) + (0.4e1 * ((t934 * (rSges(3,1) * t1220 - t1135) + t936 * (rSges(3,1) * t1219 + t934 * rSges(3,3) - t895)) * (-t934 * t848 - t849 * t936) + t1134 * t882 * t880) * t1444 + (t233 * t306 - t466 * t467 - t468 * t469) * m(7) + (t312 * t387 - t550 * t551 - t552 * t553) * m(6) + t983 + ((t1470 * t936 - t1486 * t934 + t1471) * t936 + t1485 * t927) * t1424 + (((t1470 - t1485) * t936 + t1471) * t934 + t1486 * t928) * t1422 + m(4) * (-t1493 * t779 - t1494 * t777 + (t934 * (rSges(4,1) * t1243 - t1136) + t936 * (rSges(4,1) * t1242 + t1059) + t1161) * (-t1134 * t856 - t1036)) + m(5) * (-t1524 * t695 + t388 * t470 - t696 * t697)) * qJD(2) + t17 * qJD(4) + t91 * qJD(5) + t30 * qJD(6), qJD(1) * t66 + t243, t3 * qJD(1) + t17 * qJD(2) + t983 * qJD(4) + t20 * qJD(5) + t15 * qJD(6) + (-t116 / 0.4e1 + t966 + t1029) * t1350 + (-t196 / 0.4e1 + t965 + t1028) * t1353 + (-t396 / 0.4e1 + t1027 + t1482) * t1356, qJD(1) * t26 + qJD(2) * t91 + qJD(4) * t20 + t1330, t5 * qJD(1) + t30 * qJD(2) + t15 * qJD(4) + (t945 + (t1456 * t466 - t1457 * t468 + t1462 * t233 + t1085) * t1440) * qJD(6) + t1331; t986 * qJD(1) + t64 * qJD(2) + t104 * qJD(4) + t509 * qJD(5) + t129 * qJD(6) + t386 * t1544 + t1545 * t340, t64 * qJD(1) + ((-m(4) * t777 - m(5) * t695 - m(6) * t551 - m(7) * t467) * t936 + (m(4) * t779 + m(5) * t697 + m(6) * t553 + m(7) * t469) * t934) * qJD(2) + t1194, 0, qJD(1) * t104 + qJD(2) * t294 + t1194, t1133, t129 * qJD(1) + 0.2e1 * (t502 * t934 - t503 * t936) * t1092 + t1193; (t937 - t1414 / 0.4e1) * qJD(1) + t2 * qJD(2) + t105 * qJD(3) + t944 * qJD(4) + t29 * qJD(5) + t8 * qJD(6) + t269 * t1545 + t304 * t1544, t2 * qJD(1) + t983 * qJD(2) + t22 + t21 * qJD(5) + t16 * qJD(6) + (-t94 / 0.4e1 + t306 * t315 - t467 * t493 - t469 * t495 + t1029) * t1351 + (-t152 / 0.4e1 + t387 * t406 - t551 * t615 - t553 * t617 + t1028) * t1354 + (-t276 / 0.4e1 + t591 * t470 + (-t695 * t934 - t697 * t936) * t834 + t1027) * t1357, qJD(1) * t105 + t243, qJD(1) * t944 + qJD(2) * t23 + qJD(5) * t118 + qJD(6) * t33 + t22, qJD(1) * t29 + qJD(2) * t21 + qJD(4) * t118 + t1330, t8 * qJD(1) + t16 * qJD(2) + t33 * qJD(4) + (t945 + (t1456 * t493 - t1457 * t495 + t1462 * t315 + t1085) * t1440) * qJD(6) + t1331; (t372 * t1555 + t1560 * t328) * qJD(1) + t24 * qJD(2) - t509 * qJD(3) + t27 * qJD(4) + t110 * qJD(6), t24 * qJD(1) + ((-t901 * t306 + t230 / 0.2e1 + t445 / 0.2e1 - t447 / 0.2e1 - t149 / 0.4e1 + (t467 * t934 + t469 * t936) * t900) * m(7) + (-t901 * t387 + t307 / 0.2e1 + t526 / 0.2e1 - t528 / 0.2e1 - t215 / 0.4e1 + (t551 * t934 + t553 * t936) * t900) * m(6)) * qJD(2) + t19 * qJD(4) + t1329, -t1133, t27 * qJD(1) + t19 * qJD(2) + ((t115 / 0.2e1 - t193 / 0.4e1) * m(7) + (t186 / 0.2e1 - t305 / 0.4e1) * m(6)) * qJD(4) + t1329, t1131 * t501, t110 * qJD(1) + (t456 * t1447 + (t502 * t936 + t503 * t934) * t1500) * t1092 + t1131 * t53; qJD(1) * t1561 + t4 * qJD(2) + t131 * qJD(3) + t7 * qJD(4) + t112 * qJD(5) + t281 * t1545, t4 * qJD(1) + t959 * qJD(2) + t11 * qJD(4) + (t306 * t433 - t467 * t475 + t469 * t1547 + t156 / 0.2e1 - t297 / 0.2e1 + t298 / 0.2e1 - t119 / 0.4e1) * t1351 + t1114, qJD(1) * t131 + t1193, t7 * qJD(1) + t11 * qJD(2) + ((t39 / 0.2e1 - t164 / 0.4e1) * m(7) + t959) * qJD(4) + t1114, qJD(1) * t112 + t1131 * t55 (t901 ^ 2 * t385 / 0.2e1 + (t1547 * t502 + t433 * t456 - t475 * t503) * m(7) + (t100 * t1421 + t99 * t1424 + (t291 * t934 + t292 * t936) * t1427) * t900) * qJD(6) + t1131 * t14;];
Cq  = t12;
