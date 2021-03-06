% Calculate forward kinematics (homogenous transformation matrices) for fixed-base
% S4RRPR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% pkin [5x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d2]';
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
% Datum: 2019-07-18 18:16
% Revision: 08c8d617a845f5dd194efdf9aca2774760f7818f (2019-07-16)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T_c_mdh = S4RRPR2_fkine_fixb_rotmat_mdh_sym_varpar(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(5,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RRPR2_fkine_fixb_rotmat_mdh_sym_varpar: qJ has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [5 1]), ...
  'S4RRPR2_fkine_fixb_rotmat_mdh_sym_varpar: pkin has to be [5x1] (double)');

%% Symbolic Calculation
% From fkine_mdh_floatb_twist_rotmat_matlab.m
% OptimizationMode: 2
% StartTime: 2019-07-18 18:16:27
% EndTime: 2019-07-18 18:16:27
% DurationCPUTime: 0.06s
% Computational Cost: add. (56->17), mult. (24->12), div. (0->0), fcn. (44->6), ass. (0->16)
t20 = pkin(4) + 0;
t13 = sin(qJ(1));
t19 = t13 * pkin(1) + 0;
t15 = cos(qJ(1));
t18 = t15 * pkin(1) + 0;
t11 = qJ(1) + qJ(2);
t6 = sin(t11);
t7 = cos(t11);
t17 = t7 * pkin(2) + t6 * qJ(3) + t18;
t16 = t6 * pkin(2) - t7 * qJ(3) + t19;
t14 = cos(qJ(4));
t12 = sin(qJ(4));
t8 = pkin(5) + t20;
t2 = -t7 * t12 + t6 * t14;
t1 = -t6 * t12 - t7 * t14;
t3 = [1, 0, 0, 0; 0, 1, 0, 0; 0, 0, 1, 0; 0, 0, 0, 1; t15, -t13, 0, 0; t13, t15, 0, 0; 0, 0, 1, t20; 0, 0, 0, 1; t7, -t6, 0, t18; t6, t7, 0, t19; 0, 0, 1, t8; 0, 0, 0, 1; t7, 0, t6, t17; t6, 0, -t7, t16; 0, 1, 0, t8; 0, 0, 0, 1; -t1, t2, 0, t7 * pkin(3) + t17; t2, t1, 0, t6 * pkin(3) + t16; 0, 0, -1, t8; 0, 0, 0, 1;];
T_ges = t3;
%% Postprocessing: Reshape Output
% Convert Maple format (2-dimensional tensor) to Matlab format (3-dimensional tensor)
% Fallunterscheidung der Initialisierung für symbolische Eingabe
if isa([qJ; pkin], 'double'), T_c_mdh = NaN(4,4,4+1);               % numerisch
else,                         T_c_mdh = sym('xx', [4,4,4+1]); end % symbolisch
for i = 1:4+1
  T_c_mdh(:,:,i) = T_ges((i-1)*4+1 : 4*i, :);
end
