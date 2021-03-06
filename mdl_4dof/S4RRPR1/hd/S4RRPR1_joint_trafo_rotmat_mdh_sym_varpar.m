% Calculate homogenous joint transformation matrices for
% S4RRPR1
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
% T_mdh [4x4x4]
%   homogenous transformation matrices for joint transformation (MDH)
%   Transformation matrices from one joint to the next (not: from base to joints)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-01-31 13:16
% Revision: 9ef80adae39e3cd5824e7abdb6e4e1e7895c437e (2019-01-31)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T_mdh = S4RRPR1_joint_trafo_rotmat_mdh_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RRPR1_joint_trafo_rotmat_mdh_sym_varpar: qJ has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4RRPR1_joint_trafo_rotmat_mdh_sym_varpar: pkin has to be [7x1] (double)');

%% Symbolic Calculation
% From joint_transformation_mdh_rotmat_matlab.m
% OptimizationMode: 2
% StartTime: 2019-01-31 13:16:31
% EndTime: 2019-01-31 13:16:31
% DurationCPUTime: 0.02s
% Computational Cost: add. (4->4), mult. (0->0), div. (0->0), fcn. (16->8), ass. (0->9)
t30 = cos(qJ(1));
t29 = cos(qJ(2));
t28 = cos(qJ(4));
t27 = sin(qJ(1));
t26 = sin(qJ(2));
t25 = sin(qJ(4));
t24 = cos(pkin(7));
t23 = sin(pkin(7));
t1 = [t30, -t27, 0, 0; t27, t30, 0, 0; 0, 0, 1, pkin(4); 0, 0, 0, 1; t29, -t26, 0, pkin(1); t26, t29, 0, 0; 0, 0, 1, pkin(5); 0, 0, 0, 1; t24, -t23, 0, pkin(2); t23, t24, 0, 0; 0, 0, 1, qJ(3); 0, 0, 0, 1; t28, -t25, 0, pkin(3); t25, t28, 0, 0; 0, 0, 1, pkin(6); 0, 0, 0, 1;];
T_ges = t1;
%% Postprocessing: Reshape Output
% Convert Maple format (2-dimensional tensor) to Matlab format (3-dimensional tensor)
% Fallunterscheidung der Initialisierung für symbolische Eingabe
if isa([qJ; pkin], 'double'), T_mdh = NaN(4,4,4);             % numerisch
else,                         T_mdh = sym('xx', [4,4,4]); end % symbolisch

for i = 1:4
  T_mdh(:,:,i) = T_ges((i-1)*4+1 : 4*i, :);
end
