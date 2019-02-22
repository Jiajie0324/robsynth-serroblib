% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für Segment Nr. 5 (0=Basis) von
% S6RPPRPR1
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
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d6,theta2,theta3,theta5]';
%
% Output:
% JR_rot [9x6]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-22 10:08
% Revision: 2b76964ad985d937eecd005a1a368749e6b3dc4d (2019-02-18)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S6RPPRPR1_jacobiR_rot_5_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRPR1_jacobiR_rot_5_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RPPRPR1_jacobiR_rot_5_sym_varpar: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From jacobiR_rot_5_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-22 10:08:53
% EndTime: 2019-02-22 10:08:53
% DurationCPUTime: 0.03s
% Computational Cost: add. (39->10), mult. (26->18), div. (0->0), fcn. (45->6), ass. (0->15)
t59 = qJ(1) + pkin(9);
t55 = sin(t59);
t60 = sin(pkin(11));
t67 = t55 * t60;
t61 = cos(pkin(11));
t66 = t55 * t61;
t58 = pkin(10) + qJ(4);
t56 = cos(t58);
t65 = t56 * t60;
t64 = t56 * t61;
t57 = cos(t59);
t63 = t57 * t60;
t62 = t57 * t61;
t54 = sin(t58);
t1 = [-t55 * t64 + t63, 0, 0, -t54 * t62, 0, 0; t56 * t62 + t67, 0, 0, -t54 * t66, 0, 0; 0, 0, 0, t64, 0, 0; t55 * t65 + t62, 0, 0, t54 * t63, 0, 0; -t56 * t63 + t66, 0, 0, t54 * t67, 0, 0; 0, 0, 0, -t65, 0, 0; -t55 * t54, 0, 0, t57 * t56, 0, 0; t57 * t54, 0, 0, t55 * t56, 0, 0; 0, 0, 0, t54, 0, 0;];
JR_rot  = t1;
