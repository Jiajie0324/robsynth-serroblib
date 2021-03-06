% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S5PRPRP4
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
%   pkin=[a2,a3,a4,a5,d2,d4,theta1,theta3]';
%
% Output:
% f_new_reg [(3*6)x(6*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 15:36
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S5PRPRP4_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRPRP4_invdynf_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRPRP4_invdynf_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5PRPRP4_invdynf_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PRPRP4_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRPRP4_invdynf_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 15:36:28
% EndTime: 2019-12-05 15:36:30
% DurationCPUTime: 1.92s
% Computational Cost: add. (2616->144), mult. (4863->171), div. (0->0), fcn. (3079->8), ass. (0->96)
t1030 = sin(pkin(7));
t1032 = cos(pkin(7));
t1035 = sin(qJ(2));
t1037 = cos(qJ(2));
t1029 = sin(pkin(8));
t1031 = cos(pkin(8));
t1034 = sin(qJ(4));
t1036 = cos(qJ(4));
t1039 = qJD(2) ^ 2;
t1015 = t1034 * t1039 * t1036;
t1011 = qJDD(4) - t1015;
t1024 = t1034 ^ 2;
t1038 = qJD(4) ^ 2;
t1012 = t1024 * t1039 + t1038;
t986 = t1036 * t1011 - t1034 * t1012;
t1045 = t1034 * qJDD(2);
t1048 = qJD(2) * t1036;
t1054 = 2 * qJD(4);
t999 = t1048 * t1054 + t1045;
t968 = t1029 * t986 + t1031 * t999;
t971 = -t1029 * t999 + t1031 * t986;
t953 = t1035 * t968 - t1037 * t971;
t983 = t1034 * t1011 + t1036 * t1012;
t1056 = t1030 * t953 + t1032 * t983;
t1055 = -t1030 * t983 + t1032 * t953;
t949 = t1035 * t971 + t1037 * t968;
t1008 = t1030 * g(1) - t1032 * g(2);
t1001 = -qJDD(3) + t1008;
t1009 = -t1032 * g(1) - t1030 * g(2);
t1026 = -g(3) + qJDD(1);
t989 = -t1035 * t1009 + t1037 * t1026;
t1040 = qJDD(2) * pkin(2) + t989;
t990 = t1037 * t1009 + t1035 * t1026;
t988 = -t1039 * pkin(2) + t990;
t964 = t1029 * t1040 + t1031 * t988;
t962 = -t1039 * pkin(3) + qJDD(2) * pkin(6) + t964;
t955 = -t1034 * t1001 + t1036 * t962;
t1049 = qJD(2) * t1034;
t1047 = t1030 * t1008;
t1025 = t1036 ^ 2;
t1046 = t1024 + t1025;
t1044 = t1036 * qJDD(2);
t1043 = qJD(4) * t1049;
t963 = -t1029 * t988 + t1031 * t1040;
t1002 = t1031 * qJDD(2) - t1029 * t1039;
t1003 = -t1029 * qJDD(2) - t1031 * t1039;
t1041 = -t1035 * t1002 + t1037 * t1003;
t974 = t1037 * t1002 + t1035 * t1003;
t961 = -qJDD(2) * pkin(3) - t1039 * pkin(6) - t963;
t1013 = -t1025 * t1039 - t1038;
t1010 = qJDD(4) + t1015;
t1007 = t1046 * t1039;
t1006 = t1037 * qJDD(2) - t1035 * t1039;
t1005 = -t1035 * qJDD(2) - t1037 * t1039;
t1004 = t1046 * qJDD(2);
t1000 = -0.2e1 * t1043 + t1044;
t998 = (-pkin(4) * t1036 - qJ(5) * t1034) * qJD(2);
t995 = t1032 * t1008;
t992 = t1036 * t1001;
t985 = -t1034 * t1010 + t1036 * t1013;
t982 = t1036 * t1010 + t1034 * t1013;
t978 = t1031 * t1004 - t1029 * t1007;
t977 = t1029 * t1004 + t1031 * t1007;
t970 = -t1029 * t1000 + t1031 * t985;
t967 = t1031 * t1000 + t1029 * t985;
t966 = -t1035 * t989 + t1037 * t990;
t965 = t1035 * t990 + t1037 * t989;
t959 = -t1035 * t977 + t1037 * t978;
t958 = t1035 * t978 + t1037 * t977;
t957 = t1032 * t959;
t956 = t1030 * t959;
t954 = -t1034 * t962 - t992;
t951 = -t1035 * t967 + t1037 * t970;
t948 = t1035 * t970 + t1037 * t967;
t947 = qJDD(5) - t1038 * qJ(5) - qJDD(4) * pkin(4) + t992 + (qJD(2) * t998 + t962) * t1034;
t946 = -t1038 * pkin(4) + qJDD(4) * qJ(5) + (qJD(5) * t1054) + t998 * t1048 + t955;
t945 = -(-t1043 + t1044) * pkin(4) + (pkin(4) * qJD(4) - (2 * qJD(5))) * t1049 + t961 - t999 * qJ(5);
t944 = -t1029 * t963 + t1031 * t964;
t943 = t1029 * t964 + t1031 * t963;
t942 = t1030 * t982 + t1032 * t951;
t941 = t1030 * t951 - t1032 * t982;
t940 = -t1034 * t954 + t1036 * t955;
t939 = t1034 * t955 + t1036 * t954;
t938 = t1034 * t947 + t1036 * t946;
t937 = t1034 * t946 - t1036 * t947;
t936 = t1029 * t961 + t1031 * t940;
t935 = t1029 * t940 - t1031 * t961;
t934 = -t1035 * t943 + t1037 * t944;
t933 = t1035 * t944 + t1037 * t943;
t932 = t1029 * t945 + t1031 * t938;
t931 = t1029 * t938 - t1031 * t945;
t930 = -t1035 * t935 + t1037 * t936;
t929 = t1035 * t936 + t1037 * t935;
t928 = -t1035 * t931 + t1037 * t932;
t927 = t1035 * t932 + t1037 * t931;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1032 * t1009 - t1047, 0, 0, 0, 0, 0, 0, t1032 * t1005, -t1032 * t1006, 0, t1032 * t966 - t1047, 0, 0, 0, 0, 0, 0, t1032 * t1041, -t1032 * t974, 0, -t1030 * t1001 + t1032 * t934, 0, 0, 0, 0, 0, 0, t942, t1055, t957, t1030 * t939 + t1032 * t930, 0, 0, 0, 0, 0, 0, t942, t957, -t1055, t1030 * t937 + t1032 * t928; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1030 * t1009 + t995, 0, 0, 0, 0, 0, 0, t1030 * t1005, -t1030 * t1006, 0, t1030 * t966 + t995, 0, 0, 0, 0, 0, 0, t1030 * t1041, -t1030 * t974, 0, t1032 * t1001 + t1030 * t934, 0, 0, 0, 0, 0, 0, t941, t1056, t956, t1030 * t930 - t1032 * t939, 0, 0, 0, 0, 0, 0, t941, t956, -t1056, t1030 * t928 - t1032 * t937; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1026, 0, 0, 0, 0, 0, 0, t1006, t1005, 0, t965, 0, 0, 0, 0, 0, 0, t974, t1041, 0, t933, 0, 0, 0, 0, 0, 0, t948, -t949, t958, t929, 0, 0, 0, 0, 0, 0, t948, t958, t949, t927; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1009, 0, 0, 0, 0, 0, 0, t1005, -t1006, 0, t966, 0, 0, 0, 0, 0, 0, t1041, -t974, 0, t934, 0, 0, 0, 0, 0, 0, t951, t953, t959, t930, 0, 0, 0, 0, 0, 0, t951, t959, -t953, t928; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1008, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1008, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1001, 0, 0, 0, 0, 0, 0, -t982, t983, 0, -t939, 0, 0, 0, 0, 0, 0, -t982, 0, -t983, -t937; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1026, 0, 0, 0, 0, 0, 0, t1006, t1005, 0, t965, 0, 0, 0, 0, 0, 0, t974, t1041, 0, t933, 0, 0, 0, 0, 0, 0, t948, -t949, t958, t929, 0, 0, 0, 0, 0, 0, t948, t958, t949, t927; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1039, -qJDD(2), 0, t990, 0, 0, 0, 0, 0, 0, t1003, -t1002, 0, t944, 0, 0, 0, 0, 0, 0, t970, -t971, t978, t936, 0, 0, 0, 0, 0, 0, t970, t978, t971, t932; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t1039, 0, t989, 0, 0, 0, 0, 0, 0, t1002, t1003, 0, t943, 0, 0, 0, 0, 0, 0, t967, -t968, t977, t935, 0, 0, 0, 0, 0, 0, t967, t977, t968, t931; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1008, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1001, 0, 0, 0, 0, 0, 0, t982, -t983, 0, t939, 0, 0, 0, 0, 0, 0, t982, 0, t983, t937; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1039, -qJDD(2), 0, t964, 0, 0, 0, 0, 0, 0, t985, -t986, t1004, t940, 0, 0, 0, 0, 0, 0, t985, t1004, t986, t938; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t1039, 0, t963, 0, 0, 0, 0, 0, 0, t1000, -t999, t1007, -t961, 0, 0, 0, 0, 0, 0, t1000, t1007, t999, -t945; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1001, 0, 0, 0, 0, 0, 0, t982, -t983, 0, t939, 0, 0, 0, 0, 0, 0, t982, 0, t983, t937; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1013, -t1011, t1044, t955, 0, 0, 0, 0, 0, 0, t1013, t1044, t1011, t946; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1010, -t1012, -t1045, t954, 0, 0, 0, 0, 0, 0, t1010, -t1045, t1012, -t947; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1000, t999, -t1007, t961, 0, 0, 0, 0, 0, 0, -t1000, -t1007, -t999, t945; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1013, t1044, t1011, t946; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1000, -t1007, -t999, t945; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1010, t1045, -t1012, t947;];
f_new_reg = t1;
