% Translatorische Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 5 (0=Basis) von
% S6PRPRPR6
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d4,d6,theta1,theta5]';
%
% Output:
% Ja_transl [3x6]
%   Translatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 19:49
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S6PRPRPR6_jacobia_transl_5_sym_varpar(qJ, r_i_i_C, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPRPR6_jacobia_transl_5_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6PRPRPR6_jacobia_transl_5_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRPRPR6_jacobia_transl_5_sym_varpar: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From jacobia_transl_5_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 19:49:12
% EndTime: 2019-02-26 19:49:12
% DurationCPUTime: 0.10s
% Computational Cost: add. (92->26), mult. (239->44), div. (0->0), fcn. (303->10), ass. (0->25)
t15 = sin(pkin(6));
t19 = sin(qJ(4));
t31 = t15 * t19;
t21 = cos(qJ(4));
t30 = t15 * t21;
t22 = cos(qJ(2));
t29 = t15 * t22;
t18 = cos(pkin(6));
t20 = sin(qJ(2));
t28 = t18 * t20;
t27 = t18 * t22;
t26 = r_i_i_C(3) + qJ(5);
t13 = sin(pkin(11));
t16 = cos(pkin(11));
t25 = r_i_i_C(1) * t16 - r_i_i_C(2) * t13 + pkin(4);
t24 = t13 * r_i_i_C(1) + t16 * r_i_i_C(2) + pkin(2) + pkin(8);
t23 = t25 * t19 - t26 * t21 + qJ(3);
t17 = cos(pkin(10));
t14 = sin(pkin(10));
t10 = t18 * t19 + t21 * t29;
t8 = t14 * t27 + t17 * t20;
t6 = t14 * t20 - t17 * t27;
t3 = t17 * t31 + t6 * t21;
t1 = t14 * t31 - t8 * t21;
t2 = [0, -t24 * t8 + t23 * (-t14 * t28 + t17 * t22) t8, t26 * (t14 * t30 + t8 * t19) - t25 * t1, t1, 0; 0, -t24 * t6 + t23 * (t14 * t22 + t17 * t28) t6, -t26 * (t17 * t30 - t6 * t19) + t25 * t3, -t3, 0; 1 (t23 * t20 + t24 * t22) * t15, -t29, t26 * (t18 * t21 - t19 * t29) - t25 * t10, t10, 0;];
Ja_transl  = t2;
