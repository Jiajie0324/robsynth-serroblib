% Translatorische Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 4 (0=Basis) von
% S6RRPRRP1
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d5,theta3]';
%
% Output:
% Ja_transl [3x6]
%   Translatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 21:46
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S6RRPRRP1_jacobia_transl_4_sym_varpar(qJ, r_i_i_C, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP1_jacobia_transl_4_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RRPRRP1_jacobia_transl_4_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPRRP1_jacobia_transl_4_sym_varpar: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From jacobia_transl_4_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 21:46:10
% EndTime: 2019-02-26 21:46:10
% DurationCPUTime: 0.07s
% Computational Cost: add. (66->13), mult. (46->16), div. (0->0), fcn. (48->8), ass. (0->13)
t10 = qJ(2) + pkin(10);
t7 = qJ(4) + t10;
t5 = sin(t7);
t6 = cos(t7);
t16 = t6 * r_i_i_C(1) - t5 * r_i_i_C(2);
t20 = t16 + pkin(3) * cos(t10) + cos(qJ(2)) * pkin(2);
t18 = r_i_i_C(3) + pkin(8) + qJ(3) + pkin(7);
t15 = -r_i_i_C(1) * t5 - r_i_i_C(2) * t6;
t14 = pkin(1) + t20;
t13 = t15 - pkin(3) * sin(t10) - sin(qJ(2)) * pkin(2);
t12 = cos(qJ(1));
t11 = sin(qJ(1));
t1 = [-t14 * t11 + t18 * t12, t13 * t12, t11, t15 * t12, 0, 0; t18 * t11 + t14 * t12, t13 * t11, -t12, t15 * t11, 0, 0; 0, t20, 0, t16, 0, 0;];
Ja_transl  = t1;
