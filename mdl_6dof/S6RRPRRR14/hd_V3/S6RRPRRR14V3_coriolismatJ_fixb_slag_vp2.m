% Calculate matrix of centrifugal and coriolis load on the joints for
% S6RRPRRR14V3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [1x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[dummy]';
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
% Datum: 2019-04-12 15:12
% Revision: b693519ea345eb34ae9622239e7f1167217e9d53 (2019-04-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S6RRPRRR14V3_coriolismatJ_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(1,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRR14V3_coriolismatJ_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRR14V3_coriolismatJ_fixb_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [1 1]), ...
  'S6RRPRRR14V3_coriolismatJ_fixb_slag_vp2: pkin has to be [1x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRPRRR14V3_coriolismatJ_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRPRRR14V3_coriolismatJ_fixb_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RRPRRR14V3_coriolismatJ_fixb_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-04-12 15:03:30
% EndTime: 2019-04-12 15:04:29
% DurationCPUTime: 23.09s
% Computational Cost: add. (12267->1143), mult. (38407->1622), div. (0->0), fcn. (37089->8), ass. (0->620)
t716 = cos(qJ(5));
t1064 = -t716 / 0.2e1;
t701 = Ifges(6,4) * t716;
t712 = sin(qJ(5));
t663 = Ifges(6,1) * t712 + t701;
t1167 = t1064 * t663;
t713 = sin(qJ(4));
t715 = cos(qJ(6));
t946 = t715 * t716;
t912 = t713 * t946;
t711 = sin(qJ(6));
t717 = cos(qJ(4));
t961 = t711 * t717;
t588 = t912 - t961;
t1093 = t588 / 0.2e1;
t705 = t712 ^ 2;
t709 = t716 ^ 2;
t1154 = (-t709 / 0.2e1 - t705 / 0.2e1) * mrSges(6,3);
t1166 = mrSges(5,2) + t1154;
t1047 = Ifges(6,4) * t712;
t820 = Ifges(6,1) * t716 - t1047;
t776 = t820 * t713;
t1165 = t717 * Ifges(6,5) - t776;
t1021 = Ifges(6,3) * t717;
t1030 = Ifges(6,6) * t712;
t815 = Ifges(6,5) * t716 - t1030;
t779 = t713 * t815;
t519 = t779 - t1021;
t1003 = t711 * mrSges(7,1);
t998 = t715 * mrSges(7,2);
t652 = t998 + t1003;
t595 = t652 * t712;
t960 = t712 * t595;
t1164 = t960 / 0.2e1 - t1154;
t714 = sin(qJ(2));
t718 = cos(qJ(2));
t936 = t717 * t718;
t591 = t712 * t714 + t716 * t936;
t1043 = Ifges(6,5) * t591;
t1067 = -t715 / 0.4e1;
t953 = t713 * t718;
t375 = t591 * t715 + t711 * t953;
t1122 = -t375 / 0.4e1;
t374 = -t591 * t711 + t715 * t953;
t1044 = Ifges(7,4) * t711;
t656 = Ifges(7,2) * t715 + t1044;
t700 = Ifges(7,4) * t715;
t661 = Ifges(7,1) * t711 + t700;
t934 = t718 * t712;
t952 = t714 * t716;
t590 = t717 * t934 - t952;
t85 = Ifges(7,4) * t375 + Ifges(7,2) * t374 + Ifges(7,6) * t590;
t87 = Ifges(7,1) * t375 + Ifges(7,4) * t374 + Ifges(7,5) * t590;
t549 = t588 * qJ(3);
t470 = t718 * t549;
t977 = t470 * t715;
t945 = t715 * t717;
t954 = t713 * t716;
t787 = t711 * t954 + t945;
t547 = t787 * qJ(3);
t467 = t718 * t547;
t979 = t467 * t711;
t1163 = -(-t977 / 0.2e1 - t979 / 0.2e1) * mrSges(7,3) - t1043 / 0.2e1 - t374 * t656 / 0.4e1 + t661 * t1122 - t711 * t87 / 0.4e1 + t85 * t1067;
t877 = t953 / 0.2e1;
t1162 = Ifges(6,3) * t877 - Ifges(6,6) * t590 / 0.2e1;
t1052 = mrSges(7,2) * t716;
t1053 = mrSges(7,1) * t716;
t653 = Ifges(7,5) * t711 + Ifges(7,6) * t715;
t1085 = t653 / 0.4e1;
t958 = t712 * t715;
t800 = mrSges(7,3) * t958 + t1053;
t1087 = -t800 / 0.2e1;
t963 = t711 * t712;
t797 = mrSges(7,3) * t963 - t1052;
t1089 = -t797 / 0.2e1;
t1161 = qJ(3) * (t711 * (t1087 + t1053 / 0.2e1) - t715 * (-t1052 / 0.2e1 + t1089)) + 0.3e1 / 0.4e1 * Ifges(6,6) - t1085;
t951 = t714 * t717;
t586 = t712 * t951 + t716 * t718;
t1025 = Ifges(7,6) * t586;
t938 = t716 * t717;
t911 = t714 * t938;
t587 = t911 - t934;
t956 = t713 * t714;
t373 = t587 * t715 + t711 * t956;
t1046 = Ifges(7,4) * t373;
t955 = t713 * t715;
t372 = -t587 * t711 + t714 * t955;
t84 = Ifges(7,2) * t372 + t1025 + t1046;
t1160 = -t84 / 0.4e1;
t1024 = Ifges(7,6) * t711;
t1036 = Ifges(7,5) * t715;
t654 = -t1024 + t1036;
t995 = t716 * Ifges(7,3);
t518 = t654 * t712 - t995;
t1113 = t518 / 0.4e1;
t1159 = -t718 / 0.2e1;
t927 = t705 + t709;
t1158 = 0.1e1 - t927;
t1157 = t709 - 0.1e1;
t1155 = mrSges(6,3) * t927;
t1006 = t587 * Ifges(6,4);
t310 = -Ifges(6,1) * t586 - t1006;
t82 = Ifges(7,5) * t373 + Ifges(7,6) * t372 + t586 * Ifges(7,3);
t1153 = t310 + t82;
t706 = t713 ^ 2;
t695 = t706 * qJ(3);
t136 = -mrSges(7,1) * t372 + mrSges(7,2) * t373;
t1008 = t587 * mrSges(6,3);
t426 = mrSges(6,1) * t956 - t1008;
t866 = t136 / 0.2e1 - t426 / 0.2e1;
t1152 = t712 * t866;
t796 = t1036 / 0.2e1 - t1024 / 0.2e1;
t1151 = t796 * t716;
t649 = -mrSges(7,1) * t715 + mrSges(7,2) * t711;
t898 = t649 / 0.2e1 - mrSges(6,1) / 0.2e1;
t836 = t898 * t712;
t302 = mrSges(7,1) * t787 + mrSges(7,2) * t588;
t1054 = mrSges(6,1) * t717;
t802 = mrSges(6,3) * t954 + t1054;
t930 = t302 + t802;
t1018 = Ifges(7,3) * t712;
t939 = t716 * t654;
t1023 = Ifges(7,6) * t716;
t1148 = -Ifges(7,2) * t711 + t700;
t521 = t1148 * t712 - t1023;
t964 = t711 * t521;
t1150 = t939 + t1018 + t964;
t1068 = -t715 / 0.2e1;
t1077 = t711 / 0.2e1;
t1149 = t661 * t1068 + t656 * t1077;
t1147 = -Ifges(6,2) * t712 + t701;
t702 = Ifges(5,4) * t717;
t1146 = -Ifges(5,2) * t713 + t702;
t664 = Ifges(5,1) * t713 + t702;
t996 = t716 * mrSges(6,2);
t821 = t712 * mrSges(6,1) + t996;
t959 = t712 * t713;
t236 = Ifges(7,5) * t588 - Ifges(7,6) * t787 + Ifges(7,3) * t959;
t523 = -t717 * Ifges(6,6) + t1147 * t713;
t1145 = -t523 / 0.2e1 + t236 / 0.2e1;
t698 = Ifges(5,5) * t717;
t1143 = Ifges(3,4) - t698 / 0.2e1 - Ifges(4,5);
t704 = t711 ^ 2;
t708 = t715 ^ 2;
t928 = t704 + t708;
t823 = mrSges(7,3) * t928 - mrSges(6,2);
t923 = -0.1e1 + t928;
t1142 = t705 * t923 + t709;
t137 = -mrSges(7,1) * t374 + mrSges(7,2) * t375;
t429 = -mrSges(6,2) * t953 - mrSges(6,3) * t590;
t430 = mrSges(6,1) * t953 - mrSges(6,3) * t591;
t1141 = mrSges(5,2) * t714 + mrSges(5,3) * t953 - t429 * t716 - t712 * (t137 - t430);
t994 = t717 * mrSges(6,2);
t799 = mrSges(6,3) * t959 - t994;
t941 = t716 * t799;
t1140 = t712 * t930 - t941;
t1035 = Ifges(7,5) * t716;
t662 = Ifges(7,1) * t715 - t1044;
t527 = t662 * t712 - t1035;
t1138 = m(6) / 0.4e1;
t1137 = -m(7) / 0.2e1;
t1136 = m(7) / 0.2e1;
t1135 = -mrSges(7,1) / 0.2e1;
t1134 = Ifges(7,3) / 0.2e1;
t1038 = Ifges(7,5) * t586;
t355 = Ifges(7,4) * t372;
t86 = Ifges(7,1) * t373 + t1038 + t355;
t1133 = t86 / 0.4e1;
t1132 = -qJ(3) / 0.2e1;
t1131 = qJ(3) / 0.2e1;
t557 = Ifges(7,4) * t787;
t244 = Ifges(7,1) * t588 + Ifges(7,5) * t959 - t557;
t1129 = t244 / 0.4e1;
t300 = mrSges(6,1) * t587 - mrSges(6,2) * t586;
t1128 = t300 / 0.2e1;
t1127 = t372 / 0.2e1;
t1126 = t372 / 0.4e1;
t1125 = t373 / 0.2e1;
t1124 = t373 / 0.4e1;
t1123 = t374 / 0.2e1;
t1121 = t375 / 0.2e1;
t427 = mrSges(7,1) * t959 - mrSges(7,3) * t588;
t1120 = t427 / 0.2e1;
t495 = t787 * t714;
t466 = qJ(3) * t495;
t1119 = t466 / 0.2e1;
t918 = qJ(3) * t961;
t985 = qJ(3) * t714;
t469 = -t714 * t918 + t912 * t985;
t1118 = -t469 / 0.2e1;
t1117 = t470 / 0.2e1;
t589 = t711 * t713 + t715 * t938;
t471 = t589 * t985;
t1116 = -t471 / 0.2e1;
t1115 = t495 / 0.2e1;
t496 = t588 * t714;
t1114 = -t496 / 0.2e1;
t1112 = -t521 / 0.4e1;
t1111 = t521 / 0.2e1;
t522 = Ifges(7,6) * t712 + t1148 * t716;
t1110 = -t522 / 0.4e1;
t1108 = t527 / 0.2e1;
t528 = Ifges(7,5) * t712 + t662 * t716;
t1107 = -t528 / 0.4e1;
t788 = t711 * t938 - t955;
t548 = t788 * qJ(3);
t1106 = t548 / 0.2e1;
t1105 = -t548 / 0.2e1;
t1104 = -t549 / 0.2e1;
t550 = t589 * qJ(3);
t1103 = -t550 / 0.2e1;
t1102 = t550 / 0.2e1;
t1101 = t787 / 0.2e1;
t1100 = -t787 / 0.2e1;
t1099 = -t787 / 0.4e1;
t1098 = -t788 / 0.2e1;
t1097 = -t586 / 0.4e1;
t1096 = t586 / 0.4e1;
t1095 = t587 / 0.2e1;
t1094 = t587 / 0.4e1;
t1092 = t588 / 0.4e1;
t1091 = t589 / 0.2e1;
t1090 = t591 / 0.2e1;
t1088 = t800 / 0.2e1;
t1086 = t653 / 0.2e1;
t1084 = t654 / 0.4e1;
t1083 = t656 / 0.4e1;
t658 = t716 * Ifges(6,2) + t1047;
t1082 = -t658 / 0.4e1;
t1081 = t658 / 0.4e1;
t1080 = t661 / 0.4e1;
t1079 = -t663 / 0.4e1;
t1078 = -t711 / 0.2e1;
t1076 = t711 / 0.4e1;
t1075 = -t712 / 0.2e1;
t1074 = -t712 / 0.4e1;
t1073 = t712 / 0.2e1;
t1072 = t712 / 0.4e1;
t1071 = t713 / 0.2e1;
t1070 = t713 / 0.4e1;
t1069 = t714 / 0.2e1;
t1066 = t715 / 0.2e1;
t1065 = t715 / 0.4e1;
t1063 = -t716 / 0.4e1;
t1062 = t716 / 0.2e1;
t1061 = t716 / 0.4e1;
t1060 = t717 / 0.2e1;
t1059 = t718 / 0.2e1;
t1058 = m(4) * qJ(3);
t1057 = m(7) * t705;
t793 = -t998 / 0.2e1 - t1003 / 0.2e1;
t769 = t793 * t716;
t947 = t715 * t797;
t51 = (-t947 / 0.2e1 - t800 * t1078 + t769) * t716 + (t595 / 0.2e1 + t793 * t712) * t712;
t594 = t712 * t649;
t93 = t594 * t1064 + (-t1066 * t800 - t1077 * t797) * t712 + (t708 / 0.2e1 + t704 / 0.2e1) * t705 * mrSges(7,3);
t1056 = t51 * qJD(5) - t93 * qJD(6);
t1055 = m(7) * qJD(3);
t1048 = Ifges(5,4) * t713;
t1045 = Ifges(7,4) * t588;
t1042 = Ifges(6,5) * t712;
t1041 = Ifges(6,5) * t713;
t1040 = Ifges(7,5) * t375;
t1039 = Ifges(7,5) * t496;
t1037 = Ifges(7,5) * t589;
t1029 = Ifges(6,6) * t716;
t1028 = Ifges(7,6) * t374;
t1027 = Ifges(7,6) * t495;
t1026 = Ifges(7,6) * t788;
t1022 = Ifges(6,3) * t713;
t1020 = Ifges(7,3) * t587;
t1019 = Ifges(7,3) * t590;
t1017 = t466 * mrSges(7,3);
t1016 = t469 * mrSges(7,3);
t1015 = t495 * mrSges(7,1);
t1014 = t496 * mrSges(7,2);
t199 = -mrSges(7,2) * t586 + mrSges(7,3) * t372;
t200 = mrSges(7,1) * t586 - mrSges(7,3) * t373;
t201 = -mrSges(7,2) * t590 + mrSges(7,3) * t374;
t202 = mrSges(7,1) * t590 - mrSges(7,3) * t375;
t1007 = t587 * Ifges(6,1);
t558 = Ifges(6,4) * t586;
t246 = Ifges(6,5) * t956 + t1007 - t558;
t247 = Ifges(6,1) * t591 - Ifges(6,4) * t590 + Ifges(6,5) * t953;
t665 = Ifges(5,1) * t717 - t1048;
t989 = t718 * Ifges(5,5);
t531 = t714 * t665 - t989;
t1000 = t714 * Ifges(5,5);
t532 = t665 * t718 + t1000;
t719 = qJ(3) ^ 2;
t950 = t714 * t719;
t641 = t705 * t706 * t950;
t608 = t718 * t641;
t710 = t717 ^ 2;
t642 = t710 * t718 * t950;
t990 = t718 * mrSges(5,2);
t623 = -mrSges(5,3) * t956 + t990;
t933 = -t136 + t426;
t1009 = t586 * mrSges(6,3);
t425 = -mrSges(6,2) * t956 - t1009;
t943 = t716 * t425;
t764 = t712 * t933 - t623 - t943;
t301 = mrSges(6,1) * t586 + mrSges(6,2) * t587;
t991 = t718 * mrSges(5,1);
t628 = -mrSges(5,3) * t951 - t991;
t931 = t301 - t628;
t741 = mrSges(4,1) * t718 + mrSges(4,3) * t714 + t713 * t764 + t717 * t931;
t238 = Ifges(6,5) * t587 - Ifges(6,6) * t586 + Ifges(6,3) * t956;
t988 = t718 * Ifges(5,6);
t525 = t1146 * t714 - t988;
t789 = -t525 / 0.2e1 + t238 / 0.2e1 + t988 / 0.2e1;
t791 = t1043 / 0.2e1 + t1146 * t1159 - t714 * Ifges(5,6) + t1162;
t242 = -t586 * Ifges(6,2) + Ifges(6,6) * t956 + t1006;
t897 = t82 / 0.2e1 - t242 / 0.2e1;
t243 = Ifges(6,4) * t591 - Ifges(6,2) * t590 + Ifges(6,6) * t953;
t83 = t1019 + t1028 + t1040;
t899 = -t243 / 0.2e1 + t83 / 0.2e1;
t929 = -mrSges(5,1) * t714 + mrSges(6,1) * t590 + mrSges(6,2) * t591 + mrSges(5,3) * t936;
t5 = t246 * t1090 + t247 * t1095 - t469 * t201 - t470 * t199 + t466 * t202 + t467 * t200 + t87 * t1125 + t84 * t1123 + t86 * t1121 + t85 * t1127 + t897 * t590 + t899 * t586 + m(7) * (t466 * t467 + t469 * t470 + t608) + m(6) * (t608 + t642) + m(5) * t642 + (t741 * qJ(3) + t531 * t1060 + t1143 * t718 + t789 * t713) * t718 + (t532 * t1060 + t791 * t713 + (t1141 * t713 + t929 * t717) * qJ(3) + (qJ(3) * mrSges(4,3) + Ifges(3,1) + Ifges(4,1) - Ifges(3,2) - Ifges(4,3) - Ifges(5,3) + (m(4) + 0.4e1 * (m(5) / 0.4e1 + t709 * t1138) * t706) * t719) * t718 + (-qJ(3) * mrSges(4,1) - t1143) * t714) * t714;
t1013 = t5 * qJD(1);
t1012 = t548 * mrSges(7,3);
t1011 = t550 * mrSges(7,3);
t1010 = t788 * mrSges(7,1);
t1005 = t589 * mrSges(7,2);
t913 = t712 * t956;
t155 = -Ifges(7,3) * t913 + t1027 - t1039;
t156 = -Ifges(7,4) * t496 + Ifges(7,2) * t495 - Ifges(7,6) * t913;
t157 = -Ifges(7,1) * t496 + Ifges(7,4) * t495 - Ifges(7,5) * t913;
t219 = -t1014 - t1015;
t323 = mrSges(7,2) * t913 + mrSges(7,3) * t495;
t324 = -mrSges(7,1) * t913 + mrSges(7,3) * t496;
t377 = t714 * t519;
t379 = t714 * t523;
t381 = t1165 * t714;
t468 = t788 * t985;
t497 = t821 * t956;
t552 = t802 * t714;
t659 = Ifges(5,2) * t717 + t1048;
t600 = t714 * t659;
t602 = t714 * t664;
t707 = t714 ^ 2;
t935 = t717 * t719;
t845 = t707 * t713 * t935;
t609 = t705 * t845;
t944 = t716 * t246;
t551 = t799 * t714;
t971 = t551 * t716;
t6 = t381 * t1095 + t84 * t1115 + t86 * t1114 - t469 * t323 - t471 * t199 + t466 * t324 + t468 * t200 + t157 * t1125 + t156 * t1127 + (t379 / 0.2e1 + t155 / 0.2e1) * t586 + m(7) * (t466 * t468 + t469 * t471 + t609) + m(6) * (t1157 * t845 + t609) + ((-t602 / 0.2e1 + t789) * t717 + (t600 / 0.2e1 - t531 / 0.2e1 - t377 / 0.2e1 + t989 / 0.2e1 - t944 / 0.2e1 - t897 * t712) * t713 + ((-t497 + t764) * t717 + (-t971 + (-t219 + t552) * t712 - t931) * t713) * qJ(3)) * t714;
t1004 = t6 * qJD(1);
t1002 = t711 * t84;
t997 = t715 * t86;
t822 = mrSges(6,1) * t716 - mrSges(6,2) * t712;
t987 = mrSges(5,1) + t822;
t986 = mrSges(6,1) - t649;
t984 = qJ(3) * t716;
t983 = qJ(3) * t717;
t150 = -t586 * t654 + t1020;
t151 = Ifges(7,6) * t587 - t1148 * t586;
t152 = Ifges(7,5) * t587 - t586 * t662;
t253 = t652 * t586;
t276 = mrSges(7,3) * t586 * t711 - mrSges(7,2) * t587;
t969 = t586 * t715;
t277 = mrSges(7,1) * t587 + mrSges(7,3) * t969;
t306 = -Ifges(6,5) * t586 - Ifges(6,6) * t587;
t308 = -Ifges(6,2) * t587 - t558;
t804 = t466 * t711 + t469 * t715;
t780 = m(7) * t804;
t937 = t716 * t719;
t847 = m(7) * t712 * t937;
t949 = t715 * t199;
t965 = t711 * t200;
t967 = t706 * t707;
t11 = t847 * t967 + t152 * t1125 + t151 * t1127 - t469 * t276 + t466 * t277 + (t310 / 0.2e1 + t897) * t587 + (-t997 / 0.2e1 + t1002 / 0.2e1 + t150 / 0.2e1 - t246 / 0.2e1 - t308 / 0.2e1) * t586 + (t306 * t1071 + (t717 * t300 + ((t933 + t1008) * t716 + (t253 + t425 - t780 + t949 - t965 + t1009) * t712) * t713) * qJ(3)) * t714;
t982 = t11 * qJD(1);
t135 = mrSges(7,1) * t373 + mrSges(7,2) * t372;
t138 = Ifges(7,5) * t372 - Ifges(7,6) * t373;
t139 = -Ifges(7,2) * t373 + t355;
t140 = Ifges(7,1) * t372 - t1046;
t17 = qJ(3) * t135 * t913 - t466 * t199 - t469 * t200 - t586 * t138 / 0.2e1 + (-t86 / 0.2e1 - t139 / 0.2e1 + t1017) * t372 + (-t1016 - t140 / 0.2e1 + t84 / 0.2e1) * t373;
t981 = t17 * qJD(1);
t919 = qJ(3) * t967;
t640 = t705 * t919;
t966 = t710 * qJ(3);
t687 = t707 * t966;
t28 = t707 * t1058 - t496 * t199 + t495 * t200 + m(7) * (t466 * t495 + t469 * t496 + t640) + m(6) * (t709 * t919 + t640 + t687) + m(5) * (t687 + t919) + t741 * t714;
t980 = t28 * qJD(1);
t978 = t468 * t711;
t976 = t471 * t715;
t975 = t495 * t711;
t974 = t496 * t715;
t973 = t547 * t711;
t972 = t549 * t715;
t970 = t788 * t711;
t968 = t589 * t715;
t962 = t711 * t716;
t957 = t712 * t717;
t948 = t715 * t527;
t942 = t716 * t1165;
t622 = -mrSges(6,2) * t713 - mrSges(6,3) * t957;
t940 = t716 * t622;
t305 = -Ifges(7,5) * t787 - Ifges(7,6) * t588;
t926 = qJD(4) * t712;
t925 = qJD(5) * t712;
t924 = qJD(5) * t716;
t922 = t712 * t1055;
t921 = -t1057 / 0.4e1;
t920 = -Ifges(7,3) / 0.4e1 - Ifges(6,2) / 0.4e1;
t917 = qJ(3) * t956;
t916 = qJ(3) * t954;
t915 = qJ(3) * t945;
t910 = t1024 / 0.2e1;
t909 = t1021 / 0.2e1;
t908 = t1018 / 0.2e1;
t907 = -t1008 / 0.2e1;
t906 = t1002 / 0.4e1;
t905 = t996 / 0.2e1;
t904 = -t994 / 0.2e1;
t902 = Ifges(6,6) / 0.2e1 - t653 / 0.4e1;
t901 = t140 / 0.4e1 + t1160;
t900 = -t242 / 0.4e1 + t82 / 0.4e1;
t896 = t1133 + t139 / 0.4e1;
t895 = -t983 / 0.2e1;
t894 = t983 / 0.2e1;
t892 = -t963 / 0.2e1;
t891 = -t963 / 0.4e1;
t890 = -t962 / 0.2e1;
t889 = -t962 / 0.4e1;
t886 = -t958 / 0.2e1;
t885 = -t958 / 0.4e1;
t884 = t958 / 0.2e1;
t883 = t958 / 0.4e1;
t882 = t957 / 0.2e1;
t881 = -t956 / 0.2e1;
t880 = t956 / 0.2e1;
t879 = -t954 / 0.2e1;
t878 = -t953 / 0.2e1;
t876 = -t948 / 0.4e1;
t874 = t946 / 0.2e1;
t873 = t946 / 0.4e1;
t872 = t944 / 0.4e1;
t871 = t943 / 0.2e1;
t870 = t941 / 0.2e1;
t869 = t595 * t1060;
t868 = t822 * t1060;
t867 = t936 / 0.2e1;
t865 = t219 / 0.2e1 - t552 / 0.2e1;
t240 = -Ifges(7,2) * t787 + Ifges(7,6) * t959 + t1045;
t309 = -Ifges(7,1) * t787 - t1045;
t864 = -t240 / 0.4e1 + t309 / 0.4e1;
t863 = t301 / 0.2e1 - t628 / 0.2e1;
t862 = -t302 / 0.2e1 - t802 / 0.2e1;
t307 = -Ifges(7,2) * t588 - t557;
t861 = t307 / 0.4e1 + t1129;
t860 = t518 / 0.2e1 - t658 / 0.2e1;
t859 = t519 / 0.2e1 - t659 / 0.2e1;
t601 = t661 * t712;
t858 = t1112 - t601 / 0.4e1;
t857 = t523 / 0.4e1 - t236 / 0.4e1;
t237 = Ifges(7,3) * t957 - t1026 + t1037;
t524 = Ifges(6,6) * t713 + t1147 * t717;
t856 = -t524 / 0.2e1 + t237 / 0.2e1;
t599 = t712 * t656;
t855 = -t599 / 0.4e1 + t527 / 0.4e1;
t303 = t1005 + t1010;
t627 = mrSges(6,1) * t713 - mrSges(6,3) * t938;
t854 = t627 / 0.2e1 - t303 / 0.2e1;
t853 = t1081 - t518 / 0.4e1;
t852 = t1080 + t1148 / 0.4e1;
t851 = -t662 / 0.4e1 + t1083;
t846 = m(6) * t1158;
t844 = qJ(3) * t882;
t843 = qJ(3) * t880;
t842 = qJ(3) * t878;
t841 = qJ(3) * t877;
t840 = t712 * t881;
t839 = t595 * t881;
t838 = Ifges(6,1) / 0.4e1 + t920;
t837 = t713 * t898;
t833 = (-t710 / 0.2e1 - t706 / 0.2e1) * mrSges(5,3);
t832 = 0.3e1 / 0.4e1 * Ifges(6,5) + t595 * t1132;
t829 = t1131 * t594 + t1134;
t828 = t862 * t712;
t827 = t862 * t714;
t596 = t713 * t821;
t826 = -t596 / 0.2e1 - t940 / 0.2e1;
t597 = t821 * t717;
t825 = t597 / 0.2e1 + t870;
t824 = t623 / 0.2e1 + t871;
t655 = t1029 + t1042;
t241 = Ifges(7,4) * t589 - Ifges(7,2) * t788 + Ifges(7,6) * t957;
t245 = Ifges(7,1) * t589 - Ifges(7,4) * t788 + Ifges(7,5) * t957;
t423 = -mrSges(7,2) * t959 - mrSges(7,3) * t787;
t424 = -mrSges(7,2) * t957 - mrSges(7,3) * t788;
t428 = mrSges(7,1) * t957 - mrSges(7,3) * t589;
t530 = t717 * t820 + t1041;
t721 = (t237 / 0.4e1 - t524 / 0.4e1) * t586 + m(6) * t641 / 0.2e1 + (t466 * t547 - t468 * t548 + t469 * t549 - t471 * t550 + t641) * t1136 + t241 * t1126 + t245 * t1124 + t428 * t1119 + t468 * t1120 + t424 * t1118 + t423 * t1116 + t495 * t240 / 0.4e1 - t496 * t1129 + t547 * t200 / 0.2e1 + t324 * t1105 + t199 * t1104 + t323 * t1102 + t156 * t1099 + t788 * t1160 + t530 * t1094 + t157 * t1092 + t589 * t1133 - t718 * t698 / 0.4e1 + 0.2e1 * (t1157 * t1138 * t706 + (t1138 * t1158 + t921) * t710) * t950;
t778 = t717 * t815;
t520 = t778 + t1022;
t724 = (t155 / 0.4e1 + t379 / 0.4e1) * t712 + (-t664 / 0.4e1 - t1146 / 0.4e1 + t520 / 0.4e1 + t942 / 0.4e1 + t857 * t712) * t714 + t238 / 0.4e1 - t525 / 0.4e1 - t602 / 0.4e1 + t381 * t1061;
t731 = -t600 / 0.4e1 + t531 / 0.4e1 + t377 / 0.4e1 + t872 + t900 * t712 + (t665 / 0.4e1 - t659 / 0.4e1 + t519 / 0.4e1) * t714;
t737 = t1079 * t591 + t1088 * t467 + t1112 * t374 - t1117 * t797 + t1122 * t527;
t781 = -t497 / 0.2e1 - t824;
t782 = t971 / 0.2e1 + t863;
t1 = ((-t655 / 0.4e1 + 0.3e1 / 0.4e1 * Ifges(5,6)) * t718 + (t826 * t714 + (-mrSges(5,2) / 0.2e1 - t1154) * t718 + (t1059 * t595 + t714 * t854 - t866) * t712 + t781) * qJ(3) + t724) * t713 + (-t989 / 0.2e1 + ((mrSges(5,1) / 0.2e1 + t822 / 0.2e1) * t718 + t825 * t714 + (t827 + t865) * t712 + t782) * qJ(3) + t731) * t717 + (-Ifges(5,3) / 0.2e1 + qJ(3) * t833) * t714 + (-t243 / 0.4e1 + t83 / 0.4e1) * t716 + (t87 * t1067 + t85 * t1076 - t247 / 0.4e1) * t712 + t721 + t853 * t590 + t737;
t14 = t245 * t1093 + t244 * t1091 + t241 * t1100 + t240 * t1098 + t547 * t427 - t548 * t428 - t549 * t423 + t550 * t424 + m(7) * (-t547 * t548 - t549 * t550) + (t1146 / 0.2e1 + t664 / 0.2e1 - t520 / 0.2e1 - t942 / 0.2e1 + t1145 * t712 + (t940 + t596 + (t303 - t627) * t712) * qJ(3)) * t717 + (t530 * t1062 + t665 / 0.2e1 + t856 * t712 + 0.4e1 * (t846 / 0.4e1 + t921) * t935 + (t597 - t1140) * qJ(3) + t859) * t713;
t813 = t1 * qJD(1) + t14 * qJD(2);
t378 = t521 * t713;
t380 = t527 * t713;
t756 = -Ifges(7,5) * t958 + Ifges(7,6) * t963 + t995;
t771 = t797 * t713;
t772 = t800 * t713;
t777 = t652 * t713;
t20 = -t550 * t771 + t548 * t772 - t378 * t1101 + t380 * t1093 + t705 * t777 * t983 - t822 * t695 + (t240 * t892 + t244 * t884 - t717 * t655 / 0.2e1 + t236 * t1064 - t1165 * t1073 + t523 * t1062 + (-t1167 + (t658 + t756) * t1075) * t713 + t983 * t1155) * t713 - t930 * qJ(3) * t938 + (-t427 * t918 + t423 * t915 - m(7) * (-t548 * t918 - t550 * t915 + t710 * t937) - t799 * t983) * t712;
t803 = t548 * t711 + t550 * t715;
t738 = t799 / 0.2e1 + t803 * t1137 + t427 * t1077 + t423 * t1068;
t758 = t777 * t1075;
t720 = (-t717 * t847 + (-t1042 / 0.4e1 - t1029 / 0.4e1) * t713 + ((t1054 / 0.2e1 + t862) * t716 + (t904 - t758 - t738) * t712) * qJ(3)) * t714 + t800 * t1119 + t797 * t1118 + t586 * t1081 + t756 * t1096 - t663 * t1094 + t150 * t1072 + t242 * t1063 + t712 * t906 + t86 * t885 + (t246 + t308) * t1074 + t1153 * t1061;
t744 = -t253 / 0.2e1 - t425 / 0.2e1 - t1009 / 0.2e1 + t965 / 0.2e1 - t949 / 0.2e1;
t761 = t244 * t1067 + t240 * t1076 + t1165 / 0.4e1;
t790 = t907 + t866;
t722 = -t857 * t587 + (-t714 * t706 * t1154 + (t790 * t716 + (t1136 * t804 + t744) * t712) * t717) * qJ(3) + t761 * t586 - t378 * t1126 - t380 * t1124 + t277 * t1105 + t276 * t1102 + t151 * t1099 + t152 * t1092 - t717 * t306 / 0.4e1;
t760 = -t996 / 0.2e1 + t836;
t4 = (t720 + Ifges(6,3) * t1159 + (t718 * t760 + t1128) * qJ(3)) * t713 + t722 + t902 * t590 + t1163;
t812 = t4 * qJD(1) - t20 * qJD(2);
t299 = mrSges(7,1) * t588 - mrSges(7,2) * t787;
t27 = -t548 * t423 - t550 * t427 + (t1071 * t305 + t299 * t983) * t712 + (-t1011 - t240 / 0.2e1 + t309 / 0.2e1) * t588 - (t1012 + t307 / 0.2e1 + t244 / 0.2e1) * t787;
t723 = t901 * t588 + t864 * t373 + t861 * t372 - t896 * t787 + (t138 * t1070 + (t1060 * t135 + t299 * t881) * qJ(3)) * t712 + (t1093 * t469 + t1101 * t466 + t1103 * t373 + t1106 * t372) * mrSges(7,3) + t423 * t1119 + t469 * t1120 + t199 * t1105 + t200 * t1103 + t305 * t1096;
t740 = t1040 / 0.2e1 + t1028 / 0.2e1 + t1019 / 0.2e1 + t467 * mrSges(7,1) / 0.2e1 + mrSges(7,2) * t1117;
t7 = t723 - t740;
t811 = t7 * qJD(1) + t27 * qJD(2);
t810 = t711 * t844;
t809 = qJ(3) * t840;
t808 = t712 * t843;
t807 = t712 * t842;
t725 = (-t466 * t788 - t469 * t589 - t495 * t548 - t496 * t550) * t1136 + t427 * t1115 + t423 * t1114 + t200 * t1098 + t199 * t1091;
t743 = t870 + (t846 - t1057) * t983;
t749 = m(7) * (t718 * t916 - t977 - t979);
t762 = t1069 * t596 + t824;
t13 = (t137 / 0.2e1 - t430 / 0.2e1) * t716 + (-t990 / 0.2e1 + t762) * t717 + (-t991 / 0.2e1 + t743 * t714 + t863) * t713 + (-t749 / 0.2e1 - t429 / 0.2e1 + t201 * t1068 + t202 * t1077 + t866 * t717 + t713 * t827) * t712 + t725;
t686 = t705 * t966;
t38 = t1058 + t589 * t423 - t788 * t427 + t713 * t596 + mrSges(4,3) + (t710 + t706) * mrSges(5,3) + t1140 * t717 + m(7) * (t548 * t788 + t550 * t589 + t686) + m(6) * (t709 * t966 + t686 + t695) + m(5) * (t695 + t966);
t806 = t13 * qJD(1) + t38 * qJD(2);
t748 = m(7) * (qJ(3) * t911 - t976 - t978);
t785 = t1087 * t495 - t1089 * t496;
t31 = -mrSges(5,1) * t951 + t865 * t716 + (t1166 * t713 - t868) * t714 + (t839 - t748 / 0.2e1 + t323 * t1068 + t324 * t1077 - t551 / 0.2e1) * t712 + t785;
t752 = m(7) * (t916 - t972 - t973);
t754 = -t1071 * t822 - t1087 * t788 + t1089 * t589;
t37 = -t713 * mrSges(5,1) - t854 * t716 + (t869 - t752 / 0.2e1 + t424 * t1068 + t428 * t1077 - t622 / 0.2e1) * t712 + t754 - t1166 * t717;
t805 = -qJD(1) * t31 - qJD(2) * t37;
t801 = mrSges(7,1) * t712 - mrSges(7,3) * t946;
t798 = -mrSges(7,2) * t712 - mrSges(7,3) * t962;
t795 = t1015 / 0.2e1 + t1014 / 0.2e1;
t794 = -t1010 / 0.2e1 - t1005 / 0.2e1;
t792 = t711 * t809;
t786 = t1107 * t373 + t1110 * t372;
t784 = t1107 * t588 - t1110 * t787;
t783 = -t964 / 0.4e1 + t948 / 0.4e1;
t774 = -Ifges(6,5) + t1149;
t773 = qJ(3) * t1142;
t770 = mrSges(5,2) - t960 - t1155;
t768 = t821 * t1131;
t767 = t652 / 0.2e1 + t793;
t766 = (-t974 / 0.2e1 - t975 / 0.2e1) * mrSges(7,3);
t765 = (t968 / 0.2e1 + t970 / 0.2e1) * mrSges(7,3);
t734 = (t199 * t1078 + t200 * t1068 + (t1068 * t373 + t1077 * t372) * mrSges(7,3)) * t712 + t135 * t1064;
t35 = t734 - t795;
t733 = (t423 * t1078 + t427 * t1068 + (t1068 * t588 - t1077 * t787) * mrSges(7,3)) * t712 + t299 * t1064;
t40 = t733 - t794;
t763 = -qJD(1) * t35 - qJD(2) * t40 + qJD(4) * t93;
t759 = t595 * t984;
t757 = t1142 * t917;
t753 = t701 / 0.4e1 + t663 / 0.4e1 + t783;
t728 = (-t972 / 0.2e1 - t973 / 0.2e1) * mrSges(7,3) - t788 * t1083 + t589 * t1080 + t245 * t1076 + t241 * t1065;
t15 = t1022 / 0.2e1 + (t832 * t717 + (-t1066 * t548 + t1077 * t550) * mrSges(7,3) + (-t716 * t838 + t853) * t713 + t761) * t716 + (-t380 * t1067 - t378 * t1076 + mrSges(7,2) * t1102 + mrSges(7,1) * t1106 - t1161 * t717 + (t649 * t1132 + t838 * t712 + (0.3e1 / 0.4e1 * Ifges(6,4) - t796) * t716 + t753) * t713 + t857) * t712 + t728 + t784;
t42 = (t948 / 0.2e1 - t964 / 0.2e1 + t663 / 0.2e1 + t701 / 0.2e1 - t1151) * t716 + (t528 * t1066 + t522 * t1078 - t1047 / 0.2e1 + (-Ifges(7,3) / 0.2e1 + Ifges(6,1) / 0.2e1 - Ifges(6,2) / 0.2e1) * t716 + t860) * t712;
t729 = (-t976 / 0.2e1 - t978 / 0.2e1) * mrSges(7,3) + t495 * t1083 - t496 * t1080 + t157 * t1076 + t156 * t1065;
t9 = t714 * t909 + t853 * t587 + t753 * t586 + (t654 * t1097 - t1007 / 0.4e1 - t997 / 0.4e1 + t906 - t308 / 0.4e1 - t246 / 0.4e1 + t150 / 0.4e1 - t832 * t956 + (t1066 * t466 + t1078 * t469) * mrSges(7,3)) * t716 + (t152 * t1067 + t151 * t1076 + mrSges(7,2) * t1118 + t466 * t1135 + t1006 / 0.4e1 - t310 / 0.4e1 + t920 * t586 + (t1161 * t713 + t649 * t895) * t714 - t900) * t712 + t729 + t786;
t751 = -t9 * qJD(1) - t15 * qJD(2) + t51 * qJD(3) + t42 * qJD(4);
t598 = t712 * t653;
t726 = t1063 * t138 + t1087 * t469 + t1089 * t466 - t1096 * t598 + t372 * t855 + t373 * t858;
t736 = (t1016 / 0.2e1 + t901) * t715 + (t1017 / 0.2e1 - t896) * t711;
t746 = t1039 / 0.2e1 - t1027 / 0.2e1 + t468 * t1135 + mrSges(7,2) * t1116;
t19 = (t829 * t956 + t736) * t712 + t726 + t746;
t730 = t1063 * t305 + t1088 * t550 - t1089 * t548 + t588 * t858 - t787 * t855;
t735 = (-t1012 / 0.2e1 - t861) * t711 + (-t1011 / 0.2e1 + t864) * t715 - t598 * t1070;
t745 = -t1037 / 0.2e1 + t1026 / 0.2e1 + t547 * t1135 + mrSges(7,2) * t1104;
t26 = (-t717 * t829 + t735) * t712 + t730 + t745;
t50 = -t598 * t1062 + ((t601 / 0.2e1 + t1111) * t715 + (t1108 - t599 / 0.2e1) * t711) * t712;
t750 = -qJD(1) * t19 - qJD(2) * t26 + qJD(3) * t93 + qJD(4) * t50;
t23 = t766 + t757 * t1137 + (mrSges(6,2) * t880 + t780 / 0.2e1 + t744) * t716 + (t1068 * t276 + t1077 * t277 - t714 * t837 - t790) * t712;
t33 = t828 + t765 + (-t1137 * t773 + t836) * t717 + (t904 + t738) * t716;
t435 = t923 * t716 * t712;
t747 = -t23 * qJD(1) - t33 * qJD(2) + t51 * qJD(4) + t1055 * t435;
t158 = (t661 / 0.2e1 + t1148 / 0.2e1) * t715 + (t662 / 0.2e1 - t656 / 0.2e1) * t711;
t732 = t1084 * t586 + t372 * t852 - t373 * t851 + t652 * t809;
t22 = -t1020 / 0.2e1 + (t1038 / 0.2e1 + mrSges(7,2) * t808 + t896) * t715 + (-t1025 / 0.2e1 + mrSges(7,1) * t808 + t901) * t711 + t732;
t727 = -t588 * t851 + t711 * t864 + t715 * t861 - t787 * t852;
t29 = Ifges(7,3) * t879 + ((t1084 + t796) * t713 + t767 * t983) * t712 + t727;
t351 = t767 * t716;
t44 = t908 + t939 / 0.4e1 + (t1035 / 0.2e1 + t851 * t712 - t855) * t715 + (-t1023 / 0.2e1 + t852 * t712 - t858) * t711;
t742 = -qJD(1) * t22 - qJD(2) * t29 + qJD(3) * t351 + qJD(4) * t44 - qJD(5) * t158;
t352 = t1064 * t652 + t769;
t45 = -t939 / 0.4e1 - t601 * t1076 - t599 * t1065 + t662 * t883 + t656 * t885 + t908 + t1151 + t783 + (t661 + t1148) * t891;
t41 = t733 + t794;
t39 = t303 * t1064 + t424 * t884 + t428 * t892 + t627 * t1062 + t1164 * t717 + t754 + (t752 + t622) * t1073;
t36 = t734 + t795;
t34 = t302 * t1073 - t716 * t758 + (t716 * t803 - t717 * t773) * t1136 + t423 * t874 + t771 * t884 + t427 * t890 + t772 * t892 - t941 / 0.2e1 - t802 * t1075 + t765 + t760 * t717;
t32 = t323 * t884 + t324 * t892 + t219 * t1064 + t552 * t1062 + (-t1164 * t713 - t868) * t714 + t785 + (t748 + t551) * t1073;
t30 = Ifges(7,5) * t713 * t886 + t910 * t959 + t954 * t1134 + t844 * t998 + mrSges(7,1) * t810 + (t1070 * t654 + t652 * t894) * t712 + t727;
t25 = Ifges(7,3) * t882 + (t594 * t895 + t735) * t712 + t730 - t745;
t24 = (-t716 * t804 + t757) * t1136 + t199 * t874 + t276 * t884 + t200 * t890 + t277 * t892 + t136 * t1073 - t253 * t1064 + t871 + t712 * t907 + t426 * t1075 + t1009 * t1062 + t766 + (t905 - t836) * t956;
t21 = -Ifges(7,5) * t969 / 0.2e1 + t586 * t910 + t1020 / 0.2e1 + t809 * t998 + mrSges(7,1) * t792 + t896 * t715 + t901 * t711 + t732;
t18 = Ifges(7,3) * t840 + (t594 * t843 + t736) * t712 + t726 - t746;
t16 = -t784 + t728 - t942 / 0.4e1 + t801 * t1105 + 0.2e1 * t954 * t1113 + t798 * t1102 + t523 * t1074 + t236 * t1072 + t776 * t1061 + t759 * t1060 + t869 * t984 - t378 * t891 + t240 * t889 - t380 * t883 + t658 * t879 + t244 * t873 - t797 * t886 * t983 + Ifges(6,5) * t938 / 0.2e1 + (-qJ(3) * t837 - t902 * t717) * t712 - t800 * t810 + (t768 + Ifges(6,3) / 0.2e1 + qJ(3) * t905) * t713 - t778 / 0.4e1 + (-t663 / 0.2e1 + t1150 / 0.4e1 + t876 - t1147 / 0.4e1) * t959;
t12 = t201 * t884 + mrSges(5,2) * t867 + mrSges(5,1) * t877 + t202 * t892 + t718 * mrSges(4,2) + t430 * t1062 + t137 * t1064 + (t762 + t1152) * t717 + ((t828 + t743) * t714 + t863) * t713 + t725 + (t749 + t429) * t1073;
t10 = t872 + t729 - t786 + t798 * t1118 + t801 * t1119 + t1147 * t1097 + t587 * t1082 + t242 * t1074 + t150 * t1063 + t308 * t1061 + t839 * t984 + t768 * t951 - t808 * t947 + t151 * t891 + t84 * t889 + t759 * t881 + t152 * t883 + t86 * t873 - t800 * t792 + (t909 + (-t1041 / 0.2e1 + mrSges(6,2) * t894) * t716 + (t713 * t902 - t898 * t983) * t712 + t779 / 0.4e1) * t714 + (t1079 + t876) * t586 + t1150 * t1096 + (t820 + t518) * t1094 + t1153 * t1072;
t8 = t723 + t740;
t3 = (qJ(3) * t1128 + t720) * t713 + t590 * t1085 + t722 + t649 * t807 + t821 * t841 + t1162 - t1163;
t2 = t731 * t717 + (t988 / 0.4e1 + t724) * t713 + t721 + t87 * t883 + t85 * t891 + t243 * t1061 + t83 * t1063 + Ifges(5,3) * t1069 + t247 * t1072 + t895 * t991 + mrSges(5,2) * t841 + t595 * t807 + Ifges(5,5) * t867 + Ifges(5,6) * t878 + t655 * t953 / 0.4e1 - t737 + t842 * t1155 + (t1082 + t1113) * t590 + ((t712 * t865 + t782) * t717 + (t781 - t1152) * t713 + (t825 * t717 + t826 * t713 + t833 + (t713 * t854 + t717 * t862) * t712) * t714 - t822 * t867) * qJ(3);
t43 = [qJD(2) * t5 + qJD(3) * t28 + qJD(4) * t6 + qJD(5) * t11 - qJD(6) * t17, t12 * qJD(3) + t2 * qJD(4) + t3 * qJD(5) + t8 * qJD(6) + t1013 + (Ifges(4,4) * t718 + Ifges(3,5) * t718 - t1165 * t1090 + t87 * t1093 + t85 * t1100 - t548 * t202 + t550 * t201 - t470 * t423 + t467 * t427 + t240 * t1123 + t244 * t1121 + m(7) * (-t467 * t548 - t470 * t550) + (t664 * t1059 - t791) * t717 + (t247 * t1062 + t1000 / 0.2e1 + t532 / 0.2e1 + t899 * t712 + (0.2e1 * (t846 / 0.2e1 - t1057 / 0.2e1) * t935 + t859) * t718) * t713 + ((t596 * t718 - t1141) * t717 + (-t1140 * t718 + t929) * t713) * qJ(3) + (-mrSges(4,2) * qJ(3) - Ifges(3,6) + Ifges(4,6)) * t714 + t1145 * t590) * qJD(2), t980 + t12 * qJD(2) + t32 * qJD(4) + t24 * qJD(5) + t36 * qJD(6) + (t713 * t952 - t974 - t975) * t922, t1004 + t2 * qJD(2) + t32 * qJD(3) + t10 * qJD(5) + t18 * qJD(6) + (t157 * t1066 + t156 * t1078 + t381 / 0.2e1) * t926 + (-t379 * t1062 + t155 * t1064 - t496 * t1108 + t1111 * t495 - t468 * t800 + t471 * t797 + ((t655 / 0.2e1 - Ifges(5,6)) * t717 + (-t712 * t860 - Ifges(5,5) + t1167) * t713 + (t713 * t987 + t717 * t770) * qJ(3)) * t714) * qJD(4), t3 * qJD(2) + t24 * qJD(3) + t10 * qJD(4) + t21 * qJD(6) + t982 + (t1066 * t151 + t1077 * t152 + t1086 * t587 + t306 + (t712 * t823 + t716 * t986) * t917 + t1149 * t586) * qJD(5), -t981 + t8 * qJD(2) + t36 * qJD(3) + t18 * qJD(4) + t21 * qJD(5) + (mrSges(7,1) * t469 - mrSges(7,2) * t466 + t138) * qJD(6); qJD(3) * t13 + qJD(4) * t1 + qJD(5) * t4 + qJD(6) * t7 - t1013, qJD(3) * t38 + qJD(4) * t14 - qJD(5) * t20 + qJD(6) * t27, t39 * qJD(4) + t34 * qJD(5) + t41 * qJD(6) + (-t938 + t968 + t970) * t922 + t806, t39 * qJD(3) + t16 * qJD(5) + t25 * qJD(6) + (t241 * t1078 + t245 * t1066 + t530 / 0.2e1 + t860 * t717) * t926 + t813 + (-Ifges(5,6) * t713 + t1071 * t655 + t1091 * t527 + t1098 * t521 - t547 * t800 + t549 * t797 + t698 + (t1060 * t663 - t856) * t716 + (t713 * t770 - t717 * t987) * qJ(3)) * qJD(4), t34 * qJD(3) + t16 * qJD(4) + (-t1066 * t378 - t1077 * t380) * qJD(5) + t30 * qJD(6) + ((-Ifges(6,6) + t1086) * t713 - t986 * t983) * t924 + (t774 * t713 - t823 * t983) * t925 + t812, t41 * qJD(3) + t25 * qJD(4) + t30 * qJD(5) + (-mrSges(7,1) * t550 + mrSges(7,2) * t548 + t305) * qJD(6) + t811; -qJD(2) * t13 - qJD(4) * t31 - qJD(5) * t23 + qJD(6) * t35 - t980, -qJD(4) * t37 - qJD(5) * t33 + qJD(6) * t40 - t806, m(7) * t435 * qJD(5), t805 + t1056, t352 * qJD(6) + t823 * t924 - t925 * t986 + t747, qJD(5) * t352 + qJD(6) * t594 - t763; -qJD(2) * t1 + qJD(3) * t31 - qJD(5) * t9 + qJD(6) * t19 - t1004, qJD(3) * t37 - qJD(5) * t15 + qJD(6) * t26 - t813, -t805 + t1056, qJD(5) * t42 - qJD(6) * t50 (t1066 * t522 + t1073 * t653 + t1077 * t528 - t1030) * qJD(5) + t45 * qJD(6) - t774 * t924 + t751, qJD(5) * t45 - qJD(6) * t598 - t750; -qJD(2) * t4 + qJD(3) * t23 + qJD(4) * t9 + qJD(6) * t22 - t982, qJD(3) * t33 + qJD(4) * t15 + qJD(6) * t29 - t812, -t351 * qJD(6) - t747, -qJD(6) * t44 - t751, t158 * qJD(6), qJD(6) * t654 - t742; -qJD(2) * t7 - qJD(3) * t35 - qJD(4) * t19 - qJD(5) * t22 + t981, -qJD(3) * t40 - qJD(4) * t26 - qJD(5) * t29 - t811, qJD(5) * t351 + t763, qJD(5) * t44 + t750, t742, 0;];
Cq  = t43;
