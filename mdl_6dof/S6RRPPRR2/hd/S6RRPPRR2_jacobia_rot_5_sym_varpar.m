% Rotatorische Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 5 (0=Basis) von
% S6RRPPRR2
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
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d5,d6,theta3,theta4]';
%
% Output:
% Ja_rot [3x6]
%   Rotatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 21:28
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_rot = S6RRPPRR2_jacobia_rot_5_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPRR2_jacobia_rot_5_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPPRR2_jacobia_rot_5_sym_varpar: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From jacobia_rot_5_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 21:28:54
% EndTime: 2019-02-26 21:28:54
% DurationCPUTime: 0.10s
% Computational Cost: add. (286->22), mult. (224->54), div. (52->9), fcn. (332->9), ass. (0->37)
t52 = qJ(2) + pkin(10);
t50 = cos(t52);
t48 = sin(t52);
t53 = sin(qJ(1));
t59 = t53 * t48;
t42 = atan2(-t59, -t50);
t40 = sin(t42);
t41 = cos(t42);
t33 = -t40 * t59 - t41 * t50;
t32 = 0.1e1 / t33 ^ 2;
t54 = cos(qJ(1));
t66 = t32 * t54 ^ 2;
t51 = pkin(11) + qJ(5);
t49 = cos(t51);
t56 = t54 * t49;
t47 = sin(t51);
t60 = t53 * t47;
t39 = t50 * t56 + t60;
t37 = 0.1e1 / t39 ^ 2;
t57 = t54 * t47;
t58 = t53 * t49;
t38 = t50 * t57 - t58;
t65 = t37 * t38;
t64 = t40 * t50;
t44 = t48 ^ 2;
t63 = t44 / t50 ^ 2;
t62 = t48 * t54;
t43 = 0.1e1 / (t53 ^ 2 * t63 + 0.1e1);
t61 = t53 * t43;
t55 = t38 ^ 2 * t37 + 0.1e1;
t45 = 0.1e1 / t50;
t36 = 0.1e1 / t39;
t35 = (0.1e1 + t63) * t61;
t34 = 0.1e1 / t55;
t31 = 0.1e1 / t33;
t30 = 0.1e1 / (t44 * t66 + 0.1e1);
t1 = [t45 * t43 * t62, t35, 0, 0, 0, 0; (-t31 * t59 - (-t41 * t44 * t45 * t61 + (t43 - 0.1e1) * t48 * t40) * t48 * t66) * t30 (t50 * t31 - (-t53 * t64 + t41 * t48 + (-t41 * t59 + t64) * t35) * t48 * t32) * t54 * t30, 0, 0, 0, 0; ((-t50 * t60 - t56) * t36 - (-t50 * t58 + t57) * t65) * t34 (-t36 * t47 + t49 * t65) * t34 * t62, 0, 0, t55 * t34, 0;];
Ja_rot  = t1;
