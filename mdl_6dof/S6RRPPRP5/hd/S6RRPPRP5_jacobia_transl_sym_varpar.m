% Analytische Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S6RRPPRP5
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d5,theta4]';
% 
% Output:
% Ja_transl [3x6]
%   Translatorischer Teil der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 09:34
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S6RRPPRP5_jacobia_transl_sym_varpar(qJ, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPRP5_jacobia_transl_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RRPPRP5_jacobia_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRPPRP5_jacobia_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRPPRP5_jacobia_transl_sym_varpar: pkin has to be [9x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:34:00
	% EndTime: 2019-10-10 09:34:00
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:34:00
	% EndTime: 2019-10-10 09:34:00
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
	% StartTime: 2019-10-10 09:34:00
	% EndTime: 2019-10-10 09:34:00
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
	% StartTime: 2019-10-10 09:34:00
	% EndTime: 2019-10-10 09:34:00
	% DurationCPUTime: 0.10s
	% Computational Cost: add. (22->9), mult. (44->12), div. (0->0), fcn. (47->4), ass. (0->11)
	t1 = sin(qJ(2));
	t3 = cos(qJ(2));
	t7 = r_i_i_C(3) + qJ(3);
	t9 = pkin(2) - r_i_i_C(2);
	t6 = t7 * t1 + t9 * t3;
	t10 = pkin(1) + t6;
	t8 = pkin(7) + r_i_i_C(1);
	t5 = -t9 * t1 + t7 * t3;
	t4 = cos(qJ(1));
	t2 = sin(qJ(1));
	t11 = [-t10 * t2 + t8 * t4, t5 * t4, t4 * t1, 0, 0, 0; t10 * t4 + t8 * t2, t5 * t2, t2 * t1, 0, 0, 0; 0, t6, -t3, 0, 0, 0;];
	Ja_transl = t11;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:34:00
	% EndTime: 2019-10-10 09:34:00
	% DurationCPUTime: 0.11s
	% Computational Cost: add. (36->12), mult. (78->18), div. (0->0), fcn. (88->6), ass. (0->13)
	t1 = sin(pkin(9));
	t2 = cos(pkin(9));
	t10 = r_i_i_C(1) * t1 + r_i_i_C(2) * t2 + qJ(3);
	t11 = pkin(2) + r_i_i_C(3) + qJ(4);
	t3 = sin(qJ(2));
	t5 = cos(qJ(2));
	t8 = t10 * t3 + t11 * t5;
	t12 = pkin(1) + t8;
	t9 = r_i_i_C(1) * t2 - r_i_i_C(2) * t1 + pkin(3) + pkin(7);
	t7 = t10 * t5 - t11 * t3;
	t6 = cos(qJ(1));
	t4 = sin(qJ(1));
	t13 = [-t12 * t4 + t9 * t6, t7 * t6, t6 * t3, t6 * t5, 0, 0; t12 * t6 + t9 * t4, t7 * t4, t4 * t3, t4 * t5, 0, 0; 0, t8, -t5, t3, 0, 0;];
	Ja_transl = t13;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:34:00
	% EndTime: 2019-10-10 09:34:01
	% DurationCPUTime: 0.15s
	% Computational Cost: add. (79->25), mult. (114->38), div. (0->0), fcn. (128->8), ass. (0->21)
	t11 = sin(qJ(2));
	t13 = cos(qJ(2));
	t19 = pkin(2) + r_i_i_C(3) + pkin(8) + qJ(4);
	t17 = t19 * t13;
	t18 = pkin(4) * sin(pkin(9)) + qJ(3);
	t24 = -t18 * t11 - pkin(1) - t17;
	t22 = pkin(7) + cos(pkin(9)) * pkin(4) + pkin(3);
	t12 = sin(qJ(1));
	t21 = t12 * t11;
	t14 = cos(qJ(1));
	t20 = t14 * t11;
	t8 = pkin(9) + qJ(5);
	t6 = sin(t8);
	t7 = cos(t8);
	t16 = r_i_i_C(1) * t6 + r_i_i_C(2) * t7 + t18;
	t15 = -t19 * t11 + t16 * t13;
	t4 = t14 * t7 - t6 * t21;
	t3 = t14 * t6 + t7 * t21;
	t2 = t12 * t7 + t6 * t20;
	t1 = -t12 * t6 + t7 * t20;
	t5 = [t4 * r_i_i_C(1) - t3 * r_i_i_C(2) + t24 * t12 + t22 * t14, t15 * t14, t20, t14 * t13, r_i_i_C(1) * t1 - r_i_i_C(2) * t2, 0; t2 * r_i_i_C(1) + t1 * r_i_i_C(2) + t22 * t12 - t24 * t14, t15 * t12, t21, t12 * t13, r_i_i_C(1) * t3 + r_i_i_C(2) * t4, 0; 0, t16 * t11 + t17, -t13, t11, (-r_i_i_C(1) * t7 + r_i_i_C(2) * t6) * t13, 0;];
	Ja_transl = t5;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobia_transl_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:34:00
	% EndTime: 2019-10-10 09:34:01
	% DurationCPUTime: 0.17s
	% Computational Cost: add. (134->28), mult. (173->39), div. (0->0), fcn. (200->8), ass. (0->23)
	t12 = sin(qJ(2));
	t14 = cos(qJ(2));
	t20 = pkin(2) + r_i_i_C(2) + pkin(8) + qJ(4);
	t18 = t20 * t14;
	t19 = pkin(4) * sin(pkin(9)) + qJ(3);
	t27 = -t19 * t12 - pkin(1) - t18;
	t25 = pkin(5) + r_i_i_C(1);
	t24 = pkin(7) + cos(pkin(9)) * pkin(4) + pkin(3);
	t13 = sin(qJ(1));
	t23 = t13 * t12;
	t15 = cos(qJ(1));
	t22 = t15 * t12;
	t21 = r_i_i_C(3) + qJ(6);
	t9 = pkin(9) + qJ(5);
	t7 = sin(t9);
	t8 = cos(t9);
	t17 = -t21 * t8 + t25 * t7 + t19;
	t16 = -t20 * t12 + t17 * t14;
	t4 = t15 * t8 - t7 * t23;
	t3 = t15 * t7 + t8 * t23;
	t2 = t13 * t8 + t7 * t22;
	t1 = t13 * t7 - t8 * t22;
	t5 = [t27 * t13 + t24 * t15 + t21 * t3 + t25 * t4, t16 * t15, t22, t15 * t14, -t25 * t1 + t21 * t2, t1; t21 * t1 + t24 * t13 - t27 * t15 + t25 * t2, t16 * t13, t23, t13 * t14, -t21 * t4 + t25 * t3, -t3; 0, t17 * t12 + t18, -t14, t12, (-t21 * t7 - t25 * t8) * t14, t14 * t8;];
	Ja_transl = t5;
else
	Ja_transl=NaN(3,6);
end