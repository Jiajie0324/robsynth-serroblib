% Translatorische Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 5 (0=Basis) von
% S6RRPPRR7
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d5,d6]';
%
% Output:
% Ja_transl [3x6]
%   Translatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 21:32
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S6RRPPRR7_jacobia_transl_5_sym_varpar(qJ, r_i_i_C, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPRR7_jacobia_transl_5_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RRPPRR7_jacobia_transl_5_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPPRR7_jacobia_transl_5_sym_varpar: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From jacobia_transl_5_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 21:32:06
% EndTime: 2019-02-26 21:32:06
% DurationCPUTime: 0.10s
% Computational Cost: add. (95->34), mult. (217->52), div. (0->0), fcn. (271->8), ass. (0->24)
t12 = sin(qJ(1));
t9 = sin(pkin(6));
t25 = t12 * t9;
t15 = cos(qJ(1));
t24 = t15 * t9;
t14 = cos(qJ(2));
t23 = t9 * t14;
t22 = pkin(4) + qJ(3);
t21 = pkin(8) - qJ(4);
t20 = cos(pkin(6));
t19 = -r_i_i_C(3) - pkin(9) - pkin(3) - pkin(2);
t18 = t12 * t20;
t17 = t15 * t20;
t10 = sin(qJ(5));
t13 = cos(qJ(5));
t16 = t13 * r_i_i_C(1) - t10 * r_i_i_C(2) + t22;
t11 = sin(qJ(2));
t6 = -t11 * t18 + t15 * t14;
t5 = t15 * t11 + t14 * t18;
t4 = t11 * t17 + t12 * t14;
t3 = t12 * t11 - t14 * t17;
t2 = -t10 * t25 + t5 * t13;
t1 = -t5 * t10 - t13 * t25;
t7 = [-t12 * pkin(1) - t16 * t3 + (-t10 * r_i_i_C(1) - t13 * r_i_i_C(2) + t21) * t24 + t19 * t4, t16 * t6 + t19 * t5, t5, -t25, r_i_i_C(1) * t1 - r_i_i_C(2) * t2, 0; t15 * pkin(1) + t2 * r_i_i_C(1) + t1 * r_i_i_C(2) - t19 * t6 + t21 * t25 + t22 * t5, t16 * t4 + t19 * t3, t3, t24 (-t3 * t10 + t13 * t24) * r_i_i_C(1) + (-t10 * t24 - t3 * t13) * r_i_i_C(2), 0; 0 (t16 * t11 - t19 * t14) * t9, -t23, -t20 (t10 * t23 - t20 * t13) * r_i_i_C(1) + (t20 * t10 + t13 * t23) * r_i_i_C(2), 0;];
Ja_transl  = t7;
