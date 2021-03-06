% Calculate matrix of centrifugal and coriolis load on the joints for
% S6RRRPRP6
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
% Datum: 2019-03-09 17:02
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S6RRRPRP6_coriolismatJ_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRP6_coriolismatJ_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRP6_coriolismatJ_fixb_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRPRP6_coriolismatJ_fixb_slag_vp2: pkin has to be [11x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRPRP6_coriolismatJ_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRRPRP6_coriolismatJ_fixb_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RRRPRP6_coriolismatJ_fixb_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 16:54:07
% EndTime: 2019-03-09 16:54:57
% DurationCPUTime: 27.96s
% Computational Cost: add. (52745->1160), mult. (125712->1569), div. (0->0), fcn. (141085->10), ass. (0->557)
t1062 = -m(7) / 0.2e1;
t1129 = Ifges(6,4) + Ifges(7,4);
t1111 = Ifges(6,5) + Ifges(7,5);
t968 = Ifges(6,6) + Ifges(7,6);
t724 = sin(qJ(5));
t720 = t724 ^ 2;
t726 = cos(qJ(5));
t721 = t726 ^ 2;
t868 = t720 + t721;
t1128 = t721 / 0.2e1 + t720 / 0.2e1;
t908 = sin(pkin(11));
t909 = cos(pkin(11));
t983 = sin(qJ(3));
t984 = cos(qJ(3));
t669 = t908 * t983 - t909 * t984;
t670 = -t908 * t984 - t909 * t983;
t806 = -t670 * mrSges(5,1) - t669 * mrSges(5,2);
t842 = t984 * qJ(4);
t861 = t984 * pkin(9);
t681 = t861 + t842;
t859 = t983 * pkin(9);
t761 = -qJ(4) * t983 - t859;
t593 = t681 * t908 - t909 * t761;
t891 = t670 * t724;
t479 = -pkin(5) * t891 + t593;
t1127 = t479 / 0.2e1;
t723 = cos(pkin(6));
t722 = sin(pkin(6));
t725 = sin(qJ(2));
t887 = t722 * t725;
t649 = t723 * t984 - t887 * t983;
t650 = t723 * t983 + t887 * t984;
t510 = -t909 * t649 + t650 * t908;
t1126 = t510 / 0.2e1;
t990 = -t724 / 0.2e1;
t987 = t726 / 0.2e1;
t727 = cos(qJ(2));
t886 = t722 * t727;
t606 = t669 * t886;
t528 = t606 * t724 + t726 * t887;
t530 = -t606 * t726 + t724 * t887;
t605 = t670 * t886;
t1098 = -t968 * t605 + t1129 * t530 + (Ifges(6,2) + Ifges(7,2)) * t528;
t1124 = t1098 / 0.2e1;
t1123 = mrSges(7,3) + mrSges(6,3);
t960 = Ifges(5,4) * t510;
t838 = t908 * pkin(3);
t709 = t838 + pkin(10);
t1122 = m(6) * t709 + mrSges(6,3);
t1087 = t724 * mrSges(7,1) + t726 * mrSges(7,2);
t539 = t1087 * t670;
t981 = m(7) * t479;
t1121 = t539 - t981;
t644 = Ifges(4,4) * t649;
t484 = Ifges(4,1) * t650 - Ifges(4,5) * t886 + t644;
t1120 = -Ifges(4,2) * t650 + t484 + t644;
t759 = t649 * t908 + t650 * t909;
t421 = -t724 * t759 - t726 * t886;
t422 = -t724 * t886 + t726 * t759;
t901 = t422 * t724;
t1119 = -t901 / 0.2e1 - t421 * t726 / 0.2e1;
t878 = qJ(6) + t709;
t657 = t878 * t724;
t658 = t878 * t726;
t1084 = t909 * t681 + t908 * t761;
t711 = -pkin(3) * t984 - pkin(2);
t549 = t669 * pkin(4) + t670 * pkin(10) + t711;
t366 = -t1084 * t724 + t726 * t549;
t890 = t670 * t726;
t316 = qJ(6) * t890 + t366;
t974 = pkin(5) * t669;
t270 = t316 + t974;
t367 = t1084 * t726 + t549 * t724;
t317 = qJ(6) * t891 + t367;
t773 = t270 * t724 - t317 * t726;
t561 = mrSges(7,1) * t669 + mrSges(7,3) * t890;
t557 = -mrSges(7,2) * t669 + mrSges(7,3) * t891;
t880 = t726 * t557;
t871 = t561 * t990 + t880 / 0.2e1;
t1118 = ((-t657 * t726 + t658 * t724) * t670 - t773) * t1062 - t871;
t865 = pkin(8) * t886;
t977 = pkin(1) * t725;
t615 = t865 + (pkin(9) + t977) * t723;
t616 = (-pkin(2) * t727 - pkin(9) * t725 - pkin(1)) * t722;
t460 = -t615 * t983 + t984 * t616;
t383 = -t650 * qJ(4) + t460;
t355 = -pkin(3) * t886 + t383;
t461 = t615 * t984 + t616 * t983;
t384 = t649 * qJ(4) + t461;
t808 = t909 * t384;
t182 = t908 * t355 + t808;
t172 = -pkin(10) * t886 + t182;
t702 = pkin(8) * t887;
t976 = pkin(1) * t727;
t614 = t702 + (-pkin(2) - t976) * t723;
t532 = -t649 * pkin(3) + t614;
t209 = t510 * pkin(4) - pkin(10) * t759 + t532;
t87 = -t172 * t724 + t726 * t209;
t69 = -qJ(6) * t422 + t87;
t58 = pkin(5) * t510 + t69;
t88 = t172 * t726 + t209 * t724;
t70 = qJ(6) * t421 + t88;
t780 = t58 * t724 - t70 * t726;
t967 = mrSges(7,3) * t421;
t279 = -mrSges(7,2) * t510 + t967;
t281 = mrSges(7,1) * t510 - mrSges(7,3) * t422;
t877 = t279 * t987 + t281 * t990;
t1117 = (t421 * t658 + t422 * t657 - t780) * t1062 - t877;
t1116 = -mrSges(7,1) / 0.2e1;
t1055 = mrSges(7,2) / 0.2e1;
t371 = t908 * t384;
t181 = t355 * t909 - t371;
t171 = pkin(4) * t886 - t181;
t111 = -t421 * pkin(5) + t171;
t1115 = t111 / 0.2e1;
t1114 = t171 / 0.2e1;
t1029 = t759 / 0.2e1;
t1110 = Ifges(5,3) + Ifges(4,3);
t959 = Ifges(5,4) * t759;
t1109 = Ifges(3,6) * t887;
t651 = t723 * t976 - t702;
t1108 = t651 * mrSges(3,2);
t916 = t669 * mrSges(5,3);
t915 = t670 * mrSges(5,3);
t926 = t759 * mrSges(5,3);
t854 = Ifges(6,6) / 0.2e1 + Ifges(7,6) / 0.2e1;
t1107 = t669 * t854;
t855 = Ifges(6,5) / 0.2e1 + Ifges(7,5) / 0.2e1;
t1106 = t669 * t855;
t1105 = t709 * t868;
t1058 = m(7) * pkin(5);
t851 = -mrSges(7,1) - t1058;
t165 = Ifges(7,5) * t422 + Ifges(7,6) * t421 + t510 * Ifges(7,3);
t166 = Ifges(6,5) * t422 + Ifges(6,6) * t421 + t510 * Ifges(6,3);
t1104 = t166 + t165;
t955 = Ifges(7,4) * t422;
t167 = Ifges(7,2) * t421 + t510 * Ifges(7,6) + t955;
t957 = Ifges(6,4) * t422;
t168 = Ifges(6,2) * t421 + t510 * Ifges(6,6) + t957;
t1103 = t167 + t168;
t417 = Ifges(7,4) * t421;
t169 = Ifges(7,1) * t422 + t510 * Ifges(7,5) + t417;
t418 = Ifges(6,4) * t421;
t170 = Ifges(6,1) * t422 + t510 * Ifges(6,5) + t418;
t1102 = t169 + t170;
t717 = Ifges(7,4) * t726;
t1086 = -Ifges(7,2) * t724 + t717;
t190 = Ifges(7,6) * t759 - t1086 * t510;
t718 = Ifges(6,4) * t726;
t1085 = -Ifges(6,2) * t724 + t718;
t191 = Ifges(6,6) * t759 - t1085 * t510;
t1101 = t191 + t190;
t954 = Ifges(7,4) * t724;
t692 = Ifges(7,1) * t726 - t954;
t192 = Ifges(7,5) * t759 - t510 * t692;
t956 = Ifges(6,4) * t724;
t694 = Ifges(6,1) * t726 - t956;
t193 = Ifges(6,5) * t759 - t510 * t694;
t1100 = t193 + t192;
t939 = Ifges(7,3) * t605;
t942 = Ifges(6,3) * t605;
t945 = Ifges(7,6) * t528;
t947 = Ifges(6,6) * t528;
t951 = Ifges(7,5) * t530;
t952 = Ifges(6,5) * t530;
t1099 = -t942 + t947 + t952 - t939 + t945 + t951;
t1097 = -t1111 * t605 + (Ifges(6,1) + Ifges(7,1)) * t530 + t1129 * t528;
t715 = Ifges(7,5) * t726;
t944 = Ifges(7,6) * t724;
t781 = t715 - t944;
t431 = t669 * Ifges(7,3) - t670 * t781;
t716 = Ifges(6,5) * t726;
t946 = Ifges(6,6) * t724;
t782 = t716 - t946;
t432 = t669 * Ifges(6,3) - t670 * t782;
t1096 = t432 + t431;
t433 = -Ifges(7,6) * t670 - t1086 * t669;
t435 = -Ifges(6,6) * t670 - t1085 * t669;
t1095 = t435 + t433;
t434 = Ifges(7,6) * t669 - t1086 * t670;
t436 = Ifges(6,6) * t669 - t1085 * t670;
t1094 = t436 + t434;
t437 = -Ifges(7,5) * t670 - t669 * t692;
t439 = -Ifges(6,5) * t670 - t669 * t694;
t1093 = t439 + t437;
t438 = Ifges(7,5) * t669 - t670 * t692;
t440 = Ifges(6,5) * t669 - t670 * t694;
t1092 = t440 + t438;
t1091 = t657 * t724 + t658 * t726;
t682 = Ifges(7,5) * t724 + Ifges(7,6) * t726;
t684 = Ifges(6,5) * t724 + Ifges(6,6) * t726;
t1090 = t684 + t682;
t686 = Ifges(7,2) * t726 + t954;
t688 = Ifges(6,2) * t726 + t956;
t1089 = t688 + t686;
t691 = Ifges(7,1) * t724 + t717;
t693 = Ifges(6,1) * t724 + t718;
t1088 = t693 + t691;
t719 = Ifges(4,4) * t984;
t793 = -Ifges(4,2) * t983 + t719;
t1083 = t782 + t781;
t695 = Ifges(4,1) * t983 + t719;
t1082 = t793 + t695;
t1078 = -t984 * mrSges(4,1) + t983 * mrSges(4,2);
t1077 = Ifges(4,5) * t649 - Ifges(5,5) * t510 - Ifges(4,6) * t650 - Ifges(5,6) * t759;
t1074 = t693 / 0.4e1 + t691 / 0.4e1;
t239 = -mrSges(6,1) * t421 + mrSges(6,2) * t422;
t449 = -mrSges(5,1) * t886 - t926;
t1073 = t449 / 0.2e1 - t239 / 0.2e1;
t677 = -mrSges(7,1) * t726 + mrSges(7,2) * t724;
t1000 = t677 / 0.2e1;
t1053 = -mrSges(7,3) / 0.2e1;
t840 = t909 * pkin(3);
t710 = -t840 - pkin(4);
t675 = -t726 * pkin(5) + t710;
t978 = m(7) * t675;
t1072 = pkin(5) * (t1000 + t978 / 0.2e1) - t686 / 0.4e1 - t688 / 0.4e1 + t692 / 0.4e1 + t694 / 0.4e1 + t658 * t1053;
t238 = -mrSges(7,1) * t421 + mrSges(7,2) * t422;
t244 = Ifges(7,1) * t421 - t955;
t245 = Ifges(6,1) * t421 - t957;
t982 = m(7) * t111;
t747 = (t238 / 0.2e1 + t982 / 0.2e1) * pkin(5) - t167 / 0.4e1 - t168 / 0.4e1 + t244 / 0.4e1 + t245 / 0.4e1;
t1059 = m(5) * pkin(3);
t1071 = t1059 * t908 - mrSges(5,2);
t866 = t1058 / 0.2e1;
t912 = t726 * mrSges(6,2);
t1070 = t912 / 0.2e1 + (t866 + mrSges(6,1) / 0.2e1) * t724;
t1017 = -t561 / 0.2e1;
t1020 = t557 / 0.2e1;
t1061 = m(7) / 0.2e1;
t989 = t724 / 0.2e1;
t1069 = (-t270 * t422 + t317 * t421 + (t58 * t726 + t70 * t724) * t670) * t1061 + t421 * t1020 + t422 * t1017 + (t279 * t989 + t281 * t987) * t670;
t678 = -mrSges(6,1) * t726 + mrSges(6,2) * t724;
t1068 = m(6) * t710 - t1059 * t909 - mrSges(5,1) + t678;
t1066 = -m(5) / 0.2e1;
t1065 = m(5) / 0.2e1;
t1064 = -m(6) / 0.2e1;
t1063 = m(6) / 0.2e1;
t1060 = pkin(5) / 0.2e1;
t1057 = -mrSges(6,1) / 0.2e1;
t1056 = mrSges(6,2) / 0.2e1;
t1054 = mrSges(6,3) / 0.2e1;
t898 = t510 * t726;
t188 = t383 * t909 - t371;
t975 = pkin(3) * t650;
t276 = pkin(4) * t759 + pkin(10) * t510 + t975;
t98 = -t188 * t724 + t726 * t276;
t71 = pkin(5) * t759 + qJ(6) * t898 + t98;
t1052 = -t71 / 0.2e1;
t652 = (pkin(2) * t725 - pkin(9) * t727) * t722;
t529 = -t651 * t983 + t984 * t652;
t411 = (pkin(3) * t725 - t727 * t842) * t722 + t529;
t531 = t984 * t651 + t983 * t652;
t843 = t727 * t983;
t800 = t722 * t843;
t459 = -qJ(4) * t800 + t531;
t231 = t908 * t411 + t909 * t459;
t214 = pkin(10) * t887 + t231;
t653 = t723 * t977 + t865;
t600 = pkin(3) * t800 + t653;
t343 = -t605 * pkin(4) + t606 * pkin(10) + t600;
t114 = -t214 * t724 + t726 * t343;
t93 = -pkin(5) * t605 - qJ(6) * t530 + t114;
t1051 = -t93 / 0.2e1;
t1050 = -t238 / 0.2e1;
t860 = t983 * pkin(3);
t550 = -t670 * pkin(4) + t669 * pkin(10) + t860;
t369 = t726 * t550 + t593 * t724;
t892 = t669 * t726;
t271 = -pkin(5) * t670 + qJ(6) * t892 + t369;
t1048 = -t271 / 0.2e1;
t1047 = -t279 / 0.2e1;
t928 = t421 * mrSges(6,3);
t280 = -mrSges(6,2) * t510 + t928;
t1046 = -t280 / 0.2e1;
t1045 = -t281 / 0.2e1;
t1044 = t281 / 0.2e1;
t1043 = t316 / 0.2e1;
t1042 = -t317 / 0.2e1;
t323 = mrSges(7,1) * t759 + mrSges(7,3) * t898;
t1041 = -t323 / 0.2e1;
t1040 = -t367 / 0.2e1;
t1039 = -t369 / 0.2e1;
t376 = -mrSges(7,1) * t605 - mrSges(7,3) * t530;
t1038 = -t376 / 0.2e1;
t377 = -mrSges(6,1) * t605 - mrSges(6,3) * t530;
t1037 = -t377 / 0.2e1;
t448 = mrSges(5,2) * t886 - t510 * mrSges(5,3);
t1032 = -t448 / 0.2e1;
t1028 = t759 / 0.4e1;
t1024 = t528 / 0.2e1;
t1022 = t530 / 0.2e1;
t1021 = -t539 / 0.2e1;
t917 = t669 * mrSges(6,2);
t558 = mrSges(6,3) * t891 - t917;
t1019 = t558 / 0.2e1;
t559 = -mrSges(7,1) * t670 + mrSges(7,3) * t892;
t1018 = -t559 / 0.2e1;
t918 = t669 * mrSges(6,1);
t562 = mrSges(6,3) * t890 + t918;
t1016 = -t562 / 0.2e1;
t1015 = t605 / 0.2e1;
t1014 = -t605 / 0.2e1;
t1012 = -t606 / 0.2e1;
t1010 = t649 / 0.2e1;
t1009 = t650 / 0.2e1;
t1008 = -t657 / 0.2e1;
t1007 = -t669 / 0.2e1;
t1003 = -t670 / 0.2e1;
t1001 = t675 / 0.2e1;
t999 = t678 / 0.2e1;
t998 = t1087 / 0.2e1;
t680 = t724 * mrSges(6,1) + t912;
t997 = t680 / 0.2e1;
t994 = -t709 / 0.2e1;
t993 = t710 / 0.2e1;
t985 = -t727 / 0.2e1;
t979 = m(7) * t670;
t973 = pkin(5) * t724;
t972 = t58 * mrSges(7,3);
t971 = t70 * mrSges(7,3);
t970 = t87 * mrSges(6,3);
t969 = t88 * mrSges(6,3);
t966 = mrSges(7,3) * t726;
t965 = Ifges(5,1) * t759;
t962 = Ifges(3,4) * t725;
t961 = Ifges(4,4) * t650;
t958 = Ifges(5,4) * t670;
t953 = Ifges(5,5) * t606;
t948 = Ifges(5,6) * t605;
t943 = Ifges(6,3) * t759;
t941 = Ifges(6,3) * t670;
t940 = Ifges(7,3) * t759;
t938 = Ifges(7,3) * t670;
t937 = t270 * mrSges(7,3);
t936 = t270 * t70;
t187 = t383 * t908 + t808;
t899 = t510 * t724;
t125 = -pkin(5) * t899 + t187;
t927 = t422 * mrSges(6,3);
t282 = mrSges(6,1) * t510 - t927;
t299 = -Ifges(5,2) * t510 - Ifges(5,6) * t886 + t959;
t300 = -Ifges(5,5) * t886 - t960 + t965;
t312 = t1087 * t510;
t313 = t680 * t510;
t321 = -mrSges(7,2) * t759 + mrSges(7,3) * t899;
t322 = -mrSges(6,2) * t759 + mrSges(6,3) * t899;
t324 = mrSges(6,1) * t759 + mrSges(6,3) * t898;
t325 = mrSges(5,1) * t510 + mrSges(5,2) * t759;
t483 = Ifges(4,2) * t649 - Ifges(4,6) * t886 + t961;
t489 = t510 * mrSges(5,2);
t920 = t649 * mrSges(4,3);
t596 = mrSges(4,2) * t886 + t920;
t919 = t650 * mrSges(4,3);
t597 = -mrSges(4,1) * t886 - t919;
t786 = Ifges(4,1) * t649 - t961;
t788 = mrSges(4,1) * t650 + mrSges(4,2) * t649;
t853 = Ifges(6,3) / 0.2e1 + Ifges(7,3) / 0.2e1;
t798 = Ifges(5,2) / 0.2e1 + t853;
t99 = t726 * t188 + t724 * t276;
t81 = qJ(6) * t899 + t99;
t874 = -t449 + t239;
t3 = t1120 * t1010 - (-t181 * mrSges(5,3) - t960 / 0.2e1 + t300 / 0.2e1 + t965 / 0.2e1 + t1103 * t990 + t1102 * t987 + t1083 * t1126) * t510 + (-t182 * mrSges(5,3) + t532 * mrSges(5,1) - t959 / 0.2e1 + t166 / 0.2e1 - t299 / 0.2e1 + t165 / 0.2e1 + t798 * t510) * t759 + m(6) * (t171 * t187 + t87 * t98 + t88 * t99) + m(7) * (t111 * t125 + t58 * t71 + t70 * t81) - t532 * t489 + (t192 / 0.2e1 + t193 / 0.2e1) * t422 + (t190 / 0.2e1 + t191 / 0.2e1) * t421 + (-t460 * t649 - t461 * t650) * mrSges(4,3) - t650 * t483 / 0.2e1 + t460 * t596 - t461 * t597 + t874 * t187 + t188 * t448 + t70 * t321 + t88 * t322 + t58 * t323 + t87 * t324 - t111 * t312 - t171 * t313 + t614 * t788 + t98 * t282 + t81 * t279 + t99 * t280 + t71 * t281 + t125 * t238 + t786 * t1009 + t325 * t975 + m(5) * (-t181 * t187 + t182 * t188 + t532 * t975) + t1077 * t985 * t722;
t935 = t3 * qJD(1);
t934 = t316 * t70;
t933 = t317 * mrSges(7,3);
t932 = t317 * t58;
t931 = t317 * t69;
t930 = t366 * mrSges(6,3);
t929 = t367 * mrSges(6,3);
t925 = t528 * mrSges(7,1);
t924 = t530 * mrSges(7,2);
t115 = t726 * t214 + t724 * t343;
t103 = qJ(6) * t528 + t115;
t230 = t411 * t909 - t908 * t459;
t213 = -pkin(4) * t887 - t230;
t155 = -t528 * pkin(5) + t213;
t331 = t924 - t925;
t332 = -mrSges(6,1) * t528 + mrSges(6,2) * t530;
t374 = mrSges(7,2) * t605 + mrSges(7,3) * t528;
t375 = mrSges(6,2) * t605 + mrSges(6,3) * t528;
t393 = -Ifges(5,4) * t606 + Ifges(5,2) * t605 + Ifges(5,6) * t887;
t394 = -Ifges(5,1) * t606 + Ifges(5,4) * t605 + Ifges(5,5) * t887;
t921 = t606 * mrSges(5,2);
t922 = t605 * mrSges(5,1);
t420 = -t921 - t922;
t551 = -mrSges(5,2) * t887 + mrSges(5,3) * t605;
t552 = mrSges(5,1) * t887 + mrSges(5,3) * t606;
t572 = (Ifges(4,6) * t725 + t727 * t793) * t722;
t849 = Ifges(4,4) * t983;
t764 = Ifges(4,1) * t984 - t849;
t573 = (Ifges(4,5) * t725 + t727 * t764) * t722;
t762 = mrSges(4,1) * t983 + mrSges(4,2) * t984;
t610 = t762 * t886;
t637 = (-mrSges(4,2) * t725 - mrSges(4,3) * t843) * t722;
t638 = (-mrSges(4,3) * t727 * t984 + mrSges(4,1) * t725) * t722;
t763 = Ifges(4,5) * t984 - Ifges(4,6) * t983;
t757 = t763 * t727;
t769 = -t800 / 0.2e1;
t818 = t886 / 0.2e1;
t770 = t984 * t818;
t794 = Ifges(3,5) * t886 - t1109;
t819 = t887 / 0.2e1;
t6 = t1099 * t1126 - (Ifges(5,3) * t887 + t948 - t953) * t886 / 0.2e1 + (0.2e1 * Ifges(3,4) * t886 + (Ifges(3,1) - Ifges(3,2)) * t887) * t818 + (-(Ifges(3,2) * t727 + t962) * t887 / 0.2e1 + (-pkin(1) * (mrSges(3,1) * t725 + mrSges(3,2) * t727) + t725 * (Ifges(3,1) * t727 - t962) / 0.2e1 + (Ifges(4,3) * t725 + t757) * t985) * t722) * t722 + t653 * (-mrSges(4,1) * t649 + mrSges(4,2) * t650) + t461 * t637 + t460 * t638 + t614 * t610 + t531 * t596 + t529 * t597 + t600 * t325 + t182 * t551 + t181 * t552 + t532 * t420 - t510 * t393 / 0.2e1 + t231 * t448 + t230 * t449 + t58 * t376 + t87 * t377 + t70 * t374 + t88 * t375 + t111 * t331 + t171 * t332 + t114 * t282 + t103 * t279 + t115 * t280 + t93 * t281 + t155 * t238 + t213 * t239 + t300 * t1012 + t299 * t1015 + t573 * t1009 + t572 * t1010 + t421 * t1124 + t483 * t769 + t484 * t770 + (Ifges(4,5) * t650 + Ifges(5,5) * t759 + Ifges(4,6) * t649 - Ifges(5,6) * t510 - t1110 * t886) * t819 + (t794 / 0.2e1 + Ifges(3,5) * t818 - t1108 - t653 * mrSges(3,1) - t1109 / 0.2e1) * t723 + t1104 * t1014 + t1097 * t422 / 0.2e1 + t1102 * t1022 + t1103 * t1024 + m(5) * (t181 * t230 + t182 * t231 + t532 * t600) + m(6) * (t114 * t87 + t115 * t88 + t171 * t213) + m(7) * (t103 * t70 + t111 * t155 + t58 * t93) + m(4) * (t460 * t529 + t461 * t531 + t614 * t653) + t394 * t1029;
t923 = t6 * qJD(1);
t914 = t724 * mrSges(7,3);
t412 = t421 * mrSges(7,2);
t236 = mrSges(7,1) * t422 + t412;
t237 = mrSges(6,1) * t422 + mrSges(6,2) * t421;
t240 = Ifges(7,5) * t421 - Ifges(7,6) * t422;
t241 = Ifges(6,5) * t421 - Ifges(6,6) * t422;
t242 = -Ifges(7,2) * t422 + t417;
t243 = -Ifges(6,2) * t422 + t418;
t850 = m(7) * (-t58 + t69);
t9 = t111 * t236 + t171 * t237 + t69 * t279 + t87 * t280 - t88 * t282 + (t241 / 0.2e1 + t240 / 0.2e1) * t510 + (t850 - t281) * t70 + (-t971 + t245 / 0.2e1 + t244 / 0.2e1 - t969 - t167 / 0.2e1 - t168 / 0.2e1 + (t238 + t982) * pkin(5)) * t422 + (-t972 + t170 / 0.2e1 + t169 / 0.2e1 - t970 + t242 / 0.2e1 + t243 / 0.2e1) * t421;
t910 = t9 * qJD(1);
t779 = t724 * t87 - t726 * t88;
t13 = (t238 + t874) * t759 - (t448 + (t279 + t280) * t726 + (-t281 - t282) * t724) * t510 + m(7) * (t111 * t759 + t510 * t780) + m(6) * (t171 * t759 + t510 * t779) + m(5) * (-t181 * t759 - t182 * t510);
t907 = qJD(1) * t13;
t32 = t421 * t279 + m(7) * (t421 * t70 - t422 * t58) - t422 * t281;
t906 = qJD(1) * t32;
t905 = t114 * t724;
t904 = t115 * t726;
t900 = t759 * t593;
t897 = t593 * t187;
t893 = t669 * t724;
t889 = t709 * t724;
t888 = t709 * t726;
t884 = t724 * t421;
t881 = t726 * t422;
t879 = t726 * t558;
t845 = t966 / 0.2e1;
t876 = t421 * t845 + mrSges(7,3) * t901 / 0.2e1;
t875 = t1119 * mrSges(7,3);
t833 = t899 / 0.2e1;
t873 = mrSges(7,1) * t833 + t1055 * t898;
t370 = t724 * t550 - t593 * t726;
t826 = t893 / 0.2e1;
t870 = mrSges(7,1) * t826 + t892 * t1055;
t867 = t1059 / 0.2e1;
t863 = t984 / 0.2e1;
t862 = t983 / 0.2e1;
t852 = t69 / 0.2e1 - t58 / 0.2e1;
t844 = mrSges(5,3) * t1126;
t659 = -m(7) * t973 - t1087;
t830 = -t898 / 0.2e1;
t825 = -t892 / 0.2e1;
t815 = t1043 - t270 / 0.2e1;
t814 = t434 / 0.2e1 + t436 / 0.2e1;
t813 = -t438 / 0.2e1 - t440 / 0.2e1;
t812 = t1019 + t1020;
t811 = t1016 + t1017;
t810 = t715 / 0.4e1 - t944 / 0.4e1 + t716 / 0.4e1 - t946 / 0.4e1;
t809 = m(7) * (-t270 + t316);
t807 = mrSges(5,1) * t759 - t489;
t804 = mrSges(5,3) * t840;
t803 = mrSges(5,3) * t838;
t799 = t850 / 0.2e1;
t797 = t809 / 0.2e1;
t792 = t928 / 0.2e1 + t1046;
t791 = -t927 / 0.2e1 - t282 / 0.2e1;
t790 = mrSges(7,2) * t830 + t1061 * t125 + t1116 * t899;
t478 = -pkin(5) * t893 + t1084;
t789 = mrSges(7,2) * t825 + t1061 * t478 + t1116 * t893;
t783 = -Ifges(5,5) * t669 + Ifges(5,6) * t670;
t320 = qJ(6) * t893 + t370;
t537 = t1087 * t669;
t538 = t680 * t669;
t540 = t680 * t670;
t555 = mrSges(7,2) * t670 + mrSges(7,3) * t893;
t556 = mrSges(6,2) * t670 + mrSges(6,3) * t893;
t560 = -mrSges(6,1) * t670 + mrSges(6,3) * t892;
t566 = mrSges(5,1) * t669 - mrSges(5,2) * t670;
t567 = -t669 * Ifges(5,2) - t958;
t656 = Ifges(5,4) * t669;
t568 = -t670 * Ifges(5,1) - t656;
t690 = Ifges(4,2) * t984 + t849;
t12 = -t593 * t538 - t1084 * t540 + t367 * t556 + t320 * t557 + t370 * t558 + t270 * t559 + t366 * t560 + t271 * t561 + t369 * t562 + t317 * t555 - t479 * t537 - t478 * t539 + t566 * t860 + t764 * t862 - pkin(2) * t762 - t983 * t690 / 0.2e1 + m(6) * (t593 * t1084 + t366 * t369 + t367 * t370) + m(7) * (t270 * t271 + t317 * t320 + t478 * t479) + (-t431 / 0.2e1 - t432 / 0.2e1 + t567 / 0.2e1 - t958 / 0.2e1 + (-t437 / 0.2e1 - t439 / 0.2e1) * t726 + (t433 / 0.2e1 + t435 / 0.2e1) * t724) * t670 + (-t568 / 0.2e1 + t656 / 0.2e1 + (t813 - t1106) * t726 + (t814 + t1107) * t724 + (Ifges(5,1) / 0.2e1 - t798) * t670) * t669 + t1082 * t863 + (m(5) * t860 + t806) * t711;
t728 = -t1120 * t984 / 0.4e1 + (Ifges(5,2) * t670 + t568 - t656) * t510 / 0.4e1 + (t540 / 0.2e1 + t915 / 0.2e1) * t187 + (t1064 * t171 + t1073 + t926 / 0.2e1 + (-t181 + t188) * t1066) * t1084 + (t597 + t919) * t861 / 0.2e1 + (t188 / 0.2e1 - t181 / 0.2e1) * t916 + (t596 / 0.2e1 - t920 / 0.2e1) * t859 + (t897 + (t532 * t983 + t650 * t711) * pkin(3)) * t1066 + (t366 * t98 + t367 * t99 + t369 * t87 + t370 * t88 + t897) * t1064 + (-t1032 - t182 * t1066 + t313 / 0.2e1 + t844) * t593 - (-Ifges(5,1) * t669 + t1096 + t958) * t759 / 0.4e1 + (-Ifges(5,1) * t510 + t1104 - t959) * t670 / 0.4e1 - (-t1083 * t510 + t940 + t943) * t669 / 0.4e1 + t650 * t690 / 0.4e1 - t670 * t299 / 0.4e1 - t88 * t556 / 0.2e1 - t81 * t557 / 0.2e1 - t99 * t558 / 0.2e1 - t87 * t560 / 0.2e1 - t70 * t555 / 0.2e1 + t125 * t539 / 0.2e1 + t783 * t886 / 0.4e1 - t325 * t860 / 0.2e1 - t366 * t324 / 0.2e1 + (t111 * t478 + t125 * t479 + t270 * t71 + t271 * t58 + t317 * t81 + t320 * t70) * t1062 + t322 * t1040 + t270 * t1041 + t321 * t1042 + t271 * t1045 + t370 * t1046 + t320 * t1047 + t478 * t1050 + t567 * t1028 + t282 * t1039 + pkin(2) * t788 / 0.2e1 + t98 * t1016 + t71 * t1017 + t58 * t1018 + t312 * t1127 - t614 * t762 / 0.2e1 - t650 * t764 / 0.4e1 - t532 * t806 / 0.2e1 - t711 * t807 / 0.2e1 + t722 * t757 / 0.4e1 - t1094 * t899 / 0.4e1 - t1095 * t421 / 0.4e1 + t1100 * t890 / 0.4e1 - t1101 * t891 / 0.4e1 + t1102 * t892 / 0.4e1 - t1103 * t893 / 0.4e1 + t1092 * t898 / 0.4e1 - t1093 * t422 / 0.4e1 - t1082 * t649 / 0.4e1 - (-t1083 * t669 - t938 - t941) * t510 / 0.4e1 + (-Ifges(5,2) * t759 + t300 - t960) * t669 / 0.4e1 - t182 * t915 / 0.2e1 + t538 * t1114 + t537 * t1115 - t566 * t975 / 0.2e1 + t983 * t483 / 0.4e1 - t983 * t786 / 0.4e1;
t729 = (t103 * t658 + t155 * t675 - t657 * t93) * t1061 + t103 * t845 + t948 / 0.2e1 - t953 / 0.2e1 + t658 * t374 / 0.2e1 + t375 * t888 / 0.2e1 - t531 * mrSges(4,2) / 0.2e1 + t529 * mrSges(4,1) / 0.2e1 + (t213 * t710 + (t904 - t905) * t709) * t1063 + t914 * t1051 + t904 * t1054 + t889 * t1037 + t230 * mrSges(5,1) / 0.2e1 - t231 * mrSges(5,2) / 0.2e1 + t552 * t840 / 0.2e1 + t551 * t838 / 0.2e1 + t213 * t999 + t155 * t1000 + t331 * t1001 + t376 * t1008 + t332 * t993 + Ifges(4,6) * t769 + Ifges(4,5) * t770 + t1110 * t819 + t1097 * t724 / 0.4e1 + t1098 * t726 / 0.4e1 + t1089 * t528 / 0.4e1 - t1090 * t605 / 0.4e1 + t1074 * t530 - mrSges(6,3) * t905 / 0.2e1 + (t230 * t909 + t231 * t908) * t867;
t2 = t728 + t729;
t778 = -t2 * qJD(1) + t12 * qJD(2);
t641 = mrSges(7,2) * t891;
t535 = -mrSges(7,1) * t890 + t641;
t536 = t670 * t678;
t541 = t670 * t682;
t542 = t670 * t684;
t543 = t686 * t670;
t544 = t688 * t670;
t545 = t691 * t670;
t546 = t693 * t670;
t18 = t316 * t557 + t366 * t558 - t367 * t562 + t479 * t535 + t593 * t536 + (t542 / 0.2e1 + t541 / 0.2e1) * t669 + (-t561 + t809) * t317 + ((-t937 - t930 + t543 / 0.2e1 + t544 / 0.2e1 - t813) * t724 + (t933 + t929 - t545 / 0.2e1 - t546 / 0.2e1 + t1121 * pkin(5) + t814) * t726) * t670;
t746 = (t981 / 0.2e1 + t1021) * pkin(5) - t434 / 0.4e1 - t436 / 0.4e1 + t545 / 0.4e1 + t546 / 0.4e1;
t765 = t438 / 0.4e1 + t440 / 0.4e1 + t543 / 0.4e1 + t544 / 0.4e1;
t766 = t169 / 0.4e1 + t170 / 0.4e1 + t242 / 0.4e1 + t243 / 0.4e1;
t730 = (t241 / 0.4e1 + t240 / 0.4e1) * t669 + (t541 / 0.4e1 + t542 / 0.4e1) * t510 + ((-t972 / 0.2e1 - t970 / 0.2e1 + t766) * t724 + (t969 / 0.2e1 + t971 / 0.2e1 - t747) * t726) * t670 + (-t930 / 0.2e1 - t937 / 0.2e1 + t765) * t421 + (-t929 / 0.2e1 - t933 / 0.2e1 + t746) * t422 + t535 * t1115 + t536 * t1114 + t279 * t1043 + t281 * t1042 + t366 * t280 / 0.2e1 + t282 * t1040 + t236 * t1127 + t593 * t237 / 0.2e1 + t69 * t1020 + t70 * t1017 + t87 * t1019 + t88 * t1016;
t743 = mrSges(7,1) * t1051 + pkin(5) * t1038 + t103 * t1055 + t1056 * t115 + t1057 * t114;
t5 = t730 + t853 * t605 - t855 * t530 - t854 * t528 + (pkin(5) * t1051 - t936 / 0.2e1 + t934 / 0.2e1 - t932 / 0.2e1 + t931 / 0.2e1) * m(7) + t743;
t777 = t5 * qJD(1) + t18 * qJD(2);
t772 = t366 * t724 - t367 * t726;
t731 = (t1021 - t540 / 0.2e1) * t759 - (t724 * t811 + t726 * t812) * t510 + (t1050 - t926 / 0.2e1 + t1073) * t670 + (t1032 + t844 + (t1046 + t1047) * t726 + (t282 / 0.2e1 + t1044) * t724) * t669 + (-t1084 * t510 + t181 * t670 - t182 * t669 + t900) * t1065 + (-t171 * t670 + t510 * t772 + t669 * t779 + t900) * t1063 + (-t111 * t670 + t479 * t759 + t510 * t773 + t669 * t780) * t1061;
t739 = t600 * t1066 + (t114 * t726 + t115 * t724) * t1064 + (t103 * t724 + t726 * t93) * t1062 + t922 / 0.2e1 + t921 / 0.2e1;
t11 = (t1037 + t1038) * t726 + (-t375 / 0.2e1 - t374 / 0.2e1) * t724 + t731 + t739;
t35 = (-t561 - t562) * t893 + (m(5) * t1084 - m(6) * t772 - m(7) * t773 + t879 + t880 - t916) * t669 + ((m(6) + m(5)) * t593 - t540 - t915 - t1121) * t670;
t776 = -qJD(1) * t11 + qJD(2) * t35;
t733 = (t1061 * t675 + t1063 * t710 - t867 * t909 + t1000 + t999) * t759 + (-t1061 * t1091 - t1063 * t1105 - t1123 * t1128 - t867 * t908) * t510;
t737 = (t724 * t99 + t726 * t98) * t1063 + (t71 * t726 + t724 * t81) * t1061 + t650 * t867 + (t321 + t322) * t989 + (t323 + t324) * t987;
t19 = t733 - t737 - t807;
t732 = (-t1105 * t669 - t670 * t710) * t1063 + (-t1091 * t669 - t670 * t675) * t1061 + (-t669 * t908 + t670 * t909) * t867 + (t677 + t678) * t1003 + t1123 * t868 * t1007;
t736 = (t369 * t726 + t370 * t724) * t1063 + (t271 * t726 + t320 * t724) * t1061 + t860 * t1065 + (t555 + t556) * t989 + (t559 + t560) * t987;
t36 = t732 - t736 - t806;
t775 = -qJD(1) * t19 - qJD(2) * t36;
t756 = t155 * t1062 + t925 / 0.2e1 - t924 / 0.2e1;
t25 = t756 + t1069;
t72 = (-t726 * t561 - m(7) * (t270 * t726 + t317 * t724) - t724 * t557) * t670;
t774 = qJD(1) * t25 - qJD(2) * t72;
t147 = 0.2e1 * (t1028 - t884 / 0.4e1 + t881 / 0.4e1) * m(7);
t403 = 0.2e1 * (t720 / 0.4e1 + t721 / 0.4e1 + 0.1e1 / 0.4e1) * t979;
t768 = qJD(1) * t147 - qJD(2) * t403;
t27 = t790 + t875 + t1117;
t441 = m(7) * t1091 + t868 * mrSges(7,3);
t51 = t789 + t1118;
t760 = -qJD(1) * t27 - qJD(2) * t51 + qJD(3) * t441;
t144 = t422 * t851 - t412;
t419 = t851 * t890 + t641;
t758 = qJD(1) * t144 - qJD(2) * t419 + qJD(3) * t659;
t16 = (mrSges(6,2) * t1126 + t1047 + t792) * t726 + (mrSges(6,1) * t1126 + t1044 + (pkin(5) * t1126 - t852) * m(7) - t791) * t724 + t873 + t876;
t39 = (t917 / 0.2e1 - t812) * t726 + (t918 / 0.2e1 + (t974 / 0.2e1 - t815) * m(7) - t811) * t724 + t870;
t755 = t16 * qJD(1) + t39 * qJD(2);
t753 = -t657 * t1053 + t1085 / 0.4e1 + t1086 / 0.4e1 + t1074;
t750 = mrSges(7,1) * t1052 + t1055 * t81 + t1056 * t99 + t1057 * t98;
t735 = mrSges(6,3) * t1128 * t709 - t1072 * t726 + t753 * t724;
t738 = (t1017 + t797) * t658 + t810 * t669 + t479 * t998 + t593 * t997 + t557 * t1008 + t535 * t1001 + t536 * t993;
t742 = t558 * t994 + t746;
t744 = mrSges(7,3) * t815 + t562 * t994 + t765;
t748 = mrSges(6,1) * t1039 + mrSges(7,1) * t1048 + t1055 * t320 + t1056 * t370;
t15 = (m(7) * t1048 + t1018) * pkin(5) + (t742 - t1107) * t724 + (t744 + t1106) * t726 + (t735 + t853) * t670 + t738 + t748;
t734 = (t1045 + t799) * t658 + t810 * t510 + t1072 * t422 + t111 * t998 + t171 * t997 + t279 * t1008 + t236 * t1001 + t237 * t993;
t741 = mrSges(7,3) * t852 + t709 * t791 + t766;
t8 = (t510 * t855 + t741) * t726 + (m(7) * t1052 + t1041) * pkin(5) + t734 - t853 * t759 + t753 * t421 + (-t510 * t854 + t709 * t792 + t747) * t724 + t750;
t89 = -t710 * t680 - t677 * t973 - t675 * t1087 + (-t693 / 0.2e1 - t1085 / 0.2e1 - t691 / 0.2e1 - t1086 / 0.2e1) * t726 + (-pkin(5) * t978 - t694 / 0.2e1 + t688 / 0.2e1 - t692 / 0.2e1 + t686 / 0.2e1) * t724;
t749 = -t8 * qJD(1) - t15 * qJD(2) + t89 * qJD(3);
t402 = (-0.1e1 / 0.2e1 + t868 / 0.2e1) * t979;
t148 = (-t881 + t884) * t1061 + m(7) * t1029;
t52 = t789 - t1118;
t40 = t724 * t797 + t879 / 0.2e1 + t562 * t990 + t1070 * t669 + t870 + t871;
t38 = t732 + t736;
t28 = t790 + t876 - t1117;
t24 = -t756 + t1069;
t20 = t733 + t737;
t17 = mrSges(6,3) * t1119 + t1070 * t510 + t280 * t987 + t282 * t990 + t724 * t799 + t873 + t875 + t877;
t14 = t738 + t271 * t866 - t941 / 0.2e1 - t938 / 0.2e1 + t559 * t1060 + t744 * t726 + t735 * t670 + t742 * t724 - t748 + t968 * t826 + t1111 * t825;
t10 = t731 - t739 + (t374 + t375) * t989 + (t376 + t377) * t987;
t7 = t734 + t71 * t866 + t741 * t726 + t943 / 0.2e1 + t940 / 0.2e1 + t323 * t1060 + (t1054 * t889 + t753) * t421 + (t280 * t994 + t747) * t724 - t750 + t968 * t833 + t1111 * t830;
t4 = t730 + t93 * t866 - t942 / 0.2e1 - t939 / 0.2e1 + t947 / 0.2e1 + t945 / 0.2e1 + t952 / 0.2e1 + t951 / 0.2e1 + (t931 - t932 + t934 - t936) * t1061 - t743;
t1 = -t728 + t729;
t21 = [qJD(2) * t6 + qJD(3) * t3 + qJD(4) * t13 + qJD(5) * t9 + qJD(6) * t32, t923 + ((Ifges(4,5) * t983 - Ifges(5,5) * t670 + Ifges(4,6) * t984 - Ifges(5,6) * t669) * t819 + (-m(5) * t230 + m(6) * t213 + t332 - t552) * t593 - t1108 + t1084 * t551 + m(5) * (t1084 * t231 + t600 * t711) + (m(4) * pkin(9) + mrSges(4,3)) * (-t983 * t529 + t984 * t531) + m(7) * (t103 * t317 + t155 * t479 + t270 * t93) + t711 * t420 - pkin(2) * t610 + t600 * t566 + t103 * t557 + t115 * t558 + t93 * t561 + t114 * t562 - t155 * t539 - t213 * t540 + t479 * t331 - t638 * t859 + t270 * t376 + t366 * t377 + t317 * t374 + t367 * t375 + t568 * t1012 + t567 * t1015 + t394 * t1003 + t393 * t1007 + t891 * t1124 + t794 + t230 * t915 + t690 * t769 + t695 * t770 + m(6) * (t114 * t366 + t115 * t367) + t1094 * t1024 + t1096 * t1014 - t1097 * t890 / 0.2e1 + t1099 * t669 / 0.2e1 + t1092 * t1022 + (-m(4) * pkin(2) - mrSges(3,1) + t1078) * t653 - t231 * t916 + t637 * t861 + t573 * t862 + t572 * t863) * qJD(2) + t1 * qJD(3) + t10 * qJD(4) + t4 * qJD(5) + t24 * qJD(6), t935 + t1 * qJD(2) + (t1100 * t989 + t1101 * t987 + t1089 * t833 + t1088 * t830 + t1090 * t1029 + m(7) * (t125 * t675 - t657 * t71 + t658 * t81) + t1077 - t759 * t803 - t710 * t313 - t675 * t312 + t125 * t677 - t657 * t323 + t658 * t321 - t324 * t889 - t460 * mrSges(4,2) - t461 * mrSges(4,1) + t81 * t966 + t322 * t888 + t510 * t804 + t1071 * t188 - t71 * t914 + t1068 * t187 + t1122 * (-t724 * t98 + t726 * t99)) * qJD(3) + t20 * qJD(4) + t7 * qJD(5) + t28 * qJD(6), qJD(2) * t10 + qJD(3) * t20 + qJD(5) * t17 + qJD(6) * t148 + t907, t910 + t4 * qJD(2) + t7 * qJD(3) + t17 * qJD(4) + (-mrSges(6,1) * t88 - mrSges(7,1) * t70 - mrSges(6,2) * t87 - mrSges(7,2) * t69 + (-m(7) * t70 - t967) * pkin(5) + t241 + t240) * qJD(5), qJD(2) * t24 + qJD(3) * t28 + qJD(4) * t148 + t906; -qJD(3) * t2 + qJD(4) * t11 + qJD(5) * t5 + qJD(6) * t25 - t923, qJD(3) * t12 - qJD(4) * t35 + qJD(5) * t18 - qJD(6) * t72 (t763 + t783 - t710 * t538 - t675 * t537 + t478 * t677 - t657 * t559 + t658 * t555 - t560 * t889 + t670 * t803 + t669 * t804 + t320 * t966 + t556 * t888 + m(7) * (-t271 * t657 + t320 * t658 + t478 * t675) - t271 * t914 + t1093 * t989 + t1095 * t987 + t1089 * t826 + t1088 * t825 - t1071 * t593 + t1068 * t1084 + t1090 * t1003 + t1078 * pkin(9) + t1122 * (-t369 * t724 + t370 * t726)) * qJD(3) + t38 * qJD(4) + t14 * qJD(5) + t52 * qJD(6) + t778, qJD(3) * t38 + qJD(5) * t40 + qJD(6) * t402 - t776, t14 * qJD(3) + t40 * qJD(4) + t777 + (-mrSges(6,1) * t367 - mrSges(6,2) * t366 - mrSges(7,2) * t316 + (t968 * t726 + (-mrSges(7,3) * pkin(5) + t1111) * t724) * t670 + t851 * t317) * qJD(5), qJD(3) * t52 + qJD(4) * t402 + t774; qJD(2) * t2 + qJD(4) * t19 + qJD(5) * t8 - qJD(6) * t27 - t935, qJD(4) * t36 + qJD(5) * t15 - qJD(6) * t51 - t778, -qJD(5) * t89 + qJD(6) * t441, -t775, -t749 + (-mrSges(6,1) * t888 + mrSges(7,2) * t657 - pkin(5) * t966 + t715 + t716 + (mrSges(6,2) * t709 - t968) * t724 + t851 * t658) * qJD(5), t760; -qJD(2) * t11 - qJD(3) * t19 - qJD(5) * t16 - qJD(6) * t147 - t907, -qJD(3) * t36 - qJD(5) * t39 + qJD(6) * t403 + t776, t775, 0 (-t680 + t659) * qJD(5) - t755, -t768; -qJD(2) * t5 - qJD(3) * t8 + qJD(4) * t16 + qJD(6) * t144 - t910, -qJD(3) * t15 + qJD(4) * t39 - qJD(6) * t419 - t777, t659 * qJD(6) + t749, t755, 0, t758; -qJD(2) * t25 + qJD(3) * t27 + qJD(4) * t147 - qJD(5) * t144 - t906, qJD(3) * t51 - qJD(4) * t403 + qJD(5) * t419 - t774, -qJD(5) * t659 - t760, t768, -t758, 0;];
Cq  = t21;
