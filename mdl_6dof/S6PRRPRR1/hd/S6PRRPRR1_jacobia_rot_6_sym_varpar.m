% Rotatorische Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6PRRPRR1
% Use Code from Maple symbolic Code Generation
%
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% Zeitableitung der Winkeldarstellung des Endeffektors in Basis-Koordinaten
%
% Winkeldarstellung: Euler-XYZ-Winkel, rotx(alpha)*roty(beta)*rotz(gamma)
%
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d5,d6,theta1,theta4]';
%
% Output:
% Ja_rot [3x6]
%   Rotatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 20:04
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_rot = S6PRRPRR1_jacobia_rot_6_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPRR1_jacobia_rot_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRRPRR1_jacobia_rot_6_sym_varpar: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From jacobia_rot_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 20:04:06
% EndTime: 2019-02-26 20:04:06
% DurationCPUTime: 0.21s
% Computational Cost: add. (1407->31), mult. (1387->78), div. (95->9), fcn. (1976->13), ass. (0->55)
t95 = sin(pkin(6));
t96 = cos(pkin(11));
t110 = t95 * t96;
t101 = cos(qJ(2));
t94 = sin(pkin(11));
t105 = t94 * t101;
t97 = cos(pkin(6));
t99 = sin(qJ(2));
t108 = t97 * t99;
t87 = t108 * t96 + t105;
t93 = qJ(3) + pkin(12) + qJ(5);
t91 = sin(t93);
t92 = cos(t93);
t77 = t110 * t92 + t87 * t91;
t109 = t95 * t99;
t84 = t109 * t91 - t92 * t97;
t72 = atan2(-t77, t84);
t69 = sin(t72);
t70 = cos(t72);
t67 = -t69 * t77 + t70 * t84;
t66 = 0.1e1 / t67 ^ 2;
t111 = t94 * t95;
t104 = t96 * t101;
t89 = -t108 * t94 + t104;
t80 = -t111 * t92 + t89 * t91;
t115 = t66 * t80;
t100 = cos(qJ(6));
t88 = t105 * t97 + t96 * t99;
t98 = sin(qJ(6));
t112 = t88 * t98;
t81 = t111 * t91 + t89 * t92;
t76 = t100 * t81 + t112;
t74 = 0.1e1 / t76 ^ 2;
t106 = t88 * t100;
t75 = t81 * t98 - t106;
t114 = t74 * t75;
t83 = 0.1e1 / t84 ^ 2;
t113 = t77 * t83;
t107 = t101 * t95;
t103 = t74 * t75 ^ 2 + 0.1e1;
t102 = -t69 * t84 - t70 * t77;
t86 = t104 * t97 - t94 * t99;
t85 = t109 * t92 + t91 * t97;
t82 = 0.1e1 / t84;
t79 = -t110 * t91 + t87 * t92;
t73 = 0.1e1 / t76;
t71 = 0.1e1 / (t77 ^ 2 * t83 + 0.1e1);
t68 = 0.1e1 / t103;
t65 = 0.1e1 / t67;
t64 = 0.1e1 / (t66 * t80 ^ 2 + 0.1e1);
t63 = (t107 * t113 - t82 * t86) * t91 * t71;
t62 = (t113 * t85 - t79 * t82) * t71;
t61 = (t100 * t114 - t73 * t98) * t80 * t68;
t60 = (t81 * t65 - (t102 * t62 - t69 * t79 + t70 * t85) * t115) * t64;
t1 = [0, t63, t62, 0, t62, 0; 0 (-t88 * t91 * t65 - ((t107 * t70 - t69 * t86) * t91 + t102 * t63) * t115) * t64, t60, 0, t60, 0; 0 ((-t100 * t89 - t112 * t92) * t73 - (-t106 * t92 + t89 * t98) * t114) * t68, t61, 0, t61, t103 * t68;];
Ja_rot  = t1;
