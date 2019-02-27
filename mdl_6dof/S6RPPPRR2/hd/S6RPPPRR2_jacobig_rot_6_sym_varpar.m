% Rotatorische Teilmatrix der geometrischen Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6RPPPRR2
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
%   pkin=[a2,a3,a4,a5,a6,d1,d5,d6,theta2,theta4]';
%
% Output:
% Jg_rot [3x6]
%   Rotatorische Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 20:23
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Jg_rot = S6RPPPRR2_jacobig_rot_6_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPPRR2_jacobig_rot_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPPPRR2_jacobig_rot_6_sym_varpar: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From jacobig_rot_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 20:23:11
% EndTime: 2019-02-26 20:23:11
% DurationCPUTime: 0.01s
% Computational Cost: add. (8->3), mult. (2->2), div. (0->0), fcn. (7->4), ass. (0->6)
t67 = qJ(1) + pkin(9);
t66 = pkin(10) + qJ(5);
t65 = cos(t67);
t64 = cos(t66);
t63 = sin(t67);
t1 = [0, 0, 0, 0, t65, -t63 * t64; 0, 0, 0, 0, t63, t65 * t64; 1, 0, 0, 0, 0, sin(t66);];
Jg_rot  = t1;
