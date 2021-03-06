% Calculate time derivative of joint inertia matrix for
% S6RRPRRR4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d5,d6,theta3]';
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
% Datum: 2019-03-09 13:37
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S6RRPRRR4_inertiaDJ_slag_vp11(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(12,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRR4_inertiaDJ_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRR4_inertiaDJ_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRPRRR4_inertiaDJ_slag_vp1: pkin has to be [12x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRPRRR4_inertiaDJ_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RRPRRR4_inertiaDJ_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RRPRRR4_inertiaDJ_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 13:27:53
% EndTime: 2019-03-09 13:29:05
% DurationCPUTime: 41.01s
% Computational Cost: add. (182763->1459), mult. (394750->1918), div. (0->0), fcn. (468135->14), ass. (0->622)
t636 = sin(qJ(1));
t639 = cos(qJ(1));
t817 = sin(pkin(12));
t819 = cos(pkin(6));
t689 = t819 * t817;
t818 = cos(pkin(12));
t690 = t819 * t818;
t832 = sin(qJ(2));
t833 = cos(qJ(2));
t647 = -t689 * t832 + t690 * t833;
t653 = t817 * t833 + t818 * t832;
t560 = -t636 * t653 + t639 * t647;
t593 = t689 * t833 + t690 * t832;
t652 = t832 * t817 - t833 * t818;
t561 = t593 * t639 - t636 * t652;
t633 = sin(pkin(6));
t806 = t633 * t639;
t454 = Icges(4,5) * t561 + Icges(4,6) * t560 - Icges(4,3) * t806;
t696 = t819 * t832;
t656 = -t636 * t833 - t639 * t696;
t697 = t819 * t833;
t657 = t636 * t832 - t639 * t697;
t542 = -Icges(3,5) * t656 - Icges(3,6) * t657 - Icges(3,3) * t806;
t850 = t454 + t542;
t645 = t636 * t647;
t562 = -t639 * t653 - t645;
t563 = -t593 * t636 - t639 * t652;
t808 = t633 * t636;
t455 = Icges(4,5) * t563 + Icges(4,6) * t562 + Icges(4,3) * t808;
t604 = -t636 * t697 - t639 * t832;
t658 = t636 * t696 - t639 * t833;
t543 = -Icges(3,5) * t658 + Icges(3,6) * t604 + Icges(3,3) * t808;
t857 = t455 + t543;
t592 = t653 * t633;
t580 = qJD(2) * t592;
t769 = qJD(2) * t633;
t581 = t652 * t769;
t528 = -Icges(4,5) * t581 - Icges(4,6) * t580;
t529 = -Icges(4,4) * t581 - Icges(4,2) * t580;
t530 = -Icges(4,1) * t581 - Icges(4,4) * t580;
t591 = t652 * t633;
t535 = Icges(4,4) * t592 - Icges(4,2) * t591 + Icges(4,6) * t819;
t536 = Icges(4,1) * t592 - Icges(4,4) * t591 + Icges(4,5) * t819;
t740 = t832 * Icges(3,4);
t586 = Icges(3,6) * t819 + (Icges(3,2) * t833 + t740) * t633;
t741 = t833 * Icges(3,4);
t587 = Icges(3,5) * t819 + (Icges(3,1) * t832 + t741) * t633;
t594 = (Icges(3,5) * t833 - Icges(3,6) * t832) * t769;
t595 = (-Icges(3,2) * t832 + t741) * t769;
t596 = (Icges(3,1) * t833 - t740) * t769;
t743 = t633 * t833;
t701 = qJD(2) * t743;
t728 = qJD(2) * t832;
t742 = t633 * t832;
t870 = -t586 * t633 * t728 - t591 * t529 + t592 * t530 - t580 * t535 - t581 * t536 + t587 * t701 + t595 * t743 + t596 * t742 + (t528 + t594) * t819;
t803 = qJ(4) + qJ(5);
t729 = cos(t803);
t631 = sin(t803);
t760 = t631 * t806;
t514 = t561 * t729 - t760;
t634 = sin(qJ(6));
t637 = cos(qJ(6));
t440 = -t514 * t634 - t560 * t637;
t441 = t514 * t637 - t560 * t634;
t691 = t633 * t729;
t674 = t639 * t691;
t513 = t561 * t631 + t674;
t305 = Icges(7,5) * t441 + Icges(7,6) * t440 + Icges(7,3) * t513;
t307 = Icges(7,4) * t441 + Icges(7,2) * t440 + Icges(7,6) * t513;
t309 = Icges(7,1) * t441 + Icges(7,4) * t440 + Icges(7,5) * t513;
t516 = t563 * t729 + t631 * t808;
t442 = -t516 * t634 - t562 * t637;
t443 = t516 * t637 - t562 * t634;
t675 = t636 * t691;
t515 = t563 * t631 - t675;
t152 = t305 * t515 + t307 * t442 + t309 * t443;
t306 = Icges(7,5) * t443 + Icges(7,6) * t442 + Icges(7,3) * t515;
t308 = Icges(7,4) * t443 + Icges(7,2) * t442 + Icges(7,6) * t515;
t310 = Icges(7,1) * t443 + Icges(7,4) * t442 + Icges(7,5) * t515;
t153 = t306 * t515 + t308 * t442 + t310 * t443;
t571 = t592 * t729 + t631 * t819;
t505 = -t571 * t634 + t591 * t637;
t506 = t571 * t637 + t591 * t634;
t660 = -t592 * t631 + t729 * t819;
t383 = Icges(7,5) * t506 + Icges(7,6) * t505 - Icges(7,3) * t660;
t384 = Icges(7,4) * t506 + Icges(7,2) * t505 - Icges(7,6) * t660;
t385 = Icges(7,1) * t506 + Icges(7,4) * t505 - Icges(7,5) * t660;
t191 = t383 * t515 + t384 * t442 + t385 * t443;
t582 = t593 * qJD(2);
t650 = qJD(2) * t652;
t472 = qJD(1) * t560 - t636 * t582 - t639 * t650;
t770 = qJD(1) * t639;
t474 = -qJD(1) * t645 - t639 * t582 + t636 * t650 - t653 * t770;
t583 = t647 * qJD(2);
t601 = t653 * qJD(2);
t475 = qJD(1) * t563 + t583 * t639 - t601 * t636;
t632 = qJD(4) + qJD(5);
t771 = qJD(1) * t636;
t739 = t633 * t771;
t375 = -t632 * t674 + t475 * t729 + (-t561 * t632 + t739) * t631;
t278 = -qJD(6) * t441 - t375 * t634 - t474 * t637;
t279 = qJD(6) * t440 + t375 * t637 - t474 * t634;
t673 = qJD(1) * t691;
t692 = t632 * t729;
t374 = t475 * t631 + t561 * t692 - t632 * t760 - t636 * t673;
t173 = Icges(7,5) * t279 + Icges(7,6) * t278 + Icges(7,3) * t374;
t175 = Icges(7,4) * t279 + Icges(7,2) * t278 + Icges(7,6) * t374;
t177 = Icges(7,1) * t279 + Icges(7,4) * t278 + Icges(7,5) * t374;
t473 = -qJD(1) * t561 - t583 * t636 - t601 * t639;
t738 = t633 * t770;
t373 = t632 * t675 + t473 * t729 + (-t563 * t632 + t738) * t631;
t276 = -qJD(6) * t443 - t373 * t634 + t472 * t637;
t277 = qJD(6) * t442 + t373 * t637 + t472 * t634;
t372 = t563 * t692 - t639 * t673 + (t632 * t808 + t473) * t631;
t48 = t173 * t515 + t175 * t442 + t177 * t443 + t276 * t307 + t277 * t309 + t305 * t372;
t172 = Icges(7,5) * t277 + Icges(7,6) * t276 + Icges(7,3) * t372;
t174 = Icges(7,4) * t277 + Icges(7,2) * t276 + Icges(7,6) * t372;
t176 = Icges(7,1) * t277 + Icges(7,4) * t276 + Icges(7,5) * t372;
t49 = t172 * t515 + t174 * t442 + t176 * t443 + t276 * t308 + t277 * t310 + t306 * t372;
t504 = -t581 * t729 + t632 * t660;
t393 = -qJD(6) * t506 - t504 * t634 + t580 * t637;
t394 = qJD(6) * t505 + t504 * t637 + t580 * t634;
t503 = t592 * t692 + (t632 * t819 - t581) * t631;
t265 = Icges(7,5) * t394 + Icges(7,6) * t393 + Icges(7,3) * t503;
t266 = Icges(7,4) * t394 + Icges(7,2) * t393 + Icges(7,6) * t503;
t267 = Icges(7,1) * t394 + Icges(7,4) * t393 + Icges(7,5) * t503;
t81 = t265 * t515 + t266 * t442 + t267 * t443 + t276 * t384 + t277 * t385 + t372 * t383;
t11 = -t152 * t474 + t153 * t472 + t191 * t580 - t48 * t560 - t49 * t562 + t591 * t81;
t376 = Icges(6,5) * t504 - Icges(6,6) * t503 + Icges(6,3) * t580;
t377 = Icges(6,4) * t504 - Icges(6,2) * t503 + Icges(6,6) * t580;
t378 = Icges(6,1) * t504 - Icges(6,4) * t503 + Icges(6,5) * t580;
t450 = Icges(6,5) * t571 + Icges(6,6) * t660 + Icges(6,3) * t591;
t451 = Icges(6,4) * t571 + Icges(6,2) * t660 + Icges(6,6) * t591;
t452 = Icges(6,1) * t571 + Icges(6,4) * t660 + Icges(6,5) * t591;
t142 = -t372 * t451 + t373 * t452 - t376 * t562 - t377 * t515 + t378 * t516 + t450 * t472;
t386 = Icges(6,5) * t514 - Icges(6,6) * t513 - Icges(6,3) * t560;
t388 = Icges(6,4) * t514 - Icges(6,2) * t513 - Icges(6,6) * t560;
t390 = Icges(6,1) * t514 - Icges(6,4) * t513 - Icges(6,5) * t560;
t208 = -t386 * t562 - t388 * t515 + t390 * t516;
t387 = Icges(6,5) * t516 - Icges(6,6) * t515 - Icges(6,3) * t562;
t389 = Icges(6,4) * t516 - Icges(6,2) * t515 - Icges(6,6) * t562;
t391 = Icges(6,1) * t516 - Icges(6,4) * t515 - Icges(6,5) * t562;
t209 = -t387 * t562 - t389 * t515 + t391 * t516;
t239 = -t450 * t562 - t451 * t515 + t452 * t516;
t244 = Icges(6,5) * t375 - Icges(6,6) * t374 - Icges(6,3) * t474;
t246 = Icges(6,4) * t375 - Icges(6,2) * t374 - Icges(6,6) * t474;
t248 = Icges(6,1) * t375 - Icges(6,4) * t374 - Icges(6,5) * t474;
t93 = -t244 * t562 - t246 * t515 + t248 * t516 - t372 * t388 + t373 * t390 + t386 * t472;
t243 = Icges(6,5) * t373 - Icges(6,6) * t372 + Icges(6,3) * t472;
t245 = Icges(6,4) * t373 - Icges(6,2) * t372 + Icges(6,6) * t472;
t247 = Icges(6,1) * t373 - Icges(6,4) * t372 + Icges(6,5) * t472;
t94 = -t243 * t562 - t245 * t515 + t247 * t516 - t372 * t389 + t373 * t391 + t387 * t472;
t869 = t142 * t591 - t208 * t474 + t209 * t472 + t239 * t580 - t560 * t93 - t562 * t94 + t11;
t150 = t305 * t513 + t307 * t440 + t309 * t441;
t151 = t306 * t513 + t308 * t440 + t310 * t441;
t190 = t383 * t513 + t384 * t440 + t385 * t441;
t50 = t173 * t513 + t175 * t440 + t177 * t441 + t278 * t307 + t279 * t309 + t305 * t374;
t51 = t172 * t513 + t174 * t440 + t176 * t441 + t278 * t308 + t279 * t310 + t306 * t374;
t82 = t265 * t513 + t266 * t440 + t267 * t441 + t278 * t384 + t279 * t385 + t374 * t383;
t12 = -t150 * t474 + t151 * t472 + t190 * t580 - t50 * t560 - t51 * t562 + t591 * t82;
t143 = -t374 * t451 + t375 * t452 - t376 * t560 - t377 * t513 + t378 * t514 - t450 * t474;
t206 = -t386 * t560 - t388 * t513 + t390 * t514;
t207 = -t387 * t560 - t389 * t513 + t391 * t514;
t238 = -t450 * t560 - t451 * t513 + t452 * t514;
t95 = -t244 * t560 - t246 * t513 + t248 * t514 - t374 * t388 + t375 * t390 - t386 * t474;
t96 = -t243 * t560 - t245 * t513 + t247 * t514 - t374 * t389 + t375 * t391 - t387 * t474;
t868 = t143 * t591 - t206 * t474 + t207 * t472 + t238 * t580 - t560 * t95 - t562 * t96 + t12;
t15 = t81 * t819 + (-t48 * t639 + t49 * t636 + (t152 * t636 + t153 * t639) * qJD(1)) * t633;
t867 = t15 + t142 * t819 + (t636 * t94 - t639 * t93 + (t208 * t636 + t209 * t639) * qJD(1)) * t633;
t16 = t82 * t819 + (-t50 * t639 + t51 * t636 + (t150 * t636 + t151 * t639) * qJD(1)) * t633;
t866 = t16 + t143 * t819 + (t636 * t96 - t639 * t95 + (t206 * t636 + t207 * t639) * qJD(1)) * t633;
t104 = -t265 * t660 + t505 * t266 + t506 * t267 + t503 * t383 + t393 * t384 + t394 * t385;
t205 = -t383 * t660 + t384 * t505 + t385 * t506;
t802 = t104 * t591 + t205 * t580;
t165 = -t306 * t660 + t308 * t505 + t310 * t506;
t813 = t165 * t472;
t164 = -t305 * t660 + t307 * t505 + t309 * t506;
t814 = t164 * t474;
t55 = -t172 * t660 + t174 * t505 + t176 * t506 + t306 * t503 + t308 * t393 + t310 * t394;
t822 = t55 * t562;
t54 = -t173 * t660 + t175 * t505 + t177 * t506 + t305 * t503 + t307 * t393 + t309 * t394;
t823 = t54 * t560;
t22 = t802 + t813 - t814 - t822 - t823;
t160 = t591 * t376 + t377 * t660 + t571 * t378 + t580 * t450 - t503 * t451 + t504 * t452;
t280 = t450 * t591 + t451 * t660 + t452 * t571;
t859 = t280 * t580;
t801 = t160 * t591 + t859;
t216 = t387 * t591 + t389 * t660 + t391 * t571;
t811 = t216 * t472;
t215 = t386 * t591 + t388 * t660 + t390 * t571;
t812 = t215 * t474;
t112 = t243 * t591 + t245 * t660 + t247 * t571 + t387 * t580 - t389 * t503 + t391 * t504;
t815 = t112 * t562;
t111 = t244 * t591 + t246 * t660 + t248 * t571 + t386 * t580 - t388 * t503 + t390 * t504;
t816 = t111 * t560;
t865 = t22 + t801 + t811 - t812 - t815 - t816;
t159 = t160 * t819;
t103 = t104 * t819;
t24 = t103 + (-t54 * t639 + t55 * t636 + (t164 * t636 + t165 * t639) * qJD(1)) * t633;
t864 = t24 + t159 + (-t111 * t639 + t112 * t636 + (t215 * t636 + t216 * t639) * qJD(1)) * t633;
t75 = -t152 * t560 - t153 * t562 + t191 * t591;
t863 = -t208 * t560 - t209 * t562 + t239 * t591 + t75;
t76 = t190 * t819 + (-t150 * t639 + t151 * t636) * t633;
t862 = t238 * t819 + (-t206 * t639 + t207 * t636) * t633 + t76;
t74 = -t150 * t560 - t151 * t562 + t190 * t591;
t861 = -t206 * t560 - t207 * t562 + t238 * t591 + t74;
t77 = t191 * t819 + (-t152 * t639 + t153 * t636) * t633;
t860 = t77 + t239 * t819 + (-t208 * t639 + t209 * t636) * t633;
t178 = t277 * rSges(7,1) + t276 * rSges(7,2) + t372 * rSges(7,3);
t799 = t373 * pkin(5) + t372 * pkin(11) + t178;
t683 = -t279 * rSges(7,1) - t278 * rSges(7,2);
t179 = t374 * rSges(7,3) - t683;
t829 = t375 * pkin(5);
t798 = t374 * pkin(11) + t179 + t829;
t268 = rSges(7,1) * t394 + rSges(7,2) * t393 + rSges(7,3) * t503;
t795 = pkin(5) * t504 + pkin(11) * t503 + t268;
t682 = -t441 * rSges(7,1) - t440 * rSges(7,2);
t312 = t513 * rSges(7,3) - t682;
t828 = t514 * pkin(5);
t791 = t513 * pkin(11) + t312 + t828;
t313 = t443 * rSges(7,1) + t442 * rSges(7,2) + t515 * rSges(7,3);
t790 = t516 * pkin(5) + pkin(11) * t515 + t313;
t339 = Icges(4,5) * t473 - Icges(4,6) * t472 + Icges(4,3) * t738;
t566 = qJD(1) * t657 + qJD(2) * t658;
t567 = qJD(1) * t656 + qJD(2) * t604;
t477 = Icges(3,5) * t567 + Icges(3,6) * t566 + Icges(3,3) * t738;
t858 = t339 + t477;
t392 = rSges(7,1) * t506 + rSges(7,2) * t505 - rSges(7,3) * t660;
t782 = pkin(5) * t571 - pkin(11) * t660 + t392;
t630 = pkin(2) * t833 + pkin(1);
t827 = pkin(1) - t630;
t856 = t636 * t827;
t456 = Icges(4,4) * t561 + Icges(4,2) * t560 - Icges(4,6) * t806;
t458 = Icges(4,1) * t561 + Icges(4,4) * t560 - Icges(4,5) * t806;
t544 = -Icges(3,4) * t656 - Icges(3,2) * t657 - Icges(3,6) * t806;
t546 = -Icges(3,1) * t656 - Icges(3,4) * t657 - Icges(3,5) * t806;
t855 = -t456 * t560 - t458 * t561 + t544 * t657 + t546 * t656 + t806 * t850;
t854 = t456 * t562 + t458 * t563 + t544 * t604 - t546 * t658 + t808 * t850;
t457 = Icges(4,4) * t563 + Icges(4,2) * t562 + Icges(4,6) * t808;
t459 = Icges(4,1) * t563 + Icges(4,4) * t562 + Icges(4,5) * t808;
t545 = -Icges(3,4) * t658 + Icges(3,2) * t604 + Icges(3,6) * t808;
t547 = -Icges(3,1) * t658 + Icges(3,4) * t604 + Icges(3,5) * t808;
t853 = t457 * t562 + t459 * t563 + t545 * t604 - t547 * t658 + t808 * t857;
t852 = t870 * t819;
t851 = -t457 * t560 - t459 * t561 + t545 * t657 + t547 * t656 + t806 * t857;
t628 = pkin(8) * t806;
t849 = -pkin(1) * t636 + t628;
t340 = Icges(4,5) * t475 + Icges(4,6) * t474 + Icges(4,3) * t739;
t568 = qJD(1) * t604 + qJD(2) * t656;
t569 = -qJD(1) * t658 - qJD(2) * t657;
t478 = Icges(3,5) * t569 + Icges(3,6) * t568 + Icges(3,3) * t739;
t848 = (-t340 - t478) * t639;
t847 = t372 / 0.2e1;
t846 = t374 / 0.2e1;
t845 = t472 / 0.2e1;
t844 = -t474 / 0.2e1;
t843 = t503 / 0.2e1;
t842 = t513 / 0.2e1;
t841 = t515 / 0.2e1;
t840 = -t560 / 0.2e1;
t839 = -t562 / 0.2e1;
t838 = -t660 / 0.2e1;
t837 = t580 / 0.2e1;
t836 = t591 / 0.2e1;
t835 = t636 / 0.2e1;
t834 = -rSges(7,3) - pkin(11);
t830 = pkin(1) * t639;
t638 = cos(qJ(4));
t629 = pkin(4) * t638 + pkin(3);
t826 = -pkin(3) + t629;
t640 = -pkin(10) - pkin(9);
t825 = -pkin(9) - t640;
t824 = pkin(4) * qJD(4);
t821 = rSges(6,3) - t640;
t820 = -t104 * t660 + t205 * t503;
t810 = t474 * t640;
t809 = t560 * t640;
t807 = t633 * t638;
t805 = t636 * t630;
t598 = pkin(2) * t696 + (-pkin(8) - qJ(3)) * t633;
t804 = t639 * t598;
t621 = t639 * t630;
t635 = sin(qJ(4));
t723 = t819 * t635;
t668 = -t592 * t638 - t723;
t511 = qJD(4) * t668 + t581 * t635;
t572 = -t592 * t635 + t638 * t819;
t664 = t572 * qJD(4);
t512 = -t581 * t638 + t664;
t415 = Icges(5,5) * t512 + Icges(5,6) * t511 + Icges(5,3) * t580;
t416 = Icges(5,4) * t512 + Icges(5,2) * t511 + Icges(5,6) * t580;
t417 = Icges(5,1) * t512 + Icges(5,4) * t511 + Icges(5,5) * t580;
t485 = -Icges(5,5) * t668 + Icges(5,6) * t572 + Icges(5,3) * t591;
t486 = -Icges(5,4) * t668 + Icges(5,2) * t572 + Icges(5,6) * t591;
t487 = -Icges(5,1) * t668 + Icges(5,4) * t572 + Icges(5,5) * t591;
t181 = t591 * t415 + t572 * t416 - t417 * t668 + t580 * t485 + t511 * t486 + t512 * t487;
t290 = t485 * t591 + t486 * t572 - t487 * t668;
t800 = t181 * t591 + t290 * t580;
t359 = t473 * pkin(3) + t472 * pkin(9);
t702 = t635 * t738;
t711 = t807 * t824;
t765 = t635 * t824;
t663 = pkin(4) * t702 - t472 * t640 + t473 * t629 - t563 * t765 + t636 * t711;
t241 = -t359 + t663;
t725 = -t563 * pkin(3) + pkin(9) * t562;
t762 = t635 * t808;
t618 = pkin(4) * t762;
t747 = t562 * t640 + t563 * t629 + t618;
t353 = t725 + t747;
t797 = t591 * t241 + t580 * t353;
t249 = t373 * rSges(6,1) - t372 * rSges(6,2) + t472 * rSges(6,3);
t396 = t516 * rSges(6,1) - t515 * rSges(6,2) - t562 * rSges(6,3);
t796 = t591 * t249 + t580 * t396;
t794 = t791 * t562;
t793 = t790 * t591;
t471 = t474 * pkin(9);
t703 = t635 * t739;
t774 = -t561 * t765 - t639 * t711;
t242 = pkin(4) * t703 + t475 * t826 + t471 + t774 + t810;
t558 = t560 * pkin(9);
t761 = t635 * t806;
t619 = pkin(4) * t761;
t352 = t561 * t826 + t558 - t619 + t809;
t792 = -t562 * t242 + t472 * t352;
t685 = -t375 * rSges(6,1) + t374 * rSges(6,2);
t250 = -t474 * rSges(6,3) - t685;
t684 = -t514 * rSges(6,1) + t513 * rSges(6,2);
t395 = -t560 * rSges(6,3) - t684;
t789 = -t562 * t250 + t472 * t395;
t380 = rSges(6,1) * t504 - rSges(6,2) * t503 + rSges(6,3) * t580;
t453 = rSges(6,1) * t571 + rSges(6,2) * t660 + rSges(6,3) * t591;
t788 = -t560 * t380 - t474 * t453;
t787 = t782 * t560;
t427 = pkin(4) * t664 + t580 * t825 - t581 * t826;
t448 = pkin(4) * t723 + t591 * t825 + t592 * t826;
t786 = -t560 * t427 - t474 * t448;
t785 = -t352 - t395;
t784 = t353 + t396;
t607 = pkin(2) * qJD(2) * t697 - t633 * qJD(3);
t710 = pkin(2) * t728;
t665 = -t636 * t607 - t639 * t710;
t726 = -t633 * pkin(8) - t598;
t496 = (t639 * t726 + t856) * qJD(1) + t665;
t493 = t819 * t496;
t783 = t819 * t359 + t493;
t781 = t448 + t453;
t553 = t636 * t726 + t621 - t830;
t541 = t819 * t553;
t780 = -t725 * t819 + t541;
t779 = t725 - t553;
t606 = pkin(2) * t701 + qJD(3) * t819;
t778 = rSges(4,1) * t581 + rSges(4,2) * t580 - t606;
t552 = t628 + t804 - t856;
t777 = t552 * t808 + t553 * t806;
t776 = t581 * pkin(3) - t580 * pkin(9) - t606;
t538 = t592 * rSges(4,1) - t591 * rSges(4,2) + rSges(4,3) * t819;
t611 = pkin(2) * t742 + qJ(3) * t819;
t775 = -t538 - t611;
t551 = t592 * pkin(3) + t591 * pkin(9);
t773 = -t551 - t611;
t772 = t598 * t771 + t636 * t710;
t766 = pkin(8) * t808;
t626 = rSges(4,3) * t808;
t764 = t54 / 0.2e1 + t82 / 0.2e1;
t763 = t55 / 0.2e1 + t81 / 0.2e1;
t759 = t819 / 0.2e1;
t758 = t819 * t241 + t783;
t757 = -t352 - t791;
t756 = t353 + t790;
t755 = t819 * t353 + t780;
t754 = -t353 + t779;
t753 = t448 + t782;
t524 = t563 * t638 + t762;
t401 = -qJD(4) * t524 - t473 * t635 + t638 * t738;
t523 = -t563 * t635 + t636 * t807;
t402 = qJD(4) * t523 + t473 * t638 + t702;
t260 = t402 * rSges(5,1) + t401 * rSges(5,2) + t472 * rSges(5,3);
t418 = rSges(5,1) * t512 + rSges(5,2) * t511 + rSges(5,3) * t580;
t752 = -t418 + t776;
t751 = -t427 + t776;
t750 = -t448 + t773;
t345 = t473 * rSges(4,1) - t472 * rSges(4,2) + rSges(4,3) * t738;
t488 = -rSges(5,1) * t668 + rSges(5,2) * t572 + rSges(5,3) * t591;
t749 = -t488 + t773;
t693 = t639 * t607 - t772;
t497 = (-t639 * t827 - t766) * qJD(1) + t693;
t748 = t496 * t806 + t497 * t808 + t552 * t738;
t412 = t524 * rSges(5,1) + t523 * rSges(5,2) - t562 * rSges(5,3);
t461 = t563 * rSges(4,1) + t562 * rSges(4,2) + t626;
t483 = t567 * rSges(3,1) + t566 * rSges(3,2) + rSges(3,3) * t738;
t550 = -rSges(3,1) * t658 + t604 * rSges(3,2) + rSges(3,3) * t808;
t746 = m(5) * t819;
t745 = m(6) * t819;
t744 = m(7) * t819;
t737 = t808 / 0.2e1;
t736 = -t806 / 0.2e1;
t670 = -t561 * t638 + t761;
t403 = qJD(4) * t670 - t475 * t635 + t638 * t739;
t521 = -t561 * t635 - t638 * t806;
t404 = qJD(4) * t521 + t475 * t638 + t703;
t255 = Icges(5,5) * t404 + Icges(5,6) * t403 - Icges(5,3) * t474;
t257 = Icges(5,4) * t404 + Icges(5,2) * t403 - Icges(5,6) * t474;
t259 = Icges(5,1) * t404 + Icges(5,4) * t403 - Icges(5,5) * t474;
t405 = -Icges(5,5) * t670 + Icges(5,6) * t521 - Icges(5,3) * t560;
t407 = -Icges(5,4) * t670 + Icges(5,2) * t521 - Icges(5,6) * t560;
t409 = -Icges(5,1) * t670 + Icges(5,4) * t521 - Icges(5,5) * t560;
t114 = t255 * t591 + t257 * t572 - t259 * t668 + t405 * t580 + t407 * t511 + t409 * t512;
t145 = t403 * t486 + t404 * t487 - t415 * t560 + t416 * t521 - t417 * t670 - t474 * t485;
t735 = -t114 / 0.2e1 - t145 / 0.2e1;
t254 = Icges(5,5) * t402 + Icges(5,6) * t401 + Icges(5,3) * t472;
t256 = Icges(5,4) * t402 + Icges(5,2) * t401 + Icges(5,6) * t472;
t258 = Icges(5,1) * t402 + Icges(5,4) * t401 + Icges(5,5) * t472;
t406 = Icges(5,5) * t524 + Icges(5,6) * t523 - Icges(5,3) * t562;
t408 = Icges(5,4) * t524 + Icges(5,2) * t523 - Icges(5,6) * t562;
t410 = Icges(5,1) * t524 + Icges(5,4) * t523 - Icges(5,5) * t562;
t115 = t254 * t591 + t256 * t572 - t258 * t668 + t406 * t580 + t408 * t511 + t410 * t512;
t144 = t401 * t486 + t402 * t487 - t415 * t562 + t416 * t523 + t417 * t524 + t472 * t485;
t734 = -t115 / 0.2e1 - t144 / 0.2e1;
t733 = t164 / 0.2e1 + t190 / 0.2e1;
t732 = t165 / 0.2e1 + t191 / 0.2e1;
t219 = t405 * t591 + t407 * t572 - t409 * t668;
t262 = -t485 * t560 + t486 * t521 - t487 * t670;
t731 = -t219 / 0.2e1 - t262 / 0.2e1;
t220 = t406 * t591 + t408 * t572 - t410 * t668;
t263 = -t485 * t562 + t486 * t523 + t487 * t524;
t730 = t220 / 0.2e1 + t263 / 0.2e1;
t727 = qJD(1) * t633 / 0.2e1;
t360 = t475 * pkin(3) - t471;
t489 = t561 * pkin(3) - t558;
t724 = t819 * t552;
t722 = 2 * m(3);
t720 = 2 * m(4);
t718 = 0.2e1 * m(5);
t716 = 0.2e1 * m(6);
t714 = 0.2e1 * m(7);
t713 = t639 * t775;
t712 = -t598 * t636 + t621;
t709 = t580 * t790 + t591 * t799;
t708 = -t474 * t782 - t560 * t795;
t707 = t472 * t791 - t562 * t798;
t706 = -t380 + t751;
t705 = -t453 + t750;
t704 = t489 * t808 - t725 * t806 + t777;
t700 = t636 * t727;
t699 = t639 * t727;
t698 = t639 * t749;
t688 = -rSges(3,1) * t569 - rSges(3,2) * t568;
t687 = -rSges(4,1) * t475 - rSges(4,2) * t474;
t686 = -rSges(4,1) * t561 - rSges(4,2) * t560;
t681 = -t497 * t819 + t611 * t739;
t680 = t751 - t795;
t679 = t750 - t782;
t677 = -t804 - t805;
t676 = t639 * t705;
t672 = t352 * t808 + t353 * t806 + t704;
t671 = t359 * t806 + t360 * t808 + t489 * t738 + t748;
t669 = t639 * t679;
t667 = t712 + t747;
t261 = rSges(5,1) * t404 + rSges(5,2) * t403 - rSges(5,3) * t474;
t411 = -rSges(5,1) * t670 + rSges(5,2) * t521 - rSges(5,3) * t560;
t666 = -t489 * t819 - t724;
t549 = -rSges(3,1) * t656 - rSges(3,2) * t657 - rSges(3,3) * t806;
t662 = -t561 * t629 + t619 + t677;
t661 = t241 * t806 + t242 * t808 + t352 * t738 + t671;
t18 = t164 * t374 + t165 * t372 + t54 * t513 + t55 * t515 + t820;
t3 = t152 * t374 + t153 * t372 + t191 * t503 + t48 * t513 + t49 * t515 - t660 * t81;
t4 = t150 * t374 + t151 * t372 + t190 * t503 + t50 * t513 + t51 * t515 - t660 * t82;
t68 = t150 * t513 + t151 * t515 - t190 * t660;
t69 = t152 * t513 + t153 * t515 - t191 * t660;
t88 = t164 * t513 + t165 * t515 - t205 * t660;
t90 = -t164 * t560 - t165 * t562 + t205 * t591;
t659 = t11 * t841 + t12 * t842 + t18 * t836 + t22 * t838 + t3 * t839 + t4 * t840 + t68 * t844 + t69 * t845 + t74 * t846 + t75 * t847 + t88 * t837 + t90 * t843;
t654 = -t360 * t819 + t551 * t739 + t681;
t651 = t580 * t90 + (t859 + t865) * t591 + (-t216 * t580 - t869) * t562 + (-t215 * t580 - t868) * t560 - t861 * t474 + t863 * t472;
t649 = -t352 * t819 + t666;
t648 = -t242 * t819 + t448 * t739 + t654;
t646 = qJD(1) * t677 + t665;
t644 = (-t618 - t621) * qJD(1) - t475 * t629 - t693 - t774;
t643 = -t816 / 0.2e1 - t815 / 0.2e1 - t814 / 0.2e1 + t813 / 0.2e1 - t812 / 0.2e1 + t811 / 0.2e1 - t823 / 0.2e1 - t822 / 0.2e1 + t801 + t802 + (t191 + t239) * t845 + (t190 + t238) * t844 + (t143 + t82) * t840 + (t142 + t81) * t839;
t92 = t205 * t819 + (-t164 * t639 + t165 * t636) * t633;
t642 = t860 * t845 + t862 * t844 + t866 * t840 + t867 * t839 + (t280 * t819 + (-t215 * t639 + t216 * t636) * t633 + t92) * t837 + t864 * t836 + t865 * t759 + t869 * t737 + t868 * t736 + t861 * t700 + t863 * t699;
t641 = t646 + t663;
t597 = (rSges(3,1) * t833 - rSges(3,2) * t832) * t769;
t589 = t819 * rSges(3,3) + (rSges(3,1) * t832 + rSges(3,2) * t833) * t633;
t585 = Icges(3,3) * t819 + (Icges(3,5) * t832 + Icges(3,6) * t833) * t633;
t534 = Icges(4,5) * t592 - Icges(4,6) * t591 + Icges(4,3) * t819;
t520 = t550 + t766 + t830;
t519 = -t549 + t849;
t495 = -t549 * t819 - t589 * t806;
t494 = t550 * t819 - t589 * t808;
t484 = rSges(3,3) * t739 - t688;
t482 = Icges(3,1) * t569 + Icges(3,4) * t568 + Icges(3,5) * t739;
t481 = Icges(3,1) * t567 + Icges(3,4) * t566 + Icges(3,5) * t738;
t480 = Icges(3,4) * t569 + Icges(3,2) * t568 + Icges(3,6) * t739;
t479 = Icges(3,4) * t567 + Icges(3,2) * t566 + Icges(3,6) * t738;
t460 = -rSges(4,3) * t806 - t686;
t447 = (-t830 + (-rSges(3,3) - pkin(8)) * t808) * qJD(1) + t688;
t446 = qJD(1) * t849 + t483;
t445 = t585 * t808 + t586 * t604 - t587 * t658;
t444 = -t585 * t806 - t586 * t657 - t587 * t656;
t431 = t712 + t461;
t430 = -t805 + (rSges(4,3) * t633 - t598) * t639 + t686;
t429 = t560 * t453;
t425 = t560 * t448;
t422 = t819 * t483 + (-t589 * t770 - t597 * t636) * t633;
t421 = -t819 * t484 + (t589 * t771 - t597 * t639) * t633;
t414 = t819 * t543 + (t545 * t833 + t547 * t832) * t633;
t413 = t819 * t542 + (t544 * t833 + t546 * t832) * t633;
t358 = t591 * t396;
t346 = rSges(4,3) * t739 - t687;
t344 = Icges(4,1) * t475 + Icges(4,4) * t474 + Icges(4,5) * t739;
t343 = Icges(4,1) * t473 - Icges(4,4) * t472 + Icges(4,5) * t738;
t342 = Icges(4,4) * t475 + Icges(4,2) * t474 + Icges(4,6) * t739;
t341 = Icges(4,4) * t473 - Icges(4,2) * t472 + Icges(4,6) * t738;
t333 = t562 * t395;
t331 = t591 * t353;
t327 = -t460 * t819 + t633 * t713 - t724;
t326 = t461 * t819 + t775 * t808 + t541;
t325 = t562 * t352;
t323 = t534 * t808 + t535 * t562 + t536 * t563;
t322 = -t534 * t806 + t535 * t560 + t536 * t561;
t321 = t568 * t586 + t569 * t587 - t595 * t657 - t596 * t656 + (t585 * t771 - t594 * t639) * t633;
t320 = t566 * t586 + t567 * t587 + t595 * t604 - t596 * t658 + (t585 * t770 + t594 * t636) * t633;
t319 = (-t626 - t621) * qJD(1) + t687 - t693;
t318 = t646 + t345;
t315 = t712 - t725 + t412;
t314 = -t411 - t489 + t677;
t304 = t667 + t396;
t303 = t560 * t821 + t662 + t684;
t300 = t412 * t591 + t488 * t562;
t299 = -t411 * t591 - t488 * t560;
t297 = t453 * t562 + t358;
t296 = -t395 * t591 - t429;
t293 = t455 * t819 - t591 * t457 + t592 * t459;
t292 = t454 * t819 - t591 * t456 + t592 * t458;
t273 = t819 * t477 + (t832 * t481 + t833 * t479 + (-t545 * t832 + t547 * t833) * qJD(2)) * t633;
t272 = t819 * t478 + (t832 * t482 + t833 * t480 + (-t544 * t832 + t546 * t833) * qJD(2)) * t633;
t270 = -t411 * t562 + t412 * t560;
t264 = t396 * t560 - t333;
t253 = t819 * t345 + t493 + (qJD(1) * t713 + t636 * t778) * t633;
t252 = -t819 * t346 + (t538 * t771 + t639 * t778) * t633 + t681;
t234 = -t411 * t819 + t633 * t698 + t666;
t233 = t412 * t819 + t749 * t808 + t780;
t226 = t667 + t790;
t225 = t513 * t834 + t662 + t682 - t809 - t828;
t224 = -t313 * t660 - t392 * t515;
t223 = t312 * t660 + t392 * t513;
t218 = t474 * t535 + t475 * t536 + t529 * t560 + t530 * t561 + (-t528 * t639 + t534 * t771) * t633;
t217 = -t472 * t535 + t473 * t536 + t529 * t562 + t530 * t563 + (t528 * t636 + t534 * t770) * t633;
t214 = (t411 * t636 + t412 * t639) * t633 + t704;
t213 = -t406 * t562 + t408 * t523 + t410 * t524;
t212 = -t405 * t562 + t407 * t523 + t409 * t524;
t211 = -t406 * t560 + t408 * t521 - t410 * t670;
t210 = -t405 * t560 + t407 * t521 - t409 * t670;
t204 = (-qJD(1) * t630 - t607) * t639 - t261 - t360 + t772;
t203 = t359 + t646 + t260;
t202 = t562 * t781 + t331 + t358;
t201 = t591 * t785 - t425 - t429;
t200 = t312 * t515 - t313 * t513;
t195 = t562 * t782 + t793;
t194 = -t591 * t791 - t787;
t193 = t474 * t821 + t644 + t685;
t192 = t641 + t249;
t189 = -t395 * t819 + t633 * t676 + t649;
t188 = t396 * t819 + t705 * t808 + t755;
t185 = t339 * t819 - t591 * t341 + t592 * t343 - t580 * t457 - t581 * t459;
t184 = t340 * t819 - t591 * t342 + t592 * t344 - t580 * t456 - t581 * t458;
t183 = (t345 * t639 + t346 * t636 + (t460 * t639 + (-t461 - t553) * t636) * qJD(1)) * t633 + t748;
t182 = t560 * t784 - t325 - t333;
t180 = t181 * t819;
t169 = t560 * t790 - t794;
t167 = -t261 * t591 - t411 * t580 - t418 * t560 - t474 * t488;
t166 = t260 * t591 + t412 * t580 + t418 * t562 - t472 * t488;
t163 = (t395 * t636 + t396 * t639) * t633 + t672;
t162 = -t250 * t591 - t395 * t580 + t788;
t161 = t380 * t562 - t453 * t472 + t796;
t157 = t819 * t260 + (qJD(1) * t698 + t636 * t752) * t633 + t783;
t156 = -t819 * t261 + (t488 * t771 + t639 * t752) * t633 + t654;
t149 = t562 * t753 + t331 + t793;
t148 = t591 * t757 - t425 - t787;
t147 = t633 * t669 - t791 * t819 + t649;
t146 = t679 * t808 + t790 * t819 + t755;
t141 = t260 * t560 - t261 * t562 + t411 * t472 + t412 * t474;
t140 = t560 * t756 - t325 - t794;
t137 = t249 * t560 + t396 * t474 + t789;
t136 = (t636 * t791 + t639 * t790) * t633 + t672;
t134 = t374 * t834 + t644 + t683 - t810 - t829;
t133 = t641 + t799;
t131 = t263 * t819 + (-t212 * t639 + t213 * t636) * t633;
t130 = t262 * t819 + (-t210 * t639 + t211 * t636) * t633;
t129 = -t212 * t560 - t213 * t562 + t263 * t591;
t128 = -t210 * t560 - t211 * t562 + t262 * t591;
t125 = t819 * t249 + (qJD(1) * t676 + t636 * t706) * t633 + t758;
t124 = -t819 * t250 + (t453 * t771 + t639 * t706) * t633 + t648;
t113 = (t260 * t639 + t261 * t636 + (t411 * t639 + (-t412 + t779) * t636) * qJD(1)) * t633 + t671;
t110 = (-t242 - t250) * t591 + t785 * t580 + t786 + t788;
t109 = (t380 + t427) * t562 - t781 * t472 + t796 + t797;
t106 = t179 * t660 + t268 * t513 - t312 * t503 + t374 * t392;
t105 = -t178 * t660 - t268 * t515 + t313 * t503 - t372 * t392;
t101 = -t254 * t560 + t256 * t521 - t258 * t670 + t403 * t408 + t404 * t410 - t406 * t474;
t100 = -t255 * t560 + t257 * t521 - t259 * t670 + t403 * t407 + t404 * t409 - t405 * t474;
t99 = -t254 * t562 + t256 * t523 + t258 * t524 + t401 * t408 + t402 * t410 + t406 * t472;
t98 = -t255 * t562 + t257 * t523 + t259 * t524 + t401 * t407 + t402 * t409 + t405 * t472;
t86 = -t580 * t791 - t591 * t798 + t708;
t85 = -t472 * t782 + t562 * t795 + t709;
t83 = -t178 * t513 + t179 * t515 + t312 * t372 - t313 * t374;
t78 = (t241 + t249) * t560 + t784 * t474 + t789 + t792;
t65 = (qJD(1) * t669 + t636 * t680) * t633 + t758 + t799 * t819;
t64 = (t639 * t680 + t771 * t782) * t633 + t648 - t798 * t819;
t59 = (t249 * t639 + t250 * t636 + (t395 * t639 + (-t396 + t754) * t636) * qJD(1)) * t633 + t661;
t58 = (-t242 - t798) * t591 + t757 * t580 + t708 + t786;
t57 = (t427 + t795) * t562 - t753 * t472 + t709 + t797;
t56 = t474 * t790 + t560 * t799 + t707;
t47 = (t241 + t799) * t560 + t756 * t474 + t707 + t792;
t46 = (t799 * t639 + t798 * t636 + (t791 * t639 + (t754 - t790) * t636) * qJD(1)) * t633 + t661;
t45 = t180 + (-t114 * t639 + t115 * t636 + (t219 * t636 + t220 * t639) * qJD(1)) * t633;
t42 = -t114 * t560 - t115 * t562 - t219 * t474 + t220 * t472 + t800;
t38 = t145 * t819 + (-t100 * t639 + t101 * t636 + (t210 * t636 + t211 * t639) * qJD(1)) * t633;
t37 = t144 * t819 + (t636 * t99 - t639 * t98 + (t212 * t636 + t213 * t639) * qJD(1)) * t633;
t32 = -t100 * t560 - t101 * t562 + t145 * t591 - t210 * t474 + t211 * t472 + t262 * t580;
t31 = t144 * t591 - t212 * t474 + t213 * t472 + t263 * t580 - t560 * t98 - t562 * t99;
t1 = [t104 + (t318 * t431 + t319 * t430) * t720 + (t446 * t520 + t447 * t519) * t722 + (t133 * t226 + t134 * t225) * t714 + (t192 * t304 + t193 * t303) * t716 + (t203 * t315 + t204 * t314) * t718 + t181 + t160 + t870; t180 + t159 + t103 + m(3) * (t421 * t519 + t422 * t520 + t446 * t494 + t447 * t495) + (t252 * t430 + t253 * t431 + t318 * t326 + t319 * t327) * m(4) + (t156 * t314 + t157 * t315 + t203 * t233 + t204 * t234) * m(5) + (t124 * t303 + t125 * t304 + t188 * t192 + t189 * t193) * m(6) + (t133 * t146 + t134 * t147 + t225 * t64 + t226 * t65) * m(7) + ((-t272 / 0.2e1 - t184 / 0.2e1 - t143 / 0.2e1 - t321 / 0.2e1 - t218 / 0.2e1 - t111 / 0.2e1 + t735 - t764) * t639 + (t273 / 0.2e1 + t185 / 0.2e1 + t142 / 0.2e1 + t320 / 0.2e1 + t217 / 0.2e1 + t112 / 0.2e1 - t734 + t763) * t636 + ((t414 / 0.2e1 + t293 / 0.2e1 + t323 / 0.2e1 + t239 / 0.2e1 + t445 / 0.2e1 + t216 / 0.2e1 + t730 + t732) * t639 + (t413 / 0.2e1 + t292 / 0.2e1 + t322 / 0.2e1 + t238 / 0.2e1 + t444 / 0.2e1 + t215 / 0.2e1 - t731 + t733) * t636) * qJD(1)) * t633 + t852; (t495 * t421 + t494 * t422 + (t549 * t636 + t550 * t639) * (t483 * t639 + t484 * t636 + (t549 * t639 - t550 * t636) * qJD(1)) * t633 ^ 2) * t722 + (t113 * t214 + t156 * t234 + t157 * t233) * t718 + (t327 * t252 + t326 * t253 + ((t460 * t636 + t461 * t639) * t633 + t777) * t183) * t720 + (t136 * t46 + t146 * t65 + t147 * t64) * t714 + (t124 * t189 + t125 * t188 + t163 * t59) * t716 + (t45 + ((-t184 - t272) * t639 + (t185 + t273) * t636 + ((t293 + t414) * t639 + (t292 + t413) * t636) * qJD(1)) * t633 + t852 + t864) * t819 + (t37 + (t217 + t320) * t819 + (t854 * t771 + t853 * t770 + (-t562 * t342 - t563 * t344 + t472 * t456 - t473 * t458 - t604 * t480 + t482 * t658 - t566 * t544 - t567 * t546 - t738 * t850) * t639 + (t562 * t341 + t563 * t343 - t472 * t457 + t473 * t459 + t604 * t479 - t658 * t481 + t566 * t545 + t567 * t547 + (t636 * t858 + t770 * t857 + t848) * t633) * t636) * t633 + t867) * t808 + (-t38 + (-t321 - t218) * t819 + (t855 * t771 + t851 * t770 + (t560 * t342 + t561 * t344 + t474 * t456 + t475 * t458 - t657 * t480 - t656 * t482 + t568 * t544 + t569 * t546 + (t771 * t850 + t848) * t633) * t639 + (t657 * t479 + t656 * t481 - t568 * t545 - t569 * t547 - t560 * t341 - t561 * t343 - t474 * t457 - t475 * t459 + (t639 * t858 - t771 * t857) * t633) * t636) * t633 - t866) * t806 + (t130 + (t444 + t322) * t819 + (-t636 * t851 + t639 * t855) * t633 + t862) * t739 + (t131 + (t445 + t323) * t819 + (t636 * t853 - t639 * t854) * t633 + t860) * t738; ((-t133 * t639 + t134 * t636 + t225 * t770 + t226 * t771) * m(7) + (-t192 * t639 + t193 * t636 + t303 * t770 + t304 * t771) * m(6) + (-t203 * t639 + t204 * t636 + t314 * t770 + t315 * t771) * m(5) + (-t318 * t639 + t319 * t636 + t430 * t770 + t431 * t771) * m(4)) * t633; m(4) * t819 * t183 + t113 * t746 + t59 * t745 + t46 * t744 + ((t146 * t771 + t147 * t770 + t636 * t64 - t639 * t65) * m(7) + (t124 * t636 - t125 * t639 + t188 * t771 + t189 * t770) * m(6) + (t156 * t636 - t157 * t639 + t233 * t771 + t234 * t770) * m(5) + (t252 * t636 - t253 * t639 + t326 * t771 + t327 * t770) * m(4)) * t633; 0; (t109 * t304 + t110 * t303 + t192 * t202 + t193 * t201) * m(6) + (t133 * t149 + t134 * t148 + t225 * t58 + t226 * t57) * m(7) + (t166 * t315 + t167 * t314 + t203 * t300 + t204 * t299) * m(5) + t730 * t472 + t643 + t734 * t562 + t735 * t560 + t731 * t474 + t800; t42 * t759 + t642 + (t109 * t188 + t110 * t189 + t124 * t201 + t125 * t202 + t163 * t78 + t182 * t59) * m(6) + (t113 * t270 + t141 * t214 + t156 * t299 + t157 * t300 + t166 * t233 + t167 * t234) * m(5) + (t136 * t47 + t140 * t46 + t146 * t57 + t147 * t58 + t148 * t64 + t149 * t65) * m(7) + (t290 * t819 + (-t219 * t639 + t220 * t636) * t633) * t837 + t32 * t736 + t129 * t699 + t128 * t700 + t31 * t737 + t45 * t836 + t37 * t839 + t38 * t840 + t130 * t844 + t131 * t845; t141 * t746 + t78 * t745 + t47 * t744 + ((-t166 * t639 + t167 * t636 + t299 * t770 + t300 * t771) * m(5) + (-t109 * t639 + t110 * t636 + t201 * t770 + t202 * t771) * m(6) + (t148 * t770 + t149 * t771 - t57 * t639 + t58 * t636) * m(7)) * t633; (t109 * t202 + t110 * t201 + t182 * t78) * t716 + (t140 * t47 + t148 * t58 + t149 * t57) * t714 + (t141 * t270 + t166 * t300 + t167 * t299) * t718 + t580 * (-t219 * t560 - t220 * t562 + t290 * t591) + t591 * t42 - t562 * t31 - t560 * t32 - t474 * t128 + t472 * t129 + t651; (t133 * t195 + t134 * t194 + t225 * t86 + t226 * t85) * m(7) + (t161 * t304 + t162 * t303 + t192 * t297 + t193 * t296) * m(6) + t643; t642 + (t124 * t296 + t125 * t297 + t137 * t163 + t161 * t188 + t162 * t189 + t264 * t59) * m(6) + (t136 * t56 + t146 * t85 + t147 * t86 + t169 * t46 + t194 * t64 + t195 * t65) * m(7); t137 * t745 + t56 * t744 + ((-t161 * t639 + t162 * t636 + t296 * t770 + t297 * t771) * m(6) + (t194 * t770 + t195 * t771 + t636 * t86 - t639 * t85) * m(7)) * t633; (t109 * t297 + t110 * t296 + t137 * t182 + t161 * t202 + t162 * t201 + t264 * t78) * m(6) + (t140 * t56 + t148 * t86 + t149 * t85 + t169 * t47 + t194 * t58 + t195 * t57) * m(7) + t651; (t169 * t56 + t194 * t86 + t195 * t85) * t714 + (t137 * t264 + t161 * t297 + t162 * t296) * t716 + t651; (t105 * t226 + t106 * t225 + t133 * t224 + t134 * t223) * m(7) + t763 * t515 + t764 * t513 + t733 * t374 + t732 * t372 + t820; t18 * t759 + t77 * t847 + t15 * t841 + t92 * t843 + t24 * t838 + (t105 * t146 + t106 * t147 + t136 * t83 + t200 * t46 + t223 * t64 + t224 * t65) * m(7) + t76 * t846 + t16 * t842 + (t3 * t835 - t639 * t4 / 0.2e1 + (t639 * t69 / 0.2e1 + t68 * t835) * qJD(1)) * t633; m(7) * (t83 * t819 + (-t105 * t639 + t106 * t636 + (t223 * t639 + t224 * t636) * qJD(1)) * t633); (t105 * t149 + t106 * t148 + t140 * t83 + t200 * t47 + t223 * t58 + t224 * t57) * m(7) + t659; (t105 * t195 + t106 * t194 + t169 * t83 + t200 * t56 + t223 * t86 + t224 * t85) * m(7) + t659; t372 * t69 + t515 * t3 + t374 * t68 + t513 * t4 + t503 * t88 - t660 * t18 + (t105 * t224 + t106 * t223 + t200 * t83) * t714;];
%% Postprocessing: Reshape Output
% From vec2symmat_6_matlab.m
res = [t1(1) t1(2) t1(4) t1(7) t1(11) t1(16); t1(2) t1(3) t1(5) t1(8) t1(12) t1(17); t1(4) t1(5) t1(6) t1(9) t1(13) t1(18); t1(7) t1(8) t1(9) t1(10) t1(14) t1(19); t1(11) t1(12) t1(13) t1(14) t1(15) t1(20); t1(16) t1(17) t1(18) t1(19) t1(20) t1(21);];
Mq  = res;
