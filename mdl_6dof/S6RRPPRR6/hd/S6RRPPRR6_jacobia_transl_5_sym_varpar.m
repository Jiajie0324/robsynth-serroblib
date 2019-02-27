% Translatorische Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 5 (0=Basis) von
% S6RRPPRR6
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d5,d6,theta4]';
%
% Output:
% Ja_transl [3x6]
%   Translatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 21:31
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S6RRPPRR6_jacobia_transl_5_sym_varpar(qJ, r_i_i_C, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPRR6_jacobia_transl_5_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RRPPRR6_jacobia_transl_5_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPPRR6_jacobia_transl_5_sym_varpar: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From jacobia_transl_5_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 21:31:25
% EndTime: 2019-02-26 21:31:25
% DurationCPUTime: 0.10s
% Computational Cost: add. (93->25), mult. (128->33), div. (0->0), fcn. (149->8), ass. (0->25)
t14 = sin(qJ(2));
t16 = cos(qJ(2));
t24 = pkin(4) * sin(pkin(10)) + qJ(3);
t28 = pkin(2) + cos(pkin(10)) * pkin(4) + pkin(3);
t19 = t24 * t14 + t28 * t16;
t29 = pkin(1) + t19;
t11 = pkin(10) + qJ(5);
t9 = sin(t11);
t27 = t16 * t9;
t17 = cos(qJ(1));
t26 = t17 * t14;
t25 = pkin(7) - r_i_i_C(3) - pkin(8) - qJ(4);
t15 = sin(qJ(1));
t10 = cos(t11);
t6 = t10 * t14 - t27;
t1 = t6 * t15;
t20 = t10 * t16 + t14 * t9;
t2 = t20 * t15;
t23 = t1 * r_i_i_C(1) - t2 * r_i_i_C(2);
t3 = -t10 * t26 + t17 * t27;
t4 = t20 * t17;
t22 = -t3 * r_i_i_C(1) - t4 * r_i_i_C(2);
t21 = -t20 * r_i_i_C(1) - t6 * r_i_i_C(2);
t18 = -t28 * t14 + t24 * t16;
t5 = [-t2 * r_i_i_C(1) - t1 * r_i_i_C(2) - t29 * t15 + t25 * t17, t18 * t17 - t22, t26, -t15, t22, 0; t4 * r_i_i_C(1) - t3 * r_i_i_C(2) + t25 * t15 + t29 * t17, t18 * t15 - t23, t15 * t14, t17, t23, 0; 0, t19 - t21, -t16, 0, t21, 0;];
Ja_transl  = t5;
