% Calculate vector of inverse dynamics joint torques and base forces with Newton-Euler
% S6RPRRRP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% qJDD [6x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d5,theta2]';
% m_mdh [7x1]
%   mass of all robot links (including the base)
% mrSges [7x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% Ifges [7x6]
%   inertia of all robot links about their respective body frame origins, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertial_parameters_convert_par1_par2.m)
% 
% Output:
% tauJB [(6+6)x1]
%   joint torques and base forces of inverse dynamics (contains inertial, gravitational coriolis and centrifugal forces)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-06 01:11
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauJB = S6RPRRRP1_invdynJB_fixb_snew_vp2(qJ, qJD, qJDD, g, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRP1_invdynJB_fixb_snew_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRRP1_invdynJB_fixb_snew_vp2: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRRRP1_invdynJB_fixb_snew_vp2: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRRRP1_invdynJB_fixb_snew_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRRP1_invdynJB_fixb_snew_vp2: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRRRP1_invdynJB_fixb_snew_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RPRRRP1_invdynJB_fixb_snew_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RPRRRP1_invdynJB_fixb_snew_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_linkframe_tauJB_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 01:08:12
% EndTime: 2019-05-06 01:08:20
% DurationCPUTime: 7.29s
% Computational Cost: add. (116698->321), mult. (227722->391), div. (0->0), fcn. (150318->10), ass. (0->131)
t889 = Ifges(6,1) + Ifges(7,1);
t882 = Ifges(6,4) - Ifges(7,5);
t881 = -Ifges(6,5) - Ifges(7,4);
t888 = Ifges(6,2) + Ifges(7,3);
t880 = Ifges(6,6) - Ifges(7,6);
t887 = -Ifges(6,3) - Ifges(7,2);
t846 = sin(qJ(4));
t847 = sin(qJ(3));
t849 = cos(qJ(4));
t850 = cos(qJ(3));
t813 = (t846 * t847 - t849 * t850) * qJD(1);
t848 = sin(qJ(1));
t851 = cos(qJ(1));
t827 = t848 * g(1) - g(2) * t851;
t818 = qJDD(1) * pkin(1) + t827;
t828 = -g(1) * t851 - g(2) * t848;
t852 = qJD(1) ^ 2;
t820 = -pkin(1) * t852 + t828;
t843 = sin(pkin(10));
t844 = cos(pkin(10));
t800 = t843 * t818 + t844 * t820;
t795 = -pkin(2) * t852 + qJDD(1) * pkin(7) + t800;
t842 = -g(3) + qJDD(2);
t781 = -t847 * t795 + t850 * t842;
t871 = qJD(1) * qJD(3);
t869 = t850 * t871;
t821 = qJDD(1) * t847 + t869;
t757 = (-t821 + t869) * pkin(8) + (t847 * t850 * t852 + qJDD(3)) * pkin(3) + t781;
t782 = t850 * t795 + t847 * t842;
t822 = qJDD(1) * t850 - t847 * t871;
t873 = qJD(1) * t847;
t826 = qJD(3) * pkin(3) - pkin(8) * t873;
t841 = t850 ^ 2;
t758 = -pkin(3) * t841 * t852 + pkin(8) * t822 - qJD(3) * t826 + t782;
t749 = t846 * t757 + t849 * t758;
t814 = (t846 * t850 + t847 * t849) * qJD(1);
t783 = -qJD(4) * t814 - t821 * t846 + t822 * t849;
t796 = mrSges(5,1) * t813 + mrSges(5,2) * t814;
t838 = qJD(3) + qJD(4);
t804 = mrSges(5,1) * t838 - mrSges(5,3) * t814;
t837 = qJDD(3) + qJDD(4);
t797 = pkin(4) * t813 - pkin(9) * t814;
t836 = t838 ^ 2;
t744 = -pkin(4) * t836 + pkin(9) * t837 - t797 * t813 + t749;
t799 = t844 * t818 - t843 * t820;
t860 = -qJDD(1) * pkin(2) - t799;
t767 = -t822 * pkin(3) + t826 * t873 + (-pkin(8) * t841 - pkin(7)) * t852 + t860;
t784 = -qJD(4) * t813 + t821 * t849 + t822 * t846;
t746 = (t813 * t838 - t784) * pkin(9) + (t814 * t838 - t783) * pkin(4) + t767;
t845 = sin(qJ(5));
t884 = cos(qJ(5));
t741 = t744 * t884 + t845 * t746;
t802 = t814 * t884 + t845 * t838;
t752 = t802 * qJD(5) + t845 * t784 - t837 * t884;
t780 = qJDD(5) - t783;
t806 = qJD(5) + t813;
t787 = mrSges(6,1) * t806 - mrSges(6,3) * t802;
t801 = t845 * t814 - t838 * t884;
t770 = pkin(5) * t801 - qJ(6) * t802;
t805 = t806 ^ 2;
t737 = -pkin(5) * t805 + qJ(6) * t780 + 0.2e1 * qJD(6) * t806 - t770 * t801 + t741;
t788 = -mrSges(7,1) * t806 + mrSges(7,2) * t802;
t870 = m(7) * t737 + t780 * mrSges(7,3) + t806 * t788;
t771 = mrSges(7,1) * t801 - mrSges(7,3) * t802;
t874 = -mrSges(6,1) * t801 - mrSges(6,2) * t802 - t771;
t883 = -mrSges(6,3) - mrSges(7,2);
t728 = m(6) * t741 - t780 * mrSges(6,2) + t752 * t883 - t806 * t787 + t801 * t874 + t870;
t740 = -t845 * t744 + t746 * t884;
t753 = -t801 * qJD(5) + t784 * t884 + t845 * t837;
t786 = -mrSges(6,2) * t806 - mrSges(6,3) * t801;
t738 = -t780 * pkin(5) - t805 * qJ(6) + t802 * t770 + qJDD(6) - t740;
t785 = -mrSges(7,2) * t801 + mrSges(7,3) * t806;
t863 = -m(7) * t738 + t780 * mrSges(7,1) + t806 * t785;
t730 = m(6) * t740 + t780 * mrSges(6,1) + t753 * t883 + t806 * t786 + t802 * t874 + t863;
t864 = t728 * t884 - t730 * t845;
t716 = m(5) * t749 - mrSges(5,2) * t837 + mrSges(5,3) * t783 - t796 * t813 - t804 * t838 + t864;
t748 = t849 * t757 - t846 * t758;
t803 = -mrSges(5,2) * t838 - mrSges(5,3) * t813;
t743 = -t837 * pkin(4) - t836 * pkin(9) + t814 * t797 - t748;
t739 = -0.2e1 * qJD(6) * t802 + (t801 * t806 - t753) * qJ(6) + (t802 * t806 + t752) * pkin(5) + t743;
t735 = m(7) * t739 + mrSges(7,1) * t752 - t753 * mrSges(7,3) + t785 * t801 - t802 * t788;
t855 = -m(6) * t743 - t752 * mrSges(6,1) - mrSges(6,2) * t753 - t801 * t786 - t787 * t802 - t735;
t725 = m(5) * t748 + mrSges(5,1) * t837 - mrSges(5,3) * t784 - t796 * t814 + t803 * t838 + t855;
t710 = t846 * t716 + t849 * t725;
t811 = Ifges(4,6) * qJD(3) + (Ifges(4,4) * t847 + Ifges(4,2) * t850) * qJD(1);
t812 = Ifges(4,5) * qJD(3) + (Ifges(4,1) * t847 + Ifges(4,4) * t850) * qJD(1);
t875 = t882 * t801 - t889 * t802 + t881 * t806;
t877 = t880 * t801 + t881 * t802 + t887 * t806;
t718 = -mrSges(6,1) * t743 - mrSges(7,1) * t739 + mrSges(7,2) * t737 + mrSges(6,3) * t741 - pkin(5) * t735 - t888 * t752 + t882 * t753 + t880 * t780 + t877 * t802 - t875 * t806;
t876 = t888 * t801 - t882 * t802 - t880 * t806;
t720 = mrSges(6,2) * t743 + mrSges(7,2) * t738 - mrSges(6,3) * t740 - mrSges(7,3) * t739 - qJ(6) * t735 - t882 * t752 + t889 * t753 - t881 * t780 + t877 * t801 + t876 * t806;
t791 = Ifges(5,4) * t814 - Ifges(5,2) * t813 + Ifges(5,6) * t838;
t792 = Ifges(5,1) * t814 - Ifges(5,4) * t813 + Ifges(5,5) * t838;
t857 = -mrSges(5,1) * t748 + mrSges(5,2) * t749 - Ifges(5,5) * t784 - Ifges(5,6) * t783 - Ifges(5,3) * t837 - pkin(4) * t855 - pkin(9) * t864 - t718 * t884 - t845 * t720 - t814 * t791 - t813 * t792;
t886 = mrSges(4,1) * t781 - mrSges(4,2) * t782 + Ifges(4,5) * t821 + Ifges(4,6) * t822 + Ifges(4,3) * qJDD(3) + pkin(3) * t710 + (t811 * t847 - t812 * t850) * qJD(1) - t857;
t734 = t753 * mrSges(7,2) + t802 * t771 - t863;
t885 = -t752 * t880 - t753 * t881 - t887 * t780 - t801 * t875 - t802 * t876 + mrSges(6,1) * t740 - mrSges(7,1) * t738 - mrSges(6,2) * t741 + mrSges(7,3) * t737 - pkin(5) * t734 + qJ(6) * (-t752 * mrSges(7,2) - t801 * t771 + t870);
t819 = (-mrSges(4,1) * t850 + mrSges(4,2) * t847) * qJD(1);
t872 = qJD(1) * t850;
t825 = -qJD(3) * mrSges(4,2) + mrSges(4,3) * t872;
t708 = m(4) * t781 + qJDD(3) * mrSges(4,1) - mrSges(4,3) * t821 + qJD(3) * t825 - t819 * t873 + t710;
t824 = qJD(3) * mrSges(4,1) - mrSges(4,3) * t873;
t865 = t849 * t716 - t725 * t846;
t709 = m(4) * t782 - qJDD(3) * mrSges(4,2) + mrSges(4,3) * t822 - qJD(3) * t824 + t819 * t872 + t865;
t866 = -t708 * t847 + t850 * t709;
t699 = m(3) * t800 - mrSges(3,1) * t852 - qJDD(1) * mrSges(3,2) + t866;
t794 = -t852 * pkin(7) + t860;
t722 = t845 * t728 + t730 * t884;
t859 = m(5) * t767 - t783 * mrSges(5,1) + mrSges(5,2) * t784 + t813 * t803 + t804 * t814 + t722;
t854 = -m(4) * t794 + t822 * mrSges(4,1) - mrSges(4,2) * t821 - t824 * t873 + t825 * t872 - t859;
t712 = m(3) * t799 + qJDD(1) * mrSges(3,1) - mrSges(3,2) * t852 + t854;
t696 = t843 * t699 + t844 * t712;
t693 = m(2) * t827 + qJDD(1) * mrSges(2,1) - mrSges(2,2) * t852 + t696;
t867 = t844 * t699 - t712 * t843;
t694 = m(2) * t828 - mrSges(2,1) * t852 - qJDD(1) * mrSges(2,2) + t867;
t878 = t851 * t693 + t848 * t694;
t702 = t850 * t708 + t847 * t709;
t700 = m(3) * t842 + t702;
t868 = -t693 * t848 + t851 * t694;
t790 = Ifges(5,5) * t814 - Ifges(5,6) * t813 + Ifges(5,3) * t838;
t703 = mrSges(5,2) * t767 - mrSges(5,3) * t748 + Ifges(5,1) * t784 + Ifges(5,4) * t783 + Ifges(5,5) * t837 - pkin(9) * t722 - t845 * t718 + t720 * t884 - t813 * t790 - t838 * t791;
t704 = -mrSges(5,1) * t767 + mrSges(5,3) * t749 + Ifges(5,4) * t784 + Ifges(5,2) * t783 + Ifges(5,6) * t837 - pkin(4) * t722 - t814 * t790 + t838 * t792 - t885;
t810 = Ifges(4,3) * qJD(3) + (Ifges(4,5) * t847 + Ifges(4,6) * t850) * qJD(1);
t687 = -mrSges(4,1) * t794 + mrSges(4,3) * t782 + Ifges(4,4) * t821 + Ifges(4,2) * t822 + Ifges(4,6) * qJDD(3) - pkin(3) * t859 + pkin(8) * t865 + qJD(3) * t812 + t846 * t703 + t849 * t704 - t810 * t873;
t689 = mrSges(4,2) * t794 - mrSges(4,3) * t781 + Ifges(4,1) * t821 + Ifges(4,4) * t822 + Ifges(4,5) * qJDD(3) - pkin(8) * t710 - qJD(3) * t811 + t703 * t849 - t704 * t846 + t810 * t872;
t858 = mrSges(2,1) * t827 + mrSges(3,1) * t799 - mrSges(2,2) * t828 - mrSges(3,2) * t800 + pkin(1) * t696 + pkin(2) * t854 + pkin(7) * t866 + t850 * t687 + t847 * t689 + (Ifges(2,3) + Ifges(3,3)) * qJDD(1);
t685 = -mrSges(3,1) * t842 + mrSges(3,3) * t800 + t852 * Ifges(3,5) + Ifges(3,6) * qJDD(1) - pkin(2) * t702 - t886;
t684 = mrSges(3,2) * t842 - mrSges(3,3) * t799 + Ifges(3,5) * qJDD(1) - Ifges(3,6) * t852 - pkin(7) * t702 - t687 * t847 + t689 * t850;
t683 = -mrSges(2,2) * g(3) - mrSges(2,3) * t827 + Ifges(2,5) * qJDD(1) - Ifges(2,6) * t852 - qJ(2) * t696 + t684 * t844 - t685 * t843;
t682 = mrSges(2,1) * g(3) + mrSges(2,3) * t828 + t852 * Ifges(2,5) + Ifges(2,6) * qJDD(1) - pkin(1) * t700 + qJ(2) * t867 + t843 * t684 + t844 * t685;
t1 = [-m(1) * g(1) + t868; -m(1) * g(2) + t878; (-m(1) - m(2)) * g(3) + t700; -mrSges(1,2) * g(3) + mrSges(1,3) * g(2) - pkin(6) * t878 - t848 * t682 + t851 * t683; mrSges(1,1) * g(3) - mrSges(1,3) * g(1) + pkin(6) * t868 + t851 * t682 + t848 * t683; -mrSges(1,1) * g(2) + mrSges(1,2) * g(1) + t858; t858; t700; t886; -t857; t885; t734;];
tauJB  = t1;
