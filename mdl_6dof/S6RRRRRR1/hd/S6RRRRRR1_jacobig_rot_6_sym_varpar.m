% Rotatorische Teilmatrix der geometrischen Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6RRRRRR1
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d5,d6]';
%
% Output:
% Jg_rot [3x6]
%   Rotatorische Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 22:47
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Jg_rot = S6RRRRRR1_jacobig_rot_6_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRR1_jacobig_rot_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRRR1_jacobig_rot_6_sym_varpar: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From jacobig_rot_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 22:47:03
% EndTime: 2019-02-26 22:47:03
% DurationCPUTime: 0.02s
% Computational Cost: add. (14->6), mult. (2->2), div. (0->0), fcn. (13->4), ass. (0->5)
t100 = cos(qJ(1));
t99 = sin(qJ(1));
t98 = qJ(2) + qJ(3) + qJ(4) + qJ(5);
t97 = sin(t98);
t1 = [0, t99, t99, t99, t99, t100 * t97; 0, -t100, -t100, -t100, -t100, t99 * t97; 1, 0, 0, 0, 0, -cos(t98);];
Jg_rot  = t1;
