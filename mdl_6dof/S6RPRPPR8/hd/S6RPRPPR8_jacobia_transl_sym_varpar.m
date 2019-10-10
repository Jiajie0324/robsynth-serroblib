% Analytische Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S6RPRPPR8
% 
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% (Ist für translatorischen Teil egal, kennzeichnet nur den Rechenweg der Herleitung)
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt (0=Basis).
% r_i_i_C [3x1]
%   Ortsvektor vom KörperKS-Ursprung zum gesuchten Punkt
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d6]';
% 
% Output:
% Ja_transl [3x6]
%   Translatorischer Teil der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 00:27
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S6RPRPPR8_jacobia_transl_sym_varpar(qJ, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPPR8_jacobia_transl_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RPRPPR8_jacobia_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RPRPPR8_jacobia_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S6RPRPPR8_jacobia_transl_sym_varpar: pkin has to be [8x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 00:27:23
	% EndTime: 2019-10-10 00:27:23
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 00:27:23
	% EndTime: 2019-10-10 00:27:23
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (2->2), mult. (4->4), div. (0->0), fcn. (4->2), ass. (0->3)
	t2 = cos(qJ(1));
	t1 = sin(qJ(1));
	t3 = [-r_i_i_C(1) * t1 - r_i_i_C(2) * t2, 0, 0, 0, 0, 0; r_i_i_C(1) * t2 - r_i_i_C(2) * t1, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_transl = t3;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_transl_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 00:27:23
	% EndTime: 2019-10-10 00:27:23
	% DurationCPUTime: 0.10s
	% Computational Cost: add. (7->5), mult. (8->4), div. (0->0), fcn. (10->2), ass. (0->5)
	t4 = pkin(1) - r_i_i_C(2);
	t3 = r_i_i_C(3) + qJ(2);
	t2 = cos(qJ(1));
	t1 = sin(qJ(1));
	t5 = [-t1 * t4 + t2 * t3, t1, 0, 0, 0, 0; t1 * t3 + t2 * t4, -t2, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_transl = t5;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 00:27:23
	% EndTime: 2019-10-10 00:27:23
	% DurationCPUTime: 0.10s
	% Computational Cost: add. (14->8), mult. (26->10), div. (0->0), fcn. (28->4), ass. (0->9)
	t8 = pkin(1) + pkin(7) + r_i_i_C(3);
	t1 = sin(qJ(3));
	t3 = cos(qJ(3));
	t7 = r_i_i_C(1) * t3 - r_i_i_C(2) * t1;
	t6 = -t1 * r_i_i_C(1) - t3 * r_i_i_C(2);
	t5 = qJ(2) - t6;
	t4 = cos(qJ(1));
	t2 = sin(qJ(1));
	t9 = [-t8 * t2 + t5 * t4, t2, t7 * t2, 0, 0, 0; t5 * t2 + t8 * t4, -t4, -t7 * t4, 0, 0, 0; 0, 0, t6, 0, 0, 0;];
	Ja_transl = t9;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 00:27:23
	% EndTime: 2019-10-10 00:27:23
	% DurationCPUTime: 0.10s
	% Computational Cost: add. (25->11), mult. (46->12), div. (0->0), fcn. (51->4), ass. (0->11)
	t1 = sin(qJ(3));
	t3 = cos(qJ(3));
	t7 = r_i_i_C(3) + qJ(4);
	t8 = pkin(3) + r_i_i_C(1);
	t10 = -t8 * t1 + t7 * t3;
	t9 = t7 * t1 + t8 * t3;
	t6 = pkin(1) + pkin(7) + r_i_i_C(2);
	t5 = qJ(2) - t10;
	t4 = cos(qJ(1));
	t2 = sin(qJ(1));
	t11 = [-t6 * t2 + t5 * t4, t2, t9 * t2, -t2 * t3, 0, 0; t5 * t2 + t6 * t4, -t4, -t9 * t4, t4 * t3, 0, 0; 0, 0, t10, t1, 0, 0;];
	Ja_transl = t11;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 00:27:23
	% EndTime: 2019-10-10 00:27:23
	% DurationCPUTime: 0.10s
	% Computational Cost: add. (34->13), mult. (57->12), div. (0->0), fcn. (64->4), ass. (0->11)
	t1 = sin(qJ(3));
	t3 = cos(qJ(3));
	t7 = pkin(3) + pkin(4) - r_i_i_C(2);
	t8 = r_i_i_C(1) + qJ(4);
	t10 = t8 * t1 + t7 * t3;
	t9 = -t7 * t1 + t8 * t3;
	t6 = pkin(1) + pkin(7) - r_i_i_C(3) - qJ(5);
	t5 = qJ(2) - t9;
	t4 = cos(qJ(1));
	t2 = sin(qJ(1));
	t11 = [-t6 * t2 + t5 * t4, t2, t10 * t2, -t2 * t3, -t4, 0; t5 * t2 + t6 * t4, -t4, -t10 * t4, t4 * t3, -t2, 0; 0, 0, t9, t1, 0, 0;];
	Ja_transl = t11;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobia_transl_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 00:27:23
	% EndTime: 2019-10-10 00:27:23
	% DurationCPUTime: 0.14s
	% Computational Cost: add. (58->27), mult. (116->34), div. (0->0), fcn. (131->6), ass. (0->20)
	t13 = pkin(3) + pkin(4) + pkin(8) + r_i_i_C(3);
	t6 = sin(qJ(3));
	t19 = t13 * t6;
	t15 = -pkin(5) - qJ(4);
	t5 = sin(qJ(6));
	t8 = cos(qJ(6));
	t12 = r_i_i_C(1) * t8 - r_i_i_C(2) * t5 - t15;
	t9 = cos(qJ(3));
	t18 = t12 * t6 + t13 * t9;
	t7 = sin(qJ(1));
	t17 = t7 * t9;
	t10 = cos(qJ(1));
	t16 = t10 * t9;
	t14 = pkin(1) + pkin(7) - qJ(5);
	t11 = t15 * t9 + qJ(2) + t19;
	t4 = -t8 * t16 + t7 * t5;
	t3 = t5 * t16 + t7 * t8;
	t2 = t10 * t5 + t8 * t17;
	t1 = -t10 * t8 + t5 * t17;
	t20 = [t4 * r_i_i_C(1) + t3 * r_i_i_C(2) + t11 * t10 - t14 * t7, t7, t18 * t7, -t17, -t10, r_i_i_C(1) * t1 + r_i_i_C(2) * t2; -t2 * r_i_i_C(1) + t1 * r_i_i_C(2) + t14 * t10 + t11 * t7, -t10, -t18 * t10, t16, -t7, -r_i_i_C(1) * t3 + r_i_i_C(2) * t4; 0, 0, t12 * t9 - t19, t6, 0, (-r_i_i_C(1) * t5 - r_i_i_C(2) * t8) * t6;];
	Ja_transl = t20;
else
	Ja_transl=NaN(3,6);
end