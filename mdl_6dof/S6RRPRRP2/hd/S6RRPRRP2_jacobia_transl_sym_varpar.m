% Analytische Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S6RRPRRP2
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d5,theta3]';
% 
% Output:
% Ja_transl [3x6]
%   Translatorischer Teil der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 10:31
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S6RRPRRP2_jacobia_transl_sym_varpar(qJ, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP2_jacobia_transl_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RRPRRP2_jacobia_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRPRRP2_jacobia_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPRRP2_jacobia_transl_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:31:51
	% EndTime: 2019-10-10 10:31:51
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:31:51
	% EndTime: 2019-10-10 10:31:51
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
	% StartTime: 2019-10-10 10:31:51
	% EndTime: 2019-10-10 10:31:51
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
	% StartTime: 2019-10-10 10:31:51
	% EndTime: 2019-10-10 10:31:51
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
	% StartTime: 2019-10-10 10:31:51
	% EndTime: 2019-10-10 10:31:51
	% DurationCPUTime: 0.11s
	% Computational Cost: add. (66->13), mult. (46->16), div. (0->0), fcn. (48->8), ass. (0->13)
	t10 = qJ(2) + pkin(10);
	t7 = qJ(4) + t10;
	t5 = sin(t7);
	t6 = cos(t7);
	t16 = t6 * r_i_i_C(1) - t5 * r_i_i_C(2);
	t20 = t16 + pkin(3) * cos(t10) + cos(qJ(2)) * pkin(2);
	t18 = r_i_i_C(3) + pkin(8) + qJ(3) + pkin(7);
	t15 = -r_i_i_C(1) * t5 - r_i_i_C(2) * t6;
	t14 = pkin(1) + t20;
	t13 = t15 - pkin(3) * sin(t10) - sin(qJ(2)) * pkin(2);
	t12 = cos(qJ(1));
	t11 = sin(qJ(1));
	t1 = [-t14 * t11 + t18 * t12, t13 * t12, t11, t15 * t12, 0, 0; t18 * t11 + t14 * t12, t13 * t11, -t12, t15 * t11, 0, 0; 0, t20, 0, t16, 0, 0;];
	Ja_transl = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:31:51
	% EndTime: 2019-10-10 10:31:51
	% DurationCPUTime: 0.18s
	% Computational Cost: add. (159->32), mult. (126->41), div. (0->0), fcn. (136->10), ass. (0->30)
	t23 = qJ(2) + pkin(10);
	t20 = qJ(4) + t23;
	t18 = sin(t20);
	t19 = cos(t20);
	t24 = sin(qJ(5));
	t42 = r_i_i_C(2) * t24;
	t48 = pkin(9) + r_i_i_C(3);
	t49 = t18 * t42 + t19 * t48;
	t46 = t19 * pkin(4) + t48 * t18;
	t35 = pkin(3) * cos(t23) + cos(qJ(2)) * pkin(2);
	t45 = pkin(1) + t35 + t46;
	t26 = cos(qJ(5));
	t43 = r_i_i_C(1) * t26;
	t27 = cos(qJ(1));
	t39 = t24 * t27;
	t25 = sin(qJ(1));
	t38 = t25 * t24;
	t37 = t25 * t26;
	t36 = t26 * t27;
	t34 = t49 * t25;
	t32 = t49 * t27;
	t30 = (-pkin(4) - t43) * t18;
	t29 = -pkin(3) * sin(t23) - sin(qJ(2)) * pkin(2) + t30;
	t28 = (-t42 + t43) * t19 + t46;
	t22 = -pkin(8) - qJ(3) - pkin(7);
	t4 = t19 * t36 + t38;
	t3 = -t19 * t39 + t37;
	t2 = -t19 * t37 + t39;
	t1 = t19 * t38 + t36;
	t5 = [t2 * r_i_i_C(1) + t1 * r_i_i_C(2) - t22 * t27 - t45 * t25, t29 * t27 + t32, t25, t27 * t30 + t32, r_i_i_C(1) * t3 - r_i_i_C(2) * t4, 0; t4 * r_i_i_C(1) + t3 * r_i_i_C(2) - t25 * t22 + t45 * t27, t29 * t25 + t34, -t27, t25 * t30 + t34, -r_i_i_C(1) * t1 + r_i_i_C(2) * t2, 0; 0, t28 + t35, 0, t28, (-r_i_i_C(1) * t24 - r_i_i_C(2) * t26) * t18, 0;];
	Ja_transl = t5;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobia_transl_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:31:51
	% EndTime: 2019-10-10 10:31:51
	% DurationCPUTime: 0.20s
	% Computational Cost: add. (241->33), mult. (201->41), div. (0->0), fcn. (224->10), ass. (0->31)
	t27 = sin(qJ(5));
	t29 = cos(qJ(5));
	t37 = r_i_i_C(3) + qJ(6);
	t48 = pkin(5) + r_i_i_C(1);
	t54 = t37 * t27 + t48 * t29;
	t53 = pkin(9) + r_i_i_C(2);
	t26 = qJ(2) + pkin(10);
	t23 = qJ(4) + t26;
	t20 = cos(t23);
	t51 = t20 * t53;
	t19 = sin(t23);
	t50 = t20 * pkin(4) + t53 * t19;
	t35 = pkin(3) * cos(t26) + cos(qJ(2)) * pkin(2);
	t49 = pkin(1) + t35 + t50;
	t28 = sin(qJ(1));
	t46 = t28 * t51;
	t41 = t28 * t27;
	t40 = t28 * t29;
	t30 = cos(qJ(1));
	t39 = t30 * t27;
	t38 = t30 * t29;
	t36 = t30 * t51;
	t33 = t54 * t20 + t50;
	t32 = (-pkin(4) - t54) * t19;
	t31 = -pkin(3) * sin(t26) - sin(qJ(2)) * pkin(2) + t32;
	t25 = -pkin(8) - qJ(3) - pkin(7);
	t4 = t20 * t38 + t41;
	t3 = t20 * t39 - t40;
	t2 = t20 * t40 - t39;
	t1 = t20 * t41 + t38;
	t5 = [-t37 * t1 - t48 * t2 - t30 * t25 - t49 * t28, t31 * t30 + t36, t28, t30 * t32 + t36, -t48 * t3 + t37 * t4, t3; -t28 * t25 + t37 * t3 + t49 * t30 + t48 * t4, t31 * t28 + t46, -t30, t28 * t32 + t46, -t48 * t1 + t37 * t2, t1; 0, t33 + t35, 0, t33, (-t48 * t27 + t37 * t29) * t19, t19 * t27;];
	Ja_transl = t5;
else
	Ja_transl=NaN(3,6);
end