% Analytische Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S6RPRRPP6
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
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,theta5]';
% 
% Output:
% Ja_transl [3x6]
%   Translatorischer Teil der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 01:18
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S6RPRRPP6_jacobia_transl_sym_varpar(qJ, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPP6_jacobia_transl_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RPRRPP6_jacobia_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RPRRPP6_jacobia_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPRRPP6_jacobia_transl_sym_varpar: pkin has to be [9x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:18:23
	% EndTime: 2019-10-10 01:18:23
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:18:23
	% EndTime: 2019-10-10 01:18:23
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
	% StartTime: 2019-10-10 01:18:23
	% EndTime: 2019-10-10 01:18:23
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
	% StartTime: 2019-10-10 01:18:23
	% EndTime: 2019-10-10 01:18:23
	% DurationCPUTime: 0.08s
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
	% StartTime: 2019-10-10 01:18:23
	% EndTime: 2019-10-10 01:18:23
	% DurationCPUTime: 0.16s
	% Computational Cost: add. (38->23), mult. (85->32), div. (0->0), fcn. (95->6), ass. (0->21)
	t15 = pkin(8) + r_i_i_C(3);
	t9 = cos(qJ(3));
	t20 = t15 * t9;
	t5 = sin(qJ(4));
	t8 = cos(qJ(4));
	t12 = r_i_i_C(1) * t8 - r_i_i_C(2) * t5 + pkin(3);
	t6 = sin(qJ(3));
	t19 = t12 * t9 + t15 * t6;
	t7 = sin(qJ(1));
	t18 = t7 * t5;
	t17 = t7 * t8;
	t16 = pkin(1) + pkin(7);
	t10 = cos(qJ(1));
	t14 = t10 * t5;
	t13 = t10 * t8;
	t11 = t6 * pkin(3) + qJ(2) - t20;
	t4 = t6 * t13 - t18;
	t3 = t6 * t14 + t17;
	t2 = t6 * t17 + t14;
	t1 = -t6 * t18 + t13;
	t21 = [t4 * r_i_i_C(1) - t3 * r_i_i_C(2) + t11 * t10 - t16 * t7, t7, t19 * t7, r_i_i_C(1) * t1 - r_i_i_C(2) * t2, 0, 0; t2 * r_i_i_C(1) + t1 * r_i_i_C(2) + t16 * t10 + t11 * t7, -t10, -t19 * t10, r_i_i_C(1) * t3 + r_i_i_C(2) * t4, 0, 0; 0, 0, -t12 * t6 + t20, (-r_i_i_C(1) * t5 - r_i_i_C(2) * t8) * t9, 0, 0;];
	Ja_transl = t21;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:18:23
	% EndTime: 2019-10-10 01:18:23
	% DurationCPUTime: 0.14s
	% Computational Cost: add. (80->31), mult. (108->44), div. (0->0), fcn. (121->8), ass. (0->24)
	t14 = cos(qJ(3));
	t22 = r_i_i_C(3) + qJ(5) + pkin(8);
	t24 = t22 * t14;
	t11 = sin(qJ(3));
	t13 = cos(qJ(4));
	t5 = pkin(4) * t13 + pkin(3);
	t8 = qJ(4) + pkin(9);
	t6 = sin(t8);
	t7 = cos(t8);
	t17 = r_i_i_C(1) * t7 - r_i_i_C(2) * t6 + t5;
	t23 = t22 * t11 + t17 * t14;
	t10 = sin(qJ(4));
	t21 = pkin(4) * t10;
	t12 = sin(qJ(1));
	t20 = t11 * t12;
	t15 = cos(qJ(1));
	t19 = t11 * t15;
	t18 = pkin(1) + pkin(7) + t21;
	t16 = t11 * t5 + qJ(2) - t24;
	t4 = -t12 * t6 + t7 * t19;
	t3 = t12 * t7 + t6 * t19;
	t2 = t15 * t6 + t7 * t20;
	t1 = t15 * t7 - t6 * t20;
	t9 = [t4 * r_i_i_C(1) - t3 * r_i_i_C(2) - t18 * t12 + t16 * t15, t12, t23 * t12, t1 * r_i_i_C(1) - t2 * r_i_i_C(2) + (-t10 * t20 + t13 * t15) * pkin(4), -t12 * t14, 0; t2 * r_i_i_C(1) + t1 * r_i_i_C(2) + t16 * t12 + t18 * t15, -t15, -t23 * t15, t3 * r_i_i_C(1) + t4 * r_i_i_C(2) + (t10 * t19 + t12 * t13) * pkin(4), t15 * t14, 0; 0, 0, -t17 * t11 + t24, (-r_i_i_C(1) * t6 - r_i_i_C(2) * t7 - t21) * t14, t11, 0;];
	Ja_transl = t9;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobia_transl_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:18:23
	% EndTime: 2019-10-10 01:18:23
	% DurationCPUTime: 0.18s
	% Computational Cost: add. (135->34), mult. (167->45), div. (0->0), fcn. (193->8), ass. (0->26)
	t12 = sin(qJ(3));
	t15 = cos(qJ(3));
	t23 = r_i_i_C(2) + qJ(5) + pkin(8);
	t20 = r_i_i_C(3) + qJ(6);
	t25 = pkin(5) + r_i_i_C(1);
	t14 = cos(qJ(4));
	t6 = t14 * pkin(4) + pkin(3);
	t9 = qJ(4) + pkin(9);
	t7 = sin(t9);
	t8 = cos(t9);
	t26 = t20 * t7 + t25 * t8 + t6;
	t29 = t23 * t12 + t26 * t15;
	t27 = t23 * t15;
	t11 = sin(qJ(4));
	t24 = pkin(4) * t11;
	t13 = sin(qJ(1));
	t22 = t12 * t13;
	t16 = cos(qJ(1));
	t21 = t12 * t16;
	t19 = pkin(1) + pkin(7) + t24;
	t18 = t12 * t6 + qJ(2) - t27;
	t4 = -t13 * t7 + t8 * t21;
	t3 = t13 * t8 + t7 * t21;
	t2 = t16 * t7 + t8 * t22;
	t1 = -t16 * t8 + t7 * t22;
	t5 = [-t19 * t13 + t18 * t16 + t20 * t3 + t25 * t4, t13, t29 * t13, t20 * t2 - t25 * t1 + (-t11 * t22 + t14 * t16) * pkin(4), -t13 * t15, t1; t20 * t1 + t18 * t13 + t19 * t16 + t25 * t2, -t16, -t29 * t16, -t20 * t4 + t25 * t3 + (t11 * t21 + t13 * t14) * pkin(4), t16 * t15, -t3; 0, 0, -t12 * t26 + t27, (t20 * t8 - t25 * t7 - t24) * t15, t12, t15 * t7;];
	Ja_transl = t5;
else
	Ja_transl=NaN(3,6);
end