% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6RPRRPP3
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
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,theta2]';
%
% Output:
% JR_rot [9x6]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 20:57
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S6RPRRPP3_jacobiR_rot_6_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPP3_jacobiR_rot_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPRRPP3_jacobiR_rot_6_sym_varpar: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From jacobiR_rot_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 20:57:25
% EndTime: 2019-02-26 20:57:25
% DurationCPUTime: 0.03s
% Computational Cost: add. (38->13), mult. (40->20), div. (0->0), fcn. (69->6), ass. (0->16)
t75 = sin(qJ(4));
t76 = sin(qJ(3));
t82 = t76 * t75;
t77 = cos(qJ(4));
t81 = t76 * t77;
t78 = cos(qJ(3));
t80 = t78 * t75;
t79 = t78 * t77;
t74 = qJ(1) + pkin(9);
t73 = cos(t74);
t72 = sin(t74);
t71 = t72 * t75 + t73 * t79;
t70 = -t72 * t77 + t73 * t80;
t69 = t72 * t79 - t73 * t75;
t68 = -t72 * t80 - t73 * t77;
t1 = [-t72 * t76, 0, t73 * t78, 0, 0, 0; t73 * t76, 0, t72 * t78, 0, 0, 0; 0, 0, t76, 0, 0, 0; t68, 0, -t73 * t82, t71, 0, 0; t70, 0, -t72 * t82, t69, 0, 0; 0, 0, t80, t81, 0, 0; -t69, 0, -t73 * t81, -t70, 0, 0; t71, 0, -t72 * t81, t68, 0, 0; 0, 0, t79, -t82, 0, 0;];
JR_rot  = t1;
