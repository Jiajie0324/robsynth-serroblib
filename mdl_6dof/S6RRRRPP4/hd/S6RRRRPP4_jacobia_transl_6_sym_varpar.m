% Translatorische Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6RRRRPP4
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,theta5]';
%
% Output:
% Ja_transl [3x6]
%   Translatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 22:27
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S6RRRRPP4_jacobia_transl_6_sym_varpar(qJ, r_i_i_C, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPP4_jacobia_transl_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RRRRPP4_jacobia_transl_6_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRPP4_jacobia_transl_6_sym_varpar: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From jacobia_transl_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 22:26:59
% EndTime: 2019-02-26 22:26:59
% DurationCPUTime: 0.16s
% Computational Cost: add. (281->40), mult. (229->52), div. (0->0), fcn. (261->10), ass. (0->35)
t47 = pkin(5) + r_i_i_C(1);
t38 = r_i_i_C(3) + qJ(6);
t26 = qJ(3) + qJ(4);
t23 = cos(t26);
t13 = pkin(4) * t23 + cos(qJ(3)) * pkin(3);
t11 = pkin(2) + t13;
t29 = cos(qJ(2));
t27 = sin(qJ(2));
t44 = r_i_i_C(2) + qJ(5) + pkin(9) + pkin(8);
t35 = t44 * t27;
t49 = t29 * t11 + pkin(1) + t35;
t21 = pkin(10) + t26;
t18 = sin(t21);
t19 = cos(t21);
t48 = t38 * t18 + t47 * t19 + t11;
t22 = sin(t26);
t46 = pkin(4) * t22;
t12 = t46 + sin(qJ(3)) * pkin(3);
t45 = pkin(7) + t12;
t28 = sin(qJ(1));
t42 = t28 * t29;
t30 = cos(qJ(1));
t41 = t29 * t30;
t40 = t30 * t18;
t39 = t30 * t19;
t37 = t38 * t19 * t27;
t36 = t47 * t18;
t7 = t18 * t42 + t39;
t8 = t19 * t42 - t40;
t33 = t38 * t8 - t47 * t7;
t10 = t28 * t18 + t29 * t39;
t9 = -t28 * t19 + t29 * t40;
t32 = t38 * t10 - t47 * t9;
t31 = -t48 * t27 + t44 * t29;
t1 = [-t49 * t28 + t45 * t30 - t38 * t7 - t47 * t8, t31 * t30, -t12 * t41 + t28 * t13 + t32 (-t22 * t41 + t23 * t28) * pkin(4) + t32, t30 * t27, t9; t47 * t10 + t45 * t28 + t49 * t30 + t38 * t9, t31 * t28, -t12 * t42 - t30 * t13 + t33 (-t22 * t42 - t23 * t30) * pkin(4) + t33, t28 * t27, t7; 0, t48 * t29 + t35 (-t12 - t36) * t27 + t37 (-t36 - t46) * t27 + t37, -t29, t27 * t18;];
Ja_transl  = t1;
