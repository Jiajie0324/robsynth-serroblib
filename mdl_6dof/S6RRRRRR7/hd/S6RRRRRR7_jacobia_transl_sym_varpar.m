% Analytische Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S6RRRRRR7
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
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,d5,d6]';
% 
% Output:
% Ja_transl [3x6]
%   Translatorischer Teil der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 13:27
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S6RRRRRR7_jacobia_transl_sym_varpar(qJ, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(3,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRR7_jacobia_transl_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RRRRRR7_jacobia_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRRRRR7_jacobia_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRRRR7_jacobia_transl_sym_varpar: pkin has to be [12x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:27:07
	% EndTime: 2019-10-10 13:27:07
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:27:07
	% EndTime: 2019-10-10 13:27:07
	% DurationCPUTime: 0.10s
	% Computational Cost: add. (2->2), mult. (4->4), div. (0->0), fcn. (4->2), ass. (0->3)
	t2 = cos(qJ(1));
	t1 = sin(qJ(1));
	t3 = [-r_i_i_C(1) * t1 - r_i_i_C(2) * t2, 0, 0, 0, 0, 0; r_i_i_C(1) * t2 - r_i_i_C(2) * t1, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_transl = t3;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_transl_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:27:07
	% EndTime: 2019-10-10 13:27:07
	% DurationCPUTime: 0.12s
	% Computational Cost: add. (19->14), mult. (46->24), div. (0->0), fcn. (54->6), ass. (0->16)
	t7 = sin(qJ(2));
	t8 = sin(qJ(1));
	t15 = t8 * t7;
	t9 = cos(qJ(2));
	t14 = t8 * t9;
	t10 = cos(qJ(1));
	t13 = t10 * t7;
	t12 = t10 * t9;
	t5 = sin(pkin(6));
	t11 = (pkin(8) + r_i_i_C(3)) * t5;
	t6 = cos(pkin(6));
	t4 = -t6 * t15 + t12;
	t3 = -t6 * t14 - t13;
	t2 = -t6 * t13 - t14;
	t1 = -t6 * t12 + t15;
	t16 = [-t8 * pkin(1) + t2 * r_i_i_C(1) + t1 * r_i_i_C(2) + t10 * t11, t3 * r_i_i_C(1) - t4 * r_i_i_C(2), 0, 0, 0, 0; t10 * pkin(1) + t4 * r_i_i_C(1) + t3 * r_i_i_C(2) + t11 * t8, -t1 * r_i_i_C(1) + t2 * r_i_i_C(2), 0, 0, 0, 0; 0, (r_i_i_C(1) * t9 - r_i_i_C(2) * t7) * t5, 0, 0, 0, 0;];
	Ja_transl = t16;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:27:07
	% EndTime: 2019-10-10 13:27:07
	% DurationCPUTime: 0.18s
	% Computational Cost: add. (61->29), mult. (150->51), div. (0->0), fcn. (184->8), ass. (0->26)
	t27 = -r_i_i_C(3) - pkin(9);
	t13 = sin(qJ(1));
	t9 = sin(pkin(6));
	t26 = t13 * t9;
	t14 = cos(qJ(3));
	t25 = t14 * t9;
	t16 = cos(qJ(1));
	t24 = t16 * t9;
	t12 = sin(qJ(2));
	t23 = t12 * t13;
	t22 = t12 * t16;
	t15 = cos(qJ(2));
	t21 = t13 * t15;
	t20 = t15 * t16;
	t11 = sin(qJ(3));
	t10 = cos(pkin(6));
	t4 = t10 * t22 + t21;
	t19 = t11 * t24 - t14 * t4;
	t18 = t14 * r_i_i_C(1) - t11 * r_i_i_C(2) + pkin(2);
	t17 = t4 * t11 + t14 * t24;
	t6 = -t10 * t23 + t20;
	t5 = t10 * t21 + t22;
	t3 = -t10 * t20 + t23;
	t2 = t11 * t26 + t14 * t6;
	t1 = -t11 * t6 + t13 * t25;
	t7 = [-t13 * pkin(1) - t4 * pkin(2) + pkin(8) * t24 + t19 * r_i_i_C(1) + t17 * r_i_i_C(2) + t27 * t3, -t18 * t5 - t27 * t6, r_i_i_C(1) * t1 - r_i_i_C(2) * t2, 0, 0, 0; pkin(1) * t16 + t6 * pkin(2) + pkin(8) * t26 + t2 * r_i_i_C(1) + t1 * r_i_i_C(2) - t27 * t5, -t18 * t3 - t27 * t4, -t17 * r_i_i_C(1) + t19 * r_i_i_C(2), 0, 0, 0; 0, (-t27 * t12 + t18 * t15) * t9, (-t11 * t12 * t9 + t10 * t14) * r_i_i_C(1) + (-t10 * t11 - t12 * t25) * r_i_i_C(2), 0, 0, 0;];
	Ja_transl = t7;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:27:07
	% EndTime: 2019-10-10 13:27:07
	% DurationCPUTime: 0.28s
	% Computational Cost: add. (150->46), mult. (381->80), div. (0->0), fcn. (482->10), ass. (0->34)
	t21 = sin(qJ(2));
	t22 = sin(qJ(1));
	t25 = cos(qJ(2));
	t26 = cos(qJ(1));
	t33 = cos(pkin(6));
	t31 = t26 * t33;
	t11 = t22 * t21 - t25 * t31;
	t19 = sin(qJ(4));
	t23 = cos(qJ(4));
	t12 = t21 * t31 + t22 * t25;
	t20 = sin(qJ(3));
	t24 = cos(qJ(3));
	t18 = sin(pkin(6));
	t34 = t18 * t26;
	t4 = t12 * t24 - t20 * t34;
	t43 = -t11 * t23 + t4 * t19;
	t42 = -t11 * t19 - t4 * t23;
	t30 = t23 * r_i_i_C(1) - t19 * r_i_i_C(2) + pkin(3);
	t40 = pkin(10) + r_i_i_C(3);
	t41 = t40 * t20 + t30 * t24 + pkin(2);
	t37 = t18 * t22;
	t36 = t18 * t24;
	t35 = t18 * t25;
	t32 = t22 * t33;
	t29 = t19 * r_i_i_C(1) + t23 * r_i_i_C(2) + pkin(9);
	t28 = -t12 * t20 - t24 * t34;
	t14 = -t21 * t32 + t26 * t25;
	t13 = t26 * t21 + t25 * t32;
	t10 = t33 * t20 + t21 * t36;
	t8 = t14 * t24 + t20 * t37;
	t7 = t14 * t20 - t22 * t36;
	t2 = t13 * t19 + t8 * t23;
	t1 = t13 * t23 - t8 * t19;
	t3 = [-t22 * pkin(1) - t12 * pkin(2) - t4 * pkin(3) + pkin(8) * t34 - t11 * pkin(9) + t42 * r_i_i_C(1) + t43 * r_i_i_C(2) + t40 * t28, -t13 * t41 + t29 * t14, -t30 * t7 + t40 * t8, t1 * r_i_i_C(1) - t2 * r_i_i_C(2), 0, 0; t26 * pkin(1) + t14 * pkin(2) + t8 * pkin(3) + pkin(8) * t37 + t13 * pkin(9) + t2 * r_i_i_C(1) + t1 * r_i_i_C(2) + t40 * t7, -t11 * t41 + t29 * t12, t30 * t28 + t40 * t4, -t43 * r_i_i_C(1) + t42 * r_i_i_C(2), 0, 0; 0, (t29 * t21 + t41 * t25) * t18, t40 * t10 + t30 * (-t18 * t21 * t20 + t33 * t24), (-t10 * t19 - t23 * t35) * r_i_i_C(1) + (-t10 * t23 + t19 * t35) * r_i_i_C(2), 0, 0;];
	Ja_transl = t3;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:27:07
	% EndTime: 2019-10-10 13:27:07
	% DurationCPUTime: 0.29s
	% Computational Cost: add. (261->53), mult. (508->89), div. (0->0), fcn. (640->12), ass. (0->40)
	t30 = sin(qJ(3));
	t34 = cos(qJ(3));
	t33 = cos(qJ(4));
	t24 = pkin(4) * t33 + pkin(3);
	t27 = qJ(4) + qJ(5);
	t25 = sin(t27);
	t26 = cos(t27);
	t40 = r_i_i_C(1) * t26 - r_i_i_C(2) * t25 + t24;
	t50 = r_i_i_C(3) + pkin(11) + pkin(10);
	t54 = t50 * t30 + t40 * t34 + pkin(2);
	t31 = sin(qJ(2));
	t32 = sin(qJ(1));
	t35 = cos(qJ(2));
	t45 = cos(pkin(6));
	t49 = cos(qJ(1));
	t41 = t45 * t49;
	t18 = t31 * t41 + t32 * t35;
	t28 = sin(pkin(6));
	t43 = t28 * t49;
	t10 = t18 * t34 - t30 * t43;
	t17 = t32 * t31 - t35 * t41;
	t53 = (-t10 * t25 + t17 * t26) * r_i_i_C(1) + (-t10 * t26 - t17 * t25) * r_i_i_C(2);
	t42 = t32 * t45;
	t20 = -t31 * t42 + t49 * t35;
	t48 = t28 * t32;
	t14 = t20 * t34 + t30 * t48;
	t19 = t49 * t31 + t35 * t42;
	t5 = -t14 * t25 + t19 * t26;
	t6 = t14 * t26 + t19 * t25;
	t52 = t5 * r_i_i_C(1) - t6 * r_i_i_C(2);
	t47 = t28 * t34;
	t16 = t45 * t30 + t31 * t47;
	t46 = t28 * t35;
	t51 = (-t16 * t25 - t26 * t46) * r_i_i_C(1) + (-t16 * t26 + t25 * t46) * r_i_i_C(2);
	t29 = sin(qJ(4));
	t44 = pkin(4) * t29 + pkin(9);
	t39 = -t18 * t30 - t34 * t43;
	t38 = r_i_i_C(1) * t25 + r_i_i_C(2) * t26 + t44;
	t13 = t20 * t30 - t32 * t47;
	t1 = [-t32 * pkin(1) - t18 * pkin(2) + pkin(8) * t43 - t40 * t10 - t38 * t17 + t50 * t39, -t19 * t54 + t38 * t20, -t40 * t13 + t50 * t14, (-t14 * t29 + t19 * t33) * pkin(4) + t52, t52, 0; t49 * pkin(1) + t20 * pkin(2) + pkin(8) * t48 + t6 * r_i_i_C(1) + t5 * r_i_i_C(2) + t50 * t13 + t14 * t24 + t44 * t19, -t17 * t54 + t38 * t18, t50 * t10 + t40 * t39, (-t10 * t29 + t17 * t33) * pkin(4) + t53, t53, 0; 0, (t38 * t31 + t54 * t35) * t28, t50 * t16 + t40 * (-t28 * t31 * t30 + t45 * t34), (-t16 * t29 - t33 * t46) * pkin(4) + t51, t51, 0;];
	Ja_transl = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobia_transl_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:27:07
	% EndTime: 2019-10-10 13:27:07
	% DurationCPUTime: 0.33s
	% Computational Cost: add. (423->62), mult. (623->97), div. (0->0), fcn. (782->14), ass. (0->43)
	t37 = sin(qJ(3));
	t40 = cos(qJ(3));
	t35 = qJ(4) + qJ(5);
	t31 = cos(t35);
	t23 = pkin(5) * t31 + cos(qJ(4)) * pkin(4);
	t21 = pkin(3) + t23;
	t32 = qJ(6) + t35;
	t28 = sin(t32);
	t29 = cos(t32);
	t45 = r_i_i_C(1) * t29 - r_i_i_C(2) * t28 + t21;
	t54 = r_i_i_C(3) + pkin(12) + pkin(11) + pkin(10);
	t59 = t54 * t37 + t45 * t40 + pkin(2);
	t38 = sin(qJ(2));
	t39 = sin(qJ(1));
	t41 = cos(qJ(2));
	t49 = cos(pkin(6));
	t53 = cos(qJ(1));
	t46 = t49 * t53;
	t18 = t38 * t46 + t39 * t41;
	t36 = sin(pkin(6));
	t48 = t36 * t53;
	t10 = t18 * t40 - t37 * t48;
	t17 = t39 * t38 - t41 * t46;
	t58 = (-t10 * t28 + t17 * t29) * r_i_i_C(1) + (-t10 * t29 - t17 * t28) * r_i_i_C(2);
	t47 = t39 * t49;
	t20 = -t38 * t47 + t53 * t41;
	t52 = t36 * t39;
	t14 = t20 * t40 + t37 * t52;
	t19 = t53 * t38 + t41 * t47;
	t5 = -t14 * t28 + t19 * t29;
	t6 = t14 * t29 + t19 * t28;
	t57 = t5 * r_i_i_C(1) - t6 * r_i_i_C(2);
	t51 = t36 * t40;
	t16 = t49 * t37 + t38 * t51;
	t50 = t36 * t41;
	t56 = (-t16 * t28 - t29 * t50) * r_i_i_C(1) + (-t16 * t29 + t28 * t50) * r_i_i_C(2);
	t30 = sin(t35);
	t22 = pkin(5) * t30 + sin(qJ(4)) * pkin(4);
	t55 = pkin(9) + t22;
	t44 = t28 * r_i_i_C(1) + t29 * r_i_i_C(2) + t55;
	t43 = -t18 * t37 - t40 * t48;
	t13 = t20 * t37 - t39 * t51;
	t1 = [-t39 * pkin(1) - t18 * pkin(2) + pkin(8) * t48 - t45 * t10 - t44 * t17 + t54 * t43, -t19 * t59 + t44 * t20, -t45 * t13 + t54 * t14, -t14 * t22 + t19 * t23 + t57, (-t14 * t30 + t19 * t31) * pkin(5) + t57, t57; t53 * pkin(1) + t20 * pkin(2) + pkin(8) * t52 + t6 * r_i_i_C(1) + t5 * r_i_i_C(2) + t54 * t13 + t14 * t21 + t55 * t19, -t17 * t59 + t44 * t18, t54 * t10 + t45 * t43, -t10 * t22 + t17 * t23 + t58, (-t10 * t30 + t17 * t31) * pkin(5) + t58, t58; 0, (t44 * t38 + t59 * t41) * t36, t54 * t16 + t45 * (-t36 * t38 * t37 + t49 * t40), -t16 * t22 - t23 * t50 + t56, (-t16 * t30 - t31 * t50) * pkin(5) + t56, t56;];
	Ja_transl = t1;
else
	Ja_transl=NaN(3,6);
end