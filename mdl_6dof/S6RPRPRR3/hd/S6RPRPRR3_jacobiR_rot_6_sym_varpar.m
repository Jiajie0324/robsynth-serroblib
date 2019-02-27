% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6RPRPRR3
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
% Datum: 2019-02-26 20:50
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S6RPRPRR3_jacobiR_rot_6_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRR3_jacobiR_rot_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RPRPRR3_jacobiR_rot_6_sym_varpar: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From jacobiR_rot_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 20:50:14
% EndTime: 2019-02-26 20:50:14
% DurationCPUTime: 0.04s
% Computational Cost: add. (120->18), mult. (54->20), div. (0->0), fcn. (93->6), ass. (0->17)
t87 = pkin(11) + qJ(5) + qJ(6);
t83 = sin(t87);
t89 = sin(qJ(3));
t94 = t89 * t83;
t84 = cos(t87);
t93 = t89 * t84;
t90 = cos(qJ(3));
t92 = t90 * t83;
t91 = t90 * t84;
t88 = qJ(1) + pkin(10);
t86 = cos(t88);
t85 = sin(t88);
t82 = t85 * t83 + t86 * t91;
t81 = t85 * t84 - t86 * t92;
t80 = t86 * t83 - t85 * t91;
t79 = t86 * t84 + t85 * t92;
t1 = [t80, 0, -t86 * t93, 0, t81, t81; t82, 0, -t85 * t93, 0, -t79, -t79; 0, 0, t91, 0, -t94, -t94; t79, 0, t86 * t94, 0, -t82, -t82; t81, 0, t85 * t94, 0, t80, t80; 0, 0, -t92, 0, -t93, -t93; -t85 * t89, 0, t86 * t90, 0, 0, 0; t86 * t89, 0, t85 * t90, 0, 0, 0; 0, 0, t89, 0, 0, 0;];
JR_rot  = t1;
