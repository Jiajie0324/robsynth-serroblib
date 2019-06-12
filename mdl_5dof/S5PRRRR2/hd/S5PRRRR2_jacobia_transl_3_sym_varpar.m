% Translatorische Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 3 (0=Basis) von
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

function Ja_transl = S5PRRRR2_jacobia_transl_3_sym_varpar(qJ, r_i_i_C, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(1,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRRR2_jacobia_transl_3_sym_varpar: qJ has to be [5x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S5PRRRR2_jacobia_transl_3_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isreal(pkin) && all(size(pkin) == [1 1]), ...
  'S5PRRRR2_jacobia_transl_3_sym_varpar: pkin has to be [1x1] (double)');

%% Symbolic Calculation
% From jacobia_transl_3_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-06-03 15:11:34
% EndTime: 2019-06-03 15:11:34
% DurationCPUTime: 0.05s
% Computational Cost: add. (7->5), mult. (20->10), div. (0->0), fcn. (20->4), ass. (0->7)
t1 = sin(qJ(3));
t3 = cos(qJ(3));
t6 = r_i_i_C(1) * t3 - r_i_i_C(2) * t1;
t5 = -r_i_i_C(1) * t1 - r_i_i_C(2) * t3;
t4 = cos(qJ(2));
t2 = sin(qJ(2));
t7 = [0, t4 * r_i_i_C(3) - t2 * t6, t5 * t4, 0, 0; 0, 0, -t6, 0, 0; 1, t2 * r_i_i_C(3) + t4 * t6, t5 * t2, 0, 0;];
Ja_transl  = t7;
