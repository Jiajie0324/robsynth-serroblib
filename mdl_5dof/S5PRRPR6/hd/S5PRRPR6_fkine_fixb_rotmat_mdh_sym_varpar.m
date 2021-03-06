% Calculate forward kinematics (homogenous transformation matrices) for fixed-base
% S5PRRPR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,d2,d3,d5,theta1,theta4]';
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
% Datum: 2019-12-05 16:33
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T_c_mdh = S5PRRPR6_fkine_fixb_rotmat_mdh_sym_varpar(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRPR6_fkine_fixb_rotmat_mdh_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S5PRRPR6_fkine_fixb_rotmat_mdh_sym_varpar: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From fkine_mdh_floatb_twist_rotmat_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 16:29:55
% EndTime: 2019-12-05 16:29:55
% DurationCPUTime: 0.15s
% Computational Cost: add. (179->61), mult. (371->79), div. (0->0), fcn. (511->12), ass. (0->44)
t26 = sin(pkin(9));
t27 = sin(pkin(5));
t53 = t26 * t27;
t33 = sin(qJ(2));
t52 = t27 * t33;
t34 = cos(qJ(3));
t51 = t27 * t34;
t35 = cos(qJ(2));
t50 = t27 * t35;
t29 = cos(pkin(9));
t49 = t29 * t27;
t30 = cos(pkin(5));
t48 = t30 * t33;
t47 = t30 * t35;
t46 = qJ(1) + 0;
t25 = sin(pkin(10));
t45 = pkin(4) * t25 + pkin(7);
t44 = t29 * pkin(1) + pkin(6) * t53 + 0;
t43 = t30 * pkin(6) + t46;
t10 = -t26 * t48 + t29 * t35;
t42 = t10 * pkin(2) + t44;
t41 = pkin(2) * t52 + t43;
t40 = t26 * pkin(1) - pkin(6) * t49 + 0;
t9 = t26 * t47 + t29 * t33;
t39 = t9 * pkin(7) + t42;
t8 = t26 * t35 + t29 * t48;
t38 = t8 * pkin(2) + t40;
t37 = -pkin(7) * t50 + t41;
t7 = t26 * t33 - t29 * t47;
t36 = t7 * pkin(7) + t38;
t32 = sin(qJ(3));
t31 = -pkin(8) - qJ(4);
t28 = cos(pkin(10));
t24 = pkin(10) + qJ(5);
t20 = cos(t24);
t19 = sin(t24);
t18 = t28 * pkin(4) + pkin(3);
t12 = t30 * t32 + t33 * t51;
t11 = -t30 * t34 + t32 * t52;
t4 = t10 * t34 + t32 * t53;
t3 = t10 * t32 - t26 * t51;
t2 = -t32 * t49 + t8 * t34;
t1 = t8 * t32 + t34 * t49;
t5 = [1, 0, 0, 0; 0, 1, 0, 0; 0, 0, 1, 0; 0, 0, 0, 1; t29, -t26, 0, 0; t26, t29, 0, 0; 0, 0, 1, t46; 0, 0, 0, 1; t10, -t9, t53, t44; t8, -t7, -t49, t40; t52, t50, t30, t43; 0, 0, 0, 1; t4, -t3, t9, t39; t2, -t1, t7, t36; t12, -t11, -t50, t37; 0, 0, 0, 1; t9 * t25 + t4 * t28, -t4 * t25 + t9 * t28, t3, t4 * pkin(3) + t3 * qJ(4) + t39; t2 * t28 + t7 * t25, -t2 * t25 + t7 * t28, t1, t2 * pkin(3) + t1 * qJ(4) + t36; t12 * t28 - t25 * t50, -t12 * t25 - t28 * t50, t11, t12 * pkin(3) + t11 * qJ(4) + t37; 0, 0, 0, 1; t9 * t19 + t4 * t20, -t4 * t19 + t9 * t20, t3, t4 * t18 - t3 * t31 + t45 * t9 + t42; t7 * t19 + t2 * t20, -t2 * t19 + t7 * t20, t1, -t1 * t31 + t2 * t18 + t45 * t7 + t38; t12 * t20 - t19 * t50, -t12 * t19 - t20 * t50, t11, -t11 * t31 + t12 * t18 - t45 * t50 + t41; 0, 0, 0, 1;];
T_ges = t5;
%% Postprocessing: Reshape Output
% Convert Maple format (2-dimensional tensor) to Matlab format (3-dimensional tensor)
% Fallunterscheidung der Initialisierung für symbolische Eingabe
if isa([qJ; pkin], 'double'), T_c_mdh = NaN(4,4,5+1);               % numerisch
else,                         T_c_mdh = sym('xx', [4,4,5+1]); end % symbolisch
for i = 1:5+1
  T_c_mdh(:,:,i) = T_ges((i-1)*4+1 : 4*i, :);
end
