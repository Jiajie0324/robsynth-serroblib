% Translatorische Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 5 (0=Basis) von
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

function Ja_transl = S6RPPPRR2_jacobia_transl_5_sym_varpar(qJ, r_i_i_C, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPPRR2_jacobia_transl_5_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RPPPRR2_jacobia_transl_5_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPPPRR2_jacobia_transl_5_sym_varpar: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From jacobia_transl_5_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 20:23:20
% EndTime: 2019-02-26 20:23:20
% DurationCPUTime: 0.06s
% Computational Cost: add. (52->13), mult. (32->13), div. (0->0), fcn. (36->7), ass. (0->11)
t12 = pkin(2) + r_i_i_C(3) + pkin(7) + qJ(4);
t5 = pkin(10) + qJ(5);
t1 = sin(t5);
t3 = cos(t5);
t11 = r_i_i_C(1) * t3 - r_i_i_C(2) * t1;
t10 = -t1 * r_i_i_C(1) - t3 * r_i_i_C(2);
t9 = pkin(4) * sin(pkin(10)) + qJ(3) - t10;
t6 = qJ(1) + pkin(9);
t4 = cos(t6);
t2 = sin(t6);
t7 = [-sin(qJ(1)) * pkin(1) - t12 * t2 + t9 * t4, 0, t2, t4, t11 * t2, 0; cos(qJ(1)) * pkin(1) + t12 * t4 + t9 * t2, 0, -t4, t2, -t11 * t4, 0; 0, 1, 0, 0, t10, 0;];
Ja_transl  = t7;
