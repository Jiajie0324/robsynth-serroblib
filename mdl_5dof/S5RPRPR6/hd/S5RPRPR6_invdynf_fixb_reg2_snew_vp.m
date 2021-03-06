% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S5RPRPR6
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
%   pkin=[a2,a3,a4,a5,d1,d3,d5,theta2]';
%
% Output:
% f_new_reg [(3*6)x(6*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 18:18
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S5RPRPR6_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRPR6_invdynf_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRPR6_invdynf_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPRPR6_invdynf_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPRPR6_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPRPR6_invdynf_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 18:18:04
% EndTime: 2019-12-31 18:18:05
% DurationCPUTime: 1.57s
% Computational Cost: add. (3228->136), mult. (4798->165), div. (0->0), fcn. (2800->8), ass. (0->90)
t904 = (qJD(1) + qJD(3));
t902 = t904 ^ 2;
t903 = qJDD(1) + qJDD(3);
t911 = sin(qJ(3));
t914 = cos(qJ(3));
t878 = t914 * t902 + t911 * t903;
t881 = t911 * t902 - t914 * t903;
t908 = sin(pkin(8));
t909 = cos(pkin(8));
t852 = t909 * t878 - t908 * t881;
t912 = sin(qJ(1));
t915 = cos(qJ(1));
t920 = t908 * t878 + t909 * t881;
t933 = t915 * t852 - t912 * t920;
t932 = t912 * t852 + t915 * t920;
t910 = sin(qJ(5));
t926 = t910 * t903;
t913 = cos(qJ(5));
t925 = t913 * t903;
t894 = t912 * g(1) - t915 * g(2);
t884 = qJDD(1) * pkin(1) + t894;
t895 = -t915 * g(1) - t912 * g(2);
t917 = qJD(1) ^ 2;
t885 = -t917 * pkin(1) + t895;
t865 = t908 * t884 + t909 * t885;
t905 = t910 ^ 2;
t906 = t913 ^ 2;
t924 = t905 + t906;
t923 = qJD(5) * t904;
t922 = t910 * t902 * t913;
t864 = t909 * t884 - t908 * t885;
t862 = qJDD(1) * pkin(2) + t864;
t863 = -t917 * pkin(2) + t865;
t843 = t914 * t862 - t911 * t863;
t888 = -t908 * qJDD(1) - t909 * t917;
t889 = t909 * qJDD(1) - t908 * t917;
t919 = t915 * t888 - t912 * t889;
t844 = t911 * t862 + t914 * t863;
t918 = t912 * t888 + t915 * t889;
t840 = -t903 * pkin(3) - t902 * qJ(4) + qJDD(4) - t843;
t839 = -t902 * pkin(3) + t903 * qJ(4) + (2 * qJD(4) * t904) + t844;
t916 = qJD(5) ^ 2;
t907 = -g(3) + qJDD(2);
t893 = -t906 * t902 - t916;
t892 = -t905 * t902 - t916;
t891 = -t912 * qJDD(1) - t915 * t917;
t890 = t915 * qJDD(1) - t912 * t917;
t887 = -qJDD(5) - t922;
t886 = qJDD(5) - t922;
t882 = t924 * t902;
t877 = t924 * t903;
t873 = -0.2e1 * t910 * t923 + t925;
t872 = 0.2e1 * t913 * t923 + t926;
t869 = t913 * t887 - t910 * t893;
t868 = -t910 * t886 + t913 * t892;
t867 = t910 * t887 + t913 * t893;
t866 = t913 * t886 + t910 * t892;
t861 = -t911 * t877 - t914 * t882;
t860 = t914 * t877 - t911 * t882;
t850 = t911 * t867 + t914 * t873;
t849 = t911 * t866 + t914 * t872;
t848 = -t914 * t867 + t911 * t873;
t847 = -t914 * t866 + t911 * t872;
t846 = -t908 * t864 + t909 * t865;
t845 = t909 * t864 + t908 * t865;
t842 = -t908 * t860 + t909 * t861;
t841 = t909 * t860 + t908 * t861;
t838 = -t903 * pkin(7) + t840;
t837 = -t902 * pkin(7) + t839;
t836 = t910 * t838 + t913 * t907;
t835 = t913 * t838 - t910 * t907;
t834 = -t908 * t848 + t909 * t850;
t833 = -t908 * t847 + t909 * t849;
t832 = t909 * t848 + t908 * t850;
t831 = t909 * t847 + t908 * t849;
t830 = -t911 * t843 + t914 * t844;
t829 = t914 * t843 + t911 * t844;
t828 = t914 * t839 + t911 * t840;
t827 = t911 * t839 - t914 * t840;
t826 = -t910 * t835 + t913 * t836;
t825 = t913 * t835 + t910 * t836;
t824 = t911 * t825 + t914 * t837;
t823 = -t914 * t825 + t911 * t837;
t822 = -t908 * t829 + t909 * t830;
t821 = t909 * t829 + t908 * t830;
t820 = -t908 * t827 + t909 * t828;
t819 = t909 * t827 + t908 * t828;
t818 = -t908 * t823 + t909 * t824;
t817 = t909 * t823 + t908 * t824;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t891, -t890, 0, -t912 * t894 + t915 * t895, 0, 0, 0, 0, 0, 0, t919, -t918, 0, -t912 * t845 + t915 * t846, 0, 0, 0, 0, 0, 0, -t933, t932, 0, -t912 * t821 + t915 * t822, 0, 0, 0, 0, 0, 0, 0, t933, -t932, -t912 * t819 + t915 * t820, 0, 0, 0, 0, 0, 0, -t912 * t831 + t915 * t833, -t912 * t832 + t915 * t834, -t912 * t841 + t915 * t842, -t912 * t817 + t915 * t818; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t890, t891, 0, t915 * t894 + t912 * t895, 0, 0, 0, 0, 0, 0, t918, t919, 0, t915 * t845 + t912 * t846, 0, 0, 0, 0, 0, 0, -t932, -t933, 0, t915 * t821 + t912 * t822, 0, 0, 0, 0, 0, 0, 0, t932, t933, t915 * t819 + t912 * t820, 0, 0, 0, 0, 0, 0, t915 * t831 + t912 * t833, t915 * t832 + t912 * t834, t915 * t841 + t912 * t842, t915 * t817 + t912 * t818; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t907, 0, 0, 0, 0, 0, 0, 0, 0, 0, t907, 0, 0, 0, 0, 0, 0, 0, 0, 0, t907, 0, 0, 0, 0, 0, 0, t868, t869, 0, t826; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t917, -qJDD(1), 0, t895, 0, 0, 0, 0, 0, 0, t888, -t889, 0, t846, 0, 0, 0, 0, 0, 0, -t852, t920, 0, t822, 0, 0, 0, 0, 0, 0, 0, t852, -t920, t820, 0, 0, 0, 0, 0, 0, t833, t834, t842, t818; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t917, 0, t894, 0, 0, 0, 0, 0, 0, t889, t888, 0, t845, 0, 0, 0, 0, 0, 0, -t920, -t852, 0, t821, 0, 0, 0, 0, 0, 0, 0, t920, t852, t819, 0, 0, 0, 0, 0, 0, t831, t832, t841, t817; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t907, 0, 0, 0, 0, 0, 0, 0, 0, 0, t907, 0, 0, 0, 0, 0, 0, 0, 0, 0, t907, 0, 0, 0, 0, 0, 0, t868, t869, 0, t826; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t917, -qJDD(1), 0, t865, 0, 0, 0, 0, 0, 0, -t878, t881, 0, t830, 0, 0, 0, 0, 0, 0, 0, t878, -t881, t828, 0, 0, 0, 0, 0, 0, t849, t850, t861, t824; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t917, 0, t864, 0, 0, 0, 0, 0, 0, -t881, -t878, 0, t829, 0, 0, 0, 0, 0, 0, 0, t881, t878, t827, 0, 0, 0, 0, 0, 0, t847, t848, t860, t823; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t907, 0, 0, 0, 0, 0, 0, 0, 0, 0, t907, 0, 0, 0, 0, 0, 0, 0, 0, 0, t907, 0, 0, 0, 0, 0, 0, t868, t869, 0, t826; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t902, -t903, 0, t844, 0, 0, 0, 0, 0, 0, 0, t902, t903, t839, 0, 0, 0, 0, 0, 0, t872, t873, -t882, t837; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t903, -t902, 0, t843, 0, 0, 0, 0, 0, 0, 0, -t903, t902, -t840, 0, 0, 0, 0, 0, 0, -t866, -t867, t877, -t825; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t907, 0, 0, 0, 0, 0, 0, 0, 0, 0, t907, 0, 0, 0, 0, 0, 0, t868, t869, 0, t826; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t907, 0, 0, 0, 0, 0, 0, t868, t869, 0, t826; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t902, -t903, -t839, 0, 0, 0, 0, 0, 0, -t872, -t873, t882, -t837; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t903, -t902, t840, 0, 0, 0, 0, 0, 0, t866, t867, -t877, t825; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t892, t887, -t926, t836; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t886, t893, -t925, t835; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t872, t873, -t882, t837;];
f_new_reg = t1;
