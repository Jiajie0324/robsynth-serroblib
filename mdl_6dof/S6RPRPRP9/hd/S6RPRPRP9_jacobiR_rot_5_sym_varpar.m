% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für Segment Nr. 5 (0=Basis) von
% S6RPRPRP9
% Use Code from Maple symbolic Code Generation
%
% Rotationsmatrix-Jacobi-Matrix: Differentieller Zusammenhang zwischen
% gestapelter Endeffektor-Rotationsmatrix und verallgemeinerten Koordinaten.
%
%
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,theta4]';
%
% Output:
% JR_rot [9x6]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 20:48
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S6RPRPRP9_jacobiR_rot_5_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRP9_jacobiR_rot_5_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPRPRP9_jacobiR_rot_5_sym_varpar: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From jacobiR_rot_5_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 20:48:01
% EndTime: 2019-02-26 20:48:01
% DurationCPUTime: 0.03s
% Computational Cost: add. (40->15), mult. (40->20), div. (0->0), fcn. (69->6), ass. (0->17)
t70 = sin(qJ(3));
t71 = sin(qJ(1));
t78 = t71 * t70;
t69 = pkin(9) + qJ(5);
t67 = sin(t69);
t72 = cos(qJ(3));
t77 = t72 * t67;
t68 = cos(t69);
t76 = t72 * t68;
t73 = cos(qJ(1));
t75 = t73 * t70;
t74 = t73 * t72;
t66 = -t71 * t67 + t68 * t75;
t65 = t67 * t75 + t71 * t68;
t64 = t73 * t67 + t68 * t78;
t63 = -t67 * t78 + t73 * t68;
t1 = [t66, 0, t71 * t76, 0, t63, 0; t64, 0, -t68 * t74, 0, t65, 0; 0, 0, -t70 * t68, 0, -t77, 0; -t65, 0, -t71 * t77, 0, -t64, 0; t63, 0, t67 * t74, 0, t66, 0; 0, 0, t70 * t67, 0, -t76, 0; -t74, 0, t78, 0, 0, 0; -t71 * t72, 0, -t75, 0, 0, 0; 0, 0, t72, 0, 0, 0;];
JR_rot  = t1;
