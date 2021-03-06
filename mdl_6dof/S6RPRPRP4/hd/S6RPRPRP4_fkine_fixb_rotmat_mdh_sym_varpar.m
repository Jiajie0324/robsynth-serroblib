% Calculate forward kinematics (homogenous transformation matrices) for fixed-base
% S6RPRPRP4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,theta2]';
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
% Datum: 2018-11-23 15:59
% Revision: 76f9d5e39f14dc242b53c0d9d3d9db48bd8f37c0
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function T_c_mdh = S6RPRPRP4_fkine_fixb_rotmat_mdh_sym_varpar(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRP4_fkine_fixb_rotmat_mdh_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPRPRP4_fkine_fixb_rotmat_mdh_sym_varpar: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From fkine_mdh_floatb_twist_rotmat_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-23 15:58:44
% EndTime: 2018-11-23 15:58:44
% DurationCPUTime: 0.14s
% Computational Cost: add. (176->49), mult. (130->41), div. (0->0), fcn. (184->8), ass. (0->37)
t25 = qJ(1) + pkin(9);
t18 = sin(t25);
t30 = cos(qJ(3));
t12 = t18 * t30;
t27 = sin(qJ(3));
t43 = qJ(4) * t27;
t50 = pkin(3) * t12 + t18 * t43;
t49 = t18 * t27;
t19 = cos(t25);
t48 = t19 * t27;
t13 = t19 * t30;
t26 = sin(qJ(5));
t47 = t26 * t27;
t29 = cos(qJ(5));
t46 = t27 * t29;
t45 = t30 * t26;
t44 = t30 * t29;
t42 = pkin(6) + 0;
t28 = sin(qJ(1));
t41 = t28 * pkin(1) + 0;
t31 = cos(qJ(1));
t40 = t31 * pkin(1) + 0;
t20 = qJ(2) + t42;
t39 = t18 * pkin(2) + t41;
t38 = t27 * pkin(3) + t20;
t37 = t19 * pkin(2) + t18 * pkin(7) + t40;
t36 = -t19 * pkin(7) + t39;
t35 = pkin(3) * t13 + t19 * t43 + t37;
t34 = -t30 * qJ(4) + t38;
t33 = t18 * pkin(4) + pkin(8) * t13 + t35;
t32 = pkin(8) * t12 + (-pkin(4) - pkin(7)) * t19 + t39 + t50;
t21 = t27 * pkin(8);
t4 = t18 * t47 - t19 * t29;
t3 = t18 * t46 + t19 * t26;
t2 = t18 * t29 + t19 * t47;
t1 = t18 * t26 - t19 * t46;
t5 = [1, 0, 0, 0; 0, 1, 0, 0; 0, 0, 1, 0; 0, 0, 0, 1; t31, -t28, 0, 0; t28, t31, 0, 0; 0, 0, 1, t42; 0, 0, 0, 1; t19, -t18, 0, t40; t18, t19, 0, t41; 0, 0, 1, t20; 0, 0, 0, 1; t13, -t48, t18, t37; t12, -t49, -t19, t36; t27, t30, 0, t20; 0, 0, 0, 1; t18, -t13, t48, t35; -t19, -t12, t49, t36 + t50; 0, -t27, -t30, t34; 0, 0, 0, 1; t2, -t1, t13, t33; t4, t3, t12, t32; -t45, -t44, t27, t21 + t34; 0, 0, 0, 1; t2, t13, t1, t2 * pkin(5) + t1 * qJ(6) + t33; t4, t12, -t3, t4 * pkin(5) - t3 * qJ(6) + t32; -t45, t27, t44, t21 + (-pkin(5) * t26 + qJ(6) * t29 - qJ(4)) * t30 + t38; 0, 0, 0, 1;];
T_ges = t5;
%% Postprocessing: Reshape Output
% Convert Maple format (2-dimensional tensor) to Matlab format (3-dimensional tensor)
% Fallunterscheidung der Initialisierung für symbolische Eingabe
if isa([qJ; pkin], 'double'), T_c_mdh = NaN(4,4,6+1);               % numerisch
else,                         T_c_mdh = sym('xx', [4,4,6+1]); end % symbolisch
for i = 1:6+1
  T_c_mdh(:,:,i) = T_ges((i-1)*4+1 : 4*i, :);
end
