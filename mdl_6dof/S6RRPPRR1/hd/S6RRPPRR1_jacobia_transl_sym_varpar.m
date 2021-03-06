% Analytische Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S6RRPPRR1
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d5,d6,theta3]';
% 
% Output:
% Ja_transl [3x6]
%   Translatorischer Teil der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 09:35
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S6RRPPRR1_jacobia_transl_sym_varpar(qJ, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPRR1_jacobia_transl_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RRPPRR1_jacobia_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRPPRR1_jacobia_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPPRR1_jacobia_transl_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:35:45
	% EndTime: 2019-10-10 09:35:45
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:35:45
	% EndTime: 2019-10-10 09:35:45
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
	% StartTime: 2019-10-10 09:35:45
	% EndTime: 2019-10-10 09:35:45
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
	% StartTime: 2019-10-10 09:35:45
	% EndTime: 2019-10-10 09:35:45
	% DurationCPUTime: 0.10s
	% Computational Cost: add. (29->10), mult. (31->12), div. (0->0), fcn. (33->6), ass. (0->10)
	t5 = qJ(2) + pkin(10);
	t2 = sin(t5);
	t3 = cos(t5);
	t14 = t3 * r_i_i_C(1) - t2 * r_i_i_C(2) + cos(qJ(2)) * pkin(2);
	t13 = r_i_i_C(3) + qJ(3) + pkin(7);
	t11 = pkin(1) + t14;
	t10 = -sin(qJ(2)) * pkin(2) - r_i_i_C(1) * t2 - r_i_i_C(2) * t3;
	t9 = cos(qJ(1));
	t8 = sin(qJ(1));
	t1 = [-t11 * t8 + t13 * t9, t10 * t9, t8, 0, 0, 0; t11 * t9 + t13 * t8, t10 * t8, -t9, 0, 0, 0; 0, t14, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:35:45
	% EndTime: 2019-10-10 09:35:45
	% DurationCPUTime: 0.11s
	% Computational Cost: add. (53->13), mult. (51->14), div. (0->0), fcn. (56->6), ass. (0->12)
	t12 = r_i_i_C(3) + qJ(4);
	t14 = pkin(3) + r_i_i_C(1);
	t5 = qJ(2) + pkin(10);
	t2 = sin(t5);
	t3 = cos(t5);
	t16 = cos(qJ(2)) * pkin(2) + t12 * t2 + t14 * t3;
	t15 = pkin(1) + t16;
	t13 = r_i_i_C(2) + qJ(3) + pkin(7);
	t10 = -sin(qJ(2)) * pkin(2) + t12 * t3 - t14 * t2;
	t9 = cos(qJ(1));
	t8 = sin(qJ(1));
	t1 = [t13 * t9 - t15 * t8, t10 * t9, t8, t9 * t2, 0, 0; t13 * t8 + t15 * t9, t10 * t8, -t9, t8 * t2, 0, 0; 0, t16, 0, -t3, 0, 0;];
	Ja_transl = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:35:45
	% EndTime: 2019-10-10 09:35:45
	% DurationCPUTime: 0.15s
	% Computational Cost: add. (106->25), mult. (116->33), div. (0->0), fcn. (137->8), ass. (0->24)
	t12 = qJ(2) + pkin(10);
	t10 = cos(t12);
	t30 = pkin(3) + pkin(4);
	t9 = sin(t12);
	t32 = cos(qJ(2)) * pkin(2) + t9 * qJ(4) + t30 * t10;
	t31 = pkin(1) + t32;
	t18 = cos(qJ(1));
	t29 = t18 * t9;
	t14 = sin(qJ(5));
	t28 = t10 * t14;
	t26 = -pkin(8) - r_i_i_C(3) + qJ(3) + pkin(7);
	t16 = sin(qJ(1));
	t17 = cos(qJ(5));
	t21 = -t17 * t9 + t28;
	t1 = t21 * t16;
	t22 = t10 * t17 + t14 * t9;
	t2 = t22 * t16;
	t25 = -r_i_i_C(1) * t1 - r_i_i_C(2) * t2;
	t3 = -t17 * t29 + t18 * t28;
	t4 = t22 * t18;
	t24 = -t3 * r_i_i_C(1) - t4 * r_i_i_C(2);
	t23 = -r_i_i_C(1) * t22 + r_i_i_C(2) * t21;
	t19 = -sin(qJ(2)) * pkin(2) + qJ(4) * t10 - t30 * t9;
	t5 = [-t2 * r_i_i_C(1) + t1 * r_i_i_C(2) - t31 * t16 + t26 * t18, t19 * t18 - t24, t16, t29, t24, 0; t4 * r_i_i_C(1) - t3 * r_i_i_C(2) + t26 * t16 + t31 * t18, t19 * t16 - t25, -t18, t16 * t9, t25, 0; 0, -t23 + t32, 0, -t10, t23, 0;];
	Ja_transl = t5;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobia_transl_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:35:45
	% EndTime: 2019-10-10 09:35:45
	% DurationCPUTime: 0.21s
	% Computational Cost: add. (229->39), mult. (278->55), div. (0->0), fcn. (337->10), ass. (0->31)
	t18 = qJ(2) + pkin(10);
	t15 = sin(t18);
	t16 = cos(t18);
	t38 = pkin(3) + pkin(4);
	t43 = cos(qJ(2)) * pkin(2) + t15 * qJ(4) + t38 * t16;
	t42 = pkin(1) + t43;
	t34 = sin(qJ(5));
	t35 = cos(qJ(5));
	t8 = t15 * t35 - t16 * t34;
	t20 = sin(qJ(6));
	t23 = cos(qJ(6));
	t27 = t23 * r_i_i_C(1) - t20 * r_i_i_C(2) + pkin(5);
	t22 = sin(qJ(1));
	t3 = t8 * t22;
	t37 = -r_i_i_C(3) - pkin(9);
	t7 = t15 * t34 + t16 * t35;
	t4 = t7 * t22;
	t41 = t27 * t3 - t37 * t4;
	t24 = cos(qJ(1));
	t29 = t24 * t34;
	t30 = t24 * t35;
	t5 = -t15 * t29 - t16 * t30;
	t6 = -t15 * t30 + t16 * t29;
	t40 = -t27 * t6 + t37 * t5;
	t39 = -t27 * t7 - t37 * t8;
	t36 = -pkin(8) + qJ(3) + pkin(7);
	t28 = -t20 * r_i_i_C(1) - t23 * r_i_i_C(2);
	t25 = -sin(qJ(2)) * pkin(2) + qJ(4) * t16 - t38 * t15;
	t2 = -t22 * t20 - t5 * t23;
	t1 = t5 * t20 - t22 * t23;
	t9 = [-t37 * t3 - t27 * t4 + (t28 + t36) * t24 - t42 * t22, t25 * t24 - t40, t22, t24 * t15, t40, t1 * r_i_i_C(1) - t2 * r_i_i_C(2); -t5 * pkin(5) + t2 * r_i_i_C(1) + t1 * r_i_i_C(2) + t36 * t22 + t42 * t24 - t37 * t6, t25 * t22 - t41, -t24, t22 * t15, t41, (-t4 * t20 + t24 * t23) * r_i_i_C(1) + (-t24 * t20 - t4 * t23) * r_i_i_C(2); 0, -t39 + t43, 0, -t16, t39, t28 * t8;];
	Ja_transl = t9;
else
	Ja_transl=NaN(3,6);
end