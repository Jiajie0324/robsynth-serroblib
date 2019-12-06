% Calculate matrix of centrifugal and coriolis load on the joints for
% S5PRRPR4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d3,d5,theta1,theta4]';
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
% Cq [5x5]
%   matrix of coriolis and centrifugal joint torques.
%   Gives coriolis joint torques when multiplied with joint velocities

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 16:24
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S5PRRPR4_coriolismatJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRPR4_coriolismatJ_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRPR4_coriolismatJ_fixb_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PRRPR4_coriolismatJ_fixb_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5PRRPR4_coriolismatJ_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5PRRPR4_coriolismatJ_fixb_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5PRRPR4_coriolismatJ_fixb_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 16:21:32
% EndTime: 2019-12-05 16:22:24
% DurationCPUTime: 29.22s
% Computational Cost: add. (68062->922), mult. (78796->1304), div. (0->0), fcn. (84501->10), ass. (0->532)
t506 = qJ(3) + pkin(9);
t499 = sin(t506);
t500 = cos(t506);
t509 = cos(pkin(8));
t508 = sin(pkin(8));
t514 = cos(qJ(2));
t686 = t508 * t514;
t437 = -t499 * t686 - t509 * t500;
t438 = -t509 * t499 + t500 * t686;
t512 = sin(qJ(2));
t687 = t508 * t512;
t294 = Icges(5,5) * t438 + Icges(5,6) * t437 + Icges(5,3) * t687;
t513 = cos(qJ(3));
t669 = t513 * t514;
t511 = sin(qJ(3));
t685 = t509 * t511;
t464 = t508 * t669 - t685;
t682 = t511 * t514;
t548 = t508 * t682 + t509 * t513;
t330 = Icges(4,5) * t464 - Icges(4,6) * t548 + Icges(4,3) * t687;
t824 = t294 + t330;
t683 = t509 * t514;
t439 = -t499 * t683 + t508 * t500;
t440 = t508 * t499 + t500 * t683;
t684 = t509 * t512;
t295 = Icges(5,5) * t440 + Icges(5,6) * t439 + Icges(5,3) * t684;
t688 = t508 * t511;
t466 = t509 * t669 + t688;
t549 = -t508 * t513 + t509 * t682;
t331 = Icges(4,5) * t466 - Icges(4,6) * t549 + Icges(4,3) * t684;
t823 = t295 + t331;
t568 = Icges(5,5) * t500 - Icges(5,6) * t499;
t410 = -Icges(5,3) * t514 + t512 * t568;
t569 = Icges(4,5) * t513 - Icges(4,6) * t511;
t441 = -Icges(4,3) * t514 + t512 * t569;
t822 = t410 + t441;
t507 = t512 ^ 2;
t779 = t514 ^ 2;
t670 = t512 * t514;
t322 = Icges(5,5) * t437 - Icges(5,6) * t438;
t349 = -Icges(4,5) * t548 - Icges(4,6) * t464;
t821 = t322 + t349;
t323 = Icges(5,5) * t439 - Icges(5,6) * t440;
t350 = -Icges(4,5) * t549 - Icges(4,6) * t466;
t820 = t323 + t350;
t722 = Icges(5,4) * t500;
t572 = -Icges(5,2) * t499 + t722;
t412 = -Icges(5,6) * t514 + t512 * t572;
t723 = Icges(5,4) * t499;
t577 = Icges(5,1) * t500 - t723;
t414 = -Icges(5,5) * t514 + t512 * t577;
t726 = Icges(4,4) * t513;
t573 = -Icges(4,2) * t511 + t726;
t443 = -Icges(4,6) * t514 + t512 * t573;
t727 = Icges(4,4) * t511;
t578 = Icges(4,1) * t513 - t727;
t445 = -Icges(4,5) * t514 + t512 * t578;
t817 = -t412 * t499 + t414 * t500 - t443 * t511 + t445 * t513;
t816 = t822 * t512;
t815 = t823 * t512;
t814 = t824 * t512;
t502 = t513 * pkin(3);
t480 = pkin(4) * t500 + t502;
t627 = t480 - t502;
t346 = -pkin(7) * t514 + t512 * t627;
t304 = t346 * t508;
t582 = rSges(5,1) * t500 - rSges(5,2) * t499;
t417 = -rSges(5,3) * t514 + t512 * t582;
t380 = t417 * t508;
t459 = Icges(4,4) * t548;
t334 = Icges(4,1) * t464 + Icges(4,5) * t687 - t459;
t644 = -Icges(4,2) * t464 + t334 - t459;
t729 = Icges(4,4) * t464;
t332 = -Icges(4,2) * t548 + Icges(4,6) * t687 + t729;
t646 = -Icges(4,1) * t548 - t332 - t729;
t423 = Icges(5,4) * t437;
t298 = Icges(5,1) * t438 + Icges(5,5) * t687 + t423;
t653 = -Icges(5,2) * t438 + t298 + t423;
t725 = Icges(5,4) * t438;
t296 = Icges(5,2) * t437 + Icges(5,6) * t687 + t725;
t655 = Icges(5,1) * t437 - t296 - t725;
t813 = t653 * t437 + t655 * t438 + t646 * t464 - t548 * t644 + t821 * t687;
t460 = Icges(4,4) * t549;
t335 = Icges(4,1) * t466 + Icges(4,5) * t684 - t460;
t643 = -Icges(4,2) * t466 + t335 - t460;
t728 = Icges(4,4) * t466;
t333 = -Icges(4,2) * t549 + Icges(4,6) * t684 + t728;
t645 = -Icges(4,1) * t549 - t333 - t728;
t424 = Icges(5,4) * t439;
t299 = Icges(5,1) * t440 + Icges(5,5) * t684 + t424;
t652 = -Icges(5,2) * t440 + t299 + t424;
t724 = Icges(5,4) * t440;
t297 = Icges(5,2) * t439 + Icges(5,6) * t684 + t724;
t654 = Icges(5,1) * t439 - t297 - t724;
t812 = t652 * t437 + t654 * t438 + t645 * t464 - t548 * t643 + t820 * t687;
t811 = t653 * t439 + t655 * t440 + t646 * t466 - t549 * t644 + t821 * t684;
t810 = t652 * t439 + t654 * t440 + t645 * t466 - t549 * t643 + t820 * t684;
t447 = (-Icges(5,5) * t499 - Icges(5,6) * t500) * t512;
t473 = (-Icges(4,5) * t511 - Icges(4,6) * t513) * t512;
t809 = (-t447 - t473) * t514;
t794 = t822 * t514;
t808 = 0.2e1 * (Icges(3,1) - Icges(3,2)) * t670 + (0.2e1 * t779 - 0.2e1 * t507) * Icges(3,4);
t774 = m(5) / 0.2e1;
t772 = m(6) / 0.2e1;
t755 = t508 / 0.2e1;
t754 = -t509 / 0.2e1;
t752 = t512 / 0.2e1;
t751 = -t514 / 0.2e1;
t570 = -Icges(3,5) * t512 - Icges(3,6) * t514;
t467 = t570 * t508;
t468 = t570 * t509;
t376 = t412 * t508;
t378 = t414 * t508;
t390 = t443 * t508;
t392 = t445 * t508;
t559 = -t332 * t511 + t334 * t513;
t543 = -t441 * t508 - t559;
t561 = -t296 * t499 + t298 * t500;
t545 = -t410 * t508 - t561;
t807 = (-t545 - t543) * t514 + (t376 * t499 - t378 * t500 + t390 * t511 - t392 * t513 + t824) * t512;
t377 = t412 * t509;
t379 = t414 * t509;
t391 = t443 * t509;
t393 = t445 * t509;
t558 = -t333 * t511 + t335 * t513;
t542 = -t441 * t509 - t558;
t560 = -t297 * t499 + t299 * t500;
t544 = -t410 * t509 - t560;
t806 = (-t542 - t544) * t514 + (t377 * t499 - t379 * t500 + t391 * t511 - t393 * t513 + t823) * t512;
t805 = t296 * t437 + t298 * t438 - t332 * t548 + t334 * t464 + t814 * t508;
t804 = t297 * t437 + t299 * t438 - t333 * t548 + t335 * t464 + t815 * t508;
t803 = t296 * t439 + t298 * t440 - t332 * t549 + t334 * t466 + t814 * t509;
t802 = t297 * t439 + t299 * t440 - t333 * t549 + t335 * t466 + t815 * t509;
t801 = t412 * t437 + t414 * t438 - t443 * t548 + t445 * t464 + t816 * t508;
t800 = t412 * t439 + t414 * t440 - t443 * t549 + t445 * t466 + t816 * t509;
t799 = t817 * t512 - t794;
t504 = t508 ^ 2;
t505 = t509 ^ 2;
t624 = t504 + t505;
t798 = ((-t569 - t568) * t514 + (-Icges(4,3) - Icges(5,3)) * t512 + t817) * t514;
t703 = t294 * t514;
t204 = t512 * t561 - t703;
t702 = t295 * t514;
t205 = t512 * t560 - t702;
t700 = t330 * t514;
t223 = t512 * t559 - t700;
t699 = t331 * t514;
t224 = t512 * t558 - t699;
t797 = (t205 + t224) * t509 + (t204 + t223) * t508;
t745 = pkin(3) * t511;
t479 = pkin(4) * t499 + t745;
t592 = -t479 + t745;
t347 = pkin(7) * t512 + t514 * t627;
t696 = t347 * t508;
t267 = t509 * t592 + t696;
t501 = qJ(5) + t506;
t494 = sin(t501);
t495 = cos(t501);
t419 = -t494 * t686 - t509 * t495;
t420 = -t509 * t494 + t495 * t686;
t288 = rSges(6,1) * t420 + rSges(6,2) * t419 + rSges(6,3) * t687;
t678 = t512 * t288;
t273 = t509 * t678;
t409 = qJ(4) * t512 + t502 * t514;
t615 = pkin(3) * t685;
t336 = t409 * t508 - t615;
t314 = t336 * t684;
t616 = pkin(3) * t688;
t337 = t409 * t509 + t616;
t268 = t347 * t509 - t508 * t592;
t421 = -t494 * t683 + t508 * t495;
t422 = t508 * t494 + t495 * t683;
t289 = rSges(6,1) * t422 + rSges(6,2) * t421 + rSges(6,3) * t684;
t661 = t268 + t289;
t608 = -t337 - t661;
t124 = t273 + t314 + (t267 * t509 + t508 * t608) * t512;
t300 = rSges(5,1) * t438 + rSges(5,2) * t437 + rSges(5,3) * t687;
t301 = rSges(5,1) * t440 + rSges(5,2) * t439 + rSges(5,3) * t684;
t651 = -t301 - t337;
t190 = t314 + (t300 * t509 + t651 * t508) * t512;
t477 = t624 * t512;
t319 = t514 * t336;
t538 = qJ(4) * t514 - t502 * t512;
t648 = -t538 * t687 + t319;
t701 = t300 * t514;
t220 = t417 * t687 + t648 + t701;
t591 = t651 * t514;
t639 = t538 - t417;
t221 = t639 * t684 + t591;
t666 = t220 * t683 + t221 * t686;
t280 = t514 * t288;
t581 = rSges(6,1) * t495 - rSges(6,2) * t494;
t403 = -rSges(6,3) * t514 + t512 * t581;
t254 = t403 * t687 + t280;
t707 = t267 * t514;
t163 = t346 * t687 + t254 + t648 + t707;
t585 = t608 * t514;
t604 = -t346 - t403 + t538;
t164 = t604 * t684 + t585;
t667 = t163 * t683 + t164 * t686;
t741 = (t124 * t477 + t667) * t772 + (t190 * t477 + t666) * t774;
t370 = t403 * t508;
t404 = t512 * rSges(6,3) + t514 * t581;
t602 = -t514 * t370 + t403 * t686 + t404 * t687;
t355 = t538 * t508;
t605 = t514 * t355 + t409 * t687 - t538 * t686;
t662 = t267 + t288;
t106 = (-t336 - t662 + t696) * t512 + t602 + t605;
t279 = t512 * t289;
t318 = t512 * t337;
t603 = -t347 - t404 - t409;
t356 = t538 * t509;
t371 = t403 * t509;
t650 = -t346 * t509 - t371;
t606 = -t356 - t650;
t107 = t512 * t268 + t279 + t318 + t606 * t514 + (t512 * t603 + t514 * t604) * t509;
t381 = t417 * t509;
t642 = -t356 + t381;
t649 = t509 * t319 + t355 * t684;
t126 = (-t380 * t512 + t701) * t509 + (t642 * t512 + t591) * t508 + t649;
t418 = t512 * rSges(5,3) + t514 * t582;
t156 = (t418 * t508 - t300 - t336) * t512 + t605;
t638 = -t409 - t418;
t157 = t512 * t301 + t318 + t642 * t514 + (t512 * t638 + t514 * t639) * t509;
t660 = t509 * t280 - t370 * t684;
t86 = (-t304 * t512 + t707) * t509 + (t512 * t606 + t585) * t508 + t649 + t660;
t742 = (-t514 * t86 + (t106 * t509 + t107 * t508 + t124) * t512 + t667) * t772 + (-t126 * t514 + (t156 * t509 + t157 * t508 + t190) * t512 + t666) * t774;
t793 = t741 - t742;
t488 = pkin(2) * t514 + t512 * pkin(6);
t628 = t624 * t488;
t589 = t508 * t336 + t509 * t337 + t628;
t119 = t662 * t508 + t661 * t509 + t589;
t312 = rSges(6,1) * t419 - rSges(6,2) * t420;
t313 = rSges(6,1) * t421 - rSges(6,2) * t422;
t244 = t508 * t312 + t509 * t313;
t461 = t548 * pkin(3);
t302 = -t479 * t686 - t509 * t480 + t461;
t462 = t549 * pkin(3);
t303 = -t479 * t683 + t508 * t480 + t462;
t634 = -t508 * t461 - t509 * t462;
t177 = t302 * t508 + t303 * t509 + t244 + t634;
t180 = t300 * t508 + t301 * t509 + t589;
t328 = rSges(5,1) * t437 - rSges(5,2) * t438;
t329 = rSges(5,1) * t439 - rSges(5,2) * t440;
t226 = t328 * t508 + t329 * t509 + t634;
t338 = rSges(4,1) * t464 - rSges(4,2) * t548 + rSges(4,3) * t687;
t339 = rSges(4,1) * t466 - rSges(4,2) * t549 + rSges(4,3) * t684;
t229 = t338 * t508 + t339 * t509 + t628;
t487 = t512 * pkin(2) - pkin(6) * t514;
t587 = -t487 + t604;
t238 = t587 * t508;
t240 = t587 * t509;
t361 = -rSges(4,1) * t548 - rSges(4,2) * t464;
t362 = -rSges(4,1) * t549 - rSges(4,2) * t466;
t261 = t361 * t508 + t362 * t509;
t601 = -t487 + t639;
t269 = t601 * t508;
t271 = t601 * t509;
t481 = t512 * t616;
t425 = t592 * t512;
t429 = (-rSges(6,1) * t494 - rSges(6,2) * t495) * t512;
t635 = -t425 - t429;
t275 = t508 * t635 + t481;
t483 = t512 * t615;
t590 = t635 * t509;
t276 = t483 + t590;
t583 = rSges(4,1) * t513 - rSges(4,2) * t511;
t451 = -rSges(4,3) * t514 + t512 * t583;
t631 = -t451 - t487;
t357 = t631 * t508;
t359 = t631 * t509;
t450 = (-rSges(5,1) * t499 - rSges(5,2) * t500) * t512;
t372 = -t450 * t508 + t481;
t373 = -t450 * t509 + t483;
t476 = (-rSges(4,1) * t511 - rSges(4,2) * t513) * t512;
t792 = -m(4) * (t229 * t261 + (-t357 * t508 - t359 * t509) * t476) - m(6) * (t119 * t177 + t238 * t275 + t240 * t276) - m(5) * (t180 * t226 + t269 * t372 + t271 * t373);
t791 = -t508 / 0.2e1;
t753 = t509 / 0.2e1;
t790 = -t512 / 0.2e1;
t632 = t445 + (-Icges(4,2) * t513 - t727) * t512;
t636 = t414 + (-Icges(5,2) * t500 - t723) * t512;
t783 = t443 - (-Icges(4,1) * t511 - t726) * t512;
t784 = t412 - (-Icges(5,1) * t499 - t722) * t512;
t788 = (-t439 * t636 + t440 * t784 + t466 * t783 + t549 * t632) * t514 + ((t809 + t810) * t509 + t811 * t508) * t512;
t787 = (-t437 * t636 + t438 * t784 + t464 * t783 + t548 * t632) * t514 + (t812 * t509 + (t809 + t813) * t508) * t512;
t290 = t312 * t684;
t242 = -t313 * t687 + t290;
t259 = t514 * t312 + t429 * t687;
t260 = -t313 * t514 - t429 * t684;
t306 = Icges(6,5) * t419 - Icges(6,6) * t420;
t405 = Icges(6,4) * t419;
t286 = Icges(6,1) * t420 + Icges(6,5) * t687 + t405;
t657 = -Icges(6,2) * t420 + t286 + t405;
t721 = Icges(6,4) * t420;
t284 = Icges(6,2) * t419 + Icges(6,6) * t687 + t721;
t659 = Icges(6,1) * t419 - t284 - t721;
t152 = -t306 * t514 + (-t657 * t494 + t659 * t495) * t512;
t307 = Icges(6,5) * t421 - Icges(6,6) * t422;
t406 = Icges(6,4) * t421;
t287 = Icges(6,1) * t422 + Icges(6,5) * t684 + t406;
t656 = -Icges(6,2) * t422 + t287 + t406;
t720 = Icges(6,4) * t422;
t285 = Icges(6,2) * t421 + Icges(6,6) * t684 + t720;
t658 = Icges(6,1) * t421 - t285 - t720;
t153 = -t307 * t514 + (-t656 * t494 + t658 * t495) * t512;
t426 = (-Icges(6,5) * t494 - Icges(6,6) * t495) * t512;
t129 = t306 * t687 + t657 * t419 + t659 * t420;
t130 = t307 * t687 + t656 * t419 + t658 * t420;
t719 = Icges(6,4) * t494;
t576 = Icges(6,1) * t495 - t719;
t401 = -Icges(6,5) * t514 + t512 * t576;
t640 = t401 + (-Icges(6,2) * t495 - t719) * t512;
t718 = Icges(6,4) * t495;
t571 = -Icges(6,2) * t494 + t718;
t399 = -Icges(6,6) * t514 + t512 * t571;
t641 = -t399 + (-Icges(6,1) * t494 - t718) * t512;
t693 = t426 * t514;
t57 = -(t640 * t419 + t641 * t420) * t514 + (t130 * t509 + (t129 - t693) * t508) * t512;
t131 = t306 * t684 + t657 * t421 + t659 * t422;
t132 = t307 * t684 + t656 * t421 + t658 * t422;
t58 = -(t640 * t421 + t641 * t422) * t514 + (t131 * t508 + (t132 - t693) * t509) * t512;
t597 = t684 / 0.2e1;
t599 = t687 / 0.2e1;
t618 = t57 * t599 + t58 * t597 + (t779 * t426 + (t153 * t509 + t152 * t508 - (-t494 * t640 + t495 * t641) * t514) * t512) * t751;
t10 = t618 + m(6) * (t124 * t242 + t163 * t259 + t164 * t260);
t786 = t10 * qJD(5);
t771 = m(6) / 0.4e1;
t773 = m(5) / 0.4e1;
t620 = t773 + t771;
t626 = t624 * t670;
t785 = t620 * (t626 - t670);
t282 = Icges(6,5) * t420 + Icges(6,6) * t419 + Icges(6,3) * t687;
t365 = t399 * t508;
t367 = t401 * t508;
t567 = Icges(6,5) * t495 - Icges(6,6) * t494;
t397 = -Icges(6,3) * t514 + t512 * t567;
t563 = -t284 * t494 + t286 * t495;
t547 = -t397 * t508 - t563;
t149 = -t547 * t514 + (t365 * t494 - t367 * t495 + t282) * t512;
t283 = Icges(6,5) * t422 + Icges(6,6) * t421 + Icges(6,3) * t684;
t366 = t399 * t509;
t368 = t401 * t509;
t562 = -t285 * t494 + t287 * t495;
t546 = -t397 * t509 - t562;
t150 = -t546 * t514 + (t366 * t494 - t368 * t495 + t283) * t512;
t557 = -t399 * t494 + t401 * t495;
t695 = t397 * t514;
t247 = t512 * t557 - t695;
t400 = Icges(6,6) * t512 + t514 * t571;
t402 = Icges(6,5) * t512 + t514 * t576;
t541 = (Icges(6,3) * t512 + t514 * t567 - t557) * t514;
t706 = t282 * t514;
t197 = t512 * t563 - t706;
t705 = t283 * t514;
t198 = t512 * t562 - t705;
t566 = t197 * t508 + t198 * t509;
t782 = (-t247 * t514 + t512 * t566) * t752 + ((t541 + t566) * t514 + (t150 * t509 + t149 * t508 - (-t400 * t494 + t402 * t495 + t397) * t514 + t247) * t512) * t751;
t74 = -t129 * t509 + t130 * t508;
t75 = -t131 * t509 + t132 * t508;
t740 = t74 * t754 + t75 * t755;
t668 = (-t177 * t514 + (t275 * t508 + t276 * t509) * t512) * t772 + (-t226 * t514 + (t372 * t508 + t373 * t509) * t512) * t774;
t778 = 2 * qJD(2);
t777 = 2 * qJD(3);
t776 = 4 * qJD(3);
t775 = m(4) / 0.2e1;
t394 = t451 * t508;
t395 = t451 * t509;
t697 = t339 * t514;
t698 = t338 * t514;
t216 = (-t394 * t512 + t698) * t509 + (t395 * t512 - t697) * t508;
t452 = t512 * rSges(4,3) + t514 * t583;
t554 = t451 * t514 + t452 * t512;
t230 = -t512 * t338 - t394 * t514 + t508 * t554;
t231 = t512 * t339 + t395 * t514 - t509 * t554;
t249 = (t338 * t509 - t339 * t508) * t512;
t265 = t451 * t687 + t698;
t266 = -t451 * t684 - t697;
t770 = m(4) * (t216 * t249 + t230 * t265 + t231 * t266);
t768 = m(5) * (t126 * t190 + t156 * t220 + t157 * t221);
t704 = t289 * t514;
t192 = (t371 * t512 - t704) * t508 + t660;
t218 = t602 - t678;
t219 = t371 * t514 + t279 + (-t403 * t514 - t404 * t512) * t509;
t232 = -t508 * t279 + t273;
t255 = -t403 * t684 - t704;
t765 = m(6) * (t106 * t254 + t107 * t255 + t124 * t192 + t163 * t218 + t164 * t219 + t232 * t86);
t763 = m(6) * (t106 * t163 + t107 * t164 + t124 * t86);
t609 = t242 * t119 + t260 * t238 + t259 * t240;
t762 = m(6) * (t124 * t244 + (-t163 * t509 - t164 * t508) * t429 + t609);
t761 = m(6) * (t177 * t232 + t254 * t276 + t255 * t275 + t609);
t664 = t254 * t683 + t255 * t686;
t757 = m(6) * (-t192 * t514 + (t218 * t509 + t219 * t508 + t232) * t512 + t664);
t747 = m(6) * (t232 * t477 + t664);
t746 = m(6) * (-t244 * t514 - t429 * t477);
t739 = m(6) * qJD(3);
t738 = m(6) * qJD(5);
t21 = 0.2e1 * (t86 / 0.4e1 - t177 / 0.4e1) * m(6) + 0.2e1 * (t126 / 0.4e1 - t226 / 0.4e1) * m(5) + 0.2e1 * (t216 / 0.4e1 - t261 / 0.4e1) * m(4);
t708 = t21 * qJD(1);
t680 = t512 * t282;
t679 = t512 * t283;
t673 = t512 * t397;
t665 = t238 * t686 + t240 * t683;
t663 = t269 * t686 + t271 * t683;
t647 = -t329 + t462;
t630 = -t452 - t488;
t629 = t624 * t487;
t623 = qJD(3) * t512;
t147 = 0.2e1 * (t192 / 0.4e1 - t244 / 0.4e1) * m(6);
t622 = t147 * qJD(1);
t584 = 0.2e1 * t620 * t477;
t619 = t772 + t774;
t321 = -t512 * t619 + t584;
t621 = t321 * qJD(1);
t617 = t507 * t745;
t518 = t512 * t545 + t703;
t139 = -t437 * t376 - t438 * t378 + t508 * t518;
t517 = t512 * t544 + t702;
t140 = -t437 * t377 - t438 * t379 + t508 * t517;
t516 = t512 * t543 + t700;
t165 = t390 * t548 - t464 * t392 + t508 * t516;
t515 = t512 * t542 + t699;
t166 = t391 * t548 - t464 * t393 + t508 * t515;
t413 = Icges(5,6) * t512 + t514 * t572;
t415 = Icges(5,5) * t512 + t514 * t577;
t444 = Icges(4,6) * t512 + t514 * t573;
t446 = Icges(4,5) * t512 + t514 * t578;
t614 = ((-t794 + t805) * t514 + (t139 + t165 + t798) * t512) * t755 + (t804 * t514 + (t140 + t166) * t512) * t753 + t801 * t752 + (t437 * t413 + t438 * t415 - t444 * t548 + t464 * t446) * t751;
t141 = -t439 * t376 - t440 * t378 + t509 * t518;
t142 = -t439 * t377 - t440 * t379 + t509 * t517;
t167 = t390 * t549 - t466 * t392 + t509 * t516;
t168 = t391 * t549 - t466 * t393 + t509 * t515;
t613 = (t803 * t514 + (t141 + t167) * t512) * t755 + ((-t794 + t802) * t514 + (t142 + t168 + t798) * t512) * t753 + t800 * t752 + (t439 * t413 + t440 * t415 - t444 * t549 + t466 * t446) * t751;
t612 = ((t413 * t499 - t415 * t500 + t444 * t511 - t446 * t513 - t822) * t514 + t806 * t509 + t807 * t508 + t799) * t790 + (t797 - t798) * t751;
t611 = t813 * t753 + t812 * t791;
t610 = t811 * t754 + t810 * t755;
t607 = -t303 - t313 + t462;
t600 = -t488 + t638;
t598 = t686 / 0.2e1;
t596 = t683 / 0.2e1;
t595 = (t508 * t805 + t509 * t804) * t752 + t801 * t751;
t594 = (t508 * t803 + t509 * t802) * t752 + t800 * t751;
t593 = t797 * t790 + t799 * t514 / 0.2e1;
t588 = t508 * t355 + t509 * t356 - t629;
t586 = -t488 + t603;
t48 = m(5) * (t180 * t477 + t663) + m(6) * (t119 * t477 + t665);
t485 = t512 * rSges(3,1) + rSges(3,2) * t514;
t520 = t512 * t547 + t706;
t133 = -t419 * t365 - t420 * t367 + t508 * t520;
t519 = t512 * t546 + t705;
t134 = -t419 * t366 - t420 * t368 + t508 * t519;
t183 = t284 * t419 + t286 * t420 + t508 * t680;
t184 = t285 * t419 + t287 * t420 + t508 * t679;
t227 = t399 * t419 + t401 * t420 + t508 * t673;
t31 = -(t419 * t400 + t420 * t402) * t514 + t227 * t512 + (t134 * t512 + t184 * t514) * t509 + ((t183 - t695) * t514 + (t133 - t541) * t512) * t508;
t135 = -t421 * t365 - t422 * t367 + t509 * t520;
t136 = -t421 * t366 - t422 * t368 + t509 * t519;
t185 = t284 * t421 + t286 * t422 + t509 * t680;
t186 = t285 * t421 + t287 * t422 + t509 * t679;
t228 = t399 * t421 + t401 * t422 + t509 * t673;
t32 = -(t421 * t400 + t422 * t402) * t514 + t228 * t512 + (t135 * t512 + t185 * t514) * t508 + ((t186 - t695) * t514 + (t136 - t541) * t512) * t509;
t94 = -t227 * t514 + (t183 * t508 + t184 * t509) * t512;
t95 = -t228 * t514 + (t185 * t508 + t186 * t509) * t512;
t553 = t31 * t599 + t32 * t597 + t95 * t596 + t94 * t598 + t782;
t552 = -t611 - t614;
t551 = -t610 + t613;
t550 = t765 / 0.2e1 + t553;
t537 = t808 * t508 + t468;
t536 = -t808 * t509 + t467;
t76 = -t133 * t509 + t134 * t508;
t77 = -t135 * t509 + t136 * t508;
t534 = t31 * t754 + t32 * t755 + (-t183 * t509 + t184 * t508) * t598 + (-t185 * t509 + t186 * t508) * t596 + (-t197 * t509 + t198 * t508) * t752 + t76 * t599 + t77 * t597 + (-t149 * t509 + t150 * t508) * t751 - t740;
t530 = -t31 * t687 / 0.2e1 - t32 * t684 / 0.2e1 + t58 * t755 + t57 * t754 + t74 * t599 + t75 * t597 + (-t152 * t509 + t153 * t508) * t751 - t94 * t686 / 0.2e1 - t95 * t683 / 0.2e1 - t782;
t482 = t507 * t615;
t432 = t514 * t461;
t416 = t461 * t684;
t360 = t630 * t509;
t358 = t630 * t508;
t345 = t624 * t485;
t320 = t584 + (m(5) + m(6)) * t752;
t281 = 0.4e1 * t785;
t278 = -t362 * t514 - t476 * t684;
t277 = t361 * t514 + t476 * t687;
t272 = t600 * t509;
t270 = t600 * t508;
t257 = (t361 * t509 - t362 * t508) * t512;
t248 = -t394 * t508 - t395 * t509 - t629;
t246 = -t450 * t684 + t647 * t514 + t482;
t245 = t328 * t514 - t432 + (t450 * t512 - t617) * t508;
t241 = t586 * t509;
t239 = t586 * t508;
t235 = t242 * t738;
t222 = -t416 + (t328 * t509 + t647 * t508) * t512;
t209 = t746 / 0.2e1;
t203 = -t380 * t508 - t381 * t509 + t588;
t202 = t512 * t590 + t514 * t607 + t482;
t201 = t302 * t514 - t432 + (t425 * t512 - t617) * t508 + t259;
t188 = -t350 * t514 + (-t643 * t511 + t645 * t513) * t512;
t187 = -t349 * t514 + (-t644 * t511 + t646 * t513) * t512;
t171 = t290 - t416 + (t302 * t509 + t508 * t607) * t512;
t170 = -t323 * t514 + (-t652 * t499 + t654 * t500) * t512;
t169 = -t322 * t514 + (-t653 * t499 + t655 * t500) * t512;
t162 = -t242 * t514 + (t259 * t509 + t260 * t508) * t512;
t155 = t162 * t738;
t154 = t650 * t509 + (-t304 - t370) * t508 + t588;
t148 = (t192 + t244) * t772;
t137 = t747 / 0.2e1;
t101 = -t167 * t509 + t168 * t508;
t100 = -t165 * t509 + t166 * t508;
t81 = -t141 * t509 + t142 * t508;
t80 = -t139 * t509 + t140 * t508;
t65 = t119 * t244 + (-t238 * t508 - t240 * t509) * t429;
t63 = t192 * t232 + t218 * t254 + t219 * t255;
t59 = t757 / 0.2e1;
t40 = t137 + t59 - t746 / 0.2e1;
t39 = t209 + t137 - t757 / 0.2e1;
t38 = t209 + t59 - t747 / 0.2e1;
t23 = t761 / 0.2e1;
t22 = (t216 + t261) * t775 + (t126 + t226) * t774 + (t177 + t86) * t772;
t19 = t762 / 0.2e1;
t18 = m(6) * t65 + t740;
t14 = m(6) * (t232 * t242 + t254 * t259 + t255 * t260) + t618;
t13 = t14 * qJD(5);
t9 = t508 * t610 + t509 * t611 + t740 - t792;
t8 = t668 + t793;
t7 = t741 + t742 - t668;
t6 = t668 - t793;
t5 = m(6) * t63 + t553;
t4 = t23 - t762 / 0.2e1 + t550;
t3 = t19 - t761 / 0.2e1 + t550;
t2 = t530 + t23 - t765 / 0.2e1 + t19;
t1 = t770 + t768 + t763 + (t508 * t595 + t509 * t594 + t612) * t514 + (t508 * t614 + t509 * t613 - t593) * t512 + t553;
t11 = [0, t22 * qJD(3) + t320 * qJD(4) + t148 * qJD(5) + (-m(3) * t345 / 0.2e1 + t248 * t775 + t203 * t774 + t154 * t772) * t778, t22 * qJD(2) + t235 + (t171 * t772 + t222 * t774 + t257 * t775) * t777, t320 * qJD(2), t148 * qJD(2) + t242 * t739 + t235; -qJD(3) * t21 + qJD(4) * t321 - qJD(5) * t147, t9 * qJD(3) + t48 * qJD(4) + t18 * qJD(5) + (m(6) * (t119 * t154 + t238 * t239 + t240 * t241) + m(5) * (t180 * t203 + t269 * t270 + t271 * t272) + m(4) * (t229 * t248 + t357 * t358 + t359 * t360) + m(3) * (-t345 + t485) * t624 * (rSges(3,1) * t514 - t512 * rSges(3,2)) + (t77 + t81 + t101 + t504 * t468 + (t537 * t509 + (-t467 + t536) * t508) * t509) * t755 + (t76 + t100 + t80 + t505 * t467 + (t536 * t508 + (-t468 + t537) * t509) * t508) * t754) * qJD(2), -t708 + t9 * qJD(2) + t8 * qJD(4) + t2 * qJD(5) + (-t770 / 0.4e1 - t768 / 0.4e1 - t763 / 0.4e1) * t776 + ((t229 * t257 + t249 * t261 + t277 * t359 + t278 * t357 + (-t265 * t509 - t266 * t508) * t476) * t775 + (t180 * t222 + t190 * t226 + t220 * t373 + t221 * t372 + t245 * t271 + t246 * t269) * t774 + (t119 * t171 + t124 * t177 + t163 * t276 + t164 * t275 + t201 * t240 + t202 * t238) * t772) * t777 + (t508 * t552 - t509 * t551 + t593) * t623 + (t530 + ((t187 / 0.2e1 + t169 / 0.2e1 - t594) * t509 + (-t188 / 0.2e1 - t170 / 0.2e1 - t595) * t508 - t612) * t514 + t788 * t755 + t787 * t754) * qJD(3), t621 + t48 * qJD(2) + t8 * qJD(3) + (-0.4e1 * t785 + 0.2e1 * t619 * (-t477 * t514 + t626)) * qJD(4) + t39 * qJD(5), -t622 + t18 * qJD(2) + t2 * qJD(3) + t39 * qJD(4) + ((t232 * t244 + (-t254 * t509 - t255 * t508) * t429 - t63 + t609) * m(6) + t530) * qJD(5); t21 * qJD(2), t708 + t1 * qJD(3) + t7 * qJD(4) + t3 * qJD(5) + ((t216 * t229 + t230 * t359 + t231 * t357 + t248 * t249 + t265 * t360 + t266 * t358) * t775 + (t126 * t180 + t156 * t271 + t157 * t269 + t190 * t203 + t220 * t272 + t221 * t270) * t774 + (t106 * t240 + t107 * t238 + t119 * t86 + t124 * t154 + t163 * t241 + t164 * t239) * t772) * t778 + (t534 + t552 * t509 + t551 * t508 + (t806 * t791 + (t508 * t804 - t509 * t805) * t755 + (t508 * t802 - t509 * t803 + t807) * t753) * t514 + ((t101 / 0.2e1 + t81 / 0.2e1 - t223 / 0.2e1 - t204 / 0.2e1) * t509 + (t100 / 0.2e1 + t80 / 0.2e1 + t224 / 0.2e1 + t205 / 0.2e1) * t508) * t512 + t792) * qJD(2), t1 * qJD(2) + t786 + ((t124 * t171 + t163 * t201 + t164 * t202) * t771 + (t190 * t222 + t220 * t245 + t221 * t246) * t773 + m(4) * (t249 * t257 + t265 * t277 + t266 * t278) / 0.4e1) * t776 + (t787 * t755 + t788 * t753 + ((t499 * t636 + t500 * t784 + t511 * t632 + t513 * t783) * t514 + (t188 + t170) * t509 + (t187 + t169) * t508) * t751) * t623 + (t618 + (-t473 / 0.2e1 - t447 / 0.2e1) * t514 * t779) * qJD(3), t7 * qJD(2), t3 * qJD(2) + t10 * qJD(3) + t786; -t321 * qJD(2), -t621 + (m(6) * (-t154 * t514 + t665) + m(5) * (-t203 * t514 + t663) + 0.2e1 * ((t239 * t508 + t241 * t509 + t119) * t772 + (t270 * t508 + t272 * t509 + t180) * t774) * t512 - t48) * qJD(2) + t6 * qJD(3) + t281 * qJD(4) + t38 * qJD(5), t6 * qJD(2) + ((-t171 * t514 + (t201 * t509 + t202 * t508) * t512) * t772 + (-t222 * t514 + (t245 * t509 + t246 * t508) * t512) * t774) * t777 + t155, t281 * qJD(2), t38 * qJD(2) + t162 * t739 + t155; t147 * qJD(2), t622 + ((t119 * t192 + t154 * t232 + t218 * t240 + t219 * t238 + t239 * t255 + t241 * t254 - t65) * m(6) + t534) * qJD(2) + t4 * qJD(3) + t40 * qJD(4) + t5 * qJD(5), t4 * qJD(2) + ((t171 * t232 + t201 * t254 + t202 * t255) * m(6) + t618) * qJD(3) + t13, t40 * qJD(2), qJD(2) * t5 + qJD(3) * t14 + t13;];
Cq = t11;
