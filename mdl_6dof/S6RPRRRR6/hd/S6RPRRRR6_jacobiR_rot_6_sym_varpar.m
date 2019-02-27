% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6RPRRRR6
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
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d5,d6,theta2]';
%
% Output:
% JR_rot [9x6]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 21:17
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S6RPRRRR6_jacobiR_rot_6_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRR6_jacobiR_rot_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RPRRRR6_jacobiR_rot_6_sym_varpar: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From jacobiR_rot_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 21:17:36
% EndTime: 2019-02-26 21:17:36
% DurationCPUTime: 0.04s
% Computational Cost: add. (147->22), mult. (68->20), div. (0->0), fcn. (117->6), ass. (0->19)
t98 = qJ(4) + qJ(5) + qJ(6);
t94 = sin(t98);
t99 = pkin(11) + qJ(3);
t96 = sin(t99);
t107 = t96 * t94;
t95 = cos(t98);
t106 = t96 * t95;
t100 = sin(qJ(1));
t105 = t100 * t96;
t97 = cos(t99);
t104 = t100 * t97;
t101 = cos(qJ(1));
t103 = t101 * t96;
t102 = t101 * t97;
t93 = t100 * t94 + t95 * t102;
t92 = t100 * t95 - t94 * t102;
t91 = t101 * t94 - t95 * t104;
t90 = t101 * t95 + t94 * t104;
t1 = [t91, 0, -t95 * t103, t92, t92, t92; t93, 0, -t95 * t105, -t90, -t90, -t90; 0, 0, t97 * t95, -t107, -t107, -t107; t90, 0, t94 * t103, -t93, -t93, -t93; t92, 0, t94 * t105, t91, t91, t91; 0, 0, -t97 * t94, -t106, -t106, -t106; -t105, 0, t102, 0, 0, 0; t103, 0, t104, 0, 0, 0; 0, 0, t96, 0, 0, 0;];
JR_rot  = t1;
