% Translatorische Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 1 (0=Basis) von
% S3RRR1
% Use Code from Maple symbolic Code Generation
%
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
%
% Input:
% qJ [3x1]
%   Generalized joint coordinates (joint angles)
% r_i_i_C [3x1]
%   Ortsvektor vom KörperKS-Ursprung zum gesuchten Punkt
% pkin [5x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,d1,d2,d3]';
%
% Output:
% Ja_transl [3x3]
%   Translatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 10:16
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function Ja_transl = S3RRR1_jacobia_transl_1_floatb_twist_sym_varpar(qJ, r_i_i_C, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(3,1),zeros(3,1),zeros(5,1)}
assert(isreal(qJ) && all(size(qJ) == [3 1]), ...
  'S3RRR1_jacobia_transl_1_floatb_twist_sym_varpar: qJ has to be [3x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S3RRR1_jacobia_transl_1_floatb_twist_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isreal(pkin) && all(size(pkin) == [5 1]), ...
  'S3RRR1_jacobia_transl_1_floatb_twist_sym_varpar: pkin has to be [5x1] (double)');

%% Symbolic Calculation
% From jacobia_transl_1_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-14 10:16:10
% EndTime: 2018-11-14 10:16:10
% DurationCPUTime: 0.05s
% Computational Cost: add. (2->2), mult. (4->4), div. (0->0), fcn. (4->2), ass. (0->3)
t2 = cos(qJ(1));
t1 = sin(qJ(1));
t3 = [-t1 * r_i_i_C(1) - t2 * r_i_i_C(2), 0, 0; t2 * r_i_i_C(1) - t1 * r_i_i_C(2), 0, 0; 0, 0, 0;];
Ja_transl  = t3;
