% Translatorische Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6RPPRPR1
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
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d6,theta2,theta3,theta5]';
%
% Output:
% Ja_transl [3x6]
%   Translatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 20:25
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S6RPPRPR1_jacobia_transl_6_sym_varpar(qJ, r_i_i_C, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRPR1_jacobia_transl_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RPPRPR1_jacobia_transl_6_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RPPRPR1_jacobia_transl_6_sym_varpar: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From jacobia_transl_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 20:25:29
% EndTime: 2019-02-26 20:25:29
% DurationCPUTime: 0.10s
% Computational Cost: add. (155->31), mult. (98->41), div. (0->0), fcn. (111->11), ass. (0->23)
t14 = pkin(10) + qJ(4);
t11 = cos(t14);
t25 = r_i_i_C(3) + pkin(8) + qJ(5);
t8 = sin(t14);
t23 = t25 * t8;
t5 = cos(pkin(11)) * pkin(5) + pkin(4);
t27 = t23 + t11 * t5 + cos(pkin(10)) * pkin(3) + pkin(2);
t15 = qJ(1) + pkin(9);
t9 = sin(t15);
t26 = t11 * t9;
t12 = cos(t15);
t24 = t11 * t12;
t21 = pkin(5) * sin(pkin(11)) + pkin(7) + qJ(3);
t13 = pkin(11) + qJ(6);
t10 = cos(t13);
t7 = sin(t13);
t20 = r_i_i_C(1) * t10 - r_i_i_C(2) * t7 + t5;
t19 = t25 * t11 - t20 * t8;
t4 = t10 * t24 + t7 * t9;
t3 = t10 * t9 - t7 * t24;
t2 = -t10 * t26 + t12 * t7;
t1 = t10 * t12 + t7 * t26;
t6 = [-sin(qJ(1)) * pkin(1) + t2 * r_i_i_C(1) + t1 * r_i_i_C(2) + t21 * t12 - t27 * t9, 0, t9, t19 * t12, t12 * t8, r_i_i_C(1) * t3 - r_i_i_C(2) * t4; cos(qJ(1)) * pkin(1) + t4 * r_i_i_C(1) + t3 * r_i_i_C(2) + t21 * t9 + t27 * t12, 0, -t12, t19 * t9, t9 * t8, -r_i_i_C(1) * t1 + r_i_i_C(2) * t2; 0, 1, 0, t20 * t11 + t23, -t11 (-r_i_i_C(1) * t7 - r_i_i_C(2) * t10) * t8;];
Ja_transl  = t6;
