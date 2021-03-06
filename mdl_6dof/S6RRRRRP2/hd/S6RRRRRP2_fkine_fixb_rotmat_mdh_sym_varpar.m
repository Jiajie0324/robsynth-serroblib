% Calculate forward kinematics (homogenous transformation matrices) for fixed-base
% S6RRRRRP2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d5]';
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
% Datum: 2018-11-23 18:27
% Revision: 76f9d5e39f14dc242b53c0d9d3d9db48bd8f37c0
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function T_c_mdh = S6RRRRRP2_fkine_fixb_rotmat_mdh_sym_varpar(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRP2_fkine_fixb_rotmat_mdh_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRRP2_fkine_fixb_rotmat_mdh_sym_varpar: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From fkine_mdh_floatb_twist_rotmat_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-23 18:27:07
% EndTime: 2018-11-23 18:27:07
% DurationCPUTime: 0.11s
% Computational Cost: add. (203->52), mult. (125->51), div. (0->0), fcn. (183->10), ass. (0->39)
t36 = -pkin(8) - pkin(7);
t34 = cos(qJ(2));
t21 = t34 * pkin(2) + pkin(1);
t29 = qJ(2) + qJ(3);
t24 = qJ(4) + t29;
t19 = sin(t24);
t30 = sin(qJ(5));
t50 = t19 * t30;
t32 = sin(qJ(1));
t13 = t32 * t19;
t20 = cos(t24);
t49 = t32 * t20;
t48 = t32 * t30;
t33 = cos(qJ(5));
t47 = t32 * t33;
t35 = cos(qJ(1));
t14 = t35 * t19;
t46 = t35 * t20;
t45 = t35 * t30;
t44 = t35 * t33;
t27 = pkin(6) + 0;
t31 = sin(qJ(2));
t43 = t31 * pkin(2) + t27;
t28 = -pkin(9) + t36;
t23 = cos(t29);
t7 = pkin(3) * t23 + t21;
t42 = t35 * t28 + t32 * t7 + 0;
t22 = sin(t29);
t41 = pkin(3) * t22 + t43;
t40 = pkin(4) * t49 + pkin(10) * t13 + t42;
t39 = -t32 * t28 + t35 * t7 + 0;
t38 = pkin(4) * t46 + pkin(10) * t14 + t39;
t37 = t19 * pkin(4) - t20 * pkin(10) + t41;
t12 = t19 * t33;
t4 = t20 * t44 + t48;
t3 = t20 * t45 - t47;
t2 = t20 * t47 - t45;
t1 = t20 * t48 + t44;
t5 = [1, 0, 0, 0; 0, 1, 0, 0; 0, 0, 1, 0; 0, 0, 0, 1; t35, -t32, 0, 0; t32, t35, 0, 0; 0, 0, 1, t27; 0, 0, 0, 1; t35 * t34, -t35 * t31, t32, t35 * pkin(1) + t32 * pkin(7) + 0; t32 * t34, -t32 * t31, -t35, t32 * pkin(1) - t35 * pkin(7) + 0; t31, t34, 0, t27; 0, 0, 0, 1; t35 * t23, -t35 * t22, t32, t35 * t21 - t32 * t36 + 0; t32 * t23, -t32 * t22, -t35, t32 * t21 + t35 * t36 + 0; t22, t23, 0, t43; 0, 0, 0, 1; t46, -t14, t32, t39; t49, -t13, -t35, t42; t19, t20, 0, t41; 0, 0, 0, 1; t4, -t3, t14, t38; t2, -t1, t13, t40; t12, -t50, -t20, t37; 0, 0, 0, 1; t4, t14, t3, t4 * pkin(5) + t3 * qJ(6) + t38; t2, t13, t1, t2 * pkin(5) + t1 * qJ(6) + t40; t12, -t20, t50 (pkin(5) * t33 + qJ(6) * t30) * t19 + t37; 0, 0, 0, 1;];
T_ges = t5;
%% Postprocessing: Reshape Output
% Convert Maple format (2-dimensional tensor) to Matlab format (3-dimensional tensor)
% Fallunterscheidung der Initialisierung für symbolische Eingabe
if isa([qJ; pkin], 'double'), T_c_mdh = NaN(4,4,6+1);               % numerisch
else,                         T_c_mdh = sym('xx', [4,4,6+1]); end % symbolisch
for i = 1:6+1
  T_c_mdh(:,:,i) = T_ges((i-1)*4+1 : 4*i, :);
end
