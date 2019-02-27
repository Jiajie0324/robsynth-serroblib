% Rotatorische Teilmatrix der geometrischen Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6RRPPRR11
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d5,d6,theta4]';
%
% Output:
% Jg_rot [3x6]
%   Rotatorische Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 21:34
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Jg_rot = S6RRPPRR11_jacobig_rot_6_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPRR11_jacobig_rot_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPPRR11_jacobig_rot_6_sym_varpar: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From jacobig_rot_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 21:34:19
% EndTime: 2019-02-26 21:34:19
% DurationCPUTime: 0.09s
% Computational Cost: add. (14->9), mult. (24->18), div. (0->0), fcn. (40->8), ass. (0->16)
t109 = sin(pkin(6));
t112 = sin(qJ(1));
t120 = t112 * t109;
t111 = sin(qJ(2));
t119 = t112 * t111;
t113 = cos(qJ(2));
t118 = t112 * t113;
t114 = cos(qJ(1));
t117 = t114 * t109;
t116 = t114 * t111;
t115 = t114 * t113;
t110 = cos(pkin(6));
t108 = pkin(11) + qJ(5);
t107 = cos(t108);
t106 = sin(t108);
t1 = [0, t120, 0, 0, -t110 * t119 + t115, t106 * t120 - (t110 * t118 + t116) * t107; 0, -t117, 0, 0, t110 * t116 + t118, -t106 * t117 - (-t110 * t115 + t119) * t107; 1, t110, 0, 0, t109 * t111, t107 * t109 * t113 + t106 * t110;];
Jg_rot  = t1;
