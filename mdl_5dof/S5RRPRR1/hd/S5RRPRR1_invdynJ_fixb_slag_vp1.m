% Calculate vector of inverse dynamics joint torques for
% S5RRPRR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% qJDD [5x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [4x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a3,a4,d4,d5]';
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
% tau [5x1]
%   joint torques of inverse dynamics (contains inertial, gravitational coriolis and centrifugal forces)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-07-18 17:22
% Revision: 08c8d617a845f5dd194efdf9aca2774760f7818f (2019-07-16)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau = S5RRPRR1_invdynJ_fixb_slag_vp1(qJ, qJD, qJDD, g, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(4,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRR1_invdynJ_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPRR1_invdynJ_fixb_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RRPRR1_invdynJ_fixb_slag_vp1: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRPRR1_invdynJ_fixb_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [4 1]), ...
  'S5RRPRR1_invdynJ_fixb_slag_vp1: pkin has to be [4x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRPRR1_invdynJ_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RRPRR1_invdynJ_fixb_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RRPRR1_invdynJ_fixb_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From invdyn_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-07-18 17:20:45
% EndTime: 2019-07-18 17:22:24
% DurationCPUTime: 72.43s
% Computational Cost: add. (22994->1117), mult. (34750->1484), div. (0->0), fcn. (31244->8), ass. (0->566)
t1036 = Icges(3,4) + Icges(4,4);
t1034 = Icges(3,1) + Icges(4,1);
t1028 = Icges(3,6) + Icges(4,6);
t1029 = Icges(3,5) + Icges(4,5);
t1033 = Icges(3,2) + Icges(4,2);
t520 = sin(qJ(2));
t1035 = t1036 * t520;
t1032 = Icges(3,3) + Icges(4,3);
t523 = cos(qJ(2));
t1013 = t1034 * t523 - t1035;
t1031 = t1036 * t523;
t524 = cos(qJ(1));
t1030 = t1028 * t524;
t521 = sin(qJ(1));
t807 = t521 * t523;
t812 = t520 * t521;
t1019 = -t1033 * t812 + t1036 * t807 - t1030;
t997 = -t1028 * t520 + t1029 * t523;
t1027 = t1036 * t812;
t1010 = -t1033 * t520 + t1031;
t1026 = t1029 * t524;
t1017 = t1034 * t807 - t1026 - t1027;
t1016 = t1013 * t524 + t1029 * t521;
t1023 = t1033 * t523 + t1035;
t1025 = t1034 * t520 + t1031;
t1024 = t1032 * t524;
t1000 = t1028 * t812 - t1029 * t807 + t1024;
t1009 = t1032 * t521 + t997 * t524;
t1018 = t1010 * t524 + t1028 * t521;
t1022 = t1019 * t520;
t984 = -t1017 * t523 + t1022;
t962 = t1000 * t524 - t521 * t984;
t1020 = t1016 * t807;
t1015 = t1028 * t523 + t1029 * t520;
t1012 = t1023 * qJD(2);
t1011 = t1025 * qJD(2);
t994 = t1023 * t520 - t1025 * t523;
t1008 = -t1009 * t524 + t1020;
t805 = t523 * t524;
t932 = -t1009 * t521 - t1016 * t805;
t1007 = t1000 * t521 - t1017 * t805;
t1006 = t1018 * t520;
t961 = -t1018 * t812 + t1008;
t811 = t520 * t524;
t960 = -t1019 * t811 - t1007;
t959 = -t1018 * t811 - t932;
t958 = t1017 * t520 + t1019 * t523;
t957 = t1016 * t520 + t1018 * t523;
t1004 = -t1012 * t524 + (-t1010 * t521 + t1030) * qJD(1);
t1003 = qJD(1) * t1018 - t1012 * t521;
t1002 = -t1011 * t524 + (-t1013 * t521 + t1026) * qJD(1);
t1001 = -qJD(1) * t1016 + t1011 * t521;
t999 = t1010 * qJD(2);
t998 = t1013 * qJD(2);
t995 = t1015 * qJD(2);
t993 = -t1023 * t523 - t1025 * t520;
t992 = t1016 * t523 - t1006;
t940 = t1015 * t524;
t939 = t1015 * t521;
t956 = -t521 * t994 - t940;
t955 = -t524 * t994 + t939;
t991 = t1009 * qJD(1);
t518 = qJ(2) + qJ(4);
t497 = cos(t518);
t522 = cos(qJ(5));
t806 = t522 * t524;
t519 = sin(qJ(5));
t813 = t519 * t521;
t357 = t497 * t813 + t806;
t803 = t524 * t519;
t808 = t521 * t522;
t358 = t497 * t808 - t803;
t658 = t358 * rSges(6,1) - t357 * rSges(6,2);
t496 = sin(t518);
t820 = t496 * t521;
t195 = -rSges(6,3) * t820 - t658;
t880 = rSges(6,2) * t519;
t657 = rSges(6,1) * t522 - t880;
t290 = -rSges(6,3) * t497 + t496 * t657;
t515 = qJD(2) + qJD(4);
t424 = t515 * t524;
t747 = qJD(5) * t521;
t330 = -t496 * t747 + t424;
t749 = qJD(5) * t497;
t456 = qJD(1) - t749;
t990 = t195 * t456 - t290 * t330;
t185 = Icges(6,5) * t358 - Icges(6,6) * t357 + Icges(6,3) * t820;
t337 = Icges(6,4) * t358;
t188 = -Icges(6,2) * t357 + Icges(6,6) * t820 + t337;
t336 = Icges(6,4) * t357;
t192 = -Icges(6,1) * t358 - Icges(6,5) * t820 + t336;
t972 = t188 * t519 + t192 * t522;
t83 = -t185 * t497 - t496 * t972;
t989 = t524 ^ 2;
t883 = rSges(4,2) * t520;
t988 = qJD(1) * t1015 + t993 * qJD(2) - t999 * t520 + t998 * t523;
t987 = -qJD(2) * t957 + t1002 * t523 - t1004 * t520 + t991;
t986 = qJD(1) * t1000 + qJD(2) * t958 + t1001 * t523 + t1003 * t520;
t985 = -t1018 * t521 + t1019 * t524;
t983 = t521 * t959 - t524 * t960;
t982 = t961 * t521 - t524 * t962;
t981 = t1010 + t1025;
t980 = -t1023 + t1013;
t979 = (t1033 * t807 - t1017 + t1027) * t524 + (-t1023 * t524 + t1016) * t521;
t978 = qJD(1) * t994 + qJD(2) * t997;
t977 = qJD(1) * t984 - t521 * t995 + t991;
t976 = -t995 * t524 + (-t521 * t997 + t1024 - t992) * qJD(1);
t975 = t955 * qJD(1);
t885 = pkin(3) + qJ(3);
t484 = t524 * t885;
t525 = pkin(2) + pkin(1);
t489 = t523 * t525;
t766 = -t521 * t489 + t484;
t974 = -t658 + t766;
t973 = t956 * qJD(1);
t631 = Icges(6,5) * t522 - Icges(6,6) * t519;
t283 = -Icges(6,3) * t497 + t496 * t631;
t856 = Icges(6,4) * t522;
t633 = -Icges(6,2) * t519 + t856;
t285 = -Icges(6,6) * t497 + t496 * t633;
t857 = Icges(6,4) * t519;
t638 = Icges(6,1) * t522 - t857;
t287 = -Icges(6,5) * t497 + t496 * t638;
t110 = t283 * t820 - t285 * t357 + t287 * t358;
t495 = qJD(2) * t521;
t423 = qJD(4) * t521 + t495;
t746 = qJD(5) * t524;
t329 = t496 * t746 + t423;
t75 = t185 * t820 - t188 * t357 - t192 * t358;
t359 = -t497 * t803 + t808;
t360 = t497 * t806 + t813;
t818 = t496 * t524;
t187 = Icges(6,5) * t360 + Icges(6,6) * t359 + Icges(6,3) * t818;
t858 = Icges(6,4) * t360;
t190 = Icges(6,2) * t359 + Icges(6,6) * t818 + t858;
t338 = Icges(6,4) * t359;
t193 = Icges(6,1) * t360 + Icges(6,5) * t818 + t338;
t76 = t187 * t820 - t357 * t190 + t358 * t193;
t28 = t110 * t456 + t329 * t76 - t330 * t75;
t111 = t283 * t818 + t285 * t359 + t287 * t360;
t77 = t185 * t818 + t359 * t188 - t192 * t360;
t78 = t187 * t818 + t359 * t190 + t360 * t193;
t29 = t111 * t456 + t329 * t78 - t330 * t77;
t971 = qJD(2) * t982 + t973;
t970 = qJD(2) * t983 + t975;
t969 = t984 * qJD(2) + t1001 * t520 - t1003 * t523;
t968 = qJD(2) * t992 + t1002 * t520 + t1004 * t523;
t967 = t521 * t978 + t524 * t988;
t966 = t521 * t988 - t524 * t978;
t819 = t496 * t522;
t731 = rSges(6,1) * t819;
t730 = t496 * t880;
t816 = t497 * t521;
t775 = rSges(6,3) * t816 + t521 * t730;
t245 = -t521 * t731 + t775;
t475 = t496 * rSges(6,3);
t291 = t497 * t657 + t475;
t483 = t496 * pkin(4);
t755 = qJD(1) * t521;
t716 = t497 * t755;
t674 = pkin(4) * t716;
t709 = t497 * t747;
t750 = qJD(5) * t496;
t954 = -t195 * t750 + t245 * t456 + t330 * t291 + t424 * t483 + t674 + (-t709 + t755) * t290;
t846 = Icges(5,6) * t524;
t296 = Icges(5,4) * t816 - Icges(5,2) * t820 - t846;
t474 = Icges(5,4) * t497;
t397 = Icges(5,1) * t496 + t474;
t953 = -t397 * t521 - t296;
t634 = -Icges(5,2) * t496 + t474;
t297 = Icges(5,6) * t521 + t524 * t634;
t952 = -t397 * t524 - t297;
t859 = Icges(5,4) * t496;
t398 = Icges(5,1) * t497 - t859;
t299 = Icges(5,5) * t521 + t398 * t524;
t395 = Icges(5,2) * t497 + t859;
t951 = -t395 * t524 + t299;
t950 = -t395 + t398;
t949 = t397 + t634;
t948 = t521 ^ 2 + t989;
t947 = -t520 * t979 + t523 * t985;
t196 = t360 * rSges(6,1) + t359 * rSges(6,2) + rSges(6,3) * t818;
t815 = t497 * t524;
t774 = rSges(6,3) * t815 + t524 * t730;
t246 = -t524 * t731 + t774;
t708 = t497 * t746;
t946 = t196 * t750 + t456 * t246 - t290 * t708 - t291 * t329 - t423 * t483;
t945 = (-t520 * t981 + t523 * t980) * qJD(1);
t944 = t977 * t989 + (t987 * t521 + (-t976 + t986) * t524) * t521;
t943 = t986 * t989 + (t976 * t521 + (-t977 + t987) * t524) * t521;
t942 = t997 * qJD(1);
t886 = pkin(1) - t525;
t706 = t521 * t886;
t368 = t520 * t706;
t420 = t886 * t520;
t941 = qJD(1) * t368 - t420 * t755;
t938 = t28 * t521 + t29 * t524;
t726 = t424 * t497;
t678 = pkin(4) * t726;
t476 = t497 * rSges(5,1);
t881 = rSges(5,2) * t496;
t936 = t476 - t881;
t511 = t523 * rSges(4,1);
t890 = pkin(1) * t523;
t663 = -t883 + t890;
t935 = t511 + t663;
t934 = t1000 + t1006;
t718 = t496 * t755;
t933 = t718 - t726;
t604 = t456 * t524;
t673 = qJD(1) * t497 - qJD(5);
t727 = t496 * t424;
t928 = t521 * t673 + t727;
t165 = t519 * t928 + t522 * t604;
t166 = t519 * t604 - t522 * t928;
t725 = t166 * rSges(6,1) + t165 * rSges(6,2) + rSges(6,3) * t726;
t102 = -rSges(6,3) * t718 + t725;
t656 = -rSges(6,1) * t519 - rSges(6,2) * t522;
t817 = t497 * t515;
t150 = t657 * t817 + (rSges(6,3) * t515 + qJD(5) * t656) * t496;
t742 = qJD(1) * qJD(2);
t416 = qJDD(2) * t521 + t524 * t742;
t740 = qJD(1) * qJD(4);
t306 = qJDD(4) * t521 + t524 * t740 + t416;
t738 = qJDD(5) * t496;
t154 = -qJD(5) * t933 + t524 * t738 + t306;
t748 = qJD(5) * t515;
t331 = -qJDD(5) * t497 + t496 * t748 + qJDD(1);
t704 = t523 * t886;
t399 = qJD(2) * t704;
t527 = qJD(1) ^ 2;
t369 = t886 * t811;
t754 = qJD(1) * t524;
t485 = qJ(3) * t754;
t182 = -t485 + qJD(2) * t369 + (t523 * t706 + t484) * qJD(1);
t752 = qJD(2) * t524;
t574 = -t520 * t752 - t523 * t755;
t494 = qJD(3) * t521;
t762 = t485 + t494;
t269 = pkin(1) * t574 + t762;
t809 = t521 * qJ(3);
t598 = pkin(1) * t805 + t809;
t741 = qJD(1) * qJD(3);
t804 = t523 * qJD(2) ^ 2;
t554 = qJD(1) * t269 + qJDD(1) * t598 + t521 * t741 + (-t416 * t520 - t521 * t804) * pkin(1);
t668 = t524 * t704;
t578 = t521 * pkin(3) - t668;
t536 = qJD(1) * t182 + qJDD(1) * t578 + t416 * t420 + t554;
t739 = qJDD(3) * t524;
t22 = t399 * t495 - t739 + t456 * t102 - t329 * t150 - t154 * t290 + t331 * t196 + ((t515 * t754 + t306) * t497 + (qJDD(1) * t524 - t423 * t515 - t521 * t527) * t496) * pkin(4) + t536;
t717 = t496 * t754;
t814 = t515 * t521;
t576 = t497 * t814 + t717;
t167 = t456 * t808 + (t496 * t814 - t524 * t673) * t519;
t168 = t673 * t806 + (t456 * t519 - t515 * t819) * t521;
t659 = rSges(6,1) * t168 + rSges(6,2) * t167;
t103 = rSges(6,3) * t576 + t659;
t737 = -qJDD(2) - qJDD(4);
t481 = t521 * t742;
t763 = t521 * t740 + t481;
t155 = (t497 * t748 + t738) * t521 + (qJD(1) * t750 + t737) * t524 + t763;
t307 = t524 * t737 + t763;
t417 = -qJDD(2) * t524 + t481;
t891 = pkin(1) * t520;
t721 = qJDD(3) * t521 + t417 * t891 + t524 * t741;
t734 = pkin(1) * t804;
t753 = qJD(2) * t399;
t551 = -t417 * t420 + (-t734 + t753) * t524 + t721;
t498 = t524 * qJ(3);
t735 = pkin(1) * t807;
t415 = -t498 + t735;
t274 = t415 + t766;
t797 = t274 - t415;
t714 = t520 * t495;
t705 = t521 * t885;
t810 = t520 * t525;
t713 = qJD(2) * t810;
t768 = -qJD(1) * t705 + t521 * t713;
t183 = pkin(1) * t714 + (-t668 - t809) * qJD(1) - t768;
t751 = qJD(3) * t524;
t270 = qJ(3) * t755 - t751 + (t523 * t754 - t714) * pkin(1);
t802 = -t183 - t270;
t23 = -t456 * t103 - t330 * t150 + t155 * t290 + t331 * t195 + t797 * qJDD(1) + t802 * qJD(1) + ((-t515 * t755 - t307) * t497 + (-qJDD(1) * t521 - t424 * t515 - t524 * t527) * t496) * pkin(4) + t551;
t930 = -t22 * t524 + t23 * t521;
t882 = rSges(4,2) * t523;
t893 = rSges(4,1) + pkin(1);
t929 = t520 * t893 + t882;
t394 = Icges(5,5) * t497 - Icges(5,6) * t496;
t393 = Icges(5,5) * t496 + Icges(5,6) * t497;
t828 = t393 * t524;
t836 = t297 * t496;
t842 = Icges(5,3) * t524;
t927 = -t515 * t828 + (-t299 * t497 - t394 * t521 + t836 + t842) * qJD(1);
t450 = Icges(5,4) * t820;
t853 = Icges(5,5) * t524;
t298 = Icges(5,1) * t816 - t450 - t853;
t617 = t296 * t496 - t298 * t497;
t295 = Icges(5,3) * t521 + t394 * t524;
t761 = qJD(1) * t295;
t829 = t393 * t521;
t926 = qJD(1) * t617 - t515 * t829 + t761;
t609 = t395 * t496 - t397 * t497;
t921 = qJD(1) * t609 + t394 * t515;
t918 = g(1) * t521 - g(2) * t524;
t586 = t631 * t497;
t618 = -t285 * t519 + t287 * t522;
t623 = -t190 * t519 + t193 * t522;
t915 = t329 * (-t283 * t524 - t623) - t330 * (-t283 * t521 + t972) + t456 * (Icges(6,3) * t496 + t586 - t618);
t632 = -Icges(6,2) * t522 - t857;
t914 = t329 * (-Icges(6,2) * t360 + t193 + t338) - t330 * (-Icges(6,2) * t358 - t192 - t336) + t456 * (t632 * t496 + t287);
t913 = qJD(1) * t949 + t423 * t951 - t424 * (-Icges(5,2) * t816 + t298 - t450);
t912 = t154 / 0.2e1;
t911 = t155 / 0.2e1;
t910 = t306 / 0.2e1;
t909 = t307 / 0.2e1;
t908 = -t329 / 0.2e1;
t907 = t329 / 0.2e1;
t906 = -t330 / 0.2e1;
t905 = t330 / 0.2e1;
t904 = t331 / 0.2e1;
t903 = t416 / 0.2e1;
t902 = t417 / 0.2e1;
t901 = -t423 / 0.2e1;
t900 = t423 / 0.2e1;
t899 = -t424 / 0.2e1;
t898 = t424 / 0.2e1;
t897 = -t456 / 0.2e1;
t896 = t456 / 0.2e1;
t895 = t521 / 0.2e1;
t894 = -t524 / 0.2e1;
t892 = -rSges(6,3) - pkin(4);
t889 = g(2) * t521;
t888 = -qJD(1) / 0.2e1;
t887 = qJD(1) / 0.2e1;
t101 = Icges(6,1) * t168 + Icges(6,4) * t167 + Icges(6,5) * t576;
t97 = Icges(6,5) * t168 + Icges(6,6) * t167 + Icges(6,3) * t576;
t99 = Icges(6,4) * t168 + Icges(6,2) * t167 + Icges(6,6) * t576;
t20 = (-t515 * t972 - t97) * t497 + (t101 * t522 + t185 * t515 - t519 * t99 + (-t188 * t522 + t192 * t519) * qJD(5)) * t496;
t879 = t20 * t330;
t100 = Icges(6,1) * t166 + Icges(6,4) * t165 - Icges(6,5) * t933;
t96 = Icges(6,5) * t166 + Icges(6,6) * t165 - Icges(6,3) * t933;
t98 = Icges(6,4) * t166 + Icges(6,2) * t165 - Icges(6,6) * t933;
t21 = (t515 * t623 - t96) * t497 + (t100 * t522 + t187 * t515 - t519 * t98 + (-t190 * t522 - t193 * t519) * qJD(5)) * t496;
t878 = t21 * t329;
t577 = -t716 - t727;
t773 = rSges(5,2) * t718 + rSges(5,3) * t754;
t178 = rSges(5,1) * t577 - rSges(5,2) * t726 + t773;
t316 = t936 * t515;
t400 = rSges(5,1) * t496 + rSges(5,2) * t497;
t43 = qJD(1) * t178 - t306 * t400 - t423 * t316 + (rSges(5,3) * qJDD(1) + t753) * t521 + (qJDD(1) * t936 - qJDD(3)) * t524 + t536;
t871 = t43 * t521;
t510 = t521 * rSges(4,3);
t425 = pkin(4) * t717;
t268 = qJD(1) * t578;
t696 = -t420 + t891;
t644 = qJD(2) * t696;
t392 = qJD(1) * t598;
t675 = -t392 + t751;
t552 = t521 * t644 - t268 + t675;
t71 = -t423 * t497 * pkin(4) - t456 * t196 + t290 * t329 - t425 + t552;
t870 = t521 * t71;
t869 = t524 * rSges(3,3);
t868 = t83 * t155;
t84 = -t187 * t497 + t496 * t623;
t867 = t84 * t154;
t866 = qJDD(1) / 0.2e1;
t115 = -t283 * t497 + t496 * t618;
t630 = -Icges(6,5) * t519 - Icges(6,6) * t522;
t145 = t515 * t586 + (Icges(6,3) * t515 + qJD(5) * t630) * t496;
t587 = t633 * t497;
t146 = t515 * t587 + (Icges(6,6) * t515 + qJD(5) * t632) * t496;
t588 = t638 * t497;
t637 = -Icges(6,1) * t519 - t856;
t147 = t515 * t588 + (Icges(6,5) * t515 + qJD(5) * t637) * t496;
t41 = (t515 * t618 - t145) * t497 + (-t146 * t519 + t147 * t522 + t283 * t515 + (-t285 * t522 - t287 * t519) * qJD(5)) * t496;
t865 = t115 * t331 + t41 * t456;
t839 = t150 * t524;
t294 = Icges(5,5) * t816 - Icges(5,6) * t820 - t842;
t837 = t294 * t524;
t827 = t400 * t424;
t826 = t424 * t524;
t821 = t496 * t515;
t799 = -t521 * t294 - t298 * t815;
t798 = t521 * t295 + t299 * t815;
t301 = rSges(5,1) * t816 - rSges(5,2) * t820 - t524 * rSges(5,3);
t561 = t521 * rSges(5,3) + t524 * t936;
t796 = t521 * t301 + t524 * t561;
t788 = t368 * t495 + t369 * t752;
t765 = rSges(4,2) * t812 + t524 * rSges(4,3);
t332 = rSges(4,1) * t807 - t765;
t783 = -t332 - t415;
t373 = t524 * t598;
t781 = qJD(2) * t373 + t415 * t495;
t778 = t521 * t415 + t373;
t777 = qJD(1) * t415 - t494;
t767 = rSges(4,3) * t754 + t755 * t883;
t764 = rSges(4,1) * t805 + t510;
t444 = rSges(3,1) * t523 - rSges(3,2) * t520;
t335 = rSges(3,3) * t521 + t444 * t524;
t758 = qJD(1) * t335;
t141 = -t521 * t609 - t828;
t745 = t141 * qJD(1);
t736 = pkin(1) * t811;
t733 = pkin(4) * t820;
t458 = pkin(4) * t816;
t460 = pkin(4) * t815;
t728 = qJD(2) * t890;
t724 = t269 * t752 + t270 * t495 + t416 * t415;
t723 = t524 * t269 + t521 * t270 + t415 * t754;
t722 = -t301 + t797;
t720 = t893 * t523;
t719 = t892 * t496;
t712 = t523 * t752;
t703 = t755 / 0.2e1;
t702 = t754 / 0.2e1;
t701 = -t495 / 0.2e1;
t700 = t495 / 0.2e1;
t699 = -t752 / 0.2e1;
t698 = t752 / 0.2e1;
t440 = rSges(4,1) * t520 + t882;
t695 = t440 + t891;
t693 = t520 * t948;
t692 = (-t521 * t634 + t846) * qJD(1) + t951 * t515;
t691 = qJD(1) * t297 + t298 * t515 - t395 * t814;
t690 = (-t398 * t521 + t853) * qJD(1) + t952 * t515;
t689 = qJD(1) * t299 + t515 * t953;
t249 = t299 * t816;
t688 = t295 * t524 - t249;
t354 = t400 * t521;
t355 = t400 * t524;
t687 = -t423 * t354 - t355 * t424;
t684 = -t294 + t836;
t683 = t949 * t515;
t682 = t950 * t515;
t681 = -qJD(1) * t355 - t423 * t936;
t348 = t423 * t458;
t677 = qJD(1) * t354 - t424 * t936;
t262 = t524 * t578;
t671 = qJD(2) * t262 - t274 * t495 + t781;
t670 = -t521 * t274 + t262 + t778;
t669 = -t195 * t521 + t524 * t196 + t483 * t948;
t667 = -pkin(4) * t821 - t150;
t666 = -t290 - t696;
t665 = -t400 - t696;
t664 = t399 - t728;
t662 = t524 * t695;
t445 = rSges(2,1) * t524 - rSges(2,2) * t521;
t442 = rSges(2,1) * t521 + rSges(2,2) * t524;
t441 = rSges(3,1) * t520 + rSges(3,2) * t523;
t661 = t511 - t883;
t571 = -t696 * t752 + t494;
t72 = t678 + (-t733 + t797) * qJD(1) + t571 + t990;
t651 = -t524 * t72 + t870;
t650 = t521 * t76 - t524 * t75;
t649 = t521 * t75 + t524 * t76;
t648 = t521 * t78 - t524 * t77;
t647 = t521 * t77 + t524 * t78;
t646 = t521 * t84 - t524 * t83;
t645 = t521 * t83 + t524 * t84;
t643 = qJD(2) * t695;
t642 = -t489 - t476;
t553 = qJD(1) * t561;
t108 = t400 * t423 + t552 - t553;
t109 = qJD(1) * t722 + t571 - t827;
t629 = t108 * t521 - t109 * t524;
t622 = -t195 * t524 - t196 * t521;
t221 = rSges(4,1) * t574 - rSges(4,2) * t712 + t767;
t386 = t440 * t521;
t223 = -qJD(2) * t386 + (t524 * t661 + t510) * qJD(1);
t621 = t524 * t221 + t521 * t223;
t589 = qJD(2) * t441;
t222 = -t524 * t589 + (-t444 * t521 + t869) * qJD(1);
t224 = -t521 * t589 + t758;
t620 = t222 * t524 + t224 * t521;
t236 = t441 * t495 - t758;
t333 = rSges(3,1) * t807 - rSges(3,2) * t812 - t869;
t237 = -qJD(1) * t333 - t441 * t752;
t619 = t236 * t521 - t237 * t524;
t143 = t296 * t497 + t298 * t496;
t334 = -rSges(4,2) * t811 + t764;
t611 = t332 * t521 + t334 * t524;
t610 = t333 * t521 + t335 * t524;
t603 = (t369 - t736) * qJD(1);
t602 = -t316 + t664;
t601 = -t195 * t708 + t329 * t245 + t246 * t330 + t348;
t600 = t524 * t665;
t599 = t666 * t524;
t597 = -t731 - t810;
t590 = t291 + t483;
t585 = t617 * t521;
t572 = -t642 - t881;
t570 = t524 * t929;
t569 = -t185 * t330 + t187 * t329 + t283 * t456;
t568 = (-Icges(6,5) * t357 - Icges(6,6) * t358) * t330 - (Icges(6,5) * t359 - Icges(6,6) * t360) * t329 - t630 * t496 * t456;
t567 = qJD(1) * t394 - t423 * t828 + t424 * t829;
t564 = pkin(4) * t817 * t948 + t524 * t102 + t521 * t103 - t195 * t754 - t196 * t755;
t563 = t664 + t667;
t562 = t496 * t568;
t560 = -qJD(1) * t274 + t524 * t644 + t777;
t550 = (Icges(6,1) * t359 - t190 - t858) * t329 - (-Icges(6,1) * t357 - t188 - t337) * t330 + (t637 * t496 - t285) * t456;
t548 = qJD(1) * t950 + t423 * t952 - t424 * t953;
t545 = qJD(1) * t294 - t496 * t691 + t497 * t689;
t544 = -t496 * t692 + t497 * t690 + t761;
t543 = qJD(1) * t393 - t496 * t683 + t497 * t682;
t179 = -t354 * t515 + t553;
t535 = t524 * t178 + t301 * t754 + (t179 - t553) * t521;
t532 = t183 * t495 + t182 * t752 - t416 * t274 + t724 + (-t578 - t598) * t417;
t116 = -t585 - t837;
t117 = -t297 * t820 - t688;
t118 = -t296 * t818 - t799;
t119 = -t297 * t818 + t798;
t142 = -t524 * t609 + t829;
t144 = t297 * t497 + t299 * t496;
t16 = t101 * t360 + t165 * t188 - t166 * t192 - t185 * t933 + t359 * t99 + t818 * t97;
t17 = t100 * t360 + t165 * t190 + t166 * t193 - t187 * t933 + t359 * t98 + t818 * t96;
t18 = t101 * t358 + t167 * t188 - t168 * t192 + t185 * t576 - t357 * t99 + t820 * t97;
t19 = t100 * t358 + t167 * t190 + t168 * t193 + t187 * t576 - t357 * t98 + t820 * t96;
t241 = t285 * t521;
t242 = t285 * t524;
t243 = t287 * t521;
t244 = t287 * t524;
t286 = Icges(6,6) * t496 + t587;
t288 = Icges(6,5) * t496 + t588;
t34 = t145 * t818 + t146 * t359 + t147 * t360 + t165 * t285 + t166 * t287 - t283 * t933;
t3 = t111 * t331 + t154 * t78 + t155 * t77 - t16 * t330 + t17 * t329 + t34 * t456;
t33 = t115 * t456 + t329 * t84 - t330 * t83;
t35 = t145 * t820 - t146 * t357 + t147 * t358 + t167 * t285 + t168 * t287 + t283 * t576;
t4 = t110 * t331 + t154 * t76 + t155 * t75 - t18 * t330 + t19 * t329 + t35 * t456;
t45 = t521 * t926 + t545 * t524;
t46 = t521 * t927 + t544 * t524;
t47 = t545 * t521 - t524 * t926;
t48 = t544 * t521 - t524 * t927;
t528 = -t496 * t913 + t548 * t497;
t529 = t915 * t496;
t61 = -t116 * t424 + t117 * t423 + t745;
t140 = t142 * qJD(1);
t62 = -t118 * t424 + t119 * t423 + t140;
t73 = t521 * t921 + t543 * t524;
t74 = t543 * t521 - t524 * t921;
t81 = t496 * t689 + t497 * t691;
t82 = t496 * t690 + t497 * t692;
t531 = (((t242 * t519 - t244 * t522 + t187) * t329 - (t241 * t519 - t243 * t522 + t185) * t330 + (-t286 * t519 + t288 * t522 + t283) * t456 + t115 * qJD(5)) * t496 + (qJD(5) * t645 - t915) * t497) * t897 + (t548 * t496 + t497 * t913) * t888 + t646 * t904 + ((t242 * t357 - t244 * t358) * t329 - (t241 * t357 - t243 * t358) * t330 + (-t286 * t357 + t288 * t358) * t456 + (t110 * t496 + t76 * t815) * qJD(5) + ((qJD(5) * t75 + t569) * t497 + t529) * t521) * t905 + (qJD(1) * t649 - t18 * t524 + t19 * t521) * t906 + (qJD(1) * t647 - t16 * t524 + t17 * t521) * t907 + ((-t242 * t359 - t244 * t360) * t329 - (-t241 * t359 - t243 * t360) * t330 + (t286 * t359 + t288 * t360) * t456 + (t111 * t496 + t77 * t816) * qJD(5) + ((qJD(5) * t78 + t569) * t497 + t529) * t524) * t908 + (-t116 * t524 + t117 * t521) * t909 + (-t118 * t524 + t119 * t521) * t910 + t650 * t911 + t648 * t912 + (qJD(1) * t645 - t20 * t524 + t21 * t521) * t896 + (t521 * t528 - t524 * t567) * t898 + (-t47 * t524 + t48 * t521 + (t116 * t521 + t117 * t524) * qJD(1)) * t899 + (-t45 * t524 + t46 * t521 + (t118 * t521 + t119 * t524) * qJD(1)) * t900 + (t521 * t567 + t524 * t528) * t901 + (t521 * t82 - t524 * t81 + (t143 * t521 + t144 * t524) * qJD(1)) * t887 + (-t143 * t524 + t144 * t521) * t866 - t33 * t750 / 0.2e1 + (qJD(1) * t73 + qJDD(1) * t142 + t118 * t307 + t119 * t306 + t423 * t46 - t424 * t45 + t3) * t895 + (qJD(1) * t74 + qJDD(1) * t141 + t116 * t307 + t117 * t306 + t423 * t48 - t424 * t47 + t4) * t894 + (t61 + t28) * t703 + (t62 + t29) * t702 - t938 * t749 / 0.2e1;
t530 = t524 * t182 - t274 * t754 + t723 + (t183 - t268 - t392) * t521;
t421 = t489 - t890;
t410 = t444 * qJD(2);
t409 = t661 * qJD(2);
t389 = t441 * t524;
t388 = t440 * t524;
t387 = t441 * t521;
t353 = t656 * t496;
t233 = rSges(6,1) * t359 - rSges(6,2) * t360;
t232 = -rSges(6,1) * t357 - rSges(6,2) * t358;
t184 = t610 * qJD(2);
t139 = qJD(1) * t783 - qJD(2) * t662 + t494;
t138 = -qJD(1) * t334 + t521 * t643 + t675;
t120 = qJD(2) * t611 + t781;
t114 = -qJD(1) * t224 - qJDD(1) * t333 - t410 * t752 + t417 * t441;
t113 = qJD(1) * t222 + qJDD(1) * t335 - t410 * t495 - t416 * t441;
t85 = t423 * t301 + t424 * t561 + t671;
t80 = t417 * t440 + (-qJD(2) * t409 - t734) * t524 + t783 * qJDD(1) + (-t223 - t270) * qJD(1) + t721;
t79 = qJD(1) * t221 + qJDD(1) * t334 - t409 * t495 - t416 * t440 + t554 - t739;
t60 = -t195 * t329 + t196 * t330 + (t423 * t521 + t826) * t483 + t671;
t44 = t307 * t400 - t316 * t424 + t722 * qJDD(1) + (-t179 + t802) * qJD(1) + t551;
t30 = t424 * t178 + t423 * t179 + t306 * t301 - t307 * t561 + t532;
t13 = t330 * t102 + t329 * t103 - t154 * t195 - t155 * t196 + t306 * t733 + t348 * t515 + t423 * t425 + t424 * t678 + t532 + (-t307 * t818 - t424 * t718) * pkin(4);
t1 = [(t967 + t968) * t700 + (t966 - t969 + t970) * t699 + (t23 * t974 + t72 * (-t425 - t659 + t751 + t768) - t71 * (-t524 * t713 + t494 + t678 + t725) + (t72 * t817 * t892 + t23 * t719) * t521 + ((t72 * (-t489 - t475) - t71 * t885) * t524 - (t719 - t489) * t870) * qJD(1) - g(1) * (t521 * t719 + t974) - (pkin(4) * t933 + t560 + t72 - t990) * t71 + (t22 - g(2)) * (t705 + (t489 + t483) * t524 + t196)) * m(6) + (-t745 + (t119 - t585 - t798) * t424 + (t521 * t684 + t118 - t249) * t423 + ((t295 + t617) * t423 + t684 * t424) * t524 + t61) * t901 + (t109 * t768 - t108 * (t494 + t773) + (t109 * t400 * t515 + (-t109 * rSges(5,3) - t108 * t642) * qJD(1)) * t521 + (t109 * qJD(3) - t108 * (-rSges(5,1) * t821 - rSges(5,2) * t817 - t713) + (-t108 * t885 - t109 * t572) * qJD(1)) * t524 - (qJD(1) * t301 + t109 + t560 + t827) * t108 + (t43 - g(2)) * ((rSges(5,3) + t885) * t521 + t572 * t524) + (t44 - g(1)) * (-t301 + t766)) * m(5) + (t139 * t751 - t138 * (t762 + t767) + (t139 * t521 * t929 + t138 * t570) * qJD(2) + (t139 * (-t720 + t883) * t524 + (t139 * (-rSges(4,3) - qJ(3)) + t138 * t720) * t521) * qJD(1) - (qJD(1) * t332 + t524 * t643 + t139 + t777) * t138 + (t79 - g(2)) * (t524 * t663 + t764 + t809) + (t80 - g(1)) * (-t521 * t720 + t498 + t765)) * m(4) + t867 / 0.2e1 + t868 / 0.2e1 + (t955 + t957) * t903 + (t956 + t958) * t902 - m(2) * (-g(1) * t442 + g(2) * t445) + (t141 + t143) * t909 + t878 / 0.2e1 - t879 / 0.2e1 + t29 * t905 + t865 + (t81 + t74 + t62) * t899 + ((((t1009 + t1022) * t524 + t961 + t1007 - t1020) * t524 - t932 * t521) * qJD(2) + t975) * t698 + t34 * t907 + t110 * t911 + t111 * t912 + (t140 + (t117 + (t296 * t524 + t297 * t521) * t496 + t688 + t799) * t424 + (-t298 * t816 + t837 + t116 + (t296 * t521 - t297 * t524) * t496 + t798) * t423) * t898 + (t142 + t144) * t910 + (t82 + t73) * t900 + (t35 + t29) * t906 + (-t994 * qJD(2) + t496 * t682 + t497 * t683 + t998 * t520 + t523 * t999) * qJD(1) + (-t222 * t236 - t224 * t237 + (-g(2) + t113) * t335 + (g(1) - t114) * t333) * m(3) + (((t524 * t934 + t932 + t959) * t524 + (t521 * t934 - t1008 + t960) * t521) * qJD(2) + t971 - t973) * t701 + (m(2) * (t442 ^ 2 + t445 ^ 2) + t395 * t497 + t397 * t496 + Icges(2,3) - t993) * qJDD(1); t531 + t983 * t903 + t982 * t902 + (qJD(1) * t967 + qJD(2) * t943 + qJDD(1) * t955 + t416 * t959 + t417 * t960) * t895 + (qJD(1) * t966 + qJD(2) * t944 + qJDD(1) * t956 + t416 * t961 + t417 * t962) * t894 + ((t520 * t985 + t523 * t979) * qJD(2) + (t520 * t980 + t523 * t981) * qJD(1)) * t888 + (t969 * t524 + t968 * t521 + (t521 * t958 + t524 * t957) * qJD(1)) * t887 + (t521 * t957 - t524 * t958) * t866 + t971 * t703 + t970 * t702 + ((-t495 * t940 + t942) * t521 + ((t521 * t939 + t947) * qJD(2) + t945) * t524) * t701 + ((t521 * t960 + t524 * t959) * qJD(1) + t943) * t700 + ((t521 * t962 + t524 * t961) * qJD(1) + t944) * t699 + ((-t752 * t939 - t942) * t524 + ((t524 * t940 + t947) * qJD(2) + t945) * t521) * t698 + (-g(1) * (t524 * t597 + t460 + t774) - g(2) * (t521 * t597 + t458 + t775) - g(3) * (t489 + t590) + t23 * (t460 + t599) + t22 * (t521 * t666 + t458) + t13 * (t669 + t670) + t60 * (t530 + t564) - t60 * (-t196 * t709 + t424 * t460 + t601 + t788) - (t651 * t421 + (t523 * t651 - t60 * t693) * pkin(1)) * qJD(2) + (t524 * t563 - t674 + t941 + t954) * t72 + (-qJD(1) * t599 - t521 * t563 + t603 + t946) * t71) * m(6) + (-g(3) * (t936 + t489) - (g(1) * t524 + t889) * (-t400 - t810) + t44 * t600 + t665 * t871 + t30 * (t670 + t796) + t85 * (t530 + t535) - t85 * (t687 + t788) - (t629 * t421 + (t523 * t629 - t693 * t85) * pkin(1)) * qJD(2) + (t400 * t755 + t524 * t602 - t677 + t941) * t109 + (-qJD(1) * t600 - t521 * t602 + t603 + t681) * t108) * m(5) + (-(t139 * t386 - t138 * (-t388 - t736)) * qJD(1) - (-t120 * pkin(1) * t693 + (-t120 * t388 - t139 * t935) * t524 + (-t120 * t386 + t138 * t935) * t521) * qJD(2) - t80 * t662 + t139 * (-pkin(1) * t712 - t409 * t524) + (t416 * t332 + (-t334 - t598) * t417 + t621 * qJD(2) + t724) * (t611 + t778) + t120 * (t621 + t723) + (t138 * t695 + t120 * (t332 - t735)) * t754 + (-t79 * t695 - t138 * (-t409 - t728) + (t139 * t440 + (-t334 - t809) * t120) * qJD(1)) * t521 + g(1) * t570 - g(3) * t935 + t929 * t889) * m(4) + (-(t236 * t389 + t237 * t387) * qJD(1) - (t184 * (-t387 * t521 - t389 * t524) + t619 * t444) * qJD(2) + g(1) * t389 + g(2) * t387 - g(3) * t444 + (qJD(2) * t620 + t333 * t416 - t335 * t417) * t610 + t184 * ((t333 * t524 - t335 * t521) * qJD(1) + t620) + t619 * t410 + (-t113 * t521 - t114 * t524 + (t236 * t524 + t237 * t521) * qJD(1)) * t441) * m(3); (-m(4) - m(5)) * t918 + 0.2e1 * (t43 * t894 + t44 * t895) * m(5) + 0.2e1 * (t79 * t894 + t80 * t895) * m(4) + (-t918 + t930) * m(6); t531 + (-g(1) * (t246 + t460) - g(2) * (t245 + t458) - g(3) * t590 + t23 * (-t290 * t524 + t460) + t22 * (-t290 * t521 + t458) + t13 * t669 + (pkin(4) * t577 - t839 + t954) * t72 + (t290 * t754 - t521 * t667 + t946) * t71 + (-(pkin(4) * t826 - t196 * t747) * t497 - t601 + t564) * t60) * m(6) + (g(1) * t355 + g(2) * t354 - g(3) * t936 + t108 * t681 - t109 * t677 + t30 * t796 + t629 * t316 + (-t871 - t44 * t524 + (t108 * t524 + t109 * t521) * qJD(1)) * t400 + (-t687 + t535) * t85) * m(5); -t29 * t718 / 0.2e1 + t3 * t818 / 0.2e1 + (-t111 * t497 + t496 * t647) * t912 + ((t515 * t647 - t34) * t497 + (-qJD(1) * t648 + t111 * t515 + t16 * t521 + t17 * t524) * t496) * t907 + t496 * t28 * t702 + t4 * t820 / 0.2e1 + (-t110 * t497 + t496 * t649) * t911 + ((t515 * t649 - t35) * t497 + (-qJD(1) * t650 + t110 * t515 + t18 * t521 + t19 * t524) * t496) * t906 + t33 * t821 / 0.2e1 - t497 * (t865 + t867 + t868 + t878 - t879) / 0.2e1 + (-t115 * t497 + t496 * t645) * t904 + ((t515 * t645 - t41) * t497 + (-qJD(1) * t646 + t115 * t515 + t20 * t521 + t21 * t524) * t496) * t896 + (t359 * t914 + t550 * t360 - t524 * t562) * t908 + (-t357 * t914 + t358 * t550 - t521 * t562) * t905 + (t568 * t497 + (-t519 * t914 + t522 * t550) * t496) * t897 + t938 * t817 / 0.2e1 + ((t71 * t102 + t72 * t103 - t23 * t195 - t22 * t196 + (t60 * t622 + (t521 * t72 + t524 * t71) * t290) * t515) * t497 + (t72 * (t150 * t521 + t195 * t515) - t71 * (t196 * t515 - t839) + t13 * t622 + t60 * (-t102 * t521 + t103 * t524 + t195 * t755 - t196 * t754) + (-qJD(1) * t651 + t930) * t290) * t496 - t72 * (-t232 * t456 - t330 * t353) + t71 * (t233 * t456 - t329 * t353) - t60 * (t232 * t329 + t233 * t330) - g(1) * t233 - g(2) * t232 - g(3) * t353) * m(6);];
tau  = t1;