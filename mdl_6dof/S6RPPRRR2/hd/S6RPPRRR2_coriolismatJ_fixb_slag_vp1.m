% Calculate matrix of centrifugal and coriolis load on the joints for
% S6RPPRRR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d5,d6,theta2,theta3]';
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
% Datum: 2019-03-09 02:21
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S6RPPRRR2_coriolismatJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRRR2_coriolismatJ_fixb_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRRR2_coriolismatJ_fixb_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RPPRRR2_coriolismatJ_fixb_slag_vp1: pkin has to be [11x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPPRRR2_coriolismatJ_fixb_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RPPRRR2_coriolismatJ_fixb_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RPPRRR2_coriolismatJ_fixb_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 02:20:20
% EndTime: 2019-03-09 02:21:09
% DurationCPUTime: 42.35s
% Computational Cost: add. (195637->1048), mult. (138704->1507), div. (0->0), fcn. (152089->11), ass. (0->650)
t874 = 2 * m(7);
t717 = cos(qJ(5));
t701 = pkin(5) * t717 + pkin(4);
t1052 = pkin(4) - t701;
t711 = pkin(11) + qJ(4);
t705 = sin(t711);
t1130 = t1052 * t705;
t719 = -pkin(9) - pkin(8);
t1050 = pkin(8) + t719;
t707 = cos(t711);
t1131 = t1050 * t707;
t588 = -t1130 + t1131;
t712 = qJ(1) + pkin(10);
t706 = sin(t712);
t986 = t705 * t706;
t557 = t588 * t986;
t713 = qJ(5) + qJ(6);
t710 = cos(t713);
t1040 = rSges(7,1) * t710;
t709 = sin(t713);
t802 = -rSges(7,2) * t709 + t1040;
t605 = -rSges(7,3) * t707 + t705 * t802;
t576 = t605 * t986;
t708 = cos(t712);
t955 = t708 * t710;
t977 = t706 * t709;
t630 = t707 * t977 + t955;
t956 = t708 * t709;
t976 = t706 * t710;
t631 = t707 * t976 - t956;
t1134 = -t631 * rSges(7,1) + t630 * rSges(7,2);
t492 = -rSges(7,3) * t986 + t1134;
t1054 = t707 * pkin(4);
t1132 = t1050 * t705;
t965 = t707 * t701;
t666 = t706 * t965;
t715 = sin(qJ(5));
t954 = t708 * t715;
t500 = pkin(5) * t954 - t666 + (t1054 + t1132) * t706;
t917 = -t492 - t500;
t330 = t707 * t917 + t557 + t576;
t1183 = -t492 * t707 + t576;
t996 = t500 * t707;
t331 = t1183 + t557 - t996;
t931 = t330 - t331;
t1192 = t931 * t874;
t525 = -rSges(7,1) * t630 - rSges(7,2) * t631;
t985 = t705 * t708;
t496 = t525 * t985;
t632 = -t707 * t956 + t976;
t633 = t707 * t955 + t977;
t526 = t632 * rSges(7,1) - t633 * rSges(7,2);
t399 = -t526 * t986 + t496;
t398 = 0.2e1 * t399;
t1046 = m(7) * qJD(1);
t1177 = -t1046 / 0.4e1;
t1176 = -(m(6) * qJD(1)) / 0.4e1;
t1043 = m(7) * qJD(6);
t852 = t986 / 0.4e1;
t854 = -t986 / 0.4e1;
t1191 = t854 + t852;
t553 = t605 * t706;
t1038 = rSges(7,3) * t705;
t606 = t707 * t802 + t1038;
t978 = t706 * t707;
t858 = -t707 * t553 + t605 * t978 + t606 * t986;
t343 = t492 * t705 + t858;
t803 = rSges(7,1) * t633 + rSges(7,2) * t632;
t493 = rSges(7,3) * t985 + t803;
t474 = t705 * t493;
t964 = t707 * t708;
t888 = t705 * rSges(7,2) * t956 + rSges(7,3) * t964;
t554 = -rSges(7,1) * t705 * t955 + t888;
t344 = -t606 * t985 + t474 + (-t605 * t708 - t554) * t707;
t228 = 0.2e1 * t343 * t706 - 0.2e1 * t344 * t708;
t1190 = t228 * t1043;
t1041 = rSges(6,1) * t717;
t805 = -rSges(6,2) * t715 + t1041;
t757 = t805 * t705;
t628 = -rSges(6,3) * t707 + t757;
t953 = t708 * t717;
t975 = t706 * t715;
t656 = t707 * t975 + t953;
t974 = t706 * t717;
t657 = t707 * t974 - t954;
t1133 = -t657 * rSges(6,1) + t656 * rSges(6,2);
t515 = -rSges(6,3) * t986 + t1133;
t969 = t515 * t707;
t1188 = t628 * t986 - t969;
t793 = Icges(7,5) * t710 - Icges(7,6) * t709;
t599 = -Icges(7,3) * t707 + t705 * t793;
t1024 = Icges(7,4) * t710;
t796 = -Icges(7,2) * t709 + t1024;
t601 = -Icges(7,6) * t707 + t705 * t796;
t1025 = Icges(7,4) * t709;
t798 = Icges(7,1) * t710 - t1025;
t603 = -Icges(7,5) * t707 + t705 * t798;
t382 = t599 * t985 + t601 * t632 + t603 * t633;
t482 = Icges(7,5) * t631 - Icges(7,6) * t630 + Icges(7,3) * t986;
t616 = Icges(7,4) * t631;
t485 = -Icges(7,2) * t630 + Icges(7,6) * t986 + t616;
t615 = Icges(7,4) * t630;
t489 = -Icges(7,1) * t631 - Icges(7,5) * t986 + t615;
t288 = t482 * t985 + t632 * t485 - t489 * t633;
t484 = Icges(7,5) * t633 + Icges(7,6) * t632 + Icges(7,3) * t985;
t1026 = Icges(7,4) * t633;
t487 = Icges(7,2) * t632 + Icges(7,6) * t985 + t1026;
t617 = Icges(7,4) * t632;
t490 = Icges(7,1) * t633 + Icges(7,5) * t985 + t617;
t289 = t484 * t985 + t632 * t487 + t633 * t490;
t790 = t288 * t706 + t289 * t708;
t1181 = -t382 * t707 + t705 * t790;
t855 = -t986 / 0.2e1;
t1187 = t1181 * t855;
t794 = Icges(6,5) * t717 - Icges(6,6) * t715;
t622 = -Icges(6,3) * t707 + t705 * t794;
t1027 = Icges(6,4) * t717;
t797 = -Icges(6,2) * t715 + t1027;
t624 = -Icges(6,6) * t707 + t705 * t797;
t1028 = Icges(6,4) * t715;
t799 = Icges(6,1) * t717 - t1028;
t626 = -Icges(6,5) * t707 + t705 * t799;
t395 = t622 * t986 - t624 * t656 + t626 * t657;
t505 = Icges(6,5) * t657 - Icges(6,6) * t656 + Icges(6,3) * t986;
t641 = Icges(6,4) * t657;
t508 = -Icges(6,2) * t656 + Icges(6,6) * t986 + t641;
t640 = Icges(6,4) * t656;
t512 = -Icges(6,1) * t657 - Icges(6,5) * t986 + t640;
t317 = t505 * t986 - t508 * t656 - t512 * t657;
t658 = -t707 * t954 + t974;
t659 = t707 * t953 + t975;
t507 = Icges(6,5) * t659 + Icges(6,6) * t658 + Icges(6,3) * t985;
t1029 = Icges(6,4) * t659;
t510 = Icges(6,2) * t658 + Icges(6,6) * t985 + t1029;
t642 = Icges(6,4) * t658;
t513 = Icges(6,1) * t659 + Icges(6,5) * t985 + t642;
t318 = t507 * t986 - t656 * t510 + t657 * t513;
t789 = t317 * t706 + t318 * t708;
t162 = -t707 * t395 + t705 * t789;
t380 = t599 * t986 - t601 * t630 + t603 * t631;
t286 = t482 * t986 - t485 * t630 - t489 * t631;
t287 = t484 * t986 - t630 * t487 + t631 * t490;
t791 = t286 * t706 + t287 * t708;
t153 = -t380 * t707 + t705 * t791;
t1171 = t508 * t715 + t512 * t717;
t994 = t505 * t707;
t346 = t1171 * t705 + t994;
t1172 = t485 * t709 + t489 * t710;
t999 = t482 * t707;
t325 = t1172 * t705 + t999;
t1179 = -t288 * t708 + t289 * t706;
t1186 = t1191 * t1179;
t1135 = -t706 * t525 - t708 * t526;
t1173 = t1135 * t874;
t1185 = -t1173 / 0.4e1;
t404 = t1173 / 0.4e1;
t703 = t706 ^ 2;
t704 = t708 ^ 2;
t1184 = t703 + t704;
t397 = t622 * t985 + t624 * t658 + t626 * t659;
t319 = t505 * t985 + t658 * t508 - t512 * t659;
t320 = t507 * t985 + t658 * t510 + t659 * t513;
t788 = t319 * t706 + t320 * t708;
t1182 = -t707 * t397 + t705 * t788;
t1180 = -t319 * t708 + t320 * t706;
t1178 = -t705 / 0.2e1;
t827 = t874 / 0.4e1;
t841 = t978 / 0.4e1;
t1170 = 2 * m(6);
t1175 = -t1170 / 0.4e1;
t830 = t1170 / 0.4e1;
t900 = t603 + (-Icges(7,2) * t710 - t1025) * t705;
t1174 = t709 * t900;
t1103 = m(6) / 0.4e1;
t1101 = m(7) / 0.4e1;
t1089 = t705 / 0.2e1;
t1088 = t706 / 0.2e1;
t1087 = t706 / 0.4e1;
t1086 = -t707 / 0.2e1;
t1085 = -t708 / 0.2e1;
t1084 = -t708 / 0.4e1;
t1158 = t628 * t706;
t549 = t601 * t706;
t551 = t603 * t706;
t765 = -t599 * t706 + t1172;
t243 = -t765 * t707 + (t549 * t709 - t551 * t710 + t482) * t705;
t602 = Icges(7,6) * t705 + t707 * t796;
t604 = Icges(7,5) * t705 + t707 * t798;
t600 = Icges(7,3) * t705 + t707 * t793;
t950 = t710 * t603;
t952 = t709 * t601;
t776 = t950 - t952;
t761 = t600 - t776;
t990 = t599 * t707;
t730 = t705 * t761 + t990;
t281 = -t602 * t630 + t604 * t631 + t706 * t730;
t1156 = t243 + t281;
t550 = t601 * t708;
t552 = t603 * t708;
t782 = -t487 * t709 + t490 * t710;
t764 = -t599 * t708 - t782;
t244 = -t764 * t707 + (t550 * t709 - t552 * t710 + t484) * t705;
t282 = t602 * t632 + t604 * t633 + t708 * t730;
t1155 = t244 + t282;
t1153 = -t325 + t380;
t998 = t484 * t707;
t326 = t705 * t782 - t998;
t1152 = t326 + t382;
t592 = Icges(5,4) * t978 - Icges(5,2) * t986 - Icges(5,6) * t708;
t1021 = Icges(5,2) * t705;
t698 = Icges(5,4) * t707;
t593 = Icges(5,6) * t706 + (t698 - t1021) * t708;
t1030 = Icges(5,4) * t705;
t672 = Icges(5,1) * t707 - t1030;
t595 = Icges(5,5) * t706 + t672 * t708;
t565 = t595 * t978;
t668 = Icges(5,5) * t707 - Icges(5,6) * t705;
t591 = Icges(5,3) * t706 + t708 * t668;
t819 = t708 * t591 - t565;
t590 = Icges(5,5) * t978 - Icges(5,6) * t986 - Icges(5,3) * t708;
t681 = Icges(5,4) * t986;
t594 = Icges(5,1) * t978 - Icges(5,5) * t708 - t681;
t907 = -t706 * t590 - t594 * t964;
t1151 = -t592 * t985 - t593 * t986 - t819 - t907;
t676 = t705 * pkin(4) - t707 * pkin(8);
t905 = t588 + t605;
t857 = t676 + t905;
t452 = t857 * t708;
t1000 = t452 * t708;
t674 = rSges(5,1) * t705 + rSges(5,2) * t707;
t1138 = t674 * t1184;
t1144 = 2 * m(5);
t450 = t857 * t706;
t1001 = t450 * t706;
t440 = -0.2e1 * t1001;
t891 = t628 + t676;
t534 = t891 * t706;
t992 = t534 * t706;
t518 = -0.2e1 * t992;
t536 = t891 * t708;
t991 = t536 * t708;
t860 = (t440 - 0.2e1 * t1000) * t1101 + (t518 - 0.2e1 * t991) * t1103 - t1138 * t1144 / 0.4e1;
t929 = (t440 + 0.2e1 * t1001) * t1101 + (t518 + 0.2e1 * t992) * t1103;
t1150 = t860 - t929;
t1055 = t705 * pkin(8);
t872 = pkin(5) * t975;
t812 = -t719 * t985 + t872;
t834 = t1052 * t707;
t501 = (-t834 - t1055) * t708 + t812;
t916 = t493 + t501;
t1137 = t707 * t916;
t332 = t905 * t985 + t1137;
t1009 = t332 * t706;
t1126 = t331 * t708 - t1009;
t209 = 0.2e1 * t1126;
t806 = rSges(6,1) * t659 + rSges(6,2) * t658;
t516 = rSges(6,3) * t985 + t806;
t968 = t707 * t516;
t437 = t628 * t985 + t968;
t1002 = t437 * t706;
t1128 = t1188 * t708 - t1002;
t336 = 0.2e1 * t1128;
t934 = t1101 * t209 + t1103 * t336;
t1104 = -0.2e1 * t708;
t944 = (t1104 * t330 + 0.2e1 * t1009 + t209) * t1101 + (t1104 * t1188 + 0.2e1 * t1002 + t336) * t1103;
t1149 = t934 - t944;
t1032 = -rSges(7,3) + t719;
t1051 = -pkin(7) - qJ(3);
t1053 = sin(qJ(1)) * pkin(1);
t1056 = pkin(5) * t715;
t700 = cos(pkin(11)) * pkin(3) + pkin(2);
t401 = (t1032 * t705 - t700) * t706 + (-t1051 + t1056) * t708 - t666 - t1053 + t1134;
t1082 = rSges(6,3) + pkin(8);
t1123 = t1082 * t705 + t1054 + t700;
t770 = -t1051 * t708 - t1053;
t433 = -t1123 * t706 + t1133 + t770;
t1057 = cos(qJ(1)) * pkin(1);
t832 = -t706 * t1051 + t1057;
t402 = (t700 + t965 + t1038) * t708 + t803 + t812 + t832;
t643 = t656 * pkin(5);
t462 = -t525 + t643;
t545 = -rSges(6,1) * t656 - rSges(6,2) * t657;
t546 = rSges(6,1) * t658 - rSges(6,2) * t659;
t655 = (-rSges(7,1) * t709 - rSges(7,2) * t710) * t705;
t813 = t1056 * t705 - t655;
t558 = t813 * t706;
t559 = t813 * t708;
t663 = (-rSges(6,1) * t715 - rSges(6,2) * t717) * t705;
t434 = t1123 * t708 + t806 + t832;
t784 = t433 * t708 + t434 * t706;
t644 = t658 * pkin(5);
t910 = -t526 - t644;
t1148 = (t401 * t559 + t402 * t558 + t450 * t910 - t452 * t462) * t827 + (-t534 * t546 + t536 * t545 - t663 * t784) * t830;
t686 = pkin(4) * t986;
t532 = t686 + (-t705 * t701 - t1131) * t706;
t589 = -t834 - t1132;
t230 = (t588 * t706 + t532) * t707 + (t589 * t706 - t917) * t705 + t858;
t904 = -t589 - t606;
t687 = pkin(8) * t964;
t963 = t707 * t719;
t533 = -t687 + (-t963 + t1130) * t708;
t908 = t533 + t554;
t231 = t474 + (t708 * t904 + t501) * t705 + (-t708 * t905 - t908) * t707;
t629 = rSges(6,3) * t705 + t707 * t805;
t361 = (t629 * t706 + t515) * t705;
t887 = t705 * rSges(6,2) * t954 + rSges(6,3) * t964;
t575 = -rSges(6,1) * t705 * t953 + t887;
t362 = (-t628 * t708 - t575) * t707 + (-t629 * t708 + t516) * t705;
t472 = (t1032 * t707 + (t701 + t802) * t705) * t706;
t473 = (-t963 + (-t701 - t1040) * t705) * t708 + t888;
t497 = t686 + (-t1082 * t707 + t757) * t706;
t498 = t687 + (-pkin(4) - t1041) * t985 + t887;
t1147 = (t1188 * t497 + t361 * t433 + t362 * t434 - t437 * t498) * t1175 - (t230 * t401 + t231 * t402 + t331 * t472 - t332 * t473) * t874 / 0.4e1;
t1146 = t450 * t1192 / 0.4e1;
t652 = (-Icges(7,5) * t709 - Icges(7,6) * t710) * t705;
t967 = t707 * t652;
t1145 = -t967 / 0.2e1 + t1174 * t1178;
t1083 = t708 / 0.2e1;
t923 = -t492 * t964 - t553 * t985;
t898 = t706 * (pkin(8) * t978 - t686) + t708 * (-pkin(4) * t985 + t687);
t779 = -t515 * t708 - t516 * t706;
t306 = t779 * t707 + (-t1158 * t708 - t575 * t706) * t705;
t997 = t493 * t707;
t424 = t605 * t985 + t997;
t1004 = t424 * t706;
t1127 = t1183 * t708 - t1004;
t519 = -Icges(7,5) * t630 - Icges(7,6) * t631;
t920 = -Icges(7,2) * t631 - t489 - t615;
t922 = -Icges(7,1) * t630 - t485 - t616;
t223 = t519 * t986 - t630 * t920 + t631 * t922;
t520 = Icges(7,5) * t632 - Icges(7,6) * t633;
t919 = -Icges(7,2) * t633 + t490 + t617;
t921 = Icges(7,1) * t632 - t1026 - t487;
t224 = t520 * t986 - t630 * t919 + t631 * t921;
t122 = -t223 * t708 + t224 * t706;
t225 = t519 * t985 + t632 * t920 + t633 * t922;
t226 = t520 * t985 + t632 * t919 + t633 * t921;
t123 = -t225 * t708 + t226 * t706;
t943 = t1085 * t122 + t1088 * t123;
t949 = t710 * t604;
t951 = t709 * t602;
t321 = -t761 * t707 + (t599 + t949 - t951) * t705;
t419 = t705 * t776 - t990;
t787 = -t325 * t706 + t326 * t708;
t1125 = ((-t321 + t787) * t707 + (t243 * t706 + t244 * t708 + t419) * t705) * t1086 + (-t419 * t707 + t705 * t787) * t1089;
t1124 = t1086 * t321 + t419 * t1089;
t430 = t545 * t706 + t546 * t708;
t928 = (t462 * t706 + t708 * t910) * t827 + t430 * t1175;
t469 = t492 * t985;
t995 = t500 * t708;
t276 = -t469 + (-t706 * t916 - t995) * t705;
t442 = t707 * t525 + t655 * t986;
t443 = -t526 * t707 - t655 * t985;
t810 = t276 * t399 + t331 * t442 - t332 * t443;
t1031 = Icges(5,1) * t705;
t1042 = rSges(5,1) * t707;
t825 = t700 + t1042;
t886 = rSges(5,2) * t986 + t708 * rSges(5,3);
t530 = -t706 * t825 + t770 + t886;
t824 = -rSges(5,2) * t985 + rSges(5,3) * t706;
t531 = t708 * t825 + t824 + t832;
t623 = Icges(6,3) * t705 + t707 * t794;
t645 = t674 * t706;
t646 = t674 * t708;
t946 = t717 * t626;
t948 = t715 * t624;
t1122 = -m(5) * (t530 * t645 - t531 * t646) - (t950 / 0.2e1 - t952 / 0.2e1 - t600 / 0.2e1 + t946 / 0.2e1 - t948 / 0.2e1 - t623 / 0.2e1 + t698 + t1031 / 0.2e1 - t1021 / 0.2e1) * t707;
t774 = t645 * t706 + t646 * t708;
t859 = (t472 * t706 - t473 * t708) * t827 + (t497 * t706 - t498 * t708) * t830 + t774 * t1144 / 0.4e1;
t661 = (-Icges(6,2) * t717 - t1028) * t705;
t662 = (-Icges(6,1) * t715 - t1027) * t705;
t1121 = -t715 * (t626 / 0.2e1 + t661 / 0.2e1) + t717 * (t662 / 0.2e1 - t624 / 0.2e1);
t539 = -Icges(6,5) * t656 - Icges(6,6) * t657;
t913 = -Icges(6,2) * t657 - t512 - t640;
t915 = -Icges(6,1) * t656 - t508 - t641;
t272 = -t539 * t707 + (-t715 * t913 + t717 * t915) * t705;
t540 = Icges(6,5) * t658 - Icges(6,6) * t659;
t912 = -Icges(6,2) * t659 + t513 + t642;
t914 = Icges(6,1) * t658 - t1029 - t510;
t273 = -t540 * t707 + (-t715 * t912 + t717 * t914) * t705;
t660 = (-Icges(6,5) * t715 - Icges(6,6) * t717) * t705;
t892 = t626 + t661;
t893 = -t624 + t662;
t339 = -t656 * t892 + t657 * t893 + t660 * t986;
t340 = t658 * t892 + t659 * t893 + t660 * t985;
t1120 = t1148 + (t273 + t340) * t1087 + (t272 + t339) * t1084;
t260 = -t520 * t707 + (-t709 * t919 + t710 * t921) * t705;
t1015 = t260 * t706;
t259 = -t519 * t707 + (-t709 * t920 + t710 * t922) * t705;
t1016 = t259 * t708;
t654 = (-Icges(7,1) * t709 - t1024) * t705;
t901 = -t601 + t654;
t303 = -t630 * t900 + t631 * t901 + t652 * t986;
t304 = t632 * t900 + t633 * t901 + t652 * t985;
t817 = -t1016 / 0.4e1 + t1015 / 0.4e1 + t304 * t1087 + t303 * t1084;
t961 = t708 * t1181;
t1119 = t1181 * t1084 + t961 / 0.4e1;
t960 = t708 * t1182;
t980 = t706 * t162;
t1118 = t980 / 0.4e1 + t960 / 0.4e1 - t162 * t1087 + t1182 * t1084 - t1146 + t1191 * t1180;
t636 = -Icges(5,2) * t978 - t681;
t669 = Icges(5,2) * t707 + t1030;
t637 = t669 * t708;
t800 = -t698 - t1031;
t638 = t800 * t706;
t639 = t800 * t708;
t1117 = (t708 * (t592 - t638) + (-t593 + t639) * t706) * t707 + (t708 * (t594 + t636) + (-t595 + t637) * t706) * t705;
t570 = t624 * t706;
t572 = t626 * t706;
t763 = -t622 * t706 + t1171;
t261 = -t763 * t707 + (t570 * t715 - t572 * t717 + t505) * t705;
t571 = t624 * t708;
t573 = t626 * t708;
t780 = -t510 * t715 + t513 * t717;
t762 = -t622 * t708 - t780;
t262 = -t762 * t707 + (t571 * t715 - t573 * t717 + t507) * t705;
t625 = Icges(6,6) * t705 + t707 * t797;
t627 = Icges(6,5) * t705 + t707 * t799;
t775 = t946 - t948;
t760 = t623 - t775;
t989 = t622 * t707;
t729 = t705 * t760 + t989;
t301 = -t625 * t656 + t627 * t657 + t706 * t729;
t302 = t625 * t658 + t627 * t659 + t708 * t729;
t993 = t507 * t707;
t347 = t705 * t780 - t993;
t945 = t717 * t627;
t947 = t715 * t625;
t349 = -t760 * t707 + (t622 + t945 - t947) * t705;
t438 = t705 * t775 - t989;
t838 = t964 / 0.4e1;
t848 = t985 / 0.4e1;
t1116 = t349 * t1086 + t438 * t1089 - t1147 + (t261 + t301) * t852 + (t262 + t302) * t848 + (-t346 + t395) * t841 + (t347 + t397) * t838;
t1109 = 0.2e1 * t1183;
t1108 = -0.2e1 * t424;
t1107 = 0.2e1 * t442;
t1106 = -0.2e1 * t525;
t1105 = -0.2e1 * t526;
t1102 = m(7) / 0.2e1;
t182 = (t532 * t705 - t996) * t708 + (-t705 * t908 - t1137) * t706 + t923;
t290 = (-t554 * t705 - t997) * t706 + t923;
t379 = -t493 * t986 - t469;
t1099 = (t1183 * t230 + t182 * t379 - t231 * t424 + t276 * t290 + t331 * t343 - t332 * t344) * t874;
t1097 = t424 * t1192;
t677 = t1054 + t1055;
t897 = t1184 * t677;
t265 = t706 * t917 + t708 * t916 + t897;
t204 = t265 * t398;
t356 = t452 * t1107;
t357 = -0.2e1 * t443 * t450;
t861 = t204 - t356 + t357;
t873 = 0.2e1 * t655;
t1095 = m(7) * (-t1126 * t873 - 0.2e1 * t1135 * t276 + t861);
t363 = -t643 * t706 + t644 * t708 - t1135;
t1093 = m(7) * (t1108 * t558 + t1109 * t559 + 0.2e1 * t363 * t379 + t861);
t1092 = (t1183 * t472 + t343 * t401 + t344 * t402 - t424 * t473) * t874;
t1091 = -t1182 / 0.2e1;
t1090 = t272 / 0.2e1;
t327 = t401 * t1107;
t328 = 0.2e1 * t443 * t402;
t932 = t327 + t328;
t1070 = m(7) * (t1105 * t332 + t1106 * t331 + t932);
t1068 = m(7) * (-t1108 * t910 + t1109 * t462 + t932);
t785 = t401 * t708 + t402 * t706;
t1066 = m(7) * (t1105 * t450 - t1106 * t452 - t785 * t873);
t316 = 0.2e1 * t1127;
t1065 = m(7) * (t1104 * t1183 + 0.2e1 * t1004 + t316);
t1063 = m(7) * t316;
t1048 = m(6) * qJD(4);
t1047 = m(6) * qJD(5);
t1045 = m(7) * qJD(4);
t1044 = m(7) * qJD(5);
t1033 = rSges(4,3) + qJ(3);
t364 = -t967 + (t710 * t901 - t1174) * t705;
t1008 = t364 * t707;
t987 = t705 * t592;
t983 = t705 * t710;
t966 = t707 * t660;
t909 = t532 - t553;
t906 = t706 * t591 + t595 * t964;
t890 = -t629 - t677;
t884 = qJD(1) * t705;
t883 = qJD(5) * t705;
t882 = qJD(5) * t707;
t879 = t228 * qJD(3);
t816 = -0.2e1 * t493 * t978 - 0.2e1 * t554 * t986 + 0.2e1 * t923;
t756 = t816 * t1101;
t241 = t404 + t756;
t878 = t241 * qJD(2);
t849 = t985 / 0.2e1;
t853 = t986 / 0.2e1;
t89 = -t303 * t707 + (t223 * t706 + t224 * t708) * t705;
t90 = -t304 * t707 + (t225 * t706 + t226 * t708) * t705;
t871 = t90 * t849 + t89 * t853 + (-t1008 + (t259 * t706 + t260 * t708) * t705) * t1086;
t866 = t1044 / 0.2e1;
t865 = t1043 / 0.2e1;
t862 = t1182 / 0.2e1 + t1091;
t856 = -t677 + t904;
t845 = -t983 / 0.2e1;
t844 = t983 / 0.2e1;
t842 = t978 / 0.2e1;
t839 = t964 / 0.2e1;
t828 = t874 / 0.2e1;
t818 = t705 * t593 - t590;
t809 = t1181 * t853 + t1187;
t801 = t601 * t845 + t654 * t844 + t1145;
t795 = -Icges(5,5) * t705 - Icges(5,6) * t707;
t751 = (t361 * t706 - t362 * t708) * t1170;
t82 = -t751 / 0.4e1 + ((-t558 / 0.2e1 + t231 / 0.2e1) * t708 + (t559 / 0.2e1 - t230 / 0.2e1) * t706) * m(7);
t720 = (t816 + 0.2e1 * (-t501 * t706 - t995) * t707 + 0.2e1 * (t532 * t708 - t533 * t706) * t705) * t1101;
t737 = t363 * t874;
t91 = t720 - t737 / 0.4e1 + ((-t969 / 0.2e1 - t1158 * t1089 - t546 / 0.2e1) * t708 + (-t968 / 0.2e1 + t575 * t1178 - t545 / 0.2e1) * t706) * m(6);
t792 = t91 * qJD(2) - t82 * qJD(3);
t786 = -t346 * t706 + t347 * t708;
t778 = t530 * t708 + t531 * t706;
t773 = -t1097 / 0.4e1 + t809;
t734 = t705 * t765 + t999;
t213 = t549 * t630 - t551 * t631 + t706 * t734;
t733 = t705 * t764 + t998;
t214 = t550 * t630 - t552 * t631 + t706 * t733;
t39 = (-t281 + t791) * t707 + (t213 * t706 + t214 * t708 + t380) * t705;
t215 = -t549 * t632 - t551 * t633 + t708 * t734;
t216 = -t550 * t632 - t552 * t633 + t708 * t733;
t40 = (-t282 + t790) * t707 + (t215 * t706 + t216 * t708 + t382) * t705;
t772 = t1181 * t839 + t153 * t842 + t39 * t853 + t40 * t849 + t1125;
t771 = -m(5) * t778 - m(4) * ((t1033 * t708 - t1053) * t708 + (t1033 * t706 + t1057) * t706);
t247 = t539 * t986 - t656 * t913 + t657 * t915;
t248 = t540 * t986 - t656 * t912 + t657 * t914;
t135 = -t247 * t708 + t248 * t706;
t249 = t539 * t985 + t658 * t913 + t659 * t915;
t250 = t540 * t985 + t658 * t912 + t659 * t914;
t136 = -t249 * t708 + t250 * t706;
t759 = t1085 * t135 + t1088 * t136;
t755 = t1099 / 0.4e1 + t772;
t752 = t1183 * t442 + t379 * t399 - t424 * t443;
t750 = t1119 + t1186;
t749 = t1187 + (t260 + t304) * t849 + (t1181 + t259 + t303) * t853;
t748 = t601 * t844 + t654 * t845 - t1145;
t415 = -t593 * t985 + t906;
t747 = (t708 * t818 + t415 - t906) * t1083 + (-t706 * (-t707 * t594 + t987) - t708 * t590) * t1085 + (t706 * t818 + t1151 + t819) * t1088;
t746 = t415 * t1088 - t906 * t706 / 0.2e1 + (-t565 + (t591 + t987) * t708 + t907 + t1151) * t1085;
t114 = -t213 * t708 + t214 * t706;
t115 = -t215 * t708 + t216 * t706;
t744 = t39 * t1085 + t40 * t1088 + t114 * t853 + t115 * t849 + (-t243 * t708 + t244 * t706) * t1086 + (-t286 * t708 + t287 * t706) * t842 + t1179 * t839 + (t325 * t708 + t326 * t706) * t1089 - t943;
t736 = t1152 * t838 + t1153 * t841 + t1155 * t848 + t1156 * t852 + t1124;
t735 = t39 * t855 - t40 * t985 / 0.2e1 + t122 * t853 + t123 * t849 - t153 * t978 / 0.2e1 + t90 * t1088 + t89 * t1085 - t1125 + (t961 + t1015 - t1016) * t1086;
t732 = t705 * t763 + t994;
t731 = t705 * t762 + t993;
t728 = t749 - t1008;
t724 = t949 / 0.2e1 - t951 / 0.2e1 + t599 / 0.2e1 + t945 / 0.2e1 - t947 / 0.2e1 + t622 / 0.2e1 + t672 / 0.2e1 - t669 / 0.2e1;
t723 = t736 + t750 - t817;
t722 = -t1124 + t750 + t817 + t1156 * t854 - t1155 * t985 / 0.4e1 - t1153 * t978 / 0.4e1 - t1152 * t964 / 0.4e1;
t721 = -t1119 + t1186 + t736 + t817;
t702 = t705 ^ 2;
t675 = -rSges(5,2) * t705 + t1042;
t635 = t795 * t708;
t634 = t795 * t706;
t537 = t890 * t708;
t535 = t890 * t706;
t455 = -t546 * t707 - t663 * t985;
t454 = t545 * t707 + t663 * t986;
t453 = t856 * t708;
t451 = t856 * t706;
t416 = (t545 * t708 - t546 * t706) * t705;
t394 = t398 * t865;
t392 = (t1056 * t702 - t655 * t705) * t708 + t910 * t707;
t391 = -t643 * t707 - t702 * t872 + t442;
t390 = t779 * t705;
t384 = -t966 + (-t715 * t892 + t717 * t893) * t705;
t383 = -t1158 * t706 + t575 * t708 + t898;
t358 = -t515 * t706 + t516 * t708 + t897;
t352 = t496 + (-t643 * t708 + t706 * t910) * t705;
t348 = 0.2e1 * t442 * t706 - 0.2e1 * t443 * t708;
t342 = t348 * t865;
t329 = 0.4e1 * t784;
t307 = t1063 / 0.4e1;
t284 = 0.4e1 * t785;
t283 = t706 * t909 + t708 * t908 + t898;
t271 = -0.4e1 * t433 * t545 + 0.4e1 * t434 * t546;
t264 = 0.4e1 * t433 * t497 + 0.4e1 * t434 * t498;
t246 = -0.4e1 * t401 * t525 + 0.4e1 * t402 * t526;
t242 = t756 + t1185;
t240 = -t571 * t658 - t573 * t659 + t708 * t731;
t239 = -t570 * t658 - t572 * t659 + t708 * t732;
t238 = t571 * t656 - t573 * t657 + t706 * t731;
t237 = t570 * t656 - t572 * t657 + t706 * t732;
t232 = 0.4e1 * t401 * t472 + 0.4e1 * t402 * t473;
t227 = 0.4e1 * t401 * t462 - 0.4e1 * t402 * t910;
t222 = t228 * t1045 / 0.4e1;
t210 = 0.4e1 * t430 * t358 + 0.4e1 * (t991 + t992) * t663;
t195 = t1065 / 0.4e1;
t183 = -t438 * t707 + t705 * t786;
t178 = t1101 * t246 + t801;
t164 = t1066 / 0.4e1;
t156 = -0.4e1 * t1135 * t265 + 0.4e1 * (t1000 + t1001) * t655;
t155 = 0.4e1 * t752;
t147 = t1101 * t284 + t1103 * t329 - t771;
t133 = 0.4e1 * t265 * t363 - 0.4e1 * t450 * t558 - 0.4e1 * t452 * t559;
t131 = -t239 * t708 + t240 * t706;
t130 = -t237 * t708 + t238 * t706;
t128 = t1068 / 0.4e1;
t126 = t307 + t195 + t1185;
t125 = t404 + t307 - t1065 / 0.4e1;
t124 = t404 + t195 - t1063 / 0.4e1;
t106 = 0.4e1 * t1188 * t361 + 0.4e1 * t306 * t390 - 0.4e1 * t362 * t437;
t105 = -t340 * t707 + (t249 * t706 + t250 * t708) * t705;
t104 = -t339 * t707 + (t247 * t706 + t248 * t708) * t705;
t102 = t1070 / 0.4e1;
t101 = t860 + t929 - t859;
t100 = t859 - t1150;
t99 = t859 + t1150;
t97 = t1092 / 0.4e1;
t95 = 0.4e1 * t1183 * t343 + 0.4e1 * t290 * t379 - 0.4e1 * t344 * t424;
t94 = t227 * t1101 - t966 / 0.2e1 + t271 * t1103 + t1121 * t705 + t801;
t93 = 0.4e1 * t810;
t92 = t430 * t830 + t737 / 0.4e1 + t720 + 0.2e1 * t306 * t1103;
t81 = t751 / 0.4e1 + ((-t231 - t558) * t708 + (t230 + t559) * t706) * t827;
t80 = t232 * t1101 + t264 * t1103 + t724 * t705 - t1122;
t75 = (-t349 + t786) * t707 + (t261 * t706 + t262 * t708 + t438) * t705;
t74 = 0.4e1 * t332 * t931;
t72 = t1093 / 0.4e1;
t56 = (-t302 + t788) * t707 + (t239 * t706 + t240 * t708 + t397) * t705;
t55 = (-t301 + t789) * t707 + (t237 * t706 + t238 * t708 + t395) * t705;
t53 = t1095 / 0.4e1;
t32 = 0.4e1 * t182 * t276 + 0.4e1 * t230 * t331 - 0.4e1 * t231 * t332;
t29 = t934 + t944 - t928;
t28 = t928 - t1149;
t27 = t928 + t1149;
t26 = t1101 * t156 + t943;
t21 = t1101 * t155 + t871;
t20 = t21 * qJD(6);
t19 = t1101 * t93 + t871;
t18 = t1101 * t133 + t1103 * t210 + t759 + t943;
t16 = t1101 * t95 + t772;
t15 = t128 - t1070 / 0.4e1 + t773;
t14 = t102 - t1068 / 0.4e1 + t773;
t13 = t102 + t128 + t1097 / 0.4e1 + t728;
t12 = t706 * t747 + t708 * t746;
t11 = -t74 * t1101 + t862 * t986 + t809;
t10 = t72 - t1095 / 0.4e1 + t755;
t9 = t53 - t1093 / 0.4e1 + t755;
t8 = t721 + t97 + t164;
t7 = t97 + t723 - t1066 / 0.4e1;
t6 = t722 + t164 - t1092 / 0.4e1;
t5 = t32 * t1101 + t106 * t1103 + (-t75 / 0.2e1 + t980 / 0.2e1 + t960 / 0.2e1) * t707 + (t183 / 0.2e1 + t55 * t1088 + t56 * t1083) * t705 + t772;
t4 = t72 + t53 + t735 - t1099 / 0.4e1;
t3 = t722 + t1118 + (t349 / 0.2e1 + (-t397 / 0.4e1 - t347 / 0.4e1) * t708 + (-t395 / 0.4e1 + t346 / 0.4e1) * t706) * t707 + (-t438 / 0.2e1 + (-t302 / 0.4e1 - t262 / 0.4e1) * t708 + (-t301 / 0.4e1 - t261 / 0.4e1) * t706) * t705 + t1120 + t1147;
t2 = t1116 + (-t340 / 0.4e1 - t273 / 0.4e1) * t706 + (t339 / 0.4e1 + t272 / 0.4e1) * t708 + t723 + t1118 - t1148;
t1 = t1116 + t721 + t1120 + t1146;
t17 = [t147 * qJD(3) + t80 * qJD(4) + t94 * qJD(5) + t178 * qJD(6), 0, qJD(1) * t147 + qJD(4) * t99 + qJD(5) * t27 + qJD(6) * t125, t80 * qJD(1) + t99 * qJD(3) + t1 * qJD(5) + t8 * qJD(6) + (t401 * t453 + t402 * t451 - t450 * t473 - t452 * t472) * t1045 + (t433 * t537 + t434 * t535 - t497 * t536 - t498 * t534) * t1048 + ((-t301 / 0.2e1 - t281 / 0.2e1 - t243 / 0.2e1 - t261 / 0.2e1 + t668 * t1083 + (-t594 / 0.2e1 - t636 / 0.2e1) * t707 + (t592 / 0.2e1 - t638 / 0.2e1) * t705 - t746) * t708 + (t262 / 0.2e1 + t302 / 0.2e1 + t282 / 0.2e1 + t244 / 0.2e1 + t668 * t1088 + (t595 / 0.2e1 - t637 / 0.2e1) * t707 + (-t593 / 0.2e1 + t639 / 0.2e1) * t705 - t747) * t706 + (-t778 * t675 + (-t645 * t708 + t646 * t706) * t674) * m(5)) * qJD(4), t94 * qJD(1) + t27 * qJD(3) + t1 * qJD(4) + t749 * qJD(5) + t13 * qJD(6) + (-t364 - t384) * t882 + (t74 / 0.4e1 + t331 * t462 + t332 * t910 + t391 * t401 + t392 * t402) * t1044 + (-t1188 * t545 + t433 * t454 + t434 * t455 - t437 * t546) * t1047 + ((t340 / 0.2e1 + t273 / 0.2e1) * t708 + (t1090 + t339 / 0.2e1 - t862) * t706) * t883, t178 * qJD(1) + t125 * qJD(3) + t8 * qJD(4) + t13 * qJD(5) + t728 * qJD(6) + (-t1183 * t525 - t424 * t526 + t327 / 0.2e1 + t328 / 0.2e1) * t1043; 0, 0, 0 ((-m(5) * t646 + m(6) * t575 + t828 * t908) * t708 + (-m(5) * t645 - m(6) * t1158 + t828 * t909) * t706 + 0.2e1 * (m(6) / 0.2e1 + t1102) * t898) * qJD(4) + t92 * qJD(5) + t242 * qJD(6), t92 * qJD(4) + (t398 * t1102 + (m(6) * t545 - m(7) * t643) * t985 + (-m(6) * t546 - m(7) * t644) * t986) * qJD(5) + t394, t242 * qJD(4) + t398 * t866 + t394; t771 * qJD(1) + t100 * qJD(4) + t28 * qJD(5) + t124 * qJD(6) + t1176 * t329 + t1177 * t284, 0, 0, t100 * qJD(1) + ((-m(6) * t535 - m(7) * t451) * t708 + (m(6) * t537 + m(7) * t453) * t706) * qJD(4) + t81 * qJD(5) + t1190 / 0.4e1, t28 * qJD(1) + t81 * qJD(4) + ((-m(6) * t455 - m(7) * t392) * t708 + (m(6) * t454 + m(7) * t391) * t706) * qJD(5) + t342, t124 * qJD(1) + t348 * t866 + t222 + t342; qJD(1) * t1122 + t101 * qJD(3) + t12 * qJD(4) + t3 * qJD(5) + t6 * qJD(6) + t264 * t1176 + t232 * t1177 - t724 * t884, -qJD(5) * t91 - qJD(6) * t241, t101 * qJD(1) + t82 * qJD(5) - t1190 / 0.4e1, t12 * qJD(1) + t18 * qJD(5) + t26 * qJD(6) + ((t358 * t383 - t534 * t535 - t536 * t537) * m(6) + m(5) * (t675 * t1138 - (t706 * (rSges(5,1) * t978 - t886) + t708 * (rSges(5,1) * t964 + t824)) * t774) + (t265 * t283 - t450 * t451 - t452 * t453) * m(7) + (t131 + t703 * t635 + (-t706 * t634 + t1117) * t708 + t115) * t1088 + (t704 * t634 + (-t708 * t635 + t1117) * t706 + t114 + t130) * t1085) * qJD(4), t3 * qJD(1) + t18 * qJD(4) + (t104 * t1085 + t105 * t1088 + t735) * qJD(5) + t4 * qJD(6) + (t75 / 0.2e1 + (t1090 + t1091) * t708 + (-t273 / 0.2e1 - t162 / 0.2e1) * t706) * t882 + (-t183 / 0.2e1 + (-t56 / 0.2e1 + t136 / 0.2e1) * t708 + (-t55 / 0.2e1 + t135 / 0.2e1) * t706) * t883 + (t265 * t352 + t276 * t363 + t331 * t559 - t332 * t558 - t391 * t452 - t392 * t450 - t32 / 0.4e1) * t1044 + (t416 * t358 + t390 * t430 - t454 * t536 - t455 * t534 - t106 / 0.4e1 - t1128 * t663) * t1047 - t792, t6 * qJD(1) - t878 + t26 * qJD(4) + t4 * qJD(5) + t735 * qJD(6) + (-t879 / 0.4e1 + (-t379 * t1135 + t204 / 0.2e1 - t356 / 0.2e1 + t357 / 0.2e1 - t95 / 0.4e1 - t1127 * t655) * qJD(6)) * m(7); (t966 / 0.2e1 + t748) * qJD(1) + t29 * qJD(3) + t2 * qJD(4) + t11 * qJD(5) + t14 * qJD(6) + (-t227 / 0.4e1 + t931 * t402) * t1046 + t271 * t1176 - t1121 * t884, qJD(4) * t91, qJD(1) * t29 - qJD(4) * t82, t2 * qJD(1) + (t744 + (t346 * t708 + t347 * t706) * t1089 + t55 * t1085 + (-t261 * t708 + t262 * t706) * t1086 + t56 * t1088 + t130 * t853 + (-t317 * t708 + t318 * t706) * t842 + t1180 * t839 + t131 * t849 - t759) * qJD(4) + t5 * qJD(5) + t9 * qJD(6) + (-t133 / 0.4e1 + t182 * t265 - t230 * t452 - t231 * t450 + t276 * t283 + t331 * t453 - t332 * t451) * t1045 + (-t210 / 0.4e1 + t306 * t358 - t361 * t536 - t362 * t534 + t383 * t390 + t1188 * t537 - t437 * t535) * t1048 + t792, t11 * qJD(1) + t5 * qJD(4) + ((t276 * t352 + t331 * t391 - t332 * t392) * m(7) + (t1188 * t454 + t390 * t416 - t437 * t455) * m(6) + t707 ^ 2 * t384 / 0.2e1 + (t104 * t1088 + t105 * t1083 + (t272 * t706 + t273 * t708) * t1086) * t705 + t871) * qJD(5) + t19 * qJD(6), t14 * qJD(1) + t9 * qJD(4) + t19 * qJD(5) + t871 * qJD(6) + (-t155 / 0.4e1 + t752 + t810) * t1043; t748 * qJD(1) + t126 * qJD(3) + t7 * qJD(4) + t15 * qJD(5) + qJD(6) * t809 + t1177 * t246, qJD(4) * t241, qJD(1) * t126 + t222, t7 * qJD(1) + t878 + t744 * qJD(4) + t10 * qJD(5) + t16 * qJD(6) + (t879 / 0.4e1 + (t265 * t290 + t283 * t379 - t343 * t452 - t344 * t450 + t1183 * t453 - t424 * t451 - t156 / 0.4e1) * qJD(4)) * m(7), t15 * qJD(1) + t10 * qJD(4) + t871 * qJD(5) + t20 + (t352 * t379 + t391 * t1183 - t392 * t424 - t93 / 0.4e1 + t810) * t1044, qJD(1) * t809 + qJD(4) * t16 + qJD(5) * t21 + t20;];
Cq  = t17;
