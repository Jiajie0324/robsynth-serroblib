% Translatorische Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 5 (0=Basis) von
% S6RPPRRR7
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
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d5,d6,theta3]';
%
% Output:
% Ja_transl [3x6]
%   Translatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 20:38
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S6RPPRRR7_jacobia_transl_5_sym_varpar(qJ, r_i_i_C, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRRR7_jacobia_transl_5_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RPPRRR7_jacobia_transl_5_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPPRRR7_jacobia_transl_5_sym_varpar: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From jacobia_transl_5_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 20:38:11
% EndTime: 2019-02-26 20:38:11
% DurationCPUTime: 0.07s
% Computational Cost: add. (65->16), mult. (47->17), div. (0->0), fcn. (51->7), ass. (0->16)
t10 = pkin(10) + qJ(4);
t8 = qJ(5) + t10;
t4 = sin(t8);
t5 = cos(t8);
t14 = -t4 * r_i_i_C(1) - t5 * r_i_i_C(2);
t20 = t14 - pkin(4) * sin(t10);
t18 = pkin(4) * cos(t10);
t17 = r_i_i_C(1) * t5;
t16 = r_i_i_C(2) * t4;
t15 = pkin(1) + r_i_i_C(3) + pkin(8) + pkin(7) + qJ(3);
t13 = qJ(2) + sin(pkin(10)) * pkin(3) - t20;
t12 = cos(qJ(1));
t11 = sin(qJ(1));
t3 = t12 * t16;
t2 = t11 * t17;
t1 = [-t15 * t11 + t13 * t12, t11, t12, t2 + (-t16 + t18) * t11, -t11 * t16 + t2, 0; t13 * t11 + t15 * t12, -t12, t11, t3 + (-t17 - t18) * t12, -t12 * t17 + t3, 0; 0, 0, 0, t20, t14, 0;];
Ja_transl  = t1;
