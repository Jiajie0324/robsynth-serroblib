% Rotatorische Teilmatrix der geometrischen Jacobi-Matrix für Segment Nr. 4 (0=Basis) von
% S6PRRPRR4
% Use Code from Maple symbolic Code Generation
%
% geometrische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
%
%
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d5,d6,theta1]';
%
% Output:
% Jg_rot [3x6]
%   Rotatorische Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 20:06
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Jg_rot = S6PRRPRR4_jacobig_rot_4_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPRR4_jacobig_rot_4_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRRPRR4_jacobig_rot_4_sym_varpar: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From jacobig_rot_4_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 20:05:52
% EndTime: 2019-02-26 20:05:52
% DurationCPUTime: 0.02s
% Computational Cost: add. (4->4), mult. (9->8), div. (0->0), fcn. (17->6), ass. (0->8)
t75 = cos(pkin(6));
t77 = cos(qJ(2));
t78 = t75 * t77;
t76 = sin(qJ(2));
t74 = cos(pkin(11));
t73 = sin(pkin(6));
t72 = sin(pkin(11));
t1 = [0, t72 * t73, t72 * t78 + t74 * t76, 0, 0, 0; 0, -t74 * t73, t72 * t76 - t74 * t78, 0, 0, 0; 0, t75, -t73 * t77, 0, 0, 0;];
Jg_rot  = t1;
