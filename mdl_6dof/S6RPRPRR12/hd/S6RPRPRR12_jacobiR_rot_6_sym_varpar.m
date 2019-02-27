% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6RPRPRR12
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
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,d6]';
%
% Output:
% JR_rot [9x6]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 20:55
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S6RPRPRR12_jacobiR_rot_6_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRR12_jacobiR_rot_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPRPRR12_jacobiR_rot_6_sym_varpar: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From jacobiR_rot_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 20:55:02
% EndTime: 2019-02-26 20:55:02
% DurationCPUTime: 0.04s
% Computational Cost: add. (52->15), mult. (54->20), div. (0->0), fcn. (93->6), ass. (0->19)
t85 = qJ(5) + qJ(6);
t83 = sin(t85);
t86 = sin(qJ(3));
t95 = t86 * t83;
t87 = sin(qJ(1));
t94 = t87 * t86;
t88 = cos(qJ(3));
t93 = t88 * t83;
t84 = cos(t85);
t92 = t88 * t84;
t89 = cos(qJ(1));
t91 = t89 * t86;
t90 = t89 * t88;
t82 = t86 * t84;
t79 = t89 * t84 - t87 * t93;
t78 = -t89 * t83 - t87 * t92;
t77 = -t83 * t90 - t87 * t84;
t76 = t87 * t83 - t84 * t90;
t1 = [t77, 0, t83 * t94, 0, t78, t78; t79, 0, -t83 * t91, 0, -t76, -t76; 0, 0, t93, 0, t82, t82; t76, 0, t84 * t94, 0, -t79, -t79; t78, 0, -t84 * t91, 0, t77, t77; 0, 0, t92, 0, -t95, -t95; t91, 0, t87 * t88, 0, 0, 0; t94, 0, -t90, 0, 0, 0; 0, 0, -t86, 0, 0, 0;];
JR_rot  = t1;
