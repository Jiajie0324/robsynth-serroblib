% Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix für Segment Nr. 5 (0=Basis) von
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
% qJD [6x1]
%   Generalized joint velocities
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d6,theta3,theta5]';
%
% Output:
% JgD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 21:39
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JgD_rot = S6RRPRPR4_jacobigD_rot_5_sym_varpar(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPR4_jacobigD_rot_5_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRPR4_jacobigD_rot_5_sym_varpar: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRPRPR4_jacobigD_rot_5_sym_varpar: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From jacobigD_rot_5_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 21:39:33
% EndTime: 2019-02-26 21:39:33
% DurationCPUTime: 0.04s
% Computational Cost: add. (15->8), mult. (54->22), div. (0->0), fcn. (58->8), ass. (0->16)
t143 = sin(pkin(11));
t145 = cos(pkin(11));
t147 = sin(qJ(2));
t149 = cos(qJ(2));
t152 = t149 * t143 + t147 * t145;
t154 = qJD(2) * t152;
t144 = sin(pkin(6));
t153 = qJD(1) * t144;
t151 = t143 * t147 - t145 * t149;
t150 = cos(qJ(1));
t148 = sin(qJ(1));
t146 = cos(pkin(6));
t141 = t151 * qJD(2);
t140 = t151 * t146;
t139 = t146 * t154;
t1 = [0, t150 * t153, 0, -t148 * t139 - t150 * t141 + (-t140 * t150 - t148 * t152) * qJD(1), 0, 0; 0, t148 * t153, 0, t150 * t139 - t148 * t141 + (-t140 * t148 + t150 * t152) * qJD(1), 0, 0; 0, 0, 0, t144 * t154, 0, 0;];
JgD_rot  = t1;
