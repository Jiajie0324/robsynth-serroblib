% Rotatorische Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 4 (0=Basis) von
% S6RPRPRR5
% Use Code from Maple symbolic Code Generation
%
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% Zeitableitung der Winkeldarstellung des Endeffektors in Basis-Koordinaten
%
% Winkeldarstellung: Euler-XYZ-Winkel, rotx(alpha)*roty(beta)*rotz(gamma)
%
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,d6,theta2]';
%
% Output:
% Ja_rot [3x6]
%   Rotatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 20:51
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_rot = S6RPRPRR5_jacobia_rot_4_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRR5_jacobia_rot_4_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRPRR5_jacobia_rot_4_sym_varpar: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From jacobia_rot_4_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 20:51:15
% EndTime: 2019-02-26 20:51:15
% DurationCPUTime: 0.06s
% Computational Cost: add. (193->17), mult. (145->41), div. (49->9), fcn. (228->7), ass. (0->27)
t33 = cos(qJ(1));
t34 = t33 ^ 2;
t29 = pkin(10) + qJ(3);
t28 = cos(t29);
t27 = sin(t29);
t32 = sin(qJ(1));
t35 = t32 * t27;
t21 = atan2(-t35, -t28);
t19 = sin(t21);
t20 = cos(t21);
t17 = -t19 * t35 - t20 * t28;
t16 = 0.1e1 / t17 ^ 2;
t40 = t16 * t27;
t39 = t19 * t28;
t24 = t27 ^ 2;
t26 = 0.1e1 / t28 ^ 2;
t38 = t24 * t26;
t30 = t32 ^ 2;
t37 = t30 / t34;
t22 = 0.1e1 / (t30 * t38 + 0.1e1);
t36 = t32 * t22;
t25 = 0.1e1 / t28;
t23 = 0.1e1 / (t26 * t37 + 0.1e1);
t18 = (0.1e1 + t38) * t36;
t15 = 0.1e1 / t17;
t14 = 0.1e1 / (t34 * t24 * t16 + 0.1e1);
t1 = [t33 * t27 * t25 * t22, 0, t18, 0, 0, 0; (-t15 * t35 - (-t20 * t24 * t25 * t36 + (t22 - 0.1e1) * t27 * t19) * t34 * t40) * t14, 0 (t28 * t15 - (-t32 * t39 + t20 * t27 + (-t20 * t35 + t39) * t18) * t40) * t33 * t14, 0, 0, 0; (-0.1e1 - t37) * t25 * t23, 0, -0.1e1 / t33 * t26 * t23 * t35, 0, 0, 0;];
Ja_rot  = t1;