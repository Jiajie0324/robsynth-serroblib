% Calculate forward kinematics (homogenous transformation matrices) for fixed-base
% S6PRPRPR4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d4,d6,theta1,theta3,theta5]';
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
% Datum: 2018-11-23 14:57
% Revision: 76f9d5e39f14dc242b53c0d9d3d9db48bd8f37c0
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function T_c_mdh = S6PRPRPR4_fkine_fixb_rotmat_mdh_sym_varpar(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPRPR4_fkine_fixb_rotmat_mdh_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRPRPR4_fkine_fixb_rotmat_mdh_sym_varpar: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From fkine_mdh_floatb_twist_rotmat_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-23 14:56:55
% EndTime: 2018-11-23 14:56:55
% DurationCPUTime: 0.21s
% Computational Cost: add. (584->86), mult. (561->102), div. (0->0), fcn. (633->18), ass. (0->56)
t41 = sin(pkin(10));
t45 = cos(pkin(10));
t49 = sin(qJ(2));
t66 = pkin(6) - qJ(2);
t57 = cos(t66) / 0.2e1;
t65 = pkin(6) + qJ(2);
t59 = cos(t65);
t52 = t57 + t59 / 0.2e1;
t11 = t41 * t49 - t45 * t52;
t39 = sin(pkin(12));
t72 = t11 * t39;
t13 = t41 * t52 + t45 * t49;
t71 = t13 * t39;
t56 = sin(t65) / 0.2e1;
t58 = sin(t66);
t18 = t56 + t58 / 0.2e1;
t70 = t18 * t39;
t42 = sin(pkin(6));
t69 = t41 * t42;
t68 = t45 * t42;
t40 = sin(pkin(11));
t46 = cos(pkin(6));
t67 = t46 * t40;
t64 = t41 * pkin(1) + 0;
t63 = t40 * t69;
t62 = qJ(1) + 0;
t61 = t45 * pkin(1) + pkin(7) * t69 + 0;
t60 = t46 * pkin(7) + t62;
t55 = -pkin(7) * t68 + t64;
t19 = t56 - t58 / 0.2e1;
t50 = cos(qJ(2));
t14 = -t41 * t19 + t45 * t50;
t44 = cos(pkin(11));
t29 = t44 * pkin(3) + pkin(2);
t48 = -pkin(8) - qJ(3);
t54 = pkin(3) * t63 - t13 * t48 + t14 * t29 + t61;
t20 = t57 - t59 / 0.2e1;
t53 = pkin(3) * t67 + t18 * t48 + t20 * t29 + t60;
t12 = t45 * t19 + t41 * t50;
t51 = t12 * t29 - t11 * t48 + (-pkin(3) * t40 - pkin(7)) * t68 + t64;
t47 = -pkin(9) - qJ(5);
t43 = cos(pkin(12));
t38 = pkin(11) + qJ(4);
t37 = pkin(12) + qJ(6);
t33 = cos(t38);
t32 = cos(t37);
t31 = sin(t38);
t30 = sin(t37);
t28 = t43 * pkin(5) + pkin(4);
t8 = t20 * t33 + t46 * t31;
t7 = t20 * t31 - t46 * t33;
t4 = t14 * t33 + t31 * t69;
t3 = t14 * t31 - t33 * t69;
t2 = t12 * t33 - t31 * t68;
t1 = t12 * t31 + t33 * t68;
t5 = [1, 0, 0, 0; 0, 1, 0, 0; 0, 0, 1, 0; 0, 0, 0, 1; t45, -t41, 0, 0; t41, t45, 0, 0; 0, 0, 1, t62; 0, 0, 0, 1; t14, -t13, t69, t61; t12, -t11, -t68, t55; t20, t18, t46, t60; 0, 0, 0, 1; t14 * t44 + t63, -t14 * t40 + t44 * t69, t13, t14 * pkin(2) + t13 * qJ(3) + t61; t12 * t44 - t40 * t68, -t12 * t40 - t44 * t68, t11, t12 * pkin(2) + t11 * qJ(3) + t55; t20 * t44 + t67, -t20 * t40 + t46 * t44, -t18, t20 * pkin(2) - t18 * qJ(3) + t60; 0, 0, 0, 1; t4, -t3, t13, t54; t2, -t1, t11, t51; t8, -t7, -t18, t53; 0, 0, 0, 1; t4 * t43 + t71, t13 * t43 - t4 * t39, t3, t4 * pkin(4) + t3 * qJ(5) + t54; t2 * t43 + t72, t11 * t43 - t2 * t39, t1, t2 * pkin(4) + t1 * qJ(5) + t51; t8 * t43 - t70, -t18 * t43 - t8 * t39, t7, t8 * pkin(4) + t7 * qJ(5) + t53; 0, 0, 0, 1; t13 * t30 + t4 * t32, t13 * t32 - t4 * t30, t3, pkin(5) * t71 + t4 * t28 - t3 * t47 + t54; t11 * t30 + t2 * t32, t11 * t32 - t2 * t30, t1, pkin(5) * t72 - t1 * t47 + t2 * t28 + t51; -t18 * t30 + t8 * t32, -t18 * t32 - t8 * t30, t7, -pkin(5) * t70 + t8 * t28 - t7 * t47 + t53; 0, 0, 0, 1;];
T_ges = t5;
%% Postprocessing: Reshape Output
% Convert Maple format (2-dimensional tensor) to Matlab format (3-dimensional tensor)
% Fallunterscheidung der Initialisierung für symbolische Eingabe
if isa([qJ; pkin], 'double'), T_c_mdh = NaN(4,4,6+1);               % numerisch
else,                         T_c_mdh = sym('xx', [4,4,6+1]); end % symbolisch
for i = 1:6+1
  T_c_mdh(:,:,i) = T_ges((i-1)*4+1 : 4*i, :);
end
