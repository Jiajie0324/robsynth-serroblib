% Calculate matrix of centrifugal and coriolis load on the joints for
% S6RRRPRP10
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d5,theta4]';
% m_mdh [7x1]
%   mass of all robot links (including the base)
% mrSges [7x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% Ifges [7x6]
%   inertia of all robot links about their respective body frame origins, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertial_parameters_convert_par1_par2.m)
% 
% Output:
% Cq [6x6]
%   matrix of coriolis and centrifugal joint torques

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 17:40
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S6RRRPRP10_coriolismatJ_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRP10_coriolismatJ_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRP10_coriolismatJ_fixb_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRPRP10_coriolismatJ_fixb_slag_vp2: pkin has to be [11x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRPRP10_coriolismatJ_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRRPRP10_coriolismatJ_fixb_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RRRPRP10_coriolismatJ_fixb_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 17:29:43
% EndTime: 2019-03-09 17:30:43
% DurationCPUTime: 35.20s
% Computational Cost: add. (53024->1294), mult. (129599->1763), div. (0->0), fcn. (142347->10), ass. (0->590)
t1037 = sin(qJ(5));
t1038 = cos(qJ(5));
t811 = sin(qJ(3));
t813 = cos(qJ(3));
t810 = sin(pkin(6));
t812 = sin(qJ(2));
t962 = t810 * t812;
t971 = cos(pkin(6));
t734 = t811 * t971 + t813 * t962;
t814 = cos(qJ(2));
t969 = sin(pkin(11));
t901 = t814 * t969;
t970 = cos(pkin(11));
t637 = -t734 * t970 + t810 * t901;
t902 = t814 * t970;
t836 = t734 * t969 + t810 * t902;
t1180 = -t1037 * t836 - t1038 * t637;
t1034 = pkin(5) * t1180;
t397 = t1037 * t637 - t1038 * t836;
t968 = qJ(6) * t397;
t192 = t1034 - t968;
t1198 = -t397 / 0.2e1;
t1197 = t397 * mrSges(7,3);
t1112 = -t1180 / 0.2e1;
t1196 = t1180 / 0.2e1;
t1195 = Ifges(7,4) + Ifges(6,5);
t1194 = m(5) * qJ(4) + mrSges(5,3);
t754 = t1037 * t969 - t1038 * t970;
t958 = t813 * t754;
t1063 = -t958 / 0.2e1;
t1192 = mrSges(7,2) + mrSges(6,3);
t733 = t811 * t962 - t813 * t971;
t755 = -t1037 * t970 - t1038 * t969;
t535 = t755 * t733;
t536 = t733 * t754;
t253 = Ifges(7,1) * t536 + Ifges(7,4) * t734 + Ifges(7,5) * t535;
t254 = Ifges(6,1) * t536 - Ifges(6,4) * t535 + Ifges(6,5) * t734;
t1191 = t254 + t253;
t1013 = Ifges(7,5) * t754;
t634 = -Ifges(7,1) * t755 + t1013;
t750 = Ifges(6,4) * t754;
t636 = -Ifges(6,1) * t755 - t750;
t1190 = t636 + t634;
t1187 = t634 / 0.2e1 + t636 / 0.2e1;
t747 = Ifges(7,5) * t755;
t626 = Ifges(7,3) * t754 - t747;
t1022 = Ifges(6,4) * t755;
t632 = -Ifges(6,2) * t754 - t1022;
t1186 = -t632 / 0.2e1 + t626 / 0.2e1;
t769 = -pkin(3) * t813 - qJ(4) * t811 - pkin(2);
t752 = t970 * t769;
t906 = t811 * t970;
t610 = -pkin(10) * t906 + t752 + (-pkin(9) * t969 - pkin(4)) * t813;
t935 = t1037 * t610;
t904 = t813 * t970;
t675 = pkin(9) * t904 + t969 * t769;
t905 = t811 * t969;
t640 = -pkin(10) * t905 + t675;
t937 = t1038 * t640;
t367 = t937 + t935;
t959 = t813 * qJ(6);
t350 = t367 - t959;
t1000 = t350 * mrSges(7,2);
t939 = pkin(1) * t971;
t738 = -pkin(8) * t962 + t814 * t939;
t706 = -pkin(2) * t971 - t738;
t451 = t733 * pkin(3) - t734 * qJ(4) + t706;
t883 = t812 * t939;
t961 = t810 * t814;
t740 = pkin(8) * t961 + t883;
t707 = pkin(9) * t971 + t740;
t708 = (-pkin(2) * t814 - pkin(9) * t812 - pkin(1)) * t810;
t510 = t813 * t707 + t811 * t708;
t463 = -qJ(4) * t961 + t510;
t224 = t970 * t451 - t463 * t969;
t142 = t733 * pkin(4) + pkin(10) * t637 + t224;
t936 = t1037 * t142;
t225 = t969 * t451 + t970 * t463;
t177 = -pkin(10) * t836 + t225;
t938 = t1038 * t177;
t78 = t938 + t936;
t1028 = t78 * mrSges(6,3);
t77 = -t1037 * t177 + t1038 * t142;
t1029 = t77 * mrSges(6,3);
t71 = -t733 * pkin(5) - t77;
t1030 = t71 * mrSges(7,2);
t963 = t733 * qJ(6);
t70 = t78 + t963;
t1031 = t70 * mrSges(7,2);
t808 = t811 * pkin(9);
t762 = pkin(4) * t905 + t808;
t1050 = t762 / 0.2e1;
t713 = t754 * t811;
t714 = t755 * t811;
t551 = -mrSges(7,1) * t714 + mrSges(7,3) * t713;
t1087 = t551 / 0.2e1;
t1033 = pkin(5) * t713;
t967 = qJ(6) * t714;
t863 = t967 + t1033;
t1088 = -t863 / 0.2e1;
t864 = -pkin(5) * t714 + qJ(6) * t713;
t465 = t864 + t762;
t1106 = t465 / 0.2e1;
t509 = -t811 * t707 + t813 * t708;
t464 = pkin(3) * t961 - t509;
t332 = pkin(4) * t836 + t464;
t1124 = t332 / 0.2e1;
t865 = -pkin(5) * t397 - qJ(6) * t1180;
t114 = t332 + t865;
t1132 = t114 / 0.2e1;
t1141 = m(7) / 0.2e1;
t193 = mrSges(7,1) * t1180 - t1197;
t194 = mrSges(6,1) * t1180 + mrSges(6,2) * t397;
t195 = -mrSges(7,1) * t397 - mrSges(7,3) * t1180;
t198 = Ifges(6,5) * t397 - Ifges(6,6) * t1180;
t199 = Ifges(7,4) * t397 + Ifges(7,6) * t1180;
t366 = -t1037 * t640 + t1038 * t610;
t353 = t813 * pkin(5) - t366;
t549 = -t713 * mrSges(7,1) - t714 * mrSges(7,3);
t550 = -t713 * mrSges(6,1) + t714 * mrSges(6,2);
t556 = Ifges(6,5) * t714 + Ifges(6,6) * t713;
t557 = Ifges(7,4) * t714 - Ifges(7,6) * t713;
t1014 = Ifges(7,5) * t714;
t555 = -Ifges(7,3) * t713 + t1014;
t699 = Ifges(6,4) * t714;
t558 = Ifges(6,2) * t713 + t699;
t531 = -Ifges(7,1) * t713 - Ifges(7,4) * t813 - t1014;
t533 = -Ifges(6,1) * t713 - Ifges(6,5) * t813 + t699;
t916 = t533 / 0.4e1 + t531 / 0.4e1;
t848 = -t558 / 0.4e1 + t555 / 0.4e1 - t916;
t696 = Ifges(7,5) * t713;
t559 = Ifges(7,1) * t714 - t696;
t1023 = Ifges(6,4) * t713;
t560 = Ifges(6,1) * t714 + t1023;
t523 = -Ifges(7,6) * t813 - Ifges(7,3) * t714 - t696;
t529 = Ifges(6,2) * t714 - Ifges(6,6) * t813 - t1023;
t918 = t523 / 0.4e1 - t529 / 0.4e1;
t849 = -t560 / 0.4e1 - t559 / 0.4e1 - t918;
t383 = Ifges(7,5) * t1180;
t201 = Ifges(7,1) * t397 + t383;
t1024 = Ifges(6,4) * t1180;
t202 = Ifges(6,1) * t397 - t1024;
t162 = Ifges(7,6) * t733 - Ifges(7,3) * t397 + t383;
t165 = Ifges(6,2) * t397 + Ifges(6,6) * t733 + t1024;
t926 = t162 / 0.4e1 - t165 / 0.4e1;
t851 = -t202 / 0.4e1 - t201 / 0.4e1 - t926;
t1015 = Ifges(7,5) * t397;
t197 = Ifges(7,3) * t1180 + t1015;
t386 = Ifges(6,4) * t397;
t200 = -Ifges(6,2) * t1180 + t386;
t166 = Ifges(7,1) * t1180 + Ifges(7,4) * t733 - t1015;
t167 = Ifges(6,1) * t1180 + Ifges(6,5) * t733 + t386;
t924 = t167 / 0.4e1 + t166 / 0.4e1;
t852 = -t200 / 0.4e1 + t197 / 0.4e1 - t924;
t659 = mrSges(7,1) * t813 - t713 * mrSges(7,2);
t1071 = t659 / 0.2e1;
t658 = -mrSges(6,1) * t813 + t713 * mrSges(6,3);
t913 = -t658 / 0.2e1 + t1071;
t656 = mrSges(6,2) * t813 + mrSges(6,3) * t714;
t1073 = t656 / 0.2e1;
t805 = t813 * mrSges(7,3);
t655 = t714 * mrSges(7,2) - t805;
t1074 = t655 / 0.2e1;
t914 = t1074 + t1073;
t997 = t367 * mrSges(6,3);
t998 = t366 * mrSges(6,3);
t999 = t353 * mrSges(7,2);
t1185 = t78 * t913 + t77 * t914 + (-t199 / 0.4e1 - t198 / 0.4e1) * t813 + (t557 / 0.4e1 + t556 / 0.4e1) * t733 - (t1029 / 0.2e1 - t1030 / 0.2e1 + t852) * t714 + (t1028 / 0.2e1 + t1031 / 0.2e1 + t851) * t713 + (-t1000 / 0.2e1 - t997 / 0.2e1 - t849) * t1180 - (t998 / 0.2e1 - t999 / 0.2e1 + t848) * t397 + (-t114 * t863 + t192 * t465 + t350 * t77 + t353 * t78 + t366 * t70 + t367 * t71) * t1141 + t549 * t1132 + t192 * t1087 + t550 * t1124 + t193 * t1106 + t195 * t1088 + t194 * t1050;
t624 = mrSges(6,1) * t754 - mrSges(6,2) * t755;
t798 = -pkin(4) * t970 - pkin(3);
t1184 = m(6) * t798 + t624;
t861 = t754 * pkin(5) + t755 * qJ(6);
t587 = t861 + t798;
t623 = mrSges(7,1) * t754 + mrSges(7,3) * t755;
t1183 = m(7) * t587 + t623;
t809 = t813 * pkin(9);
t903 = t813 * t969;
t763 = pkin(4) * t903 + t809;
t1049 = t763 / 0.2e1;
t760 = -t813 * mrSges(5,1) - mrSges(5,3) * t906;
t1051 = t760 / 0.2e1;
t758 = t813 * mrSges(5,2) - mrSges(5,3) * t905;
t1052 = t758 / 0.2e1;
t588 = pkin(3) * t734 + qJ(4) * t733;
t312 = -t509 * t969 + t970 * t588;
t908 = t733 * t970;
t217 = t734 * pkin(4) + pkin(10) * t908 + t312;
t313 = t970 * t509 + t969 * t588;
t907 = t733 * t969;
t256 = pkin(10) * t907 + t313;
t106 = -t1037 * t256 + t1038 * t217;
t107 = t1037 * t217 + t1038 * t256;
t973 = t811 * mrSges(7,1);
t661 = -mrSges(7,2) * t958 - t973;
t1070 = t661 / 0.2e1;
t715 = t755 * t813;
t466 = -pkin(5) * t715 + qJ(6) * t958 + t763;
t1105 = t466 / 0.2e1;
t1107 = t464 / 0.2e1;
t979 = t734 * mrSges(7,1);
t987 = t536 * mrSges(7,2);
t403 = -t979 + t987;
t1110 = t403 / 0.2e1;
t775 = pkin(3) * t811 - qJ(4) * t813;
t687 = pkin(9) * t905 + t970 * t775;
t613 = t811 * pkin(4) - pkin(10) * t904 + t687;
t688 = -pkin(9) * t906 + t969 * t775;
t643 = -pkin(10) * t903 + t688;
t389 = t1037 * t613 + t1038 * t643;
t1117 = t389 / 0.2e1;
t1119 = t367 / 0.2e1;
t1121 = t366 / 0.2e1;
t388 = -t1037 * t643 + t1038 * t613;
t358 = -t811 * pkin(5) - t388;
t1122 = t358 / 0.2e1;
t1123 = t350 / 0.2e1;
t980 = t733 * mrSges(7,3);
t322 = t397 * mrSges(7,2) + t980;
t1125 = t322 / 0.2e1;
t1136 = t78 / 0.2e1;
t1137 = t70 / 0.2e1;
t1143 = m(6) / 0.2e1;
t1145 = m(5) / 0.2e1;
t393 = -pkin(4) * t907 + t510;
t145 = pkin(5) * t535 - qJ(6) * t536 + t393;
t196 = -mrSges(6,1) * t397 + mrSges(6,2) * t1180;
t249 = Ifges(7,5) * t536 + Ifges(7,6) * t734 + Ifges(7,3) * t535;
t252 = Ifges(6,4) * t536 - Ifges(6,2) * t535 + Ifges(6,6) * t734;
t986 = t536 * mrSges(7,3);
t989 = t535 * mrSges(7,1);
t294 = -t986 + t989;
t988 = t536 * mrSges(6,2);
t990 = t535 * mrSges(6,1);
t295 = t988 + t990;
t323 = -mrSges(6,2) * t733 + t397 * mrSges(6,3);
t324 = mrSges(6,1) * t733 - mrSges(6,3) * t1180;
t325 = -mrSges(7,1) * t733 + mrSges(7,2) * t1180;
t357 = qJ(6) * t811 + t389;
t400 = -mrSges(6,2) * t734 - mrSges(6,3) * t535;
t401 = -mrSges(7,2) * t535 + mrSges(7,3) * t734;
t402 = mrSges(6,1) * t734 - mrSges(6,3) * t536;
t485 = -t733 * mrSges(5,2) - mrSges(5,3) * t836;
t486 = mrSges(5,1) * t733 + mrSges(5,3) * t637;
t524 = -Ifges(7,5) * t958 + Ifges(7,6) * t811 - Ifges(7,3) * t715;
t530 = -Ifges(6,4) * t958 + Ifges(6,2) * t715 + Ifges(6,6) * t811;
t532 = -Ifges(7,1) * t958 + Ifges(7,4) * t811 - Ifges(7,5) * t715;
t534 = -Ifges(6,1) * t958 + Ifges(6,4) * t715 + Ifges(6,5) * t811;
t552 = -mrSges(6,1) * t714 - mrSges(6,2) * t713;
t553 = -t715 * mrSges(7,1) + mrSges(7,3) * t958;
t554 = -t715 * mrSges(6,1) - mrSges(6,2) * t958;
t577 = -t734 * mrSges(5,2) + mrSges(5,3) * t907;
t578 = t734 * mrSges(5,1) + mrSges(5,3) * t908;
t589 = mrSges(4,1) * t734 - mrSges(4,2) * t733;
t654 = mrSges(7,2) * t715 + mrSges(7,3) * t811;
t657 = -mrSges(6,2) * t811 + mrSges(6,3) * t715;
t660 = mrSges(6,1) * t811 + mrSges(6,3) * t958;
t674 = -pkin(9) * t903 + t752;
t909 = Ifges(5,4) * t969;
t844 = Ifges(5,1) * t970 - t909;
t705 = Ifges(5,5) * t811 + t813 * t844;
t911 = mrSges(5,2) * t970;
t912 = mrSges(5,1) * t969;
t846 = t912 + t911;
t735 = t846 * t811;
t736 = t846 * t813;
t759 = -t811 * mrSges(5,2) - mrSges(5,3) * t903;
t761 = t811 * mrSges(5,1) - mrSges(5,3) * t904;
t776 = mrSges(4,1) * t811 + mrSges(4,2) * t813;
t92 = qJ(6) * t734 + t107;
t95 = -t734 * pkin(5) - t106;
t1182 = -(t249 / 0.4e1 - t252 / 0.4e1) * t714 - t637 * t705 / 0.4e1 - t926 * t715 + t918 * t535 + (t534 / 0.4e1 + t532 / 0.4e1) * t1180 + (t114 * t466 + t145 * t465 + t350 * t92 + t353 * t95 + t357 * t70 + t358 * t71) * t1141 + (t106 * t366 + t107 * t367 + t332 * t763 + t388 * t77 + t389 * t78 + t393 * t762) * t1143 + (t224 * t687 + t225 * t688 + t312 * t674 + t313 * t675) * t1145 + t402 * t1121 + t325 * t1122 + t401 * t1123 + t554 * t1124 + t357 * t1125 + t553 * t1132 + t657 * t1136 + t654 * t1137 + t195 * t1105 + t294 * t1106 + t736 * t1107 + t353 * t1110 + t323 * t1117 + t400 * t1119 + t145 * t1087 + t71 * t1070 + t95 * t1071 + t107 * t1073 + t92 * t1074 - (t524 / 0.4e1 - t530 / 0.4e1) * t397 + t295 * t1050 + t312 * t1051 + t313 * t1052 + t196 * t1049 + t706 * t776 / 0.2e1 + t225 * t759 / 0.2e1 + t224 * t761 / 0.2e1 + t510 * t735 / 0.2e1 + t687 * t486 / 0.2e1 + t688 * t485 / 0.2e1 + t675 * t577 / 0.2e1 + t674 * t578 / 0.2e1 + t106 * t658 / 0.2e1 + t77 * t660 / 0.2e1 - pkin(2) * t589 / 0.2e1 + t393 * t552 / 0.2e1 + t388 * t324 / 0.2e1;
t770 = -mrSges(5,1) * t970 + mrSges(5,2) * t969;
t1181 = -m(5) * pkin(3) - mrSges(4,1) + t770;
t1179 = mrSges(7,1) + mrSges(6,1);
t1178 = pkin(9) * t1145;
t1173 = t167 + t166;
t672 = (t812 * t970 - t813 * t901) * t810;
t673 = (t812 * t969 + t813 * t902) * t810;
t481 = t1037 * t673 - t1038 * t672;
t482 = t1037 * t672 + t1038 * t673;
t960 = t811 * t814;
t946 = t810 * t960;
t1172 = t1195 * t946 + (Ifges(6,1) + Ifges(7,1)) * t482 + (-Ifges(6,4) + Ifges(7,5)) * t481;
t1171 = t322 + t323;
t1170 = -t324 + t325;
t1169 = t655 + t656;
t342 = -Ifges(5,4) * t637 - Ifges(5,2) * t836 + Ifges(5,6) * t733;
t891 = t969 * t342;
t343 = -Ifges(5,1) * t637 - Ifges(5,4) * t836 + Ifges(5,5) * t733;
t898 = t970 * t343;
t1168 = -t891 / 0.4e1 + t898 / 0.4e1;
t806 = Ifges(4,5) * t813;
t886 = -Ifges(4,6) * t811 + t806;
t807 = Ifges(4,4) * t813;
t778 = -Ifges(4,2) * t811 + t807;
t1025 = Ifges(4,4) * t811;
t777 = Ifges(4,2) * t813 + t1025;
t780 = Ifges(4,1) * t813 - t1025;
t1164 = t780 / 0.4e1 - t777 / 0.4e1;
t917 = t533 / 0.2e1 + t531 / 0.2e1;
t919 = t523 / 0.2e1 - t529 / 0.2e1;
t927 = t162 / 0.2e1 - t165 / 0.2e1;
t163 = Ifges(6,5) * t1180 + Ifges(6,6) * t397 + Ifges(6,3) * t733;
t164 = Ifges(7,4) * t1180 + Ifges(7,2) * t733 - Ifges(7,6) * t397;
t341 = -Ifges(5,5) * t637 - Ifges(5,6) * t836 + Ifges(5,3) * t733;
t1162 = t341 + t164 + t163;
t1161 = Ifges(5,5) * t969 + Ifges(5,6) * t970 - t1195 * t755 + (-Ifges(6,6) + Ifges(7,6)) * t754;
t1160 = t626 / 0.4e1 - t632 / 0.4e1;
t428 = Ifges(5,5) * t734 - t733 * t844;
t1026 = Ifges(4,4) * t734;
t542 = -Ifges(4,2) * t733 - Ifges(4,6) * t961 + t1026;
t910 = Ifges(5,4) * t970;
t845 = -Ifges(5,2) * t969 + t910;
t427 = Ifges(5,6) * t734 - t733 * t845;
t890 = t969 * t427;
t942 = t970 / 0.4e1;
t1159 = -t542 / 0.4e1 - t890 / 0.4e1 + t428 * t942;
t804 = m(7) * qJ(6) + mrSges(7,3);
t415 = mrSges(5,1) * t836 - mrSges(5,2) * t637;
t978 = t734 * mrSges(4,3);
t653 = -mrSges(4,1) * t961 - t978;
t1158 = t415 / 0.2e1 - t653 / 0.2e1 - t978 / 0.2e1;
t1157 = -m(7) * pkin(5) - t1179;
t1156 = -mrSges(6,2) + t804;
t1155 = m(7) * t350 + t1169;
t1154 = m(7) * t353 - t658 + t659;
t1153 = qJD(3) * t1161;
t1152 = -t740 * mrSges(3,1) - t738 * mrSges(3,2);
t779 = Ifges(4,1) * t811 + t807;
t702 = -Ifges(5,6) * t813 + t811 * t845;
t888 = t969 * t702;
t704 = -Ifges(5,5) * t813 + t811 * t844;
t894 = t970 * t704;
t953 = -t808 / 0.2e1;
t1151 = mrSges(4,3) * t953 + t888 / 0.4e1 - t894 / 0.4e1 - t779 / 0.4e1 - t778 / 0.4e1;
t1149 = 0.2e1 * m(7);
t1144 = -m(6) / 0.2e1;
t1142 = -m(7) / 0.2e1;
t1140 = -mrSges(6,1) / 0.2e1;
t1139 = mrSges(6,2) / 0.2e1;
t1138 = -mrSges(7,3) / 0.2e1;
t1135 = t95 / 0.2e1;
t1134 = -qJ(6) / 0.2e1;
t739 = (pkin(2) * t812 - pkin(9) * t814) * t810;
t586 = t813 * t738 + t811 * t739;
t537 = qJ(4) * t962 + t586;
t601 = t883 + (pkin(8) + t775) * t961;
t320 = -t537 * t969 + t970 * t601;
t221 = pkin(4) * t946 - t673 * pkin(10) + t320;
t321 = t970 * t537 + t969 * t601;
t255 = pkin(10) * t672 + t321;
t111 = -t1037 * t255 + t1038 * t221;
t105 = -pkin(5) * t946 - t111;
t1133 = t105 / 0.2e1;
t1120 = -t367 / 0.2e1;
t585 = -t811 * t738 + t739 * t813;
t539 = -pkin(3) * t962 - t585;
t387 = -pkin(4) * t672 + t539;
t1118 = t387 / 0.2e1;
t993 = t482 * mrSges(7,2);
t414 = -mrSges(7,1) * t946 + t993;
t1109 = t414 / 0.2e1;
t1091 = t539 / 0.2e1;
t547 = t846 * t733;
t1089 = -t547 / 0.2e1;
t1086 = t587 / 0.2e1;
t1032 = pkin(5) * t755;
t966 = qJ(6) * t754;
t862 = -t966 + t1032;
t1085 = -t862 / 0.2e1;
t621 = -t755 * mrSges(7,1) + t754 * mrSges(7,3);
t1084 = t621 / 0.2e1;
t1083 = t623 / 0.2e1;
t1078 = -t637 / 0.2e1;
t900 = t970 * qJ(4);
t771 = pkin(10) * t970 + t900;
t893 = t969 * qJ(4);
t842 = -pkin(10) * t969 - t893;
t646 = t1037 * t771 - t1038 * t842;
t1077 = -t646 / 0.2e1;
t1069 = t672 / 0.2e1;
t1068 = t673 / 0.2e1;
t1067 = -t713 / 0.2e1;
t1065 = t713 / 0.2e1;
t1064 = t714 / 0.2e1;
t1061 = t733 / 0.2e1;
t1059 = t734 / 0.2e1;
t1057 = -t754 / 0.2e1;
t1056 = t754 / 0.2e1;
t1055 = -t755 / 0.2e1;
t1053 = t755 / 0.2e1;
t1044 = t798 / 0.2e1;
t1043 = t811 / 0.2e1;
t1040 = t813 / 0.2e1;
t1036 = m(5) * t510;
t1035 = m(7) * t862;
t1027 = Ifges(3,4) * t812;
t1021 = Ifges(7,4) * t482;
t1020 = Ifges(7,4) * t536;
t1019 = Ifges(7,4) * t958;
t1018 = Ifges(6,5) * t482;
t1017 = Ifges(6,5) * t536;
t1016 = Ifges(6,5) * t958;
t1011 = Ifges(7,2) * t734;
t1010 = Ifges(7,2) * t811;
t1008 = Ifges(6,6) * t481;
t1007 = Ifges(6,6) * t535;
t1006 = Ifges(6,6) * t715;
t1005 = Ifges(7,6) * t481;
t1004 = Ifges(7,6) * t535;
t1003 = Ifges(7,6) * t715;
t1002 = Ifges(6,3) * t734;
t1001 = Ifges(6,3) * t811;
t996 = t481 * mrSges(6,1);
t995 = t481 * mrSges(7,1);
t994 = t482 * mrSges(6,2);
t992 = t482 * mrSges(7,3);
t112 = t1037 * t221 + t1038 * t255;
t102 = qJ(6) * t946 + t112;
t134 = pkin(5) * t481 - qJ(6) * t482 + t387;
t228 = Ifges(7,5) * t482 + Ifges(7,6) * t946 + Ifges(7,3) * t481;
t229 = Ifges(6,3) * t946 - t1008 + t1018;
t230 = Ifges(7,2) * t946 + t1005 + t1021;
t231 = Ifges(6,4) * t482 - Ifges(6,2) * t481 + Ifges(6,6) * t946;
t269 = -t992 + t995;
t270 = t994 + t996;
t411 = -t481 * mrSges(7,2) + mrSges(7,3) * t946;
t412 = -mrSges(6,2) * t946 - t481 * mrSges(6,3);
t413 = mrSges(6,1) * t946 - t482 * mrSges(6,3);
t433 = Ifges(5,5) * t673 + Ifges(5,6) * t672 + Ifges(5,3) * t946;
t434 = Ifges(5,4) * t673 + Ifges(5,2) * t672 + Ifges(5,6) * t946;
t435 = Ifges(5,1) * t673 + Ifges(5,4) * t672 + Ifges(5,5) * t946;
t982 = t673 * mrSges(5,2);
t983 = t672 * mrSges(5,1);
t507 = t982 - t983;
t726 = Ifges(4,4) * t733;
t543 = Ifges(4,1) * t734 - Ifges(4,5) * t961 - t726;
t606 = -mrSges(5,2) * t946 + t672 * mrSges(5,3);
t607 = mrSges(5,1) * t946 - t673 * mrSges(5,3);
t644 = (Ifges(4,6) * t812 + t778 * t814) * t810;
t645 = (Ifges(4,5) * t812 + t780 * t814) * t810;
t652 = mrSges(4,2) * t961 - t733 * mrSges(4,3);
t689 = t776 * t961;
t722 = (-mrSges(4,2) * t812 - mrSges(4,3) * t960) * t810;
t723 = (-mrSges(4,3) * t813 * t814 + mrSges(4,1) * t812) * t810;
t785 = Ifges(3,5) * t961;
t929 = t961 / 0.2e1;
t879 = t813 * t929;
t881 = t811 * t929;
t882 = -t946 / 0.2e1;
t930 = t962 / 0.2e1;
t5 = (-(Ifges(3,2) * t814 + t1027) * t962 / 0.2e1 + (-pkin(1) * (mrSges(3,1) * t812 + mrSges(3,2) * t814) - t814 * (Ifges(4,3) * t812 + t814 * t886) / 0.2e1 + t812 * (Ifges(3,1) * t814 - t1027) / 0.2e1) * t810) * t810 + t542 * t882 + t543 * t879 + (t433 + t230 + t229) * t1061 + t1173 * t482 / 0.2e1 + t927 * t481 + t1162 * t881 + (-Ifges(3,6) * t962 + t785 / 0.2e1 + Ifges(3,5) * t929 + t1152) * t971 + m(6) * (t111 * t77 + t112 * t78 + t332 * t387) + m(7) * (t102 * t70 + t105 * t71 + t114 * t134) + m(5) * (t224 * t320 + t225 * t321 + t464 * t539) + m(4) * (t509 * t585 + t510 * t586 + t706 * t740) + t343 * t1068 + t342 * t1069 + t435 * t1078 + t645 * t1059 + t397 * t231 / 0.2e1 + t1172 * t1196 + t740 * (mrSges(4,1) * t733 + mrSges(4,2) * t734) - t733 * t644 / 0.2e1 + t510 * t722 + t509 * t723 + t228 * t1198 + t706 * t689 + t586 * t652 + t585 * t653 + t225 * t606 + t224 * t607 + t539 * t415 + t464 * t507 + t321 * t485 + t320 * t486 + t77 * t413 + t71 * t414 + t70 * t411 + t78 * t412 + t387 * t196 + t332 * t270 + t112 * t323 + t111 * t324 + t105 * t325 + t102 * t322 + t114 * t269 + t134 * t195 + (0.2e1 * Ifges(3,4) * t961 + (Ifges(3,1) - Ifges(3,2)) * t962) * t929 + (Ifges(4,5) * t734 - Ifges(4,6) * t733 - Ifges(4,3) * t961) * t930 - t836 * t434 / 0.2e1;
t991 = t5 * qJD(1);
t250 = t1002 - t1007 + t1017;
t251 = t1004 + t1011 + t1020;
t843 = Ifges(5,5) * t970 - Ifges(5,6) * t969;
t426 = Ifges(5,3) * t734 - t733 * t843;
t590 = -Ifges(4,2) * t734 - t726;
t591 = -Ifges(4,1) * t733 - t1026;
t724 = Ifges(4,6) * t734;
t725 = Ifges(4,5) * t733;
t897 = t970 * t427;
t925 = t166 / 0.2e1 + t167 / 0.2e1;
t6 = (-t653 + t415) * t510 + m(6) * (t106 * t77 + t107 * t78 + t332 * t393) + m(7) * (t114 * t145 + t70 * t92 + t71 * t95) + m(5) * (t224 * t312 + t225 * t313 + t464 * t510) + t925 * t536 + t927 * t535 + (t426 / 0.2e1 + t250 / 0.2e1 + t251 / 0.2e1 - t590 / 0.2e1 - t543 / 0.2e1 + t891 / 0.2e1 - t898 / 0.2e1 + t509 * mrSges(4,3)) * t733 + (-t890 / 0.2e1 - t542 / 0.2e1 + t591 / 0.2e1 + t341 / 0.2e1 + t163 / 0.2e1 + t164 / 0.2e1 - t510 * mrSges(4,3)) * t734 + (t253 / 0.2e1 + t254 / 0.2e1) * t1180 + t428 * t1078 - (-t252 / 0.2e1 + t249 / 0.2e1) * t397 + t706 * t589 + (-t897 / 0.2e1 + t725 / 0.2e1 + t724 / 0.2e1) * t961 + t509 * t652 + t225 * t577 + t224 * t578 - t464 * t547 + t313 * t485 + t312 * t486 + t77 * t402 + t71 * t403 + t78 * t400 + t70 * t401 + t393 * t196 + t332 * t295 + t107 * t323 + t106 * t324 + t95 * t325 + t92 * t322 + t114 * t294 + t145 * t195;
t985 = t6 * qJD(1);
t647 = t1037 * t842 + t1038 * t771;
t984 = t647 * mrSges(6,3);
t977 = t754 * mrSges(7,2);
t976 = t754 * mrSges(6,3);
t975 = t755 * mrSges(7,2);
t974 = t755 * mrSges(6,3);
t9 = t192 * t195 + t332 * t194 + (t199 / 0.2e1 + t198 / 0.2e1) * t733 + (-t1028 - t1031 + t201 / 0.2e1 + t202 / 0.2e1 + t927) * t1180 - (t1029 - t200 / 0.2e1 - t1030 + t197 / 0.2e1 - t925) * t397 + (m(7) * t192 + t193) * t114 + (m(7) * t71 + t1170) * t78 + (m(7) * t70 + t1171) * t77;
t972 = t9 * qJD(1);
t17 = -t836 * t485 + t637 * t486 + t1171 * t397 + t1170 * t1180 + m(7) * (t1180 * t71 + t397 * t70) + m(6) * (-t1180 * t77 + t397 * t78) + m(5) * (t224 * t637 - t225 * t836);
t965 = qJD(1) * t17;
t34 = m(7) * (-t114 * t1180 + t70 * t733) - t1180 * t195 + t733 * t322;
t964 = qJD(1) * t34;
t627 = -Ifges(6,5) * t754 + Ifges(6,6) * t755;
t629 = -Ifges(7,4) * t754 - Ifges(7,6) * t755;
t952 = mrSges(6,1) / 0.2e1 + mrSges(7,1) / 0.2e1;
t951 = -mrSges(6,3) / 0.2e1 - mrSges(7,2) / 0.2e1;
t950 = t1138 + t1139;
t949 = -Ifges(7,4) / 0.2e1 - Ifges(6,5) / 0.2e1;
t948 = -Ifges(7,2) / 0.2e1 - Ifges(6,3) / 0.2e1;
t947 = -Ifges(7,6) / 0.2e1 + Ifges(6,6) / 0.2e1;
t944 = -t977 / 0.2e1;
t943 = t970 / 0.2e1;
t941 = -t969 / 0.2e1;
t940 = t969 / 0.2e1;
t928 = t961 / 0.4e1;
t923 = t323 / 0.2e1 + t1125;
t922 = t325 / 0.2e1 - t324 / 0.2e1;
t915 = t629 / 0.4e1 + t627 / 0.4e1;
t703 = Ifges(5,6) * t811 + t813 * t845;
t895 = t970 * t703;
t887 = t969 * t703;
t622 = -t755 * mrSges(6,1) - t754 * mrSges(6,2);
t885 = t1180 * t646 + t647 * t397;
t878 = t948 * t811;
t877 = t911 / 0.2e1;
t876 = mrSges(5,3) * t943;
t875 = mrSges(5,3) * t941;
t872 = t907 / 0.2e1;
t525 = -Ifges(6,5) * t713 + Ifges(6,6) * t714 - Ifges(6,3) * t813;
t526 = t1001 + t1006 - t1016;
t527 = -Ifges(7,4) * t713 - Ifges(7,2) * t813 - Ifges(7,6) * t714;
t528 = -t1003 + t1010 - t1019;
t700 = -Ifges(5,3) * t813 + t811 * t843;
t701 = Ifges(5,3) * t811 + t813 * t843;
t773 = Ifges(5,2) * t970 + t909;
t774 = Ifges(5,1) * t969 + t910;
t815 = t1161 * t811 * t928 + Ifges(4,6) * t882 + Ifges(4,5) * t879 + t606 * t900 / 0.2e1 - t607 * t893 / 0.2e1 + t969 * t435 / 0.4e1 - t1172 * t755 / 0.4e1 + t1160 * t481 + (-pkin(3) * t539 + (-t320 * t969 + t321 * t970) * qJ(4)) * t1145 + (t102 * t647 + t105 * t646 + t134 * t587) * t1141 + (-t111 * t646 + t112 * t647 + t387 * t798) * t1143 + t646 * t1109 + t624 * t1118 + t134 * t1083 + t269 * t1086 + t770 * t1091 + t413 * t1077 + t270 * t1044 + t672 * t773 / 0.4e1 + t673 * t774 / 0.4e1 + t320 * t875 + t321 * t876 + t585 * mrSges(4,1) / 0.2e1 - t586 * mrSges(4,2) / 0.2e1 - pkin(3) * t507 / 0.2e1 + t434 * t942 + (t412 + t411) * t647 / 0.2e1 - t112 * t976 / 0.2e1 + t1190 * t482 / 0.4e1 + Ifges(4,3) * t930 + t102 * t944 + t111 * t974 / 0.2e1 - t105 * t975 / 0.2e1 + (-t231 / 0.4e1 + t228 / 0.4e1) * t754;
t1 = -t1173 * t958 / 0.4e1 + (t510 * t1178 + t1159) * t811 + (t1178 * t464 + t1168) * t813 + t1164 * t734 + (t591 + t1162) * t811 / 0.4e1 + t1158 * t809 + t1151 * t733 + t808 * t1089 + t1182 + (t590 + t543) * t813 / 0.4e1 - (t426 + t251 + t250) * t813 / 0.4e1 + (t700 + t527 + t525) * t734 / 0.4e1 + (t701 + t528 + t526) * t733 / 0.4e1 - t1191 * t713 / 0.4e1 + (t533 + t531) * t536 / 0.4e1 - t886 * t961 / 0.4e1 - t836 * t703 / 0.4e1 - t815 + t652 * t953;
t850 = t525 / 0.2e1 + t527 / 0.2e1 + t700 / 0.2e1 - t777 / 0.2e1;
t16 = -t917 * t958 + m(5) * (t674 * t687 + t675 * t688) + m(7) * (t350 * t357 + t353 * t358 + t465 * t466) + m(6) * (t366 * t388 + t367 * t389 + t762 * t763) - (-t530 / 0.2e1 + t524 / 0.2e1) * t714 - t919 * t715 + (-t534 / 0.2e1 - t532 / 0.2e1) * t713 + (t778 / 0.2e1 + t779 / 0.2e1 - t701 / 0.2e1 - t526 / 0.2e1 - t528 / 0.2e1 - t888 / 0.2e1 + t894 / 0.2e1 + pkin(9) * t735) * t813 - pkin(2) * t776 + t762 * t554 + t763 * t552 + t688 * t758 + t675 * t759 + t687 * t760 + t674 * t761 + t367 * t657 + t388 * t658 + t358 * t659 + t366 * t660 + t353 * t661 + t350 * t654 + t357 * t655 + t389 * t656 + t466 * t551 + t465 * t553 + (t780 / 0.2e1 - t887 / 0.2e1 + t705 * t943 + (m(5) * t809 + t736) * pkin(9) + t850) * t811;
t860 = t1 * qJD(1) + t16 * qJD(2);
t18 = t762 * t550 - t863 * t551 + (-t556 / 0.2e1 - t557 / 0.2e1) * t813 - (t998 - t999 - t558 / 0.2e1 + t555 / 0.2e1 - t917) * t714 + (t997 + t1000 - t560 / 0.2e1 - t559 / 0.2e1 - t919) * t713 + (-m(7) * t863 + t549) * t465 + t1154 * t367 + t1155 * t366;
t826 = (-pkin(5) * t105 + qJ(6) * t102) * t1142 + pkin(5) * t1109 + t411 * t1134 + t102 * t1138 + mrSges(7,1) * t1133 + t111 * t1140 + t112 * t1139;
t3 = t366 * t923 + t367 * t922 + t481 * t947 + t482 * t949 + t878 * t961 + t1185 + t826;
t859 = t3 * qJD(1) + t18 * qJD(2);
t821 = (t674 * t637 - t675 * t836 + (-t224 * t970 - t225 * t969) * t811) * t1145 + (t713 * t77 + t714 * t78) * t1143 + (t70 * t714 - t71 * t713) * t1141 + t637 * t1051 - t836 * t1052 + t324 * t1065 + t325 * t1067 - t486 * t906 / 0.2e1 - t485 * t905 / 0.2e1 + (t1141 * t350 + t1143 * t367 + t914) * t397 + (t1141 * t353 - t1143 * t366 + t913) * t1180 + t1171 * t1064;
t831 = m(5) * t1091 + m(6) * t1118 + t134 * t1141 - t983 / 0.2e1 + t982 / 0.2e1;
t10 = -t821 + t995 / 0.2e1 + t996 / 0.2e1 + t994 / 0.2e1 - t992 / 0.2e1 + t831;
t43 = m(5) * (-t674 * t970 - t675 * t969) * t811 - t758 * t905 - t760 * t906 - (-m(6) * t367 - t1155) * t714 + (m(6) * t366 - t1154) * t713;
t858 = -qJD(1) * t10 + qJD(2) * t43;
t857 = -t646 * t713 + t647 * t714;
t108 = t813 * t655 - t713 * t551 - m(7) * (-t350 * t813 + t465 * t713);
t827 = (t114 * t713 - t1180 * t465 + t350 * t733 - t70 * t813) * t1141 + t551 * t1112 + t195 * t1065 + t655 * t1061 - t813 * t322 / 0.2e1;
t832 = m(7) * t1133 + t993 / 0.2e1 + mrSges(7,1) * t882;
t25 = t827 - t832;
t855 = qJD(1) * t25 - qJD(2) * t108;
t854 = m(7) * t1135 - t979 / 0.2e1;
t853 = m(7) * t1122 - t973 / 0.2e1;
t633 = -Ifges(7,1) * t754 - t747;
t635 = -Ifges(6,1) * t754 + t1022;
t834 = -t635 / 0.4e1 - t633 / 0.4e1 + t984 / 0.2e1 - t1160;
t625 = -Ifges(7,3) * t755 - t1013;
t631 = Ifges(6,2) * t755 - t750;
t835 = t625 / 0.4e1 - t636 / 0.4e1 - t634 / 0.4e1 - t631 / 0.4e1 + mrSges(6,3) * t1077;
t817 = -t915 * t813 - t914 * t646 + t913 * t647 + t849 * t755 + t848 * t754 + (t647 * t1065 + t646 * t1064 + (t1120 + t1123) * t755 + (-t366 / 0.2e1 - t353 / 0.2e1) * t754) * mrSges(7,2) - t835 * t714 + t834 * t713 + (-t465 * t862 - t863 * t587 + (-t350 + t367) * t646 + (t353 + t366) * t647) * t1141 + t465 * t1084 - t863 * t1083 + t549 * t1086 + t551 * t1085 + t622 * t1050 + t550 * t1044;
t825 = (-pkin(5) * t358 + qJ(6) * t357) * t1142 + pkin(5) * t1070 + t654 * t1134 + t357 * t1138 + mrSges(7,1) * t1122 + t388 * t1140 + mrSges(6,2) * t1117;
t12 = -t715 * t947 - t949 * t958 + t817 + t825 + t878;
t31 = -t647 * t974 + t646 * t977 - t798 * t622 + t862 * t623 + (t984 + t635 / 0.2e1 + t633 / 0.2e1 + t1186) * t755 + (-t646 * mrSges(7,2) - t625 / 0.2e1 + t631 / 0.2e1 + t1187) * t754 + (t1035 - t621) * t587;
t818 = -t923 * t646 + t922 * t647 + t915 * t733 + t852 * t754 + t851 * t755 + (-t397 * t1077 + t647 * t1112 + (-t78 / 0.2e1 + t1137) * t755 + (-t77 / 0.2e1 - t71 / 0.2e1) * t754) * mrSges(7,2) - t835 * t397 - t834 * t1180 + (-t114 * t862 + t192 * t587 + (-t70 + t78) * t646 + (t71 + t77) * t647) * t1141 + t114 * t1084 + t192 * t1083 + t622 * t1124 + t193 * t1086 + t195 * t1085 + t194 * t1044;
t828 = (-pkin(5) * t95 + qJ(6) * t92) * t1142 + pkin(5) * t1110 + t401 * t1134 + t106 * t1140 + t107 * t1139 + t92 * t1138 + mrSges(7,1) * t1135;
t7 = t535 * t947 + t536 * t949 + t734 * t948 + t818 + t828;
t847 = t7 * qJD(1) + t12 * qJD(2) - t31 * qJD(3);
t820 = (t970 * t225 - t969 * t224 + (-t637 * t969 - t836 * t970) * qJ(4)) * t1145 + (-t754 * t78 + t755 * t77 + t885) * t1143 + (-t70 * t754 - t71 * t755 + t885) * t1141 + t324 * t1053 + t325 * t1055 + t485 * t943 + t486 * t941 + t637 * t875 - t836 * t876 + t1171 * t1057 + t1192 * (t1055 * t1180 + t397 * t1057);
t823 = -t1036 / 0.2e1 + t393 * t1144 + t145 * t1142 - t990 / 0.2e1 - t989 / 0.2e1 - t988 / 0.2e1 + t986 / 0.2e1 + t733 * t877 + mrSges(5,1) * t872;
t15 = t820 + t823;
t822 = -m(5) * (-t674 * t969 + t675 * t970) / 0.2e1 + (t366 * t755 - t367 * t754 + t857) * t1144 + (-t350 * t754 - t353 * t755 + t857) * t1142 - t970 * t758 / 0.2e1 + t760 * t940;
t824 = -t952 * t715 - t950 * t958 + (t1178 + t877 + t912 / 0.2e1) * t813 + m(6) * t1049 + m(7) * t1105;
t27 = (t713 * t951 + t913) * t755 + (-t714 * t951 + t914) * t754 + t822 + t824;
t82 = (m(6) + m(7)) * (t646 * t755 + t647 * t754) - t1194 * (t969 ^ 2 + t970 ^ 2) + t1192 * (-t754 ^ 2 - t755 ^ 2);
t841 = qJD(1) * t15 - qJD(2) * t27 - qJD(3) * t82;
t830 = (t114 * t755 - t1180 * t587 + t647 * t733) * t1142 + t1180 * t1083 + t195 * t1055;
t29 = t830 + t854 + t987;
t292 = t1183 * t755;
t829 = (t465 * t755 + t587 * t713 - t647 * t813) * t1142 + t623 * t1067 + t551 * t1055;
t51 = 0.2e1 * mrSges(7,2) * t1063 + t829 + t853;
t840 = qJD(1) * t29 + qJD(2) * t51 - qJD(3) * t292;
t135 = (-t863 / 0.4e1 - t1033 / 0.4e1 - t967 / 0.4e1) * t1149 + t550 + t549;
t216 = (t1032 / 0.4e1 - t966 / 0.4e1 + t862 / 0.4e1) * t1149 - t621 - t622;
t38 = (t192 / 0.4e1 + t1034 / 0.4e1 - t968 / 0.4e1) * t1149 + 0.2e1 * (mrSges(7,3) - mrSges(6,2)) * t1198 + 0.2e1 * t1179 * t1196;
t839 = qJD(1) * t38 + qJD(2) * t135 - qJD(3) * t216;
t118 = -t805 + (t937 / 0.4e1 + t935 / 0.4e1 - t959 / 0.2e1 - t367 / 0.4e1) * t1149;
t40 = t980 + (t938 / 0.4e1 + t936 / 0.4e1 + t963 / 0.2e1 - t78 / 0.4e1) * t1149;
t838 = qJD(1) * t40 + qJD(2) * t118 + qJD(5) * t804;
t182 = t1149 * t1196;
t512 = m(7) * t713;
t593 = m(7) * t755;
t837 = qJD(1) * t182 - qJD(2) * t512 - qJD(3) * t593;
t405 = m(7) * t647 - t977;
t365 = -t1035 / 0.2e1 + t862 * t1141;
t310 = m(7) * t1088 + t1141 * t863;
t183 = (t1112 + t1196) * m(7);
t117 = (t367 - 0.2e1 * t959) * t1141 + m(7) * t1119 + t655;
t52 = -t829 + t853;
t39 = (t78 + 0.2e1 * t963) * t1141 + m(7) * t1136 + t322;
t37 = t1197 / 0.2e1 + mrSges(6,2) * t1198 + t952 * t1180 + t950 * t397 + t1179 * t1112;
t30 = t733 * t944 + t987 / 0.2e1 - t830 + t854;
t28 = t1053 * t658 + t1055 * t659 + t1057 * t1169 - t822 + t824 + t1192 * (t713 * t1053 - t714 * t1056);
t24 = t827 + t832;
t14 = t820 - t823;
t13 = t817 + t1010 / 0.2e1 + t1001 / 0.2e1 - t1003 / 0.2e1 + t1006 / 0.2e1 - t1019 / 0.2e1 - t1016 / 0.2e1 - t825;
t11 = t481 * t952 + t482 * t950 + t821 + t831;
t8 = t818 + t1011 / 0.2e1 + t1002 / 0.2e1 + t1004 / 0.2e1 - t1007 / 0.2e1 + t1020 / 0.2e1 + t1017 / 0.2e1 - t828;
t4 = -t826 + t1005 / 0.2e1 - t1008 / 0.2e1 + t1021 / 0.2e1 + t1018 / 0.2e1 + t324 * t1120 + t325 * t1119 + (Ifges(7,2) + Ifges(6,3)) * t881 + t1171 * t1121 + t1185;
t2 = (t701 / 0.4e1 + t528 / 0.4e1 + t526 / 0.4e1 + t1151) * t733 + t916 * t536 + (-t887 / 0.4e1 + t700 / 0.4e1 + t527 / 0.4e1 + t525 / 0.4e1 + t1164) * t734 + (-t254 / 0.4e1 - t253 / 0.4e1) * t713 + (t590 / 0.4e1 + t543 / 0.4e1 - t426 / 0.4e1 - t251 / 0.4e1 - t250 / 0.4e1 + (m(5) * t1107 + t1158) * pkin(9) + t1168) * t813 + (t591 / 0.4e1 + t341 / 0.4e1 + t164 / 0.4e1 + t163 / 0.4e1 + Ifges(4,6) * t928 + (-t652 / 0.2e1 + t1089 + t1036 / 0.2e1) * pkin(9) + t1159) * t811 - t924 * t958 + (-t895 / 0.4e1 - t806 / 0.4e1) * t961 + t815 + t1182;
t19 = [qJD(2) * t5 + qJD(3) * t6 + qJD(4) * t17 + qJD(5) * t9 + qJD(6) * t34, t2 * qJD(3) + t11 * qJD(4) + t4 * qJD(5) + t24 * qJD(6) + t991 + (t1152 + t785 + t1172 * t1067 + t919 * t481 + t917 * t482 + m(4) * (-pkin(2) * t740 + (-t585 * t811 + t586 * t813) * pkin(9)) + 0.2e1 * (t320 * t674 + t321 * t675 + t539 * t808) * t1145 + 0.2e1 * (t102 * t350 + t105 * t353 + t134 * t465) * t1141 + 0.2e1 * (t111 * t366 + t112 * t367 + t387 * t762) * t1143 + t704 * t1068 + t702 * t1069 + t231 * t1064 + t762 * t270 + t321 * t758 + t320 * t760 + t539 * t735 - t714 * t228 / 0.2e1 - pkin(2) * t689 + t674 * t607 + t675 * t606 + t111 * t658 + (-t740 * mrSges(4,1) + t644 / 0.2e1 - t433 / 0.2e1 - t229 / 0.2e1 - t230 / 0.2e1 + t586 * mrSges(4,3) + pkin(9) * t722) * t813 + t105 * t659 + (t740 * mrSges(4,2) + t645 / 0.2e1 + t434 * t941 + t435 * t943 - t585 * mrSges(4,3) + (t507 - t723) * pkin(9)) * t811 + ((Ifges(4,5) * t1043 + Ifges(4,6) * t1040 - Ifges(3,6)) * t812 + (t1040 * t779 + t811 * t850) * t814) * t810 + t102 * t655 + t112 * t656 + t134 * t551 + t387 * t552 + t465 * t269 + t367 * t412 + t366 * t413 + t353 * t414 + t350 * t411) * qJD(2), t985 + t2 * qJD(2) + (t897 / 0.2e1 - t774 * t908 / 0.2e1 - t578 * t893 + t773 * t872 + (m(6) * t107 + m(7) * t92 + t400 + t401) * t647 + t252 * t1057 + t1194 * (-t969 * t312 + t970 * t313) + t249 * t1056 + t798 * t295 + t106 * t974 + t587 * t294 + pkin(3) * t547 - t509 * mrSges(4,2) + (-m(6) * t106 + m(7) * t95 - t402 + t403) * t646 + t428 * t940 + t577 * t900 - t107 * t976 - t92 * t977 + t1181 * t510 + t1183 * t145 + t1184 * t393 - t724 - t725 + t1186 * t535 + t1187 * t536 + t1191 * t1055 - t95 * t975) * qJD(3) + t14 * qJD(4) + t8 * qJD(5) + t30 * qJD(6) + t1059 * t1153, qJD(2) * t11 + qJD(3) * t14 + qJD(5) * t37 + qJD(6) * t183 + t965, t972 + t4 * qJD(2) + t8 * qJD(3) + t37 * qJD(4) + (t865 * mrSges(7,2) + t1156 * t77 + t1157 * t78 + t198 + t199) * qJD(5) + t39 * qJD(6), qJD(2) * t24 + qJD(3) * t30 + qJD(4) * t183 + qJD(5) * t39 + t964; qJD(3) * t1 - qJD(4) * t10 + qJD(5) * t3 + qJD(6) * t25 - t991, qJD(3) * t16 + qJD(4) * t43 + qJD(5) * t18 - qJD(6) * t108 ((t534 + t532) * t1055 + (-m(6) * t388 + m(7) * t358 - t660 + t661) * t646 + t774 * t904 / 0.2e1 - t773 * t903 / 0.2e1 - t761 * t893 + t1194 * (-t969 * t687 + t970 * t688) + (m(6) * t389 + m(7) * t357 + t654 + t657) * t647 + t524 * t1056 + t530 * t1057 + mrSges(4,2) * t808 + t886 + t895 / 0.2e1 + t798 * t554 - pkin(3) * t736 + t388 * t974 + t587 * t553 + t705 * t940 + t759 * t900 - t389 * t976 - t357 * t977 + t1181 * t809 + t1183 * t466 + t1184 * t763 - t1186 * t715 + t1190 * t1063 - t358 * t975) * qJD(3) + t28 * qJD(4) + t13 * qJD(5) + t52 * qJD(6) + t860 + t1043 * t1153, qJD(3) * t28 + qJD(5) * t310 + t858, t13 * qJD(3) + t310 * qJD(4) + (t864 * mrSges(7,2) + t1156 * t366 + t1157 * t367 + t556 + t557) * qJD(5) + t117 * qJD(6) + t859, qJD(3) * t52 + qJD(5) * t117 + t855; -qJD(2) * t1 + qJD(4) * t15 + qJD(5) * t7 - qJD(6) * t29 - t985, -qJD(4) * t27 + qJD(5) * t12 - qJD(6) * t51 - t860, -qJD(4) * t82 - qJD(5) * t31 + qJD(6) * t292, qJD(5) * t365 + t841, t365 * qJD(4) + (t861 * mrSges(7,2) - t1156 * t646 + t1157 * t647 + t627 + t629) * qJD(5) + t405 * qJD(6) + t847, qJD(5) * t405 - t840; qJD(2) * t10 - qJD(3) * t15 + qJD(5) * t38 - qJD(6) * t182 - t965, qJD(3) * t27 + qJD(5) * t135 + qJD(6) * t512 - t858, -qJD(5) * t216 + qJD(6) * t593 - t841, 0, t839, -t837; -qJD(2) * t3 - qJD(3) * t7 - qJD(4) * t38 + qJD(6) * t40 - t972, -qJD(3) * t12 - qJD(4) * t135 + qJD(6) * t118 - t859, qJD(4) * t216 - t847, -t839, t804 * qJD(6), t838; -qJD(2) * t25 + qJD(3) * t29 + qJD(4) * t182 - qJD(5) * t40 - t964, qJD(3) * t51 - qJD(4) * t512 - qJD(5) * t118 - t855, -qJD(4) * t593 + t840, t837, -t838, 0;];
Cq  = t19;
