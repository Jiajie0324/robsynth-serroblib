% Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix für Segment Nr. 5 (0=Basis) von
% S6RRRPRP10
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d5,theta4]';
%
% Output:
% JgD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 22:14
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JgD_rot = S6RRRPRP10_jacobigD_rot_5_sym_varpar(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRP10_jacobigD_rot_5_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRP10_jacobigD_rot_5_sym_varpar: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRPRP10_jacobigD_rot_5_sym_varpar: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From jacobigD_rot_5_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 22:14:20
% EndTime: 2019-02-26 22:14:20
% DurationCPUTime: 0.06s
% Computational Cost: add. (22->16), mult. (78->40), div. (0->0), fcn. (80->8), ass. (0->21)
t158 = sin(pkin(6));
t163 = cos(qJ(3));
t177 = t158 * t163;
t165 = cos(qJ(1));
t176 = t158 * t165;
t161 = sin(qJ(2));
t162 = sin(qJ(1));
t175 = t161 * t162;
t174 = t161 * t165;
t164 = cos(qJ(2));
t173 = t162 * t164;
t172 = t165 * t164;
t171 = qJD(1) * t158;
t160 = sin(qJ(3));
t170 = qJD(2) * t160;
t159 = cos(pkin(6));
t169 = t159 * t172 - t175;
t168 = t159 * t173 + t174;
t167 = t159 * t174 + t173;
t166 = -t159 * t175 + t172;
t1 = [0, t165 * t171, t169 * qJD(1) + t166 * qJD(2), 0 (t162 * t158 * t160 + t166 * t163) * qJD(3) - t168 * t170 + (-t167 * t160 - t163 * t176) * qJD(1), 0; 0, t162 * t171, t168 * qJD(1) + t167 * qJD(2), 0 (-t160 * t176 + t167 * t163) * qJD(3) + t169 * t170 + (t166 * t160 - t162 * t177) * qJD(1), 0; 0, 0, t158 * qJD(2) * t161, 0, t158 * t164 * t170 + (t159 * t160 + t161 * t177) * qJD(3), 0;];
JgD_rot  = t1;