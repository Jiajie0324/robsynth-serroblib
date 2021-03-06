% Calculate vector of inverse dynamics joint torques for
% S6RPRPPR2
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
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d6,theta2,theta4]';
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
% Datum: 2019-03-09 02:43
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau = S6RPRPPR2_invdynJ_fixb_slag_vp1(qJ, qJD, qJDD, g, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPPR2_invdynJ_fixb_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPPR2_invdynJ_fixb_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRPPR2_invdynJ_fixb_slag_vp1: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRPPR2_invdynJ_fixb_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRPPR2_invdynJ_fixb_slag_vp1: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRPPR2_invdynJ_fixb_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RPRPPR2_invdynJ_fixb_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RPRPPR2_invdynJ_fixb_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From invdyn_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 02:41:16
% EndTime: 2019-03-09 02:42:38
% DurationCPUTime: 76.43s
% Computational Cost: add. (32000->1161), mult. (29962->1430), div. (0->0), fcn. (26058->10), ass. (0->559)
t1030 = Icges(6,4) - Icges(5,5);
t1029 = Icges(6,5) - Icges(5,6);
t1028 = Icges(6,1) + Icges(4,3) + Icges(5,3);
t512 = qJ(3) + pkin(10);
t505 = sin(t512);
t507 = cos(t512);
t516 = sin(qJ(3));
t519 = cos(qJ(3));
t1003 = Icges(4,5) * t519 - Icges(4,6) * t516 + t1029 * t505 - t1030 * t507;
t513 = qJ(1) + pkin(9);
t508 = cos(t513);
t1027 = t1028 * t508;
t506 = sin(t513);
t811 = t506 * t519;
t813 = t506 * t516;
t815 = t506 * t507;
t817 = t505 * t506;
t993 = -Icges(4,5) * t811 + Icges(4,6) * t813 - t1029 * t817 + t1030 * t815 + t1027;
t1000 = t1003 * t508 + t1028 * t506;
t842 = Icges(5,6) * t508;
t248 = Icges(5,4) * t815 - Icges(5,2) * t817 - t842;
t421 = Icges(6,6) * t817;
t853 = Icges(6,4) * t508;
t255 = Icges(6,2) * t815 - t421 + t853;
t843 = Icges(4,6) * t508;
t279 = Icges(4,4) * t811 - Icges(4,2) * t813 - t843;
t1026 = t248 * t505 - t255 * t507 + t279 * t516;
t1025 = -Icges(4,5) * t516 - Icges(5,5) * t505 - Icges(4,6) * t519 - Icges(5,6) * t507;
t855 = Icges(5,4) * t505;
t374 = Icges(5,2) * t507 + t855;
t841 = Icges(6,6) * t505;
t622 = Icges(6,3) * t507 + t841;
t1024 = -t374 - t622;
t486 = Icges(5,4) * t507;
t376 = Icges(5,1) * t505 + t486;
t840 = Icges(6,6) * t507;
t624 = Icges(6,2) * t505 + t840;
t1023 = t376 + t624;
t377 = Icges(5,1) * t507 - t855;
t625 = Icges(6,2) * t507 - t841;
t1022 = t377 + t625;
t623 = -Icges(6,3) * t505 + t840;
t630 = -Icges(5,2) * t505 + t486;
t1021 = t623 + t630;
t251 = Icges(5,5) * t506 + t377 * t508;
t252 = Icges(6,5) * t506 - t508 * t623;
t856 = Icges(4,4) * t516;
t449 = Icges(4,1) * t519 - t856;
t284 = Icges(4,5) * t506 + t449 * t508;
t1020 = -t251 * t815 - t252 * t817 - t284 * t811;
t628 = Icges(6,4) * t505 + Icges(6,5) * t507;
t1004 = -t628 - t1025;
t426 = Icges(5,4) * t817;
t848 = Icges(5,5) * t508;
t250 = Icges(5,1) * t815 - t426 - t848;
t847 = Icges(6,5) * t508;
t253 = Icges(6,6) * t815 - Icges(6,3) * t817 + t847;
t457 = Icges(4,4) * t813;
t849 = Icges(4,5) * t508;
t283 = Icges(4,1) * t811 - t457 - t849;
t988 = -t250 * t507 + t253 * t505 - t283 * t519 + t1026;
t446 = Icges(4,2) * t519 + t856;
t509 = Icges(4,4) * t519;
t448 = Icges(4,1) * t516 + t509;
t1019 = -t374 * t505 + t376 * t507 - t446 * t516 + t448 * t519;
t1002 = t505 * t622 - t507 * t624 - t1019;
t1018 = t1000 * t508 + t1020;
t806 = t508 * t519;
t810 = t507 * t508;
t816 = t505 * t508;
t1017 = -t250 * t810 + t253 * t816 - t283 * t806 + t506 * t993;
t964 = t1000 * t506 + t251 * t810 + t252 * t816 + t284 * t806;
t303 = t628 * t508;
t127 = t622 * t817 - t624 * t815 - t303;
t1005 = t1025 * t508;
t979 = t1019 * t506 + t1005;
t1016 = t127 - t979;
t1015 = t248 + t253;
t249 = Icges(5,6) * t506 + t508 * t630;
t1014 = t249 - t252;
t1013 = t250 + t255;
t422 = Icges(6,6) * t816;
t854 = Icges(6,4) * t506;
t254 = -Icges(6,2) * t810 + t422 + t854;
t1012 = t251 - t254;
t1011 = t1021 * qJD(3);
t1010 = t1022 * qJD(3);
t1008 = t1024 * qJD(3);
t1007 = t1023 * qJD(3);
t951 = -t506 * t988 + t508 * t993;
t631 = -Icges(4,2) * t516 + t509;
t280 = Icges(4,6) * t506 + t508 * t631;
t950 = -t249 * t817 - t254 * t815 - t280 * t813 - t1018;
t808 = t508 * t516;
t949 = -t248 * t816 + t255 * t810 - t279 * t808 - t1017;
t948 = -t249 * t816 - t254 * t810 - t280 * t808 + t964;
t1001 = -t1023 * t505 + t1024 * t507 - t446 * t519 - t448 * t516;
t940 = t1004 * t506;
t514 = -qJ(4) - pkin(7);
t468 = t508 * t514;
t510 = t519 * pkin(3);
t501 = t510 + pkin(2);
t763 = -t506 * t501 - t468;
t517 = sin(qJ(1));
t888 = t517 * pkin(1);
t667 = t763 - t888;
t968 = -t1002 * t508 + t940;
t999 = t249 * t505 + t254 * t507 + t280 * t516;
t998 = t1008 * t508 + (-t1021 * t506 + t842 - t847) * qJD(1);
t997 = qJD(1) * t1014 + t1008 * t506;
t996 = -t1007 * t508 + (-t1022 * t506 + t848 - t853) * qJD(1);
t995 = t1007 * t506 + (-t508 * t625 - t251 + t854) * qJD(1);
t726 = rSges(5,1) * t815;
t994 = -t726 + t667;
t947 = t1013 * t505 + t1015 * t507 + t279 * t519 + t283 * t516;
t946 = t1012 * t505 + t1014 * t507 + t280 * t519 + t284 * t516;
t406 = t631 * qJD(3);
t407 = t449 * qJD(3);
t991 = qJD(1) * t1004 + qJD(3) * t1001 + t1010 * t507 - t1011 * t505 - t406 * t516 + t407 * t519;
t990 = t1004 * qJD(3);
t989 = t251 * t507 + t252 * t505 + t284 * t519 - t999;
t987 = t506 * t948 - t508 * t949;
t986 = t506 * t950 - t508 * t951;
t985 = t1002 * qJD(1) + qJD(3) * t1003;
t520 = cos(qJ(1));
t511 = t520 * pkin(1);
t385 = rSges(3,1) * t506 + rSges(3,2) * t508;
t350 = -t385 - t888;
t984 = t968 * qJD(1);
t983 = t1016 * qJD(1);
t982 = t1000 * qJD(1);
t515 = sin(qJ(6));
t809 = t508 * t515;
t518 = cos(qJ(6));
t812 = t506 * t518;
t328 = t505 * t812 + t809;
t807 = t508 * t518;
t814 = t506 * t515;
t329 = -t505 * t814 + t807;
t774 = t329 * rSges(7,1) - t328 * rSges(7,2);
t175 = rSges(7,3) * t815 - t774;
t875 = rSges(7,3) * t505;
t655 = rSges(7,1) * t515 + rSges(7,2) * t518;
t952 = t507 * t655;
t288 = t875 - t952;
t741 = qJD(6) * t507;
t746 = qJD(3) * t508;
t343 = -t506 * t741 + t746;
t742 = qJD(6) * t505;
t462 = qJD(1) + t742;
t835 = qJ(5) * t507;
t894 = pkin(4) * t505;
t382 = -t835 + t894;
t895 = pkin(3) * t516;
t689 = -t382 - t895;
t893 = pkin(8) * t505;
t593 = t689 - t893;
t981 = -t175 * t462 - t343 * t288 + t593 * t746;
t980 = t508 ^ 2;
t522 = qJD(1) ^ 2;
t727 = t522 * t511;
t978 = -t1014 * t506 + t1015 * t508;
t977 = t1021 + t1023;
t976 = t1022 + t1024;
t975 = (t421 + t426 + (Icges(5,2) + Icges(6,3)) * t815 - t1013) * t508 + (-Icges(6,3) * t810 - t374 * t508 + t1012 - t422) * t506;
t748 = qJD(3) * t506;
t974 = qJD(3) * t986 - t983;
t973 = qJD(3) * t987 + t984;
t576 = qJD(3) * t446;
t189 = qJD(1) * t280 - t506 * t576;
t578 = qJD(3) * t448;
t192 = qJD(1) * t284 - t506 * t578;
t972 = qJD(3) * t988 - t189 * t519 - t192 * t516 + t505 * t995 - t507 * t997;
t188 = -t508 * t576 + (-t506 * t631 + t843) * qJD(1);
t191 = -t508 * t578 + (-t449 * t506 + t849) * qJD(1);
t971 = t989 * qJD(3) + t188 * t519 + t191 * t516 + t996 * t505 + t507 * t998;
t970 = t506 * t985 + t508 * t991;
t969 = t506 * t991 - t508 * t985;
t967 = -t946 * qJD(3) - t188 * t516 + t191 * t519 - t505 * t998 + t996 * t507 + t982;
t966 = qJD(1) * t993 + qJD(3) * t947 + t189 * t516 - t192 * t519 + t505 * t997 + t507 * t995;
t965 = t993 + t999;
t963 = qJD(1) * t988 - t506 * t990 + t982;
t962 = -t990 * t508 + (-t1003 * t506 + t1027 - t989) * qJD(1);
t491 = t507 * rSges(7,3);
t286 = t505 * t655 + t491;
t342 = t508 * t741 + t748;
t326 = t505 * t807 - t814;
t327 = t505 * t809 + t812;
t162 = Icges(7,5) * t327 + Icges(7,6) * t326 + Icges(7,3) * t810;
t852 = Icges(7,4) * t327;
t165 = Icges(7,2) * t326 + Icges(7,6) * t810 + t852;
t308 = Icges(7,4) * t326;
t168 = Icges(7,1) * t327 + Icges(7,5) * t810 + t308;
t48 = t162 * t810 + t326 * t165 + t327 * t168;
t164 = -Icges(7,5) * t329 + Icges(7,6) * t328 + Icges(7,3) * t815;
t310 = Icges(7,4) * t329;
t167 = Icges(7,2) * t328 + Icges(7,6) * t815 - t310;
t309 = Icges(7,4) * t328;
t169 = Icges(7,1) * t329 - Icges(7,5) * t815 - t309;
t49 = t164 * t810 + t326 * t167 - t169 * t327;
t626 = Icges(7,5) * t515 + Icges(7,6) * t518;
t545 = -Icges(7,3) * t505 + t507 * t626;
t851 = Icges(7,4) * t515;
t627 = Icges(7,2) * t518 + t851;
t546 = -Icges(7,6) * t505 + t507 * t627;
t850 = Icges(7,4) * t518;
t632 = Icges(7,1) * t515 + t850;
t547 = -Icges(7,5) * t505 + t507 * t632;
t84 = -t326 * t546 - t327 * t547 - t545 * t810;
t13 = t342 * t48 - t343 * t49 + t84 * t462;
t50 = t162 * t815 + t328 * t165 - t329 * t168;
t51 = t164 * t815 + t167 * t328 + t169 * t329;
t85 = -t328 * t546 + t329 * t547 - t545 * t815;
t14 = t342 * t50 - t343 * t51 + t462 * t85;
t617 = t167 * t518 - t169 * t515;
t63 = t164 * t505 - t507 * t617;
t956 = -t505 * t975 + t507 * t978;
t707 = t507 * t746;
t396 = qJ(5) * t707;
t743 = qJD(5) * t508;
t415 = t505 * t743;
t750 = qJD(1) * t506;
t714 = t505 * t750;
t712 = t507 * t750;
t953 = t505 * t746 + t712;
t136 = -pkin(4) * t953 - qJ(5) * t714 + t396 + t415;
t749 = qJD(1) * t508;
t713 = t505 * t749;
t747 = qJD(3) * t507;
t294 = t506 * t747 + t713;
t709 = t505 * t748;
t403 = pkin(4) * t709;
t476 = qJD(5) * t505;
t702 = t506 * t476;
t710 = t507 * t749;
t137 = pkin(4) * t710 + qJ(5) * t294 - t403 + t702;
t417 = qJ(5) * t815;
t312 = -pkin(4) * t817 + t417;
t479 = t505 * qJ(5);
t931 = t507 * pkin(4) + t479;
t315 = t931 * t506;
t419 = qJ(5) * t810;
t316 = -pkin(4) * t816 + t419;
t472 = pkin(7) * t749;
t477 = qJD(4) * t506;
t703 = t516 * t746;
t883 = pkin(2) - t501;
t177 = -pkin(3) * t703 - t472 + t477 + (t506 * t883 - t468) * qJD(1);
t496 = t506 * pkin(7);
t450 = t514 * t750;
t730 = pkin(3) * t813;
t761 = qJD(3) * t730 + qJD(4) * t508;
t716 = t450 + t761;
t178 = (-t508 * t883 - t496) * qJD(1) - t716;
t499 = t508 * pkin(7);
t390 = pkin(2) * t506 - t499;
t242 = t390 + t763;
t721 = t508 * t177 + t506 * t178 - t242 * t749;
t955 = t508 * t136 + t506 * t137 - t312 * t748 + t315 * t749 - t316 * t746 - t476 + t721;
t734 = qJD(3) * qJD(5);
t954 = qJDD(5) * t505 + t507 * t734;
t759 = t448 + t631;
t760 = -t446 + t449;
t945 = (-t505 * t977 + t507 * t976 - t516 * t759 + t519 * t760) * qJD(1);
t944 = t963 * t980 + (t967 * t506 + (-t962 + t966) * t508) * t506;
t943 = t966 * t980 + (t962 * t506 + (-t963 + t967) * t508) * t506;
t942 = t1003 * qJD(1);
t941 = t303 + t1005;
t487 = t505 * rSges(6,3);
t877 = rSges(6,2) * t507;
t933 = t487 - t877;
t359 = t933 * qJD(3);
t744 = qJD(5) * t507;
t311 = qJD(3) * t931 - t744;
t745 = qJD(3) * t519;
t722 = pkin(3) * t745;
t664 = -t311 - t722;
t715 = t510 + t931;
t936 = t933 + t715;
t939 = qJD(3) * t936 - t359 + t664;
t365 = qJD(1) * t390;
t937 = qJD(1) * t242 - t365;
t489 = t506 * rSges(4,3);
t289 = rSges(4,1) * t806 - rSges(4,2) * t808 + t489;
t391 = t508 * pkin(2) + t496;
t690 = t391 + t511;
t208 = t289 + t690;
t932 = t507 * rSges(5,1) - rSges(5,2) * t505;
t935 = t932 + t510;
t389 = t508 * rSges(3,1) - rSges(3,2) * t506;
t351 = t389 + t511;
t934 = -rSges(5,2) * t817 - t508 * rSges(5,3);
t347 = t506 * pkin(5) + pkin(8) * t810;
t896 = -rSges(7,3) - pkin(4);
t731 = -pkin(8) + t896;
t929 = t731 * t507 - t479 - t501;
t348 = t508 * pkin(5) - pkin(8) * t815;
t691 = -t390 - t888;
t670 = t242 + t691;
t598 = -t315 + t670;
t582 = t348 + t598;
t765 = t415 + t477;
t44 = qJD(1) * t582 + t765 + t981;
t173 = t327 * rSges(7,1) + t326 * rSges(7,2) + rSges(7,3) * t810;
t330 = t382 * t748;
t402 = pkin(8) * t709;
t590 = t702 - t761;
t319 = pkin(4) * t810 + qJ(5) * t816;
t679 = t508 * t501 - t506 * t514;
t243 = t679 - t391;
t669 = t243 + t690;
t597 = t319 + t669;
t45 = t173 * t462 - t288 * t342 - t330 - t402 + (t347 + t597) * qJD(1) + t590;
t927 = t44 * t508 + t45 * t506;
t889 = g(2) * t506;
t925 = (g(1) * t508 + t889) * t505;
t777 = -Icges(4,2) * t811 + t283 - t457;
t780 = t448 * t506 + t279;
t913 = -t516 * t777 - t519 * t780;
t336 = (Icges(7,2) * t515 - t850) * t507;
t538 = t342 * (-Icges(7,2) * t327 + t168 + t308) - t343 * (Icges(7,2) * t329 - t169 + t309) + t462 * (-t547 + t336);
t339 = (-Icges(7,1) * t518 + t851) * t507;
t539 = t342 * (-Icges(7,1) * t326 + t165 + t852) - t343 * (-Icges(7,1) * t328 + t167 - t310) + t462 * (-t546 - t339);
t912 = m(6) / 0.2e1;
t911 = m(7) / 0.2e1;
t910 = -m(6) - m(7);
t736 = qJD(1) * qJD(3);
t362 = qJDD(3) * t506 + t508 * t736;
t732 = qJDD(6) * t507;
t179 = -qJD(6) * t953 + t508 * t732 + t362;
t909 = t179 / 0.2e1;
t363 = -qJDD(3) * t508 + t506 * t736;
t567 = -t709 + t710;
t180 = qJD(6) * t567 + t506 * t732 + t363;
t908 = t180 / 0.2e1;
t907 = -t342 / 0.2e1;
t906 = t342 / 0.2e1;
t905 = -t343 / 0.2e1;
t904 = t343 / 0.2e1;
t352 = qJD(3) * t741 + qJDD(6) * t505 + qJDD(1);
t903 = t352 / 0.2e1;
t902 = t362 / 0.2e1;
t901 = t363 / 0.2e1;
t900 = -t462 / 0.2e1;
t899 = t462 / 0.2e1;
t898 = t506 / 0.2e1;
t897 = -t508 / 0.2e1;
t892 = pkin(8) * t507;
t891 = g(1) * t506;
t345 = (-rSges(7,1) * t518 + rSges(7,2) * t515) * t507;
t195 = qJD(3) * t286 + qJD(6) * t345;
t240 = qJD(1) * t347 - t402;
t521 = qJD(3) ^ 2;
t661 = -t510 - t892;
t550 = -qJD(3) * t311 + t521 * t661;
t735 = qJD(1) * qJD(4);
t585 = qJDD(4) * t506 + t363 * t895 + t508 * t735 - t727;
t551 = t363 * t382 + t508 * t954 + t585;
t361 = t391 * qJD(1);
t796 = -t178 - t361;
t579 = -t137 - t702 + t796;
t548 = -t462 * t515 + t518 * t747;
t677 = qJD(1) * t505 + qJD(6);
t595 = t508 * t677;
t138 = t506 * t548 + t518 * t595;
t549 = t462 * t518 + t515 * t747;
t139 = t506 * t549 + t515 * t595;
t657 = rSges(7,1) * t139 + rSges(7,2) * t138;
t79 = rSges(7,3) * t567 + t657;
t8 = t363 * t893 - t352 * t175 + t180 * t288 - t343 * t195 - t462 * t79 + t550 * t508 + t582 * qJDD(1) + (-t240 + t579) * qJD(1) + t551;
t887 = t8 * t506;
t473 = pkin(5) * t749;
t241 = -pkin(8) * t953 + t473;
t671 = qJDD(1) * t511 - t522 * t888;
t584 = qJD(1) * (-pkin(2) * t750 + t472) + qJDD(1) * t391 + t671;
t540 = qJD(1) * t177 + qJDD(1) * t243 - qJDD(4) * t508 + t506 * t735 + t584;
t527 = qJDD(1) * t319 + t540 + t954 * t506 + (t136 + t415) * qJD(1);
t596 = t506 * t677;
t140 = t508 * t548 - t518 * t596;
t141 = t508 * t549 - t515 * t596;
t803 = t141 * rSges(7,1) + t140 * rSges(7,2);
t80 = -rSges(7,3) * t953 + t803;
t9 = qJD(1) * t241 + qJDD(1) * t347 + t352 * t173 - t179 * t288 - t342 * t195 + t362 * t593 + t462 * t80 + t506 * t550 + t527;
t886 = t9 * t508;
t609 = -t515 * t547 - t518 * t546;
t102 = -t505 * t545 - t507 * t609;
t273 = Icges(7,3) * t507 + t505 * t626;
t333 = (-Icges(7,5) * t518 + Icges(7,6) * t515) * t507;
t184 = qJD(3) * t273 + qJD(6) * t333;
t277 = Icges(7,6) * t507 + t505 * t627;
t187 = qJD(3) * t277 + qJD(6) * t336;
t281 = Icges(7,5) * t507 + t505 * t632;
t190 = qJD(3) * t281 + qJD(6) * t339;
t31 = (qJD(3) * t609 + t184) * t505 + (-qJD(3) * t545 - t187 * t518 - t190 * t515 + (-t515 * t546 + t518 * t547) * qJD(6)) * t507;
t882 = t102 * t352 + t31 * t462;
t881 = rSges(4,1) * t519;
t618 = t165 * t518 + t168 * t515;
t74 = Icges(7,5) * t141 + Icges(7,6) * t140 - Icges(7,3) * t953;
t76 = Icges(7,4) * t141 + Icges(7,2) * t140 - Icges(7,6) * t953;
t78 = Icges(7,1) * t141 + Icges(7,4) * t140 - Icges(7,5) * t953;
t10 = (qJD(3) * t618 + t74) * t505 + (qJD(3) * t162 - t515 * t78 - t518 * t76 + (t165 * t515 - t168 * t518) * qJD(6)) * t507;
t874 = t10 * t342;
t73 = Icges(7,5) * t139 + Icges(7,6) * t138 + Icges(7,3) * t567;
t75 = Icges(7,4) * t139 + Icges(7,2) * t138 + Icges(7,6) * t567;
t77 = Icges(7,1) * t139 + Icges(7,4) * t138 + Icges(7,5) * t567;
t11 = (qJD(3) * t617 + t73) * t505 + (qJD(3) * t164 - t515 * t77 - t518 * t75 + (t167 * t515 + t169 * t518) * qJD(6)) * t507;
t873 = t11 * t343;
t870 = t44 * t506;
t867 = t45 * t508;
t865 = t505 * rSges(6,2);
t490 = t506 * rSges(6,1);
t488 = t506 * rSges(5,3);
t62 = t162 * t505 - t507 * t618;
t864 = t62 * t179;
t863 = t63 * t180;
t384 = rSges(5,1) * t505 + rSges(5,2) * t507;
t568 = -t384 - t895;
t565 = t568 * t746 + t477;
t266 = t726 + t934;
t599 = -t266 + t670;
t88 = qJD(1) * t599 + t565;
t862 = t88 * t384;
t758 = rSges(4,2) * t813 + t508 * rSges(4,3);
t287 = rSges(4,1) * t811 - t758;
t668 = -t287 + t691;
t451 = rSges(4,1) * t516 + rSges(4,2) * t519;
t704 = t451 * t746;
t131 = qJD(1) * t668 - t704;
t834 = t131 * t506;
t833 = t131 * t508;
t132 = qJD(1) * t208 - t451 * t748;
t346 = t451 * t508;
t832 = t132 * t346;
t805 = t519 * t521;
t798 = t173 + t347;
t797 = t175 - t348;
t790 = -t506 * t242 + t508 * t243;
t267 = rSges(5,1) * t810 - rSges(5,2) * t816 + t488;
t787 = -t243 - t267;
t786 = -t243 - t319;
t779 = -t448 * t508 - t280;
t776 = -t446 * t508 + t284;
t775 = qJD(1) * t316 + t506 * t744;
t711 = t516 * t750;
t443 = pkin(3) * t711;
t773 = t382 * t750 + t443;
t768 = t952 * t506;
t767 = t952 * t508;
t766 = rSges(5,2) * t714 + rSges(5,3) * t749;
t764 = t507 * t743 + t443;
t313 = rSges(6,2) * t817 + rSges(6,3) * t815;
t317 = rSges(6,2) * t816 + rSges(6,3) * t810;
t762 = rSges(4,2) * t711 + rSges(4,3) * t749;
t757 = t506 ^ 2 + t980;
t737 = -m(5) + t910;
t729 = pkin(3) * t808;
t728 = pkin(3) * t805;
t268 = -rSges(6,2) * t810 + rSges(6,3) * t816 + t490;
t720 = -t268 + t786;
t719 = -t347 + t786;
t717 = t396 + t765;
t701 = -t242 * t748 + t243 * t746 + qJD(2);
t700 = -pkin(2) - t881;
t697 = t749 / 0.2e1;
t696 = -t748 / 0.2e1;
t695 = t748 / 0.2e1;
t694 = -t746 / 0.2e1;
t693 = t746 / 0.2e1;
t687 = rSges(6,1) * t508 - rSges(6,3) * t817;
t675 = t506 * t315 + t508 * t319 + t790;
t674 = rSges(6,1) * t749 + rSges(6,2) * t953 + rSges(6,3) * t707;
t673 = t757 * t895;
t672 = t177 * t746 + t178 * t748 - t362 * t242 + qJDD(2);
t653 = rSges(6,3) * t507 + t865;
t666 = t653 + t689;
t360 = t932 * qJD(3);
t663 = -t360 - t722;
t662 = -t894 - t895;
t660 = t511 + t679;
t454 = rSges(2,1) * t520 - rSges(2,2) * t517;
t452 = rSges(2,1) * t517 + rSges(2,2) * t520;
t453 = -rSges(4,2) * t516 + t881;
t645 = t48 * t508 + t49 * t506;
t644 = t48 * t506 - t49 * t508;
t643 = t50 * t508 + t506 * t51;
t642 = t50 * t506 - t508 * t51;
t641 = t506 * t63 + t508 * t62;
t640 = t506 * t62 - t508 * t63;
t635 = -qJD(1) * t315 + t765 + t937;
t619 = -t132 * t506 - t833;
t616 = t173 * t506 - t175 * t508;
t196 = -rSges(4,2) * t508 * t745 + (-t519 * t750 - t703) * rSges(4,1) + t762;
t344 = t451 * t506;
t197 = -qJD(3) * t344 + (t453 * t508 + t489) * qJD(1);
t615 = t196 * t508 + t197 * t506;
t606 = t287 * t506 + t289 * t508;
t588 = t662 * t508;
t269 = rSges(6,2) * t815 + t687;
t583 = t269 + t598;
t314 = t384 * t506;
t581 = -t288 + t593;
t580 = t660 + t319;
t569 = t666 * t746;
t564 = -t728 + (-t311 - t359) * qJD(3);
t562 = -t162 * t342 + t164 * t343 + t462 * t545;
t561 = (Icges(7,5) * t326 - Icges(7,6) * t327) * t342 - (Icges(7,5) * t328 + Icges(7,6) * t329) * t343 + t333 * t462;
t560 = t315 * t748 + t319 * t746 + t701 - t744;
t556 = -t516 * t776 + t519 * t779;
t555 = -t501 - t931 - t487;
t554 = t568 * t508;
t553 = -pkin(8) * t747 - t195 + t664;
t552 = t507 * t561;
t541 = -qJDD(5) * t507 + t136 * t746 + t137 * t748 + t362 * t315 + t505 * t734 + t672;
t30 = t173 * t343 + t175 * t342 + (t347 * t508 - t348 * t506) * qJD(3) + t560;
t537 = t30 * t616 + (t867 - t870) * t288;
t524 = (t545 * t508 + t618) * t342 - (t545 * t506 + t617) * t343 + (t273 + t609) * t462;
t523 = t524 * t507;
t408 = t453 * qJD(3);
t318 = t384 * t508;
t295 = t707 - t714;
t293 = t757 * t505 * qJD(3);
t223 = -rSges(7,3) * t816 + t767;
t222 = -rSges(7,3) * t817 + t768;
t220 = t547 * t508;
t219 = t547 * t506;
t218 = t546 * t508;
t217 = t546 * t506;
t206 = rSges(7,1) * t328 + rSges(7,2) * t329;
t205 = rSges(7,1) * t326 - rSges(7,2) * t327;
t161 = -rSges(6,3) * t714 + t674;
t160 = t653 * t748 + (t508 * t933 + t490) * qJD(1);
t159 = -qJD(3) * t314 + (t508 * t932 + t488) * qJD(1);
t158 = -rSges(5,1) * t953 - rSges(5,2) * t707 + t766;
t130 = qJD(3) * t606 + qJD(2);
t89 = -t384 * t748 + (t267 + t669) * qJD(1) - t761;
t72 = (t266 * t506 + t267 * t508) * qJD(3) + t701;
t71 = qJD(1) * t196 + qJDD(1) * t289 - t362 * t451 - t408 * t748 + t584;
t70 = -t727 - t408 * t746 + t363 * t451 + (-t197 - t361) * qJD(1) + t668 * qJDD(1);
t67 = -t330 + (qJD(3) * t653 + t476) * t506 + (t268 + t597) * qJD(1) - t761;
t66 = qJD(1) * t583 + t569 + t765;
t61 = qJD(3) * t615 + t287 * t362 - t289 * t363 + qJDD(2);
t52 = (t268 * t508 - t269 * t506) * qJD(3) + t560;
t37 = -t360 * t748 + qJD(1) * t158 + qJDD(1) * t267 - t362 * t384 + (-t362 * t516 - t506 * t805) * pkin(3) + t540;
t36 = t363 * t384 + (-qJD(3) * t360 - t728) * t508 + (-t159 + t796) * qJD(1) + t599 * qJDD(1) + t585;
t20 = t266 * t362 + t787 * t363 + (t158 * t508 + t159 * t506) * qJD(3) + t672;
t19 = -t140 * t546 - t141 * t547 + t184 * t810 + t187 * t326 + t190 * t327 + t545 * t953;
t18 = -t138 * t546 - t139 * t547 + t184 * t815 + t187 * t328 - t190 * t329 - t545 * t567;
t17 = -t363 * t653 + t564 * t508 + t583 * qJDD(1) + (-t160 + t579) * qJD(1) + t551;
t16 = qJD(1) * t161 + qJDD(1) * t268 + t362 * t666 + t506 * t564 + t527;
t15 = t102 * t462 + t342 * t62 - t343 * t63;
t12 = -t269 * t362 + (t160 * t506 + t161 * t508) * qJD(3) + t720 * t363 + t541;
t7 = t140 * t167 - t141 * t169 - t164 * t953 + t326 * t75 + t327 * t77 + t73 * t810;
t6 = t140 * t165 + t141 * t168 - t162 * t953 + t326 * t76 + t327 * t78 + t74 * t810;
t5 = t138 * t167 - t139 * t169 + t164 * t567 + t328 * t75 - t329 * t77 + t73 * t815;
t4 = t138 * t165 + t139 * t168 + t162 * t567 + t328 * t76 - t329 * t78 + t74 * t815;
t3 = (t240 * t506 + t241 * t508) * qJD(3) + t719 * t363 - t173 * t180 + t175 * t179 + t342 * t79 + t343 * t80 - t348 * t362 + t541;
t2 = t179 * t48 + t180 * t49 + t19 * t462 + t342 * t6 - t343 * t7 + t352 * t84;
t1 = t179 * t50 + t18 * t462 + t180 * t51 + t342 * t4 - t343 * t5 + t352 * t85;
t21 = [(t904 + t905) * t13 + (((t508 * t965 + t948 - t964) * t508 + (t506 * t965 + t1018 + t949) * t506) * qJD(3) + t974 + t983) * t696 + (-(-t66 + (t269 - t888) * qJD(1) + t635 + t569) * t67 + t66 * (t403 + t450 - t590) + t67 * (t674 + t717) + (t67 * t588 + t66 * (-t865 + (-rSges(6,3) - qJ(5)) * t507) * t506) * qJD(3) + ((-t517 * t67 - t520 * t66) * pkin(1) + (-t66 * rSges(6,1) + t555 * t67) * t506 + (t66 * (t555 + t877) - t67 * t514) * t508) * qJD(1) + (t16 - g(2)) * (t268 + t580) + (t17 - g(1)) * ((-t479 + (rSges(6,2) - pkin(4)) * t507) * t506 + t667 + t687)) * m(6) + (t132 * (t472 + t762) + (t451 * t834 - t832) * qJD(3) + ((-t131 * t520 - t132 * t517) * pkin(1) + (-pkin(2) - t453) * t833 + (t131 * (-rSges(4,3) - pkin(7)) + t132 * t700) * t506) * qJD(1) - (-t704 - t131 - t365 + (-t287 - t888) * qJD(1)) * t132 + (-g(2) + t71) * t208 + (-g(1) + t70) * (t506 * t700 + t499 + t758 - t888)) * m(4) + t882 - t873 / 0.2e1 + t874 / 0.2e1 + t863 / 0.2e1 + t864 / 0.2e1 + (t947 + t979) * t901 + (m(3) * (t350 ^ 2 + t389 * t351) + m(2) * (t452 ^ 2 + t454 ^ 2) + Icges(2,3) + Icges(3,3) - t1001) * qJDD(1) + (-t1002 * qJD(3) + t1010 * t505 + t1011 * t507 + t406 * t519 + t407 * t516) * qJD(1) + (t44 * (t402 + t403 - t657 + t716) + t45 * (t473 + t717 + t803) + (t8 * (-t931 - t491) - t44 * t476) * t506 + ((-t835 + t875) * t870 + (t505 * t731 - t895) * t867) * qJD(3) + ((-t44 * t520 - t45 * t517) * pkin(1) + (t44 * t929 - t45 * t514) * t508 + (-t44 * pkin(5) + t45 * t929) * t506) * qJD(1) - (t507 * t896 - t479) * t891 - (-t44 + (t348 - t888) * qJD(1) + t635 + t981) * t45 + (t8 - g(1)) * (t348 + t667 + t774) + (t9 - g(2)) * (t580 + t798)) * m(7) + (t970 + t971) * t695 + (t969 - t972 + t973) * t694 + (t968 + t946) * t902 + ((-t385 * t522 - g(2) + t671) * t351 + (-t727 + (-0.2e1 * t389 - t511 + t351) * t522 - g(1)) * t350) * m(3) - m(2) * (-g(1) * t452 + g(2) * t454) - t363 * t127 / 0.2e1 + (t862 * t748 + (t716 + (-t488 - t511 + (-t501 - t932) * t508) * qJD(1)) * t88 + (t554 * qJD(3) + t477 - t565 + t766 + t88 - t937 + (t266 + t888 + t994) * qJD(1)) * t89 + (-g(2) + t37) * (t267 + t660) + (-g(1) + t36) * (-t934 + t994)) * m(5) + ((t964 * t506 + ((t1000 + t1026) * t508 + t950 + t1017 + t1020) * t508) * qJD(3) + t984) * t693 + t18 * t905 + t19 * t906 + t85 * t908 + t84 * t909; m(3) * qJDD(2) + (-m(3) - m(4) + t737) * g(3) + m(4) * t61 + m(5) * t20 + m(6) * t12 + m(7) * t3; ((t748 * t941 + t942) * t506 + ((-t913 * t508 + (t556 + t940) * t506 + t956) * qJD(3) + t945) * t508) * t696 + (t44 * t773 + t3 * t675 + (qJD(1) * t288 * t44 + t3 * t797 + t45 * t553 + t9 * t581) * t506 + (t3 * t798 + t44 * t553 + (qJD(1) * t45 + t8) * t581) * t508 - t44 * (-qJD(1) * t312 - t222 * t462 - t286 * t343 + t764) - t45 * (-pkin(8) * t713 - qJD(1) * t729 + t223 * t462 - t286 * t342 + t775) - ((t173 * t45 - t175 * t44) * t507 + t537 * t505) * qJD(6) - t927 * (-t931 + t661) * qJD(3) - g(1) * (t419 - t729 + t767) - g(2) * (t417 - t730 + t768) - g(3) * (t286 + t715 + t892) - t731 * t925 + ((t240 + t79 + (-t173 + t719) * qJD(1)) * t506 + (qJD(1) * t797 + t241 + t80) * t508 - t222 * t342 - t223 * t343 - (-t757 * t893 - t673) * qJD(3) + t955) * t30) * m(7) + (t969 * qJD(1) + t944 * qJD(3) - qJDD(1) * t1016 + t950 * t362 + t951 * t363 + t1) * t897 + (t506 * t946 - t508 * t947) * qJDD(1) / 0.2e1 - (((t506 * t776 - t508 * t777) * t519 + (t506 * t779 + t508 * t780) * t516 + t975 * t507 + t978 * t505) * qJD(3) + (t976 * t505 + t977 * t507 + t516 * t760 + t519 * t759) * qJD(1)) * qJD(1) / 0.2e1 + (t13 * t508 + t14 * t506) * t742 / 0.2e1 + (qJD(1) * t641 + t10 * t506 - t11 * t508) * t899 - t15 * t741 / 0.2e1 + (t972 * t508 + t971 * t506 + (t506 * t947 + t508 * t946) * qJD(1)) * qJD(1) / 0.2e1 + (t13 + t973) * t697 + (t14 + t974) * t750 / 0.2e1 + (qJD(1) * t970 + t943 * qJD(3) + qJDD(1) * t968 + t948 * t362 + t949 * t363 + t2) * t898 + (((-t218 * t518 - t220 * t515 + t162) * t342 - (-t217 * t518 - t219 * t515 + t164) * t343 + (-t277 * t518 - t281 * t515 - t545) * t462 + t102 * qJD(6)) * t507 + (-qJD(6) * t641 + t524) * t505) * t900 + (-g(1) * t554 - g(3) * t935 - t568 * t889 - (t88 * t314 + t89 * (-t318 - t729)) * qJD(1) - (-t72 * t673 + (-t72 * t318 - t88 * t935) * t508 + (-t72 * t314 - t89 * t935) * t506) * qJD(3) + t20 * t790 + t72 * t721 + (t36 * t568 + t88 * t663 + t20 * t267 + t72 * t158 + (t72 * t266 + t568 * t89) * qJD(1)) * t508 + (t37 * t568 + t89 * t663 + t20 * t266 + t72 * t159 + (t72 * t787 + t862) * qJD(1)) * t506) * m(5) + ((-t746 * t940 - t942) * t508 + ((t556 * t506 + (-t913 - t941) * t508 + t956) * qJD(3) + t945) * t506) * t693 + (t12 * t675 + (t12 * t268 + t17 * t666) * t508 + (-t12 * t269 + t16 * t666) * t506 - g(1) * (t419 + t588 + t317) - g(2) * (t506 * t662 + t313 + t417) - g(3) * t936 + (-t775 + t939 * t506 + (t508 * t666 - t317 + t729) * qJD(1)) * t67 + (-t764 + t773 + t939 * t508 + (-t506 * t653 + t312 + t313) * qJD(1)) * t66 + ((-qJD(1) * t269 + t161) * t508 + (qJD(1) * t720 + t160) * t506 - (t313 * t506 + t317 * t508 - t673) * qJD(3) + t955) * t52) * m(6) + ((t506 * t949 + t508 * t948) * qJD(1) + t943) * t695 + ((t506 * t951 + t508 * t950) * qJD(1) + t944) * t694 + t986 * t901 + t987 * t902 + (g(1) * t346 + g(2) * t344 - g(3) * t453 - (t131 * t344 - t832) * qJD(1) - (t130 * (-t344 * t506 - t346 * t508) + t619 * t453) * qJD(3) + t61 * t606 + t130 * ((t287 * t508 - t289 * t506) * qJD(1) + t615) + t619 * t408 + (-t71 * t506 - t70 * t508 + (-t132 * t508 + t834) * qJD(1)) * t451) * m(4) + t640 * t903 + ((t218 * t328 - t220 * t329) * t342 - (t217 * t328 - t219 * t329) * t343 + (t277 * t328 - t281 * t329) * t462 + (-t50 * t816 + t507 * t85) * qJD(6) + ((-qJD(6) * t51 + t562) * t505 + t523) * t506) * t904 + (qJD(1) * t643 + t4 * t506 - t5 * t508) * t905 + (qJD(1) * t645 + t506 * t6 - t508 * t7) * t906 + ((t218 * t326 + t220 * t327) * t342 - (t217 * t326 + t219 * t327) * t343 + (t277 * t326 + t281 * t327) * t462 + (-t49 * t817 + t507 * t84) * qJD(6) + ((-qJD(6) * t48 + t562) * t505 + t523) * t508) * t907 + t642 * t908 + t644 * t909; t737 * (-g(2) * t508 + t891) + 0.2e1 * (t887 / 0.2e1 - t886 / 0.2e1) * m(7) + 0.2e1 * (t16 * t897 + t17 * t898) * m(6) + 0.2e1 * (t36 * t898 + t37 * t897) * m(5); t910 * (-g(3) * t507 + t925) - m(6) * (t293 * t52 + t294 * t67 + t295 * t66) - m(7) * (t293 * t30 + t294 * t45 + t295 * t44) + 0.2e1 * ((t66 * t746 + t67 * t748 - t12) * t912 + (t44 * t746 + t45 * t748 - t3) * t911) * t507 + 0.2e1 * ((qJD(3) * t52 + t16 * t506 + t17 * t508 - t66 * t750 + t67 * t749) * t912 + (qJD(3) * t30 - t44 * t750 + t45 * t749 + t506 * t9 + t508 * t8) * t911) * t505; t2 * t810 / 0.2e1 + (t505 * t84 + t507 * t645) * t909 + ((-qJD(3) * t645 + t19) * t505 + (-qJD(1) * t644 + qJD(3) * t84 + t506 * t7 + t508 * t6) * t507) * t906 + t1 * t815 / 0.2e1 + (t505 * t85 + t507 * t643) * t908 + ((-qJD(3) * t643 + t18) * t505 + (-qJD(1) * t642 + qJD(3) * t85 + t4 * t508 + t5 * t506) * t507) * t905 + t15 * t747 / 0.2e1 + t505 * (t863 + t864 - t873 + t874 + t882) / 0.2e1 + (t102 * t505 + t507 * t641) * t903 + ((-qJD(3) * t641 + t31) * t505 + (-qJD(1) * t640 + qJD(3) * t102 + t10 * t508 + t11 * t506) * t507) * t899 + (t538 * t326 - t327 * t539 + t508 * t552) * t907 + (t328 * t538 + t329 * t539 + t506 * t552) * t904 + (t561 * t505 + (t539 * t515 - t518 * t538) * t507) * t900 + (t505 * t696 + t507 * t697) * t14 + (-t712 / 0.2e1 + t505 * t694) * t13 + ((qJD(3) * t537 + t9 * t173 - t8 * t175 - t44 * t79 + t45 * t80) * t505 + (t44 * (-qJD(3) * t175 + t195 * t506) + t45 * (qJD(3) * t173 - t195 * t508) - t3 * t616 + t30 * (-t173 * t749 - t175 * t750 - t506 * t80 + t508 * t79) + (qJD(1) * t927 - t886 + t887) * t288) * t507 - t44 * (-t206 * t462 - t343 * t345) - t45 * (t205 * t462 - t342 * t345) - t30 * (t205 * t343 + t206 * t342) - g(1) * t205 - g(2) * t206 - g(3) * t345) * m(7);];
tau  = t21;
