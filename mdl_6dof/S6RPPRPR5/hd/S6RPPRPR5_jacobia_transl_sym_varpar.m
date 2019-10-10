% Analytische Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S6RPPRPR5
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
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d6,theta5]';
% 
% Output:
% Ja_transl [3x6]
%   Translatorischer Teil der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-09 23:41
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S6RPPRPR5_jacobia_transl_sym_varpar(qJ, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRPR5_jacobia_transl_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RPPRPR5_jacobia_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RPPRPR5_jacobia_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPPRPR5_jacobia_transl_sym_varpar: pkin has to be [9x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:41:04
	% EndTime: 2019-10-09 23:41:04
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:41:04
	% EndTime: 2019-10-09 23:41:04
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
	% StartTime: 2019-10-09 23:41:04
	% EndTime: 2019-10-09 23:41:04
	% DurationCPUTime: 0.08s
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
	% StartTime: 2019-10-09 23:41:04
	% EndTime: 2019-10-09 23:41:04
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (9->5), mult. (10->4), div. (0->0), fcn. (14->2), ass. (0->5)
	t4 = r_i_i_C(2) + qJ(2);
	t3 = pkin(1) + r_i_i_C(3) + qJ(3);
	t2 = cos(qJ(1));
	t1 = sin(qJ(1));
	t5 = [-t3 * t1 + t4 * t2, t1, t2, 0, 0, 0; t4 * t1 + t3 * t2, -t2, t1, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_transl = t5;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:41:04
	% EndTime: 2019-10-09 23:41:04
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (16->7), mult. (28->10), div. (0->0), fcn. (32->4), ass. (0->9)
	t8 = -pkin(7) - r_i_i_C(3) + qJ(2);
	t1 = sin(qJ(4));
	t3 = cos(qJ(4));
	t7 = r_i_i_C(1) * t3 - r_i_i_C(2) * t1;
	t6 = -t1 * r_i_i_C(1) - t3 * r_i_i_C(2);
	t5 = pkin(1) + qJ(3) - t6;
	t4 = cos(qJ(1));
	t2 = sin(qJ(1));
	t9 = [-t5 * t2 + t8 * t4, t2, t4, t7 * t4, 0, 0; t8 * t2 + t5 * t4, -t4, t2, t7 * t2, 0, 0; 0, 0, 0, t6, 0, 0;];
	Ja_transl = t9;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:41:04
	% EndTime: 2019-10-09 23:41:04
	% DurationCPUTime: 0.11s
	% Computational Cost: add. (35->14), mult. (69->16), div. (0->0), fcn. (80->6), ass. (0->13)
	t1 = sin(pkin(9));
	t2 = cos(pkin(9));
	t10 = r_i_i_C(1) * t2 - r_i_i_C(2) * t1 + pkin(4);
	t11 = r_i_i_C(3) + qJ(5);
	t3 = sin(qJ(4));
	t5 = cos(qJ(4));
	t7 = -t10 * t3 + t11 * t5;
	t13 = -pkin(1) - qJ(3) + t7;
	t9 = -r_i_i_C(1) * t1 - t2 * r_i_i_C(2) - pkin(7) + qJ(2);
	t8 = t10 * t5 + t11 * t3;
	t6 = cos(qJ(1));
	t4 = sin(qJ(1));
	t12 = [t13 * t4 + t9 * t6, t4, t6, t8 * t6, -t6 * t5, 0; -t13 * t6 + t9 * t4, -t6, t4, t8 * t4, -t4 * t5, 0; 0, 0, 0, t7, t3, 0;];
	Ja_transl = t12;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobia_transl_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:41:04
	% EndTime: 2019-10-09 23:41:04
	% DurationCPUTime: 0.15s
	% Computational Cost: add. (78->28), mult. (98->38), div. (0->0), fcn. (113->8), ass. (0->21)
	t11 = sin(qJ(4));
	t13 = cos(qJ(4));
	t22 = r_i_i_C(3) + pkin(8) + qJ(5);
	t19 = t22 * t13;
	t5 = cos(pkin(9)) * pkin(5) + pkin(4);
	t23 = -t11 * t5 - pkin(1) - qJ(3) + t19;
	t12 = sin(qJ(1));
	t21 = t11 * t12;
	t14 = cos(qJ(1));
	t20 = t11 * t14;
	t18 = -pkin(5) * sin(pkin(9)) - pkin(7) + qJ(2);
	t8 = pkin(9) + qJ(6);
	t6 = sin(t8);
	t7 = cos(t8);
	t16 = r_i_i_C(1) * t7 - r_i_i_C(2) * t6 + t5;
	t15 = t22 * t11 + t16 * t13;
	t4 = -t12 * t6 + t7 * t20;
	t3 = -t12 * t7 - t6 * t20;
	t2 = -t14 * t6 - t7 * t21;
	t1 = -t14 * t7 + t6 * t21;
	t9 = [t2 * r_i_i_C(1) + t1 * r_i_i_C(2) + t23 * t12 + t18 * t14, t12, t14, t15 * t14, -t14 * t13, r_i_i_C(1) * t3 - r_i_i_C(2) * t4; t4 * r_i_i_C(1) + t3 * r_i_i_C(2) + t18 * t12 - t23 * t14, -t14, t12, t15 * t12, -t12 * t13, -r_i_i_C(1) * t1 + r_i_i_C(2) * t2; 0, 0, 0, -t16 * t11 + t19, t11, (-r_i_i_C(1) * t6 - r_i_i_C(2) * t7) * t13;];
	Ja_transl = t9;
else
	Ja_transl=NaN(3,6);
end