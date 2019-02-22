% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für Segment Nr. 5 (0=Basis) von
% S6RRPRRP3
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
% Datum: 2019-02-22 11:32
% Revision: 2b76964ad985d937eecd005a1a368749e6b3dc4d (2019-02-18)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S6RRPRRP3_jacobiR_rot_5_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP3_jacobiR_rot_5_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPRRP3_jacobiR_rot_5_sym_varpar: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From jacobiR_rot_5_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-22 11:32:17
% EndTime: 2019-02-22 11:32:17
% DurationCPUTime: 0.08s
% Computational Cost: add. (81->18), mult. (54->20), div. (0->0), fcn. (93->6), ass. (0->19)
t95 = qJ(2) + pkin(10);
t91 = sin(t95);
t96 = qJ(4) + qJ(5);
t93 = sin(t96);
t104 = t91 * t93;
t94 = cos(t96);
t103 = t91 * t94;
t97 = sin(qJ(1));
t102 = t97 * t93;
t101 = t97 * t94;
t98 = cos(qJ(1));
t100 = t98 * t93;
t99 = t98 * t94;
t92 = cos(t95);
t90 = t92 * t99 + t102;
t89 = -t100 * t92 + t101;
t88 = -t101 * t92 + t100;
t87 = t102 * t92 + t99;
t1 = [t88, -t91 * t99, 0, t89, t89, 0; t90, -t91 * t101, 0, -t87, -t87, 0; 0, t92 * t94, 0, -t104, -t104, 0; t87, t91 * t100, 0, -t90, -t90, 0; t89, t91 * t102, 0, t88, t88, 0; 0, -t92 * t93, 0, -t103, -t103, 0; -t97 * t91, t98 * t92, 0, 0, 0, 0; t98 * t91, t97 * t92, 0, 0, 0, 0; 0, t91, 0, 0, 0, 0;];
JR_rot  = t1;
