% Analytische Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S6RPRRPR2
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
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d6,theta2,theta5]';
% 
% Output:
% Ja_transl [3x6]
%   Translatorischer Teil der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 01:25
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S6RPRRPR2_jacobia_transl_sym_varpar(qJ, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPR2_jacobia_transl_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RPRRPR2_jacobia_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RPRRPR2_jacobia_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RPRRPR2_jacobia_transl_sym_varpar: pkin has to be [11x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:25:14
	% EndTime: 2019-10-10 01:25:14
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:25:14
	% EndTime: 2019-10-10 01:25:14
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
	% StartTime: 2019-10-10 01:25:14
	% EndTime: 2019-10-10 01:25:14
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (8->5), mult. (6->6), div. (0->0), fcn. (6->4), ass. (0->4)
	t3 = qJ(1) + pkin(10);
	t2 = cos(t3);
	t1 = sin(t3);
	t4 = [-t1 * r_i_i_C(1) - t2 * r_i_i_C(2) - sin(qJ(1)) * pkin(1), 0, 0, 0, 0, 0; t2 * r_i_i_C(1) - t1 * r_i_i_C(2) + cos(qJ(1)) * pkin(1), 0, 0, 0, 0, 0; 0, 1, 0, 0, 0, 0;];
	Ja_transl = t4;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:25:14
	% EndTime: 2019-10-10 01:25:14
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (27->9), mult. (26->12), div. (0->0), fcn. (26->6), ass. (0->10)
	t9 = pkin(7) + r_i_i_C(3);
	t4 = sin(qJ(3));
	t5 = cos(qJ(3));
	t8 = t5 * r_i_i_C(1) - t4 * r_i_i_C(2);
	t7 = -r_i_i_C(1) * t4 - r_i_i_C(2) * t5;
	t6 = pkin(2) + t8;
	t3 = qJ(1) + pkin(10);
	t2 = cos(t3);
	t1 = sin(t3);
	t10 = [-sin(qJ(1)) * pkin(1) + t9 * t2 - t6 * t1, 0, t7 * t2, 0, 0, 0; cos(qJ(1)) * pkin(1) + t9 * t1 + t6 * t2, 0, t7 * t1, 0, 0, 0; 0, 1, t8, 0, 0, 0;];
	Ja_transl = t10;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:25:14
	% EndTime: 2019-10-10 01:25:14
	% DurationCPUTime: 0.14s
	% Computational Cost: add. (73->23), mult. (85->36), div. (0->0), fcn. (93->8), ass. (0->19)
	t11 = cos(qJ(3));
	t18 = pkin(8) + r_i_i_C(3);
	t9 = sin(qJ(3));
	t15 = t18 * t9;
	t19 = t11 * pkin(3) + pkin(2) + t15;
	t8 = sin(qJ(4));
	t17 = t11 * t8;
	t10 = cos(qJ(4));
	t16 = t10 * t11;
	t13 = r_i_i_C(1) * t10 - r_i_i_C(2) * t8 + pkin(3);
	t12 = t18 * t11 - t13 * t9;
	t7 = qJ(1) + pkin(10);
	t6 = cos(t7);
	t5 = sin(t7);
	t4 = t6 * t16 + t5 * t8;
	t3 = t5 * t10 - t6 * t17;
	t2 = -t5 * t16 + t6 * t8;
	t1 = t6 * t10 + t5 * t17;
	t14 = [-sin(qJ(1)) * pkin(1) + t6 * pkin(7) + t2 * r_i_i_C(1) + t1 * r_i_i_C(2) - t19 * t5, 0, t12 * t6, r_i_i_C(1) * t3 - r_i_i_C(2) * t4, 0, 0; cos(qJ(1)) * pkin(1) + t5 * pkin(7) + t4 * r_i_i_C(1) + t3 * r_i_i_C(2) + t19 * t6, 0, t12 * t5, -r_i_i_C(1) * t1 + r_i_i_C(2) * t2, 0, 0; 0, 1, t13 * t11 + t15, (-r_i_i_C(1) * t8 - r_i_i_C(2) * t10) * t9, 0, 0;];
	Ja_transl = t14;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:25:14
	% EndTime: 2019-10-10 01:25:14
	% DurationCPUTime: 0.16s
	% Computational Cost: add. (123->32), mult. (108->47), div. (0->0), fcn. (119->10), ass. (0->26)
	t16 = cos(qJ(3));
	t14 = sin(qJ(3));
	t23 = r_i_i_C(3) + qJ(5) + pkin(8);
	t19 = t23 * t14;
	t15 = cos(qJ(4));
	t5 = pkin(4) * t15 + pkin(3);
	t27 = t16 * t5 + pkin(2) + t19;
	t13 = sin(qJ(4));
	t26 = pkin(4) * t13;
	t11 = qJ(1) + pkin(10);
	t7 = sin(t11);
	t25 = t16 * t7;
	t9 = cos(t11);
	t24 = t16 * t9;
	t22 = t13 * t16;
	t20 = pkin(7) + t26;
	t10 = qJ(4) + pkin(11);
	t6 = sin(t10);
	t8 = cos(t10);
	t18 = r_i_i_C(1) * t8 - r_i_i_C(2) * t6 + t5;
	t17 = -t18 * t14 + t23 * t16;
	t4 = t8 * t24 + t7 * t6;
	t3 = -t6 * t24 + t7 * t8;
	t2 = -t8 * t25 + t9 * t6;
	t1 = t6 * t25 + t9 * t8;
	t12 = [-sin(qJ(1)) * pkin(1) + t2 * r_i_i_C(1) + t1 * r_i_i_C(2) + t20 * t9 - t27 * t7, 0, t17 * t9, t3 * r_i_i_C(1) - t4 * r_i_i_C(2) + (t15 * t7 - t9 * t22) * pkin(4), t9 * t14, 0; cos(qJ(1)) * pkin(1) + t4 * r_i_i_C(1) + t3 * r_i_i_C(2) + t20 * t7 + t27 * t9, 0, t17 * t7, -t1 * r_i_i_C(1) + t2 * r_i_i_C(2) + (-t15 * t9 - t7 * t22) * pkin(4), t7 * t14, 0; 0, 1, t18 * t16 + t19, (-r_i_i_C(1) * t6 - r_i_i_C(2) * t8 - t26) * t14, -t16, 0;];
	Ja_transl = t12;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobia_transl_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:25:14
	% EndTime: 2019-10-10 01:25:14
	% DurationCPUTime: 0.17s
	% Computational Cost: add. (211->35), mult. (140->47), div. (0->0), fcn. (155->12), ass. (0->28)
	t23 = cos(qJ(3));
	t22 = sin(qJ(3));
	t31 = r_i_i_C(3) + pkin(9) + qJ(5) + pkin(8);
	t27 = t31 * t22;
	t20 = qJ(4) + pkin(11);
	t11 = pkin(5) * cos(t20) + cos(qJ(4)) * pkin(4);
	t9 = pkin(3) + t11;
	t35 = t23 * t9 + pkin(2) + t27;
	t17 = qJ(6) + t20;
	t13 = sin(t17);
	t14 = cos(t17);
	t21 = qJ(1) + pkin(10);
	t16 = cos(t21);
	t15 = sin(t21);
	t30 = t15 * t23;
	t5 = t13 * t30 + t16 * t14;
	t6 = t16 * t13 - t14 * t30;
	t34 = -t5 * r_i_i_C(1) + t6 * r_i_i_C(2);
	t29 = t16 * t23;
	t7 = -t13 * t29 + t15 * t14;
	t8 = t15 * t13 + t14 * t29;
	t33 = t7 * r_i_i_C(1) - t8 * r_i_i_C(2);
	t10 = pkin(5) * sin(t20) + sin(qJ(4)) * pkin(4);
	t32 = pkin(7) + t10;
	t26 = -r_i_i_C(1) * t13 - r_i_i_C(2) * t14;
	t25 = r_i_i_C(1) * t14 - r_i_i_C(2) * t13 + t9;
	t24 = -t25 * t22 + t31 * t23;
	t1 = [-sin(qJ(1)) * pkin(1) + t6 * r_i_i_C(1) + t5 * r_i_i_C(2) + t32 * t16 - t35 * t15, 0, t24 * t16, -t10 * t29 + t15 * t11 + t33, t16 * t22, t33; cos(qJ(1)) * pkin(1) + t8 * r_i_i_C(1) + t7 * r_i_i_C(2) + t32 * t15 + t35 * t16, 0, t24 * t15, -t10 * t30 - t16 * t11 + t34, t15 * t22, t34; 0, 1, t25 * t23 + t27, (-t10 + t26) * t22, -t23, t26 * t22;];
	Ja_transl = t1;
else
	Ja_transl=NaN(3,6);
end