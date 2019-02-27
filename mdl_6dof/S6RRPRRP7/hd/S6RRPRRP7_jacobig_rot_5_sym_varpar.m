% Rotatorische Teilmatrix der geometrischen Jacobi-Matrix für Segment Nr. 5 (0=Basis) von
% S6RRPRRP7
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d5]';
%
% Output:
% Jg_rot [3x6]
%   Rotatorische Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 21:49
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Jg_rot = S6RRPRRP7_jacobig_rot_5_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP7_jacobig_rot_5_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRPRRP7_jacobig_rot_5_sym_varpar: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From jacobig_rot_5_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 21:49:25
% EndTime: 2019-02-26 21:49:25
% DurationCPUTime: 0.02s
% Computational Cost: add. (5->4), mult. (10->6), div. (0->0), fcn. (20->6), ass. (0->8)
t95 = sin(qJ(4));
t96 = sin(qJ(2));
t98 = cos(qJ(4));
t99 = cos(qJ(2));
t101 = t95 * t99 - t96 * t98;
t100 = cos(qJ(1));
t97 = sin(qJ(1));
t1 = [0, t97, 0, -t97, t101 * t100, 0; 0, -t100, 0, t100, t101 * t97, 0; 1, 0, 0, 0, t96 * t95 + t99 * t98, 0;];
Jg_rot  = t1;
