% Rotatorische Teilmatrix der geometrischen Jacobi-Matrix für Segment Nr. 5 (0=Basis) von
% S6RPRRRR2
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
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d5,d6,theta2]';
%
% Output:
% Jg_rot [3x6]
%   Rotatorische Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 21:15
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Jg_rot = S6RPRRRR2_jacobig_rot_5_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRR2_jacobig_rot_5_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RPRRRR2_jacobig_rot_5_sym_varpar: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From jacobig_rot_5_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 21:15:25
% EndTime: 2019-02-26 21:15:25
% DurationCPUTime: 0.02s
% Computational Cost: add. (12->5), mult. (2->2), div. (0->0), fcn. (9->4), ass. (0->6)
t86 = qJ(3) + qJ(4);
t85 = qJ(1) + pkin(11);
t84 = sin(t86);
t83 = cos(t85);
t82 = sin(t85);
t1 = [0, 0, t82, t82, t83 * t84, 0; 0, 0, -t83, -t83, t82 * t84, 0; 1, 0, 0, 0, -cos(t86) 0;];
Jg_rot  = t1;
