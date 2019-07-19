% Translatorische Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 3 (0=Basis) von
% S5RPRRR1
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
%   pkin=[dummy]';
%
% Output:
% Ja_transl [3x5]
%   Translatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-07-18 13:26
% Revision: 08c8d617a845f5dd194efdf9aca2774760f7818f (2019-07-16)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S5RPRRR1_jacobia_transl_3_sym_varpar(qJ, r_i_i_C, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(1,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRR1_jacobia_transl_3_sym_varpar: qJ has to be [5x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S5RPRRR1_jacobia_transl_3_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isreal(pkin) && all(size(pkin) == [1 1]), ...
  'S5RPRRR1_jacobia_transl_3_sym_varpar: pkin has to be [1x1] (double)');

%% Symbolic Calculation
% From jacobia_transl_3_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-07-18 13:26:25
% EndTime: 2019-07-18 13:26:25
% DurationCPUTime: 0.06s
% Computational Cost: add. (10->6), mult. (22->10), div. (0->0), fcn. (24->4), ass. (0->8)
t7 = r_i_i_C(3) + qJ(2);
t1 = sin(qJ(3));
t3 = cos(qJ(3));
t6 = t3 * r_i_i_C(1) - t1 * r_i_i_C(2);
t5 = -r_i_i_C(1) * t1 - r_i_i_C(2) * t3;
t4 = cos(qJ(1));
t2 = sin(qJ(1));
t8 = [-t6 * t2 + t7 * t4, t2, t5 * t4, 0, 0; t7 * t2 + t6 * t4, -t4, t5 * t2, 0, 0; 0, 0, t6, 0, 0;];
Ja_transl  = t8;