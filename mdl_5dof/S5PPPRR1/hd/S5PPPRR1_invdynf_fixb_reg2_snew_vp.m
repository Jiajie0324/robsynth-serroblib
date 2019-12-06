% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S5PPPRR1
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
%   pkin=[a2,a3,a4,a5,d4,d5,theta1,theta2,theta3]';
%
% Output:
% f_new_reg [(3*6)x(6*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 14:58
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S5PPPRR1_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PPPRR1_invdynf_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PPPRR1_invdynf_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5PPPRR1_invdynf_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PPPRR1_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PPPRR1_invdynf_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 14:58:22
% EndTime: 2019-12-05 14:58:23
% DurationCPUTime: 1.18s
% Computational Cost: add. (3089->118), mult. (5057->173), div. (0->0), fcn. (4253->10), ass. (0->96)
t747 = sin(pkin(7));
t750 = cos(pkin(7));
t732 = -t750 * g(1) - t747 * g(2);
t746 = sin(pkin(8));
t749 = cos(pkin(8));
t763 = -g(3) + qJDD(1);
t722 = -t746 * t732 + t749 * t763;
t721 = qJDD(3) - t722;
t768 = t746 * t721;
t752 = sin(qJ(5));
t742 = t752 ^ 2;
t754 = cos(qJ(5));
t743 = t754 ^ 2;
t762 = t742 + t743;
t727 = t762 * qJDD(4);
t757 = qJD(4) ^ 2;
t730 = t762 * t757;
t753 = sin(qJ(4));
t755 = cos(qJ(4));
t714 = t753 * t727 + t755 * t730;
t715 = t755 * t727 - t753 * t730;
t745 = sin(pkin(9));
t748 = cos(pkin(9));
t696 = -t745 * t714 + t748 * t715;
t767 = t749 * t696;
t728 = t755 * qJDD(4) - t753 * t757;
t729 = -t753 * qJDD(4) - t755 * t757;
t711 = t748 * t728 + t745 * t729;
t766 = t749 * t711;
t758 = -t745 * t728 + t748 * t729;
t765 = t749 * t758;
t764 = t749 * t750;
t723 = t749 * t732 + t746 * t763;
t731 = t747 * g(1) - t750 * g(2);
t726 = -qJDD(2) + t731;
t706 = -t745 * t723 - t748 * t726;
t707 = t748 * t723 - t745 * t726;
t693 = t753 * t706 + t755 * t707;
t761 = qJD(4) * qJD(5);
t760 = t752 * qJDD(4);
t759 = t754 * qJDD(4);
t692 = t755 * t706 - t753 * t707;
t756 = qJD(5) ^ 2;
t737 = t752 * t757 * t754;
t736 = -t743 * t757 - t756;
t735 = -t742 * t757 - t756;
t734 = -qJDD(5) + t737;
t733 = qJDD(5) + t737;
t725 = -0.2e1 * t752 * t761 + t759;
t724 = 0.2e1 * t754 * t761 + t760;
t720 = t754 * t734 - t752 * t735;
t719 = -t752 * t733 + t754 * t736;
t718 = t752 * t734 + t754 * t735;
t717 = t754 * t733 + t752 * t736;
t716 = t749 * t721;
t709 = t746 * t758;
t708 = t746 * t711;
t705 = t755 * t720 + t753 * t724;
t704 = t755 * t719 - t753 * t725;
t703 = t753 * t720 - t755 * t724;
t702 = t753 * t719 + t755 * t725;
t698 = -t746 * t722 + t749 * t723;
t697 = t749 * t722 + t746 * t723;
t695 = t748 * t714 + t745 * t715;
t694 = t746 * t696;
t691 = -t745 * t706 + t748 * t707;
t690 = t748 * t706 + t745 * t707;
t689 = -t757 * pkin(4) + qJDD(4) * pkin(6) + t693;
t688 = -qJDD(4) * pkin(4) - t757 * pkin(6) - t692;
t687 = -t745 * t703 + t748 * t705;
t686 = -t745 * t702 + t748 * t704;
t685 = t748 * t703 + t745 * t705;
t684 = t748 * t702 + t745 * t704;
t683 = t749 * t691 + t768;
t682 = t746 * t691 - t716;
t681 = t754 * t689 + t752 * t721;
t680 = -t752 * t689 + t754 * t721;
t679 = t749 * t687 + t746 * t718;
t678 = t749 * t686 + t746 * t717;
t677 = t746 * t687 - t749 * t718;
t676 = t746 * t686 - t749 * t717;
t675 = -t753 * t692 + t755 * t693;
t674 = t755 * t692 + t753 * t693;
t673 = -t752 * t680 + t754 * t681;
t672 = t754 * t680 + t752 * t681;
t671 = t755 * t673 + t753 * t688;
t670 = t753 * t673 - t755 * t688;
t669 = -t745 * t674 + t748 * t675;
t668 = t748 * t674 + t745 * t675;
t667 = t749 * t669 + t768;
t666 = t746 * t669 - t716;
t665 = -t745 * t670 + t748 * t671;
t664 = t748 * t670 + t745 * t671;
t663 = t749 * t665 + t746 * t672;
t662 = t746 * t665 - t749 * t672;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t747 * t731 + t750 * t732, 0, 0, 0, 0, 0, 0, 0, 0, 0, t750 * t698 - t747 * t726, 0, 0, 0, 0, 0, 0, 0, 0, 0, t750 * t683 + t747 * t690, 0, 0, 0, 0, 0, 0, t747 * t711 + t758 * t764, -t711 * t764 + t747 * t758, 0, t750 * t667 + t747 * t668, 0, 0, 0, 0, 0, 0, t750 * t678 + t747 * t684, t750 * t679 + t747 * t685, t747 * t695 + t696 * t764, t750 * t663 + t747 * t664; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t750 * t731 + t747 * t732, 0, 0, 0, 0, 0, 0, 0, 0, 0, t747 * t698 + t750 * t726, 0, 0, 0, 0, 0, 0, 0, 0, 0, t747 * t683 - t750 * t690, 0, 0, 0, 0, 0, 0, -t750 * t711 + t747 * t765, -t747 * t766 - t750 * t758, 0, t747 * t667 - t750 * t668, 0, 0, 0, 0, 0, 0, t747 * t678 - t750 * t684, t747 * t679 - t750 * t685, -t750 * t695 + t747 * t767, t747 * t663 - t750 * t664; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t763, 0, 0, 0, 0, 0, 0, 0, 0, 0, t697, 0, 0, 0, 0, 0, 0, 0, 0, 0, t682, 0, 0, 0, 0, 0, 0, t709, -t708, 0, t666, 0, 0, 0, 0, 0, 0, t676, t677, t694, t662; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t732, 0, 0, 0, 0, 0, 0, 0, 0, 0, t698, 0, 0, 0, 0, 0, 0, 0, 0, 0, t683, 0, 0, 0, 0, 0, 0, t765, -t766, 0, t667, 0, 0, 0, 0, 0, 0, t678, t679, t767, t663; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t731, 0, 0, 0, 0, 0, 0, 0, 0, 0, t726, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t690, 0, 0, 0, 0, 0, 0, -t711, -t758, 0, -t668, 0, 0, 0, 0, 0, 0, -t684, -t685, -t695, -t664; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t763, 0, 0, 0, 0, 0, 0, 0, 0, 0, t697, 0, 0, 0, 0, 0, 0, 0, 0, 0, t682, 0, 0, 0, 0, 0, 0, t709, -t708, 0, t666, 0, 0, 0, 0, 0, 0, t676, t677, t694, t662; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t723, 0, 0, 0, 0, 0, 0, 0, 0, 0, t691, 0, 0, 0, 0, 0, 0, t758, -t711, 0, t669, 0, 0, 0, 0, 0, 0, t686, t687, t696, t665; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t722, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t721, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t721, 0, 0, 0, 0, 0, 0, -t717, -t718, 0, -t672; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t726, 0, 0, 0, 0, 0, 0, 0, 0, 0, t690, 0, 0, 0, 0, 0, 0, t711, t758, 0, t668, 0, 0, 0, 0, 0, 0, t684, t685, t695, t664; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t707, 0, 0, 0, 0, 0, 0, t729, -t728, 0, t675, 0, 0, 0, 0, 0, 0, t704, t705, t715, t671; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t706, 0, 0, 0, 0, 0, 0, t728, t729, 0, t674, 0, 0, 0, 0, 0, 0, t702, t703, t714, t670; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t721, 0, 0, 0, 0, 0, 0, 0, 0, 0, t721, 0, 0, 0, 0, 0, 0, t717, t718, 0, t672; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t757, -qJDD(4), 0, t693, 0, 0, 0, 0, 0, 0, t719, t720, t727, t673; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(4), -t757, 0, t692, 0, 0, 0, 0, 0, 0, t725, -t724, t730, -t688; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t721, 0, 0, 0, 0, 0, 0, t717, t718, 0, t672; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t736, t734, t759, t681; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t733, t735, -t760, t680; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t725, t724, -t730, t688;];
f_new_reg = t1;