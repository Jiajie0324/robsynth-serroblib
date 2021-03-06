% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S5RPRRR8
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
%   pkin=[a2,a3,a4,a5,d1,d3,d4,d5]';
%
% Output:
% f_new_reg [(3*6)x(6*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 19:06
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S5RPRRR8_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRR8_invdynf_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRR8_invdynf_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPRRR8_invdynf_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPRRR8_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPRRR8_invdynf_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 19:06:27
% EndTime: 2019-12-31 19:06:29
% DurationCPUTime: 1.59s
% Computational Cost: add. (6940->196), mult. (9241->210), div. (0->0), fcn. (4985->8), ass. (0->123)
t980 = qJD(4) + qJD(5);
t1019 = qJD(5) + t980;
t981 = -qJD(1) + qJD(3);
t978 = t981 ^ 2;
t979 = qJDD(1) - qJDD(3);
t987 = sin(qJ(3));
t991 = cos(qJ(3));
t1001 = -t991 * t978 + t987 * t979;
t988 = sin(qJ(1));
t992 = cos(qJ(1));
t999 = t987 * t978 + t991 * t979;
t1018 = t1001 * t992 - t988 * t999;
t1017 = t1001 * t988 + t992 * t999;
t986 = sin(qJ(4));
t1011 = t981 * t986;
t985 = sin(qJ(5));
t989 = cos(qJ(5));
t990 = cos(qJ(4));
t942 = -t989 * t990 * t981 + t985 * t1011;
t1016 = t942 ^ 2;
t944 = (t985 * t990 + t986 * t989) * t981;
t1015 = t944 ^ 2;
t1014 = t980 ^ 2;
t1013 = -pkin(1) - pkin(2);
t1012 = t944 * t942;
t984 = t990 ^ 2;
t1010 = t984 * t978;
t1009 = t986 * t979;
t994 = qJD(1) ^ 2;
t968 = -t992 * g(1) - t988 * g(2);
t998 = qJDD(1) * qJ(2) + (2 * qJD(2) * qJD(1)) + t968;
t941 = t1013 * t994 + t998;
t967 = t988 * g(1) - t992 * g(2);
t997 = -t994 * qJ(2) + qJDD(2) - t967;
t995 = t1013 * qJDD(1) + t997;
t926 = t991 * t941 + t987 * t995;
t920 = -t978 * pkin(3) - t979 * pkin(7) + t926;
t916 = t986 * g(3) + t990 * t920;
t983 = t986 ^ 2;
t1008 = t983 + t984;
t1007 = qJD(4) * t981;
t1006 = qJD(5) - t980;
t966 = t990 * t978 * t986;
t958 = qJDD(4) + t966;
t1005 = -qJDD(4) - qJDD(5);
t1004 = t986 * t1007;
t1003 = t990 * t1007;
t915 = t990 * g(3) - t986 * t920;
t925 = -t987 * t941 + t991 * t995;
t971 = t990 * t979;
t1000 = t971 + t1004;
t950 = t1003 - t1009;
t1002 = -t989 * t1000 - t985 * t950;
t919 = t979 * pkin(3) - t978 * pkin(7) - t925;
t996 = t985 * t1000 - t989 * t950;
t993 = qJD(4) ^ 2;
t964 = -t993 - t1010;
t963 = -t983 * t978 - t993;
t962 = t992 * qJDD(1) - t988 * t994;
t961 = t988 * qJDD(1) + t992 * t994;
t960 = qJD(4) * pkin(4) - pkin(8) * t1011;
t959 = -qJDD(4) + t966;
t957 = t1008 * t978;
t952 = t1008 * t979;
t951 = -t971 - 0.2e1 * t1004;
t949 = 0.2e1 * t1003 - t1009;
t948 = qJDD(1) * pkin(1) - t997;
t946 = -t994 * pkin(1) + t998;
t936 = -t1014 - t1015;
t935 = t990 * t959 - t986 * t963;
t934 = -t986 * t958 + t990 * t964;
t933 = t986 * t959 + t990 * t963;
t932 = t990 * t958 + t986 * t964;
t931 = -t991 * t952 - t987 * t957;
t930 = -t987 * t952 + t991 * t957;
t929 = t1005 - t1012;
t928 = -t1005 - t1012;
t927 = -t1014 - t1016;
t924 = t991 * t935 + t987 * t949;
t923 = t991 * t934 - t987 * t951;
t922 = t987 * t935 - t991 * t949;
t921 = t987 * t934 + t991 * t951;
t918 = -t1015 - t1016;
t914 = t989 * t929 - t985 * t936;
t913 = t985 * t929 + t989 * t936;
t912 = t1006 * t942 + t996;
t911 = -t1019 * t942 - t996;
t910 = -t1006 * t944 + t1002;
t909 = t1019 * t944 - t1002;
t908 = t989 * t927 - t985 * t928;
t907 = t985 * t927 + t989 * t928;
t906 = t1000 * pkin(4) - pkin(8) * t1010 + t960 * t1011 + t919;
t905 = -t987 * t925 + t991 * t926;
t904 = t991 * t925 + t987 * t926;
t903 = -pkin(4) * t1010 - t1000 * pkin(8) - qJD(4) * t960 + t916;
t902 = (-t950 + t1003) * pkin(8) + t958 * pkin(4) + t915;
t901 = -t986 * t915 + t990 * t916;
t900 = t990 * t915 + t986 * t916;
t899 = -t986 * t913 + t990 * t914;
t898 = t990 * t913 + t986 * t914;
t897 = t989 * t910 - t985 * t912;
t896 = t985 * t910 + t989 * t912;
t895 = -t986 * t907 + t990 * t908;
t894 = t990 * t907 + t986 * t908;
t893 = t991 * t901 + t987 * t919;
t892 = t987 * t901 - t991 * t919;
t891 = t985 * t902 + t989 * t903;
t890 = t989 * t902 - t985 * t903;
t889 = t991 * t899 + t987 * t911;
t888 = t987 * t899 - t991 * t911;
t887 = t991 * t895 + t987 * t909;
t886 = t987 * t895 - t991 * t909;
t885 = -t986 * t896 + t990 * t897;
t884 = t990 * t896 + t986 * t897;
t883 = t991 * t885 + t987 * t918;
t882 = t987 * t885 - t991 * t918;
t881 = -t985 * t890 + t989 * t891;
t880 = t989 * t890 + t985 * t891;
t879 = -t986 * t880 + t990 * t881;
t878 = t990 * t880 + t986 * t881;
t877 = t991 * t879 + t987 * t906;
t876 = t987 * t879 - t991 * t906;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t961, -t962, 0, -t988 * t967 + t992 * t968, 0, 0, 0, 0, 0, 0, -t961, 0, t962, t992 * t946 - t988 * t948, 0, 0, 0, 0, 0, 0, t1018, t1017, 0, t988 * t904 + t992 * t905, 0, 0, 0, 0, 0, 0, t988 * t921 + t992 * t923, t988 * t922 + t992 * t924, t988 * t930 + t992 * t931, t988 * t892 + t992 * t893, 0, 0, 0, 0, 0, 0, t988 * t886 + t992 * t887, t988 * t888 + t992 * t889, t988 * t882 + t992 * t883, t988 * t876 + t992 * t877; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t962, -t961, 0, t992 * t967 + t988 * t968, 0, 0, 0, 0, 0, 0, t962, 0, t961, t988 * t946 + t992 * t948, 0, 0, 0, 0, 0, 0, t1017, -t1018, 0, -t992 * t904 + t988 * t905, 0, 0, 0, 0, 0, 0, -t992 * t921 + t988 * t923, -t992 * t922 + t988 * t924, -t992 * t930 + t988 * t931, -t992 * t892 + t988 * t893, 0, 0, 0, 0, 0, 0, -t992 * t886 + t988 * t887, -t992 * t888 + t988 * t889, -t992 * t882 + t988 * t883, -t992 * t876 + t988 * t877; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, -t932, -t933, 0, -t900, 0, 0, 0, 0, 0, 0, -t894, -t898, -t884, -t878; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t994, -qJDD(1), 0, t968, 0, 0, 0, 0, 0, 0, -t994, 0, qJDD(1), t946, 0, 0, 0, 0, 0, 0, t1001, t999, 0, t905, 0, 0, 0, 0, 0, 0, t923, t924, t931, t893, 0, 0, 0, 0, 0, 0, t887, t889, t883, t877; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t994, 0, t967, 0, 0, 0, 0, 0, 0, qJDD(1), 0, t994, t948, 0, 0, 0, 0, 0, 0, t999, -t1001, 0, -t904, 0, 0, 0, 0, 0, 0, -t921, -t922, -t930, -t892, 0, 0, 0, 0, 0, 0, -t886, -t888, -t882, -t876; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, -t932, -t933, 0, -t900, 0, 0, 0, 0, 0, 0, -t894, -t898, -t884, -t878; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t994, 0, qJDD(1), t946, 0, 0, 0, 0, 0, 0, t1001, t999, 0, t905, 0, 0, 0, 0, 0, 0, t923, t924, t931, t893, 0, 0, 0, 0, 0, 0, t887, t889, t883, t877; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, -t932, -t933, 0, -t900, 0, 0, 0, 0, 0, 0, -t894, -t898, -t884, -t878; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJDD(1), 0, -t994, -t948, 0, 0, 0, 0, 0, 0, -t999, t1001, 0, t904, 0, 0, 0, 0, 0, 0, t921, t922, t930, t892, 0, 0, 0, 0, 0, 0, t886, t888, t882, t876; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t978, t979, 0, t926, 0, 0, 0, 0, 0, 0, t934, t935, -t952, t901, 0, 0, 0, 0, 0, 0, t895, t899, t885, t879; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t979, -t978, 0, t925, 0, 0, 0, 0, 0, 0, t951, -t949, t957, -t919, 0, 0, 0, 0, 0, 0, -t909, -t911, -t918, -t906; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, g(3), 0, 0, 0, 0, 0, 0, t932, t933, 0, t900, 0, 0, 0, 0, 0, 0, t894, t898, t884, t878; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t964, t959, -t971, t916, 0, 0, 0, 0, 0, 0, t908, t914, t897, t881; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t958, t963, t1009, t915, 0, 0, 0, 0, 0, 0, t907, t913, t896, t880; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t951, t949, -t957, t919, 0, 0, 0, 0, 0, 0, t909, t911, t918, t906; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t927, t929, t910, t891; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t928, t936, t912, t890; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t909, t911, t918, t906;];
f_new_reg = t1;
