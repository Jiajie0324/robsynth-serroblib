% Translatorische Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6RRPPPR2
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d6,theta3,theta5]';
%
% Output:
% Ja_transl [3x6]
%   Translatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 21:22
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S6RRPPPR2_jacobia_transl_6_sym_varpar(qJ, r_i_i_C, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPPR2_jacobia_transl_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RRPPPR2_jacobia_transl_6_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPPPR2_jacobia_transl_6_sym_varpar: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From jacobia_transl_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 21:22:26
% EndTime: 2019-02-26 21:22:26
% DurationCPUTime: 0.11s
% Computational Cost: add. (134->30), mult. (121->40), div. (0->0), fcn. (137->10), ass. (0->24)
t13 = qJ(2) + pkin(9);
t10 = cos(t13);
t24 = pkin(3) + r_i_i_C(3) + pkin(8) + qJ(5);
t32 = cos(qJ(2)) * pkin(2) + t24 * t10;
t23 = pkin(5) * sin(pkin(10)) + qJ(4);
t8 = sin(t13);
t31 = -t23 * t8 - pkin(1) - t32;
t18 = sin(qJ(1));
t29 = t18 * t8;
t12 = pkin(10) + qJ(6);
t9 = cos(t12);
t28 = t18 * t9;
t19 = cos(qJ(1));
t27 = t19 * t8;
t26 = t19 * t9;
t25 = qJ(3) + pkin(7) + cos(pkin(10)) * pkin(5) + pkin(4);
t7 = sin(t12);
t21 = r_i_i_C(1) * t7 + r_i_i_C(2) * t9 + t23;
t20 = -sin(qJ(2)) * pkin(2) + t21 * t10 - t24 * t8;
t4 = -t7 * t29 + t26;
t3 = t19 * t7 + t8 * t28;
t2 = t7 * t27 + t28;
t1 = -t18 * t7 + t8 * t26;
t5 = [t4 * r_i_i_C(1) - t3 * r_i_i_C(2) + t31 * t18 + t25 * t19, t20 * t19, t18, t27, t19 * t10, r_i_i_C(1) * t1 - r_i_i_C(2) * t2; t2 * r_i_i_C(1) + t1 * r_i_i_C(2) + t25 * t18 - t31 * t19, t20 * t18, -t19, t29, t18 * t10, r_i_i_C(1) * t3 + r_i_i_C(2) * t4; 0, t21 * t8 + t32, 0, -t10, t8 (-r_i_i_C(1) * t9 + r_i_i_C(2) * t7) * t10;];
Ja_transl  = t5;