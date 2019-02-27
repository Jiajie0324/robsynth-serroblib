% Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6RRRRRP7
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,d5]';
%
% Output:
% JgD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 22:43
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JgD_rot = S6RRRRRP7_jacobigD_rot_6_sym_varpar(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRP7_jacobigD_rot_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRP7_jacobigD_rot_6_sym_varpar: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRRP7_jacobigD_rot_6_sym_varpar: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From jacobigD_rot_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 22:43:13
% EndTime: 2019-02-26 22:43:13
% DurationCPUTime: 0.06s
% Computational Cost: add. (45->18), mult. (100->40), div. (0->0), fcn. (102->8), ass. (0->27)
t202 = sin(pkin(6));
t205 = sin(qJ(1));
t220 = t202 * t205;
t207 = cos(qJ(1));
t219 = t202 * t207;
t204 = sin(qJ(2));
t218 = t204 * t205;
t217 = t204 * t207;
t206 = cos(qJ(2));
t216 = t205 * t206;
t215 = t207 * t206;
t214 = qJD(1) * t202;
t201 = qJ(3) + qJ(4);
t198 = sin(t201);
t213 = qJD(2) * t198;
t212 = qJD(2) * t202;
t203 = cos(pkin(6));
t211 = t203 * t215 - t218;
t210 = t203 * t216 + t217;
t209 = t203 * t217 + t216;
t208 = -t203 * t218 + t215;
t200 = qJD(3) + qJD(4);
t199 = cos(t201);
t197 = t204 * t212;
t196 = t210 * qJD(1) + t209 * qJD(2);
t195 = t211 * qJD(1) + t208 * qJD(2);
t1 = [0, t207 * t214, t195, t195 (t198 * t220 + t208 * t199) * t200 - t210 * t213 + (-t209 * t198 - t199 * t219) * qJD(1), 0; 0, t205 * t214, t196, t196 (-t198 * t219 + t209 * t199) * t200 + t211 * t213 + (t208 * t198 - t199 * t220) * qJD(1), 0; 0, 0, t197, t197, t202 * t204 * t200 * t199 + (t200 * t203 + t206 * t212) * t198, 0;];
JgD_rot  = t1;
