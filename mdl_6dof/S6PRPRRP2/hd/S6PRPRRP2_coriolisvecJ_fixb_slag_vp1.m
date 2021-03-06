% Calculate vector of centrifugal and Coriolis load on the joints for
% S6PRPRRP2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d4,d5,theta1,theta3]';
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
% Datum: 2019-03-08 20:03
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S6PRPRRP2_coriolisvecJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPRRP2_coriolisvecJ_fixb_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRPRRP2_coriolisvecJ_fixb_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRPRRP2_coriolisvecJ_fixb_slag_vp1: pkin has to be [11x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6PRPRRP2_coriolisvecJ_fixb_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6PRPRRP2_coriolisvecJ_fixb_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6PRPRRP2_coriolisvecJ_fixb_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 19:59:59
% EndTime: 2019-03-08 20:02:47
% DurationCPUTime: 160.57s
% Computational Cost: add. (93958->1540), mult. (260642->2208), div. (0->0), fcn. (316783->12), ass. (0->603)
t974 = Icges(6,4) - Icges(7,5);
t961 = Icges(6,1) + Icges(7,1);
t960 = Icges(7,4) + Icges(6,5);
t959 = Icges(6,2) + Icges(7,3);
t973 = Icges(7,2) + Icges(6,3);
t972 = Icges(6,6) - Icges(7,6);
t818 = sin(pkin(11));
t819 = cos(pkin(11));
t828 = sin(qJ(2));
t831 = cos(qJ(2));
t564 = t828 * t818 - t831 * t819;
t583 = sin(pkin(10));
t585 = cos(pkin(10));
t820 = cos(pkin(6));
t672 = t820 * t818;
t673 = t820 * t819;
t760 = -t831 * t672 - t828 * t673;
t492 = t583 * t564 + t585 * t760;
t584 = sin(pkin(6));
t587 = sin(qJ(4));
t794 = t584 * t587;
t830 = cos(qJ(4));
t433 = -t492 * t830 - t585 * t794;
t598 = -t672 * t828 + t673 * t831;
t614 = t818 * t831 + t819 * t828;
t493 = -t583 * t614 + t585 * t598;
t586 = sin(qJ(5));
t829 = cos(qJ(5));
t345 = t433 * t829 - t493 * t586;
t991 = t974 * t345;
t497 = -t585 * t564 + t583 * t760;
t435 = t497 * t830 + t583 * t794;
t496 = -t583 * t598 - t585 * t614;
t347 = t435 * t829 - t496 * t586;
t990 = t974 * t347;
t538 = t614 * t584;
t516 = t538 * t830 + t587 * t820;
t537 = t564 * t584;
t429 = t516 * t829 + t537 * t586;
t989 = t974 * t429;
t655 = -t516 * t586 + t537 * t829;
t988 = t974 * t655;
t656 = -t435 * t586 - t496 * t829;
t987 = t974 * t656;
t657 = -t433 * t586 - t493 * t829;
t986 = t974 * t657;
t531 = t598 * qJD(2);
t557 = t614 * qJD(2);
t458 = t531 * t585 - t557 * t583;
t724 = t584 * t830;
t639 = t492 * t587 - t585 * t724;
t329 = qJD(4) * t639 + t458 * t830;
t556 = t564 * qJD(2);
t594 = qJD(2) * t760;
t457 = t583 * t556 + t585 * t594;
t156 = qJD(5) * t345 + t329 * t586 + t457 * t829;
t157 = qJD(5) * t657 + t329 * t829 - t457 * t586;
t328 = qJD(4) * t433 + t458 * t587;
t985 = -t156 * t959 + t157 * t974 + t328 * t972;
t460 = -t531 * t583 - t557 * t585;
t640 = -t497 * t587 + t583 * t724;
t331 = qJD(4) * t640 + t460 * t830;
t459 = t556 * t585 - t583 * t594;
t158 = qJD(5) * t347 + t331 * t586 + t459 * t829;
t159 = qJD(5) * t656 + t331 * t829 - t459 * t586;
t330 = qJD(4) * t435 + t460 * t587;
t984 = -t158 * t959 + t159 * t974 + t330 * t972;
t983 = t156 * t972 - t157 * t960 - t328 * t973;
t982 = t158 * t972 - t159 * t960 - t330 * t973;
t981 = -t974 * t156 + t157 * t961 + t960 * t328;
t980 = -t974 * t158 + t159 * t961 + t960 * t330;
t758 = qJD(2) * t584;
t530 = t564 * t758;
t632 = -t538 * t587 + t820 * t830;
t427 = qJD(4) * t632 - t530 * t830;
t529 = qJD(2) * t538;
t262 = qJD(5) * t429 + t427 * t586 - t529 * t829;
t263 = qJD(5) * t655 + t427 * t829 + t529 * t586;
t426 = qJD(4) * t516 - t530 * t587;
t979 = -t262 * t959 + t263 * t974 + t426 * t972;
t978 = t262 * t972 - t263 * t960 - t426 * t973;
t977 = -t974 * t262 + t263 * t961 + t960 * t426;
t937 = t639 * t972 - t657 * t959 - t991;
t936 = t640 * t972 - t656 * t959 - t990;
t935 = t345 * t960 - t639 * t973 + t657 * t972;
t934 = t347 * t960 - t640 * t973 + t656 * t972;
t933 = t345 * t961 - t960 * t639 + t986;
t932 = t347 * t961 - t960 * t640 + t987;
t921 = t632 * t972 - t655 * t959 - t989;
t920 = t429 * t960 - t632 * t973 + t655 * t972;
t919 = t429 * t961 - t960 * t632 + t988;
t575 = t583 * t758;
t436 = -qJD(4) * t496 + t575;
t325 = -qJD(5) * t640 + t436;
t859 = -t325 / 0.2e1;
t718 = t585 * t758;
t437 = -qJD(4) * t493 - t718;
t326 = -qJD(5) * t639 + t437;
t857 = -t326 / 0.2e1;
t581 = qJD(2) * t820;
t519 = qJD(4) * t537 + t581;
t423 = -qJD(5) * t632 + t519;
t850 = -t423 / 0.2e1;
t951 = rSges(7,1) + pkin(5);
t938 = rSges(7,3) + qJ(6);
t795 = t584 * t585;
t796 = t583 * t584;
t815 = Icges(4,4) * t538;
t451 = -Icges(4,2) * t537 + Icges(4,6) * t820 + t815;
t969 = Icges(4,1) * t537 + t451 + t815;
t962 = Icges(4,4) * t497;
t371 = Icges(4,2) * t496 + Icges(4,6) * t796 + t962;
t970 = -Icges(4,1) * t496 + t371 + t962;
t963 = Icges(4,4) * t492;
t370 = Icges(4,2) * t493 - Icges(4,6) * t795 - t963;
t971 = -Icges(4,1) * t493 + t370 - t963;
t976 = t795 * t971 - t796 * t970 - t820 * t969;
t845 = -t436 / 0.2e1;
t844 = t436 / 0.2e1;
t843 = -t437 / 0.2e1;
t842 = t437 / 0.2e1;
t835 = -t519 / 0.2e1;
t834 = t519 / 0.2e1;
t757 = qJD(4) * t457;
t242 = qJD(5) * t328 - t757;
t756 = qJD(4) * t459;
t243 = qJD(5) * t330 - t756;
t753 = qJD(4) * t529;
t408 = qJD(5) * t426 + t753;
t891 = t345 * t919 - t639 * t920 - t657 * t921;
t896 = t345 * t932 - t639 * t934 - t657 * t936;
t897 = t345 * t933 - t639 * t935 - t657 * t937;
t941 = t156 * t921 + t157 * t919 + t328 * t920 + t345 * t977 + t639 * t978 + t657 * t979;
t949 = t156 * t936 + t157 * t932 + t328 * t934 + t345 * t980 + t639 * t982 + t657 * t984;
t950 = t937 * t156 + t933 * t157 + t935 * t328 + t981 * t345 + t983 * t639 + t657 * t985;
t975 = -t242 * t897 / 0.2e1 - t243 * t896 / 0.2e1 + t949 * t859 + t950 * t857 - t408 * t891 / 0.2e1 + t941 * t850;
t948 = t937 * t158 + t933 * t159 + t935 * t330 + t981 * t347 + t983 * t640 + t656 * t985;
t947 = t158 * t936 + t159 * t932 + t330 * t934 + t347 * t980 + t640 * t982 + t656 * t984;
t946 = t937 * t262 + t933 * t263 + t935 * t426 + t981 * t429 + t983 * t632 + t655 * t985;
t945 = t262 * t936 + t263 * t932 + t426 * t934 + t429 * t980 + t632 * t982 + t655 * t984;
t940 = t158 * t921 + t159 * t919 + t330 * t920 + t347 * t977 + t640 * t978 + t656 * t979;
t939 = t262 * t921 + t263 * t919 + t426 * t920 + t429 * t977 + t632 * t978 + t655 * t979;
t895 = t347 * t933 - t640 * t935 - t656 * t937;
t894 = t347 * t932 - t640 * t934 - t656 * t936;
t893 = t429 * t933 - t632 * t935 - t655 * t937;
t892 = t429 * t932 - t632 * t934 - t655 * t936;
t890 = t347 * t919 - t640 * t920 - t656 * t921;
t889 = t429 * t919 - t632 * t920 - t655 * t921;
t968 = -t586 * t959 + t829 * t974;
t967 = t586 * t972 - t829 * t960;
t966 = -t586 * t974 + t829 * t961;
t136 = Icges(5,5) * t329 - Icges(5,6) * t328 - Icges(5,3) * t457;
t138 = Icges(5,4) * t329 - Icges(5,2) * t328 - Icges(5,6) * t457;
t140 = Icges(5,1) * t329 - Icges(5,4) * t328 - Icges(5,5) * t457;
t244 = Icges(5,5) * t433 + Icges(5,6) * t639 - Icges(5,3) * t493;
t814 = Icges(5,4) * t433;
t246 = Icges(5,2) * t639 - Icges(5,6) * t493 + t814;
t430 = Icges(5,4) * t639;
t248 = Icges(5,1) * t433 - Icges(5,5) * t493 + t430;
t50 = t136 * t537 + t138 * t632 + t140 * t516 + t244 * t529 - t246 * t426 + t248 * t427;
t137 = Icges(5,5) * t331 - Icges(5,6) * t330 - Icges(5,3) * t459;
t139 = Icges(5,4) * t331 - Icges(5,2) * t330 - Icges(5,6) * t459;
t141 = Icges(5,1) * t331 - Icges(5,4) * t330 - Icges(5,5) * t459;
t245 = Icges(5,5) * t435 + Icges(5,6) * t640 - Icges(5,3) * t496;
t813 = Icges(5,4) * t435;
t247 = Icges(5,2) * t640 - Icges(5,6) * t496 + t813;
t431 = Icges(5,4) * t640;
t249 = Icges(5,1) * t435 - Icges(5,5) * t496 + t431;
t51 = t137 * t537 + t139 * t632 + t141 * t516 + t245 * t529 - t247 * t426 + t249 * t427;
t108 = t244 * t537 + t246 * t632 + t248 * t516;
t109 = t245 * t537 + t247 * t632 + t249 * t516;
t405 = Icges(5,5) * t516 + Icges(5,6) * t632 + Icges(5,3) * t537;
t812 = Icges(5,4) * t516;
t406 = Icges(5,2) * t632 + Icges(5,6) * t537 + t812;
t513 = Icges(5,4) * t632;
t407 = Icges(5,1) * t516 + Icges(5,5) * t537 + t513;
t125 = t405 * t537 + t406 * t632 + t407 * t516;
t629 = -t108 * t457 - t109 * t459 + t125 * t529;
t264 = Icges(5,5) * t427 - Icges(5,6) * t426 + Icges(5,3) * t529;
t265 = Icges(5,4) * t427 - Icges(5,2) * t426 + Icges(5,6) * t529;
t266 = Icges(5,1) * t427 - Icges(5,4) * t426 + Icges(5,5) * t529;
t72 = t264 * t537 + t265 * t632 + t266 * t516 + t405 * t529 - t406 * t426 + t407 * t427;
t953 = t242 * t893 + t243 * t892 + t325 * t945 + t326 * t946 + t408 * t889 + t423 * t939;
t965 = qJD(4) * t629 / 0.2e1 + t51 * t844 + t50 * t842 + t72 * t834 + t953 / 0.2e1;
t43 = -t136 * t493 + t138 * t639 + t140 * t433 - t244 * t457 - t246 * t328 + t248 * t329;
t44 = -t137 * t493 + t139 * t639 + t141 * t433 - t245 * t457 - t247 * t328 + t249 * t329;
t54 = -t264 * t493 + t265 * t639 + t266 * t433 - t328 * t406 + t329 * t407 - t405 * t457;
t100 = -t244 * t493 + t246 * t639 + t248 * t433;
t101 = -t245 * t493 + t247 * t639 + t249 * t433;
t114 = -t405 * t493 + t406 * t639 + t407 * t433;
t631 = -t100 * t457 - t101 * t459 + t114 * t529;
t964 = -qJD(4) * t631 / 0.2e1 + t43 * t843 + t44 * t845 + t54 * t835 + t975;
t677 = t820 * t831;
t552 = -t583 * t828 + t585 * t677;
t539 = t552 * qJD(2);
t676 = t820 * t828;
t615 = -t583 * t831 - t585 * t676;
t540 = t615 * qJD(2);
t910 = -Icges(3,5) * t539 - Icges(4,5) * t458 - Icges(3,6) * t540 - Icges(4,6) * t457;
t554 = -t583 * t677 - t585 * t828;
t541 = t554 * qJD(2);
t616 = t583 * t676 - t585 * t831;
t542 = t616 * qJD(2);
t909 = Icges(3,5) * t541 + Icges(4,5) * t460 + Icges(3,6) * t542 + Icges(4,6) * t459;
t957 = t586 * t938 + t829 * t951;
t393 = Icges(4,5) * t493 + Icges(4,6) * t492;
t394 = Icges(4,5) * t496 - Icges(4,6) * t497;
t474 = -Icges(4,5) * t537 - Icges(4,6) * t538;
t498 = Icges(3,5) * t552 + Icges(3,6) * t615;
t499 = Icges(3,5) * t554 + Icges(3,6) * t616;
t558 = (Icges(3,5) * t831 - Icges(3,6) * t828) * t584;
t956 = (t498 + t393) * t795 - (t499 + t394) * t796 - t820 * (t474 + t558);
t954 = t242 * t895 + t243 * t894 + t325 * t947 + t326 * t948 + t408 * t890 + t423 * t940;
t952 = -t758 / 0.2e1;
t944 = t325 * t896 + t326 * t897 + t423 * t891;
t943 = t325 * t894 + t326 * t895 + t423 * t890;
t942 = t325 * t892 + t326 * t893 + t423 * t889;
t722 = t586 * t830;
t382 = t492 * t829 + t493 * t722;
t680 = t830 * t829;
t383 = -t492 * t586 + t493 * t680;
t800 = t493 * t587;
t931 = -t382 * t959 + t383 * t974 + t800 * t972;
t384 = t496 * t722 - t497 * t829;
t385 = t496 * t680 + t497 * t586;
t799 = t496 * t587;
t930 = -t384 * t959 + t385 * t974 + t799 * t972;
t929 = t382 * t972 - t383 * t960 - t800 * t973;
t928 = t384 * t972 - t385 * t960 - t799 * t973;
t927 = -t382 * t974 + t383 * t961 + t800 * t960;
t926 = -t384 * t974 + t385 * t961 + t799 * t960;
t925 = t433 * t972 + t639 * t968;
t924 = t435 * t972 + t640 * t968;
t923 = t433 * t960 + t639 * t966;
t922 = t435 * t960 + t640 * t966;
t447 = -t537 * t722 - t538 * t829;
t448 = -t537 * t680 + t538 * t586;
t798 = t537 * t587;
t918 = -t447 * t959 + t448 * t974 - t798 * t972;
t917 = t447 * t972 - t448 * t960 + t798 * t973;
t916 = -t447 * t974 + t448 * t961 - t798 * t960;
t915 = -rSges(7,2) * t798 + t447 * t938 + t448 * t951;
t780 = -rSges(7,2) * t632 + t429 * t951 - t655 * t938;
t320 = pkin(4) * t433 - pkin(9) * t639;
t785 = rSges(7,2) * t639 - t345 * t951 + t657 * t938;
t914 = -t320 + t785;
t322 = pkin(4) * t435 - pkin(9) * t640;
t790 = -rSges(7,2) * t640 + t347 * t951 - t656 * t938;
t913 = t322 + t790;
t912 = t516 * t972 + t632 * t968;
t911 = t516 * t960 + t632 * t966;
t422 = pkin(4) * t516 - pkin(9) * t632;
t908 = t422 + t780;
t444 = -Icges(4,5) * t530 - Icges(4,6) * t529;
t543 = qJD(2) * t558;
t907 = t444 + t543;
t903 = (-t516 * t973 + t586 * t921 + t632 * t967 + t829 * t919) * t423 + (-t433 * t973 + t586 * t937 + t639 * t967 + t829 * t933) * t326 + (-t435 * t973 + t586 * t936 + t640 * t967 + t829 * t932) * t325;
t45 = -t136 * t496 + t138 * t640 + t140 * t435 - t244 * t459 - t246 * t330 + t248 * t331;
t46 = -t137 * t496 + t139 * t640 + t141 * t435 - t245 * t459 - t247 * t330 + t249 * t331;
t55 = -t264 * t496 + t265 * t640 + t266 * t435 - t330 * t406 + t331 * t407 - t405 * t459;
t102 = -t244 * t496 + t246 * t640 + t248 * t435;
t103 = -t245 * t496 + t247 * t640 + t249 * t435;
t115 = -t405 * t496 + t406 * t640 + t407 * t435;
t630 = -t102 * t457 - t103 * t459 + t115 * t529;
t901 = qJD(4) * t630 + t436 * t46 + t437 * t45 + t519 * t55 + t954;
t190 = pkin(4) * t329 + pkin(9) * t328;
t292 = pkin(4) * t427 + pkin(9) * t426;
t368 = pkin(3) * t458 - pkin(8) * t457;
t745 = t584 * qJD(3);
t823 = pkin(2) * qJD(2);
t563 = t677 * t823 - t745;
t689 = t828 * t823;
t517 = t585 * t563 - t583 * t689;
t702 = t820 * t517;
t625 = -t368 * t820 - t702;
t580 = qJD(3) * t820;
t734 = t831 * pkin(2);
t562 = t734 * t758 + t580;
t772 = pkin(3) * t530 - pkin(8) * t529 - t562;
t694 = t772 * t584;
t599 = (t585 * t694 + t625) * qJD(2);
t591 = -t519 * t190 + t437 * t292 - t320 * t753 - t422 * t757 + t599;
t747 = qJD(6) * t655;
t792 = rSges(7,2) * t426 + t262 * t938 + t263 * t951 - t747;
t749 = qJD(6) * t657;
t825 = rSges(7,2) * t328 + t156 * t938 + t157 * t951 - t749;
t12 = qJD(6) * t158 + t242 * t780 + t326 * t792 + t408 * t785 - t423 * t825 + t591;
t899 = 0.2e1 * t12;
t402 = -pkin(3) * t492 - pkin(8) * t493;
t404 = pkin(3) * t497 - pkin(8) * t496;
t706 = pkin(2) * t676 - qJ(3) * t584;
t472 = t583 * t734 + t585 * t706;
t473 = -t583 * t706 + t585 * t734;
t774 = t472 * t796 + t473 * t795;
t682 = t402 * t796 + t404 * t795 + t774;
t898 = 0.2e1 * t320 * t796 + 0.2e1 * t322 * t795 + 0.2e1 * t682;
t748 = qJD(6) * t656;
t824 = rSges(7,2) * t330 + t158 * t938 + t159 * t951 - t748;
t888 = rSges(7,2) * t800 + t382 * t938 + t383 * t951;
t887 = rSges(7,2) * t799 + t384 * t938 + t385 * t951;
t886 = t433 * rSges(7,2) + t639 * t957;
t885 = t435 * rSges(7,2) + t640 * t957;
t884 = t516 * rSges(7,2) + t632 * t957;
t518 = -t583 * t563 - t585 * t689;
t765 = t517 * t575 + t518 * t718;
t883 = (t429 * t959 - t919 - t988) * t423 + (t345 * t959 - t933 - t986) * t326 + (t347 * t959 - t932 - t987) * t325;
t882 = (t655 * t961 + t921 - t989) * t423 + (t657 * t961 + t937 - t991) * t326 + (t656 * t961 + t936 - t990) * t325;
t881 = (-t429 * t972 + t655 * t960) * t423 + (-t345 * t972 + t657 * t960) * t326 + (-t347 * t972 + t656 * t960) * t325;
t450 = t473 * t581;
t759 = qJD(2) * t583;
t723 = t584 * t828;
t566 = pkin(2) * t723 + qJ(3) * t820;
t767 = -pkin(3) * t538 - pkin(8) * t537 - t566;
t610 = t404 * t581 + t450 + (-qJD(3) * t585 + t759 * t767) * t584;
t597 = t519 * t322 - t422 * t436 + t610;
t47 = -t325 * t780 + t423 * t790 + t597 - t749;
t875 = 0.2e1 * t47;
t880 = t790 * t875;
t879 = -t790 * t242 - t785 * t243 + t825 * t325 - t824 * t326;
t681 = t472 * t575 + t473 * t718 + qJD(1) + t580;
t658 = t402 * t575 + t404 * t718 + t681;
t617 = t436 * t320 - t322 * t437 + t658;
t38 = -t325 * t785 - t326 * t790 + t617 - t747;
t135 = t436 * t190;
t240 = t320 * t756;
t335 = t368 * t575;
t369 = pkin(3) * t460 - pkin(8) * t459;
t336 = t369 * t718;
t685 = t335 + t336 + t765;
t717 = t322 * t757;
t191 = pkin(4) * t331 + pkin(9) * t330;
t801 = t437 * t191;
t609 = t135 - t240 + t685 + t717 - t801;
t750 = qJD(6) * t262;
t9 = t609 + t750 + t879;
t878 = -t38 * t825 + t9 * t785;
t652 = Icges(5,5) * t830 - Icges(5,6) * t587;
t590 = t436 * (-Icges(5,3) * t497 - t247 * t587 + t249 * t830 - t496 * t652) + t437 * (Icges(5,3) * t492 - t246 * t587 + t248 * t830 - t493 * t652) + t519 * (-Icges(5,3) * t538 - t406 * t587 + t407 * t830 + t537 * t652);
t512 = t518 * t581;
t622 = t369 * t581 + t694 * t759 + t512;
t595 = t519 * t191 - t292 * t436 + t322 * t753 + t422 * t756 + t622;
t11 = qJD(6) * t156 - t243 * t780 - t325 * t792 + t408 * t790 + t423 * t824 + t595;
t877 = 0.2e1 * t11;
t876 = 0.2e1 * t38;
t574 = t583 * t745;
t703 = t820 * t472;
t624 = -t402 * t820 - t703;
t596 = t574 + (t767 * t795 + t624) * qJD(2);
t592 = -t519 * t320 + t437 * t422 + t596;
t48 = t326 * t780 + t423 * t785 + t592 - t748;
t874 = 0.2e1 * t48;
t161 = rSges(6,1) * t345 + rSges(6,2) * t657 - rSges(6,3) * t639;
t163 = rSges(6,1) * t347 + rSges(6,2) * t656 - rSges(6,3) * t640;
t52 = t161 * t325 - t163 * t326 + t617;
t873 = 0.2e1 * t52;
t261 = rSges(6,1) * t429 + rSges(6,2) * t655 - rSges(6,3) * t632;
t64 = t163 * t423 - t261 * t325 + t597;
t872 = 0.2e1 * t64;
t65 = -t423 * t161 + t326 * t261 + t592;
t871 = 0.2e1 * t65;
t250 = rSges(5,1) * t433 + rSges(5,2) * t639 - rSges(5,3) * t493;
t251 = rSges(5,1) * t435 + rSges(5,2) * t640 - rSges(5,3) * t496;
t73 = t250 * t436 - t251 * t437 + t658;
t870 = 0.2e1 * t73;
t582 = t584 ^ 2;
t409 = rSges(5,1) * t516 + rSges(5,2) * t632 + rSges(5,3) * t537;
t110 = t251 * t519 - t409 * t436 + t610;
t869 = 0.2e1 * t110;
t111 = -t519 * t250 + t437 * t409 + t596;
t868 = 0.2e1 * t111;
t867 = qJD(2) ^ 2;
t866 = m(4) / 0.2e1;
t865 = m(5) / 0.2e1;
t864 = m(6) / 0.2e1;
t863 = -m(7) / 0.2e1;
t862 = m(7) / 0.2e1;
t861 = t242 / 0.2e1;
t860 = t243 / 0.2e1;
t858 = t325 / 0.2e1;
t856 = t326 / 0.2e1;
t851 = t408 / 0.2e1;
t849 = t423 / 0.2e1;
t95 = rSges(6,1) * t157 - rSges(6,2) * t156 + rSges(6,3) * t328;
t822 = t325 * t95;
t97 = rSges(6,1) * t159 - rSges(6,2) * t158 + rSges(6,3) * t330;
t821 = t326 * t97;
t817 = Icges(3,4) * t615;
t816 = Icges(3,4) * t616;
t142 = rSges(5,1) * t329 - rSges(5,2) * t328 - rSges(5,3) * t457;
t805 = t142 * t436;
t143 = rSges(5,1) * t331 - rSges(5,2) * t330 - rSges(5,3) * t459;
t804 = t143 * t437;
t803 = t161 * t243;
t802 = t163 * t242;
t791 = -t161 - t320;
t789 = t163 + t322;
t788 = -t496 * t190 - t459 * t320;
t787 = t537 * t191 + t529 * t322;
t786 = t345 * t938 + t657 * t951;
t784 = t347 * t938 + t656 * t951;
t783 = -t493 * t292 - t457 * t422;
t782 = t261 + t422;
t781 = t429 * t938 + t655 * t951;
t514 = t820 * t518;
t779 = t820 * t369 + t514;
t486 = Icges(4,4) * t493;
t372 = -Icges(4,1) * t492 - Icges(4,5) * t795 + t486;
t778 = Icges(4,2) * t492 + t372 + t486;
t487 = Icges(4,4) * t496;
t373 = Icges(4,1) * t497 + Icges(4,5) * t796 + t487;
t777 = -Icges(4,2) * t497 + t373 + t487;
t403 = pkin(3) * t496 + pkin(8) * t497;
t550 = t554 * pkin(2);
t524 = t550 * t581;
t776 = t403 * t581 + t524;
t456 = t820 * t473;
t775 = t820 * t404 + t456;
t533 = Icges(4,4) * t537;
t452 = Icges(4,1) * t538 + Icges(4,5) * t820 - t533;
t773 = -Icges(4,2) * t538 + t452 - t533;
t462 = Icges(3,2) * t552 - Icges(3,6) * t795 - t817;
t502 = Icges(3,1) * t552 + t817;
t771 = -t462 + t502;
t463 = Icges(3,2) * t554 + Icges(3,6) * t796 - t816;
t503 = Icges(3,1) * t554 + t816;
t770 = -t463 + t503;
t547 = Icges(3,4) * t552;
t464 = -Icges(3,1) * t615 - Icges(3,5) * t795 + t547;
t500 = Icges(3,2) * t615 + t547;
t769 = t464 + t500;
t548 = Icges(3,4) * t554;
t465 = -Icges(3,1) * t616 + Icges(3,5) * t796 + t548;
t501 = Icges(3,2) * t616 + t548;
t768 = t465 + t501;
t766 = 0.2e1 * t765;
t764 = t517 * t796 + t518 * t795;
t549 = t552 * pkin(2);
t763 = t549 * t575 + t550 * t718;
t720 = t828 * Icges(3,4);
t534 = Icges(3,6) * t820 + (Icges(3,2) * t831 + t720) * t584;
t560 = (Icges(3,1) * t831 - t720) * t584;
t762 = -t534 + t560;
t721 = t831 * Icges(3,4);
t576 = t584 * t721;
t535 = Icges(3,1) * t723 + Icges(3,5) * t820 + t576;
t719 = t828 * Icges(3,2);
t559 = -t584 * t719 + t576;
t761 = t535 + t559;
t755 = qJD(4) * t492;
t754 = qJD(4) * t497;
t752 = qJD(4) * t538;
t751 = qJD(5) * t587;
t746 = qJD(6) * t586;
t743 = 0.2e1 * m(5);
t742 = 0.2e1 * m(6);
t741 = 0.2e1 * m(7);
t739 = 0.2e1 * t820;
t738 = 0.2e1 * t583;
t737 = 0.2e1 * t584;
t736 = 0.2e1 * t585;
t735 = 0.2e1 * qJD(2);
t731 = t820 * t191 + t779;
t267 = rSges(5,1) * t427 - rSges(5,2) * t426 + rSges(5,3) * t529;
t730 = -t267 + t772;
t729 = -t292 + t772;
t728 = t820 * t322 + t775;
t727 = -t409 + t767;
t726 = -t422 + t767;
t712 = -t757 / 0.2e1;
t711 = -t756 / 0.2e1;
t710 = t753 / 0.2e1;
t705 = t583 * t820;
t704 = t585 * t820;
t701 = t820 * t549;
t700 = -t742 / 0.2e1;
t699 = t742 / 0.2e1;
t698 = t584 * (rSges(4,1) * t530 + rSges(4,2) * t529 - t562);
t697 = t584 * (-t538 * rSges(4,1) + t537 * rSges(4,2) - rSges(4,3) * t820 - t566);
t319 = pkin(4) * t639 + pkin(9) * t433;
t321 = pkin(4) * t640 + pkin(9) * t435;
t693 = t436 * t319 - t321 * t437;
t421 = pkin(4) * t632 + pkin(9) * t516;
t692 = t519 * t321 - t421 * t436;
t691 = -t319 * t519 + t437 * t421;
t690 = t582 * t734;
t123 = rSges(6,1) * t263 - rSges(6,2) * t262 + rSges(6,3) * t426;
t688 = -t123 + t729;
t687 = -t261 + t726;
t686 = 0.2e1 * t335 + 0.2e1 * t336 + t766;
t684 = t368 * t796 + t369 * t795 + t764;
t401 = pkin(3) * t493 - pkin(8) * t492;
t683 = t401 * t575 + t403 * t718 + t763;
t671 = t729 - t792;
t670 = t726 - t780;
t669 = -t250 * t459 + t251 * t457;
t668 = -t250 * t529 - t409 * t457;
t667 = t251 * t529 + t409 * t459;
t665 = pkin(4) * t830 + pkin(9) * t587;
t664 = rSges(5,1) * t830 - rSges(5,2) * t587;
t663 = -rSges(6,1) * t829 + rSges(6,2) * t586;
t660 = t190 * t796 + t191 * t795 + t684;
t654 = Icges(5,1) * t830 - Icges(5,4) * t587;
t653 = Icges(5,4) * t830 - Icges(5,2) * t587;
t366 = rSges(4,1) * t458 + rSges(4,2) * t457;
t367 = rSges(4,1) * t460 + rSges(4,2) * t459;
t645 = (t366 * t583 + t367 * t585) * t584;
t374 = -rSges(4,1) * t492 + rSges(4,2) * t493 - rSges(4,3) * t795;
t375 = rSges(4,1) * t497 + rSges(4,2) * t496 + rSges(4,3) * t796;
t644 = (t374 * t583 + t375 * t585) * t584;
t466 = -rSges(3,1) * t615 + rSges(3,2) * t552 - rSges(3,3) * t795;
t467 = -rSges(3,1) * t616 + rSges(3,2) * t554 + rSges(3,3) * t796;
t643 = qJD(2) * (t466 * t583 + t467 * t585);
t642 = t669 * qJD(4);
t641 = -(-pkin(3) * t537 + pkin(8) * t538) * t584 - t690;
t635 = -t462 * t828 + t464 * t831;
t634 = -t463 * t828 + t465 * t831;
t633 = -t534 * t828 + t535 * t831;
t626 = (Icges(5,5) * t639 - Icges(5,6) * t433) * t437 + (Icges(5,5) * t640 - Icges(5,6) * t435) * t436 + (Icges(5,5) * t632 - Icges(5,6) * t516) * t519;
t623 = 0.2e1 * t135 - 0.2e1 * t801 + 0.2e1 * t717 - 0.2e1 * t240 + t686;
t386 = t665 * t493;
t454 = t665 * t537;
t621 = -t320 * t752 - t519 * t386 - t422 * t755 - t437 * t454;
t620 = t583 * t641;
t561 = (rSges(3,1) * t831 - rSges(3,2) * t828) * t584;
t619 = t367 * t820 + t583 * t698;
t618 = t375 * t820 + t583 * t697;
t536 = t820 * rSges(3,3) + (rSges(3,1) * t828 + rSges(3,2) * t831) * t584;
t410 = (t467 * t820 - t536 * t796) * qJD(2);
t411 = (-t466 * t820 - t536 * t795) * qJD(2);
t387 = t665 * t496;
t613 = t322 * t752 + t519 * t387 - t422 * t754 + t436 * t454 + t776;
t612 = -t190 * t820 + t625;
t611 = -t320 * t820 + t624;
t608 = t320 * t754 + t322 * t755 + t436 * t386 - t387 * t437 + t683;
t603 = (Icges(5,1) * t640 - t247 - t813) * t436 + (Icges(5,1) * t639 - t246 - t814) * t437 + (Icges(5,1) * t632 - t406 - t812) * t519;
t602 = (Icges(5,2) * t435 - t249 - t431) * t436 + (Icges(5,2) * t433 - t248 - t430) * t437 + (Icges(5,2) * t516 - t407 - t513) * t519;
t601 = -t366 * t820 + t585 * t698 - t702;
t600 = -t374 * t820 + t585 * t697 - t703;
t593 = -t401 * t820 + t585 * t641 - t701;
t546 = qJD(2) * t561;
t545 = qJD(2) * t560;
t544 = (t721 - t719) * t758;
t505 = rSges(3,1) * t554 + rSges(3,2) * t616;
t504 = rSges(3,1) * t552 + rSges(3,2) * t615;
t491 = rSges(3,1) * t541 + rSges(3,2) * t542;
t488 = rSges(3,1) * t539 + rSges(3,2) * t540;
t483 = Icges(3,1) * t541 + Icges(3,4) * t542;
t482 = Icges(3,1) * t539 + Icges(3,4) * t540;
t481 = Icges(3,4) * t541 + Icges(3,2) * t542;
t480 = Icges(3,4) * t539 + Icges(3,2) * t540;
t477 = -rSges(4,1) * t537 - rSges(4,2) * t538;
t461 = -t537 * t751 + t752;
t446 = -Icges(4,1) * t530 - Icges(4,4) * t529;
t445 = -Icges(4,4) * t530 - Icges(4,2) * t529;
t420 = rSges(5,1) * t632 - rSges(5,2) * t516;
t415 = t538 * rSges(5,3) - t537 * t664;
t414 = Icges(5,5) * t538 - t537 * t654;
t413 = Icges(5,6) * t538 - t537 * t653;
t400 = rSges(4,1) * t496 - rSges(4,2) * t497;
t399 = rSges(4,1) * t493 + rSges(4,2) * t492;
t391 = t496 * t751 + t754;
t390 = t493 * t751 - t755;
t365 = Icges(4,1) * t460 + Icges(4,4) * t459;
t364 = Icges(4,1) * t458 + Icges(4,4) * t457;
t363 = Icges(4,4) * t460 + Icges(4,2) * t459;
t362 = Icges(4,4) * t458 + Icges(4,2) * t457;
t357 = t516 * rSges(6,3) - t632 * t663;
t337 = t493 * t422;
t327 = t584 * t643 + qJD(1);
t318 = rSges(5,1) * t640 - rSges(5,2) * t435;
t317 = rSges(5,1) * t639 - rSges(5,2) * t433;
t306 = rSges(6,1) * t655 - rSges(6,2) * t429;
t291 = t448 * rSges(6,1) - t447 * rSges(6,2) - rSges(6,3) * t798;
t282 = t537 * t322;
t280 = rSges(5,3) * t497 + t496 * t664;
t279 = -t492 * rSges(5,3) + t493 * t664;
t278 = Icges(5,5) * t497 + t496 * t654;
t277 = -Icges(5,5) * t492 + t493 * t654;
t276 = Icges(5,6) * t497 + t496 * t653;
t275 = -Icges(5,6) * t492 + t493 * t653;
t253 = t496 * t320;
t233 = t435 * rSges(6,3) - t640 * t663;
t231 = t433 * rSges(6,3) - t639 * t663;
t212 = rSges(6,1) * t656 - rSges(6,2) * t347;
t208 = rSges(6,1) * t657 - rSges(6,2) * t345;
t193 = t601 * qJD(2);
t192 = qJD(2) * t619 + t512;
t186 = t385 * rSges(6,1) - t384 * rSges(6,2) + rSges(6,3) * t799;
t184 = t383 * rSges(6,1) - t382 * rSges(6,2) + rSges(6,3) * t800;
t182 = qJD(2) * t600 + t574;
t181 = qJD(2) * t618 - t585 * t745 + t450;
t132 = qJD(2) * t645 + t765;
t127 = qJD(2) * t644 + t681;
t67 = qJD(4) * t668 - t519 * t142 + t437 * t267 + t599;
t66 = qJD(4) * t667 + t143 * t519 - t267 * t436 + t622;
t53 = t642 + t685 - t804 + t805;
t49 = t108 * t437 + t109 * t436 + t125 * t519;
t42 = t102 * t437 + t103 * t436 + t115 * t519;
t41 = t437 * t100 + t101 * t436 + t114 * t519;
t33 = t326 * t123 - t408 * t161 + t242 * t261 - t423 * t95 + t591;
t32 = -t123 * t325 + t163 * t408 - t243 * t261 + t423 * t97 + t595;
t21 = t609 - t802 + t803 - t821 + t822;
t1 = [t766 * t866 + (t623 - 0.2e1 * t802 + 0.2e1 * t803 - 0.2e1 * t821 + 0.2e1 * t822) * t864 + (m(3) * t491 + m(4) * t367) * t718 + (m(3) * t488 + m(4) * t366) * t575 + (t686 - 0.2e1 * t804 + 0.2e1 * t805 + 0.2e1 * t642) * t865 + (t623 + 0.2e1 * t750 + 0.2e1 * t879) * t862; ((-t498 * t704 + t499 * t705) * t952 + (-t537 * t445 + t538 * t446 - t529 * t451 - t530 * t452 + (t559 * t831 + t560 * t828 + t633) * t952 + (t444 + t543 / 0.2e1) * t820) * t820 + (-(-t537 * t362 + t538 * t364 - t529 * t370 - t530 * t372) * t585 + (-t537 * t363 + t538 * t365 - t529 * t371 - t530 * t373) * t583 + ((t501 * t831 + t503 * t828 + t634) * t583 - (t500 * t831 + t502 * t828 + t635) * t585) * t952 + (-(qJD(2) * t635 + t480 * t831 + t482 * t828) * t585 + (qJD(2) * t634 + t481 * t831 + t483 * t828) * t583) * t584 + (qJD(2) * t633 + t544 * t831 + t545 * t828 + t583 * t909 + t585 * t910) * t820) * t584) * t581 - m(5) * ((-t250 * t752 - t519 * t279 - t409 * t755 + t437 * t415) * t868 + (t251 * t752 + t519 * t280 - t409 * t754 - t436 * t415 + t776) * t869 + (t279 * t436 - t280 * t437 + (t250 * t497 + t251 * t492) * qJD(4) + t683) * t870 + (t110 * t620 + t111 * t593) * t735) / 0.2e1 + 0.2e1 * (t327 * (t504 * t583 + t505 * t585) * t952 - (t411 * (-t504 * t820 - t561 * t795) + t410 * (t505 * t820 - t561 * t796)) * qJD(2) / 0.2e1 + t411 * (-t488 * t820 - t546 * t795) + t410 * (t491 * t820 - t546 * t796) + (t327 * t584 + t582 * t643) * (t488 * t583 + t491 * t585) / 0.2e1) * m(3) + (t941 * t820 + (t583 * t949 - t585 * t950) * t584) * t856 + ((-t445 * t493 + t446 * t492 - t451 * t457 - t452 * t458 - t534 * t540 - t535 * t539 - t544 * t552 + t545 * t615 + t795 * t907) * t820 + ((t362 * t493 - t364 * t492 + t370 * t457 + t372 * t458 + t462 * t540 + t464 * t539 + t480 * t552 - t482 * t615 + t795 * t910) * t585 + (-t363 * t493 + t365 * t492 - t371 * t457 - t373 * t458 - t463 * t540 - t465 * t539 - t481 * t552 + t483 * t615 + t795 * t909) * t583) * t584) * t718 + ((t538 * t245 + t276 * t632 + t516 * t278) * t436 + (t538 * t244 + t275 * t632 + t516 * t277) * t437 + (t538 * t405 + t413 * t632 + t516 * t414) * t519 + (-t108 * t492 + t109 * t497 + t125 * t538) * qJD(4) - t590 * t537) * t835 + ((-t492 * t245 + t276 * t639 + t433 * t278) * t436 + (-t492 * t244 + t275 * t639 + t433 * t277) * t437 + (-t492 * t405 + t413 * t639 + t433 * t414) * t519 + (-t100 * t492 + t101 * t497 + t114 * t538) * qJD(4) + t590 * t493) * t843 + ((t245 * t497 + t276 * t640 + t435 * t278) * t436 + (t244 * t497 + t275 * t640 + t435 * t277) * t437 + (t405 * t497 + t413 * t640 + t435 * t414) * t519 + (-t102 * t492 + t103 * t497 + t115 * t538) * qJD(4) + t590 * t496) * t845 + 0.2e1 * (t193 * t600 + t182 * t601 + t192 * (t456 + t618) + t181 * (t514 + t619) + t132 * (t644 + t774) + t127 * (t645 + t764)) * t866 + ((qJD(6) * t384 + t326 * t915 + t390 * t780 + t621) * t874 + (qJD(6) * t382 - t325 * t915 - t391 * t780 + t613) * t875 + (qJD(6) * t447 + t325 * t888 - t326 * t887 - t790 * t390 - t785 * t391 + t608) * t876 + (t47 * t620 + t48 * t593) * t735 + (t785 * t874 + t880) * t461 + (-t874 * t888 + t875 * t887) * t423) * t863 + ((t445 * t496 + t446 * t497 + t451 * t459 + t452 * t460 + t534 * t542 + t535 * t541 + t544 * t554 - t545 * t616 + t796 * t907) * t820 + ((-t362 * t496 - t364 * t497 - t370 * t459 - t372 * t460 - t462 * t542 - t464 * t541 - t480 * t554 + t482 * t616 + t796 * t910) * t585 + (t363 * t496 + t365 * t497 + t371 * t459 + t373 * t460 + t463 * t542 + t465 * t541 + t481 * t554 - t483 * t616 + t796 * t909) * t583) * t584) * t575 - (((t496 * t773 + t554 * t761 - t616 * t762) * t820 + (-t496 * t778 - t554 * t769 + t616 * t771) * t795 + (t496 * t777 + t554 * t768 - t616 * t770 - t956) * t796 + t976 * t497) * t796 + t820 * ((t820 * t474 - t773 * t537 - t538 * t969) * t820 + (-t393 * t704 + t394 * t705 + (-t583 * t970 + t585 * t971) * t538 + (-t583 * t777 + t585 * t778) * t537) * t584)) * t867 / 0.2e1 + (t889 * t461 + (t429 * t916 + t447 * t921 + t448 * t919 + t632 * t917 + t655 * t918 - t798 * t920) * t423 + t892 * t391 + t893 * t390 + (t429 * t927 + t447 * t937 + t448 * t933 + t632 * t929 + t655 * t931 - t798 * t935) * t326 + (t429 * t926 + t447 * t936 + t448 * t932 + t632 * t928 + t655 * t930 - t798 * t934) * t325) * t850 + (t889 * t820 + (t583 * t892 - t585 * t893) * t584) * t851 - t49 * t752 / 0.2e1 - t42 * t754 / 0.2e1 + (t890 * t461 + (t347 * t916 + t384 * t921 + t385 * t919 + t640 * t917 + t656 * t918 + t799 * t920) * t423 + t894 * t391 + t895 * t390 + (t347 * t927 + t384 * t937 + t385 * t933 + t640 * t929 + t656 * t931 + t799 * t935) * t326 + (t347 * t926 + t384 * t936 + t385 * t932 + t640 * t928 + t656 * t930 + t799 * t934) * t325) * t859 + (t890 * t820 + (t583 * t894 - t585 * t895) * t584) * t860 + (t891 * t461 + (t345 * t916 + t382 * t921 + t383 * t919 + t639 * t917 + t657 * t918 + t800 * t920) * t423 + t896 * t391 + t897 * t390 + (t345 * t927 + t382 * t937 + t383 * t933 + t639 * t929 + t657 * t931 + t800 * t935) * t326 + (t345 * t926 + t382 * t936 + t383 * t932 + t639 * t928 + t657 * t930 + t800 * t934) * t325) * t857 + (t891 * t820 + (t583 * t896 - t585 * t897) * t584) * t861 - m(4) * (0.2e1 * t181 * t524 + 0.2e1 * t127 * t763 + (t182 * (-t399 * t820 - t477 * t795 - t585 * t690 - t701) + t181 * (t400 * t820 - t477 * t796 - t583 * t690) + t127 * (t399 * t796 + t400 * t795)) * t735) / 0.2e1 + (t125 * t820 + (-t108 * t585 + t109 * t583) * t584) * t710 + t41 * t755 / 0.2e1 + (t611 * t899 + t612 * t874 + t728 * t877 + t731 * t875 + t9 * t898 + t660 * t876 + ((t12 * t670 + t38 * t824 + t48 * t671 + t790 * t9) * t736 + (t11 * t670 + t47 * t671 - t878) * t738) * t584 + (t785 * t899 + t790 * t877 + t824 * t875 - t825 * t874) * t820) * t862 + (0.2e1 * t33 * (-t161 * t820 + t611) + (-t820 * t95 + t612) * t871 + 0.2e1 * t32 * (t163 * t820 + t728) + (t820 * t97 + t731) * t872 + t21 * t898 + t660 * t873 + ((t21 * t163 + t33 * t687 + t52 * t97 + t65 * t688) * t736 + (t21 * t161 + t32 * t687 + t52 * t95 + t64 * t688) * t738) * t584) * t864 + t901 * t796 / 0.2e1 + (0.2e1 * t67 * (-t250 * t820 + t624) + (-t142 * t820 + t625) * t868 + 0.2e1 * t66 * (t251 * t820 + t775) + (t143 * t820 + t779) * t869 + 0.2e1 * t53 * t682 + t684 * t870 + ((t111 * t730 + t73 * t143 + t53 * t251 + t67 * t727) * t736 + (t110 * t730 + t73 * t142 + t53 * t250 + t66 * t727) * t738) * t584) * t865 - m(6) * ((-t461 * t161 - t423 * t184 + t390 * t261 + t326 * t291 + t621) * t871 + (t461 * t163 + t423 * t186 - t391 * t261 - t325 * t291 + t613) * t872 + (t161 * t391 - t163 * t390 + t184 * t325 - t186 * t326 + t608) * t873 + (t593 * t65 + t620 * t64) * t735) / 0.2e1 + ((t493 * t773 + t552 * t761 - t615 * t762) * t820 + (t493 * t777 + t552 * t768 - t615 * t770) * t796 + (-t493 * t778 - t552 * t769 + t615 * t771 + t956) * t795 - t976 * t492) * t867 * t795 / 0.2e1 - t942 * t461 / 0.2e1 - t943 * t391 / 0.2e1 - t944 * t390 / 0.2e1 + (t939 * t820 + (t583 * t945 - t585 * t946) * t584) * t849 + (t940 * t820 + (t583 * t947 - t585 * t948) * t584) * t858 + (t115 * t820 + (-t102 * t585 + t103 * t583) * t584) * t711 + (t114 * t820 + (-t100 * t585 + t101 * t583) * t584) * t712 + (t72 * t820 + (-t50 * t585 + t51 * t583) * t584) * t834 + (t54 * t820 + (-t43 * t585 + t44 * t583) * t584) * t842 + (t55 * t820 + (-t45 * t585 + t46 * t583) * t584) * t844 + t795 * t964 + t820 * t965; (t132 * t739 + (-t192 * t585 + t193 * t583) * t737) * t866 + (t53 * t739 + (t583 * t67 - t585 * t66) * t737) * t865 + (t21 * t739 + (-t32 * t585 + t33 * t583) * t737) * t864 + (t9 * t739 + (-t11 * t585 + t12 * t583) * t737) * t862; (t65 * (-t231 * t423 + t326 * t357 + (-t161 * t516 + t261 * t433) * qJD(5) + t691) + t64 * (t233 * t423 - t325 * t357 + (t163 * t516 - t261 * t435) * qJD(5) + t692) + t52 * (t231 * t325 - t233 * t326 + (t161 * t435 - t163 * t433) * qJD(5) + t693)) * t700 + (-t457 * t897 - t459 * t896 - t493 * t950 - t496 * t949 + t529 * t891 + t537 * t941) * t856 - (t433 * t944 + t435 * t943 + t516 * t942) * qJD(5) / 0.2e1 + (-0.2e1 * t12 * t337 - 0.2e1 * t9 * t253 + t282 * t877 + t783 * t874 + t787 * t875 + t788 * t876 + (t874 * t914 + t880) * t529 + (t785 * t876 + t875 * t908) * t459 + (-t780 * t874 + t876 * t913) * t457 + 0.2e1 * (t12 * t914 + t48 * (-t190 - t825) + t11 * t790 + t47 * t824) * t537 + 0.2e1 * (t11 * t908 + t47 * (t292 + t792) + t878) * t496 + 0.2e1 * (-t12 * t780 - t48 * t792 + t9 * t913 + t38 * (t191 + t824)) * t493) * t862 + (t903 * t632 + (t429 * t911 + t516 * t920 + t655 * t912) * t423 + (t429 * t923 + t516 * t935 + t655 * t925) * t326 + (t429 * t922 + t516 * t934 + t655 * t924) * t325 + (t433 * t893 + t435 * t892 + t516 * t889) * qJD(5)) * t850 + (-t493 * t893 - t496 * t892 + t537 * t889) * t851 + (t903 * t640 + (t347 * t911 + t435 * t920 + t656 * t912) * t423 + (t347 * t923 + t435 * t935 + t656 * t925) * t326 + (t347 * t922 + t435 * t934 + t656 * t924) * t325 + (t433 * t895 + t435 * t894 + t516 * t890) * qJD(5)) * t859 + (-t493 * t895 - t496 * t894 + t537 * t890) * t860 + (t903 * t639 + (t345 * t911 + t433 * t920 + t657 * t912) * t423 + (t345 * t923 + t433 * t935 + t657 * t925) * t326 + (t345 * t922 + t433 * t934 + t657 * t924) * t325 + (t433 * t897 + t435 * t896 + t516 * t891) * qJD(5)) * t857 + (-t493 * t897 - t496 * t896 + t537 * t891) * t861 + ((t326 * t884 - t423 * t886 + t640 * t746 + t691) * t874 + (-t325 * t884 + t423 * t885 + t639 * t746 + t692) * t875 + (t325 * t886 - t326 * t885 + t632 * t746 + t693) * t876 + 0.2e1 * ((t47 * t790 + t48 * t785) * t516 + (-t38 * t785 - t47 * t780) * t435 + (-t38 * t790 + t48 * t780) * t433) * qJD(5)) * t863 + (t516 * t603 + t537 * t626 - t602 * t632) * t835 + (t433 * t603 - t493 * t626 - t602 * t639) * t843 + (t33 * (-t261 * t493 + t537 * t791 - t337) + t65 * (-t123 * t493 - t261 * t457 + (-t190 - t95) * t537 + t791 * t529 + t783) + t32 * (t163 * t537 + t496 * t782 + t282) + t64 * (t163 * t529 + t537 * t97 + (t123 + t292) * t496 + t782 * t459 + t787) + t21 * (-t161 * t496 + t493 * t789 - t253) + t52 * (-t161 * t459 - t496 * t95 + (t191 + t97) * t493 + t789 * t457 + t788)) * t699 + (t435 * t603 - t496 * t626 - t602 * t640) * t845 - t901 * t496 / 0.2e1 + (-t108 * t493 - t109 * t496 + t125 * t537) * t710 + (-t102 * t493 - t103 * t496 + t115 * t537) * t711 + (-t100 * t493 - t101 * t496 + t114 * t537) * t712 + (t49 + t942) * t529 / 0.2e1 - (t42 + t943) * t459 / 0.2e1 - (t41 + t944) * t457 / 0.2e1 + (-t457 * t893 - t459 * t892 - t493 * t946 - t496 * t945 + t529 * t889 + t537 * t939) * t849 + (-t457 * t895 - t459 * t894 - t493 * t948 - t496 * t947 + t529 * t890 + t537 * t940) * t858 + (t67 * (-t250 * t537 - t409 * t493) + t111 * (-t142 * t537 - t267 * t493 + t668) + t66 * (t251 * t537 + t409 * t496) + t110 * (t143 * t537 + t267 * t496 + t667) + t53 * (-t250 * t496 + t251 * t493) + t73 * (-t142 * t496 + t143 * t493 + t669)) * t743 / 0.2e1 - (t111 * (-t317 * t519 + t420 * t437) + t110 * (t318 * t519 - t420 * t436) + t73 * (t317 * t436 - t318 * t437)) * t743 / 0.2e1 + (-t493 * t50 - t496 * t51 + t537 * t72 + t629) * t834 + (-t43 * t493 - t44 * t496 + t537 * t54 + t631) * t842 + (-t45 * t493 - t46 * t496 + t537 * t55 + t630) * t844 + t493 * t964 + t537 * t965; (t33 * (t161 * t632 - t261 * t639) + t65 * (-t123 * t639 - t161 * t426 + t261 * t328 + t632 * t95) + t32 * (-t163 * t632 + t261 * t640) + t64 * (t123 * t640 + t163 * t426 - t261 * t330 - t632 * t97) + t21 * (-t161 * t640 + t163 * t639) + t52 * (t161 * t330 - t163 * t328 + t639 * t97 - t640 * t95)) * t699 + (t65 * (-t208 * t423 + t306 * t326) + t64 * (t212 * t423 - t306 * t325) + t52 * (t208 * t325 - t212 * t326)) * t700 + (t12 * (-t632 * t785 - t639 * t780) + t48 * (t328 * t780 + t426 * t785 + t632 * t825 - t639 * t792) + t11 * (-t632 * t790 + t640 * t780) + t47 * (-t330 * t780 + t426 * t790 - t632 * t824 + t640 * t792) + t9 * (t639 * t790 + t640 * t785) + t38 * (-t328 * t790 - t330 * t785 + t639 * t824 - t640 * t825)) * t741 / 0.2e1 - (t48 * (qJD(6) * t347 + t326 * t781 - t423 * t786) + t47 * (qJD(6) * t345 - t325 * t781 + t423 * t784) + t38 * (qJD(6) * t429 + t325 * t786 - t326 * t784)) * t741 / 0.2e1 + (-t632 * t891 - t639 * t897 - t640 * t896) * t861 + (-t632 * t890 - t639 * t895 - t640 * t894) * t860 + (t347 * t882 - t640 * t881 - t656 * t883) * t859 + (t895 * t328 + t894 * t330 + t890 * t426 - t632 * t940 - t639 * t948 - t640 * t947) * t858 + (t345 * t882 - t639 * t881 - t657 * t883) * t857 + (t897 * t328 + t896 * t330 + t891 * t426 - t632 * t941 - t639 * t950 - t640 * t949) * t856 + t944 * t328 / 0.2e1 + t943 * t330 / 0.2e1 + (-t632 * t889 - t639 * t893 - t640 * t892) * t851 + (t429 * t882 - t632 * t881 - t655 * t883) * t850 + (t893 * t328 + t892 * t330 + t889 * t426 - t632 * t939 - t639 * t946 - t640 * t945) * t849 + t942 * t426 / 0.2e1 + t639 * t975 - t954 * t640 / 0.2e1 - t953 * t632 / 0.2e1; (-t11 * t657 - t12 * t656 - t655 * t9 + (t326 * t655 - t423 * t657 + t158) * t48 + (-t325 * t655 + t423 * t656 + t156) * t47 + (t325 * t657 - t326 * t656 + t262) * t38) * m(7);];
tauc  = t1(:);
