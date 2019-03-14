% Calculate matrix of centrifugal and coriolis load on the joints for
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
% Cq [6x6]
%   matrix of coriolis and centrifugal joint torques.
%   Gives coriolis joint torques when multiplied with joint velocities

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 03:13
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S6RPRPRP4_coriolismatJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(9,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRP4_coriolismatJ_fixb_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRP4_coriolismatJ_fixb_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPRPRP4_coriolismatJ_fixb_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRPRP4_coriolismatJ_fixb_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RPRPRP4_coriolismatJ_fixb_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RPRPRP4_coriolismatJ_fixb_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 03:11:15
% EndTime: 2019-03-09 03:12:14
% DurationCPUTime: 53.66s
% Computational Cost: add. (83139->1068), mult. (101919->1454), div. (0->0), fcn. (110677->8), ass. (0->581)
t700 = qJ(1) + pkin(9);
t697 = sin(t700);
t698 = cos(t700);
t705 = cos(qJ(5));
t702 = sin(qJ(5));
t703 = sin(qJ(3));
t939 = t702 * t703;
t593 = t697 * t705 + t698 * t939;
t578 = Icges(7,5) * t593;
t937 = t703 * t705;
t592 = t697 * t702 - t698 * t937;
t706 = cos(qJ(3));
t941 = t698 * t706;
t447 = Icges(7,6) * t941 + Icges(7,3) * t592 + t578;
t450 = Icges(6,5) * t593 - Icges(6,6) * t592 + Icges(6,3) * t941;
t453 = Icges(7,4) * t593 + Icges(7,2) * t941 + Icges(7,6) * t592;
t976 = Icges(6,4) * t593;
t456 = -Icges(6,2) * t592 + Icges(6,6) * t941 + t976;
t971 = Icges(7,5) * t592;
t459 = Icges(7,1) * t593 + Icges(7,4) * t941 + t971;
t581 = Icges(6,4) * t592;
t462 = Icges(6,1) * t593 + Icges(6,5) * t941 - t581;
t594 = t697 * t937 + t698 * t702;
t595 = -t697 * t939 + t698 * t705;
t945 = t697 * t706;
t1197 = (t450 + t453) * t945 + (-t459 - t462) * t595 + (-t447 + t456) * t594;
t580 = Icges(7,5) * t595;
t448 = -Icges(7,6) * t945 + Icges(7,3) * t594 + t580;
t452 = -Icges(6,5) * t595 + Icges(6,6) * t594 + Icges(6,3) * t945;
t455 = -Icges(7,4) * t595 + Icges(7,2) * t945 - Icges(7,6) * t594;
t583 = Icges(6,4) * t595;
t458 = Icges(6,2) * t594 + Icges(6,6) * t945 - t583;
t579 = Icges(7,5) * t594;
t461 = -Icges(7,1) * t595 + Icges(7,4) * t945 - t579;
t582 = Icges(6,4) * t594;
t463 = Icges(6,1) * t595 - Icges(6,5) * t945 - t582;
t1196 = (t452 + t455) * t945 + (-t461 + t463) * t595 + (t448 + t458) * t594;
t1045 = t703 / 0.2e1;
t1042 = rSges(7,1) + pkin(5);
t980 = rSges(7,3) + qJ(6);
t373 = -t1042 * t592 + t593 * t980;
t892 = t1042 * t594 - t595 * t980;
t1177 = -t373 * t697 + t698 * t892;
t492 = -rSges(6,1) * t592 - rSges(6,2) * t593;
t495 = rSges(6,1) * t594 + rSges(6,2) * t595;
t769 = t492 * t697 - t495 * t698;
t919 = (m(6) * t769 - m(7) * t1177) * t1045;
t1077 = m(7) / 0.2e1;
t1079 = m(6) / 0.2e1;
t1106 = t1042 * t595 + t594 * t980;
t893 = rSges(7,2) * t945 - t1106;
t810 = t893 * t703;
t794 = rSges(7,1) * t702 - rSges(7,3) * t705;
t986 = rSges(7,2) * t703;
t1092 = t706 * t794 - t986;
t792 = pkin(5) * t702 - qJ(6) * t705;
t873 = -t792 * t706 - t1092;
t1184 = t873 * t945 - t810;
t740 = t1042 * t593 + t592 * t980;
t723 = rSges(7,2) * t941 + t740;
t1188 = t703 * t723;
t305 = t873 * t941 - t1188;
t795 = rSges(6,1) * t702 + rSges(6,2) * t705;
t1091 = -rSges(6,3) * t703 + t706 * t795;
t1105 = t595 * rSges(6,1) - t594 * rSges(6,2);
t466 = -rSges(6,3) * t945 + t1105;
t954 = t466 * t703;
t379 = -t1091 * t945 + t954;
t797 = t593 * rSges(6,1) - t592 * rSges(6,2);
t734 = rSges(6,3) * t941 + t797;
t731 = t703 * t734;
t380 = -t1091 * t941 - t731;
t942 = t698 * t703;
t946 = t697 * t703;
t921 = (-t1184 * t946 - t305 * t942) * t1077 + (-t379 * t946 - t380 * t942) * t1079;
t22 = t921 - t919;
t1195 = qJD(1) * t22;
t970 = Icges(7,5) * t702;
t783 = -Icges(7,3) * t705 + t970;
t726 = -Icges(7,6) * t703 + t706 * t783;
t969 = Icges(7,5) * t705;
t789 = Icges(7,1) * t702 - t969;
t730 = -Icges(7,4) * t703 + t706 * t789;
t786 = Icges(7,4) * t702 - Icges(7,6) * t705;
t728 = -Icges(7,2) * t703 + t706 * t786;
t933 = t706 * t728;
t345 = t594 * t726 + t595 * t730 - t697 * t933;
t975 = Icges(6,4) * t702;
t787 = Icges(6,2) * t705 + t975;
t727 = -Icges(6,6) * t703 + t706 * t787;
t974 = Icges(6,4) * t705;
t790 = Icges(6,1) * t702 + t974;
t729 = -Icges(6,5) * t703 + t706 * t790;
t784 = Icges(6,5) * t702 + Icges(6,6) * t705;
t725 = -Icges(6,3) * t703 + t706 * t784;
t934 = t706 * t725;
t346 = -t594 * t727 + t595 * t729 - t697 * t934;
t1133 = t345 + t346;
t1194 = t1196 * t697 + t1197 * t698;
t1080 = m(5) / 0.2e1;
t660 = pkin(3) * t703 - qJ(4) * t706;
t813 = pkin(8) * t703 + t660;
t762 = t813 + t873;
t408 = t762 * t697;
t410 = t762 * t698;
t798 = -t1091 + t813;
t473 = t798 * t697;
t475 = t798 * t698;
t987 = rSges(5,2) * t703;
t793 = rSges(5,3) * t706 + t987;
t869 = t660 - t793;
t536 = t869 * t697;
t538 = t869 * t698;
t811 = rSges(5,1) * t698 - rSges(5,3) * t946;
t961 = qJ(4) * t703;
t814 = pkin(2) + t961;
t815 = -sin(qJ(1)) * pkin(1) + t698 * pkin(7);
t429 = ((rSges(5,2) - pkin(3)) * t706 - t814) * t697 + t811 + t815;
t681 = rSges(5,2) * t941;
t981 = rSges(5,3) + qJ(4);
t994 = pkin(3) * t706;
t995 = cos(qJ(1)) * pkin(1);
t430 = t995 - t681 + (rSges(5,1) + pkin(7)) * t697 + (t703 * t981 + pkin(2) + t994) * t698;
t905 = t429 * t941 + t430 * t945;
t683 = pkin(8) * t945;
t630 = t698 * pkin(4) - t683;
t763 = t815 + t630;
t349 = ((-rSges(6,3) - pkin(3)) * t706 - t814) * t697 + t763 + t1105;
t759 = t995 + (pkin(4) + pkin(7)) * t697;
t1040 = rSges(6,3) + pkin(8);
t854 = pkin(3) + t1040;
t351 = (t706 * t854 + t814) * t698 + t759 + t797;
t911 = t349 * t941 + t351 * t945;
t1173 = ((-rSges(7,2) - pkin(3)) * t706 - t814) * t697 + t763 + t1106;
t1041 = rSges(7,2) + pkin(8);
t855 = pkin(3) + t1041;
t316 = (t706 * t855 + t814) * t698 + t740 + t759;
t914 = t1173 * t941 + t316 * t945;
t838 = (-t408 * t942 + t410 * t946 + t914) * t1077 + (-t473 * t942 + t475 * t946 + t911) * t1079 + (-t536 * t942 + t538 * t946 + t905) * t1080;
t932 = t706 * t702;
t844 = t698 * t932;
t1102 = t1042 * t844;
t668 = qJ(4) * t941;
t935 = t705 * t706;
t375 = t668 + (-t703 * t855 - t935 * t980) * t698 + t1102;
t682 = pkin(3) * t946;
t376 = t682 + (t1041 * t703 + (-t1042 * t702 + t705 * t980 - qJ(4)) * t706) * t697;
t435 = t682 + (t1040 * t703 + (-qJ(4) - t795) * t706) * t697;
t842 = t698 * t935;
t871 = rSges(6,1) * t844 + rSges(6,2) * t842;
t436 = -t854 * t942 + t668 + t871;
t506 = t682 + (-t706 * t981 - t987) * t697;
t799 = -pkin(3) * t942 + t668;
t866 = rSges(5,2) * t942 + rSges(5,3) * t941;
t507 = t799 + t866;
t840 = ((t375 * t697 + t376 * t698) * t703 + t914) * t1077 + ((t435 * t698 + t436 * t697) * t703 + t911) * t1079 + ((t506 * t698 + t507 * t697) * t703 + t905) * t1080;
t14 = t840 - t838;
t695 = t697 ^ 2;
t696 = t698 ^ 2;
t865 = t695 + t696;
t1108 = t865 * t703;
t1076 = m(7) / 0.4e1;
t1078 = m(6) / 0.4e1;
t804 = m(5) / 0.4e1 + t1078 + t1076;
t756 = 0.2e1 * t804 * t1108;
t803 = t1077 + t1079 + t1080;
t385 = -t703 * t803 + t756;
t1193 = -t14 * qJD(1) + t385 * qJD(2);
t1122 = -t697 / 0.2e1;
t1121 = t698 / 0.2e1;
t1043 = t706 / 0.2e1;
t1192 = Icges(5,1) + Icges(4,3);
t1191 = Icges(5,4) - Icges(4,5);
t1190 = Icges(5,5) - Icges(4,6);
t829 = t1043 * t1194 + t1045 * t1133;
t181 = t1173 * t594 + t316 * t592;
t1189 = t181 * m(7) * qJD(1);
t480 = -Icges(6,5) * t592 - Icges(6,6) * t593;
t482 = -Icges(7,4) * t592 + Icges(7,6) * t593;
t1187 = t480 + t482;
t481 = Icges(6,5) * t594 + Icges(6,6) * t595;
t483 = Icges(7,4) * t594 - Icges(7,6) * t595;
t1186 = t481 + t483;
t654 = Icges(4,5) * t706 - Icges(4,6) * t703;
t655 = -Icges(5,4) * t706 + Icges(5,5) * t703;
t1185 = (t654 + t655) * t698 + t1192 * t697;
t1161 = -t1190 * t946 + t1191 * t945 + t1192 * t698;
t896 = Icges(6,2) * t595 - t463 + t582;
t898 = Icges(7,3) * t595 + t461 - t579;
t1183 = t896 + t898;
t897 = -Icges(6,2) * t593 + t462 - t581;
t899 = -Icges(7,3) * t593 + t459 + t971;
t1182 = t897 + t899;
t900 = -Icges(6,1) * t594 + t458 - t583;
t902 = Icges(7,1) * t594 - t448 - t580;
t1181 = t900 - t902;
t901 = Icges(6,1) * t592 + t456 + t976;
t903 = -Icges(7,1) * t592 + t447 + t578;
t1180 = t901 - t903;
t342 = t592 * t727 - t593 * t729 - t698 * t934;
t245 = t450 * t941 - t592 * t456 + t593 * t462;
t246 = t452 * t941 - t592 * t458 - t463 * t593;
t780 = t245 * t698 + t246 * t697;
t1170 = t342 * t703 + t706 * t780;
t341 = -t592 * t726 - t593 * t730 - t698 * t933;
t243 = t592 * t447 + t453 * t941 + t593 * t459;
t244 = -t448 * t592 + t455 * t941 + t593 * t461;
t781 = t243 * t698 + t244 * t697;
t1171 = t341 * t703 + t706 * t781;
t830 = t1171 / 0.2e1 + t1170 / 0.2e1;
t1155 = t458 * t705 - t463 * t702;
t957 = t452 * t703;
t287 = t1155 * t706 - t957;
t1156 = t448 * t705 + t461 * t702;
t955 = t455 * t703;
t284 = t1156 * t706 - t955;
t773 = t447 * t705 - t459 * t702;
t956 = t453 * t703;
t283 = t706 * t773 + t956;
t771 = -t456 * t705 - t462 * t702;
t958 = t450 * t703;
t286 = t706 * t771 + t958;
t1176 = t283 + t286;
t1175 = -t284 - t287;
t977 = Icges(4,4) * t703;
t659 = Icges(4,1) * t706 - t977;
t552 = Icges(4,5) * t697 + t659 * t698;
t965 = Icges(5,6) * t706;
t651 = Icges(5,3) * t703 - t965;
t553 = Icges(5,5) * t697 + t651 * t698;
t1174 = -t552 * t945 - t553 * t946;
t1169 = t245 * t697 - t246 * t698;
t1168 = t243 * t697 - t244 * t698;
t1152 = m(7) * (t592 * t946 + t594 * t942);
t431 = -t1152 / 0.2e1;
t432 = t1152 / 0.2e1;
t1167 = -t1180 * t593 - t1182 * t592 + t1187 * t941;
t1166 = -t1181 * t593 - t1183 * t592 + t1186 * t941;
t1165 = t1180 * t595 + t1182 * t594 + t1187 * t945;
t1164 = t1181 * t595 + t1183 * t594 + t1186 * t945;
t633 = (-Icges(7,4) * t705 - Icges(7,6) * t702) * t706;
t631 = (-Icges(7,3) * t702 - t969) * t706;
t876 = -t730 - t631;
t635 = (-Icges(7,1) * t705 - t970) * t706;
t878 = -t726 + t635;
t289 = -t592 * t876 + t593 * t878 + t633 * t941;
t632 = (-Icges(6,5) * t705 + Icges(6,6) * t702) * t706;
t634 = (Icges(6,2) * t702 - t974) * t706;
t875 = -t729 + t634;
t636 = (-Icges(6,1) * t705 + t975) * t706;
t877 = -t727 - t636;
t290 = -t592 * t875 - t593 * t877 + t632 * t941;
t1163 = t289 + t290;
t291 = t594 * t876 - t595 * t878 + t633 * t945;
t292 = t594 * t875 + t595 * t877 + t632 * t945;
t1162 = t291 + t292;
t1160 = t1190 * t706 + t1191 * t703;
t1159 = t1185 * t698 + t1174;
t1127 = t1185 * t697 + t552 * t941 + t553 * t942;
t675 = Icges(4,4) * t946;
t551 = Icges(4,1) * t945 - Icges(4,5) * t698 - t675;
t554 = Icges(5,5) * t698 + Icges(5,6) * t945 - Icges(5,3) * t946;
t1158 = t1161 * t697 - t551 * t941 + t554 * t942;
t549 = Icges(4,4) * t945 - Icges(4,2) * t946 - Icges(4,6) * t698;
t670 = Icges(5,6) * t946;
t556 = Icges(5,4) * t698 + Icges(5,2) * t945 - t670;
t1157 = t549 * t703 - t556 * t706;
t1154 = -m(6) / 0.2e1;
t1153 = -m(7) / 0.2e1;
t1119 = -t706 / 0.2e1;
t517 = t726 * t698;
t525 = t730 * t698;
t749 = t728 * t698 - t773;
t208 = (t517 * t705 - t525 * t702 + t453) * t706 + t749 * t703;
t523 = t727 * t698;
t527 = t729 * t698;
t747 = t725 * t698 - t771;
t210 = (-t523 * t705 - t527 * t702 + t450) * t706 + t747 * t703;
t1141 = t208 + t210;
t516 = t726 * t697;
t524 = t730 * t697;
t748 = t728 * t697 + t1156;
t209 = (t516 * t705 - t524 * t702 + t455) * t706 + t748 * t703;
t522 = t727 * t697;
t526 = t729 * t697;
t746 = t725 * t697 + t1155;
t211 = (-t522 * t705 - t526 * t702 + t452) * t706 + t746 * t703;
t1140 = t209 + t211;
t221 = t482 * t703 + (-t702 * t903 - t705 * t899) * t706;
t223 = t480 * t703 + (t702 * t901 - t705 * t897) * t706;
t1139 = t221 + t223;
t222 = t483 * t703 + (-t702 * t902 - t705 * t898) * t706;
t224 = t481 * t703 + (t702 * t900 - t705 * t896) * t706;
t1138 = t222 + t224;
t596 = Icges(7,6) * t706 + t703 * t783;
t604 = Icges(7,4) * t706 + t703 * t789;
t600 = Icges(7,2) * t706 + t703 * t786;
t766 = t702 * t730 - t705 * t726;
t745 = t600 - t766;
t948 = t728 * t703;
t717 = t706 * t745 + t948;
t263 = -t594 * t596 - t595 * t604 + t697 * t717;
t602 = Icges(6,6) * t706 + t703 * t787;
t606 = Icges(6,5) * t706 + t703 * t790;
t598 = Icges(6,3) * t706 + t703 * t784;
t765 = t702 * t729 + t705 * t727;
t744 = t598 - t765;
t949 = t725 * t703;
t718 = t706 * t744 + t949;
t264 = t594 * t602 - t595 * t606 + t697 * t718;
t1137 = t263 + t264;
t265 = t592 * t596 + t593 * t604 + t698 * t717;
t266 = -t592 * t602 + t593 * t606 + t698 * t718;
t1136 = t265 + t266;
t311 = (t705 * t596 - t702 * t604 - t728) * t706 + t745 * t703;
t312 = (-t705 * t602 - t702 * t606 - t725) * t706 + t744 * t703;
t1135 = t311 + t312;
t1134 = t341 + t342;
t699 = Icges(4,4) * t706;
t968 = Icges(4,2) * t703;
t550 = Icges(4,6) * t697 + (t699 - t968) * t698;
t671 = Icges(5,6) * t942;
t555 = Icges(5,4) * t697 - Icges(5,2) * t941 + t671;
t1132 = -t550 * t942 - t555 * t941 + t1127;
t391 = t706 * t766 - t948;
t392 = t706 * t765 - t949;
t1131 = t391 + t392;
t1130 = t1175 * t697 + t1176 * t698;
t1129 = t550 * t703 + t555 * t706 + t1161;
t229 = (-t697 * t723 + t893 * t698) * t706;
t325 = (-t466 * t698 - t697 * t734) * t706;
t909 = t379 * t941 - t380 * t945;
t915 = t1184 * t941 - t305 * t945;
t930 = (t1108 * t229 + t915) * t1077 + (t1108 * t325 + t909) * t1079;
t881 = -qJ(6) * t842 + (-rSges(7,3) * t935 - t986) * t698 + t1102;
t886 = t1092 * t697 + t792 * t945;
t158 = (t706 * t886 - t810) * t698 + (-t706 * t881 + t1188) * t697;
t1107 = t873 * t703;
t985 = rSges(7,2) * t706;
t874 = t985 + (t792 + t794) * t703;
t216 = -t893 * t706 - t886 * t703 + (t706 * t874 - t1107) * t697;
t217 = t740 * t706 + t881 * t703 + (t1107 + (-t874 + t985) * t706) * t698;
t529 = t1091 * t697;
t531 = -rSges(6,3) * t942 + t871;
t254 = (t529 * t706 + t954) * t698 + (-t706 * t531 + t731) * t697;
t983 = rSges(6,3) * t706;
t624 = t703 * t795 + t983;
t938 = t703 * t1091;
t313 = t466 * t706 - t529 * t703 + (t624 * t706 + t938) * t697;
t314 = t706 * t797 + t703 * t531 + (-t938 + (-t624 + t983) * t706) * t698;
t993 = (-t158 * t706 + (t216 * t698 + t217 * t697 + t229) * t703 + t915) * t1077 + (-t254 * t706 + (t313 * t698 + t314 * t697 + t325) * t703 + t909) * t1079;
t1125 = t930 - t993;
t1123 = -t549 * t942 - t550 * t946 - t555 * t945 + t556 * t941 - t1158 - t1159;
t1052 = t697 / 0.2e1;
t1050 = -t698 / 0.2e1;
t1120 = -t703 / 0.2e1;
t1115 = (t1166 * t697 + t1167 * t698) * t706 + t1163 * t703;
t1114 = (t1164 * t697 + t1165 * t698) * t706 + t1162 * t703;
t936 = t703 * t706;
t870 = t865 * t936;
t1109 = t804 * (t870 - t936);
t1104 = t1160 * t697;
t1103 = t1160 * t698;
t608 = Icges(5,3) * t945 + t670;
t782 = Icges(5,2) * t703 + t965;
t610 = t782 * t697;
t616 = -Icges(4,2) * t945 - t675;
t978 = Icges(4,1) * t703;
t791 = -t699 - t978;
t618 = t791 * t697;
t1101 = (t554 + t610 + t549 - t618) * t706 + (t556 - t608 + t551 + t616) * t703;
t609 = Icges(5,3) * t941 + t671;
t611 = t782 * t698;
t656 = Icges(4,2) * t706 + t977;
t617 = t656 * t698;
t619 = t791 * t698;
t1100 = (-t550 + t619 + t553 - t611) * t706 + (-t552 + t617 + t555 + t609) * t703;
t471 = t592 * t698 - t594 * t697;
t407 = (-t471 - t937) * t935;
t832 = -t937 / 0.2e1;
t419 = (t832 - t471 / 0.2e1) * m(7);
t989 = m(7) * qJD(6);
t1098 = t419 * qJD(2) + t407 * t989;
t1097 = -t211 / 0.2e1 - t209 / 0.2e1;
t1096 = t210 / 0.2e1 + t208 / 0.2e1;
t262 = t373 * t698 + t697 * t892;
t362 = t492 * t698 + t495 * t697;
t872 = (-t1042 * t705 - t702 * t980) * t706;
t501 = t872 * t697;
t502 = t872 * t698;
t641 = (-rSges(6,1) * t705 + rSges(6,2) * t702) * t706;
t920 = (-t262 * t706 + (-t501 * t697 - t502 * t698) * t703) * t1077 + (-t1108 * t641 - t362 * t706) * t1079;
t1095 = (-t473 * t492 + t475 * t495 + (-t349 * t698 - t351 * t697) * t641) * t1154 + (-t1173 * t502 - t316 * t501 - t373 * t408 + t410 * t892) * t1153;
t1094 = (t1173 * t216 + t1184 * t376 + t217 * t316 - t305 * t375) * t1153 + (t313 * t349 + t314 * t351 + t379 * t435 - t380 * t436) * t1154;
t819 = -t729 / 0.2e1 - t730 / 0.2e1;
t821 = -t727 / 0.2e1 + t726 / 0.2e1;
t1089 = -t702 * (t636 / 0.2e1 + t635 / 0.2e1 - t821) - t705 * (t634 / 0.2e1 - t631 / 0.2e1 + t819);
t1088 = t702 * (t606 / 0.2e1 + t604 / 0.2e1) + t705 * (t602 / 0.2e1 - t596 / 0.2e1) + t725 / 0.2e1 + t728 / 0.2e1 + t651 / 0.2e1 - t782 / 0.2e1 - t699 + t968 / 0.2e1 - t978 / 0.2e1;
t1087 = t702 * t819 + t705 * t821 + t598 / 0.2e1 + t600 / 0.2e1 - Icges(5,3) * t1043 - Icges(5,6) * t703 - Icges(5,2) * t1119 - t656 / 0.2e1 + t659 / 0.2e1;
t1085 = 0.4e1 * qJD(1);
t1084 = 2 * qJD(3);
t1083 = 4 * qJD(3);
t1082 = 2 * qJD(5);
t1081 = 4 * qJD(5);
t1072 = m(6) * (t254 * t325 + t313 * t379 - t314 * t380);
t775 = -t1184 * t698 + t305 * t697;
t1070 = m(7) * (t216 * t592 - t217 * t594 + (-t229 * t703 + (t158 + t775) * t706) * t705);
t1068 = m(7) * (t1184 * t216 + t158 * t229 - t217 * t305);
t664 = t961 + t994;
t882 = t865 * t664;
t801 = -t697 * t630 + t698 * (t697 * pkin(4) + pkin(8) * t941) + t882;
t199 = t697 * t893 + t698 * t723 + t801;
t443 = (-t592 * t697 - t594 * t698) * t706;
t701 = t706 ^ 2;
t940 = t701 * t705;
t508 = t594 * t703 + t697 * t940;
t509 = t592 * t703 - t698 * t940;
t1066 = m(7) * (t199 * t443 + t229 * t471 - t408 * t509 - t410 * t508 + t775 * t935);
t1061 = m(7) * (t408 * t595 - t410 * t593 + t501 * t594 - t502 * t592 + (-t199 * t702 + t262 * t705) * t706);
t1060 = m(7) * (t199 * t262 + t408 * t501 + t410 * t502);
t1059 = m(7) * (t1173 * t508 + t1184 * t594 - t592 * t305 + t316 * t509);
t1049 = -t698 / 0.4e1;
t988 = rSges(4,1) * t706;
t816 = pkin(2) + t988;
t867 = rSges(4,2) * t946 + t698 * rSges(4,3);
t498 = -t697 * t816 + t815 + t867;
t679 = rSges(4,2) * t942;
t499 = t995 - t679 + t816 * t698 + (rSges(4,3) + pkin(7)) * t697;
t662 = rSges(4,1) * t703 + rSges(4,2) * t706;
t620 = t662 * t697;
t622 = t662 * t698;
t1039 = m(4) * (t498 * t620 - t499 * t622);
t333 = -t697 * (rSges(5,2) * t945 + t811) + t698 * (t697 * rSges(5,1) + rSges(5,3) * t942 - t681) + t882;
t891 = -t536 * t945 - t538 * t941;
t1035 = m(5) * (t1108 * t333 + t891);
t1034 = m(5) * (t429 * t506 + t430 * t507);
t1032 = m(5) * (-t429 * t946 + t430 * t942);
t241 = -t466 * t697 + t698 * t734 + t801;
t1028 = m(6) * (t241 * t362 + (t473 * t697 + t475 * t698) * t641);
t904 = -t473 * t945 - t475 * t941;
t1025 = m(6) * (t1108 * t241 + t904);
t1023 = m(6) * (t349 * t435 + t351 * t436);
t1020 = m(6) * (-t349 * t495 + t351 * t492);
t1019 = m(6) * (-t349 * t946 + t351 * t942);
t1014 = m(7) * (t1173 * t593 - t316 * t595 - t373 * t594 - t592 * t892);
t739 = (-t1173 * t698 - t316 * t697) * t935;
t1013 = m(7) * (-t375 * t594 + t376 * t592 + t739);
t1011 = m(7) * (-t592 * t408 - t410 * t594 + t739);
t906 = -t408 * t945 - t410 * t941;
t1010 = m(7) * (t1108 * t199 + t906);
t1009 = m(7) * (-t1173 * t892 + t316 * t373);
t1006 = m(7) * (t1173 * t376 + t316 * t375);
t1004 = m(7) * (-t1173 * t946 + t316 * t942);
t885 = t592 * t941 - t594 * t945;
t1001 = m(7) * ((0.2e1 - t865) * t703 * t935 + t885);
t1000 = (-t1108 * t705 - t471) * m(7) * t706;
t999 = m(7) * (t1108 * t935 + t885);
t991 = m(7) * qJD(3);
t990 = m(7) * qJD(5);
t68 = 0.2e1 * (t158 / 0.4e1 - t262 / 0.4e1) * m(7) + 0.2e1 * (t254 / 0.4e1 - t362 / 0.4e1) * m(6);
t947 = t68 * qJD(2);
t883 = t697 * (qJ(4) * t945 - t682) + t698 * t799;
t868 = rSges(5,2) * t706 - rSges(5,3) * t703 - t664;
t864 = qJD(1) * t703;
t863 = qJD(1) * t706;
t862 = qJD(3) * t703;
t861 = qJD(3) * t706;
t860 = qJD(5) * t703;
t859 = qJD(5) * t706;
t720 = t706 * t749 - t956;
t172 = -t517 * t594 - t525 * t595 + t697 * t720;
t719 = t706 * t748 - t955;
t173 = -t516 * t594 - t524 * t595 + t697 * t719;
t722 = t706 * t747 - t958;
t174 = t523 * t594 - t527 * t595 + t697 * t722;
t721 = t706 * t746 - t957;
t175 = t522 * t594 - t526 * t595 + t697 * t721;
t849 = (t1137 - t1194) * t1045 + ((t172 + t174) * t698 + (t173 + t175) * t697 + t1133) * t1043;
t176 = t517 * t592 + t525 * t593 + t698 * t720;
t177 = t516 * t592 + t524 * t593 + t698 * t719;
t178 = -t523 * t592 + t527 * t593 + t698 * t722;
t179 = -t522 * t592 + t526 * t593 + t698 * t721;
t848 = (-t781 - t780 + t1136) * t1045 + ((t176 + t178) * t698 + (t177 + t179) * t697 + t1134) * t1043;
t847 = (-t1130 + t1135) * t1120 + (t1140 * t697 + t1141 * t698 + t1131) * t1119;
t846 = t1050 * t1166 + t1052 * t1167;
t841 = t1121 * t1164 + t1122 * t1165;
t835 = t945 / 0.4e1;
t831 = -t932 / 0.2e1;
t828 = t1119 * t1130 + t1120 * t1131;
t825 = t221 / 0.2e1 + t223 / 0.2e1;
t824 = -t222 / 0.2e1 - t224 / 0.2e1;
t818 = t632 / 0.2e1 + t633 / 0.2e1;
t817 = t655 / 0.2e1 + t654 / 0.2e1;
t812 = -pkin(8) * t706 - t664;
t774 = t408 * t697 + t410 * t698;
t715 = (-t443 * t706 + (t508 * t698 + t509 * t697) * t703) * t1077;
t716 = m(7) * (t701 * t702 + (t593 * t698 - t595 * t697) * t703);
t234 = t715 - t716 / 0.2e1;
t415 = (t831 - t443 / 0.2e1) * m(7);
t761 = -t415 * qJD(2) + t234 * qJD(4);
t760 = t846 - t848;
t758 = -t841 - t849;
t741 = -pkin(8) * t1108 + t883;
t724 = -t1095 + (t1139 + t1163) * t697 / 0.4e1 + (t1138 + t1162) * t1049;
t714 = (t1129 * t698 - t1127 + t1132) * t1121 + (t1161 * t698 + (t551 * t706 - t554 * t703 - t1157) * t697) * t1050 + (t1129 * t697 + t1123 + t1159) * t1052;
t713 = t1127 * t1122 + t1132 * t1052 + ((t1157 + t1185) * t698 + t1123 + t1158 + t1174) * t1050;
t709 = (-t945 / 0.4e1 + t835) * (t1168 + t1169) + (t1049 + t698 / 0.4e1) * (t1171 + t1170);
t708 = -t1094 + t1135 * t1045 + t1131 * t1043 - (t1133 + t1175) * t946 / 0.4e1 + (t1137 + t1140) * t835 - (t1134 + t1176) * t942 / 0.4e1 + (t1136 + t1141) * t941 / 0.4e1;
t666 = -rSges(4,2) * t703 + t988;
t539 = t868 * t698;
t537 = t868 * t697;
t476 = (-t624 + t812) * t698;
t474 = -t683 + (-t624 - t664) * t697;
t472 = -t620 * t697 - t622 * t698;
t420 = m(7) * t832 + t1077 * t471;
t416 = m(7) * t831 + t1077 * t443;
t411 = (t812 - t874) * t698;
t409 = -t683 + (-t664 - t874) * t697;
t406 = t492 * t703 - t641 * t941;
t405 = -t495 * t703 + t641 * t945;
t384 = t756 + (m(5) + m(6) + m(7)) * t1045;
t377 = t999 / 0.2e1;
t372 = t1000 / 0.2e1;
t371 = t592 * t593 + t594 * t595 - t702 * t940;
t364 = t1001 / 0.2e1;
t363 = 0.4e1 * t1109;
t361 = t695 * t793 + t698 * t866 + t883;
t348 = t769 * t706;
t332 = (t703 * t632 + (t702 * t877 - t705 * t875) * t706) * t703;
t331 = (t703 * t633 + (-t702 * t878 - t705 * t876) * t706) * t703;
t320 = t373 * t703 - t502 * t706;
t319 = -t703 * t892 + t872 * t945;
t318 = t529 * t697 + t531 * t698 + t741;
t278 = 0.2e1 * t432;
t277 = t432 + t431;
t276 = 0.2e1 * t431;
t253 = t697 * t886 + t698 * t881 + t741;
t252 = t1177 * t706;
t233 = t715 + t716 / 0.2e1;
t220 = t377 + t364 - t1000 / 0.2e1;
t219 = t372 + t377 - t1001 / 0.2e1;
t218 = t372 + t364 - t999 / 0.2e1;
t124 = t1011 / 0.2e1;
t122 = t199 * t471 + t774 * t935;
t120 = t1013 / 0.2e1;
t114 = t1014 / 0.2e1;
t101 = t1184 * t508 + t229 * t443 - t305 * t509;
t94 = t1004 + t1019 + t1032;
t92 = t178 * t697 - t179 * t698;
t91 = t176 * t697 - t177 * t698;
t90 = t174 * t697 - t175 * t698;
t89 = t172 * t697 - t173 * t698;
t84 = t1059 / 0.2e1;
t78 = t1061 / 0.2e1;
t69 = (t254 + t362) * t1079 + (t158 + t262) * t1077;
t64 = t1089 * t706 + t818 * t703 + t1009 + t1020;
t63 = t1010 + t1025 + t1035;
t60 = t1066 / 0.2e1;
t29 = t1070 / 0.2e1;
t28 = t1087 * t703 - t1088 * t706 + t1006 + t1023 + t1034 + t1039;
t27 = t120 - t1011 / 0.2e1;
t26 = t124 + t120;
t25 = t124 - t1013 / 0.2e1;
t20 = t919 + t921;
t19 = t114 - t1059 / 0.2e1;
t18 = t84 + t114;
t17 = t84 - t1014 / 0.2e1;
t15 = t838 + t840;
t13 = t78 + t29 - t1066 / 0.2e1;
t12 = t60 + t78 - t1070 / 0.2e1;
t11 = t60 + t29 - t1061 / 0.2e1;
t10 = t930 + t993 - t920;
t9 = t920 - t1125;
t8 = t920 + t1125;
t7 = t697 * t846 + t698 * t841 + t1028 + t1060;
t5 = t697 * t714 + t698 * t713;
t4 = t1072 + t1068 + (t697 * t849 + t698 * t848 - t828) * t706 + (-t697 * t829 - t698 * t830 - t847) * t703;
t3 = t708 + t709 + (-t290 / 0.4e1 - t289 / 0.4e1 - t223 / 0.4e1 - t221 / 0.4e1) * t697 + (t224 / 0.4e1 + t222 / 0.4e1 + t292 / 0.4e1 + t291 / 0.4e1) * t698 + t1095;
t2 = (-t312 / 0.2e1 - t311 / 0.2e1 + (t342 / 0.4e1 + t341 / 0.4e1 + t286 / 0.4e1 + t283 / 0.4e1) * t698 + (t346 / 0.4e1 + t345 / 0.4e1 - t287 / 0.4e1 - t284 / 0.4e1) * t697) * t703 + t724 + t709 + (-t392 / 0.2e1 - t391 / 0.2e1 + (-t266 / 0.4e1 - t265 / 0.4e1 - t210 / 0.4e1 - t208 / 0.4e1) * t698 + (-t264 / 0.4e1 - t263 / 0.4e1 - t211 / 0.4e1 - t209 / 0.4e1) * t697) * t706 + t1094;
t1 = t724 + t708;
t6 = [t28 * qJD(3) + t94 * qJD(4) + t64 * qJD(5) + t181 * t989, 0, t28 * qJD(1) + t15 * qJD(4) + t1 * qJD(5) + t26 * qJD(6) + ((t429 * t539 + t430 * t537 - t506 * t538 - t507 * t536) * t1080 + (t349 * t476 + t351 * t474 - t435 * t475 - t436 * t473) * t1079 + (t1173 * t411 + t316 * t409 - t375 * t408 - t376 * t410) * t1077) * t1084 + ((-t263 / 0.2e1 - t264 / 0.2e1 + m(4) * (-t498 * t666 - t620 * t662) + t817 * t698 - t713 + t1097) * qJD(3) + (-t551 / 0.2e1 - t616 / 0.2e1 - t556 / 0.2e1 + t608 / 0.2e1) * t861 + (t549 / 0.2e1 - t618 / 0.2e1 + t554 / 0.2e1 + t610 / 0.2e1) * t862) * t698 + ((t265 / 0.2e1 + m(4) * (-t499 * t666 + t622 * t662) + t266 / 0.2e1 + t817 * t697 - t714 + t1096) * qJD(3) + (t552 / 0.2e1 - t617 / 0.2e1 - t555 / 0.2e1 - t609 / 0.2e1) * t861 + (-t550 / 0.2e1 + t619 / 0.2e1 + t553 / 0.2e1 - t611 / 0.2e1) * t862) * t697, qJD(1) * t94 + qJD(3) * t15 + qJD(5) * t20 + qJD(6) * t277, t64 * qJD(1) + t1 * qJD(3) + t20 * qJD(4) + (t331 + t332) * qJD(5) + t18 * qJD(6) + ((t1173 * t319 - t1184 * t892 - t305 * t373 + t316 * t320) * t1077 + (t349 * t405 + t351 * t406 - t379 * t495 - t380 * t492) * t1079) * t1082 + ((t290 / 0.2e1 + t289 / 0.2e1 + t825) * t698 + (t292 / 0.2e1 + t291 / 0.2e1 - t824) * t697) * t859, t26 * qJD(3) + t277 * qJD(4) + t18 * qJD(5) + t1189; 0, 0 (m(4) * t472 / 0.2e1 + t361 * t1080 + t318 * t1079 + t253 * t1077) * t1084 + t384 * qJD(4) + t69 * qJD(5) + t420 * qJD(6), t384 * qJD(3), t69 * qJD(3) + (t1077 * t252 - t1079 * t348) * t1082 + t416 * qJD(6), qJD(3) * t420 + qJD(5) * t416; t5 * qJD(3) - t14 * qJD(4) + t2 * qJD(5) + t25 * qJD(6) + (-t1039 / 0.4e1 - t1034 / 0.4e1 - t1023 / 0.4e1 - t1006 / 0.4e1) * t1085 + t1088 * t863 - t1087 * t864, qJD(4) * t385 - qJD(5) * t68 - qJD(6) * t419, t5 * qJD(1) + t63 * qJD(4) + t7 * qJD(5) + t122 * t989 + (m(4) * (t662 * t666 * t865 + (t697 * (rSges(4,1) * t945 - t867) + t698 * (rSges(4,1) * t941 + t697 * rSges(4,3) - t679)) * t472) + m(7) * (t199 * t253 - t408 * t409 - t410 * t411) + m(6) * (t241 * t318 - t473 * t474 - t475 * t476) + m(5) * (t333 * t361 - t536 * t537 - t538 * t539) + (t91 + t92 + t1103 * t695 + (t1101 * t698 + (t1100 - t1104) * t697) * t698) * t1052 + (t89 + t90 + t1104 * t696 + (t1100 * t697 + (t1101 - t1103) * t698) * t697) * t1050) * qJD(3), t63 * qJD(3) + t8 * qJD(5) + t219 * qJD(6) + (-0.4e1 * t1109 + 0.2e1 * t803 * (-t1108 * t706 + t870)) * qJD(4) + t1193, t2 * qJD(1) - t947 + t7 * qJD(3) + t8 * qJD(4) + (t1050 * t1114 + t1052 * t1115) * qJD(5) + t12 * qJD(6) + (-t1072 / 0.4e1 - t1068 / 0.4e1) * t1081 + ((-t1184 * t502 + t199 * t252 + t229 * t262 + t305 * t501 - t319 * t410 - t320 * t408) * t1077 + (-t241 * t348 + t325 * t362 - t405 * t475 - t406 * t473 + (-t379 * t698 + t380 * t697) * t641) * t1079) * t1082 + ((t824 + t830) * t698 + (t825 + t829) * t697 + t847) * t860 + (t697 * t758 + t698 * t760 + t828) * t859, t25 * qJD(1) + t219 * qJD(4) + t12 * qJD(5) + t122 * t991 - t1098; t14 * qJD(3) - t22 * qJD(5) + t278 * qJD(6) + (-t1004 / 0.4e1 - t1019 / 0.4e1 - t1032 / 0.4e1) * t1085, -t385 * qJD(3), t363 * qJD(4) + t9 * qJD(5) + t218 * qJD(6) + (-t1010 / 0.4e1 - t1025 / 0.4e1 - t1035 / 0.4e1) * t1083 + ((-t253 * t706 + t906) * t1077 + (-t318 * t706 + t904) * t1079 + (-t361 * t706 + t891) * t1080 + ((t409 * t697 + t411 * t698 + t199) * t1077 + (t474 * t697 + t476 * t698 + t241) * t1079 + (t537 * t697 + t539 * t698 + t333) * t1080) * t703) * t1084 - t1193, t363 * qJD(3), -t1195 + t9 * qJD(3) + ((t348 * t706 + (t405 * t698 + t406 * t697) * t703) * t1079 + (-t252 * t706 + (t319 * t698 + t320 * t697) * t703) * t1077) * t1082 + t233 * qJD(6), qJD(1) * t278 + qJD(3) * t218 + qJD(5) * t233; t3 * qJD(3) + t22 * qJD(4) + t17 * qJD(6) - t818 * t864 + (-t1009 / 0.4e1 - t1020 / 0.4e1) * t1085 - t1089 * t863, qJD(3) * t68 - qJD(6) * t415, t3 * qJD(1) + t947 + t10 * qJD(4) + t4 * qJD(5) + t11 * qJD(6) + (-t1060 / 0.4e1 - t1028 / 0.4e1) * t1083 + ((t241 * t254 - t313 * t475 - t314 * t473 + t318 * t325 + t379 * t476 - t380 * t474) * t1079 + (t1184 * t411 + t158 * t199 - t216 * t410 - t217 * t408 + t229 * t253 - t305 * t409) * t1077) * t1084 + (((t92 / 0.2e1 + t91 / 0.2e1 + t284 / 0.2e1 + t287 / 0.2e1) * t706 + (-t1168 / 0.2e1 - t1169 / 0.2e1 + t1097) * t703 + t758) * t698 + ((t283 / 0.2e1 + t286 / 0.2e1 + t90 / 0.2e1 + t89 / 0.2e1) * t706 + (t1196 * t1121 + t1122 * t1197 + t1096) * t703 - t760) * t697) * qJD(3), qJD(3) * t10 + qJD(6) * t234 + t1195, t4 * qJD(3) + (t332 / 0.2e1 + t331 / 0.2e1) * t860 + ((t1184 * t319 + t229 * t252 - t305 * t320) * t1076 + (-t325 * t348 + t379 * t405 - t380 * t406) * t1078) * t1081 + t101 * t989 + (t1114 * t1052 + t1115 * t1121 + (t1138 * t697 + t1139 * t698) * t1045) * t859, t17 * qJD(1) + t11 * qJD(3) + t101 * t990 + (t443 * t935 + t508 * t592 - t509 * t594 - t371) * t989 + t761; t27 * qJD(3) + t276 * qJD(4) + t19 * qJD(5) - t1189, qJD(3) * t419 + qJD(5) * t415, t27 * qJD(1) + (-t409 * t594 + t411 * t592 - t122 + (-t703 * t199 + (t253 + t774) * t706) * t705) * t991 + t220 * qJD(4) + t13 * qJD(5) + t1098, qJD(1) * t276 + qJD(3) * t220 - qJD(5) * t234, t19 * qJD(1) + t13 * qJD(3) + (t1184 * t593 + t305 * t595 + t319 * t592 - t320 * t594 + (-t229 * t702 + t252 * t705) * t706 - t101) * t990 + t371 * t989 - t761, 0.4e1 * (t407 * qJD(3) / 0.4e1 + t371 * qJD(5) / 0.4e1) * m(7);];
Cq  = t6;