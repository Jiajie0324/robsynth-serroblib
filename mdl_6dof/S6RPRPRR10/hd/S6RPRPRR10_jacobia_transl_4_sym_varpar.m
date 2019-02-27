% Translatorische Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 4 (0=Basis) von
% S6RPRPRR10
% Use Code from Maple symbolic Code Generation
%
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
%
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% r_i_i_C [3x1]
%   Ortsvektor vom KörperKS-Ursprung zum gesuchten Punkt
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,d6,theta4]';
%
% Output:
% Ja_transl [3x6]
%   Translatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 20:54
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S6RPRPRR10_jacobia_transl_4_sym_varpar(qJ, r_i_i_C, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRR10_jacobia_transl_4_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RPRPRR10_jacobia_transl_4_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRPRR10_jacobia_transl_4_sym_varpar: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From jacobia_transl_4_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 20:53:58
% EndTime: 2019-02-26 20:53:59
% DurationCPUTime: 0.08s
% Computational Cost: add. (32->14), mult. (67->16), div. (0->0), fcn. (76->6), ass. (0->13)
t10 = r_i_i_C(3) + qJ(4);
t3 = sin(qJ(3));
t5 = cos(qJ(3));
t1 = sin(pkin(10));
t2 = cos(pkin(10));
t9 = r_i_i_C(1) * t2 - r_i_i_C(2) * t1 + pkin(3);
t12 = t10 * t5 - t9 * t3;
t11 = t10 * t3 + t9 * t5;
t8 = r_i_i_C(1) * t1 + r_i_i_C(2) * t2 + pkin(1) + pkin(7);
t7 = qJ(2) - t12;
t6 = cos(qJ(1));
t4 = sin(qJ(1));
t13 = [-t8 * t4 + t7 * t6, t4, t11 * t4, -t4 * t5, 0, 0; t7 * t4 + t8 * t6, -t6, -t11 * t6, t6 * t5, 0, 0; 0, 0, t12, t3, 0, 0;];
Ja_transl  = t13;
