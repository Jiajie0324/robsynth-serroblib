% Calculate time derivative of joint inertia matrix for
% S6RRPRRP6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d5,theta3]';
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
% Datum: 2019-03-09 12:15
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S6RRPRRP6_inertiaDJ_slag_vp11(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP6_inertiaDJ_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRP6_inertiaDJ_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPRRP6_inertiaDJ_slag_vp1: pkin has to be [11x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRPRRP6_inertiaDJ_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RRPRRP6_inertiaDJ_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RRPRRP6_inertiaDJ_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 12:07:50
% EndTime: 2019-03-09 12:08:58
% DurationCPUTime: 39.37s
% Computational Cost: add. (143091->1416), mult. (397177->1878), div. (0->0), fcn. (474851->12), ass. (0->537)
t682 = sin(pkin(11));
t684 = cos(pkin(6));
t588 = t684 * t682;
t683 = cos(pkin(11));
t589 = t684 * t683;
t695 = sin(qJ(2));
t698 = cos(qJ(2));
t501 = t588 * t698 + t589 * t695;
t536 = sin(qJ(1));
t537 = cos(qJ(1));
t549 = t695 * t682 - t698 * t683;
t471 = -t536 * t501 - t537 * t549;
t542 = -t588 * t695 + t589 * t698;
t491 = t542 * qJD(2);
t550 = t682 * t698 + t683 * t695;
t509 = t550 * qJD(2);
t390 = qJD(1) * t471 + t491 * t537 - t536 * t509;
t535 = sin(qJ(4));
t469 = t501 * t537 - t536 * t549;
t533 = sin(pkin(6));
t697 = cos(qJ(4));
t626 = t533 * t697;
t566 = -t469 * t535 - t537 * t626;
t655 = qJD(1) * t536;
t622 = t533 * t655;
t310 = qJD(4) * t566 + t390 * t697 + t535 * t622;
t679 = t533 * t537;
t432 = t469 * t697 - t535 * t679;
t468 = -t536 * t550 + t537 * t542;
t534 = sin(qJ(5));
t696 = cos(qJ(5));
t364 = t432 * t696 - t468 * t534;
t490 = t501 * qJD(2);
t540 = t536 * t542;
t546 = qJD(2) * t549;
t654 = qJD(1) * t537;
t389 = -qJD(1) * t540 - t537 * t490 + t536 * t546 - t550 * t654;
t230 = qJD(5) * t364 + t310 * t534 + t389 * t696;
t574 = -t432 * t534 - t468 * t696;
t231 = qJD(5) * t574 + t310 * t696 - t389 * t534;
t599 = qJD(1) * t626;
t309 = qJD(4) * t432 + t390 * t535 - t536 * t599;
t729 = rSges(7,3) + qJ(6);
t730 = rSges(7,1) + pkin(5);
t675 = t309 * rSges(7,2) - t574 * qJD(6) + t729 * t230 + t231 * t730;
t672 = -t566 * rSges(7,2) + t364 * t730 - t729 * t574;
t369 = Icges(4,5) * t469 + Icges(4,6) * t468 - Icges(4,3) * t679;
t593 = t684 * t695;
t554 = -t536 * t698 - t537 * t593;
t594 = t684 * t698;
t555 = t536 * t695 - t537 * t594;
t450 = -Icges(3,5) * t554 - Icges(3,6) * t555 - Icges(3,3) * t679;
t718 = t369 + t450;
t470 = -t537 * t550 - t540;
t680 = t533 * t536;
t370 = Icges(4,5) * t471 + Icges(4,6) * t470 + Icges(4,3) * t680;
t512 = -t536 * t594 - t537 * t695;
t556 = t536 * t593 - t537 * t698;
t451 = -Icges(3,5) * t556 + Icges(3,6) * t512 + Icges(3,3) * t680;
t728 = t370 + t451;
t500 = t550 * t533;
t488 = qJD(2) * t500;
t653 = qJD(2) * t533;
t489 = t549 * t653;
t438 = -Icges(4,5) * t489 - Icges(4,6) * t488;
t439 = -Icges(4,4) * t489 - Icges(4,2) * t488;
t440 = -Icges(4,1) * t489 - Icges(4,4) * t488;
t499 = t549 * t533;
t445 = Icges(4,4) * t500 - Icges(4,2) * t499 + Icges(4,6) * t684;
t446 = Icges(4,1) * t500 - Icges(4,4) * t499 + Icges(4,5) * t684;
t623 = t695 * Icges(3,4);
t494 = Icges(3,6) * t684 + (Icges(3,2) * t698 + t623) * t533;
t624 = t698 * Icges(3,4);
t495 = Icges(3,5) * t684 + (Icges(3,1) * t695 + t624) * t533;
t502 = (Icges(3,5) * t698 - Icges(3,6) * t695) * t653;
t503 = (-Icges(3,2) * t695 + t624) * t653;
t504 = (Icges(3,1) * t698 - t623) * t653;
t627 = t533 * t698;
t598 = qJD(2) * t627;
t618 = qJD(2) * t695;
t625 = t533 * t695;
t731 = -t494 * t533 * t618 - t499 * t439 + t500 * t440 - t488 * t445 - t489 * t446 + t495 * t598 + t503 * t627 + t504 * t625 + (t438 + t502) * t684;
t387 = qJD(1) * t468 - t536 * t490 - t537 * t546;
t388 = -qJD(1) * t469 - t536 * t491 - t509 * t537;
t621 = t533 * t654;
t280 = Icges(4,5) * t388 - Icges(4,6) * t387 + Icges(4,3) * t621;
t474 = qJD(1) * t555 + qJD(2) * t556;
t475 = qJD(1) * t554 + qJD(2) * t512;
t392 = Icges(3,5) * t475 + Icges(3,6) * t474 + Icges(3,3) * t621;
t727 = t392 + t280;
t251 = Icges(7,5) * t364 - Icges(7,6) * t566 - Icges(7,3) * t574;
t255 = Icges(7,4) * t364 - Icges(7,2) * t566 - Icges(7,6) * t574;
t259 = Icges(7,1) * t364 - Icges(7,4) * t566 - Icges(7,5) * t574;
t479 = t500 * t697 + t535 * t684;
t422 = t479 * t696 + t499 * t534;
t565 = -t500 * t535 + t684 * t697;
t572 = -t479 * t534 + t499 * t696;
t124 = -t251 * t572 - t255 * t565 + t259 * t422;
t434 = t471 * t697 + t535 * t680;
t366 = t434 * t696 - t470 * t534;
t567 = -t471 * t535 + t536 * t626;
t573 = -t434 * t534 - t470 * t696;
t252 = Icges(7,5) * t366 - Icges(7,6) * t567 - Icges(7,3) * t573;
t256 = Icges(7,4) * t366 - Icges(7,2) * t567 - Icges(7,6) * t573;
t260 = Icges(7,1) * t366 - Icges(7,4) * t567 - Icges(7,5) * t573;
t125 = -t252 * t572 - t256 * t565 + t260 * t422;
t307 = qJD(4) * t434 + t388 * t535 - t537 * t599;
t134 = Icges(7,5) * t231 + Icges(7,6) * t309 + Icges(7,3) * t230;
t138 = Icges(7,4) * t231 + Icges(7,2) * t309 + Icges(7,6) * t230;
t142 = Icges(7,1) * t231 + Icges(7,4) * t309 + Icges(7,5) * t230;
t420 = qJD(4) * t565 - t489 * t697;
t331 = qJD(5) * t422 + t420 * t534 - t488 * t696;
t332 = qJD(5) * t572 + t420 * t696 + t488 * t534;
t419 = qJD(4) * t479 - t489 * t535;
t39 = -t134 * t572 - t138 * t565 + t142 * t422 + t251 * t331 + t255 * t419 + t259 * t332;
t308 = qJD(4) * t567 + t388 * t697 + t535 * t621;
t228 = qJD(5) * t366 + t308 * t534 - t387 * t696;
t229 = qJD(5) * t573 + t308 * t696 + t387 * t534;
t133 = Icges(7,5) * t229 + Icges(7,6) * t307 + Icges(7,3) * t228;
t137 = Icges(7,4) * t229 + Icges(7,2) * t307 + Icges(7,6) * t228;
t141 = Icges(7,1) * t229 + Icges(7,4) * t307 + Icges(7,5) * t228;
t40 = -t133 * t572 - t137 * t565 + t141 * t422 + t252 * t331 + t256 * t419 + t260 * t332;
t321 = Icges(7,5) * t422 - Icges(7,6) * t565 - Icges(7,3) * t572;
t323 = Icges(7,4) * t422 - Icges(7,2) * t565 - Icges(7,6) * t572;
t325 = Icges(7,1) * t422 - Icges(7,4) * t565 - Icges(7,5) * t572;
t176 = -t321 * t572 - t323 * t565 + t325 * t422;
t220 = Icges(7,5) * t332 + Icges(7,6) * t419 + Icges(7,3) * t331;
t222 = Icges(7,4) * t332 + Icges(7,2) * t419 + Icges(7,6) * t331;
t224 = Icges(7,1) * t332 + Icges(7,4) * t419 + Icges(7,5) * t331;
t87 = -t220 * t572 - t222 * t565 + t422 * t224 + t331 * t321 + t419 * t323 + t332 * t325;
t688 = t176 * t419 - t565 * t87;
t13 = t124 * t309 + t125 * t307 - t39 * t566 - t40 * t567 + t688;
t253 = Icges(6,5) * t364 + Icges(6,6) * t574 - Icges(6,3) * t566;
t257 = Icges(6,4) * t364 + Icges(6,2) * t574 - Icges(6,6) * t566;
t261 = Icges(6,1) * t364 + Icges(6,4) * t574 - Icges(6,5) * t566;
t126 = -t253 * t565 + t257 * t572 + t261 * t422;
t254 = Icges(6,5) * t366 + Icges(6,6) * t573 - Icges(6,3) * t567;
t258 = Icges(6,4) * t366 + Icges(6,2) * t573 - Icges(6,6) * t567;
t262 = Icges(6,1) * t366 + Icges(6,4) * t573 - Icges(6,5) * t567;
t127 = -t254 * t565 + t258 * t572 + t262 * t422;
t136 = Icges(6,5) * t231 - Icges(6,6) * t230 + Icges(6,3) * t309;
t140 = Icges(6,4) * t231 - Icges(6,2) * t230 + Icges(6,6) * t309;
t144 = Icges(6,1) * t231 - Icges(6,4) * t230 + Icges(6,5) * t309;
t41 = -t136 * t565 + t140 * t572 + t144 * t422 + t253 * t419 - t257 * t331 + t261 * t332;
t135 = Icges(6,5) * t229 - Icges(6,6) * t228 + Icges(6,3) * t307;
t139 = Icges(6,4) * t229 - Icges(6,2) * t228 + Icges(6,6) * t307;
t143 = Icges(6,1) * t229 - Icges(6,4) * t228 + Icges(6,5) * t307;
t42 = -t135 * t565 + t139 * t572 + t143 * t422 + t254 * t419 - t258 * t331 + t262 * t332;
t322 = Icges(6,5) * t422 + Icges(6,6) * t572 - Icges(6,3) * t565;
t324 = Icges(6,4) * t422 + Icges(6,2) * t572 - Icges(6,6) * t565;
t326 = Icges(6,1) * t422 + Icges(6,4) * t572 - Icges(6,5) * t565;
t177 = -t322 * t565 + t324 * t572 + t326 * t422;
t221 = Icges(6,5) * t332 - Icges(6,6) * t331 + Icges(6,3) * t419;
t223 = Icges(6,4) * t332 - Icges(6,2) * t331 + Icges(6,6) * t419;
t225 = Icges(6,1) * t332 - Icges(6,4) * t331 + Icges(6,5) * t419;
t88 = -t221 * t565 + t223 * t572 + t422 * t225 + t419 * t322 - t331 * t324 + t332 * t326;
t687 = t177 * t419 - t565 * t88;
t14 = t126 * t309 + t127 * t307 - t41 * t566 - t42 * t567 + t687;
t725 = t13 + t14;
t532 = pkin(2) * t698 + pkin(1);
t692 = pkin(1) - t532;
t724 = t536 * t692;
t676 = t307 * rSges(7,2) - qJD(6) * t573 + t729 * t228 + t229 * t730;
t371 = Icges(4,4) * t469 + Icges(4,2) * t468 - Icges(4,6) * t679;
t373 = Icges(4,1) * t469 + Icges(4,4) * t468 - Icges(4,5) * t679;
t452 = -Icges(3,4) * t554 - Icges(3,2) * t555 - Icges(3,6) * t679;
t454 = -Icges(3,1) * t554 - Icges(3,4) * t555 - Icges(3,5) * t679;
t723 = -t468 * t371 - t469 * t373 + t452 * t555 + t454 * t554 + t679 * t718;
t372 = Icges(4,4) * t471 + Icges(4,2) * t470 + Icges(4,6) * t680;
t374 = Icges(4,1) * t471 + Icges(4,4) * t470 + Icges(4,5) * t680;
t453 = -Icges(3,4) * t556 + Icges(3,2) * t512 + Icges(3,6) * t680;
t455 = -Icges(3,1) * t556 + Icges(3,4) * t512 + Icges(3,5) * t680;
t722 = t372 * t470 + t374 * t471 + t453 * t512 - t455 * t556 + t680 * t728;
t721 = t731 * t684;
t670 = -rSges(7,2) * t567 + t366 * t730 - t729 * t573;
t720 = -t468 * t372 - t469 * t374 + t453 * t555 + t455 * t554 + t679 * t728;
t719 = t371 * t470 + t373 * t471 + t452 * t512 - t454 * t556 + t680 * t718;
t530 = pkin(8) * t679;
t717 = -t536 * pkin(1) + t530;
t333 = Icges(5,5) * t420 - Icges(5,6) * t419 + Icges(5,3) * t488;
t334 = Icges(5,4) * t420 - Icges(5,2) * t419 + Icges(5,6) * t488;
t335 = Icges(5,1) * t420 - Icges(5,4) * t419 + Icges(5,5) * t488;
t400 = Icges(5,5) * t479 + Icges(5,6) * t565 + Icges(5,3) * t499;
t401 = Icges(5,4) * t479 + Icges(5,2) * t565 + Icges(5,6) * t499;
t402 = Icges(5,1) * t479 + Icges(5,4) * t565 + Icges(5,5) * t499;
t103 = -t307 * t401 + t308 * t402 - t333 * t470 + t334 * t567 + t335 * t434 + t387 * t400;
t311 = Icges(5,5) * t432 + Icges(5,6) * t566 - Icges(5,3) * t468;
t313 = Icges(5,4) * t432 + Icges(5,2) * t566 - Icges(5,6) * t468;
t315 = Icges(5,1) * t432 + Icges(5,4) * t566 - Icges(5,5) * t468;
t173 = -t311 * t470 + t313 * t567 + t315 * t434;
t312 = Icges(5,5) * t434 + Icges(5,6) * t567 - Icges(5,3) * t470;
t314 = Icges(5,4) * t434 + Icges(5,2) * t567 - Icges(5,6) * t470;
t316 = Icges(5,1) * t434 + Icges(5,4) * t567 - Icges(5,5) * t470;
t174 = -t312 * t470 + t314 * t567 + t316 * t434;
t203 = -t400 * t470 + t401 * t567 + t402 * t434;
t117 = -t251 * t573 - t255 * t567 + t259 * t366;
t118 = -t252 * t573 - t256 * t567 + t260 * t366;
t160 = -t321 * t573 - t323 * t567 + t325 * t366;
t28 = -t134 * t573 - t138 * t567 + t142 * t366 + t228 * t251 + t229 * t259 + t255 * t307;
t29 = -t133 * t573 - t137 * t567 + t141 * t366 + t228 * t252 + t229 * t260 + t256 * t307;
t61 = -t220 * t573 - t222 * t567 + t224 * t366 + t228 * t321 + t229 * t325 + t307 * t323;
t5 = -t117 * t389 + t118 * t387 + t160 * t488 - t28 * t468 - t29 * t470 + t499 * t61;
t119 = -t253 * t567 + t257 * t573 + t261 * t366;
t120 = -t254 * t567 + t258 * t573 + t262 * t366;
t161 = -t322 * t567 + t324 * t573 + t326 * t366;
t30 = -t136 * t567 + t140 * t573 + t144 * t366 - t228 * t257 + t229 * t261 + t253 * t307;
t31 = -t135 * t567 + t139 * t573 + t143 * t366 - t228 * t258 + t229 * t262 + t254 * t307;
t62 = -t221 * t567 + t223 * t573 + t225 * t366 - t228 * t324 + t229 * t326 + t307 * t322;
t6 = -t119 * t389 + t120 * t387 + t161 * t488 - t30 * t468 - t31 * t470 + t499 * t62;
t195 = Icges(5,5) * t310 - Icges(5,6) * t309 - Icges(5,3) * t389;
t197 = Icges(5,4) * t310 - Icges(5,2) * t309 - Icges(5,6) * t389;
t199 = Icges(5,1) * t310 - Icges(5,4) * t309 - Icges(5,5) * t389;
t77 = -t195 * t470 + t197 * t567 + t199 * t434 - t307 * t313 + t308 * t315 + t311 * t387;
t194 = Icges(5,5) * t308 - Icges(5,6) * t307 + Icges(5,3) * t387;
t196 = Icges(5,4) * t308 - Icges(5,2) * t307 + Icges(5,6) * t387;
t198 = Icges(5,1) * t308 - Icges(5,4) * t307 + Icges(5,5) * t387;
t78 = -t194 * t470 + t196 * t567 + t198 * t434 - t307 * t314 + t308 * t316 + t312 * t387;
t716 = t103 * t499 - t173 * t389 + t174 * t387 + t203 * t488 - t468 * t77 - t470 * t78 + t5 + t6;
t104 = -t309 * t401 + t310 * t402 - t333 * t468 + t334 * t566 + t335 * t432 - t389 * t400;
t171 = -t311 * t468 + t313 * t566 + t315 * t432;
t172 = -t312 * t468 + t314 * t566 + t316 * t432;
t202 = -t400 * t468 + t401 * t566 + t402 * t432;
t113 = -t251 * t574 - t255 * t566 + t259 * t364;
t114 = -t252 * t574 - t256 * t566 + t260 * t364;
t158 = -t321 * t574 - t323 * t566 + t325 * t364;
t32 = -t134 * t574 - t138 * t566 + t142 * t364 + t230 * t251 + t231 * t259 + t255 * t309;
t33 = -t133 * t574 - t137 * t566 + t141 * t364 + t230 * t252 + t231 * t260 + t256 * t309;
t63 = -t220 * t574 - t222 * t566 + t224 * t364 + t230 * t321 + t231 * t325 + t309 * t323;
t7 = -t113 * t389 + t114 * t387 + t158 * t488 - t32 * t468 - t33 * t470 + t499 * t63;
t79 = -t195 * t468 + t197 * t566 + t199 * t432 - t309 * t313 + t310 * t315 - t311 * t389;
t115 = -t253 * t566 + t257 * t574 + t261 * t364;
t116 = -t254 * t566 + t258 * t574 + t262 * t364;
t159 = -t322 * t566 + t324 * t574 + t326 * t364;
t34 = -t136 * t566 + t140 * t574 + t144 * t364 - t230 * t257 + t231 * t261 + t253 * t309;
t35 = -t135 * t566 + t139 * t574 + t143 * t364 - t230 * t258 + t231 * t262 + t254 * t309;
t64 = -t221 * t566 + t223 * t574 + t225 * t364 - t230 * t324 + t231 * t326 + t309 * t322;
t8 = -t115 * t389 + t116 * t387 + t159 * t488 - t34 * t468 - t35 * t470 + t499 * t64;
t80 = -t194 * t468 + t196 * t566 + t198 * t432 - t309 * t314 + t310 * t316 - t312 * t389;
t715 = t104 * t499 - t171 * t389 + t172 * t387 + t202 * t488 - t468 * t79 - t470 * t80 + t7 + t8;
t10 = t62 * t684 + (-t30 * t537 + t31 * t536 + (t119 * t536 + t120 * t537) * qJD(1)) * t533;
t9 = t61 * t684 + (-t28 * t537 + t29 * t536 + (t117 * t536 + t118 * t537) * qJD(1)) * t533;
t714 = t10 + t103 * t684 + (t536 * t78 - t537 * t77 + (t173 * t536 + t174 * t537) * qJD(1)) * t533 + t9;
t11 = t63 * t684 + (-t32 * t537 + t33 * t536 + (t113 * t536 + t114 * t537) * qJD(1)) * t533;
t12 = t64 * t684 + (-t34 * t537 + t35 * t536 + (t115 * t536 + t116 * t537) * qJD(1)) * t533;
t713 = t104 * t684 + (t536 * t80 - t537 * t79 + (t171 * t536 + t172 * t537) * qJD(1)) * t533 + t12 + t11;
t686 = t176 * t488 + t87 * t499;
t15 = -t124 * t389 + t125 * t387 - t39 * t468 - t40 * t470 + t686;
t685 = t177 * t488 + t88 * t499;
t16 = -t126 * t389 + t127 * t387 - t41 * t468 - t42 * t470 + t685;
t180 = t311 * t499 + t313 * t565 + t315 * t479;
t181 = t312 * t499 + t314 * t565 + t316 * t479;
t129 = t499 * t333 + t334 * t565 + t479 * t335 + t488 * t400 - t419 * t401 + t420 * t402;
t234 = t400 * t499 + t401 * t565 + t402 * t479;
t213 = t234 * t488;
t677 = t129 * t499 + t213;
t92 = t195 * t499 + t197 * t565 + t199 * t479 + t311 * t488 - t313 * t419 + t315 * t420;
t93 = t194 * t499 + t196 * t565 + t198 * t479 + t312 * t488 - t314 * t419 + t316 * t420;
t712 = -t180 * t389 + t181 * t387 - t92 * t468 - t93 * t470 + t15 + t16 + t677;
t128 = t129 * t684;
t85 = t87 * t684;
t17 = t85 + (-t39 * t537 + t40 * t536 + (t124 * t536 + t125 * t537) * qJD(1)) * t533;
t86 = t88 * t684;
t18 = t86 + (-t41 * t537 + t42 * t536 + (t126 * t536 + t127 * t537) * qJD(1)) * t533;
t711 = t128 + (t93 * t536 - t92 * t537 + (t180 * t536 + t181 * t537) * qJD(1)) * t533 + t18 + t17;
t54 = -t117 * t468 - t118 * t470 + t160 * t499;
t55 = -t119 * t468 - t120 * t470 + t161 * t499;
t710 = -t173 * t468 - t174 * t470 + t203 * t499 + t54 + t55;
t56 = t158 * t684 + (-t113 * t537 + t114 * t536) * t533;
t57 = t159 * t684 + (-t115 * t537 + t116 * t536) * t533;
t709 = t56 + t57 + t202 * t684 + (-t171 * t537 + t172 * t536) * t533;
t58 = t160 * t684 + (-t117 * t537 + t118 * t536) * t533;
t59 = t161 * t684 + (-t119 * t537 + t120 * t536) * t533;
t708 = t58 + t59 + t203 * t684 + (-t173 * t537 + t174 * t536) * t533;
t52 = -t113 * t468 - t114 * t470 + t158 * t499;
t53 = -t115 * t468 - t116 * t470 + t159 * t499;
t707 = -t171 * t468 - t172 * t470 + t202 * t499 + t52 + t53;
t281 = Icges(4,5) * t390 + Icges(4,6) * t389 + Icges(4,3) * t622;
t476 = qJD(1) * t512 + qJD(2) * t554;
t477 = -qJD(1) * t556 - qJD(2) * t555;
t393 = Icges(3,5) * t477 + Icges(3,6) * t476 + Icges(3,3) * t622;
t706 = (-t393 - t281) * t537;
t694 = pkin(1) * t537;
t506 = pkin(2) * t593 + (-pkin(8) - qJ(3)) * t533;
t681 = t506 * t537;
t678 = t536 * t532;
t523 = t537 * t532;
t674 = rSges(7,2) * t419 - qJD(6) * t572 + t729 * t331 + t332 * t730;
t241 = t308 * pkin(4) + t307 * pkin(10);
t353 = t434 * pkin(4) - pkin(10) * t567;
t673 = t499 * t241 + t488 * t353;
t264 = t364 * rSges(6,1) + rSges(6,2) * t574 - rSges(6,3) * t566;
t352 = t432 * pkin(4) - pkin(10) * t566;
t671 = -t264 - t352;
t266 = t366 * rSges(6,1) + rSges(6,2) * t573 - rSges(6,3) * t567;
t669 = t266 + t353;
t242 = t310 * pkin(4) + t309 * pkin(10);
t668 = -t470 * t242 + t387 * t352;
t291 = t388 * pkin(3) + t387 * pkin(9);
t515 = pkin(2) * qJD(2) * t594 - t533 * qJD(3);
t603 = pkin(2) * t618;
t563 = -t536 * t515 - t537 * t603;
t616 = -t533 * pkin(8) - t506;
t411 = (t537 * t616 + t724) * qJD(1) + t563;
t408 = t684 * t411;
t667 = t684 * t291 + t408;
t346 = pkin(4) * t420 + pkin(10) * t419;
t418 = pkin(4) * t479 - pkin(10) * t565;
t666 = -t468 * t346 - t389 * t418;
t665 = -rSges(7,2) * t565 + t422 * t730 - t729 * t572;
t328 = rSges(6,1) * t422 + rSges(6,2) * t572 - rSges(6,3) * t565;
t664 = t328 + t418;
t405 = t471 * pkin(3) - pkin(9) * t470;
t462 = t536 * t616 + t523 - t694;
t449 = t684 * t462;
t663 = t684 * t405 + t449;
t662 = -t405 - t462;
t514 = pkin(2) * t598 + qJD(3) * t684;
t661 = rSges(4,1) * t489 + rSges(4,2) * t488 - t514;
t461 = t530 + t681 - t724;
t660 = t461 * t680 + t462 * t679;
t659 = pkin(3) * t489 - pkin(9) * t488 - t514;
t448 = t500 * rSges(4,1) - t499 * rSges(4,2) + rSges(4,3) * t684;
t518 = pkin(2) * t625 + qJ(3) * t684;
t658 = -t448 - t518;
t460 = pkin(3) * t500 + pkin(9) * t499;
t657 = -t460 - t518;
t656 = t506 * t655 + t536 * t603;
t1 = t117 * t309 + t118 * t307 + t160 * t419 - t28 * t566 - t29 * t567 - t565 * t61;
t2 = t119 * t309 + t120 * t307 + t161 * t419 - t30 * t566 - t31 * t567 - t565 * t62;
t649 = -t2 / 0.2e1 - t1 / 0.2e1;
t3 = t113 * t309 + t114 * t307 + t158 * t419 - t32 * t566 - t33 * t567 - t565 * t63;
t4 = t115 * t309 + t116 * t307 + t159 * t419 - t34 * t566 - t35 * t567 - t565 * t64;
t648 = -t3 / 0.2e1 - t4 / 0.2e1;
t647 = pkin(8) * t680;
t528 = rSges(4,3) * t680;
t48 = -t113 * t566 - t114 * t567 - t158 * t565;
t49 = -t115 * t566 - t116 * t567 - t159 * t565;
t646 = -t49 / 0.2e1 - t48 / 0.2e1;
t50 = -t117 * t566 - t118 * t567 - t160 * t565;
t51 = -t119 * t566 - t120 * t567 - t161 * t565;
t645 = t50 / 0.2e1 + t51 / 0.2e1;
t643 = t684 / 0.2e1;
t146 = t229 * rSges(6,1) - t228 * rSges(6,2) + t307 * rSges(6,3);
t642 = t684 * t241 + t667;
t641 = -t352 - t672;
t640 = t353 + t670;
t200 = t308 * rSges(5,1) - t307 * rSges(5,2) + t387 * rSges(5,3);
t639 = t418 + t665;
t336 = rSges(5,1) * t420 - rSges(5,2) * t419 + rSges(5,3) * t488;
t638 = -t336 + t659;
t637 = -t346 + t659;
t636 = t684 * t353 + t663;
t635 = -t353 + t662;
t286 = t388 * rSges(4,1) - t387 * rSges(4,2) + rSges(4,3) * t621;
t403 = rSges(5,1) * t479 + rSges(5,2) * t565 + rSges(5,3) * t499;
t634 = -t403 + t657;
t590 = t515 * t537 - t656;
t412 = (-t537 * t692 - t647) * qJD(1) + t590;
t633 = t411 * t679 + t412 * t680 + t461 * t621;
t632 = -t418 + t657;
t318 = t434 * rSges(5,1) + rSges(5,2) * t567 - t470 * rSges(5,3);
t376 = t471 * rSges(4,1) + t470 * rSges(4,2) + t528;
t398 = t475 * rSges(3,1) + t474 * rSges(3,2) + rSges(3,3) * t621;
t459 = -rSges(3,1) * t556 + t512 * rSges(3,2) + rSges(3,3) * t680;
t631 = m(5) * t684;
t630 = m(6) * t684;
t629 = m(7) * t684;
t292 = t390 * pkin(3) - t389 * pkin(9);
t404 = t469 * pkin(3) - t468 * pkin(9);
t615 = t684 * t461;
t614 = 2 * m(3);
t612 = 2 * m(4);
t610 = 0.2e1 * m(5);
t608 = 0.2e1 * m(6);
t606 = 0.2e1 * m(7);
t605 = t537 * t658;
t604 = -t536 * t506 + t523;
t227 = rSges(6,1) * t332 - rSges(6,2) * t331 + rSges(6,3) * t419;
t602 = -t227 + t637;
t601 = -t328 + t632;
t600 = t404 * t680 + t405 * t679 + t660;
t595 = t537 * t634;
t587 = -t477 * rSges(3,1) - t476 * rSges(3,2);
t586 = -t390 * rSges(4,1) - t389 * rSges(4,2);
t585 = -t469 * rSges(4,1) - t468 * rSges(4,2);
t584 = -t412 * t684 + t518 * t622;
t583 = t637 - t674;
t582 = t632 - t665;
t580 = -t678 - t681;
t579 = t537 * t601;
t578 = t41 / 0.2e1 + t39 / 0.2e1 + t64 / 0.2e1 + t63 / 0.2e1;
t577 = t42 / 0.2e1 + t40 / 0.2e1 + t62 / 0.2e1 + t61 / 0.2e1;
t576 = t291 * t679 + t292 * t680 + t404 * t621 + t633;
t575 = t352 * t680 + t353 * t679 + t600;
t571 = t126 / 0.2e1 + t124 / 0.2e1 + t159 / 0.2e1 + t158 / 0.2e1;
t570 = t127 / 0.2e1 + t125 / 0.2e1 + t161 / 0.2e1 + t160 / 0.2e1;
t569 = t537 * t582;
t568 = t405 + t604;
t201 = t310 * rSges(5,1) - t309 * rSges(5,2) - t389 * rSges(5,3);
t317 = t432 * rSges(5,1) + rSges(5,2) * t566 - t468 * rSges(5,3);
t148 = t231 * rSges(6,1) - t230 * rSges(6,2) + t309 * rSges(6,3);
t564 = -t404 * t684 - t615;
t458 = -rSges(3,1) * t554 - rSges(3,2) * t555 - rSges(3,3) * t679;
t562 = -t404 + t580;
t561 = -t92 / 0.2e1 - t104 / 0.2e1 - t578;
t560 = -t93 / 0.2e1 - t103 / 0.2e1 - t577;
t559 = t241 * t679 + t242 * t680 + t352 * t621 + t576;
t558 = -t180 / 0.2e1 - t202 / 0.2e1 - t571;
t557 = t181 / 0.2e1 + t203 / 0.2e1 + t570;
t552 = -t292 * t684 + t460 * t622 + t584;
t551 = t353 + t568;
t548 = (-qJD(1) * t532 - t515) * t537 - t292 + t656;
t547 = -t352 + t562;
t545 = -t352 * t684 + t564;
t544 = -t242 + t548;
t543 = -t242 * t684 + t418 * t622 + t552;
t541 = qJD(1) * t580 + t563;
t539 = t291 + t541;
t538 = t241 + t539;
t505 = (rSges(3,1) * t698 - rSges(3,2) * t695) * t653;
t497 = t684 * rSges(3,3) + (rSges(3,1) * t695 + rSges(3,2) * t698) * t533;
t493 = Icges(3,3) * t684 + (Icges(3,5) * t695 + Icges(3,6) * t698) * t533;
t444 = Icges(4,5) * t500 - Icges(4,6) * t499 + Icges(4,3) * t684;
t430 = t459 + t647 + t694;
t429 = -t458 + t717;
t410 = -t458 * t684 - t497 * t679;
t409 = t459 * t684 - t497 * t680;
t399 = rSges(3,3) * t622 - t587;
t397 = Icges(3,1) * t477 + Icges(3,4) * t476 + Icges(3,5) * t622;
t396 = Icges(3,1) * t475 + Icges(3,4) * t474 + Icges(3,5) * t621;
t395 = Icges(3,4) * t477 + Icges(3,2) * t476 + Icges(3,6) * t622;
t394 = Icges(3,4) * t475 + Icges(3,2) * t474 + Icges(3,6) * t621;
t375 = -rSges(4,3) * t679 - t585;
t368 = (-t694 + (-rSges(3,3) - pkin(8)) * t680) * qJD(1) + t587;
t367 = qJD(1) * t717 + t398;
t362 = t493 * t680 + t494 * t512 - t495 * t556;
t361 = -t493 * t679 - t494 * t555 - t495 * t554;
t355 = t468 * t418;
t345 = t604 + t376;
t344 = -t678 + (rSges(4,3) * t533 - t506) * t537 + t585;
t343 = t499 * t353;
t340 = t684 * t398 + (-t497 * t654 - t505 * t536) * t533;
t339 = -t684 * t399 + (t497 * t655 - t505 * t537) * t533;
t330 = t684 * t451 + (t453 * t698 + t455 * t695) * t533;
t329 = t684 * t450 + (t452 * t698 + t454 * t695) * t533;
t320 = t470 * t352;
t287 = rSges(4,3) * t622 - t586;
t285 = Icges(4,1) * t390 + Icges(4,4) * t389 + Icges(4,5) * t622;
t284 = Icges(4,1) * t388 - Icges(4,4) * t387 + Icges(4,5) * t621;
t283 = Icges(4,4) * t390 + Icges(4,2) * t389 + Icges(4,6) * t622;
t282 = Icges(4,4) * t388 - Icges(4,2) * t387 + Icges(4,6) * t621;
t274 = -t375 * t684 + t533 * t605 - t615;
t273 = t376 * t684 + t658 * t680 + t449;
t272 = t444 * t680 + t445 * t470 + t446 * t471;
t271 = -t444 * t679 + t468 * t445 + t469 * t446;
t270 = t476 * t494 + t477 * t495 - t555 * t503 - t554 * t504 + (t493 * t655 - t502 * t537) * t533;
t269 = t474 * t494 + t475 * t495 + t512 * t503 - t556 * t504 + (t493 * t654 + t502 * t536) * t533;
t268 = (-t528 - t523) * qJD(1) + t586 - t590;
t267 = t541 + t286;
t250 = t568 + t318;
t249 = -t317 + t562;
t244 = t318 * t499 + t403 * t470;
t243 = -t317 * t499 - t403 * t468;
t240 = t370 * t684 - t499 * t372 + t500 * t374;
t239 = t369 * t684 - t499 * t371 + t500 * t373;
t208 = t684 * t392 + (t695 * t396 + t698 * t394 + (-t453 * t695 + t455 * t698) * qJD(2)) * t533;
t207 = t684 * t393 + (t695 * t397 + t698 * t395 + (-t452 * t695 + t454 * t698) * qJD(2)) * t533;
t206 = -t317 * t470 + t318 * t468;
t189 = t684 * t286 + t408 + (qJD(1) * t605 + t536 * t661) * t533;
t188 = -t684 * t287 + (t448 * t655 + t537 * t661) * t533 + t584;
t187 = -t317 * t684 + t533 * t595 + t564;
t186 = t318 * t684 + t634 * t680 + t663;
t185 = t551 + t266;
t184 = -t264 + t547;
t183 = -t266 * t565 + t328 * t567;
t182 = t264 * t565 - t328 * t566;
t179 = t389 * t445 + t390 * t446 + t468 * t439 + t469 * t440 + (-t438 * t537 + t444 * t655) * t533;
t178 = -t387 * t445 + t388 * t446 + t470 * t439 + t471 * t440 + (t438 * t536 + t444 * t654) * t533;
t175 = (t317 * t536 + t318 * t537) * t533 + t600;
t168 = -t264 * t567 + t266 * t566;
t167 = -t201 + t548;
t166 = t539 + t200;
t163 = t551 + t670;
t162 = t547 - t672;
t157 = t266 * t499 + t470 * t664 + t343;
t156 = -t328 * t468 + t499 * t671 - t355;
t155 = -t264 * t684 + t533 * t579 + t545;
t154 = t266 * t684 + t601 * t680 + t636;
t151 = t280 * t684 - t499 * t282 + t500 * t284 - t488 * t372 - t489 * t374;
t150 = t281 * t684 - t499 * t283 + t500 * t285 - t488 * t371 - t489 * t373;
t149 = (t286 * t537 + t287 * t536 + (t375 * t537 + (-t376 - t462) * t536) * qJD(1)) * t533 + t633;
t132 = -t565 * t670 + t567 * t665;
t131 = t565 * t672 - t566 * t665;
t130 = -t264 * t470 + t468 * t669 - t320;
t122 = -t201 * t499 - t317 * t488 - t336 * t468 - t389 * t403;
t121 = t200 * t499 + t318 * t488 + t336 * t470 - t387 * t403;
t112 = (t264 * t536 + t266 * t537) * t533 + t575;
t111 = t684 * t200 + (qJD(1) * t595 + t536 * t638) * t533 + t667;
t110 = -t684 * t201 + (t403 * t655 + t537 * t638) * t533 + t552;
t109 = t470 * t639 + t499 * t670 + t343;
t108 = -t468 * t665 + t499 * t641 - t355;
t107 = t533 * t569 - t672 * t684 + t545;
t106 = t582 * t680 + t670 * t684 + t636;
t105 = t566 * t670 - t567 * t672;
t102 = t200 * t468 - t201 * t470 + t317 * t387 + t318 * t389;
t101 = t468 * t640 - t470 * t672 - t320;
t100 = -t148 + t544;
t99 = t538 + t146;
t98 = (t536 * t672 + t537 * t670) * t533 + t575;
t91 = t148 * t565 - t227 * t566 - t264 * t419 + t309 * t328;
t90 = -t146 * t565 + t227 * t567 + t266 * t419 - t307 * t328;
t89 = (t200 * t537 + t201 * t536 + (t317 * t537 + (-t318 + t662) * t536) * qJD(1)) * t533 + t576;
t76 = t544 - t675;
t75 = t538 + t676;
t74 = t684 * t146 + (qJD(1) * t579 + t536 * t602) * t533 + t642;
t73 = -t684 * t148 + (t328 * t655 + t537 * t602) * t533 + t543;
t72 = t177 * t684 + (-t126 * t537 + t127 * t536) * t533;
t71 = t176 * t684 + (-t124 * t537 + t125 * t536) * t533;
t70 = -t126 * t468 - t127 * t470 + t177 * t499;
t69 = -t124 * t468 - t125 * t470 + t176 * t499;
t68 = -t126 * t566 - t127 * t567 - t177 * t565;
t67 = -t124 * t566 - t125 * t567 - t176 * t565;
t66 = -t227 * t468 - t328 * t389 + (-t148 - t242) * t499 + t671 * t488 + t666;
t65 = t146 * t499 + t266 * t488 + (t227 + t346) * t470 - t664 * t387 + t673;
t60 = t146 * t566 - t148 * t567 + t264 * t307 - t266 * t309;
t47 = (qJD(1) * t569 + t536 * t583) * t533 + t642 + t676 * t684;
t46 = (t537 * t583 + t655 * t665) * t533 + t543 - t675 * t684;
t45 = -t148 * t470 + t264 * t387 + (t146 + t241) * t468 + t669 * t389 + t668;
t44 = t309 * t665 - t419 * t672 + t565 * t675 - t566 * t674;
t43 = -t307 * t665 + t419 * t670 - t565 * t676 + t567 * t674;
t38 = (t146 * t537 + t148 * t536 + (t264 * t537 + (-t266 + t635) * t536) * qJD(1)) * t533 + t559;
t37 = -t674 * t468 - t665 * t389 + (-t242 - t675) * t499 + t641 * t488 + t666;
t36 = t676 * t499 + t670 * t488 + (t346 + t674) * t470 - t639 * t387 + t673;
t27 = t307 * t672 - t309 * t670 + t566 * t676 - t567 * t675;
t25 = -t675 * t470 + t672 * t387 + (t241 + t676) * t468 + t640 * t389 + t668;
t24 = (t676 * t537 + t675 * t536 + (t672 * t537 + (t635 - t670) * t536) * qJD(1)) * t533 + t559;
t19 = [t129 + t88 + t87 + (t100 * t184 + t185 * t99) * t608 + (t162 * t76 + t163 * t75) * t606 + (t166 * t250 + t167 * t249) * t610 + (t267 * t345 + t268 * t344) * t612 + (t367 * t430 + t368 * t429) * t614 + t731; t86 + t85 + t128 + m(3) * (t339 * t429 + t340 * t430 + t367 * t409 + t368 * t410) + (t188 * t344 + t189 * t345 + t267 * t273 + t268 * t274) * m(4) + (t110 * t249 + t111 * t250 + t166 * t186 + t167 * t187) * m(5) + (t100 * t155 + t154 * t99 + t184 * t73 + t185 * t74) * m(6) + (t106 * t75 + t107 * t76 + t162 * t46 + t163 * t47) * m(7) + ((-t207 / 0.2e1 - t150 / 0.2e1 - t270 / 0.2e1 - t179 / 0.2e1 + t561) * t537 + (t208 / 0.2e1 + t151 / 0.2e1 + t269 / 0.2e1 + t178 / 0.2e1 - t560) * t536 + ((t272 / 0.2e1 + t362 / 0.2e1 + t330 / 0.2e1 + t240 / 0.2e1 + t557) * t537 + (t361 / 0.2e1 + t329 / 0.2e1 + t239 / 0.2e1 + t271 / 0.2e1 - t558) * t536) * qJD(1)) * t533 + t721; (t410 * t339 + t409 * t340 + (t458 * t536 + t459 * t537) * (t398 * t537 + t399 * t536 + (t458 * t537 - t459 * t536) * qJD(1)) * t533 ^ 2) * t614 + (t112 * t38 + t154 * t74 + t155 * t73) * t608 + (t274 * t188 + t273 * t189 + ((t375 * t536 + t376 * t537) * t533 + t660) * t149) * t612 + (t106 * t47 + t107 * t46 + t24 * t98) * t606 + (t110 * t187 + t111 * t186 + t175 * t89) * t610 + (((-t150 - t207) * t537 + (t151 + t208) * t536 + ((t240 + t330) * t537 + (t239 + t329) * t536) * qJD(1)) * t533 + t711 + t721) * t684 + ((t269 + t178) * t684 + (t719 * t655 + t722 * t654 + (-t470 * t283 - t471 * t285 + t387 * t371 - t388 * t373 - t512 * t395 + t397 * t556 - t474 * t452 - t475 * t454 - t621 * t718) * t537 + (t470 * t282 + t471 * t284 - t387 * t372 + t388 * t374 + t512 * t394 - t556 * t396 + t474 * t453 + t475 * t455 + (t536 * t727 + t654 * t728 + t706) * t533) * t536) * t533 + t714) * t680 + ((-t270 - t179) * t684 + (t723 * t655 + t720 * t654 + (t468 * t283 + t469 * t285 + t389 * t371 + t390 * t373 - t555 * t395 - t554 * t397 + t476 * t452 + t477 * t454 + (t655 * t718 + t706) * t533) * t537 + (t555 * t394 + t554 * t396 - t476 * t453 - t477 * t455 - t468 * t282 - t469 * t284 - t389 * t372 - t390 * t374 + (t537 * t727 - t655 * t728) * t533) * t536) * t533 - t713) * t679 + ((t361 + t271) * t684 + (-t536 * t720 + t537 * t723) * t533 + t709) * t622 + ((t362 + t272) * t684 + (t536 * t722 - t537 * t719) * t533 + t708) * t621; ((t162 * t654 + t163 * t655 + t536 * t76 - t537 * t75) * m(7) + (t100 * t536 + t184 * t654 + t185 * t655 - t537 * t99) * m(6) + (-t166 * t537 + t167 * t536 + t249 * t654 + t250 * t655) * m(5) + (-t267 * t537 + t268 * t536 + t344 * t654 + t345 * t655) * m(4)) * t533; m(4) * t684 * t149 + t89 * t631 + t38 * t630 + t24 * t629 + ((t106 * t655 + t107 * t654 + t46 * t536 - t47 * t537) * m(7) + (t154 * t655 + t155 * t654 + t536 * t73 - t537 * t74) * m(6) + (t110 * t536 - t111 * t537 + t186 * t655 + t187 * t654) * m(5) + (t188 * t536 - t189 * t537 + t273 * t655 + t274 * t654) * m(4)) * t533; 0; (t121 * t250 + t122 * t249 + t166 * t244 + t167 * t243) * m(5) + (t100 * t156 + t157 * t99 + t184 * t66 + t185 * t65) * m(6) + (t108 * t76 + t109 * t75 + t162 * t37 + t163 * t36) * m(7) + t560 * t470 + t561 * t468 + t558 * t389 + t557 * t387 + t677 + t685 + t686; (t102 * t175 + t110 * t243 + t111 * t244 + t121 * t186 + t122 * t187 + t206 * t89) * m(5) + (t101 * t24 + t106 * t36 + t107 * t37 + t108 * t46 + t109 * t47 + t25 * t98) * m(7) + (t112 * t45 + t130 * t38 + t154 * t65 + t155 * t66 + t156 * t73 + t157 * t74) * m(6) + t708 * t387 / 0.2e1 - t709 * t389 / 0.2e1 - t713 * t468 / 0.2e1 - t714 * t470 / 0.2e1 + (t234 * t684 + (-t180 * t537 + t181 * t536) * t533 + t72 + t71) * t488 / 0.2e1 + t711 * t499 / 0.2e1 + t712 * t643 + t716 * t680 / 0.2e1 - t715 * t679 / 0.2e1 + (t536 * t707 + t537 * t710) * qJD(1) * t533 / 0.2e1; t102 * t631 + t45 * t630 + t25 * t629 + ((-t121 * t537 + t122 * t536 + t243 * t654 + t244 * t655) * m(5) + (t156 * t654 + t157 * t655 + t536 * t66 - t537 * t65) * m(6) + (t108 * t654 + t109 * t655 - t36 * t537 + t37 * t536) * m(7)) * t533; (t101 * t25 + t108 * t37 + t109 * t36) * t606 + (t130 * t45 + t156 * t66 + t157 * t65) * t608 + (t102 * t206 + t121 * t244 + t122 * t243) * t610 + (t70 + t69) * t488 + (t213 + t712) * t499 + (-t488 * t181 - t716) * t470 + (-t488 * t180 - t715) * t468 - t707 * t389 + t710 * t387; (t131 * t76 + t132 * t75 + t162 * t44 + t163 * t43) * m(7) + (t100 * t182 + t183 * t99 + t184 * t91 + t185 * t90) * m(6) - t577 * t567 - t578 * t566 + t571 * t309 + t570 * t307 + t687 + t688; (t105 * t24 + t106 * t43 + t107 * t44 + t131 * t46 + t132 * t47 + t27 * t98) * m(7) + (t112 * t60 + t154 * t90 + t155 * t91 + t168 * t38 + t182 * t73 + t183 * t74) * m(6) - (t17 / 0.2e1 + t18 / 0.2e1) * t565 - (t9 / 0.2e1 + t10 / 0.2e1) * t567 - (t11 / 0.2e1 + t12 / 0.2e1) * t566 + (t71 / 0.2e1 + t72 / 0.2e1) * t419 + (t56 / 0.2e1 + t57 / 0.2e1) * t309 + (t58 / 0.2e1 + t59 / 0.2e1) * t307 + (t648 * t537 - t649 * t536 + (-t536 * t646 + t537 * t645) * qJD(1)) * t533 + t725 * t643; t60 * t630 + t27 * t629 + ((t182 * t654 + t183 * t655 + t536 * t91 - t537 * t90) * m(6) + (t131 * t654 + t132 * t655 - t43 * t537 + t44 * t536) * m(7)) * t533; (t130 * t60 + t156 * t91 + t157 * t90 + t168 * t45 + t182 * t66 + t183 * t65) * m(6) + (t101 * t27 + t105 * t25 + t108 * t44 + t109 * t43 + t131 * t37 + t132 * t36) * m(7) + (t14 / 0.2e1 + t13 / 0.2e1) * t499 + (t67 / 0.2e1 + t68 / 0.2e1) * t488 - (t16 / 0.2e1 + t15 / 0.2e1) * t565 + t649 * t470 + t648 * t468 - (t6 / 0.2e1 + t5 / 0.2e1) * t567 - (t8 / 0.2e1 + t7 / 0.2e1) * t566 + (t69 / 0.2e1 + t70 / 0.2e1) * t419 + t646 * t389 + t645 * t387 + (t52 / 0.2e1 + t53 / 0.2e1) * t309 + (t54 / 0.2e1 + t55 / 0.2e1) * t307; (t105 * t27 + t131 * t44 + t132 * t43) * t606 + (t168 * t60 + t182 * t91 + t183 * t90) * t608 - t725 * t565 - (t2 + t1) * t567 - (t3 + t4) * t566 + (t67 + t68) * t419 + (t48 + t49) * t309 + (t51 + t50) * t307; (t162 * t228 + t163 * t230 - t573 * t76 - t574 * t75) * m(7); (t106 * t230 + t107 * t228 - t24 * t572 + t331 * t98 - t46 * t573 - t47 * t574) * m(7); m(7) * (t331 * t684 + (t228 * t536 - t230 * t537 + (-t536 * t574 - t537 * t573) * qJD(1)) * t533); (t101 * t331 + t108 * t228 + t109 * t230 - t25 * t572 - t36 * t574 - t37 * t573) * m(7); (t105 * t331 + t131 * t228 + t132 * t230 - t27 * t572 - t43 * t574 - t44 * t573) * m(7); (-t228 * t573 - t230 * t574 - t331 * t572) * t606;];
%% Postprocessing: Reshape Output
% From vec2symmat_6_matlab.m
res = [t19(1) t19(2) t19(4) t19(7) t19(11) t19(16); t19(2) t19(3) t19(5) t19(8) t19(12) t19(17); t19(4) t19(5) t19(6) t19(9) t19(13) t19(18); t19(7) t19(8) t19(9) t19(10) t19(14) t19(19); t19(11) t19(12) t19(13) t19(14) t19(15) t19(20); t19(16) t19(17) t19(18) t19(19) t19(20) t19(21);];
Mq  = res;