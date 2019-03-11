% Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6PRPRRR5
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d4,d5,d6,theta1]';
%
% Output:
% JgD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 19:56
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JgD_rot = S6PRPRRR5_jacobigD_rot_6_sym_varpar(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPRRR5_jacobigD_rot_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRPRRR5_jacobigD_rot_6_sym_varpar: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRPRRR5_jacobigD_rot_6_sym_varpar: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From jacobigD_rot_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 19:56:15
% EndTime: 2019-02-26 19:56:16
% DurationCPUTime: 0.08s
% Computational Cost: add. (29->14), mult. (60->30), div. (0->0), fcn. (62->8), ass. (0->21)
t166 = qJ(4) + qJ(5);
t164 = cos(t166);
t168 = sin(pkin(6));
t179 = t168 * t164;
t170 = cos(pkin(6));
t171 = sin(qJ(2));
t178 = t170 * t171;
t172 = cos(qJ(2));
t177 = t170 * t172;
t176 = qJD(2) * t164;
t175 = qJD(2) * t168;
t167 = sin(pkin(11));
t169 = cos(pkin(11));
t174 = -t167 * t171 + t169 * t177;
t173 = t167 * t177 + t169 * t171;
t165 = qJD(4) + qJD(5);
t163 = sin(t166);
t162 = t172 * t175;
t161 = t173 * qJD(2);
t160 = t174 * qJD(2);
t1 = [0, 0, 0, -t161, -t161 (t163 * t173 + t167 * t179) * t165 - (-t167 * t178 + t169 * t172) * t176; 0, 0, 0, t160, t160 (-t163 * t174 - t169 * t179) * t165 - (t167 * t172 + t169 * t178) * t176; 0, 0, 0, t162, t162, -t168 * t172 * t165 * t163 + (t165 * t170 - t171 * t175) * t164;];
JgD_rot  = t1;