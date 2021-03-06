% Calculate vector of inverse dynamics joint torques for
% S5RRRPP5
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
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3]';
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
% Datum: 2019-12-31 20:59
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau = S5RRRPP5_invdynJ_fixb_slag_vp1(qJ, qJD, qJDD, g, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(7,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRPP5_invdynJ_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRPP5_invdynJ_fixb_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RRRPP5_invdynJ_fixb_slag_vp1: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRRPP5_invdynJ_fixb_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S5RRRPP5_invdynJ_fixb_slag_vp1: pkin has to be [7x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRRPP5_invdynJ_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RRRPP5_invdynJ_fixb_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RRRPP5_invdynJ_fixb_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From invdyn_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 20:57:36
% EndTime: 2019-12-31 20:58:27
% DurationCPUTime: 44.11s
% Computational Cost: add. (18453->964), mult. (24966->1131), div. (0->0), fcn. (19642->6), ass. (0->515)
t980 = -Icges(5,1) - Icges(6,1);
t514 = qJ(2) + qJ(3);
t490 = cos(t514);
t472 = Icges(4,4) * t490;
t489 = sin(t514);
t387 = Icges(4,1) * t489 + t472;
t811 = Icges(5,5) * t490;
t814 = Icges(6,4) * t490;
t970 = t980 * t489 + t811 + t814;
t973 = t387 - t970;
t516 = sin(qJ(1));
t766 = t490 * t516;
t769 = t489 * t516;
t518 = cos(qJ(1));
t804 = Icges(4,6) * t518;
t276 = Icges(4,4) * t766 - Icges(4,2) * t769 - t804;
t374 = Icges(5,3) * t489 + t811;
t268 = -Icges(5,6) * t518 + t374 * t516;
t378 = Icges(6,2) * t489 + t814;
t272 = Icges(6,6) * t518 + t378 * t516;
t971 = -t268 - t272;
t979 = t276 + t971;
t604 = -Icges(4,2) * t489 + t472;
t277 = Icges(4,6) * t516 + t518 * t604;
t765 = t490 * t518;
t442 = Icges(5,5) * t765;
t768 = t489 * t518;
t803 = Icges(5,6) * t516;
t269 = Icges(5,3) * t768 + t442 + t803;
t443 = Icges(6,4) * t765;
t801 = Icges(6,6) * t516;
t273 = Icges(6,2) * t768 + t443 - t801;
t959 = t269 + t273;
t978 = t277 - t959;
t470 = Icges(5,5) * t489;
t607 = Icges(5,1) * t490 + t470;
t280 = -Icges(5,4) * t518 + t516 * t607;
t471 = Icges(6,4) * t489;
t606 = Icges(6,1) * t490 + t471;
t278 = Icges(6,5) * t518 + t516 * t606;
t444 = Icges(4,4) * t769;
t812 = Icges(4,5) * t518;
t282 = Icges(4,1) * t766 - t444 - t812;
t962 = -t278 - t282;
t977 = t280 - t962;
t281 = Icges(5,4) * t516 + t518 * t607;
t279 = -Icges(6,5) * t516 + t518 * t606;
t816 = Icges(4,4) * t489;
t388 = Icges(4,1) * t490 - t816;
t283 = Icges(4,5) * t516 + t388 * t518;
t961 = t279 + t283;
t958 = t281 + t961;
t976 = t470 + t471 + (-Icges(6,2) - Icges(5,3)) * t490;
t381 = Icges(4,2) * t490 + t816;
t972 = t381 - t976;
t975 = -t374 - t378;
t974 = -t387 * t518 - t978;
t969 = t976 * t516 + t977;
t968 = (Icges(4,6) - Icges(5,6) + Icges(6,6)) * t490 + (Icges(5,4) + Icges(4,5) - Icges(6,5)) * t489;
t967 = t388 + t606 + t607 - t972;
t966 = -t604 - t973 - t975;
t965 = -t972 * t518 + t958;
t964 = t973 * t516 + t979;
t376 = Icges(4,5) * t490 - Icges(4,6) * t489;
t271 = Icges(4,3) * t516 + t376 * t518;
t380 = Icges(5,4) * t490 + Icges(5,6) * t489;
t275 = Icges(5,2) * t516 + t380 * t518;
t963 = -t271 - t275;
t960 = -t972 * t489 + t973 * t490;
t372 = Icges(6,5) * t490 + Icges(6,6) * t489;
t957 = t372 - t376 - t380;
t885 = t276 * t489;
t593 = -t282 * t490 + t885;
t595 = t272 * t489 + t278 * t490;
t597 = t268 * t489 + t280 * t490;
t956 = -t593 + t595 + t597;
t511 = qJD(2) + qJD(3);
t955 = t967 * t511;
t954 = t966 * t511;
t953 = -t958 * qJD(1) + t964 * t511;
t417 = t511 * t518;
t952 = t970 * t417 + t974 * t511 + (-t388 * t516 - t278 - t280 + t812) * qJD(1);
t416 = t511 * t516;
t951 = -t381 * t416 + t969 * t511 + (t975 * t518 + t277 + t801 - t803) * qJD(1);
t950 = t965 * t511 + (-t516 * t604 + t804 - t971) * qJD(1);
t949 = t968 * t518;
t948 = t968 * t516;
t839 = rSges(6,1) + pkin(4);
t756 = -t269 * t769 - t281 * t766;
t267 = -Icges(6,3) * t516 + t372 * t518;
t101 = t518 * t267 + t273 * t769 + t279 * t766;
t209 = t283 * t766;
t644 = t271 * t518 - t209;
t929 = -t277 * t769 + t101 - t644;
t899 = -t275 * t518 - t756 + t929;
t109 = t269 * t768 + t516 * t275 + t281 * t765;
t884 = t277 * t768;
t947 = t516 * t271 + t273 * t768 + t961 * t765;
t928 = -t267 * t516 - t884 + t947;
t897 = t109 + t928;
t798 = Icges(4,3) * t518;
t270 = Icges(4,5) * t766 - Icges(4,6) * t769 - t798;
t946 = -t516 * t270 - t272 * t768 + t962 * t765;
t266 = Icges(6,3) * t518 + t372 * t516;
t274 = -Icges(5,2) * t518 + t380 * t516;
t945 = (-t266 + t274) * qJD(1);
t896 = t960 * t516 - t949;
t895 = t960 * t518 + t948;
t944 = (t267 + t963) * qJD(1);
t569 = t593 * t516;
t785 = t270 * t518;
t786 = t266 * t518;
t943 = -t516 * t595 + t569 + t785 - t786;
t787 = t266 * t516;
t942 = t276 * t768 + t787 + t946;
t941 = t968 * qJD(1) + t954 * t489 + t955 * t490;
t940 = -t950 * t489 + t952 * t490 - t944;
t939 = -qJD(1) * t270 + t951 * t489 + t953 * t490 - t945;
t938 = t964 * t417 + (t980 * t768 + t442 + t443 + t974) * t416 + t967 * qJD(1);
t937 = (-Icges(4,2) * t766 - t444 + t969) * t417 - t965 * t416 + t966 * qJD(1);
t936 = t960 * qJD(1) + t957 * t511;
t935 = t956 * qJD(1) + t948 * t511 + t944;
t783 = t277 * t489;
t934 = t945 + t949 * t511 + (t376 * t516 + t959 * t489 + t958 * t490 - t783 - t798) * qJD(1);
t932 = rSges(6,2) * t768 + t839 * t765;
t241 = t516 * t274;
t108 = t268 * t768 + t280 * t765 + t241;
t931 = t895 * qJD(1) - t108 * t417;
t784 = t274 * t518;
t102 = t516 * t597 - t784;
t930 = -t896 * qJD(1) + t102 * t417;
t474 = t489 * rSges(6,2);
t879 = t490 * rSges(6,1) + t474;
t285 = rSges(6,3) * t518 + t516 * t879;
t685 = t417 * t490;
t404 = rSges(6,2) * t685;
t686 = t489 * t417;
t706 = qJD(1) * t516;
t562 = -t490 * t706 - t686;
t700 = qJD(5) * t516;
t705 = qJD(1) * t518;
t759 = -rSges(6,1) * t686 + pkin(4) * t562 - qJ(5) * t705 - qJD(1) * t285 + t404 - t700;
t390 = rSges(6,1) * t489 - rSges(6,2) * t490;
t672 = t490 * t705;
t687 = t489 * t416;
t699 = qJD(5) * t518;
t828 = rSges(6,3) * t516;
t758 = -t390 * t416 + (t518 * t879 - t828) * qJD(1) - qJ(5) * t706 + t699 + (t672 - t687) * pkin(4);
t736 = pkin(4) * t766 + qJ(5) * t518 + t285;
t735 = -qJ(5) * t516 - t828 + t932;
t449 = rSges(6,2) * t766;
t344 = -rSges(6,1) * t769 + t449;
t439 = qJ(4) * t765;
t348 = -pkin(3) * t768 + t439;
t453 = rSges(6,2) * t765;
t349 = -rSges(6,1) * t768 + t453;
t469 = t489 * qJ(4);
t876 = t490 * pkin(3) + t469;
t610 = t490 * pkin(4) + t876 + t879;
t347 = t876 * t516;
t509 = t518 * pkin(6);
t435 = pkin(1) * t516 - t509;
t517 = cos(qJ(2));
t508 = t517 * pkin(2);
t482 = t508 + pkin(1);
t519 = -pkin(7) - pkin(6);
t486 = t518 * t519;
t716 = -t516 * t482 - t486;
t264 = t435 + t716;
t507 = t516 * pkin(6);
t436 = t518 * pkin(1) + t507;
t446 = t518 * t482;
t634 = -t516 * t519 + t446;
t265 = t634 - t436;
t703 = qJD(2) * t518;
t704 = qJD(2) * t516;
t750 = -t264 * t704 + t265 * t703;
t575 = -qJD(4) * t490 + t416 * t347 + t750;
t352 = pkin(3) * t765 + qJ(4) * t768;
t677 = t352 + t735;
t62 = t416 * t736 + t417 * t677 + t575;
t691 = -pkin(3) - t839;
t632 = t518 * t691;
t673 = t489 * t705;
t702 = qJD(4) * t516;
t432 = t490 * t702;
t732 = qJD(1) * t348 + t432;
t437 = qJ(4) * t766;
t343 = -pkin(3) * t769 + t437;
t468 = qJD(4) * t489;
t752 = t416 * t343 + t468;
t389 = pkin(3) * t489 - qJ(4) * t490;
t258 = t416 * t389;
t515 = sin(qJ(2));
t764 = t515 * t516;
t690 = pkin(2) * t764;
t460 = qJD(2) * t690;
t666 = t489 * t702;
t619 = -t460 + t666;
t561 = t619 + t699;
t628 = -t265 - t677;
t658 = -pkin(4) * t489 - t390;
t79 = -t258 + t658 * t416 + (t436 - t628) * qJD(1) + t561;
t836 = g(2) * t516;
t912 = -t62 * (t416 * t344 + t752 + (-pkin(4) * t768 + t348 + t349) * t417) - t79 * (-pkin(4) * t673 + qJD(1) * t349 + t732) - (-t62 * pkin(4) * t769 - t610 * t79) * t416 - (g(1) * t632 + t691 * t836) * t489;
t448 = rSges(5,3) * t766;
t345 = -rSges(5,1) * t769 + t448;
t452 = rSges(5,3) * t765;
t350 = -rSges(5,1) * t768 + t452;
t840 = -rSges(5,1) - pkin(3);
t675 = t518 * t840;
t878 = t490 * rSges(5,1) + t489 * rSges(5,3);
t722 = -t876 - t878;
t506 = t518 * rSges(5,2);
t286 = t516 * t878 - t506;
t503 = t516 * rSges(5,2);
t289 = rSges(5,1) * t765 + rSges(5,3) * t768 + t503;
t734 = t289 + t352;
t77 = t286 * t416 + t417 * t734 + t575;
t678 = -t265 - t734;
t831 = rSges(5,1) * t489;
t391 = -rSges(5,3) * t490 + t831;
t773 = t391 * t416;
t87 = -t773 - t258 + (t436 - t678) * qJD(1) + t619;
t911 = -t77 * (t416 * t345 + (t348 + t350) * t417 + t752) - t87 * (qJD(1) * t350 + t416 * t722 + t732) - (g(1) * t675 + t836 * t840) * t489;
t910 = t935 * t516 + t939 * t518;
t909 = -t934 * t516 + t940 * t518;
t908 = t939 * t516 - t935 * t518;
t907 = t940 * t516 + t934 * t518;
t906 = t899 * t416 + t943 * t417 - t930;
t905 = t897 * t416 + t942 * t417 + t931;
t904 = -t936 * t516 + t941 * t518;
t903 = t941 * t516 + t936 * t518;
t902 = t953 * t489 - t951 * t490;
t901 = t952 * t489 + t950 * t490;
t900 = t102 - t943;
t898 = t108 - t942;
t894 = t977 * t489 + t979 * t490;
t893 = t958 * t489 + t978 * t490;
t892 = t937 * t489 + t938 * t490;
t891 = -t957 * qJD(1) - t949 * t416 + t948 * t417;
t392 = rSges(4,1) * t489 + rSges(4,2) * t490;
t346 = t392 * t516;
t351 = t392 * t518;
t477 = t490 * rSges(4,1);
t877 = -rSges(4,2) * t489 + t477;
t287 = rSges(4,1) * t766 - rSges(4,2) * t769 - t518 * rSges(4,3);
t501 = t516 * rSges(4,3);
t290 = rSges(4,1) * t765 - rSges(4,2) * t768 + t501;
t97 = t287 * t416 + t290 * t417 + t750;
t668 = t515 * t703;
t630 = pkin(2) * t668;
t564 = -t392 * t417 - t630;
t744 = t264 - t435;
t680 = -t287 + t744;
t98 = qJD(1) * t680 + t564;
t743 = -t265 - t290;
t99 = -t392 * t416 - t460 + (t436 - t743) * qJD(1);
t890 = -(qJD(1) * t346 - t417 * t877) * t98 - t97 * (-t416 * t346 - t351 * t417) - t99 * (-qJD(1) * t351 - t416 * t877);
t694 = qJD(1) * qJD(2);
t410 = qJDD(2) * t516 + t518 * t694;
t693 = qJD(1) * qJD(3);
t293 = qJDD(3) * t516 + t518 * t693 + t410;
t402 = t511 * t439;
t701 = qJD(4) * t518;
t433 = t489 * t701;
t674 = t489 * t706;
t139 = pkin(3) * t562 - qJ(4) * t674 + t402 + t433;
t487 = pkin(6) * t705;
t833 = pkin(1) - t482;
t193 = -t630 - t487 + (t516 * t833 - t486) * qJD(1);
t727 = qJD(1) * (-pkin(1) * t706 + t487) + qJDD(1) * t436;
t760 = t517 * qJD(2) ^ 2;
t545 = qJD(1) * t193 + qJDD(1) * t265 + (-t410 * t515 - t516 * t760) * pkin(2) + t727;
t692 = qJDD(4) * t489;
t529 = qJDD(1) * t352 + t511 * t432 + t516 * t692 + t545 + (t139 + t433) * qJD(1);
t238 = t511 * t469 + (pkin(3) * t511 - qJD(4)) * t490;
t312 = t879 * t511;
t767 = t490 * t511;
t582 = -pkin(4) * t767 - t238 - t312;
t622 = -t389 + t658;
t15 = t529 + t582 * t416 + t622 * t293 + t735 * qJDD(1) + (-t700 + t759) * qJD(1) + qJDD(5) * t518;
t889 = t15 - g(2);
t478 = t516 * t694;
t294 = t516 * t693 + t478 + (-qJDD(2) - qJDD(3)) * t518;
t434 = t490 * t701;
t411 = -qJDD(2) * t518 + t478;
t838 = pkin(2) * t515;
t583 = -pkin(2) * t518 * t760 + t411 * t838;
t552 = -t417 * t238 + t294 * t389 + t511 * t434 + t518 * t692 + t583;
t255 = t416 * t490 + t673;
t408 = pkin(3) * t687;
t140 = pkin(3) * t672 + qJ(4) * t255 - t408 + t666;
t462 = t519 * t706;
t713 = t460 + t462;
t194 = (-t518 * t833 - t507) * qJD(1) - t713;
t409 = t436 * qJD(1);
t757 = -t194 - t409;
t568 = -t140 - t666 + t757;
t679 = -t347 + t744;
t611 = t679 - t736;
t16 = -qJDD(5) * t516 + t294 * t390 - t417 * t312 + (t294 * t489 - t417 * t767) * pkin(4) + t611 * qJDD(1) + (t568 - t699 - t758) * qJD(1) + t552;
t888 = t16 - g(1);
t721 = rSges(5,2) * t705 + rSges(5,3) * t685;
t166 = rSges(5,1) * t562 - rSges(5,3) * t674 + t721;
t723 = -t389 - t391;
t313 = t878 * t511;
t748 = -t238 - t313;
t21 = qJD(1) * t166 + qJDD(1) * t289 + t293 * t723 + t416 * t748 + t529;
t887 = t21 * t516;
t169 = -t773 + (t518 * t878 + t503) * qJD(1);
t629 = -t286 + t679;
t20 = t294 * t391 - t313 * t417 + t629 * qJDD(1) + (-t169 + t568) * qJD(1) + t552;
t886 = qJD(1) * t87 + t20;
t413 = qJD(1) * t435;
t881 = qJD(1) * t264 - t413;
t880 = t408 + t462;
t500 = Icges(3,4) * t517;
t605 = -Icges(3,2) * t515 + t500;
t424 = Icges(3,1) * t515 + t500;
t631 = t691 * t490;
t875 = -t469 - t482 - t474 + t631;
t874 = -t786 + t947;
t872 = g(1) * t518 + t836;
t418 = pkin(4) * t674;
t869 = pkin(4) * t685 + t417 * t879 - t418;
t762 = t516 * t517;
t799 = Icges(3,3) * t518;
t315 = Icges(3,5) * t762 - Icges(3,6) * t764 - t799;
t465 = Icges(3,4) * t764;
t813 = Icges(3,5) * t518;
t319 = Icges(3,1) * t762 - t465 - t813;
t805 = Icges(3,6) * t518;
t317 = Icges(3,4) * t762 - Icges(3,2) * t764 - t805;
t781 = t317 * t515;
t591 = -t319 * t517 + t781;
t112 = -t315 * t518 - t516 * t591;
t421 = Icges(3,5) * t517 - Icges(3,6) * t515;
t420 = Icges(3,5) * t515 + Icges(3,6) * t517;
t565 = qJD(2) * t420;
t817 = Icges(3,4) * t515;
t425 = Icges(3,1) * t517 - t817;
t320 = Icges(3,5) * t516 + t425 * t518;
t318 = Icges(3,6) * t516 + t518 * t605;
t780 = t318 * t515;
t590 = -t320 * t517 + t780;
t862 = -t518 * t565 + (-t421 * t516 + t590 + t799) * qJD(1);
t316 = Icges(3,3) * t516 + t421 * t518;
t708 = qJD(1) * t316;
t861 = qJD(1) * t591 - t516 * t565 + t708;
t422 = Icges(3,2) * t517 + t817;
t584 = t422 * t515 - t424 * t517;
t857 = qJD(1) * t584 + t421 * qJD(2);
t856 = t516 * (-t422 * t518 + t320) - t518 * (-Icges(3,2) * t762 + t319 - t465);
t852 = m(5) / 0.2e1;
t851 = m(6) / 0.2e1;
t850 = t293 / 0.2e1;
t849 = t294 / 0.2e1;
t848 = t410 / 0.2e1;
t847 = t411 / 0.2e1;
t846 = -t416 / 0.2e1;
t845 = t416 / 0.2e1;
t844 = -t417 / 0.2e1;
t843 = t417 / 0.2e1;
t842 = t516 / 0.2e1;
t841 = -t518 / 0.2e1;
t835 = -qJD(1) / 0.2e1;
t834 = qJD(1) / 0.2e1;
t832 = rSges(3,1) * t517;
t830 = rSges(3,2) * t517;
t502 = t516 * rSges(3,3);
t826 = t98 * t392;
t825 = qJDD(1) / 0.2e1;
t824 = -rSges(6,2) - qJ(4);
t823 = -rSges(5,3) - qJ(4);
t822 = rSges(6,3) + qJ(5);
t795 = qJD(1) * t62;
t794 = qJD(1) * t77;
t426 = rSges(3,1) * t515 + t830;
t669 = t426 * t703;
t712 = rSges(3,2) * t764 + t518 * rSges(3,3);
t321 = rSges(3,1) * t762 - t712;
t729 = -t321 - t435;
t173 = qJD(1) * t729 - t669;
t790 = t173 * t516;
t789 = t173 * t518;
t761 = t517 * t518;
t763 = t515 * t518;
t322 = rSges(3,1) * t761 - rSges(3,2) * t763 + t502;
t235 = t322 + t436;
t174 = qJD(1) * t235 - t426 * t704;
t367 = t426 * t518;
t788 = t174 * t367;
t771 = t420 * t516;
t770 = t420 * t518;
t749 = -t516 * t264 + t518 * t265;
t747 = t516 * t287 + t518 * t290;
t746 = -t516 * t315 - t319 * t761;
t745 = t516 * t316 + t320 * t761;
t733 = t516 * t347 + t518 * t352;
t353 = t389 * t706;
t728 = t391 * t706 + t353;
t720 = rSges(4,2) * t674 + rSges(4,3) * t705;
t719 = -t422 + t425;
t718 = t424 + t605;
t717 = -t417 * t876 + t434;
t671 = t515 * t706;
t714 = rSges(3,2) * t671 + rSges(3,3) * t705;
t707 = qJD(1) * t421;
t177 = -t516 * t584 - t770;
t695 = t177 * qJD(1);
t689 = qJD(2) * t508;
t688 = -t519 - t822;
t684 = t518 * t139 + t516 * t140 + t347 * t705;
t167 = rSges(4,1) * t562 - rSges(4,2) * t685 + t720;
t170 = -t511 * t346 + (t518 * t877 + t501) * qJD(1);
t683 = t518 * t167 + t516 * t170 + t287 * t705;
t682 = t518 * t193 + t516 * t194 - t264 * t705;
t676 = t390 * t706 + t353 + t418;
t670 = t515 * t705;
t665 = -pkin(1) - t832;
t664 = t706 / 0.2e1;
t663 = t705 / 0.2e1;
t662 = -t704 / 0.2e1;
t661 = t704 / 0.2e1;
t660 = -t703 / 0.2e1;
t659 = t703 / 0.2e1;
t563 = -t392 - t838;
t657 = t515 * (-t516 ^ 2 - t518 ^ 2);
t252 = t320 * t762;
t643 = t316 * t518 - t252;
t642 = -t270 + t783;
t635 = -t315 + t780;
t627 = t516 * t286 + t518 * t289 + t733;
t625 = t437 - t690;
t624 = -pkin(2) * t763 + t439;
t623 = t723 - t838;
t314 = t877 * t511;
t621 = -t314 - t689;
t429 = rSges(2,1) * t518 - rSges(2,2) * t516;
t427 = rSges(2,1) * t516 + rSges(2,2) * t518;
t428 = -rSges(3,2) * t515 + t832;
t176 = t318 * t517 + t320 * t515;
t566 = qJD(2) * t422;
t186 = -t518 * t566 + (-t516 * t605 + t805) * qJD(1);
t567 = qJD(2) * t424;
t188 = -t518 * t567 + (-t425 * t516 + t813) * qJD(1);
t531 = -qJD(2) * t176 - t186 * t515 + t188 * t517 + t708;
t175 = t317 * t517 + t319 * t515;
t187 = qJD(1) * t318 - t516 * t566;
t189 = qJD(1) * t320 - t516 * t567;
t532 = qJD(1) * t315 - qJD(2) * t175 - t187 * t515 + t189 * t517;
t614 = -(t516 * t861 + t532 * t518) * t518 + (t516 * t862 + t531 * t518) * t516;
t613 = t516 * (t531 * t516 - t518 * t862) - t518 * (t532 * t516 - t518 * t861);
t612 = -t516 * t99 - t518 * t98;
t113 = -t318 * t764 - t643;
t601 = -t112 * t518 + t113 * t516;
t114 = -t317 * t763 - t746;
t115 = -t318 * t763 + t745;
t600 = -t114 * t518 + t115 * t516;
t599 = -t174 * t516 - t789;
t190 = -t703 * t830 + (-t517 * t706 - t668) * rSges(3,1) + t714;
t366 = t426 * t516;
t191 = -qJD(2) * t366 + (t428 * t518 + t502) * qJD(1);
t598 = t190 * t518 + t191 * t516;
t589 = t321 * t516 + t322 * t518;
t585 = t422 * t517 + t424 * t515;
t581 = t433 - t630;
t580 = -t689 + t748;
t579 = t193 * t703 + t194 * t704 - t410 * t264 - t265 * t411;
t578 = -t101 + t787;
t577 = t79 * t622;
t461 = pkin(2) * t671;
t576 = -qJD(1) * t343 + t461 + t717;
t574 = t518 * t166 + t516 * t169 + t286 * t705 + t684;
t573 = t736 * t516 + t735 * t518 + t733;
t571 = t267 + t595;
t570 = t622 - t838;
t557 = t581 - t700;
t556 = t317 * t518 - t318 * t516;
t555 = -qJD(1) * t347 + t581 + t881;
t554 = t582 - t689;
t553 = t758 * t516 + t759 * t518 + t736 * t705 + t684;
t551 = (-t515 * t718 + t517 * t719) * qJD(1);
t549 = -t482 + t722;
t547 = -qJDD(4) * t490 + t416 * t140 + t293 * t347 + t511 * t468 + t579;
t400 = t605 * qJD(2);
t401 = t425 * qJD(2);
t530 = qJD(1) * t420 - qJD(2) * t585 - t400 * t515 + t401 * t517;
t527 = -t515 * t856 + t556 * t517;
t523 = (t897 * t516 - t898 * t518) * t850 + (t899 * t516 - t900 * t518) * t849 + (t891 * t516 + t892 * t518) * t846 + (t910 * t518 + t909 * t516 + (t898 * t516 + t897 * t518) * qJD(1)) * t845 + (t908 * t518 + t907 * t516 + (t900 * t516 + t899 * t518) * qJD(1)) * t844 + (t892 * t516 - t891 * t518) * t843 + (t904 * qJD(1) + t895 * qJDD(1) + t897 * t293 + t898 * t294 + t909 * t416 + t910 * t417) * t842 + (t903 * qJD(1) + t896 * qJDD(1) + t899 * t293 + t900 * t294 + t907 * t416 + t908 * t417) * t841 + (t938 * t489 - t937 * t490) * t835 + (t902 * t518 + t901 * t516 + (t894 * t516 + t893 * t518) * qJD(1)) * t834 + (t893 * t516 - t894 * t518) * t825 + t906 * t664 + t905 * t663;
t405 = t428 * qJD(2);
t262 = t417 * t878;
t259 = t417 * t389;
t256 = -t674 + t685;
t200 = (t416 * t516 + t417 * t518) * t489;
t178 = -t518 * t584 + t771;
t172 = t178 * qJD(1);
t171 = t589 * qJD(2);
t93 = qJD(1) * t190 + qJDD(1) * t322 - t405 * t704 - t410 * t426 + t727;
t92 = -t405 * t703 + t411 * t426 + t729 * qJDD(1) + (-t191 - t409) * qJD(1);
t91 = t530 * t516 - t518 * t857;
t90 = t516 * t857 + t530 * t518;
t89 = -qJD(2) * t590 + t186 * t517 + t188 * t515;
t88 = -t591 * qJD(2) + t187 * t517 + t189 * t515;
t86 = qJD(1) * t629 - t391 * t417 - t259 + t581;
t78 = qJD(1) * t611 + t417 * t658 - t259 + t557;
t70 = qJD(2) * t600 + t172;
t69 = qJD(2) * t601 + t695;
t61 = qJD(1) * t167 + qJDD(1) * t290 - t293 * t392 - t314 * t416 + t545;
t60 = t294 * t392 - t314 * t417 + t680 * qJDD(1) + (-t170 + t757) * qJD(1) + t583;
t28 = t167 * t417 + t170 * t416 + t287 * t293 - t290 * t294 + t579;
t14 = t169 * t416 + t286 * t293 + (t139 + t166) * t417 - t734 * t294 + t547;
t13 = t758 * t416 + t736 * t293 + (t139 + t759) * t417 - t677 * t294 + t547;
t1 = [-m(2) * (-g(1) * t427 + g(2) * t429) + (t172 + ((t113 - t252 + (t316 + t781) * t518 + t746) * t518 + t745 * t516) * qJD(2)) * t659 + (t178 + t176) * t848 + (t177 + t175) * t847 + (t69 - t695 + ((t518 * t635 + t115 - t745) * t518 + (t516 * t635 + t114 + t643) * t516) * qJD(2)) * t662 + (t90 + t89) * t661 + (((t276 * t518 + t277 * t516) * t489 + t644 + t578 + t929 + t946) * t417 + (-t884 - t282 * t766 + t109 + t784 + t785 + (-t571 - t597 + t885) * t516 + t874 + t900) * t416 + t931) * t843 + (t88 + t91 + t70) * t660 + (-qJD(2) * t584 + t400 * t517 + t401 * t515 + t955 * t489 - t954 * t490) * qJD(1) + (-(-qJD(1) * t736 + t555 - t700 - t78) * t79 + t78 * (-t561 + t880) + t79 * (t402 + t404 + t557) + (t78 * t824 * t766 + (t516 * t78 * t839 + t632 * t79) * t489) * t511 + ((t78 * t822 + t79 * t875) * t516 + (t688 * t79 + t78 * t875) * t518) * qJD(1) + t889 * (t516 * t688 + t352 + t446 + t932) + t888 * (-t822 * t518 + (t489 * t824 + t631) * t516 + t716) - t577 * t417) * m(6) + (-(-qJD(1) * t286 + t417 * t723 + t555 - t86) * t87 + t86 * (-t619 + t880) + t87 * (t402 + t581 + t721) + (t87 * t489 * t675 + t86 * (t490 * t823 + t831) * t516) * t511 + ((-t87 * t519 + t549 * t86) * t518 + (-t86 * rSges(5,2) + t549 * t87) * t516) * qJD(1) + (t21 - g(2)) * (t634 + t734) + (t20 - g(1)) * (t506 + (t489 * t823 + t490 * t840) * t516 + t716)) * m(5) + (-(-qJD(1) * t287 + t564 + t881 - t98) * t99 + t98 * t713 + t99 * (-t630 + t720) + (-t351 * t99 + t516 * t826) * t511 + ((-t98 * rSges(4,3) + t99 * (-t482 - t477)) * t516 + (t98 * (-t482 - t877) - t99 * t519) * t518) * qJD(1) + (t61 - g(2)) * (t290 + t634) + (t60 - g(1)) * (-t287 + t716)) * m(4) + (-(-qJD(1) * t321 - t173 - t413 - t669) * t174 + t174 * (t487 + t714) + (t426 * t790 - t788) * qJD(2) + ((-pkin(1) - t428) * t789 + (t173 * (-rSges(3,3) - pkin(6)) + t174 * t665) * t516) * qJD(1) + (t93 - g(2)) * t235 + (t92 - g(1)) * (t665 * t516 + t509 + t712)) * m(3) + (t893 + t895) * t850 + (t894 + t896) * t849 + ((t516 * t571 + t642 * t518 - t569 - t874 + t928) * t417 + (t516 * t642 - t209 - t241 + t578 + t756 + (-t956 - t963) * t518 + t898) * t416 + t906 + t930) * t846 + (t901 + t904) * t845 + (m(2) * (t427 ^ 2 + t429 ^ 2) + t585 + Icges(2,3) + t972 * t490 + t973 * t489) * qJDD(1) + (-t902 + t903 + t905) * t844; ((-t704 * t770 + t707) * t516 + (t551 + (t516 * t771 + t527) * qJD(2)) * t518) * t662 + ((-t703 * t771 - t707) * t518 + (t551 + (t518 * t770 + t527) * qJD(2)) * t516) * t659 + t70 * t663 + t69 * t664 + ((t112 * t516 + t113 * t518) * qJD(1) + t613) * t660 + ((t114 * t516 + t115 * t518) * qJD(1) + t614) * t661 + t523 + ((t515 * t719 + t517 * t718) * qJD(1) + (t556 * t515 + t517 * t856) * qJD(2)) * t835 + (-t175 * t518 + t176 * t516) * t825 + (t516 * t89 - t518 * t88 + (t175 * t516 + t176 * t518) * qJD(1)) * t834 + (qJD(1) * t91 + qJD(2) * t613 + qJDD(1) * t177 + t112 * t411 + t113 * t410) * t841 + (qJD(1) * t90 + qJD(2) * t614 + qJDD(1) * t178 + t114 * t411 + t115 * t410) * t842 + t601 * t847 + t600 * t848 + (-g(1) * (t453 + t624) - g(2) * (t449 + t625) - g(3) * (t508 + t610) - t78 * (-qJD(1) * t344 + t576 - t869) - (-t79 * t670 + ((-t516 * t79 - t518 * t78) * t517 + t62 * t657) * qJD(2)) * pkin(2) + t78 * (t461 + t676) + t13 * (t573 + t749) + t62 * (t553 + t682) + (t554 * t78 + (qJD(1) * t79 + t16) * t570) * t518 + (t15 * t570 + t554 * t79 + t628 * t795) * t516 + t912) * m(6) + (-g(1) * (t452 + t624) - g(2) * (t448 + t625) - g(3) * (t508 - t722) + t86 * (t461 + t728) + t14 * (t627 + t749) + t77 * (t574 + t682) + (t580 * t86 + t623 * t886) * t518 + (t21 * t623 + t580 * t87 + t678 * t794) * t516 - t86 * (-qJD(1) * t345 - t262 + t576) - (-t87 * t670 + ((-t516 * t87 - t518 * t86) * t517 + t77 * t657) * qJD(2)) * pkin(2) + t911) * m(5) + (t28 * (t747 + t749) + t97 * (t682 + t683) + (t621 * t98 + (qJD(1) * t99 + t60) * t563) * t518 + (t61 * t563 + t99 * t621 + (t743 * t97 + t826) * qJD(1)) * t516 - g(3) * (t877 + t508) - t872 * t563 - (-t99 * t670 + (t517 * t612 + t657 * t97) * qJD(2)) * pkin(2) + t890) * m(4) + (g(1) * t367 + g(2) * t366 - g(3) * t428 - (t173 * t366 - t788) * qJD(1) - (t171 * (-t366 * t516 - t367 * t518) + t599 * t428) * qJD(2) + (qJD(2) * t598 + t321 * t410 - t322 * t411) * t589 + t171 * ((t321 * t518 - t322 * t516) * qJD(1) + t598) + t599 * t405 + (-t93 * t516 - t92 * t518 + (-t174 * t518 + t790) * qJD(1)) * t426) * m(3); t523 + (t13 * t573 + t62 * t553 + (qJD(1) * t577 + t16 * t622) * t518 + (t15 * t622 + t582 * t79 - t677 * t795) * t516 - g(1) * (t439 + t453) - g(2) * (t437 + t449) - g(3) * t610 + (t676 + t582 * t518 - (-t343 - t344) * qJD(1) - t717 + t869) * t78 + t912) * m(6) + (t14 * t627 + t77 * t574 + (-t734 * t794 + t748 * t87) * t516 - g(1) * (t439 + t452) - g(2) * (t437 + t448) + g(3) * t722 + (t518 * t886 + t887) * t723 + (t262 - (-t343 - t345) * qJD(1) - t717 + t728 + t748 * t518) * t86 + t911) * m(5) + (t28 * t747 + t97 * (-t290 * t706 + t683) + t612 * t314 + (-t61 * t516 - t60 * t518 + (t516 * t98 - t518 * t99) * qJD(1)) * t392 + g(1) * t351 + g(2) * t346 - g(3) * t877 + t890) * m(4); (-m(5) - m(6)) * (-g(3) * t490 + t489 * t872) - m(5) * (t200 * t77 + t255 * t87 + t256 * t86) - m(6) * (t200 * t62 + t255 * t79 + t256 * t78) + 0.2e1 * ((t416 * t87 + t417 * t86 - t14) * t852 + (t416 * t79 + t417 * t78 - t13) * t851) * t490 + 0.2e1 * ((t20 * t518 + t511 * t77 + t705 * t87 - t706 * t86 + t887) * t852 + (t15 * t516 + t16 * t518 + t511 * t62 + t705 * t79 - t706 * t78) * t851) * t489; ((-t416 * t62 + t889) * t518 + (t417 * t62 - t888) * t516) * m(6);];
tau = t1;
