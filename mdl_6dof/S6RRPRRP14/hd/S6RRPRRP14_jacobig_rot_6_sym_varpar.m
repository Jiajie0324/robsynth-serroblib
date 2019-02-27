% Rotatorische Teilmatrix der geometrischen Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6RRPRRP14
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d5]';
%
% Output:
% Jg_rot [3x6]
%   Rotatorische Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 21:53
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Jg_rot = S6RRPRRP14_jacobig_rot_6_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP14_jacobig_rot_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPRRP14_jacobig_rot_6_sym_varpar: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From jacobig_rot_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 21:53:25
% EndTime: 2019-02-26 21:53:25
% DurationCPUTime: 0.03s
% Computational Cost: add. (8->8), mult. (24->18), div. (0->0), fcn. (40->8), ass. (0->15)
t137 = sin(pkin(6));
t141 = sin(qJ(1));
t150 = t141 * t137;
t140 = sin(qJ(2));
t149 = t141 * t140;
t143 = cos(qJ(2));
t148 = t141 * t143;
t144 = cos(qJ(1));
t147 = t144 * t137;
t146 = t144 * t140;
t145 = t144 * t143;
t142 = cos(qJ(4));
t139 = sin(qJ(4));
t138 = cos(pkin(6));
t1 = [0, t150, 0, -t138 * t149 + t145, t139 * t150 - (t138 * t148 + t146) * t142, 0; 0, -t147, 0, t138 * t146 + t148, -t139 * t147 - (-t138 * t145 + t149) * t142, 0; 1, t138, 0, t137 * t140, t137 * t143 * t142 + t138 * t139, 0;];
Jg_rot  = t1;
