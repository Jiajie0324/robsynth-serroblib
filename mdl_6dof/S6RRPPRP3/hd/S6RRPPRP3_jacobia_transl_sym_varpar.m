% Analytische Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S6RRPPRP3
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d5]';
% 
% Output:
% Ja_transl [3x6]
%   Translatorischer Teil der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 09:30
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S6RRPPRP3_jacobia_transl_sym_varpar(qJ, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPRP3_jacobia_transl_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RRPPRP3_jacobia_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRPPRP3_jacobia_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S6RRPPRP3_jacobia_transl_sym_varpar: pkin has to be [8x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:30:29
	% EndTime: 2019-10-10 09:30:29
	% DurationCPUTime: 0.09s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:30:29
	% EndTime: 2019-10-10 09:30:29
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
	% StartTime: 2019-10-10 09:30:29
	% EndTime: 2019-10-10 09:30:29
	% DurationCPUTime: 0.09s
	% Computational Cost: add. (11->6), mult. (24->10), div. (0->0), fcn. (24->4), ass. (0->9)
	t8 = pkin(7) + r_i_i_C(3);
	t1 = sin(qJ(2));
	t3 = cos(qJ(2));
	t7 = r_i_i_C(1) * t3 - r_i_i_C(2) * t1;
	t6 = -r_i_i_C(1) * t1 - r_i_i_C(2) * t3;
	t5 = pkin(1) + t7;
	t4 = cos(qJ(1));
	t2 = sin(qJ(1));
	t9 = [-t2 * t5 + t4 * t8, t6 * t4, 0, 0, 0, 0; t2 * t8 + t4 * t5, t6 * t2, 0, 0, 0, 0; 0, t7, 0, 0, 0, 0;];
	Ja_transl = t9;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:30:29
	% EndTime: 2019-10-10 09:30:29
	% DurationCPUTime: 0.14s
	% Computational Cost: add. (22->9), mult. (44->12), div. (0->0), fcn. (47->4), ass. (0->11)
	t1 = sin(qJ(2));
	t3 = cos(qJ(2));
	t7 = r_i_i_C(3) + qJ(3);
	t9 = pkin(2) + r_i_i_C(1);
	t6 = t7 * t1 + t9 * t3;
	t10 = pkin(1) + t6;
	t8 = pkin(7) + r_i_i_C(2);
	t5 = -t9 * t1 + t7 * t3;
	t4 = cos(qJ(1));
	t2 = sin(qJ(1));
	t11 = [-t10 * t2 + t8 * t4, t5 * t4, t4 * t1, 0, 0, 0; t10 * t4 + t8 * t2, t5 * t2, t2 * t1, 0, 0, 0; 0, t6, -t3, 0, 0, 0;];
	Ja_transl = t11;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:30:29
	% EndTime: 2019-10-10 09:30:29
	% DurationCPUTime: 0.10s
	% Computational Cost: add. (30->10), mult. (55->12), div. (0->0), fcn. (60->4), ass. (0->11)
	t1 = sin(qJ(2));
	t3 = cos(qJ(2));
	t8 = pkin(2) + pkin(3) - r_i_i_C(2);
	t9 = r_i_i_C(1) + qJ(3);
	t6 = t9 * t1 + t8 * t3;
	t10 = pkin(1) + t6;
	t7 = pkin(7) - r_i_i_C(3) - qJ(4);
	t5 = -t8 * t1 + t9 * t3;
	t4 = cos(qJ(1));
	t2 = sin(qJ(1));
	t11 = [-t10 * t2 + t7 * t4, t5 * t4, t4 * t1, -t2, 0, 0; t10 * t4 + t7 * t2, t5 * t2, t2 * t1, t4, 0, 0; 0, t6, -t3, 0, 0, 0;];
	Ja_transl = t11;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:30:29
	% EndTime: 2019-10-10 09:30:29
	% DurationCPUTime: 0.14s
	% Computational Cost: add. (54->24), mult. (114->34), div. (0->0), fcn. (127->6), ass. (0->22)
	t14 = pkin(2) + pkin(3) + pkin(8) + r_i_i_C(3);
	t9 = cos(qJ(2));
	t13 = t14 * t9;
	t16 = pkin(4) + qJ(3);
	t6 = sin(qJ(2));
	t22 = -t16 * t6 - pkin(1) - t13;
	t7 = sin(qJ(1));
	t20 = t7 * t6;
	t8 = cos(qJ(5));
	t19 = t7 * t8;
	t10 = cos(qJ(1));
	t18 = t10 * t6;
	t17 = t10 * t8;
	t15 = pkin(7) - qJ(4);
	t5 = sin(qJ(5));
	t12 = r_i_i_C(1) * t8 - r_i_i_C(2) * t5 + t16;
	t11 = t12 * t9 - t14 * t6;
	t4 = t6 * t17 - t7 * t5;
	t3 = -t5 * t18 - t19;
	t2 = -t10 * t5 - t6 * t19;
	t1 = t5 * t20 - t17;
	t21 = [t2 * r_i_i_C(1) + t1 * r_i_i_C(2) + t15 * t10 + t22 * t7, t11 * t10, t18, -t7, r_i_i_C(1) * t3 - r_i_i_C(2) * t4, 0; t4 * r_i_i_C(1) + t3 * r_i_i_C(2) - t22 * t10 + t15 * t7, t11 * t7, t20, t10, -r_i_i_C(1) * t1 + r_i_i_C(2) * t2, 0; 0, t12 * t6 + t13, -t9, 0, (r_i_i_C(1) * t5 + r_i_i_C(2) * t8) * t9, 0;];
	Ja_transl = t21;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobia_transl_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:30:29
	% EndTime: 2019-10-10 09:30:29
	% DurationCPUTime: 0.16s
	% Computational Cost: add. (71->27), mult. (137->38), div. (0->0), fcn. (153->6), ass. (0->23)
	t11 = cos(qJ(2));
	t17 = pkin(2) + pkin(3) + r_i_i_C(3) + qJ(6) + pkin(8);
	t15 = t17 * t11;
	t10 = cos(qJ(5));
	t18 = pkin(5) * t10 + pkin(4) + qJ(3);
	t8 = sin(qJ(2));
	t25 = -t18 * t8 - pkin(1) - t15;
	t24 = pkin(5) + r_i_i_C(1);
	t9 = sin(qJ(1));
	t22 = t9 * t8;
	t12 = cos(qJ(1));
	t21 = t12 * t8;
	t20 = t9 * t10;
	t19 = t10 * t12;
	t7 = sin(qJ(5));
	t16 = -pkin(5) * t7 + pkin(7) - qJ(4);
	t1 = t7 * t22 - t19;
	t3 = -t7 * t21 - t20;
	t14 = r_i_i_C(1) * t10 - r_i_i_C(2) * t7 + t18;
	t13 = t14 * t11 - t17 * t8;
	t4 = t8 * t19 - t9 * t7;
	t2 = -t12 * t7 - t8 * t20;
	t5 = [t2 * r_i_i_C(1) + t1 * r_i_i_C(2) + t16 * t12 + t25 * t9, t13 * t12, t21, -t9, -t4 * r_i_i_C(2) + t24 * t3, t12 * t11; t4 * r_i_i_C(1) + t3 * r_i_i_C(2) - t25 * t12 + t16 * t9, t13 * t9, t22, t12, t2 * r_i_i_C(2) - t24 * t1, t9 * t11; 0, t14 * t8 + t15, -t11, 0, (r_i_i_C(2) * t10 + t24 * t7) * t11, t8;];
	Ja_transl = t5;
else
	Ja_transl=NaN(3,6);
end