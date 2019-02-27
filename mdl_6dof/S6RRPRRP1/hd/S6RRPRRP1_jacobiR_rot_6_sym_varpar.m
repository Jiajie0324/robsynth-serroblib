% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6RRPRRP1
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d5,theta3]';
%
% Output:
% JR_rot [9x6]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 21:46
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S6RRPRRP1_jacobiR_rot_6_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP1_jacobiR_rot_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPRRP1_jacobiR_rot_6_sym_varpar: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From jacobiR_rot_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 21:46:01
% EndTime: 2019-02-26 21:46:01
% DurationCPUTime: 0.04s
% Computational Cost: add. (77->16), mult. (52->20), div. (0->0), fcn. (90->6), ass. (0->24)
t101 = qJ(2) + pkin(10) + qJ(4);
t100 = cos(t101);
t102 = sin(qJ(5));
t112 = t100 * t102;
t103 = sin(qJ(1));
t111 = t103 * t102;
t104 = cos(qJ(5));
t110 = t103 * t104;
t105 = cos(qJ(1));
t109 = t105 * t102;
t108 = t105 * t104;
t99 = sin(t101);
t107 = t99 * t110;
t106 = t99 * t108;
t98 = t105 * t100;
t97 = t100 * t104;
t96 = t103 * t100;
t95 = t99 * t109;
t94 = t99 * t111;
t93 = t100 * t108 + t111;
t92 = -t100 * t109 + t110;
t91 = -t100 * t110 + t109;
t90 = t100 * t111 + t108;
t1 = [t91, -t106, 0, -t106, t92, 0; t93, -t107, 0, -t107, -t90, 0; 0, t97, 0, t97, -t99 * t102, 0; t90, t95, 0, t95, -t93, 0; t92, t94, 0, t94, t91, 0; 0, -t112, 0, -t112, -t99 * t104, 0; -t103 * t99, t98, 0, t98, 0, 0; t105 * t99, t96, 0, t96, 0, 0; 0, t99, 0, t99, 0, 0;];
JR_rot  = t1;
