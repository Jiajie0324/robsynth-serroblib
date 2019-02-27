% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für Segment Nr. 5 (0=Basis) von
% S6RPRRPP5
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
% Datum: 2019-02-26 20:58
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S6RPRRPP5_jacobiR_rot_5_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPP5_jacobiR_rot_5_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPRRPP5_jacobiR_rot_5_sym_varpar: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From jacobiR_rot_5_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 20:58:48
% EndTime: 2019-02-26 20:58:48
% DurationCPUTime: 0.03s
% Computational Cost: add. (35->13), mult. (40->20), div. (0->0), fcn. (69->6), ass. (0->16)
t85 = sin(qJ(4));
t86 = sin(qJ(1));
t92 = t86 * t85;
t87 = cos(qJ(4));
t91 = t86 * t87;
t88 = cos(qJ(1));
t90 = t88 * t85;
t89 = t88 * t87;
t84 = pkin(9) + qJ(3);
t83 = cos(t84);
t82 = sin(t84);
t81 = t83 * t89 + t92;
t80 = t83 * t90 - t91;
t79 = t83 * t91 - t90;
t78 = -t83 * t92 - t89;
t1 = [-t79, 0, -t82 * t89, -t80, 0, 0; t81, 0, -t82 * t91, t78, 0, 0; 0, 0, t83 * t87, -t82 * t85, 0, 0; -t86 * t82, 0, t88 * t83, 0, 0, 0; t88 * t82, 0, t86 * t83, 0, 0, 0; 0, 0, t82, 0, 0, 0; t78, 0, -t82 * t90, t81, 0, 0; t80, 0, -t82 * t92, t79, 0, 0; 0, 0, t83 * t85, t82 * t87, 0, 0;];
JR_rot  = t1;
