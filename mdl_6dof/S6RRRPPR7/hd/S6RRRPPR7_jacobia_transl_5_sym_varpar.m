% Translatorische Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 5 (0=Basis) von
% S6RRRPPR7
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d6,theta5]';
%
% Output:
% Ja_transl [3x6]
%   Translatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 22:07
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S6RRRPPR7_jacobia_transl_5_sym_varpar(qJ, r_i_i_C, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPPR7_jacobia_transl_5_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RRRPPR7_jacobia_transl_5_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPPR7_jacobia_transl_5_sym_varpar: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From jacobia_transl_5_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 22:07:11
% EndTime: 2019-02-26 22:07:11
% DurationCPUTime: 0.12s
% Computational Cost: add. (104->31), mult. (247->46), div. (0->0), fcn. (299->8), ass. (0->27)
t15 = cos(qJ(2));
t12 = sin(qJ(2));
t24 = -r_i_i_C(3) - qJ(5) + pkin(8);
t20 = t24 * t12;
t29 = t15 * pkin(2) + pkin(1) + t20;
t11 = sin(qJ(3));
t14 = cos(qJ(3));
t10 = cos(pkin(10));
t9 = sin(pkin(10));
t21 = t9 * r_i_i_C(2) - pkin(3) - pkin(4);
t18 = t10 * r_i_i_C(1) - t21;
t22 = t9 * r_i_i_C(1) + qJ(4);
t19 = t10 * r_i_i_C(2) + t22;
t28 = t19 * t11 + t18 * t14 + pkin(2);
t13 = sin(qJ(1));
t27 = t13 * t15;
t16 = cos(qJ(1));
t26 = t16 * t11;
t25 = t16 * t14;
t17 = -t28 * t12 + t24 * t15;
t6 = t13 * t11 + t15 * t25;
t5 = -t13 * t14 + t15 * t26;
t4 = t14 * t27 - t26;
t3 = t11 * t27 + t25;
t2 = t6 * t10;
t1 = t3 * t10;
t7 = [t16 * pkin(7) - t1 * r_i_i_C(2) - t29 * t13 - t18 * t4 - t22 * t3, t17 * t16, t2 * r_i_i_C(2) - t18 * t5 + t22 * t6, t5, -t16 * t12, 0; t13 * pkin(7) + t2 * r_i_i_C(1) + t29 * t16 + t19 * t5 - t21 * t6, t17 * t13, -t1 * r_i_i_C(1) + t19 * t4 + t21 * t3, t3, -t13 * t12, 0; 0, t28 * t15 + t20 (-t18 * t11 + t19 * t14) * t12, t12 * t11, t15, 0;];
Ja_transl  = t7;
