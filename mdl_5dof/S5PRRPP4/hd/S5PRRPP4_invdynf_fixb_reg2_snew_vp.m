% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S5PRRPP4
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
%   pkin=[a2,a3,a4,a5,d2,d3,theta1]';
%
% Output:
% f_new_reg [(3*6)x(6*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 17:41
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S5PRRPP4_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRPP4_invdynf_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRPP4_invdynf_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5PRRPP4_invdynf_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PRRPP4_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S5PRRPP4_invdynf_fixb_reg2_snew_vp: pkin has to be [7x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:41:28
% EndTime: 2019-12-31 17:41:29
% DurationCPUTime: 1.65s
% Computational Cost: add. (1762->157), mult. (3890->155), div. (0->0), fcn. (2166->6), ass. (0->87)
t1025 = sin(pkin(7));
t1026 = cos(pkin(7));
t1029 = sin(qJ(2));
t1031 = cos(qJ(2));
t1028 = sin(qJ(3));
t1030 = cos(qJ(3));
t1032 = qJD(2) ^ 2;
t1041 = t1028 * t1032 * t1030;
t1003 = qJDD(3) - t1041;
t1019 = t1028 ^ 2;
t1054 = qJD(3) ^ 2;
t1005 = t1019 * t1032 + t1054;
t983 = t1030 * t1003 - t1028 * t1005;
t1047 = qJD(3) * t1030;
t1040 = qJD(2) * t1047;
t1044 = t1028 * qJDD(2);
t995 = 0.2e1 * t1040 + t1044;
t964 = t1029 * t983 + t1031 * t995;
t968 = -t1029 * t995 + t1031 * t983;
t950 = t1025 * t968 + t1026 * t964;
t1058 = t1025 * t964 - t1026 * t968;
t1020 = t1030 ^ 2;
t1045 = t1019 + t1020;
t1000 = t1045 * t1032;
t997 = t1045 * qJDD(2);
t973 = t1031 * t1000 + t1029 * t997;
t976 = t1029 * t1000 - t1031 * t997;
t1057 = t1025 * t976 - t1026 * t973;
t1056 = t1025 * t973 + t1026 * t976;
t1055 = -t1041 - qJDD(3);
t1053 = -2 * qJD(5);
t1001 = -t1026 * g(1) - t1025 * g(2);
t1036 = t1025 * g(1) - t1026 * g(2);
t978 = t1031 * t1001 + t1029 * t1036;
t972 = -t1032 * pkin(2) + qJDD(2) * pkin(6) + t978;
t1052 = t1028 * t972;
t1021 = -g(3) + qJDD(1);
t966 = t1028 * t1021 + t1030 * t972;
t1049 = qJD(2) * t1028;
t1048 = qJD(2) * t1030;
t1046 = t1020 * t1032;
t1043 = t1030 * qJDD(2);
t1042 = qJ(5) * t1049;
t998 = t1031 * qJDD(2) - t1029 * t1032;
t999 = -t1029 * qJDD(2) - t1031 * t1032;
t1039 = -t1025 * t998 + t1026 * t999;
t977 = -t1029 * t1001 + t1031 * t1036;
t1014 = qJD(3) * t1049;
t1038 = -t1014 + t1043;
t1013 = t1030 * t1021;
t1037 = -qJDD(3) * pkin(3) - t1054 * qJ(4) + qJDD(4) - t1013;
t994 = (-pkin(3) * t1030 - qJ(4) * t1028) * qJD(2);
t1035 = qJDD(3) * qJ(4) + 0.2e1 * qJD(4) * qJD(3) + t994 * t1048 + t966;
t1034 = t1025 * t999 + t1026 * t998;
t980 = t1028 * t1003 + t1030 * t1005;
t971 = -qJDD(2) * pkin(2) - t1032 * pkin(6) - t977;
t1033 = t1040 + t1044;
t955 = -t1038 * pkin(3) + (pkin(3) * qJD(3) - 0.2e1 * qJD(4)) * t1049 + t971 + (-t1040 - t1033) * qJ(4);
t1006 = -t1046 - t1054;
t996 = -0.2e1 * t1014 + t1043;
t982 = t1030 * t1006 + t1028 * t1055;
t979 = t1028 * t1006 - t1030 * t1055;
t967 = -t1029 * t996 + t1031 * t982;
t963 = t1029 * t982 + t1031 * t996;
t962 = t1013 - t1052;
t961 = -t1029 * t977 + t1031 * t978;
t960 = t1029 * t978 + t1031 * t977;
t957 = (qJD(2) * t994 + t972) * t1028 + t1037;
t956 = -pkin(3) * t1054 + t1035;
t954 = -t1028 * t962 + t1030 * t966;
t953 = t1028 * t966 + t1030 * t962;
t951 = -t1025 * t963 + t1026 * t967;
t949 = t1025 * t967 + t1026 * t963;
t948 = t1052 - t1033 * qJ(5) + (qJ(5) * t1047 + (t1053 + t994) * t1028) * qJD(2) + t1037 + t1055 * pkin(4);
t947 = -pkin(4) * t1046 - t1038 * qJ(5) + t1048 * t1053 + (-t1042 + (-pkin(3) - pkin(4)) * qJD(3)) * qJD(3) + t1035;
t946 = -(-qJD(3) * pkin(4) - t1042) * t1049 + qJ(5) * t1046 - t1038 * pkin(4) - qJDD(5) + t955;
t945 = t1029 * t971 + t1031 * t954;
t944 = t1029 * t954 - t1031 * t971;
t943 = t1028 * t957 + t1030 * t956;
t942 = t1028 * t956 - t1030 * t957;
t941 = t1028 * t948 + t1030 * t947;
t940 = t1028 * t947 - t1030 * t948;
t939 = t1029 * t955 + t1031 * t943;
t938 = t1029 * t943 - t1031 * t955;
t937 = t1029 * t946 + t1031 * t941;
t936 = t1029 * t941 - t1031 * t946;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1026 * t1001 - t1025 * t1036, 0, 0, 0, 0, 0, 0, t1039, -t1034, 0, -t1025 * t960 + t1026 * t961, 0, 0, 0, 0, 0, 0, t951, t1058, -t1056, -t1025 * t944 + t1026 * t945, 0, 0, 0, 0, 0, 0, t951, -t1056, -t1058, -t1025 * t938 + t1026 * t939, 0, 0, 0, 0, 0, 0, t951, -t1058, t1056, -t1025 * t936 + t1026 * t937; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1025 * t1001 + t1026 * t1036, 0, 0, 0, 0, 0, 0, t1034, t1039, 0, t1025 * t961 + t1026 * t960, 0, 0, 0, 0, 0, 0, t949, -t950, -t1057, t1025 * t945 + t1026 * t944, 0, 0, 0, 0, 0, 0, t949, -t1057, t950, t1025 * t939 + t1026 * t938, 0, 0, 0, 0, 0, 0, t949, t950, t1057, t1025 * t937 + t1026 * t936; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1021, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1021, 0, 0, 0, 0, 0, 0, t979, -t980, 0, t953, 0, 0, 0, 0, 0, 0, t979, 0, t980, t942, 0, 0, 0, 0, 0, 0, t979, t980, 0, t940; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1001, 0, 0, 0, 0, 0, 0, t999, -t998, 0, t961, 0, 0, 0, 0, 0, 0, t967, -t968, -t976, t945, 0, 0, 0, 0, 0, 0, t967, -t976, t968, t939, 0, 0, 0, 0, 0, 0, t967, t968, t976, t937; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1036, 0, 0, 0, 0, 0, 0, t998, t999, 0, t960, 0, 0, 0, 0, 0, 0, t963, -t964, t973, t944, 0, 0, 0, 0, 0, 0, t963, t973, t964, t938, 0, 0, 0, 0, 0, 0, t963, t964, -t973, t936; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1021, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1021, 0, 0, 0, 0, 0, 0, t979, -t980, 0, t953, 0, 0, 0, 0, 0, 0, t979, 0, t980, t942, 0, 0, 0, 0, 0, 0, t979, t980, 0, t940; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1032, -qJDD(2), 0, t978, 0, 0, 0, 0, 0, 0, t982, -t983, t997, t954, 0, 0, 0, 0, 0, 0, t982, t997, t983, t943, 0, 0, 0, 0, 0, 0, t982, t983, -t997, t941; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t1032, 0, t977, 0, 0, 0, 0, 0, 0, t996, -t995, t1000, -t971, 0, 0, 0, 0, 0, 0, t996, t1000, t995, -t955, 0, 0, 0, 0, 0, 0, t996, t995, -t1000, -t946; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1021, 0, 0, 0, 0, 0, 0, t979, -t980, 0, t953, 0, 0, 0, 0, 0, 0, t979, 0, t980, t942, 0, 0, 0, 0, 0, 0, t979, t980, 0, t940; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1006, -t1003, t1043, t966, 0, 0, 0, 0, 0, 0, t1006, t1043, t1003, t956, 0, 0, 0, 0, 0, 0, t1006, t1003, -t1043, t947; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1055, -t1005, -t1044, t962, 0, 0, 0, 0, 0, 0, -t1055, -t1044, t1005, -t957, 0, 0, 0, 0, 0, 0, -t1055, t1005, t1044, -t948; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t996, t995, -t1000, t971, 0, 0, 0, 0, 0, 0, -t996, -t1000, -t995, t955, 0, 0, 0, 0, 0, 0, -t996, -t995, t1000, t946; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1006, t1043, t1003, t956, 0, 0, 0, 0, 0, 0, t1006, t1003, -t1043, t947; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t996, -t1000, -t995, t955, 0, 0, 0, 0, 0, 0, -t996, -t995, t1000, t946; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1055, t1044, -t1005, t957, 0, 0, 0, 0, 0, 0, t1055, -t1005, -t1044, t948; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1006, t1003, -t1043, t947; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1055, -t1005, -t1044, t948; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t996, t995, -t1000, -t946;];
f_new_reg = t1;
