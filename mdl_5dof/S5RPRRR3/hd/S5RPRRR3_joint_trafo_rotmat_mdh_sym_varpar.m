% Calculate homogenous joint transformation matrices for
% S5RPRRR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d4,d5]';
% 
% Output:
% T_mdh [4x4x5]
%   homogenous transformation matrices for joint transformation (MDH)
%   Transformation matrices from one joint to the next (not: from base to joints)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-24 10:45
% Revision: 5d02717ba55fba3c5445be8d9f6bf09c2cd6665f (2019-10-14)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T_mdh = S5RPRRR3_joint_trafo_rotmat_mdh_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRR3_joint_trafo_rotmat_mdh_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPRRR3_joint_trafo_rotmat_mdh_sym_varpar: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From joint_transformation_mdh_rotmat_matlab.m
% OptimizationMode: 2
% StartTime: 2019-10-24 10:45:08
% EndTime: 2019-10-24 10:45:08
% DurationCPUTime: 0.03s
% Computational Cost: add. (6->6), mult. (0->0), div. (0->0), fcn. (16->8), ass. (0->9)
t33 = cos(qJ(1));
t32 = cos(qJ(3));
t31 = cos(qJ(4));
t30 = cos(qJ(5));
t29 = sin(qJ(1));
t28 = sin(qJ(3));
t27 = sin(qJ(4));
t26 = sin(qJ(5));
t1 = [t33, -t29, 0, 0; t29, t33, 0, 0; 0, 0, 1, pkin(5); 0, 0, 0, 1; 0, -1, 0, pkin(1); 0, 0, -1, -qJ(2); 1, 0, 0, 0; 0, 0, 0, 1; t32, -t28, 0, pkin(2); 0, 0, -1, -pkin(6); t28, t32, 0, 0; 0, 0, 0, 1; t31, -t27, 0, pkin(3); t27, t31, 0, 0; 0, 0, 1, pkin(7); 0, 0, 0, 1; t30, -t26, 0, pkin(4); t26, t30, 0, 0; 0, 0, 1, pkin(8); 0, 0, 0, 1;];
T_ges = t1;
%% Postprocessing: Reshape Output
% Convert Maple format (2-dimensional tensor) to Matlab format (3-dimensional tensor)
% Fallunterscheidung der Initialisierung für symbolische Eingabe
if isa([qJ; pkin], 'double'), T_mdh = NaN(4,4,5);             % numerisch
else,                         T_mdh = sym('xx', [4,4,5]); end % symbolisch

for i = 1:5
  T_mdh(:,:,i) = T_ges((i-1)*4+1 : 4*i, :);
end
