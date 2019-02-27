% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6RPRPRR6
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
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,d6,theta2,theta4]';
%
% Output:
% JR_rot [9x6]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 20:51
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S6RPRPRR6_jacobiR_rot_6_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRR6_jacobiR_rot_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RPRPRR6_jacobiR_rot_6_sym_varpar: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From jacobiR_rot_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 20:51:42
% EndTime: 2019-02-26 20:51:42
% DurationCPUTime: 0.09s
% Computational Cost: add. (115->18), mult. (54->20), div. (0->0), fcn. (93->6), ass. (0->19)
t94 = pkin(11) + qJ(5) + qJ(6);
t90 = sin(t94);
t95 = pkin(10) + qJ(3);
t92 = sin(t95);
t103 = t92 * t90;
t91 = cos(t94);
t102 = t92 * t91;
t96 = sin(qJ(1));
t101 = t96 * t92;
t93 = cos(t95);
t100 = t96 * t93;
t97 = cos(qJ(1));
t99 = t97 * t92;
t98 = t97 * t93;
t89 = t96 * t90 + t91 * t98;
t88 = -t90 * t98 + t96 * t91;
t87 = -t91 * t100 + t97 * t90;
t86 = t90 * t100 + t97 * t91;
t1 = [t87, 0, -t91 * t99, 0, t88, t88; t89, 0, -t91 * t101, 0, -t86, -t86; 0, 0, t93 * t91, 0, -t103, -t103; t86, 0, t90 * t99, 0, -t89, -t89; t88, 0, t90 * t101, 0, t87, t87; 0, 0, -t93 * t90, 0, -t102, -t102; -t101, 0, t98, 0, 0, 0; t99, 0, t100, 0, 0, 0; 0, 0, t92, 0, 0, 0;];
JR_rot  = t1;
