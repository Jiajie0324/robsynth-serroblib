% Rotatorische Teilmatrix der geometrischen Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6RPRRRP3
% Use Code from Maple symbolic Code Generation
%
% geometrische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
%
%
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d5,theta2]';
%
% Output:
% Jg_rot [3x6]
%   Rotatorische Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 21:09
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Jg_rot = S6RPRRRP3_jacobig_rot_6_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRP3_jacobig_rot_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRRP3_jacobig_rot_6_sym_varpar: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From jacobig_rot_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 21:09:03
% EndTime: 2019-02-26 21:09:03
% DurationCPUTime: 0.02s
% Computational Cost: add. (9->4), mult. (4->2), div. (0->0), fcn. (12->4), ass. (0->8)
t98 = cos(qJ(3));
t97 = sin(qJ(3));
t96 = qJ(1) + pkin(10);
t95 = cos(t96);
t94 = sin(t96);
t93 = t95 * t97;
t92 = t94 * t97;
t1 = [0, 0, t94, t93, t93, 0; 0, 0, -t95, t92, t92, 0; 1, 0, 0, -t98, -t98, 0;];
Jg_rot  = t1;