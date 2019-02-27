% Rotatorische Teilmatrix der geometrischen Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6RRPRPR4
% Use Code from Maple symbolic Code Generation
%
% geometrische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
%
%
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d6,theta3,theta5]';
%
% Output:
% Jg_rot [3x6]
%   Rotatorische Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 21:39
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Jg_rot = S6RRPRPR4_jacobig_rot_6_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPR4_jacobig_rot_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRPRPR4_jacobig_rot_6_sym_varpar: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From jacobig_rot_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 21:39:32
% EndTime: 2019-02-26 21:39:32
% DurationCPUTime: 0.04s
% Computational Cost: add. (24->11), mult. (50->24), div. (0->0), fcn. (76->10), ass. (0->18)
t140 = sin(pkin(6));
t144 = sin(qJ(1));
t150 = t144 * t140;
t146 = cos(qJ(1));
t149 = t146 * t140;
t139 = sin(pkin(11));
t141 = cos(pkin(11));
t143 = sin(qJ(2));
t145 = cos(qJ(2));
t148 = t145 * t139 + t143 * t141;
t147 = t143 * t139 - t145 * t141;
t142 = cos(pkin(6));
t138 = qJ(4) + pkin(12);
t137 = cos(t138);
t136 = sin(t138);
t133 = t148 * t142;
t132 = t147 * t142;
t1 = [0, t150, 0, -t144 * t132 + t146 * t148, 0 (-t144 * t133 - t146 * t147) * t136 - t137 * t150; 0, -t149, 0, t146 * t132 + t144 * t148, 0 (t146 * t133 - t144 * t147) * t136 + t137 * t149; 1, t142, 0, t147 * t140, 0, t148 * t136 * t140 - t142 * t137;];
Jg_rot  = t1;
