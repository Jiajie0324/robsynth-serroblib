% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6RRRRPR4
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d6,theta5]';
%
% Output:
% JR_rot [9x6]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 22:32
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S6RRRRPR4_jacobiR_rot_6_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR4_jacobiR_rot_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRPR4_jacobiR_rot_6_sym_varpar: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From jacobiR_rot_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 22:32:17
% EndTime: 2019-02-26 22:32:17
% DurationCPUTime: 0.09s
% Computational Cost: add. (139->21), mult. (66->20), div. (0->0), fcn. (114->6), ass. (0->25)
t115 = qJ(4) + pkin(11) + qJ(6);
t113 = sin(t115);
t118 = qJ(2) + qJ(3);
t116 = sin(t118);
t127 = t116 * t113;
t114 = cos(t115);
t126 = t116 * t114;
t117 = cos(t118);
t125 = t117 * t113;
t119 = sin(qJ(1));
t124 = t119 * t116;
t111 = t119 * t117;
t120 = cos(qJ(1));
t123 = t120 * t116;
t112 = t120 * t117;
t122 = t114 * t124;
t121 = t114 * t123;
t110 = t117 * t114;
t109 = t113 * t123;
t108 = t113 * t124;
t107 = t114 * t112 + t119 * t113;
t106 = -t113 * t112 + t119 * t114;
t105 = -t114 * t111 + t113 * t120;
t104 = t113 * t111 + t114 * t120;
t1 = [t105, -t121, -t121, t106, 0, t106; t107, -t122, -t122, -t104, 0, -t104; 0, t110, t110, -t127, 0, -t127; t104, t109, t109, -t107, 0, -t107; t106, t108, t108, t105, 0, t105; 0, -t125, -t125, -t126, 0, -t126; -t124, t112, t112, 0, 0, 0; t123, t111, t111, 0, 0, 0; 0, t116, t116, 0, 0, 0;];
JR_rot  = t1;
