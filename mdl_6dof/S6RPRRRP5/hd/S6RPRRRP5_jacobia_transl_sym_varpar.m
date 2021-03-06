% Analytische Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S6RPRRRP5
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
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d5,theta2]';
% 
% Output:
% Ja_transl [3x6]
%   Translatorischer Teil der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 01:52
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S6RPRRRP5_jacobia_transl_sym_varpar(qJ, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRP5_jacobia_transl_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RPRRRP5_jacobia_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RPRRRP5_jacobia_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRRP5_jacobia_transl_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:52:23
	% EndTime: 2019-10-10 01:52:23
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:52:23
	% EndTime: 2019-10-10 01:52:23
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
	% StartTime: 2019-10-10 01:52:23
	% EndTime: 2019-10-10 01:52:23
	% DurationCPUTime: 0.09s
	% Computational Cost: add. (9->6), mult. (14->6), div. (0->0), fcn. (16->4), ass. (0->5)
	t6 = r_i_i_C(3) + qJ(2);
	t5 = r_i_i_C(1) * cos(pkin(10)) - r_i_i_C(2) * sin(pkin(10)) + pkin(1);
	t4 = cos(qJ(1));
	t3 = sin(qJ(1));
	t1 = [-t5 * t3 + t6 * t4, t3, 0, 0, 0, 0; t6 * t3 + t5 * t4, -t4, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:52:23
	% EndTime: 2019-10-10 01:52:23
	% DurationCPUTime: 0.09s
	% Computational Cost: add. (26->9), mult. (26->11), div. (0->0), fcn. (28->5), ass. (0->10)
	t11 = r_i_i_C(3) + pkin(7) + qJ(2);
	t4 = pkin(10) + qJ(3);
	t2 = sin(t4);
	t3 = cos(t4);
	t10 = t3 * r_i_i_C(1) - t2 * r_i_i_C(2);
	t9 = -r_i_i_C(1) * t2 - r_i_i_C(2) * t3;
	t8 = cos(pkin(10)) * pkin(2) + pkin(1) + t10;
	t7 = cos(qJ(1));
	t6 = sin(qJ(1));
	t1 = [t11 * t7 - t8 * t6, t6, t9 * t7, 0, 0, 0; t11 * t6 + t8 * t7, -t7, t9 * t6, 0, 0, 0; 0, 0, t10, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:52:23
	% EndTime: 2019-10-10 01:52:23
	% DurationCPUTime: 0.10s
	% Computational Cost: add. (63->12), mult. (43->15), div. (0->0), fcn. (45->7), ass. (0->13)
	t9 = pkin(10) + qJ(3);
	t7 = qJ(4) + t9;
	t4 = sin(t7);
	t5 = cos(t7);
	t15 = t5 * r_i_i_C(1) - t4 * r_i_i_C(2);
	t18 = t15 + pkin(3) * cos(t9);
	t16 = r_i_i_C(3) + pkin(8) + pkin(7) + qJ(2);
	t14 = -r_i_i_C(1) * t4 - r_i_i_C(2) * t5;
	t13 = cos(pkin(10)) * pkin(2) + pkin(1) + t18;
	t12 = -pkin(3) * sin(t9) + t14;
	t11 = cos(qJ(1));
	t10 = sin(qJ(1));
	t1 = [-t10 * t13 + t11 * t16, t10, t12 * t11, t14 * t11, 0, 0; t10 * t16 + t11 * t13, -t11, t12 * t10, t14 * t10, 0, 0; 0, 0, t18, t15, 0, 0;];
	Ja_transl = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:52:23
	% EndTime: 2019-10-10 01:52:23
	% DurationCPUTime: 0.18s
	% Computational Cost: add. (156->32), mult. (123->40), div. (0->0), fcn. (133->9), ass. (0->30)
	t22 = pkin(10) + qJ(3);
	t20 = qJ(4) + t22;
	t17 = sin(t20);
	t18 = cos(t20);
	t23 = sin(qJ(5));
	t40 = r_i_i_C(2) * t23;
	t46 = pkin(9) + r_i_i_C(3);
	t47 = t17 * t40 + t18 * t46;
	t44 = t18 * pkin(4) + t46 * t17;
	t16 = pkin(3) * cos(t22);
	t43 = t16 + cos(pkin(10)) * pkin(2) + pkin(1) + t44;
	t25 = cos(qJ(5));
	t41 = r_i_i_C(1) * t25;
	t26 = cos(qJ(1));
	t37 = t23 * t26;
	t24 = sin(qJ(1));
	t36 = t24 * t23;
	t35 = t24 * t25;
	t34 = t25 * t26;
	t33 = t47 * t24;
	t31 = t47 * t26;
	t29 = (-pkin(4) - t41) * t17;
	t28 = (-t40 + t41) * t18 + t44;
	t27 = -pkin(3) * sin(t22) + t29;
	t21 = -pkin(8) - pkin(7) - qJ(2);
	t4 = t18 * t34 + t36;
	t3 = -t18 * t37 + t35;
	t2 = -t18 * t35 + t37;
	t1 = t18 * t36 + t34;
	t5 = [t2 * r_i_i_C(1) + t1 * r_i_i_C(2) - t21 * t26 - t43 * t24, t24, t27 * t26 + t31, t26 * t29 + t31, r_i_i_C(1) * t3 - r_i_i_C(2) * t4, 0; t4 * r_i_i_C(1) + t3 * r_i_i_C(2) - t24 * t21 + t43 * t26, -t26, t27 * t24 + t33, t24 * t29 + t33, -r_i_i_C(1) * t1 + r_i_i_C(2) * t2, 0; 0, 0, t16 + t28, t28, (-r_i_i_C(1) * t23 - r_i_i_C(2) * t25) * t17, 0;];
	Ja_transl = t5;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobia_transl_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:52:23
	% EndTime: 2019-10-10 01:52:23
	% DurationCPUTime: 0.20s
	% Computational Cost: add. (238->33), mult. (198->40), div. (0->0), fcn. (221->9), ass. (0->31)
	t26 = sin(qJ(5));
	t28 = cos(qJ(5));
	t35 = r_i_i_C(3) + qJ(6);
	t46 = pkin(5) + r_i_i_C(1);
	t52 = t35 * t26 + t46 * t28;
	t51 = pkin(9) + r_i_i_C(2);
	t25 = pkin(10) + qJ(3);
	t23 = qJ(4) + t25;
	t19 = cos(t23);
	t49 = t19 * t51;
	t18 = sin(t23);
	t48 = t19 * pkin(4) + t51 * t18;
	t17 = pkin(3) * cos(t25);
	t47 = t17 + cos(pkin(10)) * pkin(2) + pkin(1) + t48;
	t27 = sin(qJ(1));
	t44 = t27 * t49;
	t39 = t27 * t26;
	t38 = t27 * t28;
	t29 = cos(qJ(1));
	t37 = t29 * t26;
	t36 = t29 * t28;
	t34 = t29 * t49;
	t32 = t52 * t19 + t48;
	t31 = (-pkin(4) - t52) * t18;
	t30 = -pkin(3) * sin(t25) + t31;
	t24 = -pkin(8) - pkin(7) - qJ(2);
	t4 = t19 * t36 + t39;
	t3 = t19 * t37 - t38;
	t2 = t19 * t38 - t37;
	t1 = t19 * t39 + t36;
	t5 = [-t35 * t1 - t46 * t2 - t29 * t24 - t47 * t27, t27, t30 * t29 + t34, t29 * t31 + t34, -t46 * t3 + t35 * t4, t3; -t27 * t24 + t47 * t29 + t35 * t3 + t46 * t4, -t29, t30 * t27 + t44, t27 * t31 + t44, -t46 * t1 + t35 * t2, t1; 0, 0, t17 + t32, t32, (-t46 * t26 + t35 * t28) * t18, t18 * t26;];
	Ja_transl = t5;
else
	Ja_transl=NaN(3,6);
end