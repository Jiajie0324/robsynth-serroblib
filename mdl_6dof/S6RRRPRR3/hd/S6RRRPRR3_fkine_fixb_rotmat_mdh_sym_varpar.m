% Calculate forward kinematics (homogenous transformation matrices) for fixed-base
% S6RRRPRR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d5,d6]';
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
% Datum: 2018-11-23 17:52
% Revision: 76f9d5e39f14dc242b53c0d9d3d9db48bd8f37c0
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function T_c_mdh = S6RRRPRR3_fkine_fixb_rotmat_mdh_sym_varpar(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRR3_fkine_fixb_rotmat_mdh_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPRR3_fkine_fixb_rotmat_mdh_sym_varpar: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From fkine_mdh_floatb_twist_rotmat_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-23 17:51:53
% EndTime: 2018-11-23 17:51:53
% DurationCPUTime: 0.14s
% Computational Cost: add. (194->54), mult. (174->56), div. (0->0), fcn. (244->10), ass. (0->36)
t28 = qJ(2) + qJ(3);
t24 = cos(t28);
t36 = cos(qJ(1));
t18 = t36 * t24;
t23 = sin(t28);
t47 = qJ(4) * t23;
t50 = pkin(3) * t18 + t36 * t47;
t32 = sin(qJ(1));
t49 = t32 * t23;
t17 = t32 * t24;
t48 = t36 * t23;
t27 = pkin(6) + 0;
t35 = cos(qJ(2));
t21 = t35 * pkin(2) + pkin(1);
t46 = t36 * t21 + 0;
t31 = sin(qJ(2));
t45 = t31 * pkin(2) + t27;
t37 = -pkin(8) - pkin(7);
t44 = t32 * t21 + t36 * t37 + 0;
t30 = sin(qJ(5));
t34 = cos(qJ(5));
t5 = t23 * t30 + t24 * t34;
t43 = -t32 * t37 + t46;
t42 = pkin(3) * t17 + t32 * t47 + t44;
t41 = t23 * pkin(3) - t24 * qJ(4) + t45;
t40 = pkin(4) * t17 + t36 * pkin(9) + t42;
t39 = t23 * pkin(4) + t41;
t38 = pkin(4) * t18 + (-pkin(9) - t37) * t32 + t46 + t50;
t33 = cos(qJ(6));
t29 = sin(qJ(6));
t6 = t23 * t34 - t24 * t30;
t4 = t5 * t36;
t3 = t18 * t30 - t34 * t48;
t2 = t5 * t32;
t1 = t17 * t30 - t34 * t49;
t7 = [1, 0, 0, 0; 0, 1, 0, 0; 0, 0, 1, 0; 0, 0, 0, 1; t36, -t32, 0, 0; t32, t36, 0, 0; 0, 0, 1, t27; 0, 0, 0, 1; t36 * t35, -t36 * t31, t32, t36 * pkin(1) + t32 * pkin(7) + 0; t32 * t35, -t32 * t31, -t36, t32 * pkin(1) - t36 * pkin(7) + 0; t31, t35, 0, t27; 0, 0, 0, 1; t18, -t48, t32, t43; t17, -t49, -t36, t44; t23, t24, 0, t45; 0, 0, 0, 1; t18, t32, t48, t43 + t50; t17, -t36, t49, t42; t23, 0, -t24, t41; 0, 0, 0, 1; t4, -t3, -t32, t38; t2, -t1, t36, t40; t6, -t5, 0, t39; 0, 0, 0, 1; -t32 * t29 + t4 * t33, -t4 * t29 - t32 * t33, t3, t4 * pkin(5) + t3 * pkin(10) + t38; t2 * t33 + t36 * t29, -t2 * t29 + t36 * t33, t1, t2 * pkin(5) + t1 * pkin(10) + t40; t6 * t33, -t6 * t29, t5, t6 * pkin(5) + t5 * pkin(10) + t39; 0, 0, 0, 1;];
T_ges = t7;
%% Postprocessing: Reshape Output
% Convert Maple format (2-dimensional tensor) to Matlab format (3-dimensional tensor)
% Fallunterscheidung der Initialisierung für symbolische Eingabe
if isa([qJ; pkin], 'double'), T_c_mdh = NaN(4,4,6+1);               % numerisch
else,                         T_c_mdh = sym('xx', [4,4,6+1]); end % symbolisch
for i = 1:6+1
  T_c_mdh(:,:,i) = T_ges((i-1)*4+1 : 4*i, :);
end
