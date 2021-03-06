% Calculate vector of inverse dynamics joint torques for
% S6RPRRPP2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% qJDD [6x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,theta2]';
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
% tau [6x1]
%   joint torques of inverse dynamics (contains inertial, gravitational coriolis and centrifugal forces)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 04:34
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau = S6RPRRPP2_invdynJ_fixb_slag_vp1(qJ, qJD, qJDD, g, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(9,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPP2_invdynJ_fixb_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRPP2_invdynJ_fixb_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRRPP2_invdynJ_fixb_slag_vp1: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRRPP2_invdynJ_fixb_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPRRPP2_invdynJ_fixb_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRRPP2_invdynJ_fixb_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RPRRPP2_invdynJ_fixb_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RPRRPP2_invdynJ_fixb_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From invdyn_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 04:31:30
% EndTime: 2019-03-09 04:33:20
% DurationCPUTime: 103.34s
% Computational Cost: add. (43005->1383), mult. (57380->1648), div. (0->0), fcn. (54919->8), ass. (0->654)
t1207 = Icges(6,4) + Icges(5,5);
t1206 = -Icges(7,2) - Icges(6,3);
t1205 = -Icges(5,6) + Icges(6,6);
t614 = cos(qJ(4));
t1204 = (Icges(7,4) + Icges(6,5)) * t614;
t611 = sin(qJ(4));
t1203 = (-Icges(5,4) + Icges(6,5)) * t611;
t1201 = -Icges(6,2) - Icges(5,3);
t1200 = t1206 * t611 - t1204;
t1199 = t1205 * t611 + t1207 * t614;
t1198 = t1203 + (Icges(5,1) + Icges(6,1)) * t614;
t1158 = -Icges(7,5) + t1207;
t1127 = Icges(5,2) - t1206;
t1157 = Icges(7,6) - t1205;
t612 = sin(qJ(3));
t615 = cos(qJ(3));
t979 = Icges(5,4) * t614;
t740 = -Icges(5,2) * t611 + t979;
t1197 = t1205 * t615 + t612 * t740;
t1186 = t1199 * t612 + t1201 * t615;
t735 = Icges(7,5) * t614 + Icges(7,6) * t611;
t440 = Icges(7,3) * t615 + t612 * t735;
t1166 = t440 - t1186;
t938 = t612 * t614;
t577 = Icges(6,5) * t938;
t940 = t611 * t612;
t1187 = Icges(6,3) * t940 - t1197 + t577;
t578 = Icges(7,4) * t938;
t963 = Icges(7,6) * t615;
t446 = Icges(7,2) * t940 + t578 + t963;
t1156 = t446 + t1187;
t1185 = t1198 * t612 - t1207 * t615;
t976 = Icges(7,4) * t611;
t742 = Icges(7,1) * t614 + t976;
t452 = Icges(7,5) * t615 + t612 * t742;
t1135 = t452 + t1185;
t1132 = -Icges(6,1) - Icges(7,1);
t610 = qJ(1) + pkin(9);
t601 = sin(t610);
t602 = cos(t610);
t937 = t614 * t615;
t437 = t601 * t937 - t602 * t611;
t398 = Icges(6,5) * t437;
t939 = t611 * t615;
t942 = t602 * t614;
t436 = t601 * t939 + t942;
t946 = t601 * t612;
t208 = -Icges(6,6) * t946 - Icges(6,3) * t436 - t398;
t404 = Icges(5,4) * t437;
t219 = -Icges(5,2) * t436 + Icges(5,6) * t946 + t404;
t1193 = t208 + t219;
t439 = t601 * t611 + t602 * t937;
t399 = Icges(6,5) * t439;
t945 = t601 * t614;
t438 = t602 * t939 - t945;
t943 = t602 * t612;
t209 = Icges(6,6) * t943 + Icges(6,3) * t438 + t399;
t981 = Icges(5,4) * t439;
t221 = -Icges(5,2) * t438 + Icges(5,6) * t943 + t981;
t1192 = t209 - t221;
t210 = Icges(5,5) * t437 - Icges(5,6) * t436 + Icges(5,3) * t946;
t216 = Icges(6,4) * t437 + Icges(6,2) * t946 + Icges(6,6) * t436;
t1191 = -t210 - t216;
t212 = Icges(5,5) * t439 - Icges(5,6) * t438 + Icges(5,3) * t943;
t218 = Icges(6,4) * t439 + Icges(6,2) * t943 + Icges(6,6) * t438;
t1190 = t212 + t218;
t397 = Icges(6,5) * t436;
t225 = Icges(6,1) * t437 + Icges(6,4) * t946 + t397;
t403 = Icges(5,4) * t436;
t229 = -Icges(5,1) * t437 - Icges(5,5) * t946 + t403;
t1189 = -t225 + t229;
t972 = Icges(6,5) * t438;
t227 = Icges(6,1) * t439 + Icges(6,4) * t943 + t972;
t405 = Icges(5,4) * t438;
t230 = Icges(5,1) * t439 + Icges(5,5) * t943 - t405;
t1188 = t227 + t230;
t1196 = (-t735 + t1199) * t615 + (Icges(7,3) - t1201) * t612;
t1092 = (-t740 - t1200) * t615 - t1157 * t612;
t1091 = (t742 + t1198) * t615 + t1158 * t612;
t1195 = (t1157 * t614 + t1158 * t611) * t612;
t1194 = (t1127 * t614 - t1203 - t976) * t612;
t1059 = t1135 * t439 + t1156 * t438 - t1166 * t943;
t1184 = t1189 * t439 + t1191 * t943 + t1193 * t438;
t1183 = t1188 * t439 + t1190 * t943 + t1192 * t438;
t868 = qJD(4) * t615;
t827 = t602 * t868;
t873 = qJD(3) * t612;
t828 = t611 * t873;
t871 = qJD(4) * t611;
t199 = qJD(1) * t436 - t601 * t871 + t602 * t828 - t614 * t827;
t587 = qJD(1) - t868;
t651 = t587 * t611 - t614 * t873;
t876 = qJD(1) * t615;
t799 = -qJD(4) + t876;
t200 = t602 * t651 - t799 * t945;
t872 = qJD(3) * t615;
t829 = t602 * t872;
t877 = qJD(1) * t612;
t837 = t601 * t877;
t676 = -t829 + t837;
t102 = Icges(7,5) * t200 - Icges(7,6) * t199 + Icges(7,3) * t676;
t106 = Icges(5,5) * t200 + Icges(5,6) * t199 - Icges(5,3) * t676;
t110 = Icges(6,4) * t200 - Icges(6,2) * t676 - Icges(6,6) * t199;
t1181 = -t102 + t106 + t110;
t869 = qJD(4) * t614;
t878 = qJD(1) * t602;
t879 = qJD(1) * t601;
t201 = -t601 * t828 - t602 * t871 - t614 * t879 + (t601 * t869 + t611 * t878) * t615;
t202 = t601 * t651 + t799 * t942;
t1151 = t601 * t872;
t678 = t602 * t877 + t1151;
t103 = Icges(7,5) * t202 + Icges(7,6) * t201 - Icges(7,3) * t678;
t107 = Icges(5,5) * t202 - Icges(5,6) * t201 + Icges(5,3) * t678;
t111 = Icges(6,4) * t202 + Icges(6,2) * t678 + Icges(6,6) * t201;
t1180 = -t103 + t107 + t111;
t104 = Icges(6,5) * t200 - Icges(6,6) * t676 - Icges(6,3) * t199;
t108 = Icges(7,4) * t200 - Icges(7,2) * t199 + Icges(7,6) * t676;
t112 = Icges(5,4) * t200 + Icges(5,2) * t199 - Icges(5,6) * t676;
t1179 = t104 + t108 - t112;
t105 = Icges(6,5) * t202 + Icges(6,6) * t678 + Icges(6,3) * t201;
t109 = Icges(7,4) * t202 + Icges(7,2) * t201 - Icges(7,6) * t678;
t113 = Icges(5,4) * t202 - Icges(5,2) * t201 + Icges(5,6) * t678;
t1178 = t105 + t109 - t113;
t114 = Icges(7,1) * t200 - Icges(7,4) * t199 + Icges(7,5) * t676;
t116 = Icges(6,1) * t200 - Icges(6,4) * t676 - Icges(6,5) * t199;
t118 = Icges(5,1) * t200 + Icges(5,4) * t199 - Icges(5,5) * t676;
t1177 = t114 + t116 + t118;
t115 = Icges(7,1) * t202 + Icges(7,4) * t201 - Icges(7,5) * t678;
t117 = Icges(6,1) * t202 + Icges(6,4) * t678 + Icges(6,5) * t201;
t119 = Icges(5,1) * t202 - Icges(5,4) * t201 + Icges(5,5) * t678;
t1176 = t115 + t117 + t119;
t205 = -Icges(7,5) * t437 - Icges(7,6) * t436 + Icges(7,3) * t946;
t1175 = t205 - t1191;
t206 = Icges(7,5) * t439 + Icges(7,6) * t438 - Icges(7,3) * t943;
t1174 = t206 - t1190;
t401 = Icges(7,4) * t437;
t214 = -Icges(7,2) * t436 + Icges(7,6) * t946 - t401;
t1173 = t214 + t1193;
t402 = Icges(7,4) * t439;
t215 = Icges(7,2) * t438 - Icges(7,6) * t943 + t402;
t1172 = t215 + t1192;
t400 = Icges(7,4) * t436;
t222 = Icges(7,1) * t437 - Icges(7,5) * t946 + t400;
t1171 = t222 - t1189;
t977 = Icges(7,4) * t438;
t224 = Icges(7,1) * t439 - Icges(7,5) * t943 + t977;
t1170 = t224 + t1188;
t1169 = qJD(3) * t1196 - qJD(4) * t1195;
t1168 = qJD(3) * t1092 + qJD(4) * t1194;
t497 = (-Icges(5,1) * t611 - t979) * t612;
t870 = qJD(4) * t612;
t1167 = qJD(4) * t497 + (t1132 * t611 + t1204) * t870 + t1091 * qJD(3);
t1165 = t1135 * t614 + t1156 * t611;
t1122 = t219 * t611 + t229 * t614;
t1123 = t214 * t611 - t222 * t614;
t1124 = t208 * t611 - t225 * t614;
t1164 = t1122 + t1123 + t1124;
t616 = cos(qJ(1));
t609 = t616 * pkin(1);
t1163 = t1189 * t437 + t1191 * t946 + t1193 * t436;
t1162 = t1188 * t437 + t1190 * t946 + t1192 * t436;
t1133 = rSges(7,3) + qJ(6);
t1161 = t1185 * t437 + t1186 * t946 + t1187 * t436;
t1012 = pkin(1) * qJD(1);
t608 = t615 * pkin(3);
t1072 = t612 * pkin(8) + t608;
t473 = t1072 * t601;
t597 = t602 * pkin(7);
t506 = t601 * pkin(2) - t597;
t487 = qJD(1) * t506;
t528 = pkin(8) * t829;
t570 = pkin(7) * t878;
t613 = sin(qJ(1));
t557 = pkin(3) * t612 - pkin(8) * t615;
t874 = qJD(3) * t602;
t835 = t557 * t874;
t1160 = qJD(1) * t473 + t1012 * t613 + t487 + t528 + t570 + t835;
t875 = qJD(3) * t601;
t479 = t602 * t870 + t875;
t480 = -t601 * t870 + t874;
t1159 = t1059 * t587 + t1183 * t479 + t1184 * t480;
t1019 = t613 * pkin(1);
t504 = rSges(3,1) * t601 + rSges(3,2) * t602;
t477 = -t504 - t1019;
t776 = t437 * rSges(5,1) - t436 * rSges(5,2);
t238 = -rSges(5,3) * t946 - t776;
t1017 = rSges(5,1) * t614;
t775 = -rSges(5,2) * t611 + t1017;
t468 = -rSges(5,3) * t615 + t612 * t775;
t1155 = -t238 * t587 + t468 * t480;
t617 = qJD(1) ^ 2;
t856 = t617 * t609;
t1154 = t601 * pkin(7);
t809 = -t506 - t1019;
t783 = -t473 + t809;
t712 = t783 * qJD(1);
t640 = t712 - t835;
t93 = -t1155 + t640;
t1152 = t601 * t93;
t714 = -pkin(2) - t1072;
t682 = t714 * t601;
t393 = qJD(5) * t438;
t120 = t200 * pkin(4) - qJ(5) * t199 + t393;
t396 = t436 * qJ(5);
t428 = t437 * pkin(4);
t296 = -t428 - t396;
t1150 = -t587 * t296 + t1160 + t120 - t393;
t931 = t214 * t438 - t439 * t222;
t932 = -t436 * t215 - t437 * t224;
t1149 = t932 + (-t205 * t602 + t206 * t601) * t612 + t931;
t729 = -t214 * t436 + t222 * t437;
t930 = t438 * t215 + t439 * t224;
t1148 = -(t205 * t601 + t206 * t602) * t612 + t930 - t729;
t1105 = t1171 * t200 + t1173 * t199 - t1175 * t676 + t1176 * t439 + t1178 * t438 + t1180 * t943;
t1104 = t1170 * t200 - t1172 * t199 + t1174 * t676 + t1177 * t439 + t1179 * t438 + t1181 * t943;
t1103 = t1171 * t202 - t1173 * t201 + t1175 * t678 + t1176 * t437 + t1178 * t436 + t1180 * t946;
t1102 = t1170 * t202 + t1172 * t201 - t1174 * t678 + t1177 * t437 + t1179 * t436 + t1181 * t946;
t73 = t205 * t943 - t931;
t74 = -t206 * t943 + t930;
t1098 = t479 * t74 - t480 * t73 + t1159;
t1147 = t1135 * t200 - t1156 * t199 + t1166 * t676 + t1167 * t439 + t1168 * t438 + t1169 * t943;
t1146 = t1135 * t202 + t1156 * t201 - t1166 * t678 + t1167 * t437 + t1168 * t436 + t1169 * t946;
t67 = t205 * t946 + t729;
t1145 = t67 - t1163;
t68 = -t206 * t946 - t932;
t1144 = t68 + t1162;
t1143 = t73 - t1184;
t1142 = t74 + t1183;
t1114 = t615 * t205;
t81 = -t1123 * t612 - t1114;
t1117 = t216 * t615;
t83 = -t1124 * t612 - t1117;
t1120 = t210 * t615;
t85 = -t1122 * t612 - t1120;
t1141 = t81 + t83 + t85;
t727 = t215 * t611 + t224 * t614;
t82 = t206 * t615 + t612 * t727;
t730 = t209 * t611 + t227 * t614;
t84 = -t218 * t615 + t612 * t730;
t725 = -t221 * t611 + t230 * t614;
t86 = -t212 * t615 + t612 * t725;
t1140 = t82 + t84 + t86;
t1058 = t1165 * t612 + t1166 * t615;
t1136 = t1200 * t612 + t1197 - t963;
t662 = -t436 * t446 - t437 * t452 + t440 * t946;
t1060 = t662 - t1161;
t1134 = (-t1165 + t1196) * t587 + (-t1166 * t601 - t1164) * t480 + (t1166 * t602 - t725 - t727 - t730) * t479;
t1082 = (pkin(4) * t614 + qJ(5) * t611) * t612;
t301 = t439 * pkin(4) + qJ(5) * t438;
t941 = t602 * t615;
t562 = pkin(3) * t941;
t475 = pkin(8) * t943 + t562;
t507 = t602 * pkin(2) + t1154;
t481 = qJD(1) * t507;
t600 = t616 * t1012;
t892 = t600 + t481;
t795 = qJD(1) * t475 - t557 * t875 + t892;
t867 = qJD(5) * t436;
t1110 = t1082 * t479 - t587 * t301 - t795 - t867;
t771 = rSges(7,1) * t614 + rSges(7,2) * t611;
t1112 = -pkin(5) * t938 - t1133 * t615 - t612 * t771;
t865 = qJD(6) * t612;
t537 = t601 * t865;
t1121 = rSges(7,1) + pkin(5);
t1074 = t438 * rSges(7,2) + t1121 * t439;
t923 = -t1133 * t943 + t1074;
t55 = t1112 * t479 + t923 * t587 - t1110 - t537;
t1130 = t436 * rSges(7,2) - t1133 * t946;
t773 = t437 * rSges(6,1) + t436 * rSges(6,3);
t237 = -rSges(6,2) * t946 - t773;
t1129 = (qJD(3) * t1165 - t1169) * t615 + (t1167 * t614 + t1168 * t611 + (-t1135 * t611 + t1156 * t614) * qJD(4) - t1166 * qJD(3)) * t612;
t1128 = Icges(5,1) - t1132;
t1126 = t1195 * t587 + (-t1157 * t437 - t1158 * t436) * t480 + (t1157 * t439 + t1158 * t438) * t479;
t1113 = t662 * t587;
t519 = t1072 * qJD(3);
t603 = qJD(6) * t615;
t1111 = -t519 - t603;
t375 = t601 * t1082;
t926 = t1121 * t437 + t1130;
t485 = t557 * t879;
t503 = pkin(4) * t937 + qJ(5) * t939;
t1109 = t1082 * t879 - t375 * t868 + t480 * t503 + t485;
t863 = qJD(1) * qJD(3);
t482 = qJDD(3) * t601 + t602 * t863;
t862 = qJDD(4) * t612;
t269 = -qJD(4) * t676 + t602 * t862 + t482;
t483 = -qJDD(3) * t602 + t601 * t863;
t270 = qJD(4) * t678 + t601 * t862 + t483;
t508 = qJD(3) * t870 - qJDD(4) * t615 + qJDD(1);
t1108 = t1059 * t508 + t1104 * t479 - t1105 * t480 + t1142 * t269 + t1143 * t270 + t1147 * t587;
t1107 = -t1060 * t508 + t1102 * t479 - t1103 * t480 + t1144 * t269 + t1145 * t270 + t1146 * t587;
t25 = (-qJD(3) * t1123 + t103) * t615 + (qJD(3) * t205 + t109 * t611 + t115 * t614 + (-t214 * t614 - t222 * t611) * qJD(4)) * t612;
t27 = (-qJD(3) * t1124 - t111) * t615 + (qJD(3) * t216 + t105 * t611 + t117 * t614 + (-t208 * t614 - t225 * t611) * qJD(4)) * t612;
t29 = (-qJD(3) * t1122 - t107) * t615 + (qJD(3) * t210 - t113 * t611 + t119 * t614 + (-t219 * t614 + t229 * t611) * qJD(4)) * t612;
t1101 = t25 + t27 + t29;
t26 = (qJD(3) * t727 + t102) * t615 + (-qJD(3) * t206 + t108 * t611 + t114 * t614 + (t215 * t614 - t224 * t611) * qJD(4)) * t612;
t28 = (qJD(3) * t730 - t110) * t615 + (qJD(3) * t218 + t104 * t611 + t116 * t614 + (t209 * t614 - t227 * t611) * qJD(4)) * t612;
t30 = (qJD(3) * t725 - t106) * t615 + (qJD(3) * t212 - t112 * t611 + t118 * t614 + (-t221 * t614 - t230 * t611) * qJD(4)) * t612;
t1100 = t26 + t28 + t30;
t32 = t479 * t68 - t480 * t67 - t1113;
t1099 = t1161 * t587 + t1162 * t479 + t1163 * t480 + t32;
t1097 = t1058 * t587 + t1140 * t479 - t1141 * t480;
t1096 = t1136 * t601;
t1095 = t1136 * t602;
t1094 = t1135 * t601;
t1093 = t1135 * t602;
t1090 = t1134 * t612;
t1089 = -t1166 * t587 - t1174 * t479 - t1175 * t480;
t1053 = t1140 * t602 + t1141 * t601;
t1088 = t1140 * t601 - t1141 * t602;
t1052 = t1142 * t602 + t1143 * t601;
t1087 = t1142 * t601 - t1143 * t602;
t1051 = t1144 * t602 + t1145 * t601;
t1086 = t1144 * t601 - t1145 * t602;
t772 = rSges(6,1) * t614 + rSges(6,3) * t611;
t692 = t772 * t612;
t704 = t436 * t587 + t480 * t940;
t1081 = -t199 + t704;
t703 = -t438 * t587 + t479 * t940;
t1080 = t201 + t703;
t376 = t602 * t1082;
t1079 = t301 * t870 - t587 * t376;
t291 = -t436 * pkin(4) + qJ(5) * t437;
t292 = -t436 * rSges(7,1) + t437 * rSges(7,2);
t1078 = -t291 - t292;
t297 = -t438 * pkin(4) + qJ(5) * t439;
t298 = -t438 * rSges(7,1) + t439 * rSges(7,2);
t1077 = t297 + t298;
t1075 = -t1082 * t480 + t393;
t1073 = rSges(7,2) * t939 + t1121 * t937;
t604 = Icges(4,4) * t615;
t741 = -Icges(4,2) * t612 + t604;
t533 = Icges(4,1) * t612 + t604;
t1070 = -t199 * rSges(7,2) + t1121 * t200 + t1133 * t837;
t240 = t439 * rSges(6,1) + rSges(6,2) * t943 + t438 * rSges(6,3);
t467 = -rSges(6,2) * t615 + t692;
t66 = t240 * t587 - t467 * t479 - t1110;
t846 = t296 - t926;
t54 = (-qJD(3) * t557 - t865) * t602 + t1112 * t480 + t846 * t587 + t712 + t1075;
t999 = t54 * t602;
t1069 = t55 * t601 + t999;
t1066 = -rSges(7,2) * t201 + t537;
t505 = t602 * rSges(3,1) - rSges(3,2) * t601;
t1020 = g(2) * t601;
t1063 = g(1) * t602 + t1020;
t1056 = (-t1135 + t1194) * t587 + (-t1127 * t437 + t1171 + t397 + t400 - t403) * t480 + (t1127 * t439 - t1170 + t405 - t972 - t977) * t479;
t1055 = (t1132 * t940 + t1156 + t497 + t577 + t578) * t587 + (t1128 * t436 + t1173 - t398 - t401 + t404) * t480 + (-t1128 * t438 + t1172 + t399 + t402 - t981) * t479;
t1054 = t1126 * t612;
t1050 = t1058 * t508 + t1129 * t587;
t944 = t601 * t615;
t962 = Icges(4,3) * t602;
t359 = Icges(4,5) * t944 - Icges(4,6) * t946 - t962;
t547 = Icges(4,4) * t946;
t974 = Icges(4,5) * t602;
t363 = Icges(4,1) * t944 - t547 - t974;
t966 = Icges(4,6) * t602;
t361 = Icges(4,4) * t944 - Icges(4,2) * t946 - t966;
t951 = t361 * t612;
t722 = -t363 * t615 + t951;
t138 = -t359 * t602 - t601 * t722;
t530 = Icges(4,5) * t615 - Icges(4,6) * t612;
t529 = Icges(4,5) * t612 + Icges(4,6) * t615;
t683 = qJD(3) * t529;
t982 = Icges(4,4) * t612;
t534 = Icges(4,1) * t615 - t982;
t364 = Icges(4,5) * t601 + t534 * t602;
t362 = Icges(4,6) * t601 + t602 * t741;
t950 = t362 * t612;
t721 = -t364 * t615 + t950;
t1049 = -t602 * t683 + (-t530 * t601 + t721 + t962) * qJD(1);
t360 = Icges(4,3) * t601 + t530 * t602;
t882 = qJD(1) * t360;
t1048 = qJD(1) * t722 - t601 * t683 + t882;
t531 = Icges(4,2) * t615 + t982;
t715 = t531 * t612 - t533 * t615;
t1047 = t715 * qJD(1) + t530 * qJD(3);
t1046 = t612 * t1063;
t866 = qJD(5) * t612;
t572 = t611 * t866;
t674 = t611 * t872 + t612 * t869;
t675 = -t611 * t870 + t614 * t872;
t307 = pkin(4) * t675 + qJ(5) * t674 + t572;
t1045 = -qJD(5) * t199 + qJDD(5) * t438 + t1082 * t270 - t480 * t307;
t906 = -Icges(4,2) * t944 + t363 - t547;
t908 = t533 * t601 + t361;
t1044 = -t612 * t906 - t615 * t908;
t1040 = -m(6) - m(7);
t1039 = t269 / 0.2e1;
t1038 = t270 / 0.2e1;
t1037 = -t479 / 0.2e1;
t1036 = t479 / 0.2e1;
t1035 = -t480 / 0.2e1;
t1034 = t480 / 0.2e1;
t1033 = t482 / 0.2e1;
t1032 = t483 / 0.2e1;
t1031 = t508 / 0.2e1;
t1030 = -t587 / 0.2e1;
t1029 = t587 / 0.2e1;
t1025 = -rSges(6,1) - pkin(4);
t1024 = -rSges(6,2) - pkin(8);
t1023 = -rSges(5,3) - pkin(8);
t1022 = g(1) * t601;
t1018 = rSges(4,1) * t615;
t1014 = rSges(7,3) * t612;
t149 = t436 * t479 + t438 * t480;
t822 = t473 * t875 + t475 * t874 + qJD(2);
t746 = -t296 * t479 + t572 + t822;
t845 = t301 + t923;
t43 = t479 * t926 + t480 * t845 + t603 + t746;
t1011 = t149 * t43;
t1010 = t25 * t480;
t1009 = t26 * t479;
t1008 = t27 * t480;
t1007 = t28 * t479;
t1006 = t29 * t480;
t1005 = t30 * t479;
t1000 = t54 * t601;
t922 = t240 + t301;
t56 = -t237 * t479 + t480 * t922 + t746;
t997 = t56 * t237;
t593 = t601 * rSges(4,3);
t996 = t602 * t93;
t606 = t612 * rSges(6,2);
t605 = t612 * rSges(5,3);
t925 = t237 + t296;
t65 = -t467 * t480 + t587 * t925 + t1075 + t640;
t995 = t65 * t467;
t994 = t81 * t270;
t993 = t82 * t269;
t992 = t83 * t270;
t991 = t84 * t269;
t990 = t85 * t270;
t989 = t86 * t269;
t928 = t201 * qJ(5) + t867;
t121 = pkin(4) * t202 + t928;
t984 = t121 * t943 - t296 * t829;
t884 = rSges(4,2) * t946 + t602 * rSges(4,3);
t366 = rSges(4,1) * t944 - t884;
t785 = -t366 + t809;
t540 = rSges(4,1) * t612 + rSges(4,2) * t615;
t831 = t540 * t874;
t172 = qJD(1) * t785 - t831;
t957 = t172 * t601;
t956 = t172 * t602;
t367 = rSges(4,1) * t941 - rSges(4,2) * t943 + t593;
t173 = qJD(1) * t367 - t540 * t875 + t892;
t465 = t540 * t602;
t955 = t173 * t465;
t948 = t529 * t601;
t947 = t529 * t602;
t847 = t200 * rSges(6,1) + rSges(6,2) * t829 - t199 * rSges(6,3);
t123 = -rSges(6,2) * t837 + t847;
t935 = t120 + t123;
t934 = -rSges(7,3) * t829 + (-qJ(6) * t872 - t865) * t602 + t1070;
t933 = t1121 * t202 - t1133 * t678 - t1066;
t573 = t614 * t866;
t929 = t479 * t291 + t573;
t921 = qJD(5) * t437 + t587 * t297;
t920 = t1082 * t837 + t301 * t873;
t919 = t1082 * t946 - t296 * t615;
t293 = -t436 * rSges(6,1) + t437 * rSges(6,3);
t918 = -t291 - t293;
t299 = -t438 * rSges(6,1) + t439 * rSges(6,3);
t917 = t297 + t299;
t859 = pkin(3) * t946;
t527 = qJD(3) * t859;
t305 = pkin(8) * t678 + qJD(1) * t562 - t527;
t916 = -t305 - t481;
t318 = (-rSges(6,1) * t611 + rSges(6,3) * t614) * t870 + (t615 * t772 + t606) * qJD(3);
t915 = -t307 - t318;
t914 = (-rSges(7,1) * t611 + rSges(7,2) * t614) * t870 + (t615 * t771 - t1014) * qJD(3) + pkin(5) * t675 - qJ(6) * t873 + t603;
t501 = (-rSges(5,1) * t611 - rSges(5,2) * t614) * t612;
t319 = qJD(4) * t501 + (t615 * t775 + t605) * qJD(3);
t913 = -t319 - t519;
t912 = -t601 * t359 - t363 * t941;
t911 = t601 * t360 + t364 * t941;
t910 = t1112 * t601;
t909 = t1112 * t602;
t907 = -t533 * t602 - t362;
t905 = -t531 * t602 + t364;
t559 = pkin(8) * t944;
t472 = t559 - t859;
t561 = pkin(8) * t941;
t858 = pkin(3) * t943;
t474 = t561 - t858;
t904 = t472 * t875 + t474 * t874;
t902 = t601 * t473 + t602 * t475;
t575 = qJ(5) * t938;
t498 = -pkin(4) * t940 + t575;
t901 = qJD(5) * t439 - t480 * t498;
t895 = -t467 - t1082;
t894 = -t468 - t557;
t893 = qJ(6) * t612 + t1014 - t1073;
t854 = rSges(5,2) * t940;
t891 = rSges(5,3) * t944 + t601 * t854;
t890 = rSges(5,3) * t941 + t602 * t854;
t889 = rSges(4,2) * t837 + rSges(4,3) * t878;
t888 = t527 - t600;
t886 = -t531 + t534;
t885 = t533 + t741;
t881 = qJD(1) * t472;
t880 = qJD(1) * t530;
t248 = -t601 * t715 - t947;
t864 = t248 * qJD(1);
t861 = -pkin(4) - t1121;
t860 = -pkin(8) + t1133;
t857 = g(3) * t940;
t855 = rSges(5,1) * t938;
t851 = t120 + t934;
t850 = t480 * t296;
t849 = t200 * rSges(5,1) + t199 * rSges(5,2) + rSges(5,3) * t829;
t830 = t602 * t873;
t677 = -t601 * t876 - t830;
t304 = pkin(3) * t677 - pkin(8) * t837 + t528;
t844 = t602 * t304 + t601 * t305 + t473 * t878;
t843 = -t307 - t914;
t842 = -t519 + t915;
t241 = t439 * rSges(5,1) - t438 * rSges(5,2) + rSges(5,3) * t943;
t841 = -t1082 + t1112;
t840 = -t557 + t895;
t470 = rSges(6,1) * t937 + rSges(6,3) * t939 + t606;
t839 = t609 + t507;
t838 = -pkin(2) - t608;
t834 = t519 * t875;
t574 = qJD(5) * t939;
t821 = -pkin(2) - t1018;
t818 = t878 / 0.2e1;
t817 = -t875 / 0.2e1;
t816 = t875 / 0.2e1;
t815 = -t874 / 0.2e1;
t814 = t874 / 0.2e1;
t812 = t872 / 0.2e1;
t808 = t597 - t1019;
t807 = t43 * t926;
t806 = t54 * t1112;
t805 = t602 * t1133;
t804 = t66 * t895;
t321 = t364 * t944;
t802 = t360 * t602 - t321;
t801 = -t359 + t950;
t800 = pkin(3) * t830;
t798 = t1082 * t678 + t615 * t121 + t307 * t946;
t797 = -t296 * t601 + t602 * t301 + t902;
t796 = -t519 + t843;
t794 = -t557 + t841;
t793 = t1072 + t503;
t786 = qJDD(1) * t609 - t1019 * t617;
t784 = -t396 + t808;
t782 = t55 * t841;
t434 = qJD(1) * t474;
t780 = -t1072 * t875 + t434;
t774 = rSges(6,1) * t202 + rSges(6,3) * t201;
t126 = rSges(6,2) * t678 + t774;
t680 = t304 * t874 + t305 * t875 + t482 * t473 - t475 * t483 + qJDD(2);
t635 = qJD(3) * t574 + qJD(4) * t573 + qJDD(5) * t940 + t479 * t121 - t269 * t296 + t680;
t8 = t126 * t479 - t237 * t269 - t270 * t922 + t480 * t935 + t635;
t779 = t56 * t126 - t237 * t8;
t543 = rSges(2,1) * t616 - rSges(2,2) * t613;
t541 = rSges(2,1) * t613 + rSges(2,2) * t616;
t542 = -rSges(4,2) * t612 + t1018;
t777 = rSges(5,1) * t202 - rSges(5,2) * t201;
t185 = t362 * t615 + t364 * t612;
t684 = qJD(3) * t531;
t244 = -t602 * t684 + (-t601 * t741 + t966) * qJD(1);
t685 = qJD(3) * t533;
t246 = -t602 * t685 + (-t534 * t601 + t974) * qJD(1);
t625 = -qJD(3) * t185 - t244 * t612 + t246 * t615 + t882;
t184 = t361 * t615 + t363 * t612;
t245 = qJD(1) * t362 - t601 * t684;
t247 = qJD(1) * t364 - t601 * t685;
t626 = qJD(1) * t359 - qJD(3) * t184 - t245 * t612 + t247 * t615;
t769 = -(t1048 * t601 + t626 * t602) * t602 + (t1049 * t601 + t625 * t602) * t601;
t768 = -(-t1048 * t602 + t626 * t601) * t602 + (-t1049 * t602 + t625 * t601) * t601;
t748 = -t296 * t827 - t479 * t375 + t574 + t904;
t747 = t839 + t475;
t139 = -t362 * t946 - t802;
t734 = -t138 * t602 + t139 * t601;
t140 = -t361 * t943 - t912;
t141 = -t362 * t943 + t911;
t733 = -t140 * t602 + t141 * t601;
t732 = -t173 * t601 - t956;
t724 = -t238 * t602 - t241 * t601;
t251 = rSges(4,1) * t677 - rSges(4,2) * t829 + t889;
t464 = t540 * t601;
t252 = -qJD(3) * t464 + (t542 * t602 + t593) * qJD(1);
t723 = t251 * t602 + t252 * t601;
t720 = t366 * t601 + t367 * t602;
t716 = t531 * t615 + t533 * t612;
t471 = rSges(5,1) * t937 - rSges(5,2) * t939 + t605;
t713 = t602 * t120 + t601 * t121 - t296 * t878 + t844;
t693 = qJD(1) * (-pkin(2) * t879 + t570) + qJDD(1) * t507 + t786;
t690 = -t56 * t922 + t995;
t689 = t66 * t240 + t65 * t925;
t688 = -t1072 * t874 - t881;
t687 = t1024 * t612 + t838;
t686 = t1023 * t612 + t838;
t681 = t296 + t808;
t7 = -qJD(3) * t865 + qJDD(6) * t615 + t269 * t926 - t270 * t845 + t479 * t933 + t480 * t851 + t635;
t667 = t43 * t933 + t7 * t926;
t666 = -t612 * t905 + t615 * t907;
t663 = t301 + t747;
t661 = qJD(3) * t1111 - qJDD(6) * t612;
t660 = -t43 * t845 - t806;
t659 = t54 * t846 + t55 * t923;
t641 = (-t612 * t885 + t615 * t886) * qJD(1);
t639 = qJD(1) * t304 + qJDD(1) * t475 - t482 * t557 + t693;
t638 = qJDD(1) * t783 + t483 * t557 - t856;
t80 = -t238 * t479 + t241 * t480 + t822;
t94 = t241 * t587 - t468 * t479 + t795;
t628 = t80 * t724 + (-t602 * t94 + t1152) * t468;
t627 = qJD(5) * t201 + qJDD(5) * t436 + t587 * t120 + t508 * t301 + t639;
t510 = t741 * qJD(3);
t511 = t534 * qJD(3);
t624 = qJD(1) * t529 - qJD(3) * t716 - t510 * t612 + t511 * t615;
t623 = (t804 - t997) * t602 + t690 * t601;
t622 = qJD(1) * t916 - t519 * t874 + t638;
t621 = (t782 + t807) * t602 + t660 * t601;
t581 = rSges(7,2) * t938;
t580 = rSges(6,3) * t938;
t555 = rSges(6,2) * t941;
t551 = rSges(6,2) * t944;
t512 = t542 * qJD(3);
t500 = -rSges(6,1) * t940 + t580;
t499 = -rSges(7,1) * t940 + t581;
t478 = t505 + t609;
t347 = -t602 * t855 + t890;
t346 = -t602 * t692 + t555;
t344 = -t601 * t855 + t891;
t343 = -t601 * t692 + t551;
t300 = -rSges(5,1) * t438 - rSges(5,2) * t439;
t294 = -rSges(5,1) * t436 - rSges(5,2) * t437;
t250 = t296 * t943;
t249 = -t602 * t715 + t948;
t203 = t249 * qJD(1);
t171 = qJD(3) * t720 + qJD(2);
t127 = rSges(5,3) * t678 + t777;
t124 = -rSges(5,3) * t837 + t849;
t96 = -t1047 * t602 + t624 * t601;
t95 = t1047 * t601 + t624 * t602;
t90 = qJD(1) * t251 + qJDD(1) * t367 - t482 * t540 - t512 * t875 + t693;
t89 = -t856 - t512 * t874 + t483 * t540 + (-t252 - t481) * qJD(1) + t785 * qJDD(1);
t88 = -qJD(3) * t721 + t244 * t615 + t246 * t612;
t87 = -qJD(3) * t722 + t245 * t615 + t247 * t612;
t79 = qJD(3) * t723 + t366 * t482 - t367 * t483 + qJDD(2);
t61 = qJD(3) * t733 + t203;
t60 = qJD(3) * t734 + t864;
t39 = t124 * t587 + t241 * t508 - t269 * t468 - t319 * t479 + t639 - t834;
t38 = -t127 * t587 + t238 * t508 + t270 * t468 - t319 * t480 + t622;
t31 = t124 * t480 + t127 * t479 - t238 * t269 - t241 * t270 + t680;
t12 = t123 * t587 + t240 * t508 + t269 * t895 + t479 * t915 + t627 - t834;
t11 = t270 * t467 - t318 * t480 + (-t121 - t126) * t587 + t925 * t508 + t622 + t1045;
t10 = t269 * t841 + t479 * t843 + t508 * t923 + t587 * t934 + t601 * t661 - t865 * t878 + t627;
t9 = -t914 * t480 - t1112 * t270 + t661 * t602 + (-t121 - t933) * t587 + t846 * t508 + (t537 + t916) * qJD(1) + t638 + t1045;
t1 = [(-g(1) * (t681 - t773) - t687 * t1022 + t56 * t850 - (t296 * t56 + t804) * t480 + (t601 * t687 - t428 - t773 + t784) * t11 + (-t121 - t774 + t888 + t1024 * t1151 + (t602 * t687 - t1154) * qJD(1)) * t65 + (-t800 + t847 + (-t1019 + (t714 - t606) * t601) * qJD(1) - t237 * t587 + t65 + t1150) * t66 + (-g(2) + t12) * (t663 + t240)) * m(6) + (-t686 * t1022 + t93 * (-t777 + t888) + (t1023 * t872 * t93 + t38 * t686) * t601 + (-pkin(7) * t1152 + t686 * t996) * qJD(1) + (-t800 + t849 + (-t1019 + (t714 - t605) * t601) * qJD(1) + t93 + t1155 + t1160) * t94 + (-g(2) + t39) * (t747 + t241) + (-g(1) + t38) * (-t776 + t808)) * m(5) + ((t68 + t1149) * t480 + (t67 + t1148) * t479 + t1159) * t1034 + (t248 + t184) * t1032 + (t716 + m(2) * (t541 ^ 2 + t543 ^ 2) + Icges(2,3) + Icges(3,3) + m(3) * (t477 ^ 2 + t505 * t478)) * qJDD(1) + (t87 + t96 + t61) * t815 + (t32 + t1113 + (t74 - t1148) * t480 + (t73 + t1149) * t479) * t1037 + t1147 * t1036 + (t1146 + t1098) * t1035 - t1060 * t1038 + t1059 * t1039 + (t88 + t95) * t816 + (-t172 * t600 + t173 * (t570 + t889) + (t540 * t957 - t955) * qJD(3) + ((-pkin(2) - t542) * t956 + (t172 * (-rSges(4,3) - pkin(7)) + t173 * t821) * t601) * qJD(1) - (-qJD(1) * t366 - t172 - t487 - t831) * t173 + (t90 - g(2)) * (t367 + t839) + (t89 - g(1)) * (t601 * t821 + t808 + t884)) * m(4) + (-qJD(3) * t715 + t510 * t615 + t511 * t612) * qJD(1) + (t203 + ((t139 - t321 + (t360 + t951) * t602 + t912) * t602 + t911 * t601) * qJD(3)) * t814 + (-(t681 - t926 + t682) * g(1) + t43 * t850 - (t296 * t43 + t782) * t480 + t1000 * t860 * t872 + (t612 * t860 + t838) * t999 * qJD(1) + (t437 * t861 - t1130 + t682 + t784) * t9 + (-g(2) + t10) * (-t612 * t805 + t1074 + t663) + (-pkin(7) * t879 + t202 * t861 + t1066 + t55 + t888 - t928) * t54 + (t926 * t587 + t1070 + (-t615 * t805 - t858) * qJD(3) + (-t1019 + t682) * qJD(1) + t1150) * t55) * m(7) + t990 / 0.2e1 + t991 / 0.2e1 + t1005 / 0.2e1 - t1006 / 0.2e1 - t1008 / 0.2e1 - t1010 / 0.2e1 + t1007 / 0.2e1 + t1050 + t989 / 0.2e1 + t1009 / 0.2e1 + ((-t504 * t617 - g(2) + t786) * t478 + (-t505 * t617 - g(1) - t856) * t477) * m(3) + t992 / 0.2e1 + t993 / 0.2e1 + t994 / 0.2e1 + (t249 + t185) * t1033 - m(2) * (-g(1) * t541 + g(2) * t543) + (t1164 * t612 + t1114 + t1117 + t1120 + t1141) * t479 * t1030 + (-t864 + ((t602 * t801 + t141 - t911) * t602 + (t601 * t801 + t140 + t802) * t601) * qJD(3) + t60) * t817; m(3) * qJDD(2) + (-m(3) - m(4) - m(5) + t1040) * g(3) + m(4) * t79 + m(5) * t31 + m(6) * t8 + m(7) * t7; (t93 * t485 + t31 * t902 + (t31 * t241 + t93 * t913 + (qJD(1) * t94 + t38) * t894) * t602 + (qJD(1) * t468 * t93 - t238 * t31 + t39 * t894 + t94 * t913) * t601 - g(1) * (t561 + t890) - g(2) * (t559 + t891) - g(3) * (t471 + t1072) - (-pkin(3) - t1017) * t1046 - t93 * (-t344 * t587 - t471 * t480 + t688) - t94 * (t347 * t587 - t471 * t479 + t780) - ((t238 * t93 + t241 * t94) * t612 + t628 * t615) * qJD(4) + (t844 + (-qJD(1) * t238 + t124) * t602 + (t127 + (-t241 - t475) * qJD(1)) * t601 - t344 * t479 - t347 * t480 - t904) * t80) * m(5) - (t1098 * t602 + t1099 * t601) * t868 / 0.2e1 + t734 * t1032 + t733 * t1033 + qJD(1) * (t601 * t88 - t602 * t87 + (t184 * t601 + t185 * t602) * qJD(1)) / 0.2e1 + (-(t172 * t464 - t955) * qJD(1) - (t171 * (-t464 * t601 - t465 * t602) + t732 * t542) * qJD(3) + t79 * t720 + t171 * ((t366 * t602 - t367 * t601) * qJD(1) + t723) + t732 * t512 + (-t90 * t601 - t89 * t602 + (-t173 * t602 + t957) * qJD(1)) * t540 + g(1) * t465 + g(2) * t464 - g(3) * t542) * m(4) + (t8 * t797 + t56 * t713 + (t11 * t840 + t8 * t240 + t56 * t123 + (t66 * t840 - t997) * qJD(1)) * t602 + (t12 * t840 + t66 * t842 + (t995 + t56 * (-t475 - t922)) * qJD(1) + t779) * t601 - g(1) * (t555 + t561) - g(2) * (t551 + t559) - g(3) * (t793 + t470) - (-pkin(3) + t1025 * t614 + (-rSges(6,3) - qJ(5)) * t611) * t1046 - t66 * (t346 * t587 - t572 * t601 + t780 + (-t470 - t503) * t479 + t1079) - t56 * (t343 * t479 + t748 + (t346 - t376) * t480) - (t612 * t689 + t615 * t623) * qJD(4) + (t470 * t480 - t688 - (-t343 + t375) * t587 + (t842 + t572) * t602 + t1109) * t65) * m(6) + (t7 * t797 + (qJD(1) * t807 + t7 * t923 + t9 * t794) * t602 + (-qJD(1) * t806 + t10 * t794 + t667) * t601 - g(1) * t561 - g(2) * t559 - g(3) * (t793 + t1073) - (-g(1) * t805 - t1020 * t1133) * t615 - (-g(3) * t1133 + t1063 * (-pkin(3) + (-rSges(7,2) - qJ(5)) * t611 + t861 * t614)) * t612 - (t612 * t659 + t615 * t621) * qJD(4) - t1069 * (-t572 + t1111) + (t794 * t878 + t796 * t601 - t434 - t1079 - t909 * t587 - (-t503 + t893) * t479) * t55 + (t713 + t934 * t602 + (-t475 - t845) * t879 - t748 + t865 - (-t376 + t909) * t480 - t910 * t479) * t43 + (t796 * t602 + t881 - (t375 - t910) * t587 - t893 * t480 + t1109) * t54) * m(7) + ((t1059 * t612 + t1143 * t944) * qJD(4) + ((qJD(4) * t1142 + t1089) * t615 + t1090) * t602 + (t1091 * t439 + t1092 * t438) * t587 + (t1094 * t439 - t1096 * t438) * t480 + (-t1093 * t439 + t1095 * t438) * t479) * t1037 + ((-t1060 * t612 + t1144 * t941) * qJD(4) + ((qJD(4) * t1145 + t1089) * t615 + t1090) * t601 + (t1091 * t437 + t1092 * t436) * t587 + (t1094 * t437 - t1096 * t436) * t480 + (-t1093 * t437 + t1095 * t436) * t479) * t1034 + t1086 * t1038 + t1087 * t1039 + t1088 * t1031 + (qJD(1) * t1051 + t1102 * t601 - t1103 * t602) * t1035 + (qJD(1) * t1052 + t1104 * t601 - t1105 * t602) * t1036 - (qJD(1) * t96 + qJD(3) * t768 + qJDD(1) * t248 + t138 * t483 + t139 * t482 + t1107) * t602 / 0.2e1 + (qJD(1) * t95 + qJD(3) * t769 + qJDD(1) * t249 + t140 * t483 + t141 * t482 + t1108) * t601 / 0.2e1 + qJDD(1) * (-t184 * t602 + t185 * t601) / 0.2e1 + ((qJD(4) * t1053 - t1134) * t615 + ((t1091 * t614 + t1092 * t611 - t1166) * t587 + (t1094 * t614 - t1096 * t611 - t1175) * t480 + (-t1093 * t614 + t1095 * t611 - t1174) * t479 + t1058 * qJD(4)) * t612) * t1030 + ((-t874 * t948 - t880) * t602 + (t641 + (t666 * t601 + (-t1044 + t947) * t602) * qJD(3)) * t601) * t814 + ((-t875 * t947 + t880) * t601 + (t641 + (-t1044 * t602 + (t948 + t666) * t601) * qJD(3)) * t602) * t817 - t1097 * t870 / 0.2e1 + (t61 + t1098) * t818 + (t60 + t1099) * t879 / 0.2e1 + (qJD(1) * t1053 + t1100 * t601 - t1101 * t602) * t1029 + ((t138 * t601 + t139 * t602) * qJD(1) + t768) * t815 + ((t140 * t601 + t141 * t602) * qJD(1) + t769) * t816 - qJD(1) * ((t612 * t886 + t615 * t885) * qJD(1) + ((t601 * t905 - t602 * t906) * t615 + (t601 * t907 + t602 * t908) * t612) * qJD(3)) / 0.2e1; t1107 * t946 / 0.2e1 + t1108 * t943 / 0.2e1 + t1097 * t873 / 0.2e1 + (t1052 * t612 - t1059 * t615) * t1039 + (t1051 * t612 + t1060 * t615) * t1038 + (-t1054 * t602 + t1055 * t439 + t1056 * t438) * t1037 + ((qJD(3) * t1052 - t1147) * t615 + (-qJD(1) * t1087 + t1059 * qJD(3) + t1104 * t602 + t1105 * t601) * t612) * t1036 + ((qJD(3) * t1051 - t1146) * t615 + (-qJD(1) * t1086 - t1060 * qJD(3) + t1102 * t602 + t1103 * t601) * t612) * t1035 + (-t1054 * t601 + t1055 * t437 + t1056 * t436) * t1034 + (t1053 * t612 - t1058 * t615) * t1031 + (t1126 * t615 + (t1055 * t614 + t1056 * t611) * t612) * t1030 + ((qJD(3) * t1053 - t1129) * t615 + (-qJD(1) * t1088 + t1058 * qJD(3) + t1100 * t602 + t1101 * t601) * t612) * t1029 - (t1009 + t993 + t994 - t1010 + t1007 + t991 + t992 - t1008 + t1005 + t989 + t990 - t1006 + t1050) * t615 / 0.2e1 + (-g(1) * (-pkin(5) * t438 + t1077) - g(2) * (-pkin(5) * t436 - t1078) - g(3) * (t575 + t581) - t861 * t857 + t9 * t919 + t54 * t798 + t55 * t920 - t7 * t250 + t43 * t984 + (qJD(3) * t621 - t10 * t845 + t54 * t933 - t55 * t851 + t9 * t926) * t615 + (t659 * qJD(3) + (qJD(1) * t660 + t10 * t841 + t55 * t843 + t667) * t602 + (-t9 * t1112 + t54 * t914 - t7 * t845 - t43 * t851 + (-t1112 * t55 + t43 * t846) * qJD(1)) * t601) * t612 - t54 * (t1078 * t587 - t480 * t499 + t901) - t55 * (t298 * t587 + t921 + (-t498 - t499) * t479) - t43 * (t1077 * t480 + t292 * t479 + t929) - (t54 * t704 + t55 * t703 - t1011) * pkin(5)) * m(7) + (t11 * t919 + t65 * t798 + t66 * t920 - t8 * t250 + t56 * t984 + (qJD(3) * t623 - t11 * t237 - t12 * t922 + t65 * t126 - t66 * t935) * t615 + (t689 * qJD(3) + (qJD(1) * t690 + t12 * t895 + t66 * t915 + t779) * t602 + (t11 * t467 + t65 * t318 - t8 * t922 - t56 * t935 + (t66 * t467 + t56 * t925) * qJD(1)) * t601) * t612 - g(1) * t917 + g(2) * t918 - g(3) * (t1025 * t940 + t575 + t580) - t65 * (-t480 * t500 + t587 * t918 + t901) - t66 * (t299 * t587 + (-t498 - t500) * t479 + t921) - t56 * (t293 * t479 + t480 * t917 + t929)) * m(6) + ((qJD(3) * t628 - t94 * t124 + t93 * t127 - t238 * t38 - t39 * t241) * t615 + (t93 * (qJD(3) * t238 + t319 * t601) + t94 * (qJD(3) * t241 - t319 * t602) + t31 * t724 + t80 * (-t124 * t601 + t127 * t602 + t238 * t879 - t241 * t878) + (t38 * t601 - t39 * t602 + (t601 * t94 + t996) * qJD(1)) * t468) * t612 - g(1) * t300 - g(2) * t294 - g(3) * t501 - t93 * (-t294 * t587 - t480 * t501) - t94 * (t300 * t587 - t479 * t501) - t80 * (t294 * t479 + t300 * t480)) * m(5) + (t601 * t812 + t612 * t818) * t1099 + (-t837 / 0.2e1 + t602 * t812) * t1098; t1040 * (g(1) * t438 + g(2) * t436 + t857) + (t10 * t436 + t1080 * t55 + t1081 * t54 + t43 * t674 + t438 * t9 + t7 * t940 - t1011) * m(7) + (t11 * t438 + t12 * t436 + t8 * t940 + t1080 * t66 + t1081 * t65 + (-t149 + t674) * t56) * m(6); ((-qJD(3) * t1069 + t479 * t55 + t480 * t54 - g(3) + t7) * t615 + (-t10 * t601 - t602 * t9 + (qJD(1) - t587) * (-t55 * t602 + t1000) + (t479 * t601 + t480 * t602 - qJD(3)) * t43 + t1063) * t612) * m(7);];
tau  = t1;
