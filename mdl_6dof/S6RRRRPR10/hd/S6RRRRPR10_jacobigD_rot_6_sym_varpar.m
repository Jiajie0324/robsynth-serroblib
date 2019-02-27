% Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6RRRRPR10
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,d6]';
%
% Output:
% JgD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 22:35
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JgD_rot = S6RRRRPR10_jacobigD_rot_6_sym_varpar(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR10_jacobigD_rot_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPR10_jacobigD_rot_6_sym_varpar: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRPR10_jacobigD_rot_6_sym_varpar: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From jacobigD_rot_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 22:35:53
% EndTime: 2019-02-26 22:35:53
% DurationCPUTime: 0.06s
% Computational Cost: add. (45->18), mult. (100->40), div. (0->0), fcn. (102->8), ass. (0->27)
t196 = sin(pkin(6));
t199 = sin(qJ(1));
t214 = t196 * t199;
t201 = cos(qJ(1));
t213 = t196 * t201;
t198 = sin(qJ(2));
t212 = t198 * t199;
t211 = t198 * t201;
t200 = cos(qJ(2));
t210 = t199 * t200;
t209 = t201 * t200;
t208 = qJD(1) * t196;
t195 = qJ(3) + qJ(4);
t193 = cos(t195);
t207 = qJD(2) * t193;
t206 = qJD(2) * t196;
t197 = cos(pkin(6));
t205 = t197 * t209 - t212;
t204 = t197 * t210 + t211;
t203 = t197 * t211 + t210;
t202 = -t197 * t212 + t209;
t194 = qJD(3) + qJD(4);
t192 = sin(t195);
t191 = t198 * t206;
t190 = t204 * qJD(1) + t203 * qJD(2);
t189 = t205 * qJD(1) + t202 * qJD(2);
t1 = [0, t201 * t208, t189, t189, 0 (-t202 * t192 + t193 * t214) * t194 - t204 * t207 + (t192 * t213 - t203 * t193) * qJD(1); 0, t199 * t208, t190, t190, 0 (-t203 * t192 - t193 * t213) * t194 + t205 * t207 + (t192 * t214 + t202 * t193) * qJD(1); 0, 0, t191, t191, 0, -t196 * t198 * t194 * t192 + (t194 * t197 + t200 * t206) * t193;];
JgD_rot  = t1;
