% Zeitableitung der translatorischen Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 4 (0=Basis) von
% S4RPPR1
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
%   pkin=[a2,a3,a4,d1,d4,theta2]';
%
% Output:
% JaD_transl [3x4]
%   Zeitableitung der translatorischen Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 19:30
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_transl = S4RPPR1_jacobiaD_transl_4_sym_varpar(qJ, qJD, r_i_i_C, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(3,1),zeros(6,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RPPR1_jacobiaD_transl_4_sym_varpar: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RPPR1_jacobiaD_transl_4_sym_varpar: qJD has to be [4x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S4RPPR1_jacobiaD_transl_4_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S4RPPR1_jacobiaD_transl_4_sym_varpar: pkin has to be [6x1] (double)');

%% Symbolic Calculation
% From jacobiaD_transl_4_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 19:30:33
% EndTime: 2019-02-26 19:30:33
% DurationCPUTime: 0.04s
% Computational Cost: add. (80->18), mult. (92->27), div. (0->0), fcn. (76->6), ass. (0->15)
t92 = -pkin(2) - pkin(3);
t83 = qJ(1) + pkin(6);
t81 = sin(t83);
t91 = qJD(1) * t81;
t82 = cos(t83);
t90 = qJD(1) * t82;
t84 = sin(qJ(4));
t89 = qJD(4) * t84;
t85 = cos(qJ(4));
t88 = qJD(4) * t85;
t75 = -t81 * t89 - t82 * t88 + (t81 * t84 + t82 * t85) * qJD(1);
t76 = t81 * t88 - t82 * t89 + t84 * t90 - t85 * t91;
t87 = -t76 * r_i_i_C(1) - t75 * r_i_i_C(2);
t86 = t75 * r_i_i_C(1) - t76 * r_i_i_C(2);
t1 = [t82 * qJD(3) + (-cos(qJ(1)) * pkin(1) - qJ(3) * t81 + t92 * t82) * qJD(1) - t86, 0, t90, t86; t81 * qJD(3) + (-sin(qJ(1)) * pkin(1) + qJ(3) * t82 + t92 * t81) * qJD(1) - t87, 0, t91, t87; 0, 0, 0, 0;];
JaD_transl  = t1;
