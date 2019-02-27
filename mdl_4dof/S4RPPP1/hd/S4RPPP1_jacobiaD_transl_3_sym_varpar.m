% Zeitableitung der translatorischen Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 3 (0=Basis) von
% S4RPPP1
% Use Code from Maple symbolic Code Generation
%
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
%
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% r_i_i_C [3x1]
%   Ortsvektor vom KörperKS-Ursprung zum gesuchten Punkt
% pkin [6x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,alpha2,d1,theta2]';
%
% Output:
% JaD_transl [3x4]
%   Zeitableitung der translatorischen Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 19:29
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_transl = S4RPPP1_jacobiaD_transl_3_sym_varpar(qJ, qJD, r_i_i_C, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(3,1),zeros(6,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RPPP1_jacobiaD_transl_3_sym_varpar: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RPPP1_jacobiaD_transl_3_sym_varpar: qJD has to be [4x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S4RPPP1_jacobiaD_transl_3_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S4RPPP1_jacobiaD_transl_3_sym_varpar: pkin has to be [6x1] (double)');

%% Symbolic Calculation
% From jacobiaD_transl_3_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 19:29:48
% EndTime: 2019-02-26 19:29:48
% DurationCPUTime: 0.08s
% Computational Cost: add. (28->19), mult. (90->32), div. (0->0), fcn. (78->6), ass. (0->21)
t158 = r_i_i_C(1) + qJ(2);
t157 = -r_i_i_C(3) - qJ(3);
t142 = sin(pkin(4));
t146 = cos(qJ(1));
t156 = t142 * t146;
t143 = cos(pkin(6));
t145 = sin(qJ(1));
t155 = t143 * t145;
t154 = t143 * t146;
t141 = sin(pkin(6));
t153 = t145 * t141;
t152 = t146 * t141;
t151 = qJD(1) * t145;
t150 = t142 * qJD(2);
t144 = cos(pkin(4));
t149 = t144 * t154;
t148 = qJD(1) * (-pkin(2) + r_i_i_C(2));
t147 = t144 * t155 + t152;
t138 = t147 * qJD(1);
t136 = -qJD(1) * t149 + t141 * t151;
t1 = [-(-t149 + t153) * qJD(3) + t146 * t150 + (-t144 * t153 + t154) * t148 + t157 * t138 + (-t158 * t145 * t142 - t146 * pkin(1)) * qJD(1), qJD(1) * t156, -t136, 0; t147 * qJD(3) + t145 * t150 + (t144 * t152 + t155) * t148 + t157 * t136 + (-t145 * pkin(1) + t158 * t156) * qJD(1), t142 * t151, t138, 0; 0, 0, 0, 0;];
JaD_transl  = t1;
