% Calculate forward kinematics (homogenous transformation matrices) for fixed-base
% S6RRRPRP3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d5,theta4]';
% 
% Output:
% T_c_mdh [4x4x(6+1)]
%   homogenous transformation matrices for each (body) frame (MDH)
%   1:  mdh base (link 0) -> mdh base link 0 (unit matrix, no information)
%   ...
%   7:  mdh base (link 0) -> mdh frame (7-1), link (7-1)
%   ...
%   6+1:  mdh base (link 0) -> mdh frame (6)

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-23 17:42
% Revision: 76f9d5e39f14dc242b53c0d9d3d9db48bd8f37c0
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function T_c_mdh = S6RRRPRP3_fkine_fixb_rotmat_mdh_sym_varpar(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRP3_fkine_fixb_rotmat_mdh_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPRP3_fkine_fixb_rotmat_mdh_sym_varpar: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From fkine_mdh_floatb_twist_rotmat_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-23 17:42:12
% EndTime: 2018-11-23 17:42:12
% DurationCPUTime: 0.12s
% Computational Cost: add. (201->57), mult. (152->60), div. (0->0), fcn. (215->10), ass. (0->39)
t24 = pkin(10) + qJ(5);
t19 = sin(t24);
t26 = qJ(2) + qJ(3);
t21 = sin(t26);
t48 = t21 * t19;
t31 = sin(qJ(1));
t13 = t31 * t21;
t22 = cos(t26);
t47 = t31 * t22;
t27 = sin(pkin(10));
t46 = t31 * t27;
t28 = cos(pkin(10));
t45 = t31 * t28;
t33 = cos(qJ(1));
t14 = t33 * t21;
t44 = t33 * t22;
t43 = t33 * t27;
t42 = t33 * t28;
t25 = pkin(6) + 0;
t30 = sin(qJ(2));
t41 = t30 * pkin(2) + t25;
t32 = cos(qJ(2));
t17 = t32 * pkin(2) + pkin(1);
t34 = -pkin(8) - pkin(7);
t40 = t31 * t17 + t33 * t34 + 0;
t39 = pkin(3) * t22 + qJ(4) * t21;
t16 = t28 * pkin(4) + pkin(3);
t29 = -pkin(9) - qJ(4);
t38 = t21 * t16 + t22 * t29 + t41;
t37 = t33 * t17 - t31 * t34 + 0;
t36 = pkin(4) * t46 - t29 * t14 + t16 * t44 + t37;
t35 = -pkin(4) * t43 - t29 * t13 + t16 * t47 + t40;
t20 = cos(t24);
t8 = t21 * t20;
t4 = t31 * t19 + t20 * t44;
t3 = t19 * t44 - t31 * t20;
t2 = -t33 * t19 + t20 * t47;
t1 = t19 * t47 + t33 * t20;
t5 = [1, 0, 0, 0; 0, 1, 0, 0; 0, 0, 1, 0; 0, 0, 0, 1; t33, -t31, 0, 0; t31, t33, 0, 0; 0, 0, 1, t25; 0, 0, 0, 1; t33 * t32, -t33 * t30, t31, t33 * pkin(1) + t31 * pkin(7) + 0; t31 * t32, -t31 * t30, -t33, t31 * pkin(1) - t33 * pkin(7) + 0; t30, t32, 0, t25; 0, 0, 0, 1; t44, -t14, t31, t37; t47, -t13, -t33, t40; t21, t22, 0, t41; 0, 0, 0, 1; t22 * t42 + t46, -t22 * t43 + t45, t14, t39 * t33 + t37; t22 * t45 - t43, -t22 * t46 - t42, t13, t39 * t31 + t40; t21 * t28, -t21 * t27, -t22, t21 * pkin(3) - t22 * qJ(4) + t41; 0, 0, 0, 1; t4, -t3, t14, t36; t2, -t1, t13, t35; t8, -t48, -t22, t38; 0, 0, 0, 1; t4, t14, t3, t4 * pkin(5) + t3 * qJ(6) + t36; t2, t13, t1, t2 * pkin(5) + t1 * qJ(6) + t35; t8, -t22, t48 (pkin(5) * t20 + qJ(6) * t19) * t21 + t38; 0, 0, 0, 1;];
T_ges = t5;
%% Postprocessing: Reshape Output
% Convert Maple format (2-dimensional tensor) to Matlab format (3-dimensional tensor)
% Fallunterscheidung der Initialisierung für symbolische Eingabe
if isa([qJ; pkin], 'double'), T_c_mdh = NaN(4,4,6+1);               % numerisch
else,                         T_c_mdh = sym('xx', [4,4,6+1]); end % symbolisch
for i = 1:6+1
  T_c_mdh(:,:,i) = T_ges((i-1)*4+1 : 4*i, :);
end
