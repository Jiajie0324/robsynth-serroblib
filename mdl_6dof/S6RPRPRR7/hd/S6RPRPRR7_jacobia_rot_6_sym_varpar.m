% Rotatorische Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6RPRPRR7
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
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,d6,theta4]';
%
% Output:
% Ja_rot [3x6]
%   Rotatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 20:52
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_rot = S6RPRPRR7_jacobia_rot_6_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRR7_jacobia_rot_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRPRR7_jacobia_rot_6_sym_varpar: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From jacobia_rot_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 20:52:12
% EndTime: 2019-02-26 20:52:12
% DurationCPUTime: 0.11s
% Computational Cost: add. (519->20), mult. (332->54), div. (79->9), fcn. (489->9), ass. (0->38)
t64 = qJ(3) + pkin(10) + qJ(5);
t62 = sin(t64);
t63 = cos(t64);
t68 = cos(qJ(1));
t72 = t68 * t63;
t57 = atan2(-t72, t62);
t51 = sin(t57);
t52 = cos(t57);
t48 = -t51 * t72 + t52 * t62;
t47 = 0.1e1 / t48 ^ 2;
t66 = sin(qJ(1));
t80 = t47 * t66 ^ 2;
t79 = t51 * t62;
t65 = sin(qJ(6));
t71 = t68 * t65;
t67 = cos(qJ(6));
t74 = t66 * t67;
t56 = t62 * t74 + t71;
t54 = 0.1e1 / t56 ^ 2;
t70 = t68 * t67;
t75 = t66 * t65;
t55 = t62 * t75 - t70;
t78 = t54 * t55;
t61 = t63 ^ 2;
t77 = 0.1e1 / t62 ^ 2 * t61;
t76 = t63 * t66;
t58 = 0.1e1 / (t68 ^ 2 * t77 + 0.1e1);
t73 = t68 * t58;
t69 = t55 ^ 2 * t54 + 0.1e1;
t59 = 0.1e1 / t62;
t53 = 0.1e1 / t56;
t50 = 0.1e1 / t69;
t49 = (0.1e1 + t77) * t73;
t46 = 0.1e1 / t48;
t45 = 0.1e1 / (t61 * t80 + 0.1e1);
t44 = (t53 * t65 - t67 * t78) * t50 * t76;
t43 = (t62 * t46 + (t68 * t79 + t52 * t63 + (-t52 * t72 - t79) * t49) * t63 * t47) * t66 * t45;
t1 = [t59 * t58 * t76, 0, t49, 0, t49, 0; (-t46 * t72 + (-t52 * t59 * t61 * t73 + (-t58 + 0.1e1) * t63 * t51) * t63 * t80) * t45, 0, t43, 0, t43, 0; ((t62 * t71 + t74) * t53 - (t62 * t70 - t75) * t78) * t50, 0, t44, 0, t44, t69 * t50;];
Ja_rot  = t1;
