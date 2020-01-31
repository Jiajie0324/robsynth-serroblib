% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S5RRPRP4
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
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d4]';
%
% Output:
% f_new_reg [(3*6)x(6*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 19:53
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S5RRPRP4_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRP4_invdynf_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPRP4_invdynf_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RRPRP4_invdynf_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRPRP4_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S5RRPRP4_invdynf_fixb_reg2_snew_vp: pkin has to be [7x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 19:53:09
% EndTime: 2019-12-31 19:53:11
% DurationCPUTime: 1.43s
% Computational Cost: add. (2272->158), mult. (3040->145), div. (0->0), fcn. (1586->6), ass. (0->83)
t956 = (qJD(1) + qJD(2));
t954 = t956 ^ 2;
t959 = sin(qJ(4));
t962 = cos(qJ(4));
t973 = t959 * t954 * t962;
t938 = qJDD(4) + t973;
t958 = t962 ^ 2;
t965 = qJD(4) ^ 2;
t943 = t958 * t954 + t965;
t919 = t959 * t938 + t962 * t943;
t974 = qJD(4) * t956;
t955 = qJDD(1) + qJDD(2);
t977 = t962 * t955;
t928 = -0.2e1 * t959 * t974 + t977;
t960 = sin(qJ(2));
t963 = cos(qJ(2));
t906 = t963 * t919 + t960 * t928;
t910 = t960 * t919 - t963 * t928;
t961 = sin(qJ(1));
t964 = cos(qJ(1));
t985 = t964 * t906 - t961 * t910;
t984 = t961 * t906 + t964 * t910;
t931 = t963 * t954 + t960 * t955;
t933 = t960 * t954 - t963 * t955;
t969 = t964 * t931 - t961 * t933;
t972 = t961 * t931 + t964 * t933;
t983 = 2 * qJD(4);
t982 = 2 * qJD(3);
t981 = t959 * g(3);
t970 = t959 * pkin(4) - t962 * qJ(5);
t980 = t970 * t954;
t979 = t959 * t955;
t957 = t959 ^ 2;
t975 = t957 + t958;
t944 = t961 * g(1) - t964 * g(2);
t936 = qJDD(1) * pkin(1) + t944;
t945 = -t964 * g(1) - t961 * g(2);
t966 = qJD(1) ^ 2;
t937 = -t966 * pkin(1) + t945;
t916 = t963 * t936 - t960 * t937;
t913 = -t955 * pkin(2) - t954 * qJ(3) + qJDD(3) - t916;
t911 = -t955 * pkin(7) + t913;
t902 = -t962 * g(3) + t959 * t911;
t917 = t960 * t936 + t963 * t937;
t922 = t962 * t938 - t959 * t943;
t967 = -t954 * pkin(2) + t917;
t912 = t955 * qJ(3) + (t956 * t982) + t967;
t951 = t954 * pkin(7);
t942 = -t957 * t954 - t965;
t941 = -t961 * qJDD(1) - t964 * t966;
t940 = t964 * qJDD(1) - t961 * t966;
t939 = qJDD(4) - t973;
t935 = t975 * t954;
t930 = t975 * t955;
t927 = 0.2e1 * t962 * t974 + t979;
t921 = -t959 * t939 + t962 * t942;
t918 = t962 * t939 + t959 * t942;
t915 = -t960 * t930 - t963 * t935;
t914 = t963 * t930 - t960 * t935;
t908 = t960 * t918 + t963 * t927;
t905 = -t963 * t918 + t960 * t927;
t903 = t912 - t951;
t901 = t962 * t911 + t981;
t900 = -t960 * t916 + t963 * t917;
t899 = t963 * t916 + t960 * t917;
t898 = -t961 * t914 + t964 * t915;
t897 = t964 * t914 + t961 * t915;
t896 = qJDD(4) * pkin(4) + t981 + t965 * qJ(5) - qJDD(5) + (t911 - t980) * t962;
t895 = -t965 * pkin(4) + qJDD(4) * qJ(5) + (qJD(5) * t983) - t959 * t980 + t902;
t894 = t963 * t912 + t960 * t913;
t893 = t960 * t912 - t963 * t913;
t892 = -t961 * t905 + t964 * t908;
t891 = t964 * t905 + t961 * t908;
t890 = -t951 + (qJ(3) + t970) * t955 + (-0.2e1 * qJD(5) * t962 + t982 + (pkin(4) * t962 + qJ(5) * t959) * t983) * t956 + t967;
t889 = -t959 * t901 + t962 * t902;
t888 = t962 * t901 + t959 * t902;
t887 = t960 * t888 + t963 * t903;
t886 = -t963 * t888 + t960 * t903;
t885 = t962 * t895 - t959 * t896;
t884 = t959 * t895 + t962 * t896;
t883 = t960 * t884 + t963 * t890;
t882 = -t963 * t884 + t960 * t890;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t941, -t940, 0, -t961 * t944 + t964 * t945, 0, 0, 0, 0, 0, 0, -t969, t972, 0, -t961 * t899 + t964 * t900, 0, 0, 0, 0, 0, 0, 0, t969, -t972, -t961 * t893 + t964 * t894, 0, 0, 0, 0, 0, 0, t892, -t984, t898, -t961 * t886 + t964 * t887, 0, 0, 0, 0, 0, 0, t892, t898, t984, -t961 * t882 + t964 * t883; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t940, t941, 0, t964 * t944 + t961 * t945, 0, 0, 0, 0, 0, 0, -t972, -t969, 0, t964 * t899 + t961 * t900, 0, 0, 0, 0, 0, 0, 0, t972, t969, t964 * t893 + t961 * t894, 0, 0, 0, 0, 0, 0, t891, t985, t897, t964 * t886 + t961 * t887, 0, 0, 0, 0, 0, 0, t891, t897, -t985, t964 * t882 + t961 * t883; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t921, -t922, 0, t889, 0, 0, 0, 0, 0, 0, t921, 0, t922, t885; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t966, -qJDD(1), 0, t945, 0, 0, 0, 0, 0, 0, -t931, t933, 0, t900, 0, 0, 0, 0, 0, 0, 0, t931, -t933, t894, 0, 0, 0, 0, 0, 0, t908, -t910, t915, t887, 0, 0, 0, 0, 0, 0, t908, t915, t910, t883; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t966, 0, t944, 0, 0, 0, 0, 0, 0, -t933, -t931, 0, t899, 0, 0, 0, 0, 0, 0, 0, t933, t931, t893, 0, 0, 0, 0, 0, 0, t905, t906, t914, t886, 0, 0, 0, 0, 0, 0, t905, t914, -t906, t882; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t921, -t922, 0, t889, 0, 0, 0, 0, 0, 0, t921, 0, t922, t885; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t954, -t955, 0, t917, 0, 0, 0, 0, 0, 0, 0, t954, t955, t912, 0, 0, 0, 0, 0, 0, t927, t928, -t935, t903, 0, 0, 0, 0, 0, 0, t927, -t935, -t928, t890; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t955, -t954, 0, t916, 0, 0, 0, 0, 0, 0, 0, -t955, t954, -t913, 0, 0, 0, 0, 0, 0, -t918, t919, t930, -t888, 0, 0, 0, 0, 0, 0, -t918, t930, -t919, -t884; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t921, -t922, 0, t889, 0, 0, 0, 0, 0, 0, t921, 0, t922, t885; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t921, -t922, 0, t889, 0, 0, 0, 0, 0, 0, t921, 0, t922, t885; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t954, -t955, -t912, 0, 0, 0, 0, 0, 0, -t927, -t928, t935, -t903, 0, 0, 0, 0, 0, 0, -t927, t935, t928, -t890; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t955, -t954, t913, 0, 0, 0, 0, 0, 0, t918, -t919, -t930, t888, 0, 0, 0, 0, 0, 0, t918, -t930, t919, t884; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t942, -t938, -t979, t902, 0, 0, 0, 0, 0, 0, t942, -t979, t938, t895; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t939, -t943, -t977, t901, 0, 0, 0, 0, 0, 0, t939, -t977, t943, t896; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t927, t928, -t935, t903, 0, 0, 0, 0, 0, 0, t927, -t935, -t928, t890; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t942, -t979, t938, t895; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t927, -t935, -t928, t890; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t939, t977, -t943, -t896;];
f_new_reg = t1;