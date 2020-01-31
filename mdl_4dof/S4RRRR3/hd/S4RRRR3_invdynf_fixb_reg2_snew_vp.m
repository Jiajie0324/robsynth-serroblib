% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S4RRRR3
% Use Code from Maple symbolic Code Generation
%
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% qJDD [4x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d2,d3,d4]';
%
% Output:
% f_new_reg [(3*5)x(5*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 17:24
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S4RRRR3_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(4,1),zeros(3,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RRRR3_invdynf_fixb_reg2_snew_vp: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RRRR3_invdynf_fixb_reg2_snew_vp: qJD has to be [4x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [4 1]), ...
  'S4RRRR3_invdynf_fixb_reg2_snew_vp: qJDD has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4RRRR3_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4RRRR3_invdynf_fixb_reg2_snew_vp: pkin has to be [7x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:24:55
% EndTime: 2019-12-31 17:24:56
% DurationCPUTime: 1.56s
% Computational Cost: add. (7530->179), mult. (16534->246), div. (0->0), fcn. (11499->8), ass. (0->145)
t1031 = qJD(2) + qJD(3);
t1028 = qJD(4) + t1031;
t1072 = qJD(4) + t1028;
t1035 = sin(qJ(3));
t1039 = cos(qJ(3));
t1040 = cos(qJ(2));
t1064 = qJD(1) * t1040;
t1036 = sin(qJ(2));
t1065 = qJD(1) * t1036;
t1004 = t1035 * t1065 - t1039 * t1064;
t1006 = (t1035 * t1040 + t1036 * t1039) * qJD(1);
t1034 = sin(qJ(4));
t1038 = cos(qJ(4));
t987 = t1038 * t1004 + t1034 * t1006;
t1071 = t987 ^ 2;
t989 = -t1034 * t1004 + t1038 * t1006;
t1070 = t989 ^ 2;
t1003 = t1004 ^ 2;
t1069 = t1006 ^ 2;
t1068 = t1028 ^ 2;
t1067 = t1031 ^ 2;
t1066 = t989 * t987;
t1052 = qJD(2) * t1064;
t1055 = t1036 * qJDD(1);
t1012 = t1052 + t1055;
t1043 = qJD(1) ^ 2;
t1059 = t1036 * t1043;
t1037 = sin(qJ(1));
t1041 = cos(qJ(1));
t1022 = -t1041 * g(1) - t1037 * g(2);
t1008 = -t1043 * pkin(1) + qJDD(1) * pkin(5) + t1022;
t1060 = t1036 * t1008;
t975 = qJDD(2) * pkin(2) - t1012 * pkin(6) - t1060 + (qJD(2) * pkin(6) * qJD(1) + pkin(2) * t1059 - g(3)) * t1040;
t1029 = t1040 * qJDD(1);
t1053 = qJD(2) * t1065;
t1013 = t1029 - t1053;
t1045 = qJD(2) * pkin(2) - pkin(6) * t1065;
t1033 = t1040 ^ 2;
t1061 = t1033 * t1043;
t999 = -t1036 * g(3) + t1040 * t1008;
t978 = -pkin(2) * t1061 + t1013 * pkin(6) - qJD(2) * t1045 + t999;
t960 = t1035 * t975 + t1039 * t978;
t1063 = t1006 * t1004;
t1062 = t1031 * t1004;
t1058 = qJD(3) - t1031;
t1057 = qJD(4) - t1028;
t1032 = t1036 ^ 2;
t1056 = t1032 + t1033;
t1054 = qJDD(2) + qJDD(3);
t1021 = t1037 * g(1) - t1041 * g(2);
t1049 = t1035 * t1012 - t1039 * t1013;
t981 = -t1006 * qJD(3) - t1049;
t1046 = -t1039 * t1012 - t1035 * t1013;
t982 = -t1004 * qJD(3) - t1046;
t1051 = -t1034 * t982 + t1038 * t981;
t959 = -t1035 * t978 + t1039 * t975;
t1050 = -qJDD(4) - t1054;
t1048 = t1031 * pkin(3) - t1006 * pkin(7);
t1047 = -t1034 * t981 - t1038 * t982;
t991 = t1054 - t1063;
t1044 = qJDD(1) * pkin(1) + t1021;
t984 = t1013 * pkin(2) - t1045 * t1065 + (pkin(6) * t1033 + pkin(5)) * t1043 + t1044;
t1042 = qJD(2) ^ 2;
t1026 = t1040 * t1059;
t1024 = -t1042 - t1061;
t1023 = -t1032 * t1043 - t1042;
t1020 = -qJDD(2) + t1026;
t1019 = qJDD(2) + t1026;
t1018 = t1056 * t1043;
t1017 = -t1037 * qJDD(1) - t1041 * t1043;
t1016 = t1041 * qJDD(1) - t1037 * t1043;
t1015 = t1056 * qJDD(1);
t1014 = t1029 - 0.2e1 * t1053;
t1011 = 0.2e1 * t1052 + t1055;
t1007 = t1043 * pkin(5) + t1044;
t998 = -t1040 * g(3) - t1060;
t997 = -t1067 - t1069;
t996 = t1040 * t1020 - t1036 * t1023;
t995 = -t1036 * t1019 + t1040 * t1024;
t994 = t1036 * t1020 + t1040 * t1023;
t993 = t1040 * t1019 + t1036 * t1024;
t992 = -t1054 - t1063;
t990 = -t1067 - t1003;
t983 = -t1003 - t1069;
t980 = -t1068 - t1070;
t977 = -t1036 * t998 + t1040 * t999;
t976 = t1036 * t999 + t1040 * t998;
t971 = -t1035 * t997 + t1039 * t992;
t970 = t1035 * t992 + t1039 * t997;
t969 = t1058 * t1004 + t1046;
t968 = t982 - t1062;
t967 = -t1058 * t1006 - t1049;
t966 = (qJD(3) + t1031) * t1006 + t1049;
t965 = -t1035 * t991 + t1039 * t990;
t964 = t1035 * t990 + t1039 * t991;
t963 = t1050 - t1066;
t962 = -t1050 - t1066;
t961 = -t1068 - t1071;
t958 = -t1070 - t1071;
t957 = -t1034 * t980 + t1038 * t963;
t956 = t1034 * t963 + t1038 * t980;
t955 = -t1036 * t970 + t1040 * t971;
t954 = t1036 * t971 + t1040 * t970;
t953 = -t1035 * t969 + t1039 * t967;
t952 = t1035 * t967 + t1039 * t969;
t951 = t981 * pkin(3) + t1003 * pkin(7) - t1006 * t1048 + t984;
t950 = -t1036 * t964 + t1040 * t965;
t949 = t1036 * t965 + t1040 * t964;
t948 = -t1034 * t962 + t1038 * t961;
t947 = t1034 * t961 + t1038 * t962;
t946 = t1057 * t987 + t1047;
t945 = -t1072 * t987 - t1047;
t944 = -t1057 * t989 + t1051;
t943 = t1072 * t989 - t1051;
t942 = -t1003 * pkin(3) + t981 * pkin(7) - t1031 * t1048 + t960;
t941 = (-t982 - t1062) * pkin(7) + t991 * pkin(3) + t959;
t940 = -t1035 * t959 + t1039 * t960;
t939 = t1035 * t960 + t1039 * t959;
t938 = -t1035 * t956 + t1039 * t957;
t937 = t1035 * t957 + t1039 * t956;
t936 = -t1036 * t952 + t1040 * t953;
t935 = t1036 * t953 + t1040 * t952;
t934 = -t1035 * t947 + t1039 * t948;
t933 = t1035 * t948 + t1039 * t947;
t932 = -t1034 * t946 + t1038 * t944;
t931 = t1034 * t944 + t1038 * t946;
t930 = t1034 * t941 + t1038 * t942;
t929 = -t1034 * t942 + t1038 * t941;
t928 = -t1036 * t939 + t1040 * t940;
t927 = t1036 * t940 + t1040 * t939;
t926 = -t1036 * t937 + t1040 * t938;
t925 = t1036 * t938 + t1040 * t937;
t924 = -t1036 * t933 + t1040 * t934;
t923 = t1036 * t934 + t1040 * t933;
t922 = -t1035 * t931 + t1039 * t932;
t921 = t1035 * t932 + t1039 * t931;
t920 = -t1034 * t929 + t1038 * t930;
t919 = t1034 * t930 + t1038 * t929;
t918 = -t1036 * t921 + t1040 * t922;
t917 = t1036 * t922 + t1040 * t921;
t916 = -t1035 * t919 + t1039 * t920;
t915 = t1035 * t920 + t1039 * t919;
t914 = -t1036 * t915 + t1040 * t916;
t913 = t1036 * t916 + t1040 * t915;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t1017, -t1016, 0, -t1037 * t1021 + t1041 * t1022, 0, 0, 0, 0, 0, 0, -t1037 * t1014 + t1041 * t995, t1037 * t1011 + t1041 * t996, t1041 * t1015 - t1037 * t1018, -t1037 * t1007 + t1041 * t977, 0, 0, 0, 0, 0, 0, t1037 * t966 + t1041 * t950, t1037 * t968 + t1041 * t955, t1037 * t983 + t1041 * t936, -t1037 * t984 + t1041 * t928, 0, 0, 0, 0, 0, 0, t1037 * t943 + t1041 * t924, t1037 * t945 + t1041 * t926, t1037 * t958 + t1041 * t918, -t1037 * t951 + t1041 * t914; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1016, t1017, 0, t1041 * t1021 + t1037 * t1022, 0, 0, 0, 0, 0, 0, t1041 * t1014 + t1037 * t995, -t1041 * t1011 + t1037 * t996, t1037 * t1015 + t1041 * t1018, t1041 * t1007 + t1037 * t977, 0, 0, 0, 0, 0, 0, t1037 * t950 - t1041 * t966, t1037 * t955 - t1041 * t968, t1037 * t936 - t1041 * t983, t1037 * t928 + t1041 * t984, 0, 0, 0, 0, 0, 0, t1037 * t924 - t1041 * t943, t1037 * t926 - t1041 * t945, t1037 * t918 - t1041 * t958, t1037 * t914 + t1041 * t951; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t993, t994, 0, t976, 0, 0, 0, 0, 0, 0, t949, t954, t935, t927, 0, 0, 0, 0, 0, 0, t923, t925, t917, t913; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1043, -qJDD(1), 0, t1022, 0, 0, 0, 0, 0, 0, t995, t996, t1015, t977, 0, 0, 0, 0, 0, 0, t950, t955, t936, t928, 0, 0, 0, 0, 0, 0, t924, t926, t918, t914; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1043, 0, t1021, 0, 0, 0, 0, 0, 0, t1014, -t1011, t1018, t1007, 0, 0, 0, 0, 0, 0, -t966, -t968, -t983, t984, 0, 0, 0, 0, 0, 0, -t943, -t945, -t958, t951; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t993, t994, 0, t976, 0, 0, 0, 0, 0, 0, t949, t954, t935, t927, 0, 0, 0, 0, 0, 0, t923, t925, t917, t913; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1024, t1020, t1029, t999, 0, 0, 0, 0, 0, 0, t965, t971, t953, t940, 0, 0, 0, 0, 0, 0, t934, t938, t922, t916; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1019, t1023, -t1055, t998, 0, 0, 0, 0, 0, 0, t964, t970, t952, t939, 0, 0, 0, 0, 0, 0, t933, t937, t921, t915; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1014, t1011, -t1018, -t1007, 0, 0, 0, 0, 0, 0, t966, t968, t983, -t984, 0, 0, 0, 0, 0, 0, t943, t945, t958, -t951; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t990, t992, t967, t960, 0, 0, 0, 0, 0, 0, t948, t957, t932, t920; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t991, t997, t969, t959, 0, 0, 0, 0, 0, 0, t947, t956, t931, t919; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t966, t968, t983, -t984, 0, 0, 0, 0, 0, 0, t943, t945, t958, -t951; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t961, t963, t944, t930; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t962, t980, t946, t929; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t943, t945, t958, -t951;];
f_new_reg = t1;