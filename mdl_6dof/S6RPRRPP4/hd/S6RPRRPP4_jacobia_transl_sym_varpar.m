% Analytische Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S6RPRRPP4
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
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,theta2,theta5]';
% 
% Output:
% Ja_transl [3x6]
%   Translatorischer Teil der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 01:14
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S6RPRRPP4_jacobia_transl_sym_varpar(qJ, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPP4_jacobia_transl_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RPRRPP4_jacobia_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RPRRPP4_jacobia_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRPP4_jacobia_transl_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:14:55
	% EndTime: 2019-10-10 01:14:55
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:14:55
	% EndTime: 2019-10-10 01:14:55
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
	% StartTime: 2019-10-10 01:14:55
	% EndTime: 2019-10-10 01:14:55
	% DurationCPUTime: 0.09s
	% Computational Cost: add. (9->6), mult. (14->6), div. (0->0), fcn. (16->4), ass. (0->5)
	t6 = r_i_i_C(3) + qJ(2);
	t5 = r_i_i_C(1) * cos(pkin(9)) - r_i_i_C(2) * sin(pkin(9)) + pkin(1);
	t4 = cos(qJ(1));
	t3 = sin(qJ(1));
	t1 = [-t5 * t3 + t6 * t4, t3, 0, 0, 0, 0; t6 * t3 + t5 * t4, -t4, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:14:55
	% EndTime: 2019-10-10 01:14:55
	% DurationCPUTime: 0.09s
	% Computational Cost: add. (26->9), mult. (26->11), div. (0->0), fcn. (28->5), ass. (0->10)
	t11 = r_i_i_C(3) + pkin(7) + qJ(2);
	t4 = pkin(9) + qJ(3);
	t2 = sin(t4);
	t3 = cos(t4);
	t10 = t3 * r_i_i_C(1) - t2 * r_i_i_C(2);
	t9 = -r_i_i_C(1) * t2 - r_i_i_C(2) * t3;
	t8 = cos(pkin(9)) * pkin(2) + pkin(1) + t10;
	t7 = cos(qJ(1));
	t6 = sin(qJ(1));
	t1 = [t11 * t7 - t8 * t6, t6, t9 * t7, 0, 0, 0; t11 * t6 + t8 * t7, -t7, t9 * t6, 0, 0, 0; 0, 0, t10, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:14:55
	% EndTime: 2019-10-10 01:14:55
	% DurationCPUTime: 0.14s
	% Computational Cost: add. (71->24), mult. (85->33), div. (0->0), fcn. (95->7), ass. (0->22)
	t22 = pkin(8) + r_i_i_C(3);
	t8 = pkin(9) + qJ(3);
	t6 = sin(t8);
	t17 = t22 * t6;
	t7 = cos(t8);
	t23 = t17 + t7 * pkin(3) + cos(pkin(9)) * pkin(2) + pkin(1);
	t10 = sin(qJ(4));
	t13 = cos(qJ(1));
	t21 = t10 * t13;
	t11 = sin(qJ(1));
	t20 = t11 * t10;
	t12 = cos(qJ(4));
	t19 = t11 * t12;
	t18 = t12 * t13;
	t15 = r_i_i_C(1) * t12 - r_i_i_C(2) * t10 + pkin(3);
	t14 = -t15 * t6 + t22 * t7;
	t9 = -pkin(7) - qJ(2);
	t4 = t7 * t18 + t20;
	t3 = -t7 * t21 + t19;
	t2 = -t7 * t19 + t21;
	t1 = t7 * t20 + t18;
	t5 = [t2 * r_i_i_C(1) + t1 * r_i_i_C(2) - t23 * t11 - t13 * t9, t11, t14 * t13, r_i_i_C(1) * t3 - r_i_i_C(2) * t4, 0, 0; t4 * r_i_i_C(1) + t3 * r_i_i_C(2) - t11 * t9 + t23 * t13, -t13, t14 * t11, -r_i_i_C(1) * t1 + r_i_i_C(2) * t2, 0, 0; 0, 0, t15 * t7 + t17, (-r_i_i_C(1) * t10 - r_i_i_C(2) * t12) * t6, 0, 0;];
	Ja_transl = t5;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:14:55
	% EndTime: 2019-10-10 01:14:55
	% DurationCPUTime: 0.16s
	% Computational Cost: add. (119->32), mult. (108->45), div. (0->0), fcn. (121->9), ass. (0->27)
	t26 = r_i_i_C(3) + qJ(5) + pkin(8);
	t11 = pkin(9) + qJ(3);
	t7 = sin(t11);
	t22 = t26 * t7;
	t17 = cos(qJ(4));
	t6 = pkin(4) * t17 + pkin(3);
	t9 = cos(t11);
	t30 = t22 + t6 * t9 + cos(pkin(9)) * pkin(2) + pkin(1);
	t15 = sin(qJ(4));
	t29 = pkin(4) * t15;
	t16 = sin(qJ(1));
	t28 = t16 * t9;
	t18 = cos(qJ(1));
	t27 = t18 * t9;
	t12 = qJ(4) + pkin(10);
	t10 = cos(t12);
	t25 = t10 * t18;
	t24 = t16 * t10;
	t21 = pkin(7) + qJ(2) + t29;
	t8 = sin(t12);
	t20 = r_i_i_C(1) * t10 - r_i_i_C(2) * t8 + t6;
	t19 = -t20 * t7 + t26 * t9;
	t4 = t16 * t8 + t9 * t25;
	t3 = -t8 * t27 + t24;
	t2 = t18 * t8 - t9 * t24;
	t1 = t8 * t28 + t25;
	t5 = [t2 * r_i_i_C(1) + t1 * r_i_i_C(2) - t30 * t16 + t21 * t18, t16, t19 * t18, t3 * r_i_i_C(1) - t4 * r_i_i_C(2) + (-t15 * t27 + t16 * t17) * pkin(4), t18 * t7, 0; t4 * r_i_i_C(1) + t3 * r_i_i_C(2) + t21 * t16 + t30 * t18, -t18, t19 * t16, -t1 * r_i_i_C(1) + t2 * r_i_i_C(2) + (-t15 * t28 - t17 * t18) * pkin(4), t16 * t7, 0; 0, 0, t20 * t9 + t22, (-r_i_i_C(1) * t8 - r_i_i_C(2) * t10 - t29) * t7, -t9, 0;];
	Ja_transl = t5;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobia_transl_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:14:55
	% EndTime: 2019-10-10 01:14:55
	% DurationCPUTime: 0.18s
	% Computational Cost: add. (193->34), mult. (167->45), div. (0->0), fcn. (193->9), ass. (0->30)
	t13 = pkin(9) + qJ(3);
	t11 = cos(t13);
	t31 = r_i_i_C(2) + qJ(5) + pkin(8);
	t9 = sin(t13);
	t24 = t31 * t9;
	t19 = cos(qJ(4));
	t8 = t19 * pkin(4) + pkin(3);
	t35 = t24 + t11 * t8 + cos(pkin(9)) * pkin(2) + pkin(1);
	t14 = qJ(4) + pkin(10);
	t10 = sin(t14);
	t12 = cos(t14);
	t25 = r_i_i_C(3) + qJ(6);
	t33 = pkin(5) + r_i_i_C(1);
	t34 = t25 * t10 + t33 * t12 + t8;
	t17 = sin(qJ(4));
	t32 = pkin(4) * t17;
	t30 = t11 * t17;
	t18 = sin(qJ(1));
	t29 = t18 * t10;
	t28 = t18 * t12;
	t20 = cos(qJ(1));
	t27 = t20 * t10;
	t26 = t20 * t12;
	t22 = pkin(7) + qJ(2) + t32;
	t21 = t31 * t11 - t34 * t9;
	t4 = t11 * t26 + t29;
	t3 = t11 * t27 - t28;
	t2 = t11 * t28 - t27;
	t1 = t11 * t29 + t26;
	t5 = [-t25 * t1 - t35 * t18 - t33 * t2 + t22 * t20, t18, t21 * t20, t25 * t4 - t33 * t3 + (t18 * t19 - t20 * t30) * pkin(4), t20 * t9, t3; t22 * t18 + t35 * t20 + t25 * t3 + t33 * t4, -t20, t21 * t18, t25 * t2 - t33 * t1 + (-t18 * t30 - t19 * t20) * pkin(4), t18 * t9, t1; 0, 0, t34 * t11 + t24, (-t33 * t10 + t25 * t12 - t32) * t9, -t11, t9 * t10;];
	Ja_transl = t5;
else
	Ja_transl=NaN(3,6);
end