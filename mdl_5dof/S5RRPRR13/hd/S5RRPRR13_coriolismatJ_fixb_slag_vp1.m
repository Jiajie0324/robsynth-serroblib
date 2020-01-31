% Calculate matrix of centrifugal and coriolis load on the joints for
% S5RRPRR13
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d4,d5,theta3]';
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
% Cq [5x5]
%   matrix of coriolis and centrifugal joint torques.
%   Gives coriolis joint torques when multiplied with joint velocities

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 20:34
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S5RRPRR13_coriolismatJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRR13_coriolismatJ_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPRR13_coriolismatJ_fixb_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRPRR13_coriolismatJ_fixb_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRPRR13_coriolismatJ_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RRPRR13_coriolismatJ_fixb_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RRPRR13_coriolismatJ_fixb_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 20:32:11
% EndTime: 2019-12-31 20:33:24
% DurationCPUTime: 56.64s
% Computational Cost: add. (151493->1211), mult. (157048->1714), div. (0->0), fcn. (171337->10), ass. (0->722)
t1265 = 2 * m(6);
t794 = cos(pkin(9));
t777 = t794 * pkin(3) + pkin(2);
t798 = cos(qJ(2));
t1084 = t777 * t798;
t795 = -pkin(7) - qJ(3);
t788 = -pkin(8) + t795;
t796 = sin(qJ(2));
t797 = sin(qJ(1));
t1067 = t797 * t798;
t789 = pkin(9) + qJ(4);
t779 = cos(t789);
t739 = pkin(4) * t779 + t777;
t778 = sin(t789);
t1158 = pkin(4) * t778;
t793 = sin(pkin(9));
t1159 = pkin(3) * t793;
t743 = t1158 + t1159;
t799 = cos(qJ(1));
t908 = -t739 * t1067 + t743 * t799;
t1050 = t799 * t793;
t1075 = t796 * t797;
t980 = pkin(3) * t1050 + t795 * t1075;
t487 = (t788 * t796 + t1084) * t797 + t908 - t980;
t780 = qJ(5) + t789;
t775 = sin(t780);
t776 = cos(t780);
t678 = t1067 * t775 + t776 * t799;
t1052 = t799 * t775;
t679 = t1067 * t776 - t1052;
t1257 = -t679 * rSges(6,1) + t678 * rSges(6,2);
t532 = -rSges(6,3) * t1075 + t1257;
t1021 = -t487 - t532;
t978 = t788 - t795;
t984 = t739 - t777;
t596 = t796 * t984 + t798 * t978;
t572 = t596 * t1075;
t1145 = rSges(6,1) * t776;
t885 = -rSges(6,2) * t775 + t1145;
t653 = -rSges(6,3) * t798 + t796 * t885;
t630 = t653 * t1075;
t340 = t1021 * t798 + t572 + t630;
t1102 = t487 * t798;
t1304 = -t532 * t798 + t630;
t341 = t1304 + t572 - t1102;
t1035 = t340 - t341;
t1312 = t1035 * t1265;
t1311 = -m(5) / 0.4e1;
t931 = t1075 / 0.4e1;
t933 = -t1075 / 0.4e1;
t1310 = t933 + t931;
t1152 = m(6) * qJD(1);
t1308 = -t1152 / 0.4e1;
t1307 = qJD(1) * t1311;
t1074 = t796 * t799;
t872 = Icges(6,5) * t776 - Icges(6,6) * t775;
t647 = -Icges(6,3) * t798 + t796 * t872;
t1125 = Icges(6,4) * t776;
t876 = -Icges(6,2) * t775 + t1125;
t649 = -Icges(6,6) * t798 + t796 * t876;
t1126 = Icges(6,4) * t775;
t879 = Icges(6,1) * t776 - t1126;
t651 = -Icges(6,5) * t798 + t796 * t879;
t680 = -t1052 * t798 + t797 * t776;
t1060 = t798 * t799;
t681 = t1060 * t776 + t797 * t775;
t411 = t1074 * t647 + t680 * t649 + t681 * t651;
t522 = Icges(6,5) * t679 - Icges(6,6) * t678 + Icges(6,3) * t1075;
t667 = Icges(6,4) * t679;
t525 = -Icges(6,2) * t678 + Icges(6,6) * t1075 + t667;
t666 = Icges(6,4) * t678;
t529 = -Icges(6,1) * t679 - Icges(6,5) * t1075 + t666;
t328 = t522 * t1074 + t680 * t525 - t681 * t529;
t524 = Icges(6,5) * t681 + Icges(6,6) * t680 + Icges(6,3) * t1074;
t1127 = Icges(6,4) * t681;
t527 = Icges(6,2) * t680 + Icges(6,6) * t1074 + t1127;
t668 = Icges(6,4) * t680;
t530 = Icges(6,1) * t681 + Icges(6,5) * t1074 + t668;
t329 = t524 * t1074 + t680 * t527 + t681 * t530;
t870 = t797 * t328 + t329 * t799;
t1301 = -t411 * t798 + t796 * t870;
t934 = -t1075 / 0.2e1;
t1306 = t1301 * t934;
t873 = Icges(5,5) * t779 - Icges(5,6) * t778;
t660 = -Icges(5,3) * t798 + t796 * t873;
t1128 = Icges(5,4) * t779;
t877 = -Icges(5,2) * t778 + t1128;
t662 = -Icges(5,6) * t798 + t796 * t877;
t1129 = Icges(5,4) * t778;
t880 = Icges(5,1) * t779 - t1129;
t664 = -Icges(5,5) * t798 + t796 * t880;
t701 = t1067 * t778 + t779 * t799;
t1051 = t799 * t778;
t702 = t1067 * t779 - t1051;
t419 = t1075 * t660 - t662 * t701 + t664 * t702;
t540 = Icges(5,5) * t702 - Icges(5,6) * t701 + Icges(5,3) * t1075;
t687 = Icges(5,4) * t702;
t543 = -Icges(5,2) * t701 + Icges(5,6) * t1075 + t687;
t686 = Icges(5,4) * t701;
t547 = -Icges(5,1) * t702 - Icges(5,5) * t1075 + t686;
t347 = t1075 * t540 - t543 * t701 - t547 * t702;
t703 = -t798 * t1051 + t797 * t779;
t704 = t1060 * t779 + t797 * t778;
t542 = Icges(5,5) * t704 + Icges(5,6) * t703 + Icges(5,3) * t1074;
t1130 = Icges(5,4) * t704;
t545 = Icges(5,2) * t703 + Icges(5,6) * t1074 + t1130;
t688 = Icges(5,4) * t703;
t548 = Icges(5,1) * t704 + Icges(5,5) * t1074 + t688;
t348 = t542 * t1075 - t701 * t545 + t702 * t548;
t869 = t347 * t797 + t348 * t799;
t178 = -t419 * t798 + t796 * t869;
t409 = t1075 * t647 - t649 * t678 + t651 * t679;
t326 = t1075 * t522 - t525 * t678 - t529 * t679;
t327 = t524 * t1075 - t678 * t527 + t679 * t530;
t871 = t326 * t797 + t327 * t799;
t171 = -t409 * t798 + t796 * t871;
t1099 = t540 * t798;
t1295 = t543 * t778 + t547 * t779;
t380 = t1295 * t796 + t1099;
t1101 = t522 * t798;
t1296 = t525 * t775 + t529 * t776;
t366 = t1296 * t796 + t1101;
t1299 = -t328 * t799 + t329 * t797;
t1305 = t1310 * t1299;
t1256 = -t702 * rSges(5,1) + t701 * rSges(5,2);
t550 = -rSges(5,3) * t1075 + t1256;
t1146 = rSges(5,1) * t779;
t888 = -rSges(5,2) * t778 + t1146;
t674 = -rSges(5,3) * t798 + t796 * t888;
t1303 = t674 * t1075 - t550 * t798;
t421 = t1074 * t660 + t703 * t662 + t704 * t664;
t349 = t540 * t1074 + t703 * t543 - t704 * t547;
t350 = t542 * t1074 + t703 * t545 + t704 * t548;
t868 = t797 * t349 + t350 * t799;
t1302 = -t421 * t798 + t796 * t868;
t1300 = -t349 * t799 + t350 * t797;
t924 = t1067 / 0.4e1;
t791 = t797 ^ 2;
t792 = t799 ^ 2;
t977 = t791 + t792;
t1002 = t651 + (-Icges(6,2) * t776 - t1126) * t796;
t1297 = t1002 * t775;
t1250 = 0.2e1 * m(5);
t1222 = m(4) / 0.4e1;
t1221 = m(5) / 0.4e1;
t1219 = m(6) / 0.4e1;
t1200 = t796 / 0.2e1;
t1199 = t797 / 0.2e1;
t1198 = t797 / 0.4e1;
t1197 = -t798 / 0.2e1;
t1196 = -t799 / 0.2e1;
t1195 = -t799 / 0.4e1;
t613 = t649 * t797;
t615 = t651 * t797;
t845 = -t647 * t797 + t1296;
t269 = -t845 * t798 + (t613 * t775 - t615 * t776 + t522) * t796;
t650 = Icges(6,6) * t796 + t798 * t876;
t652 = Icges(6,5) * t796 + t798 * t879;
t1093 = t647 * t798;
t648 = Icges(6,3) * t796 + t798 * t872;
t1087 = t776 * t651;
t1090 = t775 * t649;
t855 = t1087 - t1090;
t840 = t648 - t855;
t811 = t796 * t840 + t1093;
t307 = -t650 * t678 + t652 * t679 + t797 * t811;
t1286 = t269 + t307;
t614 = t649 * t799;
t616 = t651 * t799;
t862 = -t527 * t775 + t530 * t776;
t844 = -t647 * t799 - t862;
t270 = -t844 * t798 + (t614 * t775 - t616 * t776 + t524) * t796;
t308 = t680 * t650 + t681 * t652 + t799 * t811;
t1285 = t270 + t308;
t1283 = -t366 + t409;
t1100 = t524 * t798;
t367 = t796 * t862 - t1100;
t1282 = t367 + t411;
t705 = Icges(3,5) * t1067 - Icges(3,6) * t1075 - Icges(3,3) * t799;
t767 = Icges(3,4) * t1075;
t709 = Icges(3,1) * t1067 - Icges(3,5) * t799 - t767;
t1001 = -t709 * t1060 - t797 * t705;
t707 = Icges(3,4) * t1067 - Icges(3,2) * t1075 - Icges(3,6) * t799;
t1121 = Icges(3,2) * t796;
t785 = Icges(3,4) * t798;
t708 = Icges(3,6) * t797 + (t785 - t1121) * t799;
t1131 = Icges(3,4) * t796;
t749 = Icges(3,1) * t798 - t1131;
t710 = Icges(3,5) * t797 + t749 * t799;
t655 = t710 * t1067;
t745 = Icges(3,5) * t798 - Icges(3,6) * t796;
t706 = Icges(3,3) * t797 + t745 * t799;
t910 = t799 * t706 - t655;
t1281 = -t1074 * t707 - t1075 * t708 - t1001 - t910;
t1136 = rSges(4,3) + qJ(3);
t1160 = pkin(2) * t798;
t1244 = t1136 * t796 + pkin(1) + t1160;
t725 = t1067 * t793 + t794 * t799;
t726 = t1067 * t794 - t1050;
t1255 = -t726 * rSges(4,1) + t725 * rSges(4,2);
t787 = t799 * pkin(6);
t502 = -t1244 * t797 + t1255 + t787;
t727 = -t1050 * t798 + t797 * t794;
t1068 = t797 * t793;
t728 = t1060 * t794 + t1068;
t892 = t728 * rSges(4,1) + t727 * rSges(4,2);
t503 = t797 * pkin(6) + t1244 * t799 + t892;
t959 = 0.2e1 * t1060;
t960 = 0.2e1 * t1067;
t1022 = t502 * t959 + t503 * t960;
t1144 = rSges(5,3) * t796;
t850 = pkin(1) + t1084 + t1144;
t463 = -t797 * t850 + t1256 + t787 + t980;
t761 = t795 * t1074;
t889 = t704 * rSges(5,1) + t703 * rSges(5,2);
t464 = -t761 + (pkin(6) + t1159) * t797 + t850 * t799 + t889;
t1027 = t463 * t959 + t464 * t960;
t1135 = -rSges(6,3) + t788;
t438 = t787 + (t1135 * t796 - pkin(1)) * t797 + t908 + t1257;
t1142 = rSges(6,3) * t796;
t750 = t788 * t1074;
t886 = t681 * rSges(6,1) + t680 * rSges(6,2);
t439 = -t750 + (pkin(6) + t743) * t797 + (t739 * t798 + pkin(1) + t1142) * t799 + t886;
t1030 = t438 * t959 + t439 * t960;
t1005 = t596 + t653;
t1049 = qJ(3) + t795;
t1157 = pkin(2) - t777;
t1252 = t1157 * t796;
t751 = pkin(2) * t796 - qJ(3) * t798;
t999 = t1049 * t798 - t1252 + t751;
t903 = t999 + t1005;
t428 = t903 * t797;
t952 = t428 * t1074;
t418 = -0.2e1 * t952;
t430 = t903 * t799;
t941 = t674 + t999;
t497 = t941 * t797;
t951 = t497 * t1074;
t478 = -0.2e1 * t951;
t499 = t941 * t799;
t1147 = rSges(4,1) * t794;
t891 = -rSges(4,2) * t793 + t1147;
t836 = t891 * t796;
t1273 = t798 * rSges(4,3) - t836;
t993 = t751 - t1273;
t607 = t993 * t797;
t950 = t607 * t1074;
t590 = -0.2e1 * t950;
t609 = t993 * t799;
t963 = -0.2e1 * t1075;
t944 = (-t430 * t963 + t1030 + t418) * t1219 + (-t499 * t963 + t1027 + t478) * t1221 + (-t609 * t963 + t1022 + t590) * t1222;
t946 = (t418 + 0.2e1 * t952) * t1219 + (t478 + 0.2e1 * t951) * t1221 + (t590 + 0.2e1 * t950) * t1222;
t1280 = t944 - t946;
t564 = t680 * rSges(6,1) - t681 * rSges(6,2);
t690 = t703 * pkin(4);
t1006 = -t564 - t690;
t1279 = t1006 * t797;
t964 = 0.4e1 * t798;
t477 = (t1222 + t1221 + t1219) * (-0.1e1 + t977) * t796 * t964;
t1276 = t477 * qJD(3);
t1114 = qJ(3) * t796;
t917 = t1157 * t798;
t1272 = t917 + t1114;
t911 = t984 * t798;
t488 = -t750 + t761 + t799 * t911 + (t743 - t1159) * t797;
t533 = rSges(6,3) * t1074 + t886;
t1020 = t488 + t533;
t1254 = t1020 * t798;
t342 = t1005 * t1074 + t1254;
t962 = -0.2e1 * t1074;
t211 = t341 * t963 + t342 * t962;
t551 = rSges(5,3) * t1074 + t889;
t468 = t1074 * t674 + t798 * t551;
t378 = t1303 * t963 + t468 * t962;
t1042 = t211 * t1219 + t378 * t1221;
t966 = 0.2e1 * t796;
t1133 = ((t1303 * t797 + t468 * t799) * t966 + t378) * t1221 + ((t340 * t797 + t342 * t799) * t966 + t211) * t1219;
t1271 = t1042 - t1133;
t961 = -0.2e1 * t1067;
t1025 = t1303 * t959 + t468 * t961;
t1036 = t341 * t959 + t342 * t961;
t740 = t977 * t796;
t1225 = 0.2e1 * t740;
t509 = t532 * t1074;
t295 = -t509 + (-t1020 * t797 - t487 * t799) * t796;
t859 = -t550 * t799 - t551 * t797;
t425 = t859 * t796;
t1048 = (t1225 * t295 + t1036) * t1219 + (t1225 * t425 + t1025) * t1221;
t1223 = -0.2e1 * t798;
t985 = t796 * rSges(6,2) * t1052 + rSges(6,3) * t1060;
t618 = -t1074 * t1145 + t985;
t1007 = -t596 * t799 + t618;
t617 = t653 * t797;
t1018 = -t1060 * t532 - t617 * t1074;
t1079 = t788 * t798;
t983 = t795 * t1067 + t777 * t1075;
t552 = (-t739 * t796 - t1079) * t797 + t983;
t190 = (t552 * t796 - t1102) * t799 + (-t1007 * t796 - t1254) * t797 + t1018;
t597 = -t796 * t978 + t911;
t654 = t798 * t885 + t1142;
t942 = t653 * t1067 + t654 * t1075 - t798 * t617;
t234 = (t596 * t797 + t552) * t798 + (t597 * t797 - t1021) * t796 + t942;
t1004 = -t597 - t654;
t517 = t796 * t533;
t235 = t517 + (t1004 * t799 + t488) * t796 + (-t1005 * t799 - t1007) * t798;
t1091 = t674 * t797;
t982 = t796 * rSges(5,2) * t1051 + rSges(5,3) * t1060;
t634 = -t1074 * t1146 + t982;
t369 = t859 * t798 + (-t1091 * t799 - t634 * t797) * t796;
t675 = t798 * t888 + t1144;
t399 = (t675 * t797 + t550) * t796;
t400 = (-t674 * t799 - t634) * t798 + (-t675 * t799 + t551) * t796;
t1134 = (t369 * t1223 + (t399 * t799 + t400 * t797 + t425) * t966 + t1025) * t1221 + (t190 * t1223 + (t234 * t799 + t235 * t797 + t295) * t966 + t1036) * t1219;
t1270 = t1048 - t1134;
t563 = -t678 * rSges(6,1) - t679 * rSges(6,2);
t689 = t701 * pkin(4);
t495 = -t563 + t689;
t579 = -rSges(5,1) * t701 - rSges(5,2) * t702;
t580 = rSges(5,1) * t703 - rSges(5,2) * t704;
t685 = (-rSges(6,1) * t775 - rSges(6,2) * t776) * t796;
t898 = t1158 * t796 - t685;
t600 = t898 * t797;
t601 = t898 * t799;
t714 = (-rSges(5,1) * t778 - rSges(5,2) * t779) * t796;
t1269 = (t1006 * t428 - t430 * t495 + t438 * t601 + t439 * t600) * t1265 / 0.4e1 + (-t497 * t580 + t499 * t579 + (-t463 * t799 - t464 * t797) * t714) * t1250 / 0.4e1;
t504 = (t1135 * t798 + (t739 + t885) * t796) * t797;
t505 = (-t1079 + (-t739 - t1145) * t796) * t799 + t985;
t535 = t983 + t1091;
t1078 = t795 * t798;
t536 = (-t1078 + (-t777 - t1146) * t796) * t799 + t982;
t1268 = -(t1303 * t535 + t399 * t463 + t400 * t464 - t468 * t536) * t1250 / 0.4e1 - (t234 * t438 + t235 * t439 + t341 * t504 - t342 * t505) * t1265 / 0.4e1;
t1267 = t428 * t1312 / 0.4e1;
t584 = Icges(4,4) * t726 - Icges(4,2) * t725 + Icges(4,6) * t1075;
t587 = Icges(4,1) * t726 - Icges(4,4) * t725 + Icges(4,5) * t1075;
t857 = -t584 * t725 + t587 * t726;
t682 = (-Icges(6,5) * t775 - Icges(6,6) * t776) * t796;
t1062 = t798 * t682;
t1266 = -t1062 / 0.2e1 - t796 * t1297 / 0.2e1;
t1194 = t799 / 0.2e1;
t1263 = m(6) * t966;
t874 = Icges(4,5) * t794 - Icges(4,6) * t793;
t1260 = t796 * t874;
t1015 = -Icges(6,2) * t679 - t529 - t666;
t1017 = -Icges(6,1) * t678 - t525 - t667;
t557 = -Icges(6,5) * t678 - Icges(6,6) * t679;
t240 = -t1015 * t678 + t1017 * t679 + t1075 * t557;
t1014 = -Icges(6,2) * t681 + t530 + t668;
t1016 = Icges(6,1) * t680 - t1127 - t527;
t558 = Icges(6,5) * t680 - Icges(6,6) * t681;
t241 = -t1014 * t678 + t1016 * t679 + t1075 * t558;
t139 = -t240 * t799 + t241 * t797;
t242 = t1015 * t680 + t1017 * t681 + t1074 * t557;
t243 = t1014 * t680 + t1016 * t681 + t1074 * t558;
t140 = -t242 * t799 + t243 * t797;
t1047 = t139 * t1196 + t140 * t1199;
t1086 = t776 * t652;
t1089 = t775 * t650;
t345 = -t840 * t798 + (t1086 + t647 - t1089) * t796;
t442 = t796 * t855 - t1093;
t867 = -t366 * t797 + t367 * t799;
t1248 = (-t442 * t798 + t796 * t867) * t1200 + ((-t345 + t867) * t798 + (t269 * t797 + t270 * t799 + t442) * t796) * t1197;
t1247 = t345 * t1197 + t442 * t1200;
t858 = t579 * t799 - t580 * t797;
t1031 = (t495 * t799 - t1279) * t1263 / 0.4e1 + t858 * t966 * t1311;
t440 = t797 * t563 + t799 * t564;
t395 = -t797 * t689 + t690 * t799 + t440;
t451 = t797 * t579 + t580 * t799;
t883 = t977 * t966;
t1037 = (t395 * t1223 + (t600 * t797 + t601 * t799) * t966) * t1219 + (t1223 * t451 - t714 * t883) * t1221;
t534 = t563 * t1074;
t433 = -t1075 * t564 + t534;
t469 = t685 * t1075 + t798 * t563;
t470 = -t1074 * t685 - t798 * t564;
t895 = t295 * t433 + t341 * t469 - t342 * t470;
t878 = Icges(4,4) * t794 - Icges(4,2) * t793;
t1246 = -Icges(4,6) * t798 + t796 * t878;
t881 = Icges(4,1) * t794 - Icges(4,4) * t793;
t1245 = -Icges(4,5) * t798 + t796 * t881;
t1081 = t779 * t664;
t1083 = t778 * t662;
t1132 = Icges(3,1) * t796;
t1202 = -t794 / 0.2e1;
t1203 = t793 / 0.2e1;
t1148 = rSges(3,1) * t798;
t918 = pkin(1) + t1148;
t979 = rSges(3,2) * t1075 + t799 * rSges(3,3);
t643 = -t797 * t918 + t787 + t979;
t769 = rSges(3,2) * t1074;
t644 = -t769 + t918 * t799 + (rSges(3,3) + pkin(6)) * t797;
t661 = Icges(5,3) * t796 + t798 * t873;
t752 = rSges(3,1) * t796 + rSges(3,2) * t798;
t735 = t752 * t797;
t737 = t752 * t799;
t1243 = (t661 / 0.2e1 + t648 / 0.2e1 - t785 + t1121 / 0.2e1 - t1132 / 0.2e1 + Icges(4,3) * t1200 + t798 * t874 / 0.2e1 + t1246 * t1203 + t1245 * t1202 - t1081 / 0.2e1 + t1083 / 0.2e1 - t1087 / 0.2e1 + t1090 / 0.2e1) * t798 - m(3) * (t643 * t735 - t644 * t737);
t882 = -t785 - t1132;
t733 = t882 * t797;
t734 = t882 * t799;
t1242 = (t799 * (t707 - t733) + (-t708 + t734) * t797) * t798;
t773 = pkin(2) * t1075;
t593 = t773 + (-t1136 * t798 + t836) * t797;
t764 = qJ(3) * t1060;
t981 = t796 * rSges(4,2) * t1050 + rSges(4,3) * t1060;
t594 = t764 + (-pkin(2) - t1147) * t1074 + t981;
t943 = ((t504 * t799 + t505 * t797) * t966 + t1030) * t1219 + ((t535 * t799 + t536 * t797) * t966 + t1027) * t1221 + ((t593 * t799 + t594 * t797) * t966 + t1022) * t1222;
t712 = (-Icges(5,2) * t779 - t1129) * t796;
t713 = (-Icges(5,1) * t778 - t1128) * t796;
t1241 = -t778 * (t664 / 0.2e1 + t712 / 0.2e1) + t779 * (t713 / 0.2e1 - t662 / 0.2e1);
t1010 = -Icges(5,2) * t702 - t547 - t686;
t1012 = -Icges(5,1) * t701 - t543 - t687;
t573 = -Icges(5,5) * t701 - Icges(5,6) * t702;
t298 = -t573 * t798 + (-t1010 * t778 + t1012 * t779) * t796;
t1009 = -Icges(5,2) * t704 + t548 + t688;
t1011 = Icges(5,1) * t703 - t1130 - t545;
t574 = Icges(5,5) * t703 - Icges(5,6) * t704;
t299 = -t574 * t798 + (-t1009 * t778 + t1011 * t779) * t796;
t711 = (-Icges(5,5) * t778 - Icges(5,6) * t779) * t796;
t996 = t664 + t712;
t997 = -t662 + t713;
t361 = t1075 * t711 - t701 * t996 + t702 * t997;
t362 = t1074 * t711 + t703 * t996 + t704 * t997;
t1240 = t1269 + (t299 + t362) * t1198 + (t298 + t361) * t1195;
t283 = -t558 * t798 + (-t1014 * t775 + t1016 * t776) * t796;
t1112 = t283 * t797;
t282 = -t557 * t798 + (-t1015 * t775 + t1017 * t776) * t796;
t1113 = t282 * t799;
t684 = (-Icges(6,1) * t775 - t1125) * t796;
t1003 = -t649 + t684;
t337 = -t1002 * t678 + t1003 * t679 + t1075 * t682;
t338 = t1002 * t680 + t1003 * t681 + t1074 * t682;
t906 = -t1113 / 0.4e1 + t1112 / 0.4e1 + t338 * t1198 + t337 * t1195;
t1058 = t799 * t1301;
t1239 = t1058 / 0.4e1 + t1301 * t1195;
t1057 = t799 * t1302;
t1071 = t797 * t178;
t1238 = t1071 / 0.4e1 + t1057 / 0.4e1 - t178 * t1198 + t1302 * t1195 - t1267 + t1310 * t1300;
t626 = t662 * t797;
t628 = t664 * t797;
t843 = -t660 * t797 + t1295;
t290 = -t843 * t798 + (t626 * t778 - t628 * t779 + t540) * t796;
t627 = t662 * t799;
t629 = t664 * t799;
t860 = -t545 * t778 + t548 * t779;
t842 = -t660 * t799 - t860;
t291 = -t842 * t798 + (t627 * t778 - t629 * t779 + t542) * t796;
t663 = Icges(5,6) * t796 + t798 * t877;
t665 = Icges(5,5) * t796 + t798 * t880;
t1092 = t660 * t798;
t854 = t1081 - t1083;
t839 = t661 - t854;
t810 = t796 * t839 + t1092;
t330 = -t663 * t701 + t665 * t702 + t797 * t810;
t331 = t703 * t663 + t704 * t665 + t799 * t810;
t1080 = t779 * t665;
t1082 = t778 * t663;
t373 = -t839 * t798 + (t1080 + t660 - t1082) * t796;
t1098 = t542 * t798;
t381 = t796 * t860 - t1098;
t454 = t796 * t854 - t1092;
t921 = t1060 / 0.4e1;
t927 = t1074 / 0.4e1;
t1237 = t373 * t1197 + t454 * t1200 - t1268 + (t290 + t330) * t931 + (t291 + t331) * t927 + (-t380 + t419) * t924 + (t381 + t421) * t921;
t1230 = 0.2e1 * t1304;
t1063 = t798 * t533;
t457 = t1074 * t653 + t1063;
t1229 = -0.2e1 * t457;
t1228 = 0.2e1 * t469;
t1227 = -0.2e1 * t563;
t1226 = -0.2e1 * t564;
t1224 = 0.4e1 * t740;
t346 = (-t618 * t796 - t1063) * t797 + t1018;
t390 = t532 * t796 + t942;
t391 = -t654 * t1074 + t517 + (-t653 * t799 - t618) * t798;
t417 = -t1075 * t533 - t509;
t1217 = (t1304 * t234 + t190 * t417 - t235 * t457 + t295 * t346 + t341 * t390 - t342 * t391) * t1265;
t1215 = t457 * t1312;
t754 = t1114 + t1160;
t988 = t977 * t754;
t904 = -t797 * (t1272 * t797 + t980) + t799 * (pkin(3) * t1068 - t1272 * t799 - t761) + t988;
t224 = t1020 * t799 + t1021 * t797 + t904;
t183 = 0.2e1 * t433 * t224;
t363 = t430 * t1228;
t364 = -0.2e1 * t470 * t428;
t945 = t183 - t363 + t364;
t967 = 0.2e1 * t685;
t1212 = m(6) * (0.2e1 * t440 * t295 + (-t341 * t799 + t342 * t797) * t967 + t945);
t1210 = m(6) * (t1229 * t600 + t1230 * t601 + 0.2e1 * t395 * t417 + t945);
t1208 = -t1302 / 0.2e1;
t1207 = t298 / 0.2e1;
t581 = Icges(4,5) * t726 - Icges(4,6) * t725 + Icges(4,3) * t1075;
t1206 = -t581 / 0.2e1;
t696 = Icges(4,6) * t796 + t798 * t878;
t1205 = t696 / 0.2e1;
t1204 = -t793 / 0.2e1;
t1201 = t794 / 0.2e1;
t370 = t438 * t1228;
t371 = 0.2e1 * t470 * t439;
t1033 = t370 + t371;
t1178 = m(6) * (t1226 * t342 + t1227 * t341 + t1033);
t1028 = t1304 * t959 + t457 * t961;
t1177 = m(6) * (t346 * t1223 + (t390 * t799 + t391 * t797 + t417) * t966 + t1028);
t1176 = (t1304 * t504 + t390 * t438 + t391 * t439 - t457 * t505) * t1265;
t1174 = m(6) * (-t1006 * t1229 + t1230 * t495 + t1033);
t1171 = m(6) * (t428 * t1226 - t430 * t1227 + (-t438 * t799 - t439 * t797) * t967);
t360 = t1304 * t963 + t457 * t962;
t1170 = m(6) * ((t1304 * t797 + t457 * t799) * t966 + t360);
t1166 = m(6) * (t1225 * t417 + t1028);
t1164 = m(6) * t360;
t1163 = m(6) * (t1223 * t440 - t685 * t883);
t1161 = (-t563 * t799 + t564 * t797) * t1263;
t1156 = m(4) * qJD(2);
t1154 = m(5) * qJD(2);
t1153 = m(5) * qJD(4);
t1151 = m(6) * qJD(2);
t1150 = m(6) * qJD(4);
t1149 = m(6) * qJD(5);
t1117 = Icges(4,3) * t798;
t389 = -t1062 + (t1003 * t776 - t1297) * t796;
t1106 = t389 * t798;
t1097 = t584 * t793;
t586 = Icges(4,4) * t728 + Icges(4,2) * t727 + Icges(4,6) * t1074;
t1096 = t586 * t793;
t1095 = t587 * t794;
t589 = Icges(4,1) * t728 + Icges(4,4) * t727 + Icges(4,5) * t1074;
t1094 = t589 * t794;
t1085 = t776 * t796;
t1076 = t796 * t707;
t1061 = t798 * t711;
t1000 = t710 * t1060 + t797 * t706;
t998 = t1049 * t796 - t754 + t917;
t992 = -rSges(4,3) * t796 - t798 * t891 - t754;
t731 = -Icges(3,2) * t1067 - t767;
t990 = t709 + t731;
t896 = qJ(3) * t1067 - t773;
t989 = t797 * t896 + t799 * (-pkin(2) * t1074 + t764);
t175 = 0.4e1 * (t1219 * (-t438 * t797 + t439 * t799) + t1221 * (-t463 * t797 + t464 * t799) + t1222 * (-t502 * t797 + t503 * t799)) * t796;
t976 = qJD(1) * t175;
t975 = qJD(1) * t796;
t973 = qJD(2) * t796;
t972 = qJD(2) * t798;
t971 = qJD(4) * t796;
t970 = qJD(4) * t798;
t958 = t796 ^ 2 * t1158;
t954 = (t433 * t1223 + (t469 * t799 + t470 * t797) * t966) * m(6) / 0.2e1;
t949 = t1208 + t1302 / 0.2e1;
t105 = -t337 * t798 + (t240 * t797 + t241 * t799) * t796;
t106 = -t338 * t798 + (t242 * t797 + t243 * t799) * t796;
t928 = t1074 / 0.2e1;
t932 = t1075 / 0.2e1;
t947 = t105 * t932 + t106 * t928 + (-t1106 + (t282 * t797 + t283 * t799) * t796) * t1197;
t583 = Icges(4,5) * t728 + Icges(4,6) * t727 + Icges(4,3) * t1074;
t385 = t583 * t1074 + t727 * t586 + t728 * t589;
t940 = -t675 + t998;
t936 = -t1085 / 0.2e1;
t935 = t1085 / 0.2e1;
t925 = t1067 / 0.2e1;
t922 = t1060 / 0.2e1;
t746 = Icges(3,2) * t798 + t1131;
t732 = t746 * t799;
t912 = (-t710 + t732) * t797;
t909 = t796 * t708 - t705;
t902 = t998 + t1004;
t901 = t797 * (-t896 - t983) + t799 * (-t764 + (-t1078 + t1252) * t799) + t989;
t894 = t1301 * t932 + t1306;
t884 = t649 * t936 + t684 * t935 + t1266;
t875 = -Icges(3,5) * t796 - Icges(3,6) * t798;
t866 = -t380 * t797 + t381 * t799;
t865 = t428 * t797 + t430 * t799;
t864 = t497 * t797 + t499 * t799;
t856 = -t607 * t797 - t609 * t799;
t852 = -t1215 / 0.4e1 + t894;
t815 = t796 * t845 + t1101;
t246 = t613 * t678 - t615 * t679 + t797 * t815;
t814 = t796 * t844 + t1100;
t247 = t614 * t678 - t616 * t679 + t797 * t814;
t51 = (-t307 + t871) * t798 + (t246 * t797 + t247 * t799 + t409) * t796;
t248 = -t680 * t613 - t681 * t615 + t799 * t815;
t249 = -t680 * t614 - t681 * t616 + t799 * t814;
t52 = (-t308 + t870) * t798 + (t248 * t797 + t249 * t799 + t411) * t796;
t851 = t1301 * t922 + t171 * t925 + t51 * t932 + t52 * t928 + t1248;
t821 = t1117 - t1260;
t636 = t821 * t797;
t841 = -t1095 + t636 + t1097;
t265 = -t1010 * t701 + t1012 * t702 + t1075 * t573;
t266 = -t1009 * t701 + t1011 * t702 + t1075 * t574;
t149 = -t265 * t799 + t266 * t797;
t267 = t1010 * t703 + t1012 * t704 + t1074 * t573;
t268 = t1009 * t703 + t1011 * t704 + t1074 * t574;
t150 = -t267 * t799 + t268 * t797;
t838 = t1196 * t149 + t1199 * t150;
t835 = t1217 / 0.4e1 + t851;
t834 = (-t581 * t799 + t583 * t797) * t798;
t637 = t821 * t799;
t833 = (-t1094 + t637 + t1096) * t797;
t832 = t1304 * t469 + t417 * t433 - t457 * t470;
t831 = t1239 + t1305;
t830 = t1306 + (t283 + t338) * t928 + (t1301 + t282 + t337) * t932;
t829 = t649 * t935 + t684 * t936 - t1266;
t141 = -t246 * t799 + t247 * t797;
t142 = -t248 * t799 + t249 * t797;
t828 = t51 * t1196 + t52 * t1199 + t141 * t932 + t142 * t928 + (-t269 * t799 + t270 * t797) * t1197 + (-t326 * t799 + t327 * t797) * t925 + t1299 * t922 + (t366 * t799 + t367 * t797) * t1200 - t1047;
t818 = t1282 * t921 + t1283 * t924 + t1285 * t927 + t1286 * t931 + t1247;
t816 = t51 * t934 - t52 * t1074 / 0.2e1 + t106 * t1199 + t105 * t1196 + t139 * t932 + t140 * t928 - t171 * t1067 / 0.2e1 - t1248 + (t1112 - t1113 + t1058) * t1197;
t813 = t796 * t843 + t1099;
t812 = t796 * t842 + t1098;
t808 = t830 - t1106;
t482 = -t1074 * t708 + t1000;
t806 = (-t797 * (-t798 * t709 + t1076) - t799 * t705 + t1075 * t581 + t857) * t1196 + (t799 * t909 - t1000 + t482 + t857) * t1194 + (t581 * t1074 + t797 * t909 + t1281 + t910) * t1199;
t805 = -(t1000 + t385) * t797 / 0.2e1 + (t385 + t482) * t1199 + (-t655 + (t706 + t1076) * t799 + t1001 + t1281) * t1196;
t804 = t818 + t831 - t906;
t803 = -t1247 + t831 + t906 + t1286 * t933 - t1285 * t1074 / 0.4e1 - t1283 * t1067 / 0.4e1 - t1282 * t1060 / 0.4e1;
t802 = -t1239 + t1305 + t818 + t906;
t698 = Icges(4,5) * t796 + t798 * t881;
t801 = t660 / 0.2e1 + t647 / 0.2e1 - t746 / 0.2e1 + t749 / 0.2e1 + t1260 / 0.2e1 - t1117 / 0.2e1 + t696 * t1204 + t698 * t1201 + t1080 / 0.2e1 - t1082 / 0.2e1 + t1086 / 0.2e1 - t1089 / 0.2e1;
t755 = -rSges(3,2) * t796 + t1148;
t730 = t875 * t799;
t729 = t875 * t797;
t641 = t1245 * t799;
t640 = t1245 * t797;
t639 = t1246 * t799;
t638 = t1246 * t797;
t610 = t992 * t799;
t608 = t992 * t797;
t500 = t940 * t799;
t498 = t940 * t797;
t484 = -t1074 * t714 - t798 * t580;
t483 = t1075 * t714 + t579 * t798;
t445 = t799 * (-t1074 * t1147 + t981) + t1273 * t791 + t989;
t443 = t858 * t796;
t432 = t1161 / 0.4e1;
t431 = t902 * t799;
t429 = t902 * t797;
t423 = (-t685 * t796 + t958) * t799 + t1006 * t798;
t422 = -t689 * t798 - t797 * t958 + t469;
t412 = t797 * (rSges(4,3) * t1075 - t1255) + t799 * (rSges(4,3) * t1074 + t892) + t988;
t401 = -t1061 + (-t778 * t996 + t779 * t997) * t796;
t387 = t534 + (-t689 * t799 + t1279) * t796;
t386 = t1163 / 0.4e1;
t375 = -t1091 * t797 + t634 * t799 + t901;
t353 = t1164 / 0.4e1;
t339 = 0.4e1 * t502 * t593 + 0.4e1 * t503 * t594;
t315 = t1224 * t412 + t856 * t964;
t311 = -t550 * t797 + t551 * t799 + t904;
t300 = -0.4e1 * t463 * t579 + 0.4e1 * t464 * t580;
t293 = 0.4e1 * t463 * t535 + 0.4e1 * t464 * t536;
t289 = qJD(5) * t954;
t286 = t1007 * t799 + (t552 - t617) * t797 + t901;
t271 = -0.4e1 * t438 * t563 + 0.4e1 * t439 * t564;
t260 = -t703 * t627 - t704 * t629 + t799 * t812;
t259 = -t703 * t626 - t704 * t628 + t799 * t813;
t258 = t627 * t701 - t629 * t702 + t797 * t812;
t257 = t626 * t701 - t628 * t702 + t797 * t813;
t255 = t1166 / 0.4e1;
t252 = 0.4e1 * t438 * t504 + 0.4e1 * t439 * t505;
t245 = -0.4e1 * t1006 * t439 + 0.4e1 * t438 * t495;
t221 = t1224 * t311 - t864 * t964;
t195 = -t454 * t798 + t796 * t866;
t188 = t1219 * t271 + t884;
t182 = 0.4e1 * t311 * t451 + 0.4e1 * t714 * t864;
t180 = t1170 / 0.4e1;
t173 = 0.4e1 * t832;
t169 = t1171 / 0.4e1;
t151 = t1224 * t224 - t865 * t964;
t148 = -t259 * t799 + t260 * t797;
t147 = -t257 * t799 + t258 * t797;
t143 = t1174 / 0.4e1;
t125 = 0.4e1 * t1303 * t399 + 0.4e1 * t369 * t425 - 0.4e1 * t400 * t468;
t124 = 0.4e1 * t224 * t440 + 0.4e1 * t685 * t865;
t120 = t353 + t180 - t1161 / 0.4e1;
t119 = t432 + t353 - t1170 / 0.4e1;
t118 = t432 + t180 - t1164 / 0.4e1;
t117 = 0.4e1 * t1304 * t390 + 0.4e1 * t346 * t417 - 0.4e1 * t391 * t457;
t115 = t1176 / 0.4e1;
t114 = 0.4e1 * t224 * t395 - 0.4e1 * t428 * t600 - 0.4e1 * t430 * t601;
t113 = -t362 * t798 + (t267 * t797 + t268 * t799) * t796;
t112 = -t361 * t798 + (t265 * t797 + t266 * t799) * t796;
t110 = t1177 / 0.4e1;
t108 = t1178 / 0.4e1;
t107 = t245 * t1219 - t1061 / 0.2e1 + t300 * t1221 + t1241 * t796 + t884;
t100 = 0.4e1 * t895;
t91 = (-t373 + t866) * t798 + (t290 * t797 + t291 * t799 + t454) * t796;
t89 = t1219 * t151 + t1221 * t221 + t1222 * t315;
t73 = t255 + t110 - t1163 / 0.4e1;
t72 = t386 + t255 - t1177 / 0.4e1;
t71 = t386 + t110 - t1166 / 0.4e1;
t70 = 0.4e1 * t1035 * t342;
t69 = (-t331 + t868) * t798 + (t259 * t797 + t260 * t799 + t421) * t796;
t68 = (-t330 + t869) * t798 + (t257 * t797 + t258 * t799 + t419) * t796;
t66 = t1210 / 0.4e1;
t53 = t252 * t1219 + t293 * t1221 + t339 * t1222 + t801 * t796 - t1243;
t43 = t1212 / 0.4e1;
t40 = 0.4e1 * t190 * t295 + 0.4e1 * t234 * t341 - 0.4e1 * t235 * t342;
t35 = t1219 * t124 + t1047;
t34 = t1042 + t1133 - t1031;
t33 = t1031 - t1271;
t32 = t1031 + t1271;
t27 = t944 + t946 - t943;
t26 = t943 + t1280;
t25 = t943 - t1280;
t24 = t1219 * t173 + t947;
t23 = t24 * qJD(5);
t22 = t100 * t1219 + t947;
t21 = t114 * t1219 + t1221 * t182 + t1047 + t838;
t20 = t1048 + t1134 - t1037;
t19 = t1037 - t1270;
t18 = t1037 + t1270;
t16 = t117 * t1219 + t851;
t15 = t143 - t1178 / 0.4e1 + t852;
t14 = t108 - t1174 / 0.4e1 + t852;
t13 = t108 + t143 + t1215 / 0.4e1 + t808;
t12 = t949 * t1075 - t70 * t1219 + t894;
t11 = t66 - t1212 / 0.4e1 + t835;
t10 = t43 - t1210 / 0.4e1 + t835;
t9 = t797 * t806 + t799 * t805;
t8 = t40 * t1219 + t125 * t1221 + (-t91 / 0.2e1 + t1057 / 0.2e1 + t1071 / 0.2e1) * t798 + (t195 / 0.2e1 + t69 * t1194 + t68 * t1199) * t796 + t851;
t7 = t804 + t115 - t1171 / 0.4e1;
t6 = t803 + t169 - t1176 / 0.4e1;
t5 = t802 + t169 + t115;
t4 = t66 + t43 + t816 - t1217 / 0.4e1;
t3 = t804 + (t361 / 0.4e1 + t298 / 0.4e1) * t799 + (-t362 / 0.4e1 - t299 / 0.4e1) * t797 + t1237 + t1238 - t1269;
t2 = t803 + (t373 / 0.2e1 + (-t421 / 0.4e1 - t381 / 0.4e1) * t799 + (t380 / 0.4e1 - t419 / 0.4e1) * t797) * t798 + (-t454 / 0.2e1 + (-t331 / 0.4e1 - t291 / 0.4e1) * t799 + (-t330 / 0.4e1 - t290 / 0.4e1) * t797) * t796 + t1238 + t1240 + t1268;
t1 = t802 + t1237 + t1240 + t1267;
t17 = [t53 * qJD(2) + t175 * qJD(3) + t107 * qJD(4) + t188 * qJD(5), t53 * qJD(1) + t26 * qJD(3) + t1 * qJD(4) + t5 * qJD(5) + ((-t290 / 0.2e1 - t330 / 0.2e1 - t307 / 0.2e1 - t269 / 0.2e1 + t725 * t1205 - t726 * t698 / 0.2e1 + t745 * t1194 - t805) * qJD(2) + (t1097 / 0.2e1 - t1095 / 0.2e1 + t636 / 0.2e1 - t709 / 0.2e1 - t731 / 0.2e1) * t972 + (-t638 * t1203 - t640 * t1202 + t1206 + t707 / 0.2e1 - t733 / 0.2e1) * t973) * t799 + ((t308 / 0.2e1 + t291 / 0.2e1 + t270 / 0.2e1 + t727 * t1205 + t728 * t698 / 0.2e1 + t331 / 0.2e1 + t745 * t1199 - t806) * qJD(2) + (-t637 / 0.2e1 + t710 / 0.2e1 - t732 / 0.2e1 + t1094 / 0.2e1 - t1096 / 0.2e1) * t972 + (t583 / 0.2e1 + t734 / 0.2e1 - t708 / 0.2e1 - t641 * t1201 - t639 * t1204) * t973) * t797 + (-t428 * t505 + t429 * t439 - t430 * t504 + t431 * t438) * t1151 + (t463 * t500 + t464 * t498 - t497 * t536 - t499 * t535) * t1154 + (t502 * t610 + t503 * t608 - t593 * t609 - t594 * t607) * t1156 + ((-t643 * t799 - t644 * t797) * t755 + (-t735 * t799 + t737 * t797) * t752) * qJD(2) * m(3), qJD(2) * t26 + qJD(4) * t32 + qJD(5) * t119 + t976, t107 * qJD(1) + t1 * qJD(2) + t32 * qJD(3) + t830 * qJD(4) + t13 * qJD(5) + (-t389 - t401) * t970 + (t70 / 0.4e1 + t341 * t495 + t342 * t1006 + t422 * t438 + t423 * t439) * t1150 + (-t1303 * t579 + t463 * t483 + t464 * t484 - t468 * t580) * t1153 + ((t299 / 0.2e1 + t362 / 0.2e1) * t799 + (t361 / 0.2e1 + t1207 - t949) * t797) * t971, t188 * qJD(1) + t5 * qJD(2) + t119 * qJD(3) + t13 * qJD(4) + t808 * qJD(5) + (-t1304 * t563 - t457 * t564 + t370 / 0.2e1 + t371 / 0.2e1) * t1149; t9 * qJD(2) + t27 * qJD(3) + t2 * qJD(4) + t6 * qJD(5) + t252 * t1308 + t293 * t1307 - t801 * t975 + ((t1206 + t581 / 0.2e1) * t1067 - m(4) * t339 / 0.4e1 + t1243) * qJD(1), t9 * qJD(1) + t89 * qJD(3) + t21 * qJD(4) + t35 * qJD(5) + ((t224 * t286 - t428 * t429 - t430 * t431) * m(6) + (t311 * t375 - t497 * t498 - t499 * t500) * m(5) + (t412 * t445 - t607 * t608 - t609 * t610) * m(4) + m(3) * ((t797 * (rSges(3,1) * t1067 - t979) + t799 * (rSges(3,1) * t1060 + t797 * rSges(3,3) - t769)) * (-t797 * t735 - t737 * t799) + t977 * t755 * t752) + (t142 + t148 + (-t727 * t639 - t728 * t641) * t797 + (t727 * t638 + t728 * t640 + t834 + (-t799 * t841 + t833) * t796) * t799 + t791 * t730 + (-t797 * t729 + t1242 + (t799 * t990 + t912) * t796) * t799) * t1199 + (t141 + t147 + t792 * t729 - (t638 * t725 - t640 * t726) * t799 + (-t799 * t730 + t1242 + t725 * t639 - t726 * t641 + t834 + (t833 + t912 + (-t841 + t990) * t799) * t796) * t797) * t1196) * qJD(2), t27 * qJD(1) + t89 * qJD(2) + t18 * qJD(4) + t72 * qJD(5) - t1276, t2 * qJD(1) + t21 * qJD(2) + t18 * qJD(3) + (t112 * t1196 + t113 * t1199 + t816) * qJD(4) + t4 * qJD(5) + (t91 / 0.2e1 + (t1207 + t1208) * t799 + (-t299 / 0.2e1 - t178 / 0.2e1) * t797) * t970 + (-t195 / 0.2e1 + (t150 / 0.2e1 - t69 / 0.2e1) * t799 + (-t68 / 0.2e1 + t149 / 0.2e1) * t797) * t971 + (t224 * t387 + t295 * t395 + t341 * t601 - t342 * t600 - t422 * t430 - t423 * t428 - t40 / 0.4e1) * t1150 + (t443 * t311 + t425 * t451 - t483 * t499 - t484 * t497 - t125 / 0.4e1 + (-t1303 * t799 + t468 * t797) * t714) * t1153, t6 * qJD(1) + t35 * qJD(2) + t72 * qJD(3) + t4 * qJD(4) + t816 * qJD(5) + (t417 * t440 + t183 / 0.2e1 - t363 / 0.2e1 + t364 / 0.2e1 - t117 / 0.4e1 + (-t1304 * t799 + t457 * t797) * t685) * t1149; t25 * qJD(2) + t33 * qJD(4) + t118 * qJD(5) - t976, t25 * qJD(1) + t1276 + t19 * qJD(4) + t71 * qJD(5) + (-t151 / 0.4e1 + (-t286 - t865) * t798 + (t429 * t797 + t431 * t799 + t224) * t796) * t1151 + (-t221 / 0.4e1 + (-t375 - t864) * t798 + (t498 * t797 + t500 * t799 + t311) * t796) * t1154 + (-t315 / 0.4e1 + (-t445 + t856) * t798 + (t608 * t797 + t610 * t799 + t412) * t796) * t1156, t477 * qJD(2), t33 * qJD(1) + t19 * qJD(2) + ((-m(5) * t443 - m(6) * t387) * t798 + ((m(5) * t483 + m(6) * t422) * t799 + (m(5) * t484 + m(6) * t423) * t797) * t796) * qJD(4) + t289, t118 * qJD(1) + t71 * qJD(2) + qJD(4) * t954 + t289; (t1061 / 0.2e1 + t829) * qJD(1) + t3 * qJD(2) + t34 * qJD(3) + t12 * qJD(4) + t14 * qJD(5) + (-t245 / 0.4e1 + t1035 * t439) * t1152 + t300 * t1307 - t1241 * t975, t3 * qJD(1) + ((-t290 * t799 + t291 * t797) * t1197 + (t380 * t799 + t381 * t797) * t1200 + t68 * t1196 + t69 * t1199 + t1300 * t922 + t148 * t928 + (-t347 * t799 + t348 * t797) * t925 + t147 * t932 + t828 - t838) * qJD(2) + t20 * qJD(3) + t8 * qJD(4) + t10 * qJD(5) + (-t114 / 0.4e1 + t190 * t224 - t234 * t430 - t235 * t428 + t286 * t295 + t341 * t431 - t342 * t429) * t1151 + (-t182 / 0.4e1 + t311 * t369 + t375 * t425 - t399 * t499 - t400 * t497 + t1303 * t500 - t468 * t498) * t1154, qJD(1) * t34 + qJD(2) * t20, t12 * qJD(1) + t8 * qJD(2) + ((t295 * t387 + t341 * t422 - t342 * t423) * m(6) + t798 ^ 2 * t401 / 0.2e1 + (t1303 * t483 + t425 * t443 - t468 * t484) * m(5) + (t113 * t1194 + t112 * t1199 + (t298 * t797 + t299 * t799) * t1197) * t796 + t947) * qJD(4) + t22 * qJD(5), t14 * qJD(1) + t10 * qJD(2) + t22 * qJD(4) + t947 * qJD(5) + (-t173 / 0.4e1 + t832 + t895) * t1149; t829 * qJD(1) + t7 * qJD(2) + t120 * qJD(3) + t15 * qJD(4) + qJD(5) * t894 + t271 * t1308, t7 * qJD(1) + t828 * qJD(2) + t73 * qJD(3) + t11 * qJD(4) + t16 * qJD(5) + (t224 * t346 + t286 * t417 - t390 * t430 - t391 * t428 - t429 * t457 + t431 * t1304 - t124 / 0.4e1) * t1151, qJD(1) * t120 + qJD(2) * t73, t15 * qJD(1) + t11 * qJD(2) + t947 * qJD(4) + t23 + (t387 * t417 + t422 * t1304 - t423 * t457 - t100 / 0.4e1 + t895) * t1150, qJD(1) * t894 + qJD(2) * t16 + qJD(4) * t24 + t23;];
Cq = t17;