% Translatorische Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6RPPPRR2
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
%   pkin=[a2,a3,a4,a5,a6,d1,d5,d6,theta2,theta4]';
%
% Output:
% Ja_transl [3x6]
%   Translatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 20:23
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S6RPPPRR2_jacobia_transl_6_sym_varpar(qJ, r_i_i_C, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPPRR2_jacobia_transl_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RPPPRR2_jacobia_transl_6_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPPPRR2_jacobia_transl_6_sym_varpar: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From jacobia_transl_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 20:23:10
% EndTime: 2019-02-26 20:23:10
% DurationCPUTime: 0.09s
% Computational Cost: add. (119->28), mult. (91->35), div. (0->0), fcn. (103->9), ass. (0->23)
t22 = pkin(8) + r_i_i_C(3);
t9 = pkin(10) + qJ(5);
t7 = cos(t9);
t24 = t22 * t7;
t13 = sin(qJ(6));
t14 = cos(qJ(6));
t16 = r_i_i_C(1) * t14 - r_i_i_C(2) * t13 + pkin(5);
t5 = sin(t9);
t23 = t16 * t7 + t22 * t5;
t10 = qJ(1) + pkin(9);
t6 = sin(t10);
t21 = t14 * t6;
t8 = cos(t10);
t20 = t14 * t8;
t19 = t6 * t13;
t18 = t8 * t13;
t17 = pkin(2) + pkin(7) + qJ(4);
t15 = pkin(4) * sin(pkin(10)) + t5 * pkin(5) - t24 + qJ(3);
t4 = t5 * t20 - t19;
t3 = t5 * t18 + t21;
t2 = t5 * t21 + t18;
t1 = -t5 * t19 + t20;
t11 = [-sin(qJ(1)) * pkin(1) + t4 * r_i_i_C(1) - t3 * r_i_i_C(2) - t17 * t6 + t15 * t8, 0, t6, t8, t23 * t6, r_i_i_C(1) * t1 - r_i_i_C(2) * t2; cos(qJ(1)) * pkin(1) + t2 * r_i_i_C(1) + t1 * r_i_i_C(2) + t17 * t8 + t15 * t6, 0, -t8, t6, -t23 * t8, r_i_i_C(1) * t3 + r_i_i_C(2) * t4; 0, 1, 0, 0, -t16 * t5 + t24 (-r_i_i_C(1) * t13 - r_i_i_C(2) * t14) * t7;];
Ja_transl  = t11;
