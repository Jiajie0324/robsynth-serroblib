% Calculate vector of centrifugal and Coriolis load on the joints for
% S6RPRPRP9
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,theta4]';
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
% tauc [6x1]
%   joint torques required to compensate Coriolis and centrifugal load

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 03:30
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S6RPRPRP9_coriolisvecJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(9,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRP9_coriolisvecJ_fixb_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRP9_coriolisvecJ_fixb_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPRPRP9_coriolisvecJ_fixb_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRPRP9_coriolisvecJ_fixb_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RPRPRP9_coriolisvecJ_fixb_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RPRPRP9_coriolisvecJ_fixb_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 03:27:45
% EndTime: 2019-03-09 03:29:15
% DurationCPUTime: 87.66s
% Computational Cost: add. (29294->1278), mult. (48528->1612), div. (0->0), fcn. (45392->8), ass. (0->604)
t1038 = Icges(6,1) + Icges(7,1);
t1019 = Icges(7,4) + Icges(6,5);
t1018 = Icges(6,6) - Icges(7,6);
t521 = pkin(9) + qJ(5);
t505 = sin(t521);
t1071 = (Icges(6,4) - Icges(7,5)) * t505;
t506 = cos(t521);
t1070 = t1038 * t506 - t1071;
t1037 = Icges(6,2) + Icges(7,3);
t1069 = Icges(7,2) + Icges(6,3);
t1068 = -t1018 * t505 + t1019 * t506;
t525 = sin(qJ(3));
t527 = cos(qJ(3));
t846 = Icges(6,4) * t506;
t624 = -Icges(6,2) * t505 + t846;
t1067 = -t1018 * t525 - t527 * t624;
t820 = t506 * t527;
t470 = Icges(7,5) * t820;
t823 = t505 * t527;
t1035 = Icges(7,3) * t823 + t1067 + t470;
t1024 = t1019 * t525 + t1070 * t527;
t526 = sin(qJ(1));
t817 = t525 * t526;
t528 = cos(qJ(1));
t822 = t505 * t528;
t376 = t506 * t817 + t822;
t811 = t526 * t527;
t809 = t528 * t506;
t813 = t526 * t505;
t375 = t525 * t813 - t809;
t841 = Icges(7,5) * t375;
t189 = Icges(7,1) * t376 - Icges(7,4) * t811 + t841;
t358 = Icges(6,4) * t375;
t192 = Icges(6,1) * t376 - Icges(6,5) * t811 - t358;
t1046 = t189 + t192;
t355 = Icges(7,5) * t376;
t177 = -Icges(7,6) * t811 + Icges(7,3) * t375 + t355;
t848 = Icges(6,4) * t376;
t186 = -Icges(6,2) * t375 - Icges(6,6) * t811 + t848;
t1048 = t177 - t186;
t1031 = t1046 * t376 + t1048 * t375;
t816 = t525 * t528;
t821 = t506 * t526;
t377 = t505 * t816 + t821;
t378 = t525 * t809 - t813;
t356 = Icges(7,5) * t377;
t810 = t527 * t528;
t191 = -Icges(7,1) * t378 + Icges(7,4) * t810 - t356;
t359 = Icges(6,4) * t377;
t193 = Icges(6,1) * t378 - Icges(6,5) * t810 - t359;
t932 = -t193 + t191;
t357 = Icges(7,5) * t378;
t178 = -Icges(7,6) * t810 + Icges(7,3) * t377 + t357;
t360 = Icges(6,4) * t378;
t188 = Icges(6,2) * t377 + Icges(6,6) * t810 - t360;
t933 = -t188 - t178;
t1032 = t933 * t377 + t932 * t378;
t180 = Icges(6,5) * t376 - Icges(6,6) * t375 - Icges(6,3) * t811;
t183 = Icges(7,4) * t376 - Icges(7,2) * t811 + Icges(7,6) * t375;
t1047 = t180 + t183;
t182 = -Icges(6,5) * t378 + Icges(6,6) * t377 + Icges(6,3) * t810;
t185 = -Icges(7,4) * t378 + Icges(7,2) * t810 - Icges(7,6) * t377;
t934 = t182 + t185;
t1066 = (-t1047 * t526 - t528 * t934) * t527 + t1031 + t1032;
t732 = qJD(5) * t527;
t736 = qJD(3) * t528;
t440 = -t526 * t732 + t736;
t733 = qJD(5) * t525;
t495 = qJD(1) + t733;
t1034 = t1068 * t527 + t1069 * t525;
t936 = -t1024 * t378 + t1034 * t810 - t1035 * t377;
t979 = -t1046 * t378 + t1047 * t810 - t1048 * t377;
t1065 = -t440 * t979 - t936 * t495;
t839 = Icges(7,5) * t506;
t619 = Icges(7,3) * t505 + t839;
t966 = -t1018 * t527 + (-t619 + t624) * t525;
t1063 = -t1068 * t525 + t1069 * t527;
t965 = t1019 * t527 - t1070 * t525;
t1062 = (t1037 * t506 + t1071) * t527;
t1061 = (-t1018 * t506 - t1019 * t505) * t527;
t1030 = t375 * t933 + t376 * t932 - t811 * t934;
t1042 = -t1024 * t506 - t1035 * t505;
t731 = qJD(5) * t528;
t699 = t525 * t731;
t740 = qJD(1) * t528;
t743 = qJD(1) * t525;
t673 = qJD(5) + t743;
t702 = t527 * t736;
t924 = t673 * t526 - t702;
t172 = (-t699 - t740) * t506 + t924 * t505;
t173 = t495 * t822 + t506 * t924;
t704 = t525 * t736;
t741 = qJD(1) * t527;
t957 = t526 * t741 + t704;
t93 = Icges(7,5) * t173 - Icges(7,6) * t957 + Icges(7,3) * t172;
t99 = Icges(6,4) * t173 - Icges(6,2) * t172 - Icges(6,6) * t957;
t1055 = t93 - t99;
t95 = Icges(6,5) * t173 - Icges(6,6) * t172 - Icges(6,3) * t957;
t97 = Icges(7,4) * t173 - Icges(7,2) * t957 + Icges(7,6) * t172;
t1054 = t95 + t97;
t737 = qJD(3) * t527;
t703 = t526 * t737;
t549 = t528 * t673 + t703;
t174 = t495 * t821 + t505 * t549;
t175 = -t495 * t813 + t506 * t549;
t738 = qJD(3) * t526;
t705 = t525 * t738;
t707 = t527 * t740;
t414 = t705 - t707;
t96 = Icges(6,5) * t175 - Icges(6,6) * t174 + Icges(6,3) * t414;
t98 = Icges(7,4) * t175 + Icges(7,2) * t414 + Icges(7,6) * t174;
t1053 = t96 + t98;
t100 = Icges(6,4) * t175 - Icges(6,2) * t174 + Icges(6,6) * t414;
t94 = Icges(7,5) * t175 + Icges(7,6) * t414 + Icges(7,3) * t174;
t1052 = t100 - t94;
t101 = Icges(7,1) * t173 - Icges(7,4) * t957 + Icges(7,5) * t172;
t103 = Icges(6,1) * t173 - Icges(6,4) * t172 - Icges(6,5) * t957;
t1051 = t101 + t103;
t102 = Icges(7,1) * t175 + Icges(7,4) * t414 + Icges(7,5) * t174;
t104 = Icges(6,1) * t175 - Icges(6,4) * t174 + Icges(6,5) * t414;
t1050 = t102 + t104;
t523 = cos(pkin(9));
t522 = sin(pkin(9));
t812 = t526 * t522;
t408 = t523 * t528 - t525 * t812;
t819 = t522 * t528;
t409 = t523 * t817 + t819;
t246 = Icges(5,4) * t409 + Icges(5,2) * t408 - Icges(5,6) * t811;
t249 = Icges(5,1) * t409 + Icges(5,4) * t408 - Icges(5,5) * t811;
t622 = Icges(4,5) * t525 + Icges(4,6) * t527;
t379 = Icges(4,3) * t528 + t526 * t622;
t850 = Icges(4,4) * t525;
t626 = Icges(4,2) * t527 + t850;
t381 = Icges(4,6) * t528 + t526 * t626;
t492 = Icges(4,4) * t811;
t844 = Icges(4,5) * t528;
t383 = Icges(4,1) * t817 + t492 + t844;
t1049 = t408 * t246 + t409 * t249 + t528 * t379 + t381 * t811 + t383 * t817;
t1045 = qJD(3) * t966 + qJD(5) * t1062;
t1044 = qJD(3) * t1063 + qJD(5) * t1061;
t390 = (-Icges(6,1) * t505 - t846) * t527;
t1043 = (-Icges(7,1) * t505 + t839) * t732 + qJD(5) * t390 + t965 * qJD(3);
t243 = Icges(5,5) * t409 + Icges(5,6) * t408 - Icges(5,3) * t811;
t1041 = -t243 * t811 + t1049;
t380 = -Icges(4,3) * t526 + t528 * t622;
t382 = -Icges(4,6) * t526 + t528 * t626;
t849 = Icges(4,4) * t527;
t630 = Icges(4,1) * t525 + t849;
t384 = -Icges(4,5) * t526 + t528 * t630;
t140 = -t528 * t380 - t382 * t811 - t384 * t817;
t410 = t522 * t816 + t523 * t526;
t411 = t523 * t816 - t812;
t245 = -Icges(5,5) * t411 + Icges(5,6) * t410 + Icges(5,3) * t810;
t248 = -Icges(5,4) * t411 + Icges(5,2) * t410 + Icges(5,6) * t810;
t251 = -Icges(5,1) * t411 + Icges(5,4) * t410 + Icges(5,5) * t810;
t801 = t408 * t248 + t409 * t251;
t1020 = -t245 * t811 + t140 + t801;
t349 = t526 * t379;
t602 = t381 * t527 + t383 * t525;
t141 = -t528 * t602 + t349;
t80 = t243 * t810 + t410 * t246 - t411 * t249;
t1040 = t141 + t80;
t600 = t382 * t527 + t384 * t525;
t940 = t600 * t528;
t142 = -t380 * t526 + t940;
t607 = -t248 * t410 + t251 * t411;
t1039 = t245 * t810 + t142 - t607;
t937 = t1024 * t376 - t1034 * t811 + t1035 * t375;
t621 = Icges(5,5) * t523 - Icges(5,6) * t522;
t367 = Icges(5,3) * t525 + t527 * t621;
t625 = Icges(5,4) * t523 - Icges(5,2) * t522;
t369 = Icges(5,6) * t525 + t527 * t625;
t629 = Icges(5,1) * t523 - Icges(5,4) * t522;
t371 = Icges(5,5) * t525 + t527 * t629;
t456 = -Icges(4,2) * t525 + t849;
t458 = Icges(4,1) * t527 - t850;
t599 = t456 * t527 + t458 * t525;
t454 = Icges(4,5) * t527 - Icges(4,6) * t525;
t824 = t454 * t528;
t1036 = -t367 * t811 + t369 * t408 + t371 * t409 + t526 * t599 + t824;
t439 = t527 * t731 + t738;
t611 = t188 * t505 + t193 * t506;
t613 = t186 * t505 - t192 * t506;
t614 = -t178 * t505 + t191 * t506;
t616 = t177 * t505 + t189 * t506;
t1033 = (t1042 + t1063) * t495 + (t1034 * t526 + t613 - t616) * t440 + (-t1034 * t528 + t611 - t614) * t439;
t996 = t1046 * t173 - t1047 * t957 + t1048 * t172 - t1050 * t378 + t1052 * t377 + t1053 * t810;
t995 = -t1051 * t378 + t1054 * t810 - t1055 * t377 + t933 * t172 + t932 * t173 - t934 * t957;
t994 = t1046 * t175 + t1047 * t414 + t1048 * t174 + t1050 * t376 - t1052 * t375 - t1053 * t811;
t993 = t1051 * t376 - t1054 * t811 + t1055 * t375 + t933 * t174 + t932 * t175 + t934 * t414;
t952 = t1024 * t173 - t1034 * t957 + t1035 * t172 - t1043 * t378 + t1044 * t810 - t1045 * t377;
t951 = t1024 * t175 + t1034 * t414 + t1035 * t174 + t1043 * t376 - t1044 * t811 + t1045 * t375;
t981 = -t1047 * t811 + t1031;
t1029 = t810 * t934 - t1032;
t74 = t183 * t525 + t527 * t616;
t76 = t180 * t525 - t527 * t613;
t1028 = t74 + t76;
t75 = t185 * t525 + t527 * t614;
t77 = t182 * t525 - t527 * t611;
t1027 = t75 + t77;
t935 = t1034 * t525 - t1042 * t527;
t1025 = t527 * t619 + t1067;
t1023 = (t1038 * t375 - t1048 - t355 + t848) * t440 + (-t1038 * t377 + t357 - t360 - t933) * t439 + (Icges(7,1) * t823 - t1035 - t390 - t470) * t495;
t1022 = (-t1037 * t376 + t1046 - t358 + t841) * t440 + (t1037 * t378 - t356 + t359 + t932) * t439 + (t1024 - t1062) * t495;
t997 = rSges(7,1) + pkin(5);
t1021 = (t1043 * t506 + t1045 * t505 + (-t1024 * t505 + t1035 * t506) * qJD(5) + t1034 * qJD(3)) * t527 + (qJD(3) * t1042 + t1044) * t525;
t977 = rSges(7,3) + qJ(6);
t1016 = t1036 * qJD(1);
t1015 = t349 + t801;
t1014 = (t1039 * t526 + t1040 * t528) * qJD(3);
t1013 = (t1020 * t526 + t1041 * t528) * qJD(3);
t121 = t367 * t810 + t369 * t410 - t371 * t411;
t417 = t526 * t454;
t218 = t528 * t599 - t417;
t1012 = (t121 - t218) * qJD(1);
t1004 = t1030 * t439 + t937 * t495;
t353 = qJD(6) * t375;
t789 = rSges(7,2) * t810 - t977 * t377 - t378 * t997;
t1003 = -t495 * t789 + t353;
t1002 = t1033 * t527;
t1000 = 0.2e1 * qJD(3);
t726 = qJD(3) * qJD(5);
t691 = t525 * t726;
t330 = -qJD(1) * t439 + t526 * t691;
t331 = qJD(1) * t440 - t528 * t691;
t690 = t527 * t726;
t999 = t1029 * t331 + t979 * t330 + t995 * t439 + t440 * t996 + t952 * t495 + t936 * t690;
t998 = t1030 * t331 + t330 * t981 + t439 * t993 + t440 * t994 + t495 * t951 + t690 * t937;
t17 = (-qJD(3) * t616 + t98) * t525 + (qJD(3) * t183 + t102 * t506 + t505 * t94 + (t177 * t506 - t189 * t505) * qJD(5)) * t527;
t19 = (qJD(3) * t613 + t96) * t525 + (qJD(3) * t180 - t100 * t505 + t104 * t506 + (-t186 * t506 - t192 * t505) * qJD(5)) * t527;
t992 = t17 + t19;
t18 = (-qJD(3) * t614 + t97) * t525 + (qJD(3) * t185 + t101 * t506 + t505 * t93 + (-t178 * t506 - t191 * t505) * qJD(5)) * t527;
t20 = (qJD(3) * t611 + t95) * t525 + (qJD(3) * t182 + t103 * t506 - t505 * t99 + (-t188 * t506 + t193 * t505) * qJD(5)) * t527;
t991 = t18 + t20;
t990 = t440 * t981 + t1004;
t989 = t1029 * t439 - t1065;
t988 = t1027 * t439 + t1028 * t440 + t495 * t935;
t987 = t1013 + t1016;
t986 = t1012 + t1014;
t305 = -qJD(1) * t410 - t522 * t703;
t306 = qJD(1) * t411 + t523 * t703;
t132 = Icges(5,5) * t306 + Icges(5,6) * t305 + Icges(5,3) * t414;
t134 = Icges(5,4) * t306 + Icges(5,2) * t305 + Icges(5,6) * t414;
t136 = Icges(5,1) * t306 + Icges(5,4) * t305 + Icges(5,5) * t414;
t262 = qJD(1) * t382 + t456 * t738;
t421 = t458 * t526;
t264 = qJD(1) * t384 + qJD(3) * t421;
t608 = t246 * t522 - t249 * t523;
t985 = (-t134 * t522 + t136 * t523 + t264) * t527 + (t132 - t262) * t525 + (t243 * t527 + t525 * t608 - t602) * qJD(3);
t303 = qJD(1) * t408 + t522 * t702;
t304 = qJD(1) * t409 - t523 * t702;
t131 = Icges(5,5) * t304 + Icges(5,6) * t303 - Icges(5,3) * t957;
t133 = Icges(5,4) * t304 + Icges(5,2) * t303 - Icges(5,6) * t957;
t135 = Icges(5,1) * t304 + Icges(5,4) * t303 - Icges(5,5) * t957;
t420 = t456 * t528;
t261 = qJD(1) * t381 - qJD(3) * t420;
t422 = t458 * t528;
t263 = -qJD(3) * t422 + (t526 * t630 + t844) * qJD(1);
t606 = t248 * t522 - t251 * t523;
t984 = (-t133 * t522 + t135 * t523 + t263) * t527 + (t131 - t261) * t525 + (t245 * t527 + t525 * t606 + t600) * qJD(3);
t366 = Icges(5,3) * t527 - t525 * t621;
t324 = t366 * qJD(3);
t368 = Icges(5,6) * t527 - t525 * t625;
t325 = t368 * qJD(3);
t370 = Icges(5,5) * t527 - t525 * t629;
t326 = t370 * qJD(3);
t551 = t599 * qJD(1) - t622 * qJD(3);
t443 = t626 * qJD(3);
t444 = t630 * qJD(3);
t911 = qJD(1) * t454 + qJD(3) * (t456 * t525 - t458 * t527) + t443 * t527 + t444 * t525;
t983 = t303 * t369 + t304 * t371 + t324 * t810 + t325 * t410 - t326 * t411 - t367 * t957 + t551 * t526 + t528 * t911;
t982 = t305 * t369 + t306 * t371 - t324 * t811 + t325 * t408 + t326 * t409 + t367 * t414 - t526 * t911 + t551 * t528;
t214 = t382 * t525 - t384 * t527;
t976 = t245 * t525 - t527 * t606 + t214;
t601 = t381 * t525 - t383 * t527;
t975 = -t243 * t525 + t527 * t608 + t601;
t200 = -rSges(6,1) * t378 + rSges(6,2) * t377 + rSges(6,3) * t810;
t974 = t200 * t495;
t972 = t527 * (-rSges(5,3) - qJ(4));
t970 = t1025 * t526;
t969 = t1025 * t528;
t968 = t1024 * t526;
t967 = t1024 * t528;
t645 = rSges(7,1) * t506 + rSges(7,3) * t505;
t347 = rSges(7,2) * t525 + t527 * t645;
t644 = pkin(5) * t506 + qJ(6) * t505;
t767 = t644 * t527 + t347;
t518 = t528 * rSges(4,3);
t398 = rSges(4,1) * t817 + rSges(4,2) * t811 + t518;
t468 = t528 * pkin(1) + t526 * qJ(2);
t519 = t528 * pkin(7);
t928 = t519 + t468;
t964 = t398 + t928;
t963 = -t1034 * t495 - t1047 * t440 - t439 * t934;
t923 = -t1027 * t528 + t1028 * t526;
t962 = t1027 * t526 + t1028 * t528;
t922 = -t1029 * t528 + t526 * t979;
t961 = t1029 * t526 + t528 * t979;
t921 = -t1030 * t528 + t526 * t981;
t960 = t1030 * t526 + t528 * t981;
t730 = qJD(6) * t505;
t459 = t527 * t730;
t491 = qJ(4) * t810;
t426 = pkin(3) * t816 - t491;
t724 = pkin(4) * t812;
t498 = pkin(4) * t523 + pkin(3);
t524 = -pkin(8) - qJ(4);
t755 = -t498 * t816 - t524 * t810;
t256 = t426 + t724 + t755;
t507 = qJD(4) * t525;
t750 = -t426 * t736 + t507;
t496 = pkin(3) * t817;
t423 = -qJ(4) * t811 + t496;
t490 = pkin(4) * t819;
t716 = t498 * t817 + t524 * t811 + t490;
t255 = -t423 + t716;
t782 = -t255 - t423;
t554 = t256 * t736 + t738 * t782 + t750;
t931 = t977 * t375 + t376 * t997;
t791 = -rSges(7,2) * t811 + t931;
t42 = -t439 * t791 + t440 * t789 + t459 + t554;
t660 = t423 + t928;
t596 = t255 + t660;
t466 = pkin(3) * t527 + qJ(4) * t525;
t734 = qJD(4) * t528;
t489 = t527 * t734;
t510 = qJD(2) * t528;
t748 = t510 - t489;
t711 = -t466 * t736 - t748;
t808 = qJ(4) + t524;
t880 = pkin(3) - t498;
t907 = t525 * t808 + t527 * t880;
t669 = t736 * t907 + t711;
t548 = t596 * qJD(1) + t669;
t352 = t377 * qJD(6);
t956 = -t440 * t767 + t791 * t495 - t352;
t48 = t548 + t956;
t678 = t48 * t767;
t959 = -t42 * t789 + t678;
t958 = t525 * t740 + t703;
t742 = qJD(1) * t526;
t944 = t525 * t880;
t322 = -t527 * t808 + t944;
t887 = pkin(3) * t525;
t461 = qJ(4) * t527 - t887;
t955 = qJD(3) * (-t322 - t461);
t508 = qJD(4) * t527;
t555 = t526 * (t384 + t420) - t528 * (-Icges(4,2) * t817 + t383 + t492);
t556 = t526 * (t382 - t422) - t528 * (t381 - t421);
t609 = t243 * t528 + t245 * t526;
t954 = t555 * t527 + (-t556 - t609) * t525;
t753 = t456 + t630;
t754 = -t626 + t458;
t953 = -(t525 * t753 - t527 * t754) * qJD(1) + t367 * t743;
t299 = t907 * t738;
t430 = t466 * t738;
t509 = qJD(2) * t526;
t701 = t526 * t508;
t593 = t430 + t509 - t701;
t572 = -t299 + t593;
t512 = t528 * qJ(2);
t463 = pkin(1) * t526 - t512;
t886 = pkin(7) * t526;
t680 = -t463 - t886;
t659 = t426 + t680;
t537 = (-t256 + t659) * qJD(1) + t572;
t47 = t439 * t767 + t1003 + t537;
t949 = t47 * t767;
t948 = -t977 * t172 - t173 * t997 + t352;
t947 = rSges(7,2) * t705 + t977 * t174 + t175 * t997 + t353;
t714 = pkin(3) * t958 + qJ(4) * t705;
t735 = qJD(4) * t526;
t258 = (-qJ(4) * t740 - t735) * t527 + t714;
t727 = qJD(1) * qJD(3);
t693 = t526 * t727;
t930 = qJD(1) * t258 + t466 * t693;
t676 = -rSges(3,2) * t528 + t526 * rSges(3,3);
t929 = t468 + t676;
t925 = t1061 * t495 + (-t1018 * t376 - t1019 * t375) * t440 + (t1018 * t378 + t1019 * t377) * t439;
t814 = t526 * t466;
t815 = t526 * t907;
t775 = -t815 + t814;
t916 = t1021 * t495 + t690 * t935;
t603 = t369 * t522 - t371 * t523;
t915 = (t366 + t603) * qJD(1);
t647 = rSges(6,1) * t506 - rSges(6,2) * t505;
t348 = rSges(6,3) * t525 + t527 * t647;
t649 = rSges(5,1) * t523 - rSges(5,2) * t522;
t374 = rSges(5,3) * t525 + t527 * t649;
t745 = qJD(1) * t380;
t912 = qJD(3) * t214 + t261 * t527 + t263 * t525 + t745;
t746 = qJD(1) * t379;
t910 = qJD(3) * t601 - t262 * t527 - t264 * t525 + t746;
t781 = -t256 + t426;
t717 = t498 * t958 + t524 * t707;
t130 = -t524 * t705 + (t491 - t724) * qJD(1) - t714 + t717;
t806 = -t130 - t258;
t535 = t806 * t526 + (t526 * t781 + t528 * t782) * qJD(1);
t698 = t525 * t730;
t700 = t506 * t732;
t594 = -t498 * t702 + t524 * t704;
t713 = pkin(3) * t702 + qJ(4) * t957;
t818 = t524 * t527;
t129 = (t490 + (t818 - t944) * t526) * qJD(1) + t594 + t713;
t668 = t489 - t713;
t257 = qJD(1) * t496 + t668;
t788 = qJD(3) * t508 + t257 * t736;
t723 = t129 * t736 + t788;
t853 = -rSges(7,2) * t707 + t947;
t854 = -rSges(7,2) * t957 - t948;
t5 = qJD(6) * t700 + t854 * t440 - t853 * t439 - t791 * t331 + t789 * t330 + (t535 - t698) * qJD(3) + t723;
t909 = t42 * t854 + t5 * t789;
t906 = t526 * t606 + t528 * t608;
t904 = t526 ^ 2;
t903 = m(5) / 0.2e1;
t902 = m(6) / 0.2e1;
t901 = m(7) / 0.2e1;
t900 = -pkin(1) - pkin(7);
t899 = t330 / 0.2e1;
t898 = t331 / 0.2e1;
t897 = -t439 / 0.2e1;
t896 = t439 / 0.2e1;
t895 = -t440 / 0.2e1;
t894 = t440 / 0.2e1;
t893 = -t495 / 0.2e1;
t892 = t495 / 0.2e1;
t890 = t526 / 0.2e1;
t888 = rSges(3,2) - pkin(1);
t529 = qJD(1) ^ 2;
t885 = pkin(7) * t529;
t728 = qJD(1) * qJD(2);
t752 = qJ(2) * t740 + t509;
t757 = qJD(1) * (-pkin(1) * t742 + t752) + t526 * t728;
t536 = qJD(1) * t130 - t907 * t693 + (-qJD(1) * t508 - t885) * t526 + t757 + t930;
t297 = t322 * qJD(3);
t404 = qJD(3) * t461 + t507;
t675 = -t404 - t507;
t577 = (-t297 + t675) * t528;
t877 = rSges(7,2) * t527;
t345 = -t525 * t645 + t877;
t395 = (-rSges(7,1) * t505 + rSges(7,3) * t506) * t527;
t739 = qJD(3) * t525;
t568 = -t505 * t739 + t700;
t800 = t459 + t568 * qJ(6) + (-t505 * t732 - t506 * t739) * pkin(5) + qJD(3) * t345 + qJD(5) * t395;
t6 = qJD(6) * t172 + t853 * t495 - t800 * t440 - t767 * t330 + (t732 * t791 + t577) * qJD(3) + t536;
t884 = t6 * t528;
t488 = t525 * t735;
t501 = t528 * t728;
t661 = -t519 * t529 + t501;
t692 = t528 * t727;
t569 = qJD(3) * t488 + t404 * t738 + t466 * t692 + t661;
t405 = qJD(1) * t468 - t510;
t780 = -t257 - t405;
t534 = t297 * t738 - t907 * t692 + (-t129 - t489 + t780) * qJD(1) + t569;
t7 = qJD(6) * t174 + t331 * t767 + t439 * t800 - t495 * t854 - t690 * t789 + t534;
t883 = t7 * t526;
t876 = rSges(3,3) * t528;
t874 = rSges(5,3) * t527;
t872 = rSges(6,3) * t527;
t871 = t17 * t440;
t870 = t18 * t439;
t869 = t19 * t440;
t868 = t20 * t439;
t721 = t175 * rSges(6,1) - t174 * rSges(6,2) + rSges(6,3) * t705;
t108 = -rSges(6,3) * t707 + t721;
t765 = t376 * rSges(6,1) - t375 * rSges(6,2);
t196 = -rSges(6,3) * t811 + t765;
t346 = -t525 * t647 + t872;
t396 = (-rSges(6,1) * t505 - rSges(6,2) * t506) * t527;
t209 = qJD(3) * t346 + qJD(5) * t396;
t21 = t108 * t495 - t209 * t440 - t330 * t348 + (t196 * t732 + t577) * qJD(3) + t536;
t867 = t21 * t528;
t648 = rSges(6,1) * t173 - rSges(6,2) * t172;
t106 = -rSges(6,3) * t957 + t648;
t22 = -t106 * t495 - t200 * t690 + t209 * t439 + t331 * t348 + t534;
t866 = t22 * t526;
t63 = t196 * t495 - t348 * t440 + t548;
t863 = t528 * t63;
t718 = t306 * rSges(5,1) + t305 * rSges(5,2) + rSges(5,3) * t705;
t138 = -rSges(5,3) * t707 + t718;
t373 = -t525 * t649 + t874;
t344 = t373 * qJD(3);
t597 = -t526 * t885 + t757;
t58 = (t138 - t701) * qJD(1) + (t374 * t742 + (-t344 + t675) * t528) * qJD(3) + t597 + t930;
t862 = t58 * t528;
t650 = rSges(5,1) * t304 + rSges(5,2) * t303;
t137 = -rSges(5,3) * t957 + t650;
t59 = t344 * t738 + (-t137 + (qJD(3) * t374 - t508) * t528 + t780) * qJD(1) + t569;
t861 = t59 * t526;
t860 = t63 * t348;
t859 = t74 * t330;
t858 = t75 * t331;
t857 = t76 * t330;
t856 = t77 * t331;
t712 = rSges(4,1) * t958 + rSges(4,2) * t707;
t269 = (-rSges(4,2) * t739 - rSges(4,3) * qJD(1)) * t526 + t712;
t467 = rSges(4,1) * t527 - rSges(4,2) * t525;
t431 = t467 * t738;
t651 = rSges(4,1) * t525 + rSges(4,2) * t527;
t445 = t651 * qJD(3);
t117 = t445 * t736 + (t269 + t431) * qJD(1) + t597;
t829 = t117 * t528;
t428 = t467 * t528;
t268 = -qJD(3) * t428 + (t526 * t651 + t518) * qJD(1);
t706 = t467 * t736;
t118 = -t445 * t738 + (-t268 - t405 + t706) * qJD(1) + t661;
t828 = t118 * t526;
t516 = t526 * rSges(4,3);
t399 = t528 * t651 - t516;
t168 = t431 + t509 + (t399 + t680) * qJD(1);
t827 = t168 * t528;
t219 = t528 * t257;
t807 = t528 * t129 + t219;
t805 = -t138 - t258;
t401 = t528 * t426;
t787 = t528 * t256 - t401;
t786 = -t375 * t997 + t376 * t977;
t785 = t377 * t997 - t378 * t977;
t756 = t409 * rSges(5,1) + t408 * rSges(5,2);
t252 = -rSges(5,3) * t811 + t756;
t784 = -t252 - t423;
t254 = -rSges(5,1) * t411 + rSges(5,2) * t410 + rSges(5,3) * t810;
t783 = -t254 + t426;
t779 = t767 * t526;
t778 = -t347 * t528 - t644 * t810;
t777 = -t297 - t404;
t433 = t466 * t742;
t776 = -t742 * t907 + t433;
t773 = t907 - t466;
t768 = -t644 * t525 + t345;
t764 = t526 * t404 + t466 * t740;
t427 = t466 * t528;
t759 = -t427 * t736 + t508;
t758 = (-pkin(5) * t505 + qJ(6) * t506) * t527 + t395;
t751 = rSges(3,2) * t742 + rSges(3,3) * t740;
t451 = qJD(1) * t463;
t749 = t509 - t451;
t744 = qJD(1) * t622;
t725 = -rSges(4,3) + t900;
t720 = -t196 + t782;
t272 = t907 * t528;
t719 = t272 * t736 + t759;
t715 = t512 - t755;
t688 = -t741 / 0.2e1;
t686 = -t738 / 0.2e1;
t685 = t738 / 0.2e1;
t684 = t737 / 0.2e1;
t683 = -t736 / 0.2e1;
t674 = -pkin(4) * t522 + t900;
t672 = t782 - t791;
t671 = t526 * t297 - t740 * t907 + t764;
t407 = qJD(1) * t426;
t670 = t407 + t430 + t749;
t655 = qJD(5) * t684;
t406 = qJD(1) * t814;
t654 = -t525 * t734 + t406;
t653 = qJD(1) * t427 + t461 * t738 + t488;
t631 = t717 + t752;
t618 = -pkin(7) * qJD(1) - t508;
t169 = qJD(1) * t964 - t510 - t706;
t617 = t168 * t526 - t169 * t528;
t610 = t196 * t528 + t200 * t526;
t592 = t928 + t716;
t587 = -t498 * t525 - qJ(2) - t818;
t576 = -t524 * t739 - t508;
t210 = (-t398 * t526 - t399 * t528) * qJD(3);
t563 = -t594 + t748;
t562 = t47 * t800 + t7 * t767;
t558 = -t47 * t789 + t48 * t791;
t557 = t42 * t791 - t949;
t553 = -qJD(1) * t600 - qJD(3) * t824 + t746;
t552 = qJD(1) * t602 + qJD(3) * t417 + t745;
t550 = -qJD(1) * t272 + t322 * t738 + t653;
t57 = -t196 * t439 + t200 * t440 + t554;
t62 = t348 * t439 + t537 - t974;
t538 = t57 * t610 + (-t526 * t63 - t528 * t62) * t348;
t533 = -t526 * t959 + t557 * t528;
t530 = qJD(3) * t906 + t915;
t464 = rSges(3,2) * t526 + t876;
t425 = t467 * t526;
t415 = (t528 ^ 2 + t904) * t737;
t329 = t374 * t738;
t317 = t374 * t528;
t316 = t374 * t526;
t315 = t371 * t528;
t314 = t371 * t526;
t313 = t369 * t528;
t312 = t369 * t526;
t308 = qJD(1) * t929 - t510;
t307 = t509 + (-t463 + t464) * qJD(1);
t292 = t348 * t528;
t290 = t348 * t526;
t270 = qJD(1) * t815;
t266 = t501 + (-qJD(1) * t676 - t405) * qJD(1);
t265 = qJD(1) * t751 + t757;
t239 = rSges(6,1) * t377 + rSges(6,2) * t378;
t235 = -rSges(6,1) * t375 - rSges(6,2) * t376;
t220 = qJD(1) * t256;
t110 = -t374 * t736 + (t252 + t660) * qJD(1) + t711;
t109 = t329 + (-t254 + t659) * qJD(1) + t593;
t84 = (t254 * t528 + t526 * t784) * qJD(3) + t750;
t39 = (t137 * t528 + t805 * t526 + (t526 * t783 + t528 * t784) * qJD(1)) * qJD(3) + t788;
t8 = qJD(3) * t535 + t106 * t440 - t108 * t439 - t196 * t331 + t200 * t330 + t723;
t1 = [(t983 + t984 + t987) * t685 + (t952 + t990) * t896 + (t59 * (t512 + t783) + t58 * (t496 + t928 + t756) + (t58 * t972 + t59 * t900) * t526 + (rSges(5,3) * t704 + t510 - t650 - t668 + t900 * t740 + (-qJ(2) + t874 - t887) * t742) * t109 + (qJD(1) * t254 + t109 - t329 - t670 + t714 + t718 + t752 + t740 * t972 + (qJD(1) * t900 - t508 - t618) * t526) * t110) * m(5) + (t118 * (-t516 + t680) + t168 * t510 + t117 * t964 + t169 * (-rSges(4,2) * t705 + t712 + t752) + (qJD(3) * t168 * t467 + t118 * t651) * t528 + (t725 * t827 + (t168 * (-qJ(2) - t651) + t169 * t725) * t526) * qJD(1) - (-t168 + t431 + (t399 - t886) * qJD(1) + t749) * t169) * m(4) + ((t380 * t904 + t607 * t526 + (-t80 + (t380 + t602) * t528 - t1015 + t1020) * t528) * qJD(3) + t986 - t1012) * t683 + (t982 + t985 + (t121 + t976) * qJD(1)) * t736 / 0.2e1 - ((-t975 + t1036) * t526 + t218 * t528) * t727 / 0.2e1 + (-t678 * t439 + t7 * (t715 - t789) + t6 * (t592 + t931) + (-t6 * t877 + t674 * t7) * t526 + (t576 * t526 - t1003 + t220 - t407 + t451 - t572 + t631 + t947) * t48 + (rSges(7,2) * t704 + t563 + t669 + t948 + t956) * t47 + (t47 * t596 + t48 * t886 + (t47 * t674 - t48 * t877) * t528 + (t47 * (t587 + t877) + t48 * t674) * t526) * qJD(1)) * m(7) + ((-t505 * t933 - t506 * t932) * t527 - t934 * t525 + t1027) * t440 * t893 + t871 / 0.2e1 + t869 / 0.2e1 + t870 / 0.2e1 + t868 / 0.2e1 + t936 * t898 + t937 * t899 + t916 + (t266 * (t526 * t888 + t512 + t876) + t307 * t510 + t265 * t929 + t308 * (t751 + t752) + (t307 * t888 * t528 + (t307 * (-rSges(3,3) - qJ(2)) - t308 * pkin(1)) * t526) * qJD(1) - (qJD(1) * t464 - t307 + t749) * t308) * m(3) + (((t142 - t940 + t1049) * t528 + (-t141 + t140 + (t380 - t602) * t528 - t527 * t609 + t1015) * t526) * qJD(3) + t1016) * t686 + t951 * t894 + (-(t526 * t618 - t220 - t299 - t62 + t670 - t974) * t63 - t860 * t439 + t22 * (-t200 + t715) + t62 * (rSges(6,3) * t704 + t563 - t648) + t21 * (t592 + t765) + t63 * (t631 + t721) + (-t21 * t872 + t22 * t674 + t576 * t63) * t526 + ((t62 * t674 - t63 * t872) * t528 + (t62 * (t587 + t872) + t63 * t674) * t526) * qJD(1)) * m(6) + t856 / 0.2e1 + ((t1029 + t1066) * t440 + t1004) * t897 + ((-t981 + t1066) * t439 + t989 + t1065) * t895 + t859 / 0.2e1 + t857 / 0.2e1 + t858 / 0.2e1 + ((-t325 * t522 + t326 * t523 - t444) * t527 + (t443 + t324) * t525 + (t367 * t527 + t525 * t603 - t599) * qJD(3)) * qJD(1); 0.2e1 * (t883 / 0.2e1 - t884 / 0.2e1) * m(7) + 0.2e1 * (-t867 / 0.2e1 + t866 / 0.2e1) * m(6) + 0.2e1 * (t861 / 0.2e1 - t862 / 0.2e1) * m(5) + 0.2e1 * (-t829 / 0.2e1 + t828 / 0.2e1) * m(4) + 0.2e1 * (-t265 * t528 / 0.2e1 + t266 * t890) * m(3); t960 * t899 + t961 * t898 + ((t527 * t936 + t817 * t979) * qJD(5) + ((-qJD(5) * t1029 + t963) * t525 + t1002) * t528 + (-t377 * t966 - t378 * t965) * t495 + (-t377 * t970 - t378 * t968) * t440 + (t377 * t969 + t378 * t967) * t439) * t897 + (-qJD(1) * t922 + t526 * t995 + t528 * t996) * t896 + ((-t1030 * t816 + t527 * t937) * qJD(5) + ((qJD(5) * t981 - t963) * t525 - t1002) * t526 + (t375 * t966 + t376 * t965) * t495 + (t375 * t970 + t376 * t968) * t440 + (-t375 * t969 - t376 * t967) * t439) * t895 + (-qJD(1) * t921 + t526 * t993 + t528 * t994) * t894 + (((t505 * t966 + t506 * t965 + t1034) * t495 + (t505 * t970 + t506 * t968 + t1047) * t440 + (-t505 * t969 - t506 * t967 + t934) * t439 + t935 * qJD(5)) * t527 + (qJD(5) * t923 + t1033) * t525) * t893 + (-qJD(1) * t923 + t526 * t991 + t528 * t992) * t892 - (((-t368 * t522 + t370 * t523 + t367) * qJD(1) + ((-t312 * t522 + t314 * t523 + t243) * t528 + (t313 * t522 - t315 * t523 + t245) * t526) * qJD(3)) * t527 + t530 * t525 + (-t525 * t754 - t527 * t753) * qJD(1) + (t525 * t555 + t527 * t556) * qJD(3)) * qJD(1) / 0.2e1 + (t985 * t528 + t984 * t526 + (t526 * t975 + t528 * t976) * qJD(1)) * qJD(1) / 0.2e1 + ((-t313 * t410 + t315 * t411) * t738 + (t368 * t410 - t370 * t411) * qJD(1) + (-t738 * t824 - t744) * t526 + (t530 * t527 + (t312 * t410 - t314 * t411 + t417 * t526 + t954) * qJD(3) - t953) * t528) * t686 + ((t312 * t408 + t314 * t409) * t736 + (t368 * t408 + t370 * t409) * qJD(1) + (t417 * t736 - t744) * t528 + (-t915 * t527 + (-t313 * t408 - t315 * t409 - t527 * t906 - t528 * t824 - t954) * qJD(3) + t953) * t526) * t683 - t988 * t732 / 0.2e1 - t990 * t526 * t733 / 0.2e1 + t989 * t699 / 0.2e1 + t962 * t655 + (-(t525 * t533 + t527 * t558) * qJD(5) - (-t779 * t439 + t778 * t440 - t738 * t775 - t698 + t719) * t42 + t7 * t775 + t5 * t787 + t42 * t807 + (t5 * t672 + t42 * (t806 - t853) + (t678 + t42 * (t781 - t789)) * qJD(1) + t562) * t526 + (t6 * (-t767 + t773) + (t42 * t672 + t949) * qJD(1) + t909) * t528 + (t768 * t440 - t779 * t495 + t270 - t406 + t776 + (t459 + t507 + t777 - t800 - t955) * t528) * t48 + (-t439 * t768 - t459 * t526 + t495 * t778 - t550 + t671) * t47) * m(7) + (-t62 * (t292 * t495 + t346 * t439 + t550) - t63 * (t290 * t495 - t346 * t440 - t270 + t654) - t863 * t955 - ((t196 * t63 - t200 * t62) * t527 + t538 * t525) * qJD(5) + t22 * t775 + t62 * t671 + t63 * t776 + t8 * t787 + (qJD(1) * t860 + t62 * t209 + t22 * t348 + t8 * t720) * t526 + (t21 * (-t348 + t773) + t63 * (-t209 + t777) + t8 * t200 + t62 * t348 * qJD(1)) * t528 + (t290 * t439 + t292 * t440 - t719 + t807 + (qJD(1) * t720 + t106) * t528 + (t775 * qJD(3) - t108 + t806 + (-t200 + t781) * qJD(1)) * t526) * t57) * m(6) + (-t109 * (qJD(1) * t317 + t653) - t110 * (qJD(1) * t316 + t654) - t84 * t759 - ((t110 * (-t373 - t461) - t84 * t317) * t528 + (t109 * t373 + t84 * (-t316 - t814)) * t526) * qJD(3) + t59 * t814 + t109 * t764 + t110 * t433 - t39 * t401 + t84 * t219 + (t59 * t374 + t109 * t344 + t39 * t784 + t84 * t805 + (t110 * t374 + t783 * t84) * qJD(1)) * t526 + (t58 * (-t374 - t466) + t110 * (-t344 - t404) + t39 * t254 + t84 * t137 + (t109 * t374 + t784 * t84) * qJD(1)) * t528) * m(5) + (-(t168 * t428 + t169 * t425) * qJD(1) - (t210 * (-t425 * t526 - t428 * t528) - t617 * t651) * qJD(3) + 0.2e1 * t210 * (t268 * t528 - t269 * t526 + (-t398 * t528 + t399 * t526) * qJD(1)) - t617 * t445 + (-t829 + t828 + (t169 * t526 + t827) * qJD(1)) * t467) * m(4) + (t983 * qJD(1) + t999 + ((t132 * t810 + t134 * t410 - t136 * t411 - t243 * t957 + t246 * t303 + t249 * t304 + t528 * t910) * t528 + (t131 * t810 + t133 * t410 - t135 * t411 - t245 * t957 + t248 * t303 + t251 * t304 + t553 * t526 + (t552 - t912) * t528) * t526 + (t1039 * t528 - t1040 * t526) * qJD(1)) * t1000) * t890 + (t982 * qJD(1) + t998 + ((-t132 * t811 + t134 * t408 + t136 * t409 + t243 * t414 + t246 * t305 + t249 * t306 + t552 * t528) * t528 + (-t131 * t811 + t133 * t408 + t135 * t409 + t245 * t414 + t248 * t305 + t251 * t306 + t526 * t912 + (t553 - t910) * t528) * t526 + (t1020 * t528 - t1041 * t526) * qJD(1)) * t1000) * t528 / 0.2e1 - (t987 + t990 + t1013) * t742 / 0.2e1 + (t986 + t989 + t1014) * t740 / 0.2e1; -m(5) * (t109 * t414 - t110 * t957 + t415 * t84) - m(6) * (t414 * t62 + t415 * t57 - t63 * t957) - m(7) * (t414 * t47 + t415 * t42 - t48 * t957) + 0.2e1 * ((t109 * t738 - t110 * t736 + t39) * t903 + (t62 * t738 - t63 * t736 + t8) * t902 + (t47 * t738 - t48 * t736 + t5) * t901) * t525 + 0.2e1 * ((qJD(3) * t84 - t109 * t740 - t110 * t742 - t861 + t862) * t903 + (qJD(3) * t57 - t62 * t740 - t63 * t742 - t866 + t867) * t902 + (qJD(3) * t42 - t47 * t740 - t48 * t742 - t883 + t884) * t901) * t527; (t525 * t937 - t527 * t921) * t899 + (t525 * t936 - t527 * t922) * t898 + (t1022 * t377 + t1023 * t378 + t925 * t810) * t897 + ((-qJD(1) * t961 + t936 * qJD(3) - t526 * t996 + t528 * t995) * t527 + (qJD(3) * t922 + t952) * t525) * t896 + (-t1022 * t375 - t1023 * t376 - t811 * t925) * t895 + ((-qJD(1) * t960 + t937 * qJD(3) - t526 * t994 + t528 * t993) * t527 + (qJD(3) * t921 + t951) * t525) * t894 + ((-t1022 * t505 - t1023 * t506) * t527 + t925 * t525) * t893 + ((-qJD(1) * t962 + t935 * qJD(3) - t526 * t992 + t528 * t991) * t527 + (qJD(3) * t923 + t1021) * t525) * t892 + (t858 + t859 + t870 + t871 + t856 + t857 + t868 + t869 + t916) * t525 / 0.2e1 - t998 * t811 / 0.2e1 + t999 * t810 / 0.2e1 + t988 * t684 + (t525 * t935 - t527 * t923) * t655 + ((qJD(3) * t533 - t47 * t854 + t48 * t853 + t6 * t791 - t7 * t789) * t525 + (t558 * qJD(3) + (qJD(1) * t959 - t42 * t853 - t5 * t791 + t562) * t528 + (qJD(1) * t557 + t48 * t800 + t6 * t767 - t909) * t526) * t527 - (t376 * t47 - t378 * t48 + t42 * t820) * qJD(6) - (-t47 * t785 + t48 * t786) * t495 - (t42 * t785 - t48 * t758) * t440 - (-t42 * t786 + t47 * t758) * t439) * m(7) + (-t62 * (-t239 * t495 + t396 * t439) - t63 * (t235 * t495 - t396 * t440) - t57 * (-t235 * t439 + t239 * t440) + (qJD(3) * t538 - t62 * t106 + t63 * t108 + t21 * t196 - t22 * t200) * t525 + (t62 * (-qJD(3) * t200 + t209 * t528) + t63 * (qJD(3) * t196 + t209 * t526) - t8 * t610 + t57 * (-t106 * t526 - t108 * t528 + t196 * t742 - t200 * t740) + (t21 * t526 + t22 * t528 + (-t526 * t62 + t863) * qJD(1)) * t348) * t527) * m(6) + t989 * (t525 * t683 + t526 * t688) + t990 * (t525 * t685 + t528 * t688); (t375 * t7 - t377 * t6 + t5 * t823 + (-t375 * t495 + t440 * t823 + t172) * t48 + (-t377 * t495 - t439 * t823 + t174) * t47 + (t375 * t439 + t377 * t440 + t568) * t42) * m(7);];
tauc  = t1(:);
