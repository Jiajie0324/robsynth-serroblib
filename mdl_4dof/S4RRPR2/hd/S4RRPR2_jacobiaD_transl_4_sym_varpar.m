% Zeitableitung der translatorischen Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 4 (0=Basis) von
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
% Datum: 2019-05-28 15:34
% Revision: 36f6366a01c4a552c0708fcd8ed3e0fb9da693e2 (2019-05-16)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_transl = S4RRPR2_jacobiaD_transl_4_sym_varpar(qJ, qJD, r_i_i_C, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(3,1),zeros(5,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RRPR2_jacobiaD_transl_4_sym_varpar: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RRPR2_jacobiaD_transl_4_sym_varpar: qJD has to be [4x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S4RRPR2_jacobiaD_transl_4_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isreal(pkin) && all(size(pkin) == [5 1]), ...
  'S4RRPR2_jacobiaD_transl_4_sym_varpar: pkin has to be [5x1] (double)');

%% Symbolic Calculation
% From jacobiaD_transl_4_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-28 15:34:22
% EndTime: 2019-05-28 15:34:22
% DurationCPUTime: 0.08s
% Computational Cost: add. (164->19), mult. (142->27), div. (0->0), fcn. (116->6), ass. (0->19)
t50 = qJ(1) + qJ(2);
t47 = sin(t50);
t48 = cos(t50);
t49 = qJD(1) + qJD(2);
t51 = sin(qJ(4));
t52 = cos(qJ(4));
t55 = qJD(4) * t52;
t56 = qJD(4) * t51;
t38 = -t47 * t56 - t48 * t55 + (t47 * t51 + t48 * t52) * t49;
t58 = t49 * t48;
t59 = t49 * t47;
t39 = t47 * t55 - t48 * t56 + t51 * t58 - t52 * t59;
t62 = t38 * r_i_i_C(1) - t39 * r_i_i_C(2);
t61 = -t39 * r_i_i_C(1) - t38 * r_i_i_C(2);
t60 = -pkin(2) - pkin(3);
t57 = pkin(1) * qJD(1);
t54 = qJ(3) * t58 + t47 * qJD(3) + t59 * t60 - t61;
t53 = t48 * qJD(3) + (-qJ(3) * t47 + t48 * t60) * t49 - t62;
t1 = [-cos(qJ(1)) * t57 + t53, t53, t58, t62; -sin(qJ(1)) * t57 + t54, t54, t59, t61; 0, 0, 0, 0;];
JaD_transl  = t1;
