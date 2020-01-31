% Calculate vector of inverse dynamics joint torques for
% S5RRPRR8
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
% tau [5x1]
%   joint torques of inverse dynamics (contains inertial, gravitational coriolis and centrifugal forces)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 20:19
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau = S5RRPRR8_invdynJ_fixb_slag_vp1(qJ, qJD, qJDD, g, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRR8_invdynJ_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPRR8_invdynJ_fixb_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RRPRR8_invdynJ_fixb_slag_vp1: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRPRR8_invdynJ_fixb_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRPRR8_invdynJ_fixb_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRPRR8_invdynJ_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RRPRR8_invdynJ_fixb_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RRPRR8_invdynJ_fixb_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From invdyn_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 20:16:54
% EndTime: 2019-12-31 20:18:11
% DurationCPUTime: 66.27s
% Computational Cost: add. (34261->1215), mult. (36124->1572), div. (0->0), fcn. (32294->10), ass. (0->617)
t1055 = Icges(3,3) + Icges(4,3);
t558 = qJ(2) + pkin(9);
t526 = sin(t558);
t527 = cos(t558);
t563 = sin(qJ(2));
t566 = cos(qJ(2));
t1045 = Icges(3,5) * t566 + Icges(4,5) * t527 - Icges(3,6) * t563 - Icges(4,6) * t526;
t567 = cos(qJ(1));
t1054 = t1055 * t567;
t564 = sin(qJ(1));
t847 = t564 * t566;
t850 = t563 * t564;
t854 = t527 * t564;
t856 = t526 * t564;
t1046 = -Icges(3,5) * t847 - Icges(4,5) * t854 + Icges(3,6) * t850 + Icges(4,6) * t856 + t1054;
t1050 = t1045 * t567 + t1055 * t564;
t891 = Icges(4,6) * t567;
t329 = Icges(4,4) * t854 - Icges(4,2) * t856 - t891;
t892 = Icges(3,6) * t567;
t377 = Icges(3,4) * t847 - Icges(3,2) * t850 - t892;
t1053 = t329 * t526 + t377 * t563;
t904 = Icges(4,4) * t526;
t429 = Icges(4,1) * t527 - t904;
t332 = Icges(4,5) * t564 + t429 * t567;
t905 = Icges(3,4) * t563;
t477 = Icges(3,1) * t566 - t905;
t380 = Icges(3,5) * t564 + t477 * t567;
t1052 = -t332 * t854 - t380 * t847;
t1051 = Icges(3,5) * t563 + Icges(4,5) * t526 + Icges(3,6) * t566 + Icges(4,6) * t527;
t484 = Icges(4,4) * t856;
t898 = Icges(4,5) * t567;
t331 = Icges(4,1) * t854 - t484 - t898;
t504 = Icges(3,4) * t850;
t899 = Icges(3,5) * t567;
t379 = Icges(3,1) * t847 - t504 - t899;
t1040 = -t331 * t527 - t379 * t566 + t1053;
t426 = Icges(4,2) * t527 + t904;
t508 = Icges(4,4) * t527;
t428 = Icges(4,1) * t526 + t508;
t474 = Icges(3,2) * t566 + t905;
t545 = Icges(3,4) * t566;
t476 = Icges(3,1) * t563 + t545;
t1043 = t426 * t526 - t428 * t527 + t474 * t563 - t476 * t566;
t1049 = t1050 * t567 + t1052;
t845 = t566 * t567;
t853 = t527 * t567;
t1048 = t1046 * t564 - t331 * t853 - t379 * t845;
t989 = t1050 * t564 + t332 * t853 + t380 * t845;
t672 = -Icges(4,2) * t526 + t508;
t330 = Icges(4,6) * t564 + t567 * t672;
t673 = -Icges(3,2) * t563 + t545;
t378 = Icges(3,6) * t564 + t567 * t673;
t1047 = t330 * t526 + t378 * t563;
t1012 = -t1040 * t564 + t1046 * t567;
t1011 = -t330 * t856 - t378 * t850 - t1049;
t849 = t563 * t567;
t855 = t526 * t567;
t1010 = -t329 * t855 - t377 * t849 - t1048;
t1009 = -t330 * t855 - t378 * t849 + t989;
t1006 = t329 * t527 + t331 * t526 + t377 * t566 + t379 * t563;
t1005 = t330 * t527 + t332 * t526 + t378 * t566 + t380 * t563;
t1044 = t1051 * qJD(2);
t1042 = -t426 * t527 - t428 * t526 - t474 * t566 - t476 * t563;
t1041 = t332 * t527 + t380 * t566 - t1047;
t987 = t1051 * t567;
t986 = t1051 * t564;
t1008 = -t1043 * t564 - t987;
t1007 = -t1043 * t567 + t986;
t1039 = t1050 * qJD(1);
t531 = qJ(4) + t558;
t512 = cos(t531);
t565 = cos(qJ(5));
t846 = t565 * t567;
t562 = sin(qJ(5));
t851 = t562 * t564;
t391 = t512 * t851 + t846;
t843 = t567 * t562;
t848 = t564 * t565;
t392 = t512 * t848 - t843;
t693 = t392 * rSges(6,1) - t391 * rSges(6,2);
t511 = sin(t531);
t862 = t511 * t564;
t200 = -rSges(6,3) * t862 - t693;
t922 = rSges(6,2) * t562;
t926 = rSges(6,1) * t565;
t692 = -t922 + t926;
t289 = -rSges(6,3) * t512 + t511 * t692;
t557 = qJD(2) + qJD(4);
t471 = t557 * t567;
t779 = qJD(5) * t564;
t366 = -t511 * t779 + t471;
t933 = pkin(4) * t511;
t409 = -pkin(8) * t512 + t933;
t781 = qJD(5) * t512;
t465 = qJD(1) - t781;
t934 = pkin(3) * t526;
t935 = pkin(2) * t563;
t449 = -t934 - t935;
t430 = t449 * qJD(2);
t396 = t567 * t430;
t533 = qJD(3) * t564;
t980 = t396 + t533;
t1038 = -t465 * t200 + t366 * t289 + t471 * t409 - t980;
t369 = Icges(6,4) * t392;
t193 = -Icges(6,2) * t391 + Icges(6,6) * t862 + t369;
t368 = Icges(6,4) * t391;
t197 = -Icges(6,1) * t392 - Icges(6,5) * t862 + t368;
t1023 = t193 * t562 + t197 * t565;
t190 = Icges(6,5) * t392 - Icges(6,6) * t391 + Icges(6,3) * t862;
t86 = -t1023 * t511 - t190 * t512;
t1037 = t567 ^ 2;
t1036 = rSges(3,2) * t563;
t398 = t672 * qJD(2);
t399 = t429 * qJD(2);
t439 = t673 * qJD(2);
t440 = t477 * qJD(2);
t1035 = qJD(1) * t1051 + t1042 * qJD(2) - t398 * t526 + t399 * t527 - t439 * t563 + t440 * t566;
t622 = qJD(2) * t426;
t208 = -t567 * t622 + (-t564 * t672 + t891) * qJD(1);
t624 = qJD(2) * t428;
t210 = -t567 * t624 + (-t429 * t564 + t898) * qJD(1);
t623 = qJD(2) * t474;
t249 = -t567 * t623 + (-t564 * t673 + t892) * qJD(1);
t625 = qJD(2) * t476;
t251 = -t567 * t625 + (-t477 * t564 + t899) * qJD(1);
t1034 = -t1005 * qJD(2) - t208 * t526 + t210 * t527 - t249 * t563 + t251 * t566 + t1039;
t209 = qJD(1) * t330 - t564 * t622;
t211 = qJD(1) * t332 - t564 * t624;
t250 = qJD(1) * t378 - t564 * t623;
t252 = qJD(1) * t380 - t564 * t625;
t1033 = t1046 * qJD(1) + t1006 * qJD(2) + t209 * t526 - t211 * t527 + t250 * t563 - t252 * t566;
t1032 = t1009 * t564 - t1010 * t567;
t1031 = t1011 * t564 - t1012 * t567;
t1030 = t1043 * qJD(1) + t1045 * qJD(2);
t1029 = t1040 * qJD(1) - t1044 * t564 + t1039;
t1028 = -t1044 * t567 + (-t1045 * t564 - t1041 + t1054) * qJD(1);
t924 = rSges(4,2) * t527;
t431 = rSges(4,1) * t526 + t924;
t387 = t431 * t564;
t547 = t564 * rSges(4,3);
t509 = t527 * rSges(4,1);
t976 = -rSges(4,2) * t526 + t509;
t213 = -qJD(2) * t387 + (t567 * t976 + t547) * qJD(1);
t400 = t976 * qJD(2);
t774 = qJD(1) * qJD(2);
t517 = t564 * t774;
t448 = -qJDD(2) * t567 + t517;
t773 = qJD(1) * qJD(3);
t752 = qJDD(3) * t564 + t448 * t935 + t567 * t773;
t337 = rSges(4,1) * t854 - rSges(4,2) * t856 - t567 * rSges(4,3);
t554 = t567 * pkin(6);
t487 = pkin(1) * t564 - t554;
t561 = -qJ(3) - pkin(6);
t519 = t567 * t561;
t553 = t566 * pkin(2);
t521 = t553 + pkin(1);
t797 = t564 * t521 + t519;
t324 = t487 - t797;
t820 = t324 - t487;
t753 = -t337 + t820;
t552 = t564 * pkin(6);
t785 = qJD(1) * t564;
t501 = t561 * t785;
t769 = pkin(2) * t850;
t494 = qJD(2) * t769;
t534 = qJD(3) * t567;
t795 = t494 + t534;
t748 = t501 + t795;
t928 = pkin(1) - t521;
t236 = (-t567 * t928 - t552) * qJD(1) - t748;
t488 = t567 * pkin(1) + t552;
t445 = t488 * qJD(1);
t838 = -t236 - t445;
t568 = qJD(2) ^ 2;
t844 = t566 * t568;
t69 = t431 * t448 + (-pkin(2) * t844 - qJD(2) * t400) * t567 + t753 * qJDD(1) + (-t213 + t838) * qJD(1) + t752;
t1027 = -g(1) + t69;
t1026 = t1007 * qJD(1);
t1024 = t1008 * qJD(1);
t668 = Icges(6,5) * t565 - Icges(6,6) * t562;
t281 = -Icges(6,3) * t512 + t511 * t668;
t900 = Icges(6,4) * t565;
t670 = -Icges(6,2) * t562 + t900;
t283 = -Icges(6,6) * t512 + t511 * t670;
t901 = Icges(6,4) * t562;
t675 = Icges(6,1) * t565 - t901;
t285 = -Icges(6,5) * t512 + t511 * t675;
t107 = t281 * t862 - t283 * t391 + t285 * t392;
t535 = qJD(2) * t564;
t470 = qJD(4) * t564 + t535;
t778 = qJD(5) * t567;
t365 = t511 * t778 + t470;
t78 = t190 * t862 - t193 * t391 - t197 * t392;
t393 = -t512 * t843 + t848;
t394 = t512 * t846 + t851;
t860 = t511 * t567;
t192 = Icges(6,5) * t394 + Icges(6,6) * t393 + Icges(6,3) * t860;
t902 = Icges(6,4) * t394;
t195 = Icges(6,2) * t393 + Icges(6,6) * t860 + t902;
t370 = Icges(6,4) * t393;
t198 = Icges(6,1) * t394 + Icges(6,5) * t860 + t370;
t79 = t192 * t862 - t391 * t195 + t392 * t198;
t29 = t107 * t465 + t365 * t79 - t366 * t78;
t108 = t281 * t860 + t283 * t393 + t285 * t394;
t80 = t190 * t860 + t393 * t193 - t197 * t394;
t81 = t192 * t860 + t393 * t195 + t394 * t198;
t30 = t108 * t465 + t365 * t81 - t366 * t80;
t1022 = t1031 * qJD(2) + t1024;
t1021 = t1032 * qJD(2) + t1026;
t1020 = t1040 * qJD(2) - t209 * t527 - t211 * t526 - t250 * t566 - t252 * t563;
t1019 = t1041 * qJD(2) + t208 * t527 + t210 * t526 + t249 * t566 + t251 * t563;
t1018 = t1030 * t564 + t1035 * t567;
t1017 = -t1030 * t567 + t1035 * t564;
t784 = qJD(1) * t567;
t852 = t557 * t564;
t615 = t511 * t784 + t512 * t852;
t642 = t565 * t465;
t705 = qJD(1) * t512 - qJD(5);
t763 = t511 * t852;
t183 = t564 * t642 + (-t567 * t705 + t763) * t562;
t641 = t465 * t562;
t861 = t511 * t565;
t184 = t705 * t846 + (-t557 * t861 + t641) * t564;
t694 = rSges(6,1) * t184 + rSges(6,2) * t183;
t105 = rSges(6,3) * t615 + t694;
t691 = -rSges(6,1) * t562 - rSges(6,2) * t565;
t859 = t512 * t557;
t156 = t692 * t859 + (rSges(6,3) * t557 + qJD(5) * t691) * t511;
t770 = -qJDD(2) - qJDD(4);
t771 = qJDD(5) * t511;
t780 = qJD(5) * t557;
t782 = qJD(5) * t511;
t772 = qJD(1) * qJD(4);
t792 = t564 * t772 + t517;
t166 = (t512 * t780 + t771) * t564 + (qJD(1) * t782 + t770) * t567 + t792;
t203 = t615 * pkin(8) + (t512 * t784 - t763) * pkin(4);
t500 = t512 * pkin(4);
t977 = t511 * pkin(8) + t500;
t341 = t977 * t557;
t345 = t567 * t770 + t792;
t346 = -qJDD(5) * t512 + t511 * t780 + qJDD(1);
t510 = pkin(3) * t527;
t975 = -t553 - t510;
t594 = t567 * t568 * t975 + t448 * t934 + t752;
t362 = t977 * t564;
t441 = pkin(1) - t975;
t556 = -pkin(7) + t561;
t809 = -t564 * t441 - t567 * t556;
t260 = t797 + t809;
t755 = t260 + t820;
t699 = -t362 + t755;
t493 = t556 * t785;
t710 = t430 * t564 - t493;
t803 = t441 - t521;
t149 = t784 * t803 + t494 + t501 + t710;
t760 = -t149 + t838;
t20 = -t465 * t105 - t366 * t156 + t166 * t289 + t346 * t200 - t471 * t341 + t345 * t409 + t699 * qJDD(1) + (-t203 + t760) * qJD(1) + t594;
t201 = t394 * rSges(6,1) + t393 * rSges(6,2) + rSges(6,3) * t860;
t857 = t512 * t567;
t364 = pkin(4) * t857 + pkin(8) * t860;
t749 = -t535 * t934 - t795;
t413 = t567 * t441;
t491 = t567 * t521;
t791 = -t556 + t561;
t261 = t564 * t791 + t413 - t491;
t709 = -t561 * t564 + t491;
t325 = t709 - t488;
t818 = t325 + t488;
t754 = t261 + t818;
t66 = t201 * t465 - t289 * t365 - t409 * t470 + (t364 + t754) * qJD(1) + t749;
t883 = qJD(1) * t66;
t1013 = t567 * (t20 + t883);
t1004 = -t200 + t362;
t1003 = t201 + t364;
t1002 = t289 + t409;
t858 = t512 * t564;
t890 = Icges(5,6) * t567;
t310 = Icges(5,4) * t858 - Icges(5,2) * t862 - t890;
t496 = Icges(5,4) * t512;
t405 = Icges(5,1) * t511 + t496;
t1001 = -t405 * t564 - t310;
t671 = -Icges(5,2) * t511 + t496;
t311 = Icges(5,6) * t564 + t567 * t671;
t1000 = -t405 * t567 - t311;
t903 = Icges(5,4) * t511;
t406 = Icges(5,1) * t512 - t903;
t313 = Icges(5,5) * t564 + t406 * t567;
t403 = Icges(5,2) * t512 + t903;
t999 = -t403 * t567 + t313;
t998 = -t403 + t406;
t997 = t405 + t671;
t606 = t377 * t567 - t378 * t564;
t607 = t329 * t567 - t330 * t564;
t959 = t564 * (-t426 * t567 + t332) - t567 * (-Icges(4,2) * t854 + t331 - t484);
t960 = t564 * (-t474 * t567 + t380) - t567 * (-Icges(3,2) * t847 + t379 - t504);
t996 = -t526 * t959 + t607 * t527 - t563 * t960 + t606 * t566;
t798 = t476 + t673;
t799 = -t474 + t477;
t807 = t428 + t672;
t808 = -t426 + t429;
t995 = (-t526 * t807 + t527 * t808 - t563 * t798 + t566 * t799) * qJD(1);
t994 = t1029 * t1037 + (t1034 * t564 + (-t1028 + t1033) * t567) * t564;
t993 = t1033 * t1037 + (t1028 * t564 + (-t1029 + t1034) * t567) * t564;
t992 = t1046 + t1047;
t991 = t1045 * qJD(1);
t422 = t564 * t449;
t347 = t422 + t769;
t746 = t526 * t785;
t990 = pkin(3) * t746 + qJD(1) * t347;
t767 = rSges(6,1) * t861;
t766 = t511 * t922;
t805 = rSges(6,3) * t858 + t564 * t766;
t268 = -t564 * t767 + t805;
t497 = t511 * rSges(6,3);
t290 = t512 * t692 + t497;
t466 = pkin(8) * t858;
t361 = -pkin(4) * t862 + t466;
t739 = t512 * t779;
t988 = qJD(1) * t361 + t1002 * t785 - t200 * t782 + t268 * t465 - t289 * t739 + t366 * t290 + t471 * t977;
t985 = t29 * t564 + t30 * t567;
t617 = -t431 - t935;
t982 = t567 * t617;
t451 = qJD(1) * t487;
t981 = qJD(1) * t324 - t451;
t979 = t976 + t553;
t498 = t512 * rSges(5,1);
t978 = -rSges(5,2) * t511 + t498;
t747 = t511 * t785;
t762 = t511 * t471;
t970 = t564 * t705 + t762;
t181 = t562 * t970 + t567 * t642;
t182 = -t565 * t970 + t567 * t641;
t761 = t512 * t471;
t758 = t182 * rSges(6,1) + t181 * rSges(6,2) + rSges(6,3) * t761;
t104 = -rSges(6,3) * t747 + t758;
t447 = qJDD(2) * t564 + t567 * t774;
t344 = qJDD(4) * t564 + t567 * t772 + t447;
t614 = -t747 + t761;
t165 = qJD(5) * t614 + t567 * t771 + t344;
t435 = pkin(8) * t761;
t616 = -t512 * t785 - t762;
t202 = pkin(4) * t616 - pkin(8) * t747 + t435;
t783 = qJD(2) * t567;
t743 = t563 * t783;
t706 = pkin(2) * t743;
t148 = t706 + t396 + (-t564 * t803 + t567 * t791) * qJD(1);
t525 = pkin(6) * t784;
t235 = -t706 - t525 + t533 + (t564 * t928 - t519) * qJD(1);
t806 = qJD(1) * (-pkin(1) * t785 + t525) + qJDD(1) * t488;
t576 = qJD(1) * t235 + qJDD(1) * t325 + t564 * t773 + (-t447 * t563 - t564 * t844) * pkin(2) - qJDD(3) * t567 + t806;
t572 = qJD(1) * t148 + qJDD(1) * t261 + (-t447 * t526 - t568 * t854) * pkin(3) + t576;
t21 = qJD(1) * t202 + qJDD(1) * t364 + t465 * t104 - t365 * t156 - t165 * t289 + t346 * t201 - t470 * t341 - t344 * t409 + t572;
t973 = t20 * t564 - t21 * t567;
t972 = qJD(1) * t260 + t981;
t932 = g(1) * t564;
t971 = -g(2) * t567 + t932;
t402 = Icges(5,5) * t512 - Icges(5,6) * t511;
t401 = Icges(5,5) * t511 + Icges(5,6) * t512;
t868 = t401 * t567;
t876 = t311 * t511;
t886 = Icges(5,3) * t567;
t969 = -t557 * t868 + (-t313 * t512 - t402 * t564 + t876 + t886) * qJD(1);
t456 = Icges(5,4) * t862;
t897 = Icges(5,5) * t567;
t312 = Icges(5,1) * t858 - t456 - t897;
t655 = t310 * t511 - t312 * t512;
t309 = Icges(5,3) * t564 + t402 * t567;
t790 = qJD(1) * t309;
t869 = t401 * t564;
t968 = qJD(1) * t655 - t557 * t869 + t790;
t647 = t403 * t511 - t405 * t512;
t963 = qJD(1) * t647 + t402 * t557;
t627 = t668 * t512;
t656 = -t283 * t562 + t285 * t565;
t661 = -t195 * t562 + t198 * t565;
t958 = t365 * (-t281 * t567 - t661) - t366 * (-t281 * t564 + t1023) + t465 * (Icges(6,3) * t511 + t627 - t656);
t669 = -Icges(6,2) * t565 - t901;
t957 = t365 * (-Icges(6,2) * t394 + t198 + t370) - t366 * (-Icges(6,2) * t392 - t197 - t368) + t465 * (t669 * t511 + t285);
t956 = qJD(1) * t997 + t470 * t999 - t471 * (-Icges(5,2) * t858 + t312 - t456);
t955 = t165 / 0.2e1;
t954 = t166 / 0.2e1;
t953 = t344 / 0.2e1;
t952 = t345 / 0.2e1;
t951 = t346 / 0.2e1;
t950 = -t365 / 0.2e1;
t949 = t365 / 0.2e1;
t948 = -t366 / 0.2e1;
t947 = t366 / 0.2e1;
t946 = t447 / 0.2e1;
t945 = t448 / 0.2e1;
t944 = -t465 / 0.2e1;
t943 = t465 / 0.2e1;
t942 = -t470 / 0.2e1;
t941 = t470 / 0.2e1;
t940 = -t471 / 0.2e1;
t939 = t471 / 0.2e1;
t938 = t564 / 0.2e1;
t937 = -t567 / 0.2e1;
t936 = -rSges(6,3) - pkin(8);
t931 = g(2) * t564;
t930 = -qJD(1) / 0.2e1;
t929 = qJD(1) / 0.2e1;
t927 = rSges(3,1) * t566;
t100 = Icges(6,4) * t184 + Icges(6,2) * t183 + Icges(6,6) * t615;
t102 = Icges(6,1) * t184 + Icges(6,4) * t183 + Icges(6,5) * t615;
t98 = Icges(6,5) * t184 + Icges(6,6) * t183 + Icges(6,3) * t615;
t22 = (-t1023 * t557 - t98) * t512 + (-t100 * t562 + t102 * t565 + t190 * t557 + (-t193 * t565 + t197 * t562) * qJD(5)) * t511;
t919 = t22 * t366;
t101 = Icges(6,1) * t182 + Icges(6,4) * t181 + Icges(6,5) * t614;
t97 = Icges(6,5) * t182 + Icges(6,6) * t181 + Icges(6,3) * t614;
t99 = Icges(6,4) * t182 + Icges(6,2) * t181 + Icges(6,6) * t614;
t23 = (t557 * t661 - t97) * t512 + (t101 * t565 + t192 * t557 - t562 * t99 + (-t195 * t565 - t198 * t562) * qJD(5)) * t511;
t918 = t23 * t365;
t548 = t564 * rSges(3,3);
t546 = t564 * rSges(5,3);
t913 = t86 * t166;
t87 = -t192 * t512 + t511 * t661;
t912 = t87 * t165;
t407 = rSges(5,1) * t511 + rSges(5,2) * t512;
t595 = -t471 * t407 + t980;
t316 = rSges(5,1) * t858 - rSges(5,2) * t862 - t567 * rSges(5,3);
t701 = -t316 + t755;
t92 = qJD(1) * t701 + t595;
t911 = t92 * t407;
t910 = qJDD(1) / 0.2e1;
t115 = -t281 * t512 + t511 * t656;
t667 = -Icges(6,5) * t562 - Icges(6,6) * t565;
t153 = t557 * t627 + (Icges(6,3) * t557 + qJD(5) * t667) * t511;
t628 = t670 * t512;
t154 = t557 * t628 + (Icges(6,6) * t557 + qJD(5) * t669) * t511;
t629 = t675 * t512;
t674 = -Icges(6,1) * t562 - t900;
t155 = t557 * t629 + (Icges(6,5) * t557 + qJD(5) * t674) * t511;
t43 = (t557 * t656 - t153) * t512 + (-t154 * t562 + t155 * t565 + t281 * t557 + (-t283 * t565 - t285 * t562) * qJD(5)) * t511;
t909 = t115 * t346 + t43 * t465;
t827 = -t324 * t535 + t325 * t783;
t703 = -t260 * t535 + t261 * t783 + t827;
t50 = -t200 * t365 + t201 * t366 + t362 * t470 + t364 * t471 + t703;
t884 = qJD(1) * t50;
t612 = qJD(2) * t982 + t533;
t123 = qJD(1) * t753 + t612;
t881 = t123 * t431;
t478 = rSges(3,1) * t563 + rSges(3,2) * t566;
t744 = t478 * t783;
t794 = rSges(3,2) * t850 + t567 * rSges(3,3);
t389 = rSges(3,1) * t847 - t794;
t812 = -t389 - t487;
t221 = qJD(1) * t812 - t744;
t880 = t221 * t564;
t879 = t221 * t567;
t390 = rSges(3,1) * t845 - rSges(3,2) * t849 + t548;
t301 = t390 + t488;
t222 = qJD(1) * t301 - t478 * t535;
t421 = t478 * t567;
t878 = t222 * t421;
t308 = Icges(5,5) * t858 - Icges(5,6) * t862 - t886;
t877 = t308 * t567;
t863 = t511 * t557;
t842 = -t156 - t341;
t837 = -t261 - t325;
t836 = -t564 * t308 - t312 * t857;
t835 = t564 * t309 + t313 * t857;
t317 = rSges(5,1) * t857 - rSges(5,2) * t860 + t546;
t829 = t564 * t316 + t567 * t317;
t826 = -t564 * t324 + t567 * t325;
t423 = t567 * t449;
t768 = pkin(2) * t849;
t348 = t423 + t768;
t825 = t347 * t535 + t348 * t783;
t338 = rSges(4,1) * t853 - rSges(4,2) * t855 + t547;
t819 = -t325 - t338;
t804 = rSges(6,3) * t857 + t567 * t766;
t802 = rSges(5,2) * t747 + rSges(5,3) * t784;
t801 = rSges(4,2) * t746 + rSges(4,3) * t784;
t796 = rSges(3,3) * t784 + t785 * t1036;
t137 = -t564 * t647 - t868;
t777 = t137 * qJD(1);
t764 = qJD(2) * t553;
t179 = rSges(5,1) * t616 - rSges(5,2) * t761 + t802;
t359 = t407 * t564;
t180 = -t557 * t359 + (t567 * t978 + t546) * qJD(1);
t759 = t567 * t179 + t564 * t180 + t316 * t784;
t757 = t235 * t783 + t236 * t535 - t447 * t324;
t756 = t567 * t235 + t564 * t236 - t324 * t784;
t751 = t466 + t805;
t468 = pkin(8) * t857;
t750 = t468 + t804;
t742 = t566 * t783;
t738 = t512 * t778;
t736 = -pkin(1) - t927;
t734 = t785 / 0.2e1;
t733 = t784 / 0.2e1;
t732 = -t535 / 0.2e1;
t731 = t535 / 0.2e1;
t730 = -t783 / 0.2e1;
t729 = t783 / 0.2e1;
t726 = t563 * (-t564 ^ 2 - t1037);
t725 = (-t564 * t671 + t890) * qJD(1) + t999 * t557;
t724 = qJD(1) * t311 + t312 * t557 - t403 * t852;
t723 = (-t406 * t564 + t897) * qJD(1) + t1000 * t557;
t722 = qJD(1) * t313 + t1001 * t557;
t271 = t313 * t858;
t721 = t309 * t567 - t271;
t360 = t407 * t567;
t720 = -t470 * t359 - t360 * t471;
t718 = -t308 + t876;
t715 = t997 * t557;
t714 = t998 * t557;
t713 = -qJD(1) * t360 - t470 * t978;
t711 = -t556 * t564 + t413;
t708 = qJD(1) * t359 - t471 * t978;
t702 = -t564 * t260 + t567 * t261 + t826;
t700 = t1003 * t567 + t1004 * t564;
t481 = rSges(2,1) * t567 - rSges(2,2) * t564;
t479 = rSges(2,1) * t564 + rSges(2,2) * t567;
t480 = t927 - t1036;
t65 = qJD(1) * t699 - t1038;
t686 = t564 * t66 + t567 * t65;
t685 = t564 * t79 - t567 * t78;
t684 = t564 * t78 + t567 * t79;
t683 = t564 * t81 - t567 * t80;
t682 = t564 * t80 + t567 * t81;
t681 = t564 * t87 - t567 * t86;
t680 = t564 * t86 + t567 * t87;
t93 = -t407 * t470 + (t317 + t754) * qJD(1) + t749;
t679 = -t564 * t93 - t567 * t92;
t660 = -t200 * t567 - t201 * t564;
t212 = -t783 * t924 + (-t526 * t783 - t527 * t785) * rSges(4,1) + t801;
t659 = t212 * t567 + t213 * t564;
t658 = -t222 * t564 - t879;
t256 = -rSges(3,2) * t742 + (-t566 * t785 - t743) * rSges(3,1) + t796;
t420 = t478 * t564;
t257 = -qJD(2) * t420 + (t480 * t567 + t548) * qJD(1);
t657 = t256 * t567 + t257 * t564;
t150 = t310 * t512 + t312 * t511;
t651 = t337 * t564 + t338 * t567;
t648 = t389 * t564 + t390 * t567;
t640 = (t348 - t768) * qJD(1);
t639 = -t407 + t449;
t638 = t1004 * t784 + (t104 + t202) * t567 + (t105 + t203) * t564;
t637 = t511 * t936 - t500;
t636 = t567 * t148 + t564 * t149 - t260 * t784 + t756;
t630 = t449 - t1002;
t626 = t655 * t564;
t619 = -qJD(2) * t510 - t764;
t618 = -t977 - t497;
t613 = t290 + t977;
t611 = -t190 * t366 + t192 * t365 + t281 * t465;
t610 = (-Icges(6,5) * t391 - Icges(6,6) * t392) * t366 - (Icges(6,5) * t393 - Icges(6,6) * t394) * t365 - t667 * t511 * t465;
t339 = t978 * t557;
t609 = -t339 + t619;
t608 = qJD(1) * t402 - t470 * t868 + t471 * t869;
t603 = t619 + t842;
t602 = t511 * t610;
t596 = t148 * t783 + t149 * t535 - t447 * t260 + t448 * t837 + t757;
t592 = (Icges(6,1) * t393 - t195 - t902) * t365 - (-Icges(6,1) * t391 - t193 - t369) * t366 + (t674 * t511 - t283) * t465;
t590 = qJD(1) * t998 + t1000 * t470 - t1001 * t471;
t269 = -t567 * t767 + t804;
t363 = -pkin(4) * t860 + t468;
t589 = -t200 * t738 - t201 * t739 + t365 * t268 + t269 * t366 + t470 * t361 + t363 * t471;
t588 = qJD(1) * t363 + t201 * t782 + t465 * t269 - t289 * t738 - t290 * t365 - t470 * t977;
t587 = (g(1) * t567 + t931) * (-pkin(4) - t926) * t511;
t585 = qJD(1) * t308 - t511 * t724 + t512 * t722;
t584 = -t511 * t725 + t512 * t723 + t790;
t583 = qJD(1) * t401 - t511 * t715 + t512 * t714;
t117 = -t626 - t877;
t118 = -t311 * t862 - t721;
t119 = -t310 * t860 - t836;
t120 = -t311 * t860 + t835;
t138 = -t567 * t647 + t869;
t151 = t311 * t512 + t313 * t511;
t16 = t100 * t393 + t102 * t394 + t181 * t193 - t182 * t197 + t190 * t614 + t860 * t98;
t17 = t101 * t394 + t181 * t195 + t182 * t198 + t192 * t614 + t393 * t99 + t860 * t97;
t18 = -t100 * t391 + t102 * t392 + t183 * t193 - t184 * t197 + t190 * t615 + t862 * t98;
t19 = t101 * t392 + t183 * t195 + t184 * t198 + t192 * t615 - t391 * t99 + t862 * t97;
t264 = t283 * t564;
t265 = t283 * t567;
t266 = t285 * t564;
t267 = t285 * t567;
t284 = Icges(6,6) * t511 + t628;
t286 = Icges(6,5) * t511 + t629;
t34 = t153 * t860 + t154 * t393 + t155 * t394 + t181 * t283 + t182 * t285 + t281 * t614;
t3 = t108 * t346 - t16 * t366 + t165 * t81 + t166 * t80 + t17 * t365 + t34 * t465;
t33 = t115 * t465 + t365 * t87 - t366 * t86;
t35 = t153 * t862 - t154 * t391 + t155 * t392 + t183 * t283 + t184 * t285 + t281 * t615;
t4 = t107 * t346 + t165 * t79 + t166 * t78 - t18 * t366 + t19 * t365 + t35 * t465;
t45 = t564 * t968 + t585 * t567;
t46 = t564 * t969 + t584 * t567;
t47 = t585 * t564 - t567 * t968;
t48 = t584 * t564 - t567 * t969;
t57 = -t117 * t471 + t118 * t470 + t777;
t570 = -t511 * t956 + t590 * t512;
t571 = t958 * t511;
t130 = t138 * qJD(1);
t58 = -t119 * t471 + t120 * t470 + t130;
t73 = t564 * t963 + t583 * t567;
t74 = t583 * t564 - t567 * t963;
t82 = t511 * t722 + t512 * t724;
t83 = t511 * t723 + t512 * t725;
t573 = (t590 * t511 + t512 * t956) * t930 + (((t265 * t562 - t267 * t565 + t192) * t365 - (t264 * t562 - t266 * t565 + t190) * t366 + (-t284 * t562 + t286 * t565 + t281) * t465 + t115 * qJD(5)) * t511 + (qJD(5) * t680 - t958) * t512) * t944 + t685 * t954 + t683 * t955 + ((t265 * t391 - t267 * t392) * t365 - (t264 * t391 - t266 * t392) * t366 + (-t284 * t391 + t286 * t392) * t465 + (t107 * t511 + t79 * t857) * qJD(5) + ((qJD(5) * t78 + t611) * t512 + t571) * t564) * t947 + (qJD(1) * t684 - t18 * t567 + t19 * t564) * t948 + (qJD(1) * t682 - t16 * t567 + t17 * t564) * t949 + ((-t265 * t393 - t267 * t394) * t365 - (-t264 * t393 - t266 * t394) * t366 + (t284 * t393 + t286 * t394) * t465 + (t108 * t511 + t80 * t858) * qJD(5) + ((qJD(5) * t81 + t611) * t512 + t571) * t567) * t950 + t681 * t951 + (-t117 * t567 + t118 * t564) * t952 + (-t119 * t567 + t120 * t564) * t953 - t33 * t782 / 0.2e1 + (-t150 * t567 + t151 * t564) * t910 + (t564 * t83 - t567 * t82 + (t150 * t564 + t151 * t567) * qJD(1)) * t929 + (t564 * t570 - t567 * t608) * t939 + (-t47 * t567 + t48 * t564 + (t117 * t564 + t118 * t567) * qJD(1)) * t940 + (-t45 * t567 + t46 * t564 + (t119 * t564 + t120 * t567) * qJD(1)) * t941 + (t564 * t608 + t567 * t570) * t942 + (qJD(1) * t680 - t22 * t567 + t23 * t564) * t943 + (qJD(1) * t73 + qJDD(1) * t138 + t119 * t345 + t120 * t344 - t45 * t471 + t46 * t470 + t3) * t938 + (qJD(1) * t74 + qJDD(1) * t137 + t117 * t345 + t118 * t344 - t47 * t471 + t470 * t48 + t4) * t937 + (t57 + t29) * t734 + (t58 + t30) * t733 - t985 * t781 / 0.2e1;
t442 = t480 * qJD(2);
t388 = t431 * t567;
t358 = t691 * t511;
t246 = rSges(6,1) * t393 - rSges(6,2) * t394;
t245 = -rSges(6,1) * t391 - rSges(6,2) * t392;
t217 = t648 * qJD(2);
t124 = -t431 * t535 + (t338 + t818) * qJD(1) - t795;
t116 = qJD(2) * t651 + t827;
t114 = qJD(1) * t256 + qJDD(1) * t390 - t442 * t535 - t447 * t478 + t806;
t113 = -t442 * t783 + t448 * t478 + t812 * qJDD(1) + (-t257 - t445) * qJD(1);
t75 = t316 * t470 + t317 * t471 + t703;
t70 = qJD(1) * t212 + qJDD(1) * t338 - t400 * t535 - t431 * t447 + t576;
t42 = qJD(1) * t179 + qJDD(1) * t317 - t339 * t470 - t344 * t407 + t572;
t41 = -t339 * t471 + t345 * t407 + t701 * qJDD(1) + (-t180 + t760) * qJD(1) + t594;
t24 = t179 * t471 + t180 * t470 + t316 * t344 - t317 * t345 + t596;
t13 = t104 * t366 + t105 * t365 - t165 * t200 - t166 * t201 + t202 * t471 + t203 * t470 + t344 * t362 - t345 * t364 + t596;
t1 = [((t989 * t564 + ((t1050 + t1053) * t567 + t1011 + t1048 + t1052) * t567) * qJD(2) + t1026) * t729 + (t137 + t150) * t952 + (m(2) * (t479 ^ 2 + t481 ^ 2) + Icges(2,3) + t403 * t512 + t405 * t511 - t1042) * qJDD(1) + (-t1043 * qJD(2) + t398 * t527 + t399 * t526 + t439 * t566 + t440 * t563 + t511 * t714 + t512 * t715) * qJD(1) + (t1005 + t1007) * t946 + (t1006 + t1008) * t945 + (-t777 + (t120 - t626 - t835) * t471 + (t564 * t718 + t119 - t271) * t470 + ((t309 + t655) * t470 + t718 * t471) * t567 + t57) * t942 + (t1018 + t1019) * t731 + (((t567 * t992 + t1009 - t989) * t567 + (t564 * t992 + t1010 + t1049) * t564) * qJD(2) + t1022 - t1024) * t732 + (t35 + t30) * t948 + (-(-qJD(1) * t337 - t123 + t612 + t981) * t124 + t123 * t748 + t124 * (t533 + t801) + (t124 * t982 + t564 * t881) * qJD(2) + ((-t123 * rSges(4,3) + t124 * (-t521 - t509)) * t564 + (t123 * (-t521 - t976) - t124 * t561) * t567) * qJD(1) + (-g(2) + t70) * (t338 + t709) + t1027 * (-t337 - t797)) * m(4) + t912 / 0.2e1 + (t1017 - t1020 + t1021) * t730 - t919 / 0.2e1 + t918 / 0.2e1 + t909 + (t82 + t74 + t58) * t940 + (t83 + t73) * t941 + (t92 * (t534 - t710) + t93 * (t802 + t980) + (-t360 * t93 + t564 * t911) * t557 + ((-t92 * rSges(5,3) + t93 * (-t441 - t498)) * t564 + (t92 * (-t441 - t978) - t93 * t556) * t567) * qJD(1) - (-qJD(1) * t316 + t595 - t92 + t972) * t93 + (-g(2) + t42) * (t317 + t711) + (-g(1) + t41) * (-t316 + t809)) * m(5) + t913 / 0.2e1 + (t138 + t151) * t953 + ((t20 * t618 + (-t441 + t637) * t883) * t564 - t637 * t932 + (t493 + t534 - t694 + (-t441 + t618) * t784 + (-t430 + (t512 * t936 + t933) * t557) * t564) * t65 + (qJD(1) * t362 + t65 - t972 + t435 + t758 + t980 + (-pkin(4) * t863 - t556 * qJD(1)) * t567 + t1038) * t66 + (t21 - g(2)) * (t711 + t1003) + (t20 - g(1)) * (-t693 + t809)) * m(6) + (t222 * (t525 + t796) + (t478 * t880 - t878) * qJD(2) + ((-pkin(1) - t480) * t879 + (t221 * (-rSges(3,3) - pkin(6)) + t222 * t736) * t564) * qJD(1) - (-qJD(1) * t389 - t221 - t451 - t744) * t222 + (t114 - g(2)) * t301 + (t113 - g(1)) * (t736 * t564 + t554 + t794)) * m(3) + t30 * t947 + t107 * t954 + t108 * t955 + t34 * t949 + (t130 + (t118 + (t310 * t567 + t311 * t564) * t511 + t721 + t836) * t471 + (-t312 * t858 + t877 + t117 + (t310 * t564 - t311 * t567) * t511 + t835) * t470) * t939 - m(2) * (-g(1) * t479 + g(2) * t481); t573 + t1032 * t946 + t1031 * t945 + (qJD(1) * t1018 + qJD(2) * t993 + qJDD(1) * t1007 + t1009 * t447 + t1010 * t448) * t938 + (qJD(1) * t1017 + qJD(2) * t994 + qJDD(1) * t1008 + t1011 * t447 + t1012 * t448) * t937 + ((t607 * t526 + t527 * t959 + t606 * t563 + t566 * t960) * qJD(2) + (t526 * t808 + t527 * t807 + t563 * t799 + t566 * t798) * qJD(1)) * t930 + (t1020 * t567 + t1019 * t564 + (t1005 * t567 + t1006 * t564) * qJD(1)) * t929 + (t1005 * t564 - t1006 * t567) * t910 + t1022 * t734 + t1021 * t733 + ((-t535 * t987 + t991) * t564 + ((t564 * t986 + t996) * qJD(2) + t995) * t567) * t732 + ((t1009 * t567 + t1010 * t564) * qJD(1) + t993) * t731 + ((t1011 * t567 + t1012 * t564) * qJD(1) + t994) * t730 + ((-t783 * t986 - t991) * t567 + ((t567 * t987 + t996) * qJD(2) + t995) * t564) * t729 + (-g(1) * (t423 + t750) - g(2) * (t422 + t751) - g(3) * (t613 - t975) - t587 + t13 * (t700 + t702) + t50 * (t636 + t638) + t630 * t1013 + (t21 * t630 + t66 * t603 + (t837 - t1003) * t884) * t564 - t66 * (t588 + t640) - t50 * (t589 + t825) - (-t686 * t510 + (t50 * t726 - t566 * t686) * pkin(2)) * qJD(2) + (t567 * t603 + t988 + t990) * t65) * m(6) + (t24 * (t702 + t829) + t75 * (t636 + t759) + (qJD(1) * t93 + t41) * t639 * t567 + (t42 * t639 + t93 * t609 + (t911 + t75 * (-t317 + t837)) * qJD(1)) * t564 - g(1) * (t423 - t360) - g(2) * (t422 - t359) - g(3) * (t978 - t975) - t93 * (t640 + t713) - t75 * (t720 + t825) - (t679 * t510 + (t566 * t679 + t726 * t75) * pkin(2)) * qJD(2) + (t567 * t609 - t708 + t990) * t92) * m(5) + (t123 * (-pkin(2) * t742 - t400 * t567) + (qJD(2) * t659 + t337 * t447 + t448 * t819 + t757) * (t651 + t826) + t116 * (t659 + t756) + (t116 * t337 + t124 * t617) * t784 + (t70 * t617 + t124 * (-t400 - t764) + (t116 * t819 + t881) * qJD(1)) * t564 - g(3) * t979 - t617 * t931 - (t123 * t387 + t124 * (-t388 - t768)) * qJD(1) - (t116 * pkin(2) * t726 + (-t116 * t388 - t123 * t979) * t567 + (-t116 * t387 - t124 * t979) * t564) * qJD(2) + t1027 * t982) * m(4) + (-(t221 * t420 - t878) * qJD(1) - (t217 * (-t420 * t564 - t421 * t567) + t658 * t480) * qJD(2) + (qJD(2) * t657 + t389 * t447 - t390 * t448) * t648 + t217 * ((t389 * t567 - t390 * t564) * qJD(1) + t657) + t658 * t442 + (-t113 * t567 - t114 * t564 + (-t222 * t567 + t880) * qJD(1)) * t478 + g(1) * t421 + g(2) * t420 - g(3) * t480) * m(3); (-m(4) - m(5)) * t971 + 0.2e1 * (t41 * t938 + t42 * t937) * m(5) + 0.2e1 * (t69 * t938 + t70 * t937) * m(4) + (-t971 + t973) * m(6); t573 + (-t588 * t66 + t13 * t700 + (-t1003 * t884 + t66 * t842) * t564 - g(1) * t750 - g(2) * t751 - g(3) * t613 - t587 - (t21 * t564 + t1013) * t1002 + (t567 * t842 + t988) * t65 + (-t589 + t638) * t50) * m(6) + (-t92 * t708 - t93 * t713 + t24 * t829 + t679 * t339 + (-t41 * t567 - t42 * t564 + (t564 * t92 - t567 * t93) * qJD(1)) * t407 + g(1) * t360 + g(2) * t359 - g(3) * t978 + (-t317 * t785 - t720 + t759) * t75) * m(5); -t30 * t747 / 0.2e1 + t3 * t860 / 0.2e1 + (-t108 * t512 + t511 * t682) * t955 + ((t557 * t682 - t34) * t512 + (-qJD(1) * t683 + t108 * t557 + t16 * t564 + t17 * t567) * t511) * t949 + t511 * t29 * t733 + t4 * t862 / 0.2e1 + (-t107 * t512 + t511 * t684) * t954 + ((t557 * t684 - t35) * t512 + (-qJD(1) * t685 + t107 * t557 + t18 * t564 + t19 * t567) * t511) * t948 + t33 * t863 / 0.2e1 - t512 * (t909 + t912 + t913 + t918 - t919) / 0.2e1 + (-t115 * t512 + t511 * t680) * t951 + ((t557 * t680 - t43) * t512 + (-qJD(1) * t681 + t115 * t557 + t22 * t564 + t23 * t567) * t511) * t943 + (t393 * t957 + t592 * t394 - t567 * t602) * t950 + (-t391 * t957 + t392 * t592 - t564 * t602) * t947 + (t610 * t512 + (-t562 * t957 + t565 * t592) * t511) * t944 + t985 * t859 / 0.2e1 + ((-t66 * t104 + t65 * t105 - t20 * t200 - t21 * t201 + (t50 * t660 + (t564 * t65 - t567 * t66) * t289) * t557) * t512 + (t65 * (t156 * t564 + t200 * t557) + t66 * (-t156 * t567 + t201 * t557) + t13 * t660 + t50 * (-t104 * t564 + t105 * t567 + t200 * t785 - t201 * t784) + (qJD(1) * t686 + t973) * t289) * t511 - t65 * (-t245 * t465 - t358 * t366) - t66 * (t246 * t465 - t358 * t365) - t50 * (t245 * t365 + t246 * t366) - g(1) * t246 - g(2) * t245 - g(3) * t358) * m(6);];
tau = t1;