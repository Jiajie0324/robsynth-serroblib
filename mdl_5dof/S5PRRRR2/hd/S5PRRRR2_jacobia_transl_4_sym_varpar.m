% Translatorische Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 4 (0=Basis) von
% S5PRRRR2
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
% pkin [1x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a4]';
%
% Output:
% Ja_transl [3x5]
%   Translatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-06-03 15:11
% Revision: 36f6366a01c4a552c0708fcd8ed3e0fb9da693e2 (2019-05-16)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S5PRRRR2_jacobia_transl_4_sym_varpar(qJ, r_i_i_C, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(1,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRRR2_jacobia_transl_4_sym_varpar: qJ has to be [5x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S5PRRRR2_jacobia_transl_4_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isreal(pkin) && all(size(pkin) == [1 1]), ...
  'S5PRRRR2_jacobia_transl_4_sym_varpar: pkin has to be [1x1] (double)');

%% Symbolic Calculation
% From jacobia_transl_4_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-06-03 15:11:34
% EndTime: 2019-06-03 15:11:34
% DurationCPUTime: 0.09s
% Computational Cost: add. (31->8), mult. (39->14), div. (0->0), fcn. (39->6), ass. (0->10)
t4 = qJ(3) + qJ(4);
t2 = sin(t4);
t3 = cos(t4);
t14 = -t3 * r_i_i_C(1) + t2 * r_i_i_C(2);
t9 = cos(qJ(3)) * pkin(1) - t14;
t11 = -r_i_i_C(1) * t2 - r_i_i_C(2) * t3;
t10 = -sin(qJ(3)) * pkin(1) + t11;
t8 = cos(qJ(2));
t6 = sin(qJ(2));
t1 = [0, t8 * r_i_i_C(3) - t9 * t6, t10 * t8, t11 * t8, 0; 0, 0, -t9, t14, 0; 1, t6 * r_i_i_C(3) + t9 * t8, t10 * t6, t11 * t6, 0;];
Ja_transl  = t1;
