% Zeitableitung der translatorischen Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 5 (0=Basis) von
% S6RRPPPR3
% Use Code from Maple symbolic Code Generation
%
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
%
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% r_i_i_C [3x1]
%   Ortsvektor vom KörperKS-Ursprung zum gesuchten Punkt
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d6,theta5]';
%
% Output:
% JaD_transl [3x6]
%   Zeitableitung der translatorischen Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 21:23
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_transl = S6RRPPPR3_jacobiaD_transl_5_sym_varpar(qJ, qJD, r_i_i_C, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPPR3_jacobiaD_transl_5_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPPPR3_jacobiaD_transl_5_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RRPPPR3_jacobiaD_transl_5_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRPPPR3_jacobiaD_transl_5_sym_varpar: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From jacobiaD_transl_5_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 21:23:04
% EndTime: 2019-02-26 21:23:04
% DurationCPUTime: 0.14s
% Computational Cost: add. (95->26), mult. (282->37), div. (0->0), fcn. (208->6), ass. (0->20)
t162 = sin(pkin(9));
t163 = cos(pkin(9));
t164 = sin(qJ(2));
t166 = cos(qJ(2));
t175 = r_i_i_C(1) * t163 - r_i_i_C(2) * t162 + pkin(4) + qJ(3);
t177 = pkin(2) + pkin(3) + r_i_i_C(3) + qJ(5);
t172 = t177 * t164 - t175 * t166;
t168 = -t172 * qJD(2) + t164 * qJD(3) + t166 * qJD(5);
t184 = t168 - (t162 * r_i_i_C(1) + t163 * r_i_i_C(2) - pkin(7) + qJ(4)) * qJD(1);
t165 = sin(qJ(1));
t182 = qJD(1) * t165;
t167 = cos(qJ(1));
t181 = qJD(1) * t167;
t180 = qJD(2) * t164;
t179 = qJD(2) * t166;
t178 = qJD(2) * t167;
t173 = -t175 * t164 - t177 * t166;
t170 = -qJD(4) + (-pkin(1) + t173) * qJD(1);
t169 = t173 * qJD(2) + qJD(3) * t166 - qJD(5) * t164;
t1 = [-t184 * t165 + t170 * t167, t169 * t167 + t172 * t182, -t164 * t182 + t166 * t178, -t181, -t164 * t178 - t166 * t182, 0; t170 * t165 + t184 * t167, t169 * t165 - t172 * t181, t164 * t181 + t165 * t179, -t182, -t165 * t180 + t166 * t181, 0; 0, t168, t180, 0, t179, 0;];
JaD_transl  = t1;
