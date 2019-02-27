% Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix für Segment Nr. 5 (0=Basis) von
% S6RRRPRR15
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d2,d3,d5,d6]';
%
% Output:
% JgD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 22:24
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JgD_rot = S6RRRPRR15_jacobigD_rot_5_sym_varpar(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRR15_jacobigD_rot_5_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRR15_jacobigD_rot_5_sym_varpar: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRPRR15_jacobigD_rot_5_sym_varpar: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From jacobigD_rot_5_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 22:24:25
% EndTime: 2019-02-26 22:24:26
% DurationCPUTime: 0.12s
% Computational Cost: add. (38->24), mult. (136->54), div. (0->0), fcn. (140->10), ass. (0->31)
t215 = sin(pkin(7));
t216 = sin(pkin(6));
t242 = t216 * t215;
t217 = cos(pkin(7));
t219 = sin(qJ(3));
t241 = t217 * t219;
t220 = sin(qJ(2));
t240 = t219 * t220;
t221 = sin(qJ(1));
t239 = t221 * t220;
t223 = cos(qJ(2));
t238 = t221 * t223;
t222 = cos(qJ(3));
t237 = t222 * t223;
t224 = cos(qJ(1));
t236 = t224 * t220;
t235 = t224 * t223;
t234 = qJD(1) * t216;
t233 = qJD(2) * t222;
t232 = t221 * t242;
t231 = t224 * t242;
t230 = t221 * t234;
t229 = t224 * t234;
t218 = cos(pkin(6));
t228 = t218 * t235 - t239;
t227 = -t218 * t238 - t236;
t226 = t218 * t236 + t238;
t225 = t218 * t239 - t235;
t214 = t227 * qJD(1) - t226 * qJD(2);
t213 = -t228 * qJD(1) + t225 * qJD(2);
t1 = [0, t229, -t213 * t215 + t217 * t229, 0, t213 * t241 + t227 * t233 + (t219 * t231 - t226 * t222) * qJD(1) + (t225 * t219 + (t227 * t217 + t232) * t222) * qJD(3), 0; 0, t230, -t214 * t215 + t217 * t230, 0, t214 * t241 + t228 * t233 + (t219 * t232 - t225 * t222) * qJD(1) + (-t226 * t219 + (t228 * t217 - t231) * t222) * qJD(3), 0; 0, 0, qJD(2) * t220 * t242, 0, t218 * t215 * qJD(3) * t222 + ((t217 * t237 - t240) * qJD(3) + (-t217 * t240 + t237) * qJD(2)) * t216, 0;];
JgD_rot  = t1;
