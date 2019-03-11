% Translatorische Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6RPRRPR2
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
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d6,theta2,theta5]';
%
% Output:
% Ja_transl [3x6]
%   Translatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 21:01
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S6RPRRPR2_jacobia_transl_6_sym_varpar(qJ, r_i_i_C, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPR2_jacobia_transl_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RPRRPR2_jacobia_transl_6_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RPRRPR2_jacobia_transl_6_sym_varpar: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From jacobia_transl_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 21:01:25
% EndTime: 2019-02-26 21:01:25
% DurationCPUTime: 0.11s
% Computational Cost: add. (211->35), mult. (140->47), div. (0->0), fcn. (155->12), ass. (0->28)
t23 = cos(qJ(3));
t22 = sin(qJ(3));
t31 = r_i_i_C(3) + pkin(9) + qJ(5) + pkin(8);
t27 = t31 * t22;
t20 = qJ(4) + pkin(11);
t11 = pkin(5) * cos(t20) + cos(qJ(4)) * pkin(4);
t9 = pkin(3) + t11;
t35 = t23 * t9 + pkin(2) + t27;
t17 = qJ(6) + t20;
t13 = sin(t17);
t14 = cos(t17);
t21 = qJ(1) + pkin(10);
t16 = cos(t21);
t15 = sin(t21);
t30 = t15 * t23;
t5 = t13 * t30 + t16 * t14;
t6 = t16 * t13 - t14 * t30;
t34 = -t5 * r_i_i_C(1) + t6 * r_i_i_C(2);
t29 = t16 * t23;
t7 = -t13 * t29 + t15 * t14;
t8 = t15 * t13 + t14 * t29;
t33 = t7 * r_i_i_C(1) - t8 * r_i_i_C(2);
t10 = pkin(5) * sin(t20) + sin(qJ(4)) * pkin(4);
t32 = pkin(7) + t10;
t26 = -r_i_i_C(1) * t13 - r_i_i_C(2) * t14;
t25 = r_i_i_C(1) * t14 - r_i_i_C(2) * t13 + t9;
t24 = -t25 * t22 + t31 * t23;
t1 = [-sin(qJ(1)) * pkin(1) + t6 * r_i_i_C(1) + t5 * r_i_i_C(2) + t32 * t16 - t35 * t15, 0, t24 * t16, -t10 * t29 + t15 * t11 + t33, t16 * t22, t33; cos(qJ(1)) * pkin(1) + t8 * r_i_i_C(1) + t7 * r_i_i_C(2) + t32 * t15 + t35 * t16, 0, t24 * t15, -t10 * t30 - t16 * t11 + t34, t15 * t22, t34; 0, 1, t25 * t23 + t27 (-t10 + t26) * t22, -t23, t26 * t22;];
Ja_transl  = t1;