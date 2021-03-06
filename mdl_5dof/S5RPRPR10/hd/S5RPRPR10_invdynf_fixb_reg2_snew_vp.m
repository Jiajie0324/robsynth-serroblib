% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S5RPRPR10
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
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d5,theta4]';
%
% Output:
% f_new_reg [(3*6)x(6*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 18:26
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S5RPRPR10_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRPR10_invdynf_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRPR10_invdynf_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPRPR10_invdynf_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPRPR10_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPRPR10_invdynf_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 18:26:19
% EndTime: 2019-12-31 18:26:20
% DurationCPUTime: 1.41s
% Computational Cost: add. (4421->149), mult. (6286->159), div. (0->0), fcn. (2678->8), ass. (0->89)
t777 = -qJD(1) + qJD(3);
t775 = t777 ^ 2;
t776 = qJDD(1) - qJDD(3);
t782 = sin(pkin(8));
t783 = cos(pkin(8));
t752 = t782 * t775 + t783 * t776;
t785 = sin(qJ(3));
t788 = cos(qJ(3));
t796 = -t783 * t775 + t782 * t776;
t734 = t788 * t752 - t785 * t796;
t786 = sin(qJ(1));
t789 = cos(qJ(1));
t807 = t785 * t752 + t788 * t796;
t811 = t786 * t734 - t789 * t807;
t810 = t789 * t734 + t786 * t807;
t795 = t785 * t775 + t788 * t776;
t797 = -t788 * t775 + t785 * t776;
t804 = t786 * t797 + t789 * t795;
t803 = t786 * t795 - t789 * t797;
t802 = -pkin(1) - pkin(2);
t784 = sin(qJ(5));
t801 = t784 * t776;
t787 = cos(qJ(5));
t800 = t787 * t776;
t791 = qJD(1) ^ 2;
t768 = -t789 * g(1) - t786 * g(2);
t794 = qJDD(1) * qJ(2) + (2 * qJD(2) * qJD(1)) + t768;
t744 = t802 * t791 + t794;
t767 = t786 * g(1) - t789 * g(2);
t793 = -t791 * qJ(2) + qJDD(2) - t767;
t745 = t802 * qJDD(1) + t793;
t731 = t788 * t744 + t785 * t745;
t725 = -t775 * pkin(3) + t731;
t730 = -t785 * t744 + t788 * t745;
t792 = -t776 * pkin(3) + t730;
t713 = t783 * t725 + t782 * t792;
t779 = t784 ^ 2;
t780 = t787 ^ 2;
t799 = t779 + t780;
t798 = qJD(5) * t777;
t712 = -t782 * t725 + t783 * t792;
t790 = qJD(5) ^ 2;
t781 = g(3) + qJDD(4);
t766 = t787 * t775 * t784;
t765 = -t780 * t775 - t790;
t764 = -t779 * t775 - t790;
t763 = t789 * qJDD(1) - t786 * t791;
t762 = t786 * qJDD(1) + t789 * t791;
t761 = -qJDD(5) + t766;
t760 = qJDD(5) + t766;
t759 = t799 * t775;
t754 = t799 * t776;
t749 = -0.2e1 * t784 * t798 - t800;
t748 = 0.2e1 * t787 * t798 - t801;
t747 = qJDD(1) * pkin(1) - t793;
t746 = -t791 * pkin(1) + t794;
t741 = t787 * t761 - t784 * t764;
t740 = -t784 * t760 + t787 * t765;
t739 = t784 * t761 + t787 * t764;
t738 = t787 * t760 + t784 * t765;
t737 = -t783 * t754 - t782 * t759;
t736 = -t782 * t754 + t783 * t759;
t729 = t783 * t741 + t782 * t748;
t728 = t783 * t740 - t782 * t749;
t727 = t782 * t741 - t783 * t748;
t726 = t782 * t740 + t783 * t749;
t721 = -t785 * t736 + t788 * t737;
t720 = t788 * t736 + t785 * t737;
t719 = -t785 * t730 + t788 * t731;
t718 = t788 * t730 + t785 * t731;
t717 = -t785 * t727 + t788 * t729;
t716 = -t785 * t726 + t788 * t728;
t715 = t788 * t727 + t785 * t729;
t714 = t788 * t726 + t785 * t728;
t711 = -t775 * pkin(4) - t776 * pkin(7) + t713;
t710 = t776 * pkin(4) - t775 * pkin(7) - t712;
t709 = t787 * t711 + t784 * t781;
t708 = -t784 * t711 + t787 * t781;
t707 = -t782 * t712 + t783 * t713;
t706 = t783 * t712 + t782 * t713;
t705 = -t784 * t708 + t787 * t709;
t704 = t787 * t708 + t784 * t709;
t703 = t783 * t705 + t782 * t710;
t702 = t782 * t705 - t783 * t710;
t701 = -t785 * t706 + t788 * t707;
t700 = t788 * t706 + t785 * t707;
t699 = -t785 * t702 + t788 * t703;
t698 = t788 * t702 + t785 * t703;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t762, -t763, 0, -t786 * t767 + t789 * t768, 0, 0, 0, 0, 0, 0, -t762, 0, t763, t789 * t746 - t786 * t747, 0, 0, 0, 0, 0, 0, -t803, t804, 0, t786 * t718 + t789 * t719, 0, 0, 0, 0, 0, 0, -t811, t810, 0, t786 * t700 + t789 * t701, 0, 0, 0, 0, 0, 0, t786 * t714 + t789 * t716, t786 * t715 + t789 * t717, t786 * t720 + t789 * t721, t786 * t698 + t789 * t699; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t763, -t762, 0, t789 * t767 + t786 * t768, 0, 0, 0, 0, 0, 0, t763, 0, t762, t786 * t746 + t789 * t747, 0, 0, 0, 0, 0, 0, t804, t803, 0, -t789 * t718 + t786 * t719, 0, 0, 0, 0, 0, 0, t810, t811, 0, -t789 * t700 + t786 * t701, 0, 0, 0, 0, 0, 0, -t789 * t714 + t786 * t716, -t789 * t715 + t786 * t717, -t789 * t720 + t786 * t721, -t789 * t698 + t786 * t699; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t781, 0, 0, 0, 0, 0, 0, -t738, -t739, 0, -t704; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t791, -qJDD(1), 0, t768, 0, 0, 0, 0, 0, 0, -t791, 0, qJDD(1), t746, 0, 0, 0, 0, 0, 0, t797, t795, 0, t719, 0, 0, 0, 0, 0, 0, t807, t734, 0, t701, 0, 0, 0, 0, 0, 0, t716, t717, t721, t699; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t791, 0, t767, 0, 0, 0, 0, 0, 0, qJDD(1), 0, t791, t747, 0, 0, 0, 0, 0, 0, t795, -t797, 0, -t718, 0, 0, 0, 0, 0, 0, t734, -t807, 0, -t700, 0, 0, 0, 0, 0, 0, -t714, -t715, -t720, -t698; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t781, 0, 0, 0, 0, 0, 0, -t738, -t739, 0, -t704; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t791, 0, qJDD(1), t746, 0, 0, 0, 0, 0, 0, t797, t795, 0, t719, 0, 0, 0, 0, 0, 0, t807, t734, 0, t701, 0, 0, 0, 0, 0, 0, t716, t717, t721, t699; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t781, 0, 0, 0, 0, 0, 0, -t738, -t739, 0, -t704; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJDD(1), 0, -t791, -t747, 0, 0, 0, 0, 0, 0, -t795, t797, 0, t718, 0, 0, 0, 0, 0, 0, -t734, t807, 0, t700, 0, 0, 0, 0, 0, 0, t714, t715, t720, t698; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t775, t776, 0, t731, 0, 0, 0, 0, 0, 0, t796, t752, 0, t707, 0, 0, 0, 0, 0, 0, t728, t729, t737, t703; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t776, -t775, 0, t730, 0, 0, 0, 0, 0, 0, -t752, t796, 0, t706, 0, 0, 0, 0, 0, 0, t726, t727, t736, t702; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t781, 0, 0, 0, 0, 0, 0, t738, t739, 0, t704; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t775, t776, 0, t713, 0, 0, 0, 0, 0, 0, t740, t741, -t754, t705; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t776, -t775, 0, t712, 0, 0, 0, 0, 0, 0, t749, -t748, t759, -t710; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t781, 0, 0, 0, 0, 0, 0, t738, t739, 0, t704; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t765, t761, -t800, t709; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t760, t764, t801, t708; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t749, t748, -t759, t710;];
f_new_reg = t1;
