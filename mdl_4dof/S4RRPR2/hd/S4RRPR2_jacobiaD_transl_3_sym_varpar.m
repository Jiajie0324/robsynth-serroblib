% Zeitableitung der translatorischen Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 3 (0=Basis) von
% S4RRPR2
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
% pkin [5x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d2]';
%
% Output:
% JaD_transl [3x4]
%   Zeitableitung der translatorischen Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-07-18 18:16
% Revision: 08c8d617a845f5dd194efdf9aca2774760f7818f (2019-07-16)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_transl = S4RRPR2_jacobiaD_transl_3_sym_varpar(qJ, qJD, r_i_i_C, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(3,1),zeros(5,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RRPR2_jacobiaD_transl_3_sym_varpar: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RRPR2_jacobiaD_transl_3_sym_varpar: qJD has to be [4x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S4RRPR2_jacobiaD_transl_3_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isreal(pkin) && all(size(pkin) == [5 1]), ...
  'S4RRPR2_jacobiaD_transl_3_sym_varpar: pkin has to be [5x1] (double)');

%% Symbolic Calculation
% From jacobiaD_transl_3_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-07-18 18:16:41
% EndTime: 2019-07-18 18:16:41
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
t26 = t21 * qJD(3) + t28 * t31 + t30 * t29;
t25 = t22 * qJD(3) + (-t21 * t31 + t30 * t22) * t23;
t1 = [-cos(qJ(1)) * t27 + t25, t25, t28, 0; -sin(qJ(1)) * t27 + t26, t26, t29, 0; 0, 0, 0, 0;];
JaD_transl  = t1;
