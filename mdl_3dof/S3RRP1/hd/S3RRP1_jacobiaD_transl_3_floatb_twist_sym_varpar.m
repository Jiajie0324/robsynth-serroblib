% Zeitableitung der translatorischen Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 3 (0=Basis) von
% S3RRP1
% Use Code from Maple symbolic Code Generation
%
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
%
% Input:
% qJ [3x1]
%   Generalized joint coordinates (joint angles)
% qJD [3x1]
%   Generalized joint velocities
% r_i_i_C [3x1]
%   Ortsvektor vom KörperKS-Ursprung zum gesuchten Punkt
% pkin [4x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,d1,d2]';
%
% Output:
% JaD_transl [3x3]
%   Zeitableitung der translatorischen Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 10:15
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function JaD_transl = S3RRP1_jacobiaD_transl_3_floatb_twist_sym_varpar(qJ, qJD, r_i_i_C, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(3,1),zeros(3,1),zeros(3,1),zeros(4,1)}
assert(isreal(qJ) && all(size(qJ) == [3 1]), ...
  'S3RRP1_jacobiaD_transl_3_floatb_twist_sym_varpar: qJ has to be [3x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [3 1]), ...
  'S3RRP1_jacobiaD_transl_3_floatb_twist_sym_varpar: qJD has to be [3x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S3RRP1_jacobiaD_transl_3_floatb_twist_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isreal(pkin) && all(size(pkin) == [4 1]), ...
  'S3RRP1_jacobiaD_transl_3_floatb_twist_sym_varpar: pkin has to be [4x1] (double)');

%% Symbolic Calculation
% From jacobiaD_transl_3_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-14 10:15:15
% EndTime: 2018-11-14 10:15:15
% DurationCPUTime: 0.06s
% Computational Cost: add. (58->10), mult. (42->12), div. (0->0), fcn. (24->4), ass. (0->12)
t31 = qJ(3) + r_i_i_C(3);
t30 = -pkin(2) - r_i_i_C(1);
t24 = qJ(1) + qJ(2);
t21 = sin(t24);
t23 = qJD(1) + qJD(2);
t29 = t23 * t21;
t22 = cos(t24);
t28 = t23 * t22;
t27 = pkin(1) * qJD(1);
t26 = t21 * qJD(3) + t31 * t28 + t30 * t29;
t25 = t22 * qJD(3) + (-t31 * t21 + t30 * t22) * t23;
t1 = [-cos(qJ(1)) * t27 + t25, t25, t28; -sin(qJ(1)) * t27 + t26, t26, t29; 0, 0, 0;];
JaD_transl  = t1;
