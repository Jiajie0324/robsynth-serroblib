% Zeitableitung der translatorischen Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 3 (0=Basis) von
% S4RPPR2
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
%   pkin=[a2,a3,a4,d1,d4,theta3]';
%
% Output:
% JaD_transl [3x4]
%   Zeitableitung der translatorischen Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 13:48
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function JaD_transl = S4RPPR2_jacobiaD_transl_3_floatb_twist_sym_varpar(qJ, qJD, r_i_i_C, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(3,1),zeros(6,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RPPR2_jacobiaD_transl_3_floatb_twist_sym_varpar: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RPPR2_jacobiaD_transl_3_floatb_twist_sym_varpar: qJD has to be [4x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S4RPPR2_jacobiaD_transl_3_floatb_twist_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S4RPPR2_jacobiaD_transl_3_floatb_twist_sym_varpar: pkin has to be [6x1] (double)');

%% Symbolic Calculation
% From jacobiaD_transl_3_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-14 13:47:43
% EndTime: 2018-11-14 13:47:43
% DurationCPUTime: 0.05s
% Computational Cost: add. (14->11), mult. (36->20), div. (0->0), fcn. (26->4), ass. (0->8)
t58 = -pkin(1) - pkin(2);
t57 = cos(qJ(1));
t56 = sin(qJ(1));
t55 = cos(pkin(6));
t54 = sin(pkin(6));
t53 = (t54 * t57 - t55 * t56) * qJD(1);
t52 = (t54 * t56 + t55 * t57) * qJD(1);
t1 = [-t52 * r_i_i_C(1) + t53 * r_i_i_C(2) + t57 * qJD(2) + (-qJ(2) * t56 + t58 * t57) * qJD(1), qJD(1) * t57, 0, 0; t53 * r_i_i_C(1) + t52 * r_i_i_C(2) + t56 * qJD(2) + (qJ(2) * t57 + t58 * t56) * qJD(1), qJD(1) * t56, 0, 0; 0, 0, 0, 0;];
JaD_transl  = t1;
