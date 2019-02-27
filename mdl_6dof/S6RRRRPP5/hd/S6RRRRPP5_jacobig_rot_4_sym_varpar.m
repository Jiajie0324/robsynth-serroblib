% Rotatorische Teilmatrix der geometrischen Jacobi-Matrix für Segment Nr. 4 (0=Basis) von
% S6RRRRPP5
% Use Code from Maple symbolic Code Generation
%
% geometrische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
%
%
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4]';
%
% Output:
% Jg_rot [3x6]
%   Rotatorische Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 22:27
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Jg_rot = S6RRRRPP5_jacobig_rot_4_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPP5_jacobig_rot_4_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRRRPP5_jacobig_rot_4_sym_varpar: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From jacobig_rot_4_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 22:27:38
% EndTime: 2019-02-26 22:27:38
% DurationCPUTime: 0.02s
% Computational Cost: add. (3->3), mult. (4->2), div. (0->0), fcn. (12->4), ass. (0->7)
t73 = cos(qJ(1));
t72 = cos(qJ(2));
t71 = sin(qJ(1));
t70 = sin(qJ(2));
t69 = t73 * t70;
t68 = t71 * t70;
t1 = [0, t71, t69, t69, 0, 0; 0, -t73, t68, t68, 0, 0; 1, 0, -t72, -t72, 0, 0;];
Jg_rot  = t1;
