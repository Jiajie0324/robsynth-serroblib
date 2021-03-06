% Calculate forward kinematics (homogenous transformation matrices) for fixed-base
% S5RPRPP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,theta2,theta4]';
% 
% Output:
% T_c_mdh [4x4x(5+1)]
%   homogenous transformation matrices for each (body) frame (MDH)
%   1:  mdh base (link 0) -> mdh base link 0 (unit matrix, no information)
%   ...
%   6:  mdh base (link 0) -> mdh frame (6-1), link (6-1)
%   ...
%   5+1:  mdh base (link 0) -> mdh frame (5)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 18:09
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T_c_mdh = S5RPRPP1_fkine_fixb_rotmat_mdh_sym_varpar(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRPP1_fkine_fixb_rotmat_mdh_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPRPP1_fkine_fixb_rotmat_mdh_sym_varpar: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From fkine_mdh_floatb_twist_rotmat_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 18:08:32
% EndTime: 2019-12-31 18:08:32
% DurationCPUTime: 0.08s
% Computational Cost: add. (111->32), mult. (48->26), div. (0->0), fcn. (80->8), ass. (0->25)
t15 = qJ(3) + pkin(8);
t7 = sin(t15);
t16 = qJ(1) + pkin(7);
t8 = sin(t16);
t30 = t8 * t7;
t10 = cos(t16);
t29 = t10 * t7;
t28 = pkin(5) + 0;
t19 = sin(qJ(1));
t27 = t19 * pkin(1) + 0;
t21 = cos(qJ(1));
t26 = t21 * pkin(1) + 0;
t11 = qJ(2) + t28;
t17 = -qJ(4) - pkin(6);
t20 = cos(qJ(3));
t6 = t20 * pkin(3) + pkin(2);
t25 = t10 * t17 + t8 * t6 + t27;
t18 = sin(qJ(3));
t24 = t18 * pkin(3) + t11;
t9 = cos(t15);
t23 = pkin(4) * t9 + qJ(5) * t7;
t22 = t10 * t6 - t8 * t17 + t26;
t4 = t10 * t9;
t3 = t8 * t9;
t1 = [1, 0, 0, 0; 0, 1, 0, 0; 0, 0, 1, 0; 0, 0, 0, 1; t21, -t19, 0, 0; t19, t21, 0, 0; 0, 0, 1, t28; 0, 0, 0, 1; t10, -t8, 0, t26; t8, t10, 0, t27; 0, 0, 1, t11; 0, 0, 0, 1; t10 * t20, -t10 * t18, t8, t10 * pkin(2) + t8 * pkin(6) + t26; t8 * t20, -t8 * t18, -t10, t8 * pkin(2) - t10 * pkin(6) + t27; t18, t20, 0, t11; 0, 0, 0, 1; t4, -t29, t8, t22; t3, -t30, -t10, t25; t7, t9, 0, t24; 0, 0, 0, 1; t4, t8, t29, t23 * t10 + t22; t3, -t10, t30, t23 * t8 + t25; t7, 0, -t9, t7 * pkin(4) - t9 * qJ(5) + t24; 0, 0, 0, 1;];
T_ges = t1;
%% Postprocessing: Reshape Output
% Convert Maple format (2-dimensional tensor) to Matlab format (3-dimensional tensor)
% Fallunterscheidung der Initialisierung für symbolische Eingabe
if isa([qJ; pkin], 'double'), T_c_mdh = NaN(4,4,5+1);               % numerisch
else,                         T_c_mdh = sym('xx', [4,4,5+1]); end % symbolisch
for i = 1:5+1
  T_c_mdh(:,:,i) = T_ges((i-1)*4+1 : 4*i, :);
end
