% Calculate vector of centrifugal and Coriolis load on the joints for
% S6PPRRPR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d3,d4,d6,theta1,theta2]';
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
% Datum: 2019-03-08 18:51
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S6PPRRPR2_coriolisvecJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(12,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PPRRPR2_coriolisvecJ_fixb_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PPRRPR2_coriolisvecJ_fixb_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PPRRPR2_coriolisvecJ_fixb_slag_vp1: pkin has to be [12x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6PPRRPR2_coriolisvecJ_fixb_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6PPRRPR2_coriolisvecJ_fixb_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6PPRRPR2_coriolisvecJ_fixb_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 18:49:08
% EndTime: 2019-03-08 18:50:45
% DurationCPUTime: 92.74s
% Computational Cost: add. (101312->1477), mult. (294063->1979), div. (0->0), fcn. (368494->14), ass. (0->557)
t784 = Icges(5,1) + Icges(6,2);
t785 = Icges(6,1) + Icges(5,3);
t783 = Icges(5,4) + Icges(6,6);
t763 = Icges(6,4) - Icges(5,5);
t762 = Icges(6,5) - Icges(5,6);
t761 = Icges(5,2) + Icges(6,3);
t672 = sin(pkin(11));
t675 = cos(pkin(12));
t568 = t672 * t675;
t671 = sin(pkin(12));
t676 = cos(pkin(11));
t572 = t676 * t671;
t678 = cos(pkin(6));
t478 = t572 * t678 + t568;
t489 = sin(qJ(3));
t683 = cos(qJ(3));
t567 = t672 * t671;
t574 = t676 * t675;
t498 = -t574 * t678 + t567;
t673 = sin(pkin(7));
t674 = sin(pkin(6));
t571 = t674 * t673;
t677 = cos(pkin(7));
t753 = t498 * t677 + t676 * t571;
t453 = t478 * t683 - t489 * t753;
t573 = t676 * t674;
t471 = t498 * t673 - t573 * t677;
t488 = sin(qJ(4));
t682 = cos(qJ(4));
t408 = t453 * t488 - t471 * t682;
t452 = t478 * t489 + t683 * t753;
t409 = t453 * t682 + t471 * t488;
t661 = Icges(6,6) * t409;
t193 = Icges(6,5) * t452 + Icges(6,3) * t408 - t661;
t403 = Icges(6,6) * t408;
t197 = Icges(6,4) * t452 - Icges(6,2) * t409 + t403;
t201 = Icges(6,1) * t452 - Icges(6,4) * t409 + Icges(6,5) * t408;
t69 = t193 * t408 - t197 * t409 + t201 * t452;
t195 = Icges(5,5) * t409 - Icges(5,6) * t408 + Icges(5,3) * t452;
t667 = Icges(5,4) * t409;
t199 = -Icges(5,2) * t408 + Icges(5,6) * t452 + t667;
t405 = Icges(5,4) * t408;
t203 = Icges(5,1) * t409 + Icges(5,5) * t452 - t405;
t73 = t195 * t452 - t199 * t408 + t203 * t409;
t740 = t69 + t73;
t479 = -t567 * t678 + t574;
t499 = t568 * t678 + t572;
t570 = t674 * t672;
t716 = t499 * t677 - t673 * t570;
t455 = t479 * t683 - t489 * t716;
t472 = t499 * t673 + t570 * t677;
t410 = t455 * t488 - t472 * t682;
t454 = t479 * t489 + t683 * t716;
t411 = t455 * t682 + t472 * t488;
t660 = Icges(6,6) * t411;
t194 = Icges(6,5) * t454 + Icges(6,3) * t410 - t660;
t404 = Icges(6,6) * t410;
t198 = Icges(6,4) * t454 - Icges(6,2) * t411 + t404;
t202 = Icges(6,1) * t454 - Icges(6,4) * t411 + Icges(6,5) * t410;
t70 = t194 * t408 - t198 * t409 + t202 * t452;
t196 = Icges(5,5) * t411 - Icges(5,6) * t410 + Icges(5,3) * t454;
t666 = Icges(5,4) * t411;
t200 = -Icges(5,2) * t410 + Icges(5,6) * t454 + t666;
t406 = Icges(5,4) * t410;
t204 = Icges(5,1) * t411 + Icges(5,5) * t454 - t406;
t74 = t196 * t452 - t200 * t408 + t204 * t409;
t739 = t70 + t74;
t71 = t193 * t410 - t197 * t411 + t201 * t454;
t75 = t195 * t454 - t199 * t410 + t203 * t411;
t738 = t71 + t75;
t72 = t194 * t410 - t198 * t411 + t202 * t454;
t76 = t196 * t454 - t200 * t410 + t204 * t411;
t737 = t72 + t76;
t569 = t674 * t671;
t715 = t675 * t677 * t674 + t678 * t673;
t470 = t489 * t715 + t683 * t569;
t477 = -t571 * t675 + t677 * t678;
t456 = t470 * t488 - t477 * t682;
t457 = t470 * t682 + t477 * t488;
t493 = -t489 * t569 + t683 * t715;
t91 = t193 * t456 - t197 * t457 - t201 * t493;
t93 = -t195 * t493 - t199 * t456 + t203 * t457;
t736 = t91 + t93;
t92 = t194 * t456 - t198 * t457 - t202 * t493;
t94 = -t196 * t493 - t200 * t456 + t204 * t457;
t735 = t92 + t94;
t323 = Icges(5,5) * t457 - Icges(5,6) * t456 - Icges(5,3) * t493;
t665 = Icges(5,4) * t457;
t325 = -Icges(5,2) * t456 - Icges(5,6) * t493 + t665;
t451 = Icges(5,4) * t456;
t327 = Icges(5,1) * t457 - Icges(5,5) * t493 - t451;
t101 = t323 * t452 - t325 * t408 + t327 * t409;
t659 = Icges(6,6) * t457;
t322 = -Icges(6,5) * t493 + Icges(6,3) * t456 - t659;
t450 = Icges(6,6) * t456;
t324 = -Icges(6,4) * t493 - Icges(6,2) * t457 + t450;
t326 = -Icges(6,1) * t493 - Icges(6,4) * t457 + Icges(6,5) * t456;
t99 = t322 * t408 - t324 * t409 + t326 * t452;
t734 = t101 + t99;
t100 = t322 * t410 - t324 * t411 + t326 * t454;
t102 = t323 * t454 - t325 * t410 + t327 * t411;
t733 = t100 + t102;
t105 = t322 * t456 - t324 * t457 - t326 * t493;
t106 = -t323 * t493 - t325 * t456 + t327 * t457;
t732 = t105 + t106;
t440 = t452 * qJD(3);
t298 = qJD(4) * t409 - t440 * t488;
t595 = qJD(4) * t682;
t614 = qJD(4) * t488;
t299 = -t440 * t682 - t453 * t614 + t471 * t595;
t441 = t453 * qJD(3);
t782 = t298 * t761 - t299 * t783 + t441 * t762;
t442 = t454 * qJD(3);
t300 = qJD(4) * t411 - t442 * t488;
t301 = -t442 * t682 - t455 * t614 + t472 * t595;
t443 = t455 * qJD(3);
t781 = t300 * t761 - t301 * t783 + t443 * t762;
t780 = t298 * t762 - t299 * t763 + t441 * t785;
t779 = t300 * t762 - t301 * t763 + t443 * t785;
t778 = -t783 * t298 + t299 * t784 - t763 * t441;
t777 = -t783 * t300 + t301 * t784 - t763 * t443;
t776 = t193 - t199;
t775 = t194 - t200;
t731 = t195 + t201;
t730 = t196 + t202;
t774 = -t197 + t203;
t773 = -t198 + t204;
t461 = t493 * qJD(3);
t397 = qJD(4) * t457 + t461 * t488;
t398 = t461 * t682 - t470 * t614 + t477 * t595;
t462 = t470 * qJD(3);
t772 = t397 * t761 - t398 * t783 + t462 * t762;
t771 = t397 * t762 - t398 * t763 + t462 * t785;
t770 = -t783 * t397 + t398 * t784 - t763 * t462;
t769 = t322 - t325;
t725 = t323 + t326;
t768 = -t324 + t327;
t620 = qJD(4) * t441;
t230 = qJD(6) * t299 + t620;
t707 = t230 / 0.2e1;
t619 = qJD(4) * t443;
t231 = qJD(6) * t301 + t619;
t706 = t231 / 0.2e1;
t467 = qJD(3) * t471;
t414 = qJD(4) * t452 + t467;
t264 = qJD(6) * t409 + t414;
t704 = t264 / 0.2e1;
t468 = qJD(3) * t472;
t415 = qJD(4) * t454 + t468;
t265 = qJD(6) * t411 + t415;
t702 = t265 / 0.2e1;
t616 = qJD(4) * t462;
t334 = qJD(6) * t398 + t616;
t701 = t334 / 0.2e1;
t476 = qJD(3) * t477;
t458 = -qJD(4) * t493 + t476;
t381 = qJD(6) * t457 + t458;
t699 = t381 / 0.2e1;
t487 = sin(qJ(6));
t490 = cos(qJ(6));
t306 = t408 * t490 - t452 * t487;
t307 = t408 * t487 + t452 * t490;
t122 = Icges(7,5) * t307 + Icges(7,6) * t306 + Icges(7,3) * t409;
t664 = Icges(7,4) * t307;
t124 = Icges(7,2) * t306 + Icges(7,6) * t409 + t664;
t302 = Icges(7,4) * t306;
t126 = Icges(7,1) * t307 + Icges(7,5) * t409 + t302;
t130 = -qJD(6) * t307 + t298 * t490 - t441 * t487;
t131 = qJD(6) * t306 + t298 * t487 + t441 * t490;
t79 = Icges(7,5) * t131 + Icges(7,6) * t130 + Icges(7,3) * t299;
t81 = Icges(7,4) * t131 + Icges(7,2) * t130 + Icges(7,6) * t299;
t83 = Icges(7,1) * t131 + Icges(7,4) * t130 + Icges(7,5) * t299;
t11 = t122 * t299 + t124 * t130 + t126 * t131 + t306 * t81 + t307 * t83 + t409 * t79;
t308 = t410 * t490 - t454 * t487;
t309 = t410 * t487 + t454 * t490;
t123 = Icges(7,5) * t309 + Icges(7,6) * t308 + Icges(7,3) * t411;
t663 = Icges(7,4) * t309;
t125 = Icges(7,2) * t308 + Icges(7,6) * t411 + t663;
t303 = Icges(7,4) * t308;
t127 = Icges(7,1) * t309 + Icges(7,5) * t411 + t303;
t132 = -qJD(6) * t309 + t300 * t490 - t443 * t487;
t133 = qJD(6) * t308 + t300 * t487 + t443 * t490;
t80 = Icges(7,5) * t133 + Icges(7,6) * t132 + Icges(7,3) * t301;
t82 = Icges(7,4) * t133 + Icges(7,2) * t132 + Icges(7,6) * t301;
t84 = Icges(7,1) * t133 + Icges(7,4) * t132 + Icges(7,5) * t301;
t12 = t123 * t299 + t125 * t130 + t127 * t131 + t306 * t82 + t307 * t84 + t409 * t80;
t413 = t456 * t487 - t490 * t493;
t217 = -qJD(6) * t413 + t397 * t490 - t462 * t487;
t412 = t456 * t490 + t487 * t493;
t218 = qJD(6) * t412 + t397 * t487 + t462 * t490;
t107 = Icges(7,5) * t218 + Icges(7,6) * t217 + Icges(7,3) * t398;
t108 = Icges(7,4) * t218 + Icges(7,2) * t217 + Icges(7,6) * t398;
t109 = Icges(7,1) * t218 + Icges(7,4) * t217 + Icges(7,5) * t398;
t210 = Icges(7,5) * t413 + Icges(7,6) * t412 + Icges(7,3) * t457;
t662 = Icges(7,4) * t413;
t211 = Icges(7,2) * t412 + Icges(7,6) * t457 + t662;
t407 = Icges(7,4) * t412;
t212 = Icges(7,1) * t413 + Icges(7,5) * t457 + t407;
t22 = t107 * t409 + t108 * t306 + t109 * t307 + t130 * t211 + t131 * t212 + t210 * t299;
t54 = t122 * t409 + t124 * t306 + t126 * t307;
t55 = t123 * t409 + t125 * t306 + t127 * t307;
t67 = t210 * t409 + t211 * t306 + t212 * t307;
t767 = t11 * t704 + t12 * t702 + t22 * t699 + t54 * t707 + t55 * t706 + t67 * t701;
t13 = t122 * t301 + t124 * t132 + t126 * t133 + t308 * t81 + t309 * t83 + t411 * t79;
t14 = t123 * t301 + t125 * t132 + t127 * t133 + t308 * t82 + t309 * t84 + t411 * t80;
t23 = t107 * t411 + t108 * t308 + t109 * t309 + t132 * t211 + t133 * t212 + t210 * t301;
t56 = t122 * t411 + t124 * t308 + t126 * t309;
t57 = t123 * t411 + t125 * t308 + t127 * t309;
t68 = t210 * t411 + t211 * t308 + t212 * t309;
t766 = t13 * t704 + t14 * t702 + t23 * t699 + t56 * t707 + t57 * t706 + t68 * t701;
t697 = t414 / 0.2e1;
t695 = t415 / 0.2e1;
t689 = t458 / 0.2e1;
t765 = qJD(4) / 0.2e1;
t749 = t298 * t776 + t299 * t774 + t408 * t782 + t409 * t778 + t441 * t731 + t452 * t780;
t748 = t298 * t775 + t299 * t773 + t408 * t781 + t409 * t777 + t441 * t730 + t452 * t779;
t747 = t300 * t776 + t301 * t774 + t410 * t782 + t411 * t778 + t443 * t731 + t454 * t780;
t746 = t300 * t775 + t301 * t773 + t410 * t781 + t411 * t777 + t443 * t730 + t454 * t779;
t745 = t397 * t776 + t398 * t774 + t456 * t782 + t457 * t778 + t462 * t731 - t493 * t780;
t744 = t397 * t775 + t398 * t773 + t456 * t781 + t457 * t777 + t462 * t730 - t493 * t779;
t743 = t298 * t769 + t299 * t768 + t408 * t772 + t409 * t770 + t441 * t725 + t452 * t771;
t742 = t300 * t769 + t301 * t768 + t410 * t772 + t411 * t770 + t443 * t725 + t454 * t771;
t741 = t397 * t769 + t398 * t768 + t456 * t772 + t457 * t770 + t462 * t725 - t493 * t771;
t760 = t441 * t736 + t443 * t735 + t462 * t732;
t759 = t441 * t738 + t443 * t737 + t462 * t733;
t758 = t441 * t740 + t739 * t443 + t734 * t462;
t757 = -t488 * t761 + t682 * t783;
t756 = -t488 * t783 + t682 * t784;
t755 = t689 * t742 + t746 * t695 + t697 * t747 + t759 * t765 + t766;
t754 = t743 * t689 + t748 * t695 + t749 * t697 + t758 * t765 + t767;
t752 = t414 * t740 + t415 * t739 + t458 * t734;
t751 = t414 * t738 + t415 * t737 + t458 * t733;
t750 = t414 * t736 + t415 * t735 + t458 * t732;
t729 = t452 * t757 + t453 * t762;
t728 = t454 * t757 + t455 * t762;
t727 = -t452 * t756 - t453 * t763;
t726 = -t454 * t756 - t455 * t763;
t724 = t470 * t762 - t493 * t757;
t723 = -t470 * t763 + t493 * t756;
t722 = (t457 * t761 + t450 + t451 - t768) * t458 + (t411 * t761 + t404 + t406 - t773) * t415 + (t409 * t761 + t403 + t405 - t774) * t414;
t721 = (-t456 * t784 - t659 - t665 + t769) * t458 + (-t410 * t784 - t660 - t666 + t775) * t415 + (-t408 * t784 - t661 - t667 + t776) * t414;
t720 = (t456 * t763 + t457 * t762) * t458 + (t410 * t763 + t411 * t762) * t415 + (t408 * t763 + t409 * t762) * t414;
t19 = t122 * t398 + t124 * t217 + t126 * t218 + t412 * t81 + t413 * t83 + t457 * t79;
t20 = t123 * t398 + t125 * t217 + t127 * t218 + t412 * t82 + t413 * t84 + t457 * t80;
t25 = t107 * t457 + t108 * t412 + t109 * t413 + t210 * t398 + t211 * t217 + t212 * t218;
t63 = t122 * t457 + t124 * t412 + t126 * t413;
t64 = t123 * t457 + t125 * t412 + t127 * t413;
t77 = t210 * t457 + t211 * t412 + t212 * t413;
t3 = t19 * t264 + t20 * t265 + t230 * t63 + t231 * t64 + t25 * t381 + t334 * t77;
t717 = qJD(4) * t760 + t414 * t745 + t415 * t744 + t458 * t741 + t3;
t128 = rSges(7,1) * t307 + rSges(7,2) * t306 + rSges(7,3) * t409;
t255 = pkin(4) * t409 + qJ(5) * t408;
t312 = pkin(5) * t452 + pkin(10) * t409;
t626 = -t255 - t312;
t602 = -t128 + t626;
t129 = rSges(7,1) * t309 + rSges(7,2) * t308 + rSges(7,3) * t411;
t259 = pkin(4) * t411 + qJ(5) * t410;
t313 = pkin(5) * t454 + pkin(10) * t411;
t625 = -t259 - t313;
t601 = -t129 + t625;
t213 = rSges(7,1) * t413 + rSges(7,2) * t412 + rSges(7,3) * t457;
t380 = pkin(4) * t457 + qJ(5) * t456;
t416 = -pkin(5) * t493 + pkin(10) * t457;
t621 = -t380 - t416;
t600 = -t213 + t621;
t347 = -pkin(3) * t440 + pkin(9) * t441;
t348 = -pkin(3) * t442 + pkin(9) * t443;
t581 = t347 * t468 - t348 * t467;
t232 = pkin(5) * t441 + pkin(10) * t299;
t399 = qJD(5) * t408;
t120 = pkin(4) * t299 + qJ(5) * t298 + t399;
t114 = t415 * t120;
t189 = t255 * t619;
t395 = qJD(5) * t397;
t520 = t114 + t189 + t395 + t581;
t401 = qJD(5) * t410;
t121 = pkin(4) * t301 + qJ(5) * t300 + t401;
t233 = pkin(5) * t443 + pkin(10) * t301;
t641 = -t121 - t233;
t654 = t312 * t443;
t657 = t129 * t230;
t658 = t128 * t231;
t85 = rSges(7,1) * t131 + rSges(7,2) * t130 + rSges(7,3) * t299;
t679 = t265 * t85;
t86 = rSges(7,1) * t133 + rSges(7,2) * t132 + rSges(7,3) * t301;
t680 = t264 * t86;
t10 = t658 - t657 + t232 * t415 - t680 + t679 + t641 * t414 + (t441 * t625 + t654) * qJD(4) + t520;
t714 = 0.2e1 * t10;
t110 = rSges(7,1) * t218 + rSges(7,2) * t217 + rSges(7,3) * t398;
t424 = pkin(3) * t461 + pkin(9) * t462;
t579 = t348 * t476 - t424 * t468;
t519 = qJD(5) * t298 + t458 * t121 + t259 * t616 + t579;
t448 = qJD(5) * t456;
t186 = pkin(4) * t398 + qJ(5) * t397 + t448;
t335 = pkin(5) * t462 + pkin(10) * t398;
t633 = -t186 - t335;
t653 = t313 * t462;
t15 = -t110 * t265 + t129 * t334 - t213 * t231 + t233 * t458 + t381 * t86 + t633 * t415 + (t443 * t621 + t653) * qJD(4) + t519;
t713 = 0.2e1 * t15;
t577 = -t347 * t476 + t424 * t467;
t518 = qJD(5) * t300 + t414 * t186 + t380 * t620 + t577;
t643 = -t120 - t232;
t651 = t416 * t441;
t16 = t110 * t264 - t128 * t334 + t213 * t230 + t335 * t414 - t381 * t85 + t643 * t458 + (t462 * t626 + t651) * qJD(4) + t518;
t712 = 0.2e1 * t16;
t368 = pkin(3) * t453 + pkin(9) * t452;
t370 = pkin(3) * t455 + pkin(9) * t454;
t612 = qJD(2) * t678 + qJD(1);
t538 = t368 * t468 - t370 * t467 + t612;
t512 = t415 * t255 + t448 + t538;
t32 = t128 * t265 - t129 * t264 + t312 * t415 + t414 * t625 + t512;
t711 = 0.2e1 * t32;
t435 = pkin(3) * t470 - pkin(9) * t493;
t485 = qJD(2) * t570;
t552 = -t368 * t476 + t435 * t467 + t485;
t517 = t414 * t380 + t401 + t552;
t47 = -t128 * t381 + t213 * t264 + t414 * t416 + t458 * t626 + t517;
t710 = 0.2e1 * t47;
t551 = qJD(2) * t573;
t508 = t370 * t476 - t435 * t468 - t551;
t497 = t458 * t259 + t399 + t508;
t48 = t381 * t129 - t265 * t213 + t458 * t313 + t415 * t621 + t497;
t709 = 0.2e1 * t48;
t708 = m(7) / 0.2e1;
t705 = -t264 / 0.2e1;
t703 = -t265 / 0.2e1;
t700 = -t381 / 0.2e1;
t698 = -t414 / 0.2e1;
t696 = -t415 / 0.2e1;
t690 = -t458 / 0.2e1;
t670 = Icges(4,4) * t453;
t669 = Icges(4,4) * t455;
t668 = Icges(4,4) * t470;
t656 = t255 * t470;
t655 = t259 * t453;
t652 = t380 * t455;
t650 = t487 * t488;
t649 = t488 * t490;
t648 = t454 * t120 + t443 * t255;
t647 = -t121 * t493 + t462 * t259;
t311 = t472 * t347;
t646 = t472 * t120 + t311;
t333 = t477 * t348;
t645 = t477 * t121 + t333;
t146 = rSges(6,1) * t441 - rSges(6,2) * t299 + rSges(6,3) * t298;
t644 = -t120 - t146;
t147 = rSges(6,1) * t443 - rSges(6,2) * t301 + rSges(6,3) * t300;
t642 = -t121 - t147;
t150 = t408 * t415 - t410 * t414;
t640 = -t150 + t397;
t639 = t452 * t186 + t441 * t380;
t553 = t408 * t458 - t414 * t456;
t638 = t553 + t300;
t172 = t410 * t458 - t415 * t456;
t637 = -t172 + t298;
t383 = t471 * t424;
t636 = t471 * t186 + t383;
t253 = -pkin(4) * t408 + qJ(5) * t409;
t635 = qJD(5) * t457 + t415 * t253;
t225 = rSges(6,1) * t462 - rSges(6,2) * t398 + rSges(6,3) * t397;
t634 = -t186 - t225;
t206 = rSges(6,1) * t452 - rSges(6,2) * t409 + rSges(6,3) * t408;
t632 = -t206 - t255;
t207 = rSges(6,1) * t454 - rSges(6,2) * t411 + rSges(6,3) * t410;
t631 = -t207 - t259;
t257 = -pkin(4) * t410 + qJ(5) * t411;
t630 = qJD(5) * t409 + t458 * t257;
t330 = t472 * t368;
t629 = t472 * t255 + t330;
t338 = t477 * t370;
t628 = t477 * t259 + t338;
t378 = -pkin(4) * t456 + qJ(5) * t457;
t627 = qJD(5) * t411 + t414 * t378;
t624 = 0.2e1 * t581;
t328 = -rSges(6,1) * t493 - rSges(6,2) * t457 + rSges(6,3) * t456;
t623 = -t328 - t380;
t396 = t471 * t435;
t622 = t471 * t380 + t396;
t618 = qJD(4) * t453;
t617 = qJD(4) * t455;
t615 = qJD(4) * t470;
t613 = qJD(5) * t488;
t611 = 2 * m(4);
t610 = 2 * m(5);
t609 = 2 * m(6);
t608 = 0.2e1 * m(7);
t606 = 0.2e1 * qJD(4);
t605 = -t85 + t643;
t604 = -t86 + t641;
t603 = -t110 + t633;
t599 = t452 * t682;
t598 = t454 * t682;
t597 = t493 * t682;
t594 = qJD(6) * t682;
t593 = t620 / 0.2e1;
t592 = t619 / 0.2e1;
t589 = t616 / 0.2e1;
t587 = t611 / 0.2e1;
t586 = -t610 / 0.2e1;
t585 = t610 / 0.2e1;
t584 = t609 / 0.2e1;
t583 = -t608 / 0.2e1;
t582 = t608 / 0.2e1;
t367 = -pkin(3) * t452 + pkin(9) * t453;
t369 = -pkin(3) * t454 + pkin(9) * t455;
t580 = t367 * t468 - t369 * t467;
t434 = pkin(3) * t493 + pkin(9) * t470;
t578 = t369 * t476 - t434 * t468;
t576 = -t367 * t476 + t434 * t467;
t566 = rSges(7,1) * t487 + rSges(7,2) * t490;
t565 = Icges(7,1) * t487 + Icges(7,4) * t490;
t564 = Icges(7,4) * t487 + Icges(7,2) * t490;
t563 = Icges(7,5) * t487 + Icges(7,6) * t490;
t208 = rSges(5,1) * t409 - rSges(5,2) * t408 + rSges(5,3) * t452;
t209 = rSges(5,1) * t411 - rSges(5,2) * t410 + rSges(5,3) * t454;
t562 = t208 * t443 - t209 * t441;
t329 = rSges(5,1) * t457 - rSges(5,2) * t456 - rSges(5,3) * t493;
t561 = -t208 * t462 + t329 * t441;
t560 = t209 * t462 - t329 * t443;
t318 = rSges(4,1) * t453 - rSges(4,2) * t452 + rSges(4,3) * t471;
t319 = rSges(4,1) * t455 - rSges(4,2) * t454 + rSges(4,3) * t472;
t559 = t318 * t472 - t319 * t471;
t419 = rSges(4,1) * t470 + rSges(4,2) * t493 + rSges(4,3) * t477;
t558 = -t318 * t477 + t419 * t471;
t557 = t319 * t477 - t419 * t472;
t345 = -rSges(4,1) * t440 - rSges(4,2) * t441;
t346 = -rSges(4,1) * t442 - rSges(4,2) * t443;
t556 = t345 * t472 - t346 * t471;
t423 = rSges(4,1) * t461 - rSges(4,2) * t462;
t555 = -t345 * t477 + t423 * t471;
t554 = t346 * t477 - t423 * t472;
t550 = -rSges(5,1) * t682 + rSges(5,2) * t488;
t549 = rSges(6,2) * t682 - rSges(6,3) * t488;
t548 = -pkin(4) * t682 - qJ(5) * t488;
t545 = Icges(6,4) * t682 - Icges(6,5) * t488;
t544 = -Icges(5,5) * t682 + Icges(5,6) * t488;
t541 = t206 * t443 + t441 * t631;
t540 = t207 * t462 + t443 * t623;
t539 = t328 * t441 + t462 * t632;
t161 = t556 * qJD(3);
t537 = -0.2e1 * t414 * t121 - 0.2e1 * t259 * t620 + 0.2e1 * t114 + 0.2e1 * t189 + 0.2e1 * t395 + t624;
t533 = Icges(6,1) * t453 - t193 * t488 + t197 * t682 + t452 * t545;
t532 = Icges(6,1) * t455 - t194 * t488 + t198 * t682 + t454 * t545;
t531 = Icges(6,1) * t470 - t322 * t488 + t324 * t682 - t493 * t545;
t524 = (Icges(7,5) * t306 - Icges(7,6) * t307) * t264 + (Icges(7,5) * t308 - Icges(7,6) * t309) * t265 + (Icges(7,5) * t412 - Icges(7,6) * t413) * t381;
t521 = (-Icges(4,5) * t452 - Icges(4,6) * t453) * t471 + (-Icges(4,5) * t454 - Icges(4,6) * t455) * t472 + (Icges(4,5) * t493 - Icges(4,6) * t470) * t477;
t516 = t10 * (t128 + t312) + t32 * (t232 + t85);
t515 = t15 * (t129 + t313) + t48 * (t233 + t86);
t514 = t16 * (t213 + t416) + t47 * (t110 + t335);
t353 = t548 * t452;
t354 = t548 * t454;
t511 = t255 * t617 + t415 * t353 - t354 * t414 + t493 * t613 + t580;
t427 = t548 * t493;
t510 = t259 * t615 + t458 * t354 + t415 * t427 - t452 * t613 + t578;
t509 = -t353 * t458 + t380 * t618 - t414 * t427 - t454 * t613 + t576;
t507 = (Icges(7,1) * t308 - t125 - t663) * t265 + (Icges(7,1) * t306 - t124 - t664) * t264 + (Icges(7,1) * t412 - t211 - t662) * t381;
t506 = (-Icges(7,2) * t309 + t127 + t303) * t265 + (-Icges(7,2) * t307 + t126 + t302) * t264 + (-Icges(7,2) * t413 + t212 + t407) * t381;
t314 = -Icges(4,2) * t452 + Icges(4,6) * t471 + t670;
t315 = -Icges(4,2) * t454 + Icges(4,6) * t472 + t669;
t417 = Icges(4,2) * t493 + Icges(4,6) * t477 + t668;
t501 = (-Icges(4,1) * t454 - t315 - t669) * t472 + (-Icges(4,1) * t452 - t314 - t670) * t471 + (Icges(4,1) * t493 - t417 - t668) * t477;
t446 = Icges(4,4) * t452;
t316 = Icges(4,1) * t453 + Icges(4,5) * t471 - t446;
t447 = Icges(4,4) * t454;
t317 = Icges(4,1) * t455 + Icges(4,5) * t472 - t447;
t466 = Icges(4,4) * t493;
t418 = Icges(4,1) * t470 + Icges(4,5) * t477 + t466;
t500 = (Icges(4,2) * t455 - t317 + t447) * t472 + (Icges(4,2) * t453 - t316 + t446) * t471 + (Icges(4,2) * t470 - t418 - t466) * t477;
t492 = (-Icges(7,3) * t410 + t125 * t490 + t127 * t487 + t411 * t563) * t265 + (-Icges(7,3) * t408 + t124 * t490 + t126 * t487 + t409 * t563) * t264 + (-Icges(7,3) * t456 + t211 * t490 + t212 * t487 + t457 * t563) * t381;
t491 = (Icges(5,3) * t455 + t200 * t488 - t204 * t682 + t454 * t544) * t415 + (Icges(5,3) * t453 + t199 * t488 - t203 * t682 + t452 * t544) * t414 + (Icges(5,3) * t470 + t325 * t488 - t327 * t682 - t493 * t544) * t458;
t433 = rSges(4,1) * t493 - rSges(4,2) * t470;
t429 = t470 * pkin(5) + pkin(10) * t597;
t428 = t493 * t594 + t615;
t426 = t470 * t490 + t493 * t650;
t425 = -t470 * t487 + t493 * t649;
t422 = Icges(4,1) * t461 - Icges(4,4) * t462;
t421 = Icges(4,4) * t461 - Icges(4,2) * t462;
t420 = Icges(4,5) * t461 - Icges(4,6) * t462;
t391 = t470 * rSges(6,1) - t493 * t549;
t390 = t470 * rSges(5,3) - t493 * t550;
t379 = -rSges(5,1) * t456 - rSges(5,2) * t457;
t377 = rSges(6,2) * t456 + rSges(6,3) * t457;
t366 = -rSges(4,1) * t454 - rSges(4,2) * t455;
t365 = -rSges(4,1) * t452 - rSges(4,2) * t453;
t358 = t455 * pkin(5) - pkin(10) * t598;
t357 = t453 * pkin(5) - pkin(10) * t599;
t356 = -t454 * t594 + t617;
t355 = -t452 * t594 + t618;
t352 = -t454 * t650 + t455 * t490;
t351 = -t454 * t649 - t455 * t487;
t350 = -t452 * t650 + t453 * t490;
t349 = -t452 * t649 - t453 * t487;
t344 = -Icges(4,1) * t442 - Icges(4,4) * t443;
t343 = -Icges(4,1) * t440 - Icges(4,4) * t441;
t342 = -Icges(4,4) * t442 - Icges(4,2) * t443;
t341 = -Icges(4,4) * t440 - Icges(4,2) * t441;
t340 = -Icges(4,5) * t442 - Icges(4,6) * t443;
t339 = -Icges(4,5) * t440 - Icges(4,6) * t441;
t294 = t452 * t380;
t289 = -t456 * rSges(7,3) + t457 * t566;
t288 = -Icges(7,5) * t456 + t457 * t565;
t287 = -Icges(7,6) * t456 + t457 * t564;
t285 = t455 * rSges(6,1) + t454 * t549;
t284 = t453 * rSges(6,1) + t452 * t549;
t283 = t455 * rSges(5,3) + t454 * t550;
t282 = t453 * rSges(5,3) + t452 * t550;
t269 = t426 * rSges(7,1) + t425 * rSges(7,2) + rSges(7,3) * t597;
t268 = Icges(7,1) * t426 + Icges(7,4) * t425 + Icges(7,5) * t597;
t267 = Icges(7,4) * t426 + Icges(7,2) * t425 + Icges(7,6) * t597;
t266 = Icges(7,5) * t426 + Icges(7,6) * t425 + Icges(7,3) * t597;
t263 = rSges(7,1) * t412 - rSges(7,2) * t413;
t258 = -rSges(5,1) * t410 - rSges(5,2) * t411;
t256 = rSges(6,2) * t410 + rSges(6,3) * t411;
t254 = -rSges(5,1) * t408 - rSges(5,2) * t409;
t252 = rSges(6,2) * t408 + rSges(6,3) * t409;
t234 = t493 * t259;
t226 = rSges(5,1) * t398 - rSges(5,2) * t397 + rSges(5,3) * t462;
t214 = t454 * t255;
t192 = t554 * qJD(3);
t191 = t555 * qJD(3);
t182 = -t410 * rSges(7,3) + t411 * t566;
t181 = -t408 * rSges(7,3) + t409 * t566;
t180 = -Icges(7,5) * t410 + t411 * t565;
t179 = -Icges(7,5) * t408 + t409 * t565;
t178 = -Icges(7,6) * t410 + t411 * t564;
t177 = -Icges(7,6) * t408 + t409 * t564;
t174 = qJD(3) * t557 - t551;
t173 = qJD(3) * t558 + t485;
t170 = t352 * rSges(7,1) + t351 * rSges(7,2) - rSges(7,3) * t598;
t169 = t350 * rSges(7,1) + t349 * rSges(7,2) - rSges(7,3) * t599;
t168 = Icges(7,1) * t352 + Icges(7,4) * t351 - Icges(7,5) * t598;
t167 = Icges(7,1) * t350 + Icges(7,4) * t349 - Icges(7,5) * t599;
t166 = Icges(7,4) * t352 + Icges(7,2) * t351 - Icges(7,6) * t598;
t165 = Icges(7,4) * t350 + Icges(7,2) * t349 - Icges(7,6) * t599;
t164 = Icges(7,5) * t352 + Icges(7,6) * t351 - Icges(7,3) * t598;
t163 = Icges(7,5) * t350 + Icges(7,6) * t349 - Icges(7,3) * t599;
t160 = rSges(7,1) * t308 - rSges(7,2) * t309;
t159 = rSges(7,1) * t306 - rSges(7,2) * t307;
t151 = qJD(3) * t559 + t612;
t149 = rSges(5,1) * t301 - rSges(5,2) * t300 + rSges(5,3) * t443;
t148 = rSges(5,1) * t299 - rSges(5,2) * t298 + rSges(5,3) * t441;
t98 = t458 * t209 - t415 * t329 + t508;
t97 = -t208 * t458 + t329 * t414 + t552;
t78 = t208 * t415 - t209 * t414 + t538;
t66 = t458 * t207 + t415 * t623 + t497;
t65 = t328 * t414 + t458 * t632 + t517;
t62 = qJD(4) * t560 + t149 * t458 - t226 * t415 + t579;
t61 = qJD(4) * t561 - t148 * t458 + t226 * t414 + t577;
t58 = t206 * t415 + t414 * t631 + t512;
t49 = qJD(4) * t562 + t148 * t415 - t149 * t414 + t581;
t31 = qJD(4) * t540 + t147 * t458 + t415 * t634 + t519;
t30 = qJD(4) * t539 + t225 * t414 + t458 * t644 + t518;
t24 = qJD(4) * t541 + t146 * t415 + t414 * t642 + t520;
t21 = t264 * t63 + t265 * t64 + t381 * t77;
t18 = t264 * t56 + t265 * t57 + t381 * t68;
t17 = t264 * t54 + t265 * t55 + t381 * t67;
t1 = [(t537 - 0.2e1 * t657 + 0.2e1 * t658 + 0.2e1 * t679 - 0.2e1 * t680) * t708 + m(5) * t624 / 0.2e1 + m(6) * t537 / 0.2e1 + t161 * t587 + (m(5) * t208 + m(6) * t206 + m(7) * t312) * t619 + (-m(5) * t209 - m(6) * t207 - m(7) * t313) * t620 + (m(5) * t148 + m(6) * t146 + m(7) * t232) * t415 + (-m(5) * t149 - m(6) * t147 - m(7) * t233) * t414; (t10 * t678 - t15 * t573 + t16 * t570) * t582 + (t161 * t678 + t191 * t570 - t192 * t573) * t587 + (t49 * t678 + t570 * t61 - t573 * t62) * t585 + (t24 * t678 + t30 * t570 - t31 * t573) * t584; -(t477 * (t470 * t501 + t477 * t521 - t493 * t500) + t472 * (t454 * t500 + t455 * t501 + t472 * t521) + t471 * (t452 * t500 + t453 * t501 + t471 * t521)) * qJD(3) ^ 2 / 0.2e1 + ((-t417 * t462 + t418 * t461 + t420 * t477 + t421 * t493 + t422 * t470) * t477 + t471 * (-t314 * t462 + t316 * t461 + t339 * t477 + t341 * t493 + t343 * t470) + t472 * (-t315 * t462 + t317 * t461 + t340 * t477 + t342 * t493 + t344 * t470)) * t476 - (t173 * (-t365 * t477 + t433 * t471) + t174 * (t366 * t477 - t433 * t472) + t151 * (t365 * t472 - t366 * t471)) * qJD(3) * t611 / 0.2e1 + (t471 * t740 + t472 * t739 + t477 * t734) * t593 + (t471 * t745 + t472 * t744 + t477 * t741) * t689 + (t471 * t747 + t472 * t746 + t477 * t742) * t695 + (t471 * t749 + t472 * t748 + t477 * t743) * t697 - t428 * t21 / 0.2e1 + (t19 * t471 + t20 * t472 + t25 * t477) * t699 + (t471 * t63 + t472 * t64 + t477 * t77) * t701 + (t13 * t471 + t14 * t472 + t23 * t477) * t702 + ((-t123 * t598 + t351 * t125 + t352 * t127 + t411 * t164 + t308 * t166 + t309 * t168) * t265 + t57 * t356 + (-t122 * t598 + t351 * t124 + t352 * t126 + t411 * t163 + t308 * t165 + t309 * t167) * t264 + t56 * t355 + (-t210 * t598 + t351 * t211 + t352 * t212 + t411 * t266 + t308 * t267 + t309 * t268) * t381 + t68 * t428) * t703 + (t11 * t471 + t12 * t472 + t22 * t477) * t704 + ((-t123 * t599 + t349 * t125 + t350 * t127 + t409 * t164 + t306 * t166 + t307 * t168) * t265 + t55 * t356 + (-t122 * t599 + t349 * t124 + t350 * t126 + t409 * t163 + t306 * t165 + t307 * t167) * t264 + t54 * t355 + (-t210 * t599 + t349 * t211 + t350 * t212 + t409 * t266 + t306 * t267 + t307 * t268) * t381 + t67 * t428) * t705 + (t471 * t56 + t472 * t57 + t477 * t68) * t706 + (t471 * t54 + t472 * t55 + t477 * t67) * t707 + (t30 * (t328 * t471 + (-t368 + t632) * t477 + t622) + t65 * (t225 * t471 + (-t347 + t644) * t477 + t636) + t31 * (t207 * t477 + (-t435 + t623) * t472 + t628) + t66 * (t147 * t477 + (-t424 + t634) * t472 + t645) + t24 * (t206 * t472 + (-t370 + t631) * t471 + t629) + t58 * (t146 * t472 + (-t348 + t642) * t471 + t646)) * t584 + (t97 * (-t282 * t458 + t390 * t414 + (-t208 * t470 + t329 * t453) * qJD(4) + t576) + t98 * (t283 * t458 - t390 * t415 + (t209 * t470 - t329 * t455) * qJD(4) + t578) + t78 * (t282 * t415 - t283 * t414 + (t208 * t455 - t209 * t453) * qJD(4) + t580)) * t586 + (t151 * t556 + t161 * t559 + t173 * t555 + t174 * t554 + t191 * t558 + t192 * t557) * t587 + (t61 * (t329 * t471 + t396 + (-t208 - t368) * t477) + t97 * (t226 * t471 + t383 + (-t148 - t347) * t477) + t62 * (t209 * t477 + t338 + (-t329 - t435) * t472) + t98 * (t149 * t477 + t333 + (-t226 - t424) * t472) + t49 * (t208 * t472 + t330 + (-t209 - t370) * t471) + t78 * (t148 * t472 + t311 + (-t149 - t348) * t471)) * t585 + t717 * t477 / 0.2e1 - m(7) * ((-t128 * t428 - t169 * t381 + t213 * t355 + t264 * t269 - t357 * t458 + t414 * t429 + t509) * t710 + (t129 * t428 + t170 * t381 - t213 * t356 - t265 * t269 + t358 * t458 - t415 * t429 + t510) * t709 + (t128 * t356 - t129 * t355 + t169 * t265 - t170 * t264 + t357 * t415 - t358 * t414 + t511) * t711 + (t47 * (-t312 * t470 + t416 * t453 - t656) + t48 * (t313 * t470 - t416 * t455 - t652) + t32 * (t312 * t455 - t313 * t453 - t655)) * t606) / 0.2e1 + (t622 * t712 + t628 * t713 + t629 * t714 + t636 * t710 + t645 * t709 + t646 * t711 + 0.2e1 * (t16 * (-t368 + t602) + t47 * (-t347 + t605) + t515) * t477 + 0.2e1 * (t15 * (-t435 + t600) + t48 * (-t424 + t603) + t516) * t472 + 0.2e1 * (t10 * (-t370 + t601) + t32 * (-t348 + t604) + t514) * t471) * t708 + (t471 * t736 + t472 * t735 + t477 * t732) * t589 + (t471 * t738 + t472 * t737 + t477 * t733) * t592 + ((-t417 * t441 - t418 * t440 + t420 * t471 - t421 * t452 + t422 * t453) * t477 + t471 * (-t314 * t441 - t316 * t440 + t339 * t471 - t341 * t452 + t343 * t453) + t472 * (-t315 * t441 - t317 * t440 + t340 * t471 - t342 * t452 + t344 * t453)) * t467 + ((-t417 * t443 - t418 * t442 + t420 * t472 - t421 * t454 + t422 * t455) * t477 + t471 * (-t314 * t443 - t316 * t442 + t339 * t472 - t341 * t454 + t343 * t455) + t472 * (-t315 * t443 - t317 * t442 + t340 * t472 - t342 * t454 + t344 * t455)) * t468 + ((t123 * t597 + t425 * t125 + t426 * t127 + t457 * t164 + t412 * t166 + t413 * t168) * t265 + t64 * t356 + (t122 * t597 + t425 * t124 + t426 * t126 + t457 * t163 + t412 * t165 + t413 * t167) * t264 + t63 * t355 + (t210 * t597 + t425 * t211 + t426 * t212 + t457 * t266 + t412 * t267 + t413 * t268) * t381 + t77 * t428) * t700 - m(6) * (0.2e1 * t65 * (-t284 * t458 + t391 * t414 + t509) + 0.2e1 * t66 * (t285 * t458 - t391 * t415 + t510) + 0.2e1 * t58 * (t284 * t415 - t285 * t414 + t511) + (t65 * (-t206 * t470 + t328 * t453 - t656) + t66 * (t207 * t470 - t328 * t455 - t652) + t58 * (t206 * t455 - t207 * t453 - t655)) * t606) / 0.2e1 - t750 * t615 / 0.2e1 - t751 * t617 / 0.2e1 - t752 * t618 / 0.2e1 + (t92 * t617 + t91 * t618 + t105 * t615 + (t106 * t470 + t453 * t93 + t455 * t94) * qJD(4) - t491 * t493 + (t456 * t724 + t457 * t723 + t470 * t725 - t493 * t531) * t458 + (t456 * t728 + t457 * t726 + t470 * t730 - t493 * t532) * t415 + (t456 * t729 + t457 * t727 + t470 * t731 - t493 * t533) * t414) * t690 + (t70 * t617 + t69 * t618 + t99 * t615 + (t101 * t470 + t453 * t73 + t455 * t74) * qJD(4) + t491 * t452 + (t408 * t724 + t409 * t723 + t452 * t531 + t453 * t725) * t458 + (t408 * t728 + t409 * t726 + t452 * t532 + t453 * t730) * t415 + (t408 * t729 + t409 * t727 + t452 * t533 + t453 * t731) * t414) * t698 + (t72 * t617 + t71 * t618 + t100 * t615 + (t102 * t470 + t453 * t75 + t455 * t76) * qJD(4) + t491 * t454 + (t410 * t724 + t411 * t723 + t454 * t531 + t455 * t725) * t458 + (t410 * t728 + t411 * t726 + t454 * t532 + t455 * t730) * t415 + (t410 * t729 + t411 * t727 + t454 * t533 + t455 * t731) * t414) * t696 - t355 * t17 / 0.2e1 - t356 * t18 / 0.2e1 + t471 * t754 + t472 * t755; (t452 * t54 + t454 * t55 - t493 * t67) * t707 + (t61 * (t208 * t493 + t329 * t452) + t97 * (t148 * t493 + t226 * t452 + t561) + t62 * (-t209 * t493 - t329 * t454) + t98 * (-t149 * t493 - t226 * t454 + t560) + t49 * (t208 * t454 - t209 * t452) + t78 * (t148 * t454 - t149 * t452 + t562)) * t585 + (t30 * (t328 * t452 - t493 * t632 + t294) + t65 * (t225 * t452 - t493 * t644 + t539 + t639) + t31 * (-t207 * t493 + t454 * t623 - t234) + t66 * (-t147 * t493 + t454 * t634 + t540 + t647) + t24 * (t206 * t454 + t452 * t631 + t214) + t58 * (t146 * t454 + t452 * t642 + t541 + t648)) * t584 + (t294 * t712 + (t639 + t651) * t710 - t234 * t713 + (t647 + t653) * t709 + t214 * t714 + (t648 + t654) * t711 + (t129 * t709 + t602 * t710) * t462 + (t128 * t711 + t600 * t709) * t443 + (t213 * t710 + t601 * t711) * t441 - 0.2e1 * (t16 * t602 + t47 * t605 + t515) * t493 + 0.2e1 * (t15 * t600 + t48 * t603 + t516) * t454 + 0.2e1 * (t10 * t601 + t32 * t604 + t514) * t452) * t708 + (t408 * t17 + t410 * t18 + t456 * t21) * qJD(6) / 0.2e1 + (t19 * t452 + t20 * t454 - t25 * t493 + t441 * t63 + t443 * t64 + t462 * t77) * t699 + (t452 * t63 + t454 * t64 - t493 * t77) * t701 + (t13 * t452 + t14 * t454 - t23 * t493 + t441 * t56 + t443 * t57 + t462 * t68) * t702 + (t11 * t452 + t12 * t454 - t22 * t493 + t441 * t54 + t443 * t55 + t462 * t67) * t704 + (t452 * t56 + t454 * t57 - t493 * t68) * t706 + (t47 * (-t181 * t381 - t253 * t458 + t264 * t289 + (t128 * t456 - t213 * t408) * qJD(6) + t553 * pkin(10) + t627) + t48 * (t182 * t381 - t265 * t289 - t378 * t415 + (-t129 * t456 + t213 * t410) * qJD(6) - t172 * pkin(10) + t630) + t32 * (t181 * t265 - t182 * t264 - t257 * t414 + (-t128 * t410 + t129 * t408) * qJD(6) - t150 * pkin(10) + t635)) * t583 - (t65 * (t377 * t414 + (-t252 - t253) * t458 + t627) + t66 * (t256 * t458 + (-t377 - t378) * t415 + t630) + t58 * (t252 * t415 + (-t256 - t257) * t414 + t635)) * t609 / 0.2e1 + (t452 * t740 + t454 * t739 - t493 * t734) * t593 + ((-t456 * t123 + t412 * t178 + t413 * t180) * t265 + (-t456 * t122 + t412 * t177 + t413 * t179) * t264 + (-t456 * t210 + t412 * t287 + t413 * t288) * t381 + (-t408 * t63 - t410 * t64 - t456 * t77) * qJD(6) + t492 * t457) * t700 + ((-t410 * t123 + t308 * t178 + t309 * t180) * t265 + (-t410 * t122 + t308 * t177 + t309 * t179) * t264 + (-t410 * t210 + t308 * t287 + t309 * t288) * t381 + (-t408 * t56 - t410 * t57 - t456 * t68) * qJD(6) + t492 * t411) * t703 + ((-t408 * t123 + t306 * t178 + t307 * t180) * t265 + (-t408 * t122 + t306 * t177 + t307 * t179) * t264 + (-t408 * t210 + t306 * t287 + t307 * t288) * t381 + (-t408 * t54 - t410 * t55 - t456 * t67) * qJD(6) + t492 * t409) * t705 + (t97 * (-t254 * t458 + t379 * t414) + t98 * (t258 * t458 - t379 * t415) + t78 * (t254 * t415 - t258 * t414)) * t586 - t717 * t493 / 0.2e1 + (t452 * t749 + t454 * t748 - t493 * t743 + t758) * t697 + (t452 * t747 + t454 * t746 - t493 * t742 + t759) * t695 + (t452 * t745 + t454 * t744 - t493 * t741 + t760) * t689 + (t452 * t736 + t454 * t735 - t493 * t732) * t589 + (t452 * t738 + t454 * t737 - t493 * t733) * t592 + (t456 * t722 + t457 * t721 - t493 * t720) * t690 + (t410 * t722 + t411 * t721 + t454 * t720) * t696 + (t408 * t722 + t409 * t721 + t452 * t720) * t698 + (t21 + t750) * t462 / 0.2e1 + (t18 + t751) * t443 / 0.2e1 + (t17 + t752) * t441 / 0.2e1 + t452 * t754 + t454 * t755; (t10 * t456 + t15 * t408 + t16 * t410 + t32 * t640 + t47 * t638 + t48 * t637) * m(7) + (t24 * t456 + t30 * t410 + t31 * t408 + t58 * t640 + t637 * t66 + t638 * t65) * m(6); t301 * t18 / 0.2e1 + t411 * t766 + (t409 * t56 + t411 * t57 + t457 * t68) * t706 + (t13 * t409 + t14 * t411 + t23 * t457 + t299 * t56 + t301 * t57 + t398 * t68) * t702 + t299 * t17 / 0.2e1 + t409 * t767 + (t409 * t54 + t411 * t55 + t457 * t67) * t707 + (t11 * t409 + t12 * t411 + t22 * t457 + t299 * t54 + t301 * t55 + t398 * t67) * t704 + t398 * t21 / 0.2e1 + t457 * t3 / 0.2e1 + (t409 * t63 + t411 * t64 + t457 * t77) * t701 + (t19 * t409 + t20 * t411 + t25 * t457 + t299 * t63 + t301 * t64 + t398 * t77) * t699 + (t16 * (-t128 * t457 + t213 * t409) + t47 * (t110 * t409 - t128 * t398 + t213 * t299 - t457 * t85) + t15 * (t129 * t457 - t213 * t411) + t48 * (-t110 * t411 + t129 * t398 - t213 * t301 + t457 * t86) + t10 * (t128 * t411 - t129 * t409) + t32 * (t128 * t301 - t129 * t299 - t409 * t86 + t411 * t85)) * t582 + (t308 * t506 + t309 * t507 + t411 * t524) * t703 + (t306 * t506 + t307 * t507 + t409 * t524) * t705 + (t412 * t506 + t413 * t507 + t457 * t524) * t700 + (t47 * (-t159 * t381 + t263 * t264) + t48 * (t160 * t381 - t263 * t265) + t32 * (t159 * t265 - t160 * t264)) * t583;];
tauc  = t1(:);
