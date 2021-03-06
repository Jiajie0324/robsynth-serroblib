% Calculate time derivative of joint inertia matrix for
% S6RRPRRR14
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [14x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,alpha4,d1,d2,d4,d5,d6,theta3]';
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
% MqD [6x6]
%   time derivative of inertia matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 15:13
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S6RRPRRR14_inertiaDJ_slag_vp11(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(14,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRR14_inertiaDJ_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRR14_inertiaDJ_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [14 1]), ...
  'S6RRPRRR14_inertiaDJ_slag_vp1: pkin has to be [14x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRPRRR14_inertiaDJ_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RRPRRR14_inertiaDJ_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RRPRRR14_inertiaDJ_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 14:57:40
% EndTime: 2019-03-09 14:59:31
% DurationCPUTime: 63.41s
% Computational Cost: add. (606161->1592), mult. (1822995->2101), div. (0->0), fcn. (2220520->18), ass. (0->605)
t579 = sin(pkin(14));
t581 = sin(pkin(6));
t582 = cos(pkin(14));
t588 = sin(qJ(2));
t583 = cos(pkin(7));
t591 = cos(qJ(2));
t742 = t583 * t591;
t580 = sin(pkin(7));
t584 = cos(pkin(6));
t748 = t580 * t584;
t535 = t582 * t748 + (-t579 * t588 + t582 * t742) * t581;
t747 = t581 * t588;
t536 = t582 * t747 + (t581 * t742 + t748) * t579;
t745 = t581 * t591;
t562 = -t580 * t745 + t583 * t584;
t465 = Icges(4,5) * t536 + Icges(4,6) * t535 + Icges(4,3) * t562;
t466 = Icges(4,4) * t536 + Icges(4,2) * t535 + Icges(4,6) * t562;
t467 = Icges(4,1) * t536 + Icges(4,4) * t535 + Icges(4,5) * t562;
t710 = qJD(2) * t581;
t743 = t583 * t588;
t543 = (-t579 * t591 - t582 * t743) * t710;
t544 = (-t579 * t743 + t582 * t591) * t710;
t669 = t588 * t710;
t642 = t580 * t669;
t481 = Icges(4,5) * t544 + Icges(4,6) * t543 + Icges(4,3) * t642;
t482 = Icges(4,4) * t544 + Icges(4,2) * t543 + Icges(4,6) * t642;
t483 = Icges(4,1) * t544 + Icges(4,4) * t543 + Icges(4,5) * t642;
t755 = Icges(3,4) * t588;
t550 = Icges(3,6) * t584 + (Icges(3,2) * t591 + t755) * t581;
t754 = Icges(3,4) * t591;
t551 = Icges(3,5) * t584 + (Icges(3,1) * t588 + t754) * t581;
t555 = (Icges(3,5) * t591 - Icges(3,6) * t588) * t710;
t556 = (-Icges(3,2) * t588 + t754) * t710;
t557 = (Icges(3,1) * t591 - t755) * t710;
t782 = t591 * t551 * t710 + t465 * t642 + t543 * t466 + t544 * t467 + t562 * t481 + t535 * t482 + t536 * t483 - t550 * t669 + t584 * t555 + t556 * t745 + t557 * t747;
t592 = cos(qJ(1));
t738 = t591 * t592;
t589 = sin(qJ(1));
t740 = t589 * t588;
t623 = t584 * t740 - t738;
t739 = t589 * t591;
t741 = t588 * t592;
t566 = -t584 * t739 - t741;
t746 = t581 * t589;
t624 = t566 * t583 + t580 * t746;
t501 = t579 * t623 + t582 * t624;
t540 = -t566 * t580 + t583 * t746;
t756 = sin(pkin(8));
t757 = cos(pkin(8));
t464 = -t501 * t756 + t540 * t757;
t565 = t584 * t741 + t739;
t564 = t584 * t738 - t740;
t744 = t581 * t592;
t625 = t564 * t583 - t580 * t744;
t499 = -t565 * t579 + t582 * t625;
t539 = -t564 * t580 - t583 * t744;
t463 = -t499 * t756 + t539 * t757;
t530 = -qJD(1) * t623 + qJD(2) * t564;
t529 = qJD(1) * t566 - qJD(2) * t565;
t712 = qJD(1) * t589;
t671 = t581 * t712;
t614 = t529 * t583 + t580 * t671;
t457 = -t530 * t579 + t582 * t614;
t644 = t583 * t671;
t751 = t529 * t580;
t508 = t644 - t751;
t409 = -t457 * t756 + t508 * t757;
t528 = -qJD(1) * t565 + qJD(2) * t566;
t527 = -qJD(1) * t564 + qJD(2) * t623;
t711 = qJD(1) * t592;
t670 = t581 * t711;
t615 = t527 * t583 + t580 * t670;
t455 = -t528 * t579 + t582 * t615;
t643 = t583 * t670;
t507 = -t527 * t580 + t643;
t408 = -t455 * t756 + t507 * t757;
t781 = t782 * t584;
t500 = t565 * t582 + t579 * t625;
t587 = sin(qJ(4));
t766 = cos(qJ(4));
t413 = t500 * t766 + (t499 * t757 + t539 * t756) * t587;
t586 = sin(qJ(5));
t765 = cos(qJ(5));
t373 = t413 * t765 + t463 * t586;
t585 = sin(qJ(6));
t590 = cos(qJ(6));
t638 = t766 * t756;
t639 = t757 * t766;
t604 = t499 * t639 - t500 * t587 + t539 * t638;
t316 = -t373 * t585 - t590 * t604;
t317 = t373 * t590 - t585 * t604;
t622 = -t413 * t586 + t463 * t765;
t217 = Icges(7,5) * t317 + Icges(7,6) * t316 - Icges(7,3) * t622;
t219 = Icges(7,4) * t317 + Icges(7,2) * t316 - Icges(7,6) * t622;
t221 = Icges(7,1) * t317 + Icges(7,4) * t316 - Icges(7,5) * t622;
t502 = t579 * t624 - t582 * t623;
t415 = t502 * t766 + (t501 * t757 + t540 * t756) * t587;
t375 = t415 * t765 + t464 * t586;
t603 = t501 * t639 - t502 * t587 + t540 * t638;
t318 = -t375 * t585 - t590 * t603;
t319 = t375 * t590 - t585 * t603;
t621 = -t415 * t586 + t464 * t765;
t110 = -t217 * t621 + t219 * t318 + t221 * t319;
t218 = Icges(7,5) * t319 + Icges(7,6) * t318 - Icges(7,3) * t621;
t220 = Icges(7,4) * t319 + Icges(7,2) * t318 - Icges(7,6) * t621;
t222 = Icges(7,1) * t319 + Icges(7,4) * t318 - Icges(7,5) * t621;
t111 = -t218 * t621 + t220 * t318 + t222 * t319;
t454 = t536 * t766 + (t535 * t757 + t562 * t756) * t587;
t491 = -t535 * t756 + t562 * t757;
t398 = t454 * t765 + t491 * t586;
t602 = t535 * t639 - t536 * t587 + t562 * t638;
t357 = -t398 * t585 - t590 * t602;
t358 = t398 * t590 - t585 * t602;
t620 = -t454 * t586 + t491 * t765;
t268 = Icges(7,5) * t358 + Icges(7,6) * t357 - Icges(7,3) * t620;
t269 = Icges(7,4) * t358 + Icges(7,2) * t357 - Icges(7,6) * t620;
t270 = Icges(7,1) * t358 + Icges(7,4) * t357 - Icges(7,5) * t620;
t135 = -t268 * t621 + t269 * t318 + t270 * t319;
t458 = t530 * t582 + t579 * t614;
t313 = t458 * t766 + (t457 * t757 + t508 * t756) * t587 + t604 * qJD(4);
t262 = qJD(5) * t622 + t313 * t765 + t409 * t586;
t312 = qJD(4) * t413 - t457 * t639 + t458 * t587 - t508 * t638;
t190 = -qJD(6) * t317 - t262 * t585 + t312 * t590;
t191 = qJD(6) * t316 + t262 * t590 + t312 * t585;
t261 = qJD(5) * t373 + t313 * t586 - t409 * t765;
t114 = Icges(7,5) * t191 + Icges(7,6) * t190 + Icges(7,3) * t261;
t116 = Icges(7,4) * t191 + Icges(7,2) * t190 + Icges(7,6) * t261;
t118 = Icges(7,1) * t191 + Icges(7,4) * t190 + Icges(7,5) * t261;
t456 = t528 * t582 + t579 * t615;
t311 = t456 * t766 + (t455 * t757 + t507 * t756) * t587 + t603 * qJD(4);
t260 = qJD(5) * t621 + t311 * t765 + t408 * t586;
t310 = qJD(4) * t415 - t455 * t639 + t456 * t587 - t507 * t638;
t188 = -qJD(6) * t319 - t260 * t585 + t310 * t590;
t189 = qJD(6) * t318 + t260 * t590 + t310 * t585;
t259 = qJD(5) * t375 + t311 * t586 - t408 * t765;
t22 = -t114 * t621 + t116 * t318 + t118 * t319 + t188 * t219 + t189 * t221 + t217 * t259;
t113 = Icges(7,5) * t189 + Icges(7,6) * t188 + Icges(7,3) * t259;
t115 = Icges(7,4) * t189 + Icges(7,2) * t188 + Icges(7,6) * t259;
t117 = Icges(7,1) * t189 + Icges(7,4) * t188 + Icges(7,5) * t259;
t23 = -t113 * t621 + t115 * t318 + t117 * t319 + t188 * t220 + t189 * t222 + t218 * t259;
t616 = t756 * t642;
t392 = t544 * t766 + (t543 * t757 + t616) * t587 + t602 * qJD(4);
t518 = -t543 * t756 + t642 * t757;
t336 = qJD(5) * t398 + t392 * t586 - t518 * t765;
t337 = qJD(5) * t620 + t392 * t765 + t518 * t586;
t391 = qJD(4) * t454 - t543 * t639 + t544 * t587 - t616 * t766;
t253 = -qJD(6) * t358 - t337 * t585 + t391 * t590;
t254 = qJD(6) * t357 + t337 * t590 + t391 * t585;
t173 = Icges(7,5) * t254 + Icges(7,6) * t253 + Icges(7,3) * t336;
t174 = Icges(7,4) * t254 + Icges(7,2) * t253 + Icges(7,6) * t336;
t175 = Icges(7,1) * t254 + Icges(7,4) * t253 + Icges(7,5) * t336;
t39 = -t173 * t621 + t174 * t318 + t175 * t319 + t188 * t269 + t189 * t270 + t259 * t268;
t1 = t110 * t261 + t111 * t259 + t135 * t336 - t22 * t622 - t23 * t621 - t39 * t620;
t780 = t1 / 0.2e1;
t108 = -t217 * t622 + t219 * t316 + t221 * t317;
t109 = -t218 * t622 + t220 * t316 + t222 * t317;
t134 = -t268 * t622 + t269 * t316 + t270 * t317;
t24 = -t114 * t622 + t116 * t316 + t118 * t317 + t190 * t219 + t191 * t221 + t217 * t261;
t25 = -t113 * t622 + t115 * t316 + t117 * t317 + t190 * t220 + t191 * t222 + t218 * t261;
t40 = -t173 * t622 + t174 * t316 + t175 * t317 + t190 * t269 + t191 * t270 + t261 * t268;
t2 = t108 * t261 + t109 * t259 + t134 * t336 - t24 * t622 - t25 * t621 - t40 * t620;
t779 = t2 / 0.2e1;
t122 = -t217 * t620 + t219 * t357 + t221 * t358;
t123 = -t218 * t620 + t220 * t357 + t222 * t358;
t29 = -t114 * t620 + t116 * t357 + t118 * t358 + t217 * t336 + t219 * t253 + t221 * t254;
t30 = -t113 * t620 + t115 * t357 + t117 * t358 + t218 * t336 + t220 * t253 + t222 * t254;
t141 = -t268 * t620 + t269 * t357 + t270 * t358;
t60 = -t173 * t620 + t357 * t174 + t358 * t175 + t253 * t269 + t254 * t270 + t336 * t268;
t762 = t141 * t336 - t60 * t620;
t9 = t122 * t261 + t123 * t259 - t29 * t622 - t30 * t621 + t762;
t778 = t9 / 0.2e1;
t44 = -t108 * t622 - t109 * t621 - t134 * t620;
t777 = t44 / 0.2e1;
t45 = -t110 * t622 - t111 * t621 - t135 * t620;
t776 = t45 / 0.2e1;
t54 = -t122 * t622 - t123 * t621 - t141 * t620;
t775 = t54 / 0.2e1;
t774 = t259 / 0.2e1;
t773 = t261 / 0.2e1;
t772 = t336 / 0.2e1;
t771 = -t622 / 0.2e1;
t770 = -t621 / 0.2e1;
t769 = -t620 / 0.2e1;
t768 = t589 / 0.2e1;
t767 = -rSges(7,3) - pkin(13);
t764 = t262 * pkin(5);
t763 = t373 * pkin(5);
t578 = t592 * pkin(1);
t761 = t141 * t391 - t60 * t602;
t760 = t141 * t518 + t60 * t491;
t301 = Icges(6,5) * t398 + Icges(6,6) * t620 - Icges(6,3) * t602;
t302 = Icges(6,4) * t398 + Icges(6,2) * t620 - Icges(6,6) * t602;
t303 = Icges(6,1) * t398 + Icges(6,4) * t620 - Icges(6,5) * t602;
t185 = -t301 * t602 + t302 * t620 + t303 * t398;
t240 = Icges(6,5) * t337 - Icges(6,6) * t336 + Icges(6,3) * t391;
t241 = Icges(6,4) * t337 - Icges(6,2) * t336 + Icges(6,6) * t391;
t242 = Icges(6,1) * t337 - Icges(6,4) * t336 + Icges(6,5) * t391;
t98 = -t240 * t602 + t241 * t620 + t398 * t242 + t391 * t301 - t336 * t302 + t337 * t303;
t759 = t185 * t391 - t602 * t98;
t758 = t185 * t518 + t98 * t491;
t362 = Icges(5,5) * t454 + Icges(5,6) * t602 + Icges(5,3) * t491;
t363 = Icges(5,4) * t454 + Icges(5,2) * t602 + Icges(5,6) * t491;
t364 = Icges(5,1) * t454 + Icges(5,4) * t602 + Icges(5,5) * t491;
t226 = (t362 * t491 + t363 * t602 + t364 * t454) * t518;
t321 = Icges(5,5) * t413 + Icges(5,6) * t604 + Icges(5,3) * t463;
t323 = Icges(5,4) * t413 + Icges(5,2) * t604 + Icges(5,6) * t463;
t325 = Icges(5,1) * t413 + Icges(5,4) * t604 + Icges(5,5) * t463;
t201 = t321 * t491 + t323 * t602 + t325 * t454;
t753 = t518 * t201;
t322 = Icges(5,5) * t415 + Icges(5,6) * t603 + Icges(5,3) * t464;
t324 = Icges(5,4) * t415 + Icges(5,2) * t603 + Icges(5,6) * t464;
t326 = Icges(5,1) * t415 + Icges(5,4) * t603 + Icges(5,5) * t464;
t202 = t322 * t491 + t324 * t602 + t326 * t454;
t752 = t518 * t202;
t119 = t189 * rSges(7,1) + t188 * rSges(7,2) + t259 * rSges(7,3);
t737 = t260 * pkin(5) + t259 * pkin(13) + t119;
t636 = -t191 * rSges(7,1) - t190 * rSges(7,2);
t120 = t261 * rSges(7,3) - t636;
t736 = t261 * pkin(13) + t120 + t764;
t330 = Icges(5,5) * t392 - Icges(5,6) * t391 + Icges(5,3) * t518;
t331 = Icges(5,4) * t392 - Icges(5,2) * t391 + Icges(5,6) * t518;
t332 = Icges(5,1) * t392 - Icges(5,4) * t391 + Icges(5,5) * t518;
t149 = t491 * t330 + t331 * t602 + t454 * t332 + t518 * t362 - t391 * t363 + t392 * t364;
t735 = t149 * t491 + t226;
t176 = rSges(7,1) * t254 + rSges(7,2) * t253 + rSges(7,3) * t336;
t734 = pkin(5) * t337 + pkin(13) * t336 + t176;
t635 = -t317 * rSges(7,1) - t316 * rSges(7,2);
t223 = -rSges(7,3) * t622 - t635;
t733 = -pkin(13) * t622 + t223 + t763;
t224 = t319 * rSges(7,1) + t318 * rSges(7,2) - rSges(7,3) * t621;
t732 = t375 * pkin(5) - pkin(13) * t621 + t224;
t252 = t313 * pkin(4) + t312 * pkin(12);
t353 = t413 * pkin(4) - pkin(12) * t604;
t731 = t464 * t252 + t408 * t353;
t251 = t311 * pkin(4) + t310 * pkin(12);
t354 = t415 * pkin(4) - pkin(12) * t603;
t730 = t491 * t251 + t518 * t354;
t271 = rSges(7,1) * t358 + rSges(7,2) * t357 - rSges(7,3) * t620;
t729 = pkin(5) * t398 - pkin(13) * t620 + t271;
t278 = t373 * rSges(6,1) + rSges(6,2) * t622 - rSges(6,3) * t604;
t728 = -t278 - t353;
t279 = t375 * rSges(6,1) + rSges(6,2) * t621 - rSges(6,3) * t603;
t727 = -t279 - t354;
t343 = pkin(4) * t392 + pkin(12) * t391;
t389 = pkin(4) * t454 - pkin(12) * t602;
t726 = t463 * t343 + t409 * t389;
t304 = rSges(6,1) * t398 + rSges(6,2) * t620 - rSges(6,3) * t602;
t725 = -t304 - t389;
t366 = t456 * pkin(3) + pkin(11) * t408;
t708 = qJD(3) * t583;
t668 = t581 * t708;
t435 = t528 * pkin(2) + qJ(3) * t643 + t589 * t668 + (-qJ(3) * t527 - qJD(3) * t566) * t580;
t434 = t584 * t435;
t724 = t584 * t366 + t434;
t367 = t458 * pkin(3) + pkin(11) * t409;
t709 = qJD(3) * t580;
t632 = -t530 * pkin(2) + qJ(3) * t751 + t564 * t709 + t592 * t668;
t436 = qJ(3) * t644 - t632;
t723 = -t367 - t436;
t418 = t502 * pkin(3) + pkin(11) * t464;
t510 = -t623 * pkin(2) + qJ(3) * t540;
t506 = t584 * t510;
t722 = t584 * t418 + t506;
t417 = t500 * pkin(3) + pkin(11) * t463;
t509 = t565 * pkin(2) + qJ(3) * t539;
t721 = -t417 - t509;
t720 = -t418 - t510;
t462 = t536 * pkin(3) + pkin(11) * t491;
t542 = pkin(2) * t747 + qJ(3) * t562;
t533 = t542 * t671;
t719 = t462 * t671 + t533;
t718 = -t462 - t542;
t468 = rSges(4,1) * t536 + rSges(4,2) * t535 + rSges(4,3) * t562;
t717 = -t468 - t542;
t522 = t584 * t708 + (-t591 * t709 + (qJ(3) * t580 * t588 + pkin(2) * t591) * qJD(2)) * t581;
t716 = -t544 * pkin(3) - pkin(11) * t518 - t522;
t715 = -rSges(4,1) * t544 - rSges(4,2) * t543 - rSges(4,3) * t642 - t522;
t714 = t509 * t746 + t510 * t744;
t713 = pkin(10) * t746 + t578;
t272 = Icges(6,5) * t373 + Icges(6,6) * t622 - Icges(6,3) * t604;
t274 = Icges(6,4) * t373 + Icges(6,2) * t622 - Icges(6,6) * t604;
t276 = Icges(6,1) * t373 + Icges(6,4) * t622 - Icges(6,5) * t604;
t146 = -t272 * t603 + t274 * t621 + t276 * t375;
t273 = Icges(6,5) * t375 + Icges(6,6) * t621 - Icges(6,3) * t603;
t275 = Icges(6,4) * t375 + Icges(6,2) * t621 - Icges(6,6) * t603;
t277 = Icges(6,1) * t375 + Icges(6,4) * t621 - Icges(6,5) * t603;
t147 = -t273 * t603 + t275 * t621 + t277 * t375;
t180 = -t301 * t603 + t302 * t621 + t303 * t375;
t166 = Icges(6,5) * t262 - Icges(6,6) * t261 + Icges(6,3) * t312;
t168 = Icges(6,4) * t262 - Icges(6,2) * t261 + Icges(6,6) * t312;
t170 = Icges(6,1) * t262 - Icges(6,4) * t261 + Icges(6,5) * t312;
t61 = -t166 * t603 + t168 * t621 + t170 * t375 - t259 * t274 + t260 * t276 + t272 * t310;
t165 = Icges(6,5) * t260 - Icges(6,6) * t259 + Icges(6,3) * t310;
t167 = Icges(6,4) * t260 - Icges(6,2) * t259 + Icges(6,6) * t310;
t169 = Icges(6,1) * t260 - Icges(6,4) * t259 + Icges(6,5) * t310;
t62 = -t165 * t603 + t167 * t621 + t169 * t375 - t259 * t275 + t260 * t277 + t273 * t310;
t82 = -t240 * t603 + t241 * t621 + t242 * t375 - t259 * t302 + t260 * t303 + t301 * t310;
t13 = t146 * t312 + t147 * t310 + t180 * t391 - t602 * t82 - t603 * t62 - t604 * t61;
t3 = t110 * t312 + t111 * t310 + t135 * t391 - t22 * t604 - t23 * t603 - t39 * t602;
t705 = t3 / 0.2e1 + t13 / 0.2e1;
t144 = -t272 * t604 + t274 * t622 + t276 * t373;
t145 = -t273 * t604 + t275 * t622 + t277 * t373;
t179 = -t301 * t604 + t302 * t622 + t303 * t373;
t63 = -t166 * t604 + t168 * t622 + t170 * t373 - t261 * t274 + t262 * t276 + t272 * t312;
t64 = -t165 * t604 + t167 * t622 + t169 * t373 - t261 * t275 + t262 * t277 + t273 * t312;
t83 = -t240 * t604 + t241 * t622 + t242 * t373 - t261 * t302 + t262 * t303 + t301 * t312;
t14 = t144 * t312 + t145 * t310 + t179 * t391 - t602 * t83 - t603 * t64 - t604 * t63;
t4 = t108 * t312 + t109 * t310 + t134 * t391 - t24 * t604 - t25 * t603 - t40 * t602;
t704 = t4 / 0.2e1 + t14 / 0.2e1;
t15 = t146 * t409 + t147 * t408 + t180 * t518 + t463 * t61 + t464 * t62 + t491 * t82;
t5 = t110 * t409 + t111 * t408 + t135 * t518 + t22 * t463 + t23 * t464 + t39 * t491;
t703 = t5 / 0.2e1 + t15 / 0.2e1;
t16 = t144 * t409 + t145 * t408 + t179 * t518 + t463 * t63 + t464 * t64 + t491 * t83;
t6 = t108 * t409 + t109 * t408 + t134 * t518 + t24 * t463 + t25 * t464 + t40 * t491;
t702 = t6 / 0.2e1 + t16 / 0.2e1;
t17 = t82 * t584 + (t589 * t62 - t592 * t61 + (t146 * t589 + t147 * t592) * qJD(1)) * t581;
t7 = t39 * t584 + (-t22 * t592 + t23 * t589 + (t110 * t589 + t111 * t592) * qJD(1)) * t581;
t701 = t7 / 0.2e1 + t17 / 0.2e1;
t18 = t83 * t584 + (t589 * t64 - t592 * t63 + (t144 * t589 + t145 * t592) * qJD(1)) * t581;
t8 = t40 * t584 + (-t24 * t592 + t25 * t589 + (t108 * t589 + t109 * t592) * qJD(1)) * t581;
t700 = t8 / 0.2e1 + t18 / 0.2e1;
t10 = t122 * t312 + t123 * t310 - t29 * t604 - t30 * t603 + t761;
t150 = -t272 * t602 + t274 * t620 + t276 * t398;
t151 = -t273 * t602 + t275 * t620 + t277 * t398;
t69 = -t166 * t602 + t168 * t620 + t170 * t398 + t272 * t391 - t274 * t336 + t276 * t337;
t70 = -t165 * t602 + t167 * t620 + t169 * t398 + t273 * t391 - t275 * t336 + t277 * t337;
t19 = t150 * t312 + t151 * t310 - t603 * t70 - t604 * t69 + t759;
t699 = t10 / 0.2e1 + t19 / 0.2e1;
t11 = t122 * t409 + t123 * t408 + t29 * t463 + t30 * t464 + t760;
t20 = t150 * t409 + t151 * t408 + t69 * t463 + t70 * t464 + t758;
t698 = t11 / 0.2e1 + t20 / 0.2e1;
t59 = t60 * t584;
t12 = t59 + (-t29 * t592 + t30 * t589 + (t122 * t589 + t123 * t592) * qJD(1)) * t581;
t97 = t98 * t584;
t21 = t97 + (t70 * t589 - t69 * t592 + (t150 * t589 + t151 * t592) * qJD(1)) * t581;
t697 = t12 / 0.2e1 + t21 / 0.2e1;
t696 = t39 / 0.2e1 + t30 / 0.2e1;
t695 = t40 / 0.2e1 + t29 / 0.2e1;
t46 = -t108 * t604 - t109 * t603 - t134 * t602;
t73 = -t144 * t604 - t145 * t603 - t179 * t602;
t694 = t46 / 0.2e1 + t73 / 0.2e1;
t47 = -t110 * t604 - t111 * t603 - t135 * t602;
t74 = -t146 * t604 - t147 * t603 - t180 * t602;
t693 = t47 / 0.2e1 + t74 / 0.2e1;
t48 = t108 * t463 + t109 * t464 + t134 * t491;
t75 = t144 * t463 + t145 * t464 + t179 * t491;
t692 = t48 / 0.2e1 + t75 / 0.2e1;
t49 = t110 * t463 + t111 * t464 + t135 * t491;
t76 = t146 * t463 + t147 * t464 + t180 * t491;
t691 = t49 / 0.2e1 + t76 / 0.2e1;
t50 = t134 * t584 + (-t108 * t592 + t109 * t589) * t581;
t77 = t179 * t584 + (-t144 * t592 + t145 * t589) * t581;
t690 = t50 / 0.2e1 + t77 / 0.2e1;
t51 = t135 * t584 + (-t110 * t592 + t111 * t589) * t581;
t78 = t180 * t584 + (-t146 * t592 + t147 * t589) * t581;
t689 = t51 / 0.2e1 + t78 / 0.2e1;
t66 = t141 * t584 + (-t122 * t592 + t123 * t589) * t581;
t688 = t66 / 0.2e1 + t185 * t584 / 0.2e1 + (-t150 * t592 + t151 * t589) * t581 / 0.2e1;
t685 = -t353 - t733;
t684 = -t354 - t732;
t683 = t584 * t251 + t724;
t682 = -t252 + t723;
t171 = t260 * rSges(6,1) - t259 * rSges(6,2) + t310 * rSges(6,3);
t681 = -t389 - t729;
t237 = t311 * rSges(5,1) - t310 * rSges(5,2) + t408 * rSges(5,3);
t333 = rSges(5,1) * t392 - rSges(5,2) * t391 + rSges(5,3) * t518;
t680 = -t333 + t716;
t679 = -t343 + t716;
t678 = t584 * t354 + t722;
t677 = -t353 + t721;
t676 = -t354 + t720;
t365 = rSges(5,1) * t454 + rSges(5,2) * t602 + rSges(5,3) * t491;
t675 = -t365 + t718;
t674 = t389 * t671 + t719;
t673 = -t389 + t718;
t328 = t415 * rSges(5,1) + rSges(5,2) * t603 + t464 * rSges(5,3);
t672 = t435 * t744 + t436 * t746 + t509 * t670;
t382 = t456 * rSges(4,1) + t455 * rSges(4,2) + t507 * rSges(4,3);
t428 = t502 * rSges(4,1) + t501 * rSges(4,2) + t540 * rSges(4,3);
t475 = t528 * rSges(3,1) + t527 * rSges(3,2) + rSges(3,3) * t670;
t520 = -rSges(3,1) * t623 + t566 * rSges(3,2) + rSges(3,3) * t746;
t667 = t134 / 0.2e1 + t122 / 0.2e1;
t666 = t135 / 0.2e1 + t123 / 0.2e1;
t665 = -t589 * pkin(1) + pkin(10) * t744;
t656 = 2 * m(3);
t655 = 2 * m(4);
t653 = 2 * m(5);
t651 = 2 * m(6);
t649 = 2 * m(7);
t648 = t717 * t592;
t243 = rSges(6,1) * t337 - rSges(6,2) * t336 + rSges(6,3) * t391;
t647 = -t243 + t679;
t646 = -t304 + t673;
t645 = t417 * t746 + t418 * t744 + t714;
t641 = -pkin(1) * t712 + pkin(10) * t670;
t640 = t675 * t592;
t637 = -t530 * rSges(3,1) - t529 * rSges(3,2);
t634 = t679 - t734;
t633 = t673 - t729;
t631 = t646 * t592;
t630 = t82 / 0.2e1 + t70 / 0.2e1 + t696;
t629 = t83 / 0.2e1 + t69 / 0.2e1 + t695;
t628 = t353 * t746 + t354 * t744 + t645;
t627 = t366 * t744 + t367 * t746 + t417 * t670 + t672;
t619 = t179 / 0.2e1 + t150 / 0.2e1 + t667;
t618 = t180 / 0.2e1 + t151 / 0.2e1 + t666;
t617 = t633 * t592;
t383 = t458 * rSges(4,1) + t457 * rSges(4,2) + t508 * rSges(4,3);
t427 = rSges(4,1) * t500 + rSges(4,2) * t499 + rSges(4,3) * t539;
t238 = t313 * rSges(5,1) - t312 * rSges(5,2) + t409 * rSges(5,3);
t327 = t413 * rSges(5,1) + rSges(5,2) * t604 + t463 * rSges(5,3);
t172 = t262 * rSges(6,1) - t261 * rSges(6,2) + t312 * rSges(6,3);
t613 = -t509 + t665;
t612 = t510 + t713;
t519 = t565 * rSges(3,1) + t564 * rSges(3,2) - rSges(3,3) * t744;
t232 = Icges(5,5) * t313 - Icges(5,6) * t312 + Icges(5,3) * t409;
t234 = Icges(5,4) * t313 - Icges(5,2) * t312 + Icges(5,6) * t409;
t236 = Icges(5,1) * t313 - Icges(5,4) * t312 + Icges(5,5) * t409;
t101 = t232 * t491 + t234 * t602 + t236 * t454 + t321 * t518 - t323 * t391 + t325 * t392;
t130 = -t312 * t363 + t313 * t364 + t330 * t463 + t331 * t604 + t332 * t413 + t362 * t409;
t610 = t101 / 0.2e1 + t130 / 0.2e1 + t629;
t231 = Icges(5,5) * t311 - Icges(5,6) * t310 + Icges(5,3) * t408;
t233 = Icges(5,4) * t311 - Icges(5,2) * t310 + Icges(5,6) * t408;
t235 = Icges(5,1) * t311 - Icges(5,4) * t310 + Icges(5,5) * t408;
t102 = t231 * t491 + t233 * t602 + t235 * t454 + t322 * t518 - t324 * t391 + t326 * t392;
t129 = -t310 * t363 + t311 * t364 + t330 * t464 + t331 * t603 + t332 * t415 + t362 * t408;
t609 = t102 / 0.2e1 + t129 / 0.2e1 + t630;
t608 = t251 * t744 + t252 * t746 + t353 * t670 + t627;
t213 = t362 * t463 + t363 * t604 + t364 * t413;
t607 = t201 / 0.2e1 + t213 / 0.2e1 + t619;
t214 = t362 * t464 + t363 * t603 + t364 * t415;
t606 = t202 / 0.2e1 + t214 / 0.2e1 + t618;
t605 = t612 + t418;
t601 = t435 + t641;
t600 = -t417 + t613;
t599 = (-t578 + (-qJ(3) * t583 - pkin(10)) * t746) * qJD(1) + t632;
t598 = t354 + t605;
t597 = -t353 + t600;
t596 = t601 + t366;
t595 = t599 - t367;
t594 = t251 + t596;
t593 = -t252 + t595;
t558 = (rSges(3,1) * t591 - rSges(3,2) * t588) * t710;
t554 = rSges(3,3) * t584 + (rSges(3,1) * t588 + rSges(3,2) * t591) * t581;
t549 = Icges(3,3) * t584 + (Icges(3,5) * t588 + Icges(3,6) * t591) * t581;
t517 = -Icges(3,1) * t623 + Icges(3,4) * t566 + Icges(3,5) * t746;
t516 = Icges(3,1) * t565 + Icges(3,4) * t564 - Icges(3,5) * t744;
t515 = -Icges(3,4) * t623 + Icges(3,2) * t566 + Icges(3,6) * t746;
t514 = Icges(3,4) * t565 + Icges(3,2) * t564 - Icges(3,6) * t744;
t513 = -Icges(3,5) * t623 + Icges(3,6) * t566 + Icges(3,3) * t746;
t512 = Icges(3,5) * t565 + Icges(3,6) * t564 - Icges(3,3) * t744;
t504 = t520 + t713;
t503 = -t519 + t665;
t479 = -t584 * t519 - t554 * t744;
t478 = t520 * t584 - t554 * t746;
t476 = rSges(3,3) * t671 - t637;
t474 = Icges(3,1) * t530 + Icges(3,4) * t529 + Icges(3,5) * t671;
t473 = Icges(3,1) * t528 + Icges(3,4) * t527 + Icges(3,5) * t670;
t472 = Icges(3,4) * t530 + Icges(3,2) * t529 + Icges(3,6) * t671;
t471 = Icges(3,4) * t528 + Icges(3,2) * t527 + Icges(3,6) * t670;
t470 = Icges(3,5) * t530 + Icges(3,6) * t529 + Icges(3,3) * t671;
t469 = Icges(3,5) * t528 + Icges(3,6) * t527 + Icges(3,3) * t670;
t446 = (-t578 + (-rSges(3,3) - pkin(10)) * t746) * qJD(1) + t637;
t445 = t641 + t475;
t442 = t549 * t746 + t550 * t566 - t551 * t623;
t441 = -t549 * t744 + t564 * t550 + t565 * t551;
t430 = t584 * t475 + (-t554 * t711 - t558 * t589) * t581;
t429 = -t584 * t476 + (t554 * t712 - t558 * t592) * t581;
t426 = Icges(4,1) * t502 + Icges(4,4) * t501 + Icges(4,5) * t540;
t425 = Icges(4,1) * t500 + Icges(4,4) * t499 + Icges(4,5) * t539;
t424 = Icges(4,4) * t502 + Icges(4,2) * t501 + Icges(4,6) * t540;
t423 = Icges(4,4) * t500 + Icges(4,2) * t499 + Icges(4,6) * t539;
t422 = Icges(4,5) * t502 + Icges(4,6) * t501 + Icges(4,3) * t540;
t421 = Icges(4,5) * t500 + Icges(4,6) * t499 + Icges(4,3) * t539;
t420 = t513 * t584 + (t515 * t591 + t517 * t588) * t581;
t419 = t512 * t584 + (t514 * t591 + t516 * t588) * t581;
t396 = t513 * t746 + t515 * t566 - t517 * t623;
t395 = t512 * t746 + t514 * t566 - t516 * t623;
t394 = -t513 * t744 + t564 * t515 + t565 * t517;
t393 = -t512 * t744 + t564 * t514 + t565 * t516;
t388 = t612 + t428;
t387 = -t427 + t613;
t385 = t529 * t550 + t530 * t551 + t564 * t556 + t565 * t557 + (t549 * t712 - t555 * t592) * t581;
t384 = t527 * t550 + t528 * t551 + t566 * t556 - t623 * t557 + (t549 * t711 + t555 * t589) * t581;
t381 = Icges(4,1) * t458 + Icges(4,4) * t457 + Icges(4,5) * t508;
t380 = Icges(4,1) * t456 + Icges(4,4) * t455 + Icges(4,5) * t507;
t379 = Icges(4,4) * t458 + Icges(4,2) * t457 + Icges(4,6) * t508;
t378 = Icges(4,4) * t456 + Icges(4,2) * t455 + Icges(4,6) * t507;
t377 = Icges(4,5) * t458 + Icges(4,6) * t457 + Icges(4,3) * t508;
t376 = Icges(4,5) * t456 + Icges(4,6) * t455 + Icges(4,3) * t507;
t356 = t463 * t389;
t347 = (-t427 - t509) * t584 + t581 * t648;
t346 = t428 * t584 + t717 * t746 + t506;
t342 = t491 * t354;
t341 = t469 * t584 + (t471 * t591 + t473 * t588 + (-t515 * t588 + t517 * t591) * qJD(2)) * t581;
t340 = t470 * t584 + (t472 * t591 + t474 * t588 + (-t514 * t588 + t516 * t591) * qJD(2)) * t581;
t339 = -t383 + t599;
t338 = t601 + t382;
t335 = t465 * t540 + t466 * t501 + t467 * t502;
t334 = t465 * t539 + t466 * t499 + t467 * t500;
t329 = t464 * t353;
t320 = (t427 * t589 + t428 * t592) * t581 + t714;
t291 = t422 * t562 + t424 * t535 + t426 * t536;
t290 = t421 * t562 + t423 * t535 + t425 * t536;
t289 = t422 * t540 + t424 * t501 + t426 * t502;
t288 = t421 * t540 + t423 * t501 + t425 * t502;
t287 = t422 * t539 + t424 * t499 + t426 * t500;
t286 = t421 * t539 + t423 * t499 + t425 * t500;
t283 = t605 + t328;
t282 = -t327 + t600;
t281 = t584 * t382 + t434 + (qJD(1) * t648 + t589 * t715) * t581;
t280 = t533 + (-t383 - t436) * t584 + (t468 * t712 + t592 * t715) * t581;
t266 = t328 * t491 - t365 * t464;
t265 = -t327 * t491 + t365 * t463;
t249 = t457 * t466 + t458 * t467 + t465 * t508 + t481 * t539 + t482 * t499 + t483 * t500;
t248 = t455 * t466 + t456 * t467 + t465 * t507 + t481 * t540 + t482 * t501 + t483 * t502;
t239 = t327 * t464 - t328 * t463;
t230 = (-t327 + t721) * t584 + t581 * t640;
t229 = t328 * t584 + t675 * t746 + t722;
t212 = (t382 * t592 + t383 * t589 + (t427 * t592 + (-t428 - t510) * t589) * qJD(1)) * t581 + t672;
t211 = t598 + t279;
t210 = -t278 + t597;
t209 = (t327 * t589 + t328 * t592) * t581 + t645;
t208 = t376 * t562 + t378 * t535 + t380 * t536 + t422 * t642 + t424 * t543 + t426 * t544;
t207 = t377 * t562 + t379 * t535 + t381 * t536 + t421 * t642 + t423 * t543 + t425 * t544;
t206 = -t279 * t602 + t304 * t603;
t205 = t278 * t602 - t304 * t604;
t204 = -t238 + t595;
t203 = t596 + t237;
t198 = t322 * t464 + t324 * t603 + t326 * t415;
t197 = t321 * t464 + t323 * t603 + t325 * t415;
t196 = t322 * t463 + t324 * t604 + t326 * t413;
t195 = t321 * t463 + t323 * t604 + t325 * t413;
t194 = -t278 * t603 + t279 * t604;
t182 = t279 * t491 + t464 * t725 + t342;
t181 = t304 * t463 + t491 * t728 + t356;
t178 = (-t278 + t677) * t584 + t581 * t631;
t177 = t279 * t584 + t646 * t746 + t678;
t164 = t598 + t732;
t163 = -t622 * t767 + t597 + t635 - t763;
t162 = -t224 * t620 + t271 * t621;
t161 = t223 * t620 - t271 * t622;
t159 = t584 * t237 + (qJD(1) * t640 + t589 * t680) * t581 + t724;
t158 = (-t238 + t723) * t584 + (t365 * t712 + t592 * t680) * t581 + t719;
t157 = t278 * t464 + t463 * t727 + t329;
t154 = (t278 * t589 + t279 * t592) * t581 + t628;
t153 = -t238 * t491 - t327 * t518 + t333 * t463 + t365 * t409;
t152 = t237 * t491 + t328 * t518 - t333 * t464 - t365 * t408;
t148 = t149 * t584;
t142 = -t223 * t621 + t224 * t622;
t138 = -t602 * t732 + t603 * t729;
t137 = t602 * t733 - t604 * t729;
t133 = -t237 * t463 + t238 * t464 + t327 * t408 - t328 * t409;
t132 = -t172 + t593;
t131 = t594 + t171;
t128 = (t677 - t733) * t584 + t581 * t617;
t127 = t584 * t732 + t633 * t746 + t678;
t126 = t464 * t681 + t491 * t732 + t342;
t125 = t463 * t729 + t491 * t685 + t356;
t124 = -t603 * t733 + t604 * t732;
t121 = (t237 * t592 + t238 * t589 + (t327 * t592 + (-t328 + t720) * t589) * qJD(1)) * t581 + t627;
t112 = (t589 * t733 + t592 * t732) * t581 + t628;
t107 = t463 * t684 + t464 * t733 + t329;
t106 = t214 * t584 + (-t197 * t592 + t198 * t589) * t581;
t105 = t213 * t584 + (-t195 * t592 + t196 * t589) * t581;
t104 = t197 * t463 + t198 * t464 + t214 * t491;
t103 = t195 * t463 + t196 * t464 + t213 * t491;
t100 = t172 * t602 - t243 * t604 - t278 * t391 + t304 * t312;
t99 = -t171 * t602 + t243 * t603 + t279 * t391 - t304 * t310;
t96 = t584 * t171 + (qJD(1) * t631 + t589 * t647) * t581 + t683;
t95 = (-t172 + t682) * t584 + (t304 * t712 + t592 * t647) * t581 + t674;
t93 = t231 * t463 + t233 * t604 + t235 * t413 - t312 * t324 + t313 * t326 + t322 * t409;
t92 = t232 * t463 + t234 * t604 + t236 * t413 - t312 * t323 + t313 * t325 + t321 * t409;
t91 = t231 * t464 + t233 * t603 + t235 * t415 - t310 * t324 + t311 * t326 + t322 * t408;
t90 = t232 * t464 + t234 * t603 + t236 * t415 - t310 * t323 + t311 * t325 + t321 * t408;
t87 = t243 * t463 + t304 * t409 + t728 * t518 + (-t172 - t252) * t491 + t726;
t86 = t171 * t491 + t279 * t518 + (-t243 - t343) * t464 + t725 * t408 + t730;
t85 = t171 * t604 - t172 * t603 + t278 * t310 - t279 * t312;
t84 = t150 * t463 + t151 * t464 + t185 * t491;
t81 = -t150 * t604 - t151 * t603 - t185 * t602;
t80 = t261 * t767 + t593 + t636 - t764;
t79 = t594 + t737;
t72 = t172 * t464 + t278 * t408 + (-t171 - t251) * t463 + t727 * t409 + t731;
t71 = (t171 * t592 + t172 * t589 + (t278 * t592 + (-t279 + t676) * t589) * qJD(1)) * t581 + t608;
t68 = t120 * t620 - t176 * t622 - t223 * t336 + t261 * t271;
t67 = -t119 * t620 + t176 * t621 + t224 * t336 - t259 * t271;
t65 = t122 * t463 + t123 * t464 + t141 * t491;
t58 = -t122 * t604 - t123 * t603 - t141 * t602;
t53 = t737 * t584 + (qJD(1) * t617 + t589 * t634) * t581 + t683;
t52 = (t682 - t736) * t584 + (t592 * t634 + t712 * t729) * t581 + t674;
t43 = t119 * t622 - t120 * t621 + t223 * t259 - t224 * t261;
t42 = t312 * t729 - t391 * t733 + t602 * t736 - t604 * t734;
t41 = -t310 * t729 + t391 * t732 - t602 * t737 + t603 * t734;
t38 = t734 * t463 + t729 * t409 + t685 * t518 + (-t252 - t736) * t491 + t726;
t37 = t732 * t518 + t737 * t491 + (-t343 - t734) * t464 + t681 * t408 + t730;
t36 = t148 + (-t101 * t592 + t102 * t589 + (t201 * t589 + t202 * t592) * qJD(1)) * t581;
t35 = t101 * t463 + t102 * t464 + t201 * t409 + t202 * t408 + t735;
t34 = t310 * t733 - t312 * t732 - t603 * t736 + t604 * t737;
t33 = t130 * t584 + (t589 * t93 - t592 * t92 + (t195 * t589 + t196 * t592) * qJD(1)) * t581;
t32 = t129 * t584 + (t589 * t91 - t592 * t90 + (t197 * t589 + t198 * t592) * qJD(1)) * t581;
t31 = (t737 * t592 + t736 * t589 + (t733 * t592 + (t676 - t732) * t589) * qJD(1)) * t581 + t608;
t28 = t736 * t464 + t733 * t408 + (-t251 - t737) * t463 + t684 * t409 + t731;
t27 = t130 * t491 + t195 * t409 + t196 * t408 + t213 * t518 + t463 * t92 + t464 * t93;
t26 = t129 * t491 + t197 * t409 + t198 * t408 + t214 * t518 + t463 * t90 + t464 * t91;
t55 = [t98 + t149 + (t338 * t388 + t339 * t387) * t655 + (t445 * t504 + t446 * t503) * t656 + (t131 * t211 + t132 * t210) * t651 + (t163 * t80 + t164 * t79) * t649 + (t203 * t283 + t204 * t282) * t653 + t60 + t782; (t158 * t282 + t159 * t283 + t203 * t229 + t204 * t230) * m(5) + (t131 * t177 + t132 * t178 + t210 * t95 + t211 * t96) * m(6) + t148 + (t127 * t79 + t128 * t80 + t163 * t52 + t164 * t53) * m(7) + t59 + t97 + ((-t207 / 0.2e1 - t249 / 0.2e1 - t340 / 0.2e1 - t385 / 0.2e1 - t610) * t592 + (t208 / 0.2e1 + t248 / 0.2e1 + t341 / 0.2e1 + t384 / 0.2e1 + t609) * t589 + ((t420 / 0.2e1 + t291 / 0.2e1 + t442 / 0.2e1 + t335 / 0.2e1 + t606) * t592 + (t419 / 0.2e1 + t290 / 0.2e1 + t441 / 0.2e1 + t334 / 0.2e1 + t607) * t589) * qJD(1)) * t581 + m(4) * (t280 * t387 + t281 * t388 + t338 * t346 + t339 * t347) + m(3) * (t429 * t503 + t430 * t504 + t445 * t478 + t446 * t479) + t781; (t121 * t209 + t158 * t230 + t159 * t229) * t653 + (t212 * t320 + t280 * t347 + t281 * t346) * t655 + (t479 * t429 + t478 * t430) * t656 + (t154 * t71 + t177 * t96 + t178 * t95) * t651 + (t112 * t31 + t127 * t53 + t128 * t52) * t649 + (t32 + t17 + t7) * t746 + (-t33 - t18 - t8) * t744 + (t77 + t50 + t105) * t671 + (t78 + t51 + t106) * t670 + ((t519 * t589 + t520 * t592) * (t475 * t592 + t476 * t589 + (t519 * t592 - t520 * t589) * qJD(1)) * t656 * t581 + (t395 * t712 + t396 * t711 + (t288 * qJD(1) + t376 * t540 + t378 * t501 + t380 * t502 + t422 * t507 + t424 * t455 + t426 * t456 + t566 * t471 - t623 * t473 + t527 * t515 + t528 * t517 + (t469 * t589 + t513 * t711) * t581) * t589 + (-t566 * t472 + t623 * t474 - t527 * t514 - t528 * t516 - t377 * t540 - t379 * t501 - t381 * t502 - t421 * t507 - t423 * t455 - t425 * t456 + t289 * qJD(1) + (-t470 * t589 - t512 * t711) * t581) * t592) * t746 + (-t393 * t712 - t394 * t711 + (-t287 * qJD(1) + t377 * t539 + t379 * t499 + t381 * t500 + t421 * t508 + t423 * t457 + t425 * t458 + t564 * t472 + t565 * t474 + t529 * t514 + t530 * t516 + (-t470 * t592 + t512 * t712) * t581) * t592 + (-t564 * t471 - t565 * t473 - t529 * t515 - t530 * t517 - t376 * t539 - t378 * t499 - t380 * t500 - t422 * t508 - t424 * t457 - t426 * t458 - t286 * qJD(1) + (t469 * t592 - t513 * t712) * t581) * t589) * t744 + ((-t286 - t393) * t592 + (t287 + t394) * t589) * t671 + ((-t288 - t395) * t592 + (t289 + t396) * t589) * t670) * t581 + (t12 + t21 + t36 + (t384 + t248) * t746 + (-t385 - t249) * t744 + (t441 + t334) * t671 + (t442 + t335) * t670 + ((-t207 - t340) * t592 + (t208 + t341) * t589 + ((t291 + t420) * t592 + (t290 + t419) * t589) * qJD(1)) * t581 + t781) * t584; (m(4) * t339 + m(5) * t204 + m(6) * t132 + m(7) * t80) * t540 + (m(4) * t338 + m(5) * t203 + m(6) * t131 + m(7) * t79) * t539 + (m(4) * t388 + m(5) * t283 + m(6) * t211 + m(7) * t164) * t508 + (m(4) * t387 + m(5) * t282 + m(6) * t210 + m(7) * t163) * t507; (m(4) * t212 + m(5) * t121 + m(6) * t71 + m(7) * t31) * t562 + (m(4) * t280 + m(5) * t158 + m(6) * t95 + m(7) * t52) * t540 + (m(4) * t281 + m(5) * t159 + m(6) * t96 + m(7) * t53) * t539 + (m(4) * t346 + m(5) * t229 + m(6) * t177 + m(7) * t127) * t508 + (m(4) * t347 + m(5) * t230 + m(6) * t178 + m(7) * t128) * t507 + (m(4) * t320 + m(5) * t209 + m(6) * t154 + m(7) * t112) * t642; 0.4e1 * (m(7) / 0.2e1 + m(6) / 0.2e1 + m(5) / 0.2e1 + m(4) / 0.2e1) * (t507 * t540 + t508 * t539 + t562 * t642); (t152 * t283 + t153 * t282 + t203 * t266 + t204 * t265) * m(5) + (t131 * t182 + t132 * t181 + t210 * t87 + t211 * t86) * m(6) + (t125 * t80 + t126 * t79 + t163 * t38 + t164 * t37) * m(7) + t609 * t464 + t610 * t463 + t607 * t409 + t606 * t408 + t735 + t758 + t760; (t121 * t239 + t133 * t209 + t152 * t229 + t153 * t230 + t158 * t265 + t159 * t266) * m(5) + (t154 * t72 + t157 * t71 + t177 * t86 + t178 * t87 + t181 * t95 + t182 * t96) * m(6) + (t107 * t31 + t112 * t28 + t125 * t52 + t126 * t53 + t127 * t37 + t128 * t38) * m(7) + t688 * t518 + (t36 / 0.2e1 + t697) * t491 + (t32 / 0.2e1 + t701) * t464 + (t33 / 0.2e1 + t700) * t463 + (t105 / 0.2e1 + t690) * t409 + (t106 / 0.2e1 + t689) * t408 + (t35 / 0.2e1 + t226 / 0.2e1 + t698) * t584 + ((-t27 / 0.2e1 - t753 / 0.2e1 - t702) * t592 + (t26 / 0.2e1 + t752 / 0.2e1 + t703) * t589 + ((t104 / 0.2e1 + t691) * t592 + (t103 / 0.2e1 + t692) * t589) * qJD(1)) * t581; (m(5) * t133 + m(6) * t72 + m(7) * t28) * t562 + (m(5) * t153 + m(6) * t87 + m(7) * t38) * t540 + (m(5) * t152 + m(6) * t86 + m(7) * t37) * t539 + (m(5) * t266 + m(6) * t182 + m(7) * t126) * t508 + (m(5) * t265 + m(6) * t181 + m(7) * t125) * t507 + (m(5) * t239 + m(6) * t157 + m(7) * t107) * t642; (t107 * t28 + t125 * t38 + t126 * t37) * t649 + (t157 * t72 + t181 * t87 + t182 * t86) * t651 + (t133 * t239 + t152 * t266 + t153 * t265) * t653 + (t65 + t84) * t518 + (t11 + t20 + t35 + t226) * t491 + (t15 + t26 + t5 + t752) * t464 + (t16 + t27 + t6 + t753) * t463 + (t48 + t75 + t103) * t409 + (t49 + t76 + t104) * t408; (t137 * t80 + t138 * t79 + t163 * t42 + t164 * t41) * m(7) + (t100 * t210 + t131 * t206 + t132 * t205 + t211 * t99) * m(6) - t630 * t603 - t629 * t604 + t619 * t312 + t618 * t310 + t759 + t761; (t112 * t34 + t124 * t31 + t127 * t41 + t128 * t42 + t137 * t52 + t138 * t53) * m(7) + (t100 * t178 + t154 * t85 + t177 * t99 + t194 * t71 + t205 * t95 + t206 * t96) * m(6) + t699 * t584 - t697 * t602 - t701 * t603 - t700 * t604 + t688 * t391 + t690 * t312 + t689 * t310 + (-t704 * t592 + t705 * t589 + (t589 * t694 + t592 * t693) * qJD(1)) * t581; (m(6) * t85 + m(7) * t34) * t562 + (m(6) * t100 + m(7) * t42) * t540 + (m(6) * t99 + m(7) * t41) * t539 + (m(6) * t206 + m(7) * t138) * t508 + (m(6) * t205 + m(7) * t137) * t507 + (m(6) * t194 + m(7) * t124) * t642; (t100 * t181 + t157 * t85 + t182 * t99 + t194 * t72 + t205 * t87 + t206 * t86) * m(6) + (t107 * t34 + t124 * t28 + t125 * t42 + t126 * t41 + t137 * t38 + t138 * t37) * m(7) + (t81 / 0.2e1 + t58 / 0.2e1) * t518 + t699 * t491 + t705 * t464 + t704 * t463 - t698 * t602 - t703 * t603 - t702 * t604 + t694 * t409 + t693 * t408 + (t84 / 0.2e1 + t65 / 0.2e1) * t391 + t692 * t312 + t691 * t310; (t124 * t34 + t137 * t42 + t138 * t41) * t649 + (t100 * t205 + t194 * t85 + t206 * t99) * t651 - (t10 + t19) * t602 - (t3 + t13) * t603 - (t4 + t14) * t604 + (t58 + t81) * t391 + (t46 + t73) * t312 + (t47 + t74) * t310; (t161 * t80 + t162 * t79 + t163 * t68 + t164 * t67) * m(7) - t696 * t621 - t695 * t622 + t667 * t261 + t666 * t259 + t762; t50 * t773 + t8 * t771 + t51 * t774 + t7 * t770 + t584 * t778 + t66 * t772 + t12 * t769 + (t112 * t43 + t127 * t67 + t128 * t68 + t142 * t31 + t161 * t52 + t162 * t53) * m(7) + (t1 * t768 - t592 * t2 / 0.2e1 + (t44 * t768 + t592 * t776) * qJD(1)) * t581; (t142 * t642 + t161 * t507 + t162 * t508 + t43 * t562 + t539 * t67 + t540 * t68) * m(7); (t107 * t43 + t125 * t68 + t126 * t67 + t142 * t28 + t161 * t38 + t162 * t37) * m(7) + t48 * t773 + t6 * t771 + t518 * t775 + t491 * t778 + t408 * t776 + t464 * t780 + t49 * t774 + t5 * t770 + t409 * t777 + t463 * t779 + t65 * t772 + t11 * t769; t310 * t776 - t603 * t780 + t391 * t775 - t602 * t778 + t47 * t774 + t3 * t770 + (t124 * t43 + t137 * t68 + t138 * t67 + t142 * t34 + t161 * t42 + t162 * t41) * m(7) + t58 * t772 + t10 * t769 + t312 * t777 - t604 * t779 + t46 * t773 + t4 * t771; t259 * t45 - t621 * t1 + (t142 * t43 + t161 * t68 + t162 * t67) * t649 + t261 * t44 - t622 * t2 + t336 * t54 - t620 * t9;];
%% Postprocessing: Reshape Output
% From vec2symmat_6_matlab.m
res = [t55(1) t55(2) t55(4) t55(7) t55(11) t55(16); t55(2) t55(3) t55(5) t55(8) t55(12) t55(17); t55(4) t55(5) t55(6) t55(9) t55(13) t55(18); t55(7) t55(8) t55(9) t55(10) t55(14) t55(19); t55(11) t55(12) t55(13) t55(14) t55(15) t55(20); t55(16) t55(17) t55(18) t55(19) t55(20) t55(21);];
Mq  = res;
