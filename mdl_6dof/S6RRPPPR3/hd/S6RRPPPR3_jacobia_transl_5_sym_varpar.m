% Translatorische Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 5 (0=Basis) von
% S6RRPPPR3
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
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d6,theta5]';
%
% Output:
% Ja_transl [3x6]
%   Translatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 21:23
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S6RRPPPR3_jacobia_transl_5_sym_varpar(qJ, r_i_i_C, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPPR3_jacobia_transl_5_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RRPPPR3_jacobia_transl_5_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRPPPR3_jacobia_transl_5_sym_varpar: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From jacobia_transl_5_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 21:23:03
% EndTime: 2019-02-26 21:23:03
% DurationCPUTime: 0.07s
% Computational Cost: add. (47->14), mult. (96->18), div. (0->0), fcn. (108->6), ass. (0->13)
t1 = sin(pkin(9));
t2 = cos(pkin(9));
t10 = r_i_i_C(1) * t2 - r_i_i_C(2) * t1 + pkin(4) + qJ(3);
t11 = pkin(2) + pkin(3) + r_i_i_C(3) + qJ(5);
t3 = sin(qJ(2));
t5 = cos(qJ(2));
t8 = t10 * t3 + t11 * t5;
t12 = pkin(1) + t8;
t9 = -t1 * r_i_i_C(1) - t2 * r_i_i_C(2) + pkin(7) - qJ(4);
t7 = t10 * t5 - t11 * t3;
t6 = cos(qJ(1));
t4 = sin(qJ(1));
t13 = [-t12 * t4 + t9 * t6, t7 * t6, t6 * t3, -t4, t6 * t5, 0; t12 * t6 + t9 * t4, t7 * t4, t4 * t3, t6, t4 * t5, 0; 0, t8, -t5, 0, t3, 0;];
Ja_transl  = t13;
