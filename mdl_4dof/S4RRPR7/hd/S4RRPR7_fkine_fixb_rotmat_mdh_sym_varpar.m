% Calculate forward kinematics (homogenous transformation matrices) for fixed-base
% S4RRPR7
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d2,d4,theta3]';
% 
% Output:
% T_c_mdh [4x4x(4+1)]
%   homogenous transformation matrices for each (body) frame (MDH)
%   1:  mdh base (link 0) -> mdh base link 0 (unit matrix, no information)
%   ...
%   5:  mdh base (link 0) -> mdh frame (5-1), link (5-1)
%   ...
%   4+1:  mdh base (link 0) -> mdh frame (4)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 17:07
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T_c_mdh = S4RRPR7_fkine_fixb_rotmat_mdh_sym_varpar(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RRPR7_fkine_fixb_rotmat_mdh_sym_varpar: qJ has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4RRPR7_fkine_fixb_rotmat_mdh_sym_varpar: pkin has to be [7x1] (double)');

%% Symbolic Calculation
% From fkine_mdh_floatb_twist_rotmat_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:05:52
% EndTime: 2019-12-31 17:05:52
% DurationCPUTime: 0.08s
% Computational Cost: add. (66->31), mult. (52->34), div. (0->0), fcn. (85->8), ass. (0->23)
t13 = sin(qJ(1));
t8 = qJ(2) + pkin(7);
t5 = sin(t8);
t26 = t13 * t5;
t16 = cos(qJ(1));
t25 = t16 * t5;
t11 = sin(qJ(4));
t24 = t13 * t11;
t14 = cos(qJ(4));
t23 = t13 * t14;
t22 = t16 * t11;
t21 = t16 * t14;
t9 = pkin(4) + 0;
t10 = -qJ(3) - pkin(5);
t15 = cos(qJ(2));
t4 = t15 * pkin(2) + pkin(1);
t20 = t16 * t10 + t13 * t4 + 0;
t12 = sin(qJ(2));
t19 = t12 * pkin(2) + t9;
t6 = cos(t8);
t18 = pkin(3) * t6 + pkin(6) * t5;
t17 = -t13 * t10 + t16 * t4 + 0;
t1 = [1, 0, 0, 0; 0, 1, 0, 0; 0, 0, 1, 0; 0, 0, 0, 1; t16, -t13, 0, 0; t13, t16, 0, 0; 0, 0, 1, t9; 0, 0, 0, 1; t16 * t15, -t16 * t12, t13, t16 * pkin(1) + t13 * pkin(5) + 0; t13 * t15, -t13 * t12, -t16, t13 * pkin(1) - t16 * pkin(5) + 0; t12, t15, 0, t9; 0, 0, 0, 1; t16 * t6, -t25, t13, t17; t13 * t6, -t26, -t16, t20; t5, t6, 0, t19; 0, 0, 0, 1; t6 * t21 + t24, -t6 * t22 + t23, t25, t18 * t16 + t17; t6 * t23 - t22, -t6 * t24 - t21, t26, t18 * t13 + t20; t5 * t14, -t5 * t11, -t6, t5 * pkin(3) - t6 * pkin(6) + t19; 0, 0, 0, 1;];
T_ges = t1;
%% Postprocessing: Reshape Output
% Convert Maple format (2-dimensional tensor) to Matlab format (3-dimensional tensor)
% Fallunterscheidung der Initialisierung für symbolische Eingabe
if isa([qJ; pkin], 'double'), T_c_mdh = NaN(4,4,4+1);               % numerisch
else,                         T_c_mdh = sym('xx', [4,4,4+1]); end % symbolisch
for i = 1:4+1
  T_c_mdh(:,:,i) = T_ges((i-1)*4+1 : 4*i, :);
end
