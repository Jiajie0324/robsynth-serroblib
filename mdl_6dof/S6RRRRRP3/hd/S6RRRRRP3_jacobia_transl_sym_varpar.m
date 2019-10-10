% Analytische Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S6RRRRRP3
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d5]';
% 
% Output:
% Ja_transl [3x6]
%   Translatorischer Teil der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 13:00
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S6RRRRRP3_jacobia_transl_sym_varpar(qJ, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRP3_jacobia_transl_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RRRRRP3_jacobia_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRRRRP3_jacobia_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRRP3_jacobia_transl_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:00:21
	% EndTime: 2019-10-10 13:00:21
	% DurationCPUTime: 0.09s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:00:21
	% EndTime: 2019-10-10 13:00:21
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
	% StartTime: 2019-10-10 13:00:21
	% EndTime: 2019-10-10 13:00:21
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
	% StartTime: 2019-10-10 13:00:21
	% EndTime: 2019-10-10 13:00:21
	% DurationCPUTime: 0.10s
	% Computational Cost: add. (37->9), mult. (41->14), div. (0->0), fcn. (41->6), ass. (0->12)
	t6 = qJ(2) + qJ(3);
	t3 = sin(t6);
	t4 = cos(t6);
	t14 = t4 * r_i_i_C(1) - t3 * r_i_i_C(2);
	t17 = t14 + cos(qJ(2)) * pkin(2);
	t15 = r_i_i_C(3) + pkin(8) + pkin(7);
	t13 = -r_i_i_C(1) * t3 - r_i_i_C(2) * t4;
	t12 = pkin(1) + t17;
	t11 = -sin(qJ(2)) * pkin(2) + t13;
	t9 = cos(qJ(1));
	t8 = sin(qJ(1));
	t1 = [-t12 * t8 + t15 * t9, t11 * t9, t13 * t9, 0, 0, 0; t12 * t9 + t15 * t8, t11 * t8, t13 * t8, 0, 0, 0; 0, t17, t14, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:00:21
	% EndTime: 2019-10-10 13:00:21
	% DurationCPUTime: 0.17s
	% Computational Cost: add. (100->28), mult. (121->39), div. (0->0), fcn. (129->8), ass. (0->29)
	t19 = qJ(2) + qJ(3);
	t16 = sin(t19);
	t17 = cos(t19);
	t20 = sin(qJ(4));
	t39 = r_i_i_C(2) * t20;
	t45 = pkin(9) + r_i_i_C(3);
	t46 = t16 * t39 + t17 * t45;
	t43 = t17 * pkin(3) + t45 * t16;
	t18 = cos(qJ(2)) * pkin(2);
	t42 = pkin(1) + t18 + t43;
	t23 = cos(qJ(4));
	t40 = r_i_i_C(1) * t23;
	t22 = sin(qJ(1));
	t36 = t20 * t22;
	t24 = cos(qJ(1));
	t35 = t20 * t24;
	t34 = t22 * t23;
	t33 = t23 * t24;
	t32 = t46 * t22;
	t30 = t46 * t24;
	t28 = (-pkin(3) - t40) * t16;
	t27 = (-t39 + t40) * t17 + t43;
	t26 = -sin(qJ(2)) * pkin(2) + t28;
	t25 = -pkin(8) - pkin(7);
	t4 = t17 * t33 + t36;
	t3 = -t17 * t35 + t34;
	t2 = -t17 * t34 + t35;
	t1 = t17 * t36 + t33;
	t5 = [t2 * r_i_i_C(1) + t1 * r_i_i_C(2) - t42 * t22 - t24 * t25, t26 * t24 + t30, t24 * t28 + t30, r_i_i_C(1) * t3 - r_i_i_C(2) * t4, 0, 0; t4 * r_i_i_C(1) + t3 * r_i_i_C(2) - t22 * t25 + t42 * t24, t26 * t22 + t32, t22 * t28 + t32, -r_i_i_C(1) * t1 + r_i_i_C(2) * t2, 0, 0; 0, t18 + t27, t27, (-r_i_i_C(1) * t20 - r_i_i_C(2) * t23) * t16, 0, 0;];
	Ja_transl = t5;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:00:21
	% EndTime: 2019-10-10 13:00:21
	% DurationCPUTime: 0.20s
	% Computational Cost: add. (179->38), mult. (165->52), div. (0->0), fcn. (177->10), ass. (0->39)
	t28 = cos(qJ(4));
	t16 = t28 * pkin(4) + pkin(3);
	t24 = qJ(2) + qJ(3);
	t19 = sin(t24);
	t21 = cos(t24);
	t30 = -pkin(10) - pkin(9);
	t54 = t21 * t16 + (r_i_i_C(3) - t30) * t19;
	t22 = cos(qJ(2)) * pkin(2);
	t53 = pkin(1) + t22 + t54;
	t23 = qJ(4) + qJ(5);
	t20 = cos(t23);
	t29 = cos(qJ(1));
	t40 = t29 * t20;
	t18 = sin(t23);
	t27 = sin(qJ(1));
	t43 = t27 * t18;
	t5 = t21 * t43 + t40;
	t41 = t29 * t18;
	t42 = t27 * t20;
	t6 = -t21 * t42 + t41;
	t52 = -t5 * r_i_i_C(1) + t6 * r_i_i_C(2);
	t7 = -t21 * t41 + t42;
	t8 = t21 * t40 + t43;
	t51 = t7 * r_i_i_C(1) - t8 * r_i_i_C(2);
	t25 = sin(qJ(4));
	t50 = pkin(4) * t25;
	t49 = r_i_i_C(1) * t20;
	t48 = r_i_i_C(2) * t18;
	t38 = t19 * t48;
	t45 = t21 * t27;
	t46 = r_i_i_C(3) * t45 + t27 * t38;
	t44 = t21 * t29;
	t39 = r_i_i_C(3) * t44 + t29 * t38;
	t37 = pkin(8) + pkin(7) + t50;
	t35 = -r_i_i_C(1) * t18 - r_i_i_C(2) * t20;
	t34 = -t21 * t30 + (-t16 - t49) * t19;
	t33 = (-t48 + t49) * t21 + t54;
	t32 = -sin(qJ(2)) * pkin(2) + t34;
	t1 = [t6 * r_i_i_C(1) + t5 * r_i_i_C(2) - t53 * t27 + t37 * t29, t32 * t29 + t39, t34 * t29 + t39, (-t25 * t44 + t27 * t28) * pkin(4) + t51, t51, 0; t8 * r_i_i_C(1) + t7 * r_i_i_C(2) + t37 * t27 + t53 * t29, t32 * t27 + t46, t34 * t27 + t46, (-t25 * t45 - t28 * t29) * pkin(4) + t52, t52, 0; 0, t22 + t33, t33, (t35 - t50) * t19, t35 * t19, 0;];
	Ja_transl = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobia_transl_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:00:21
	% EndTime: 2019-10-10 13:00:21
	% DurationCPUTime: 0.24s
	% Computational Cost: add. (234->45), mult. (194->57), div. (0->0), fcn. (209->10), ass. (0->38)
	t28 = qJ(4) + qJ(5);
	t23 = cos(t28);
	t14 = pkin(5) * t23 + cos(qJ(4)) * pkin(4);
	t12 = pkin(3) + t14;
	t29 = qJ(2) + qJ(3);
	t22 = sin(t29);
	t24 = cos(t29);
	t27 = -qJ(6) - pkin(10) - pkin(9);
	t55 = t24 * t12 + (r_i_i_C(3) - t27) * t22;
	t26 = cos(qJ(2)) * pkin(2);
	t54 = pkin(1) + t26 + t55;
	t32 = cos(qJ(1));
	t42 = t32 * t23;
	t21 = sin(t28);
	t31 = sin(qJ(1));
	t45 = t31 * t21;
	t5 = t24 * t45 + t42;
	t43 = t32 * t21;
	t44 = t31 * t23;
	t6 = -t24 * t44 + t43;
	t53 = -t5 * r_i_i_C(1) + t6 * r_i_i_C(2);
	t7 = -t24 * t43 + t44;
	t8 = t24 * t42 + t45;
	t52 = t7 * r_i_i_C(1) - t8 * r_i_i_C(2);
	t51 = r_i_i_C(1) * t23;
	t50 = r_i_i_C(2) * t21;
	t49 = r_i_i_C(2) * t23;
	t47 = t24 * t31;
	t46 = t24 * t32;
	t38 = t22 * t50;
	t41 = r_i_i_C(3) * t47 + t31 * t38;
	t40 = r_i_i_C(3) * t46 + t32 * t38;
	t13 = pkin(5) * t21 + sin(qJ(4)) * pkin(4);
	t39 = t13 + pkin(8) + pkin(7);
	t36 = -t24 * t27 + (-t12 - t51) * t22;
	t35 = (-t50 + t51) * t24 + t55;
	t34 = -sin(qJ(2)) * pkin(2) + t36;
	t1 = [t6 * r_i_i_C(1) + t5 * r_i_i_C(2) - t54 * t31 + t39 * t32, t32 * t34 + t40, t32 * t36 + t40, -t13 * t46 + t31 * t14 + t52, t7 * pkin(5) + t52, t32 * t22; t8 * r_i_i_C(1) + t7 * r_i_i_C(2) + t39 * t31 + t54 * t32, t31 * t34 + t41, t31 * t36 + t41, -t13 * t47 - t32 * t14 + t53, -pkin(5) * t5 + t53, t31 * t22; 0, t26 + t35, t35, (-r_i_i_C(1) * t21 - t13 - t49) * t22, (-t49 + (-pkin(5) - r_i_i_C(1)) * t21) * t22, -t24;];
	Ja_transl = t1;
else
	Ja_transl=NaN(3,6);
end