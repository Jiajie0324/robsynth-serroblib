% Calculate forward kinematics (homogenous transformation matrices) for fixed-base
% S4PRRP3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% pkin [6x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d2,d3,theta1]';
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
% Datum: 2019-12-31 16:27
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T_c_mdh = S4PRRP3_fkine_fixb_rotmat_mdh_sym_varpar(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(6,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PRRP3_fkine_fixb_rotmat_mdh_sym_varpar: qJ has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S4PRRP3_fkine_fixb_rotmat_mdh_sym_varpar: pkin has to be [6x1] (double)');

%% Symbolic Calculation
% From fkine_mdh_floatb_twist_rotmat_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 16:26:39
% EndTime: 2019-12-31 16:26:39
% DurationCPUTime: 0.06s
% Computational Cost: add. (58->24), mult. (25->16), div. (0->0), fcn. (49->6), ass. (0->18)
t13 = sin(qJ(3));
t9 = pkin(6) + qJ(2);
t4 = sin(t9);
t19 = t4 * t13;
t5 = cos(t9);
t18 = t5 * t13;
t10 = sin(pkin(6));
t17 = t10 * pkin(1) + 0;
t11 = cos(pkin(6));
t16 = t11 * pkin(1) + 0;
t15 = qJ(1) + 0;
t6 = pkin(4) + t15;
t14 = cos(qJ(3));
t12 = -qJ(4) - pkin(5);
t3 = t14 * pkin(3) + pkin(2);
t2 = t5 * t14;
t1 = t4 * t14;
t7 = [1, 0, 0, 0; 0, 1, 0, 0; 0, 0, 1, 0; 0, 0, 0, 1; t11, -t10, 0, 0; t10, t11, 0, 0; 0, 0, 1, t15; 0, 0, 0, 1; t5, -t4, 0, t16; t4, t5, 0, t17; 0, 0, 1, t6; 0, 0, 0, 1; t2, -t18, t4, t5 * pkin(2) + t4 * pkin(5) + t16; t1, -t19, -t5, t4 * pkin(2) - t5 * pkin(5) + t17; t13, t14, 0, t6; 0, 0, 0, 1; t2, -t18, t4, -t4 * t12 + t5 * t3 + t16; t1, -t19, -t5, t5 * t12 + t4 * t3 + t17; t13, t14, 0, t13 * pkin(3) + t6; 0, 0, 0, 1;];
T_ges = t7;
%% Postprocessing: Reshape Output
% Convert Maple format (2-dimensional tensor) to Matlab format (3-dimensional tensor)
% Fallunterscheidung der Initialisierung für symbolische Eingabe
if isa([qJ; pkin], 'double'), T_c_mdh = NaN(4,4,4+1);               % numerisch
else,                         T_c_mdh = sym('xx', [4,4,4+1]); end % symbolisch
for i = 1:4+1
  T_c_mdh(:,:,i) = T_ges((i-1)*4+1 : 4*i, :);
end
