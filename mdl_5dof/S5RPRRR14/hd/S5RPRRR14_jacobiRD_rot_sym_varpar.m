% Zeitableitung der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S5RPRRR14
% Use Code from Maple symbolic Code Generation
% 
% Rotationsmatrix-Jacobi-Matrix: Differentieller Zusammenhang zwischen
% gestapelter Endeffektor-Rotationsmatrix und verallgemeinerten Koordinaten.
% Zeitableitung: Die Gradientenmatrix wird nochmal nach der Zeit abgeleitet.
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt. (0=Basis).
%   Siehe auch: bsp_3T1R_fkine_fixb_rotmat_mdh_sym_varpar.m
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,alpha3,d1,d3,d4,d5,theta2]';
% 
% Output:
% JRD_rot [9x5]
%   Zeitableitung der Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 19:22
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JRD_rot = S5RPRRR14_jacobiRD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),uint8(0),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRR14_jacobiRD_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRR14_jacobiRD_rot_sym_varpar: qJD has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RPRRR14_jacobiRD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S5RPRRR14_jacobiRD_rot_sym_varpar: pkin has to be [11x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiRD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 19:22:21
	% EndTime: 2019-12-31 19:22:21
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiRD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 19:22:21
	% EndTime: 2019-12-31 19:22:21
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (3->3), mult. (4->2), div. (0->0), fcn. (4->2), ass. (0->3)
	t31 = qJD(1) * sin(qJ(1));
	t30 = qJD(1) * cos(qJ(1));
	t1 = [-t30, 0, 0, 0, 0; -t31, 0, 0, 0, 0; 0, 0, 0, 0, 0; t31, 0, 0, 0, 0; -t30, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiRD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 19:22:21
	% EndTime: 2019-12-31 19:22:21
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (5->5), mult. (24->17), div. (0->0), fcn. (24->6), ass. (0->9)
	t128 = cos(pkin(5));
	t129 = sin(qJ(1));
	t133 = t128 * t129;
	t130 = cos(qJ(1));
	t132 = t128 * t130;
	t131 = qJD(1) * sin(pkin(5));
	t127 = cos(pkin(11));
	t125 = sin(pkin(11));
	t1 = [(t125 * t133 - t127 * t130) * qJD(1), 0, 0, 0, 0; (-t125 * t132 - t127 * t129) * qJD(1), 0, 0, 0, 0; 0, 0, 0, 0, 0; (t125 * t130 + t127 * t133) * qJD(1), 0, 0, 0, 0; (t125 * t129 - t127 * t132) * qJD(1), 0, 0, 0, 0; 0, 0, 0, 0, 0; -t129 * t131, 0, 0, 0, 0; t130 * t131, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiRD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 19:22:22
	% EndTime: 2019-12-31 19:22:22
	% DurationCPUTime: 0.13s
	% Computational Cost: add. (80->29), mult. (294->61), div. (0->0), fcn. (310->10), ass. (0->38)
	t298 = cos(pkin(5));
	t296 = cos(pkin(11));
	t302 = cos(qJ(1));
	t314 = t302 * t296;
	t293 = sin(pkin(11));
	t300 = sin(qJ(1));
	t317 = t300 * t293;
	t286 = -t298 * t314 + t317;
	t294 = sin(pkin(6));
	t295 = sin(pkin(5));
	t297 = cos(pkin(6));
	t327 = t294 * t295 * t302 + t286 * t297;
	t311 = t298 * t317;
	t313 = qJD(1) * t302;
	t285 = -qJD(1) * t311 + t296 * t313;
	t315 = t302 * t293;
	t316 = t300 * t296;
	t287 = t298 * t315 + t316;
	t299 = sin(qJ(3));
	t301 = cos(qJ(3));
	t306 = t298 * t316 + t315;
	t284 = t306 * qJD(1);
	t319 = t295 * t300;
	t310 = qJD(1) * t319;
	t304 = -t284 * t297 + t294 * t310;
	t326 = (-t287 * t301 + t327 * t299) * qJD(3) - t285 * t299 + t304 * t301;
	t320 = t294 * t298;
	t318 = t296 * t297;
	t309 = t295 * t313;
	t307 = t294 * t319 - t297 * t306;
	t282 = t286 * qJD(1);
	t305 = t282 * t297 + t294 * t309;
	t303 = (qJD(3) * t287 - t304) * t299 + (t327 * qJD(3) - t285) * t301;
	t289 = -t311 + t314;
	t283 = t287 * qJD(1);
	t281 = -t283 * t301 + t305 * t299 + (-t289 * t299 + t307 * t301) * qJD(3);
	t280 = t283 * t299 + t305 * t301 + (-t289 * t301 - t307 * t299) * qJD(3);
	t1 = [t303, 0, t280, 0, 0; t281, 0, t326, 0, 0; 0, 0, (-t299 * t320 + (-t293 * t301 - t299 * t318) * t295) * qJD(3), 0, 0; -t326, 0, -t281, 0, 0; t280, 0, t303, 0, 0; 0, 0, (-t301 * t320 + (t293 * t299 - t301 * t318) * t295) * qJD(3), 0, 0; -t284 * t294 - t297 * t310, 0, 0, 0, 0; -t282 * t294 + t297 * t309, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiRD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 19:22:23
	% EndTime: 2019-12-31 19:22:24
	% DurationCPUTime: 0.41s
	% Computational Cost: add. (278->59), mult. (936->116), div. (0->0), fcn. (1042->12), ass. (0->63)
	t507 = cos(pkin(5));
	t502 = sin(pkin(11));
	t513 = cos(qJ(1));
	t530 = t513 * t502;
	t505 = cos(pkin(11));
	t510 = sin(qJ(1));
	t531 = t510 * t505;
	t515 = t507 * t531 + t530;
	t490 = t515 * qJD(1);
	t532 = t510 * t502;
	t523 = t507 * t532;
	t528 = qJD(1) * t513;
	t491 = -qJD(1) * t523 + t505 * t528;
	t506 = cos(pkin(6));
	t509 = sin(qJ(3));
	t512 = cos(qJ(3));
	t503 = sin(pkin(6));
	t504 = sin(pkin(5));
	t536 = t504 * t510;
	t522 = qJD(1) * t536;
	t520 = t503 * t522;
	t494 = t507 * t530 + t531;
	t529 = t513 * t505;
	t493 = -t507 * t529 + t532;
	t535 = t504 * t513;
	t525 = t503 * t535;
	t518 = t493 * t506 + t525;
	t541 = t494 * t509 + t518 * t512;
	t471 = t541 * qJD(3) - (-t490 * t506 + t520) * t509 - t491 * t512;
	t538 = t494 * t512;
	t474 = t518 * t509 - t538;
	t481 = t490 * t503 + t506 * t522;
	t484 = -t493 * t503 + t506 * t535;
	t508 = sin(qJ(4));
	t511 = cos(qJ(4));
	t551 = t471 * t508 + (t474 * t511 + t484 * t508) * qJD(4) + t481 * t511;
	t550 = t471 * t511 - t481 * t508 + (-t474 * t508 + t484 * t511) * qJD(4);
	t534 = t506 * t509;
	t537 = t503 * t507;
	t483 = (t502 * t512 + t505 * t534) * t504 + t509 * t537;
	t533 = t506 * t512;
	t527 = qJD(4) * t508;
	t526 = qJD(4) * t511;
	t521 = t504 * t528;
	t519 = t503 * t521;
	t517 = t503 * t536 - t506 * t515;
	t496 = -t523 + t529;
	t475 = -t496 * t509 + t517 * t512;
	t476 = t496 * t512 + t517 * t509;
	t482 = t512 * t537 + (-t502 * t509 + t505 * t533) * t504;
	t469 = -t490 * t533 - t491 * t509 + t512 * t520 + (t493 * t534 + t509 * t525 - t538) * qJD(3);
	t492 = -t504 * t505 * t503 + t507 * t506;
	t489 = t494 * qJD(1);
	t488 = t493 * qJD(1);
	t486 = t503 * t515 + t506 * t536;
	t479 = -t488 * t503 + t506 * t521;
	t478 = t483 * qJD(3);
	t477 = t482 * qJD(3);
	t468 = -t489 * t512 + (t488 * t506 + t519) * t509 + t475 * qJD(3);
	t467 = t476 * qJD(3) - t488 * t533 - t489 * t509 - t512 * t519;
	t466 = t468 * t511 + t479 * t508 + (-t476 * t508 + t486 * t511) * qJD(4);
	t465 = -t468 * t508 + t479 * t511 + (-t476 * t511 - t486 * t508) * qJD(4);
	t1 = [t550, 0, -t467 * t511 - t475 * t527, t465, 0; t466, 0, t469 * t511 + t527 * t541, t551, 0; 0, 0, -t478 * t511 - t482 * t527, -t477 * t508 + (-t483 * t511 - t492 * t508) * qJD(4), 0; -t551, 0, t467 * t508 - t475 * t526, -t466, 0; t465, 0, -t469 * t508 + t526 * t541, t550, 0; 0, 0, t478 * t508 - t482 * t526, -t477 * t511 + (t483 * t508 - t492 * t511) * qJD(4), 0; t469, 0, t468, 0, 0; t467, 0, -t471, 0, 0; 0, 0, t477, 0, 0;];
	JRD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiRD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 19:22:26
	% EndTime: 2019-12-31 19:22:27
	% DurationCPUTime: 0.93s
	% Computational Cost: add. (800->98), mult. (2579->181), div. (0->0), fcn. (2964->14), ass. (0->89)
	t729 = cos(pkin(5));
	t724 = sin(pkin(11));
	t737 = cos(qJ(1));
	t769 = t737 * t724;
	t727 = cos(pkin(11));
	t733 = sin(qJ(1));
	t770 = t733 * t727;
	t747 = t729 * t770 + t769;
	t711 = t747 * qJD(1);
	t768 = t737 * t727;
	t771 = t733 * t724;
	t716 = -t729 * t771 + t768;
	t712 = t716 * qJD(1);
	t725 = sin(pkin(6));
	t728 = cos(pkin(6));
	t732 = sin(qJ(3));
	t736 = cos(qJ(3));
	t726 = sin(pkin(5));
	t775 = t726 * t733;
	t755 = qJD(1) * t775;
	t748 = t729 * t768 - t771;
	t745 = t748 * t728;
	t774 = t726 * t737;
	t757 = t725 * t774;
	t749 = -t745 + t757;
	t715 = t729 * t769 + t770;
	t781 = t715 * t732;
	t783 = t736 * t749 + t781;
	t680 = t783 * qJD(3) - (-t711 * t728 + t725 * t755) * t732 - t712 * t736;
	t780 = t715 * t736;
	t793 = t732 * t749;
	t693 = -t780 + t793;
	t703 = t725 * t748 + t728 * t774;
	t731 = sin(qJ(4));
	t735 = cos(qJ(4));
	t683 = t693 * t731 - t703 * t735;
	t700 = t711 * t725 + t728 * t755;
	t674 = -t683 * qJD(4) + t680 * t735 - t700 * t731;
	t767 = qJD(1) * t736;
	t776 = t726 * t725;
	t754 = t767 * t776;
	t772 = t728 * t736;
	t773 = t728 * t732;
	t679 = qJD(3) * (-t748 * t773 - t780) - t711 * t772 + t733 * t754 - (-qJD(3) * t757 + t712) * t732;
	t730 = sin(qJ(5));
	t734 = cos(qJ(5));
	t800 = -t674 * t730 + t679 * t734;
	t799 = t674 * t734 + t679 * t730;
	t685 = t693 * t735 + t703 * t731;
	t798 = t685 * t730;
	t797 = t685 * t734;
	t672 = t685 * qJD(4) + t680 * t731 + t700 * t735;
	t786 = -t725 * t775 + t747 * t728;
	t694 = t716 * t732 + t786 * t736;
	t777 = t725 * t729;
	t787 = (-t724 * t732 + t727 * t772) * t726 + t736 * t777;
	t766 = qJD(4) * t731;
	t765 = qJD(4) * t735;
	t764 = qJD(5) * t730;
	t763 = qJD(5) * t734;
	t762 = qJD(5) * t735;
	t710 = t715 * qJD(1);
	t676 = qJD(1) * t793 - t694 * qJD(3) - t710 * t736;
	t753 = t694 * t762 + t676;
	t690 = t736 * t757 - t748 * t772 + t781;
	t752 = t690 * t762 - t680;
	t697 = t787 * qJD(3);
	t751 = -t762 * t787 + t697;
	t695 = t716 * t736 - t732 * t786;
	t705 = t725 * t747 + t728 * t775;
	t687 = t695 * t735 + t705 * t731;
	t702 = t732 * t777 + (t724 * t736 + t727 * t773) * t726;
	t713 = -t727 * t776 + t729 * t728;
	t689 = t702 * t735 + t713 * t731;
	t688 = -t702 * t731 + t713 * t735;
	t675 = qJD(3) * t695 - t710 * t732 - t737 * t754 + t745 * t767;
	t742 = qJD(5) * t695 - t675 * t735 + t694 * t766;
	t741 = -qJD(5) * t693 + t679 * t735 + t690 * t766;
	t698 = t702 * qJD(3);
	t740 = qJD(5) * t702 - t698 * t735 - t766 * t787;
	t738 = t703 * qJD(1);
	t686 = -t695 * t731 + t705 * t735;
	t682 = qJD(4) * t688 + t697 * t735;
	t681 = -qJD(4) * t689 - t697 * t731;
	t671 = t676 * t735 - t695 * t766 + t705 * t765 + t731 * t738;
	t670 = qJD(4) * t687 + t676 * t731 - t735 * t738;
	t669 = t671 * t734 + t675 * t730 + (-t687 * t730 + t694 * t734) * qJD(5);
	t668 = -t671 * t730 + t675 * t734 + (-t687 * t734 - t694 * t730) * qJD(5);
	t1 = [(-t734 * t783 - t798) * qJD(5) + t799, 0, t753 * t730 + t742 * t734, -t670 * t734 - t686 * t764, t668; t669, 0, t752 * t730 + t741 * t734, t672 * t734 - t683 * t764, (-t690 * t730 + t797) * qJD(5) - t800; 0, 0, t751 * t730 + t740 * t734, t681 * t734 - t688 * t764, -t682 * t730 + t698 * t734 + (-t689 * t734 + t730 * t787) * qJD(5); (t730 * t783 - t797) * qJD(5) + t800, 0, -t742 * t730 + t753 * t734, t670 * t730 - t686 * t763, -t669; t668, 0, -t741 * t730 + t752 * t734, -t672 * t730 - t683 * t763, (-t690 * t734 - t798) * qJD(5) + t799; 0, 0, -t740 * t730 + t751 * t734, -t681 * t730 - t688 * t763, -t682 * t734 - t698 * t730 + (t689 * t730 + t734 * t787) * qJD(5); t672, 0, -t675 * t731 - t694 * t765, t671, 0; t670, 0, t679 * t731 - t690 * t765, -t674, 0; 0, 0, -t698 * t731 + t765 * t787, t682, 0;];
	JRD_rot = t1;
else
	JRD_rot=NaN(9,5);
end