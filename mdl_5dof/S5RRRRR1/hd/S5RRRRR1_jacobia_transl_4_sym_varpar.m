% Translatorische Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 4 (0=Basis) von
% S5RRRRR1
% Use Code from Maple symbolic Code Generation
%
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
%
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% r_i_i_C [3x1]
%   Ortsvektor vom KörperKS-Ursprung zum gesuchten Punkt
% pkin [6x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d5]';
%
% Output:
% Ja_transl [3x5]
%   Translatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 19:37
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S5RRRRR1_jacobia_transl_4_sym_varpar(qJ, r_i_i_C, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(6,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRR1_jacobia_transl_4_sym_varpar: qJ has to be [5x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S5RRRRR1_jacobia_transl_4_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S5RRRRR1_jacobia_transl_4_sym_varpar: pkin has to be [6x1] (double)');

%% Symbolic Calculation
% From jacobia_transl_4_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 19:37:45
% EndTime: 2019-02-26 19:37:45
% DurationCPUTime: 0.07s
% Computational Cost: add. (80->11), mult. (59->18), div. (0->0), fcn. (59->8), ass. (0->14)
t9 = qJ(2) + qJ(3);
t8 = qJ(4) + t9;
t4 = sin(t8);
t5 = cos(t8);
t18 = -t5 * r_i_i_C(1) + t4 * r_i_i_C(2);
t16 = t18 - pkin(3) * cos(t9);
t23 = t16 - cos(qJ(2)) * pkin(2);
t17 = -r_i_i_C(1) * t4 - r_i_i_C(2) * t5;
t13 = t17 - pkin(3) * sin(t9);
t15 = pkin(1) - t23;
t14 = -sin(qJ(2)) * pkin(2) + t13;
t12 = cos(qJ(1));
t10 = sin(qJ(1));
t1 = [-t12 * r_i_i_C(3) - t10 * t15, t14 * t12, t13 * t12, t17 * t12, 0; -t10 * r_i_i_C(3) + t12 * t15, t14 * t10, t13 * t10, t17 * t10, 0; 0, t23, t16, t18, 0;];
Ja_transl  = t1;