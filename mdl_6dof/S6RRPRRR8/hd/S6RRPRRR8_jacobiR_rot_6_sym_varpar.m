% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6RRPRRR8
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d5,d6,theta3]';
%
% Output:
% JR_rot [9x6]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-22 11:44
% Revision: 2b76964ad985d937eecd005a1a368749e6b3dc4d (2019-02-18)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S6RRPRRR8_jacobiR_rot_6_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRR8_jacobiR_rot_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPRRR8_jacobiR_rot_6_sym_varpar: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From jacobiR_rot_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-22 11:44:03
% EndTime: 2019-02-22 11:44:03
% DurationCPUTime: 0.10s
% Computational Cost: add. (158->21), mult. (68->20), div. (0->0), fcn. (117->6), ass. (0->19)
t90 = pkin(11) + qJ(4) + qJ(5) + qJ(6);
t88 = sin(t90);
t91 = sin(qJ(2));
t101 = t91 * t88;
t89 = cos(t90);
t100 = t91 * t89;
t92 = sin(qJ(1));
t99 = t92 * t91;
t93 = cos(qJ(2));
t98 = t93 * t88;
t97 = t93 * t89;
t94 = cos(qJ(1));
t96 = t94 * t91;
t95 = t94 * t93;
t87 = t92 * t88 + t89 * t95;
t86 = -t88 * t95 + t92 * t89;
t85 = t94 * t88 - t92 * t97;
t84 = t94 * t89 + t92 * t98;
t1 = [t85, -t89 * t96, 0, t86, t86, t86; t87, -t89 * t99, 0, -t84, -t84, -t84; 0, t97, 0, -t101, -t101, -t101; t84, t88 * t96, 0, -t87, -t87, -t87; t86, t88 * t99, 0, t85, t85, t85; 0, -t98, 0, -t100, -t100, -t100; -t99, t95, 0, 0, 0, 0; t96, t92 * t93, 0, 0, 0, 0; 0, t91, 0, 0, 0, 0;];
JR_rot  = t1;
