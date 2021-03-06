% Calculate minimal parameter regressor of joint inertia matrix for
% S4PPRP2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% pkin [5x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d3,theta2]';
% 
% Output:
% MM_reg [((4+1)*4/2)x8]
%   minimal parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 18:13
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S4PPRP2_inertiaJ_regmin_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(5,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PPRP2_inertiaJ_regmin_slag_vp: qJ has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [5 1]), ...
  'S4PPRP2_inertiaJ_regmin_slag_vp: pkin has to be [5x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_minpar_matlab.m
t7 = cos(qJ(3));
t6 = sin(qJ(3));
t5 = cos(pkin(5));
t4 = sin(pkin(5));
t2 = t4 * t7 + t5 * t6;
t1 = t4 * t6 - t5 * t7;
t3 = [1, t4 ^ 2 + t5 ^ 2, 0, 0, 0, 0, 0, t1 ^ 2 + t2 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0; 0, 1, 0, 0, 0, 0, 0, 1; 0, 0, 0, -t1, -t2, -t1, t2, -pkin(3) * t1 + qJ(4) * t2; 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 1, 0, 0, 0.2e1 * pkin(3), 0.2e1 * qJ(4), pkin(3) ^ 2 + qJ(4) ^ 2; 0, 0, 0, 0, 0, 0, 0, t1; 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, -1, 0, -pkin(3); 0, 0, 0, 0, 0, 0, 0, 1;];
MM_reg  = t3;
