% Calculate forward kinematics (homogenous transformation matrices) for fixed-base
% S4PRRP3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% pkin [5x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d2,d3]';
% 
% Output:
% T_c_mdh [4x4x(4+1)]
%   homogenous transformation matrices for each (body) frame (MDH)
%   1:  mdh base (link 0) -> mdh base link 0 (unit matrix, no information)
%   ...
%   5:  mdh base (link 0) -> mdh frame (5-1), link (5-1)
%   ...
%   4+1:  mdh base (link 0) -> mdh frame (4)

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 14:12
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function T_c_mdh = S4PRRP3_fkine_fixb_rotmat_mdh_sym_varpar(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(5,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PRRP3_fkine_fixb_rotmat_mdh_sym_varpar: qJ has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [5 1]), ...
  'S4PRRP3_fkine_fixb_rotmat_mdh_sym_varpar: pkin has to be [5x1] (double)');

%% Symbolic Calculation
% From fkine_mdh_floatb_twist_rotmat_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-14 14:12:11
% EndTime: 2018-11-14 14:12:12
% DurationCPUTime: 0.06s
% Computational Cost: add. (32->13), mult. (6->4), div. (0->0), fcn. (18->4), ass. (0->12)
t13 = pkin(1) + 0;
t12 = -pkin(4) + 0;
t5 = qJ(1) + 0;
t11 = -pkin(5) + t12;
t8 = cos(qJ(2));
t10 = t8 * pkin(2) + t13;
t7 = sin(qJ(2));
t9 = t7 * pkin(2) + t5;
t6 = qJ(2) + qJ(3);
t2 = cos(t6);
t1 = sin(t6);
t3 = [1, 0, 0, 0; 0, 1, 0, 0; 0, 0, 1, 0; 0, 0, 0, 1; 0, 0, 1, t5; 1, 0, 0, 0; 0, 1, 0, 0; 0, 0, 0, 1; t7, t8, 0, t5; t8, -t7, 0, t13; 0, 0, -1, t12; 0, 0, 0, 1; t1, t2, 0, t9; t2, -t1, 0, t10; 0, 0, -1, t11; 0, 0, 0, 1; t1, t2, 0, pkin(3) * t1 + t9; t2, -t1, 0, pkin(3) * t2 + t10; 0, 0, -1, -qJ(4) + t11; 0, 0, 0, 1;];
T_ges = t3;
%% Postprocessing: Reshape Output
% Convert Maple format (2-dimensional tensor) to Matlab format (3-dimensional tensor)
% Fallunterscheidung der Initialisierung für symbolische Eingabe
if isa([qJ; pkin], 'double'), T_c_mdh = NaN(4,4,4+1);               % numerisch
else,                         T_c_mdh = sym('xx', [4,4,4+1]); end % symbolisch
for i = 1:4+1
  T_c_mdh(:,:,i) = T_ges((i-1)*4+1 : 4*i, :);
end
