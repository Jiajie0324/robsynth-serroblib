% Calculate homogenous joint transformation matrices for
% S5RPRRR14
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,alpha3,d1,d3,d4,d5,theta2]';
% 
% Output:
% T_mdh [4x4x5]
%   homogenous transformation matrices for joint transformation (MDH)
%   Transformation matrices from one joint to the next (not: from base to joints)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 19:22
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T_mdh = S5RPRRR14_joint_trafo_rotmat_mdh_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRR14_joint_trafo_rotmat_mdh_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S5RPRRR14_joint_trafo_rotmat_mdh_sym_varpar: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From joint_transformation_mdh_rotmat_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 19:16:43
% EndTime: 2019-12-31 19:16:43
% DurationCPUTime: 0.04s
% Computational Cost: add. (11->11), mult. (12->12), div. (0->0), fcn. (40->14), ass. (0->15)
t93 = cos(qJ(1));
t92 = cos(qJ(3));
t91 = cos(qJ(4));
t90 = cos(qJ(5));
t89 = sin(qJ(1));
t88 = sin(qJ(3));
t87 = sin(qJ(4));
t86 = sin(qJ(5));
t85 = cos(pkin(5));
t84 = cos(pkin(6));
t83 = cos(pkin(11));
t82 = sin(pkin(5));
t81 = sin(pkin(6));
t80 = sin(pkin(11));
t1 = [t93, -t89, 0, 0; t89, t93, 0, 0; 0, 0, 1, pkin(7); 0, 0, 0, 1; t83, -t80, 0, pkin(1); t85 * t80, t85 * t83, -t82, -t82 * qJ(2); t82 * t80, t82 * t83, t85, t85 * qJ(2); 0, 0, 0, 1; t92, -t88, 0, pkin(2); t84 * t88, t84 * t92, -t81, -t81 * pkin(8); t81 * t88, t81 * t92, t84, t84 * pkin(8); 0, 0, 0, 1; t91, -t87, 0, pkin(3); 0, 0, -1, -pkin(9); t87, t91, 0, 0; 0, 0, 0, 1; t90, -t86, 0, pkin(4); 0, 0, -1, -pkin(10); t86, t90, 0, 0; 0, 0, 0, 1;];
T_ges = t1;
%% Postprocessing: Reshape Output
% Convert Maple format (2-dimensional tensor) to Matlab format (3-dimensional tensor)
% Fallunterscheidung der Initialisierung für symbolische Eingabe
if isa([qJ; pkin], 'double'), T_mdh = NaN(4,4,5);             % numerisch
else,                         T_mdh = sym('xx', [4,4,5]); end % symbolisch

for i = 1:5
  T_mdh(:,:,i) = T_ges((i-1)*4+1 : 4*i, :);
end
