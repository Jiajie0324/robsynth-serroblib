% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für Segment Nr. 5 (0=Basis) von
% S6RPPRRR3
% Use Code from Maple symbolic Code Generation
%
% Rotationsmatrix-Jacobi-Matrix: Differentieller Zusammenhang zwischen
% gestapelter Endeffektor-Rotationsmatrix und verallgemeinerten Koordinaten.
%
%
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d5,d6,theta2]';
%
% Output:
% JR_rot [9x6]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 20:36
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S6RPPRRR3_jacobiR_rot_5_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRRR3_jacobiR_rot_5_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPPRRR3_jacobiR_rot_5_sym_varpar: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From jacobiR_rot_5_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 20:35:57
% EndTime: 2019-02-26 20:35:57
% DurationCPUTime: 0.03s
% Computational Cost: add. (40->15), mult. (40->20), div. (0->0), fcn. (69->6), ass. (0->16)
t66 = sin(qJ(5));
t67 = sin(qJ(4));
t73 = t67 * t66;
t68 = cos(qJ(5));
t72 = t67 * t68;
t69 = cos(qJ(4));
t71 = t69 * t66;
t70 = t69 * t68;
t65 = qJ(1) + pkin(10);
t64 = cos(t65);
t63 = sin(t65);
t62 = -t63 * t66 + t64 * t72;
t61 = t63 * t68 + t64 * t73;
t60 = t63 * t72 + t64 * t66;
t59 = -t63 * t73 + t64 * t68;
t1 = [t62, 0, 0, t63 * t70, t59, 0; t60, 0, 0, -t64 * t70, t61, 0; 0, 0, 0, -t72, -t71, 0; -t61, 0, 0, -t63 * t71, -t60, 0; t59, 0, 0, t64 * t71, t62, 0; 0, 0, 0, t73, -t70, 0; -t64 * t69, 0, 0, t63 * t67, 0, 0; -t63 * t69, 0, 0, -t64 * t67, 0, 0; 0, 0, 0, t69, 0, 0;];
JR_rot  = t1;
