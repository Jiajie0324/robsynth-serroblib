% Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6PRRPPR5
% Use Code from Maple symbolic Code Generation
%
% geometrische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
%
%
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d6,theta1,theta5]';
%
% Output:
% JgD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 20:00
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JgD_rot = S6PRRPPR5_jacobigD_rot_6_sym_varpar(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPPR5_jacobigD_rot_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRPPR5_jacobigD_rot_6_sym_varpar: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRRPPR5_jacobigD_rot_6_sym_varpar: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From jacobigD_rot_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 20:00:37
% EndTime: 2019-02-26 20:00:37
% DurationCPUTime: 0.07s
% Computational Cost: add. (12->10), mult. (48->29), div. (0->0), fcn. (50->8), ass. (0->16)
t133 = sin(pkin(6));
t137 = sin(qJ(2));
t146 = t133 * t137;
t138 = cos(qJ(3));
t145 = t133 * t138;
t135 = cos(pkin(6));
t144 = t135 * t137;
t139 = cos(qJ(2));
t143 = t135 * t139;
t142 = qJD(2) * t138;
t132 = sin(pkin(10));
t134 = cos(pkin(10));
t141 = t132 * t139 + t134 * t144;
t140 = -t132 * t144 + t134 * t139;
t136 = sin(qJ(3));
t1 = [0, 0, t140 * qJD(2), 0, 0 (t132 * t145 - t136 * t140) * qJD(3) + (-t132 * t143 - t134 * t137) * t142; 0, 0, t141 * qJD(2), 0, 0 (-t134 * t145 - t136 * t141) * qJD(3) + (-t132 * t137 + t134 * t143) * t142; 0, 0, qJD(2) * t146, 0, 0, t133 * t139 * t142 + (t135 * t138 - t136 * t146) * qJD(3);];
JgD_rot  = t1;
