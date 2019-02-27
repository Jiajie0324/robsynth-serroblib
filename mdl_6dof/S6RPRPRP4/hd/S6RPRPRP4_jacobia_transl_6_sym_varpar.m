% Translatorische Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6RPRPRP4
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
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,theta2]';
%
% Output:
% Ja_transl [3x6]
%   Translatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 20:45
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S6RPRPRP4_jacobia_transl_6_sym_varpar(qJ, r_i_i_C, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRP4_jacobia_transl_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RPRPRP4_jacobia_transl_6_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPRPRP4_jacobia_transl_6_sym_varpar: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From jacobia_transl_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 20:45:17
% EndTime: 2019-02-26 20:45:17
% DurationCPUTime: 0.11s
% Computational Cost: add. (139->28), mult. (157->38), div. (0->0), fcn. (181->8), ass. (0->23)
t10 = sin(qJ(3));
t12 = cos(qJ(3));
t17 = pkin(3) + pkin(8) + r_i_i_C(2);
t15 = t17 * t12;
t24 = t10 * qJ(4) + pkin(2) + t15;
t23 = pkin(4) + pkin(7);
t22 = pkin(5) + r_i_i_C(1);
t8 = qJ(1) + pkin(9);
t6 = sin(t8);
t21 = t6 * t10;
t7 = cos(t8);
t20 = t7 * t10;
t11 = cos(qJ(5));
t19 = t10 * t11;
t18 = r_i_i_C(3) + qJ(6);
t9 = sin(qJ(5));
t14 = -t18 * t11 + t22 * t9 + qJ(4);
t13 = -t17 * t10 + t14 * t12;
t4 = t11 * t7 - t9 * t21;
t3 = t6 * t19 + t7 * t9;
t2 = t11 * t6 + t9 * t20;
t1 = -t7 * t19 + t6 * t9;
t5 = [-sin(qJ(1)) * pkin(1) + t23 * t7 + t22 * t4 + t18 * t3 - t24 * t6, 0, t13 * t7, t20, -t22 * t1 + t18 * t2, t1; cos(qJ(1)) * pkin(1) + t23 * t6 + t22 * t2 + t18 * t1 + t24 * t7, 0, t13 * t6, t21, -t18 * t4 + t22 * t3, -t3; 0, 1, t14 * t10 + t15, -t12 (-t22 * t11 - t18 * t9) * t12, t12 * t11;];
Ja_transl  = t5;
