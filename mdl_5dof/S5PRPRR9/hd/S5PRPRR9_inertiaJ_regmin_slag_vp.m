% Calculate minimal parameter regressor of joint inertia matrix for
% S5PRPRR9
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d4,d5,theta1]';
% 
% Output:
% MM_reg [((5+1)*5/2)x17]
%   minimal parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 17:40
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S5PRPRR9_inertiaJ_regmin_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRPRR9_inertiaJ_regmin_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRPRR9_inertiaJ_regmin_slag_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_minpar_matlab.m
t7 = sin(qJ(5));
t17 = -0.2e1 * t7;
t9 = cos(qJ(5));
t16 = 0.2e1 * t9;
t15 = t7 * t9;
t10 = cos(qJ(4));
t11 = -pkin(2) - pkin(3);
t8 = sin(qJ(4));
t3 = t8 * qJ(3) - t10 * t11;
t1 = pkin(4) + t3;
t14 = pkin(4) + t1;
t13 = t10 * t7;
t12 = t10 * t9;
t4 = t10 * qJ(3) + t8 * t11;
t6 = t7 ^ 2;
t5 = 0.2e1 * t15;
t2 = -pkin(7) + t4;
t18 = [1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 1, 0, 0, 2 * pkin(2), 0.2e1 * qJ(3), (pkin(2) ^ 2) + qJ(3) ^ 2, 1, 0.2e1 * t3, 0.2e1 * t4, t6, t5, 0, 0, 0, t1 * t16, t1 * t17; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, -1, 0, -pkin(2), 0, -t10, t8, 0, 0, 0, 0, 0, -t12, t13; 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, -1, -t3, -t4, -t6, -0.2e1 * t15, 0, 0, 0, -t14 * t9, t14 * t7; 0, 0, 0, 0, 0, 0, 0, 0, t10, -t8, 0, 0, 0, 0, 0, t12, -t13; 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, t6, t5, 0, 0, 0, pkin(4) * t16, pkin(4) * t17; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t9, t7; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t7, -t9, 0, -t7 * t2, -t9 * t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t7 * t8, -t9 * t8; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t7, t9, 0, -t7 * pkin(7), -t9 * pkin(7); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0;];
MM_reg = t18;
