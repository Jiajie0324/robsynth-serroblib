% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für Segment Nr. 5 (0=Basis) von
% S6RPRPPR1
% Use Code from Maple symbolic Code Generation
%
% Rotationsmatrix-Jacobi-Matrix: Differentieller Zusammenhang zwischen
% gestapelter Endeffektor-Rotationsmatrix und verallgemeinerten Koordinaten.
%
%
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d6,theta2,theta4,theta5]';
%
% Output:
% JR_rot [9x6]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 20:39
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S6RPRPPR1_jacobiR_rot_5_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPPR1_jacobiR_rot_5_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RPRPPR1_jacobiR_rot_5_sym_varpar: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From jacobiR_rot_5_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 20:39:11
% EndTime: 2019-02-26 20:39:11
% DurationCPUTime: 0.03s
% Computational Cost: add. (39->10), mult. (26->18), div. (0->0), fcn. (45->6), ass. (0->15)
t62 = qJ(1) + pkin(9);
t58 = sin(t62);
t63 = sin(pkin(11));
t70 = t58 * t63;
t64 = cos(pkin(11));
t69 = t58 * t64;
t61 = qJ(3) + pkin(10);
t59 = cos(t61);
t68 = t59 * t63;
t67 = t59 * t64;
t60 = cos(t62);
t66 = t60 * t63;
t65 = t60 * t64;
t57 = sin(t61);
t1 = [-t58 * t67 + t66, 0, -t57 * t65, 0, 0, 0; t59 * t65 + t70, 0, -t57 * t69, 0, 0, 0; 0, 0, t67, 0, 0, 0; t58 * t68 + t65, 0, t57 * t66, 0, 0, 0; -t59 * t66 + t69, 0, t57 * t70, 0, 0, 0; 0, 0, -t68, 0, 0, 0; -t58 * t57, 0, t60 * t59, 0, 0, 0; t60 * t57, 0, t58 * t59, 0, 0, 0; 0, 0, t57, 0, 0, 0;];
JR_rot  = t1;