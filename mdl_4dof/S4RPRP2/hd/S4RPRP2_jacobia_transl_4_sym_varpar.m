% Translatorische Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 4 (0=Basis) von
% S4RPRP2
% Use Code from Maple symbolic Code Generation
%
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
%
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% r_i_i_C [3x1]
%   Ortsvektor vom KörperKS-Ursprung zum gesuchten Punkt
% pkin [5x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d3]';
%
% Output:
% Ja_transl [3x4]
%   Translatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 19:33
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S4RPRP2_jacobia_transl_4_sym_varpar(qJ, r_i_i_C, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(3,1),zeros(5,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RPRP2_jacobia_transl_4_sym_varpar: qJ has to be [4x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S4RPRP2_jacobia_transl_4_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isreal(pkin) && all(size(pkin) == [5 1]), ...
  'S4RPRP2_jacobia_transl_4_sym_varpar: pkin has to be [5x1] (double)');

%% Symbolic Calculation
% From jacobia_transl_4_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 19:33:01
% EndTime: 2019-02-26 19:33:01
% DurationCPUTime: 0.06s
% Computational Cost: add. (27->14), mult. (44->16), div. (0->0), fcn. (54->4), ass. (0->11)
t9 = cos(qJ(3));
t14 = pkin(3) * t9 + pkin(1) + pkin(2);
t7 = sin(qJ(3));
t13 = pkin(3) * t7 + qJ(2);
t10 = cos(qJ(1));
t8 = sin(qJ(1));
t1 = -t10 * t9 - t7 * t8;
t2 = t10 * t7 - t8 * t9;
t12 = -t2 * r_i_i_C(1) + t1 * r_i_i_C(2);
t11 = t1 * r_i_i_C(1) + t2 * r_i_i_C(2);
t3 = [t10 * t13 - t14 * t8 - t12, t8, -pkin(3) * t2 + t12, 0; t10 * t14 + t13 * t8 - t11, -t10, pkin(3) * t1 + t11, 0; 0, 0, 0, -1;];
Ja_transl  = t3;
