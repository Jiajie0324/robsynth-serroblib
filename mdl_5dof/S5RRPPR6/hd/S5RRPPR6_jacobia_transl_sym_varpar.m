% Analytische Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S5RRPPR6
% 
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% (Ist für translatorischen Teil egal, kennzeichnet nur den Rechenweg der Herleitung)
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt (0=Basis).
% r_i_i_C [3x1]
%   Ortsvektor vom KörperKS-Ursprung zum gesuchten Punkt
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d5,theta3,theta4]';
% 
% Output:
% Ja_transl [3x5]
%   Translatorischer Teil der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 19:34
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S5RRPPR6_jacobia_transl_sym_varpar(qJ, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(5,1),uint8(0),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPPR6_jacobia_transl_sym_varpar: qJ has to be [5x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S5RRPPR6_jacobia_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RRPPR6_jacobia_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRPPR6_jacobia_transl_sym_varpar: pkin has to be [9x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 19:34:01
	% EndTime: 2019-12-31 19:34:01
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 19:34:01
	% EndTime: 2019-12-31 19:34:01
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (2->2), mult. (4->4), div. (0->0), fcn. (4->2), ass. (0->3)
	t2 = cos(qJ(1));
	t1 = sin(qJ(1));
	t3 = [-r_i_i_C(1) * t1 - r_i_i_C(2) * t2, 0, 0, 0, 0; r_i_i_C(1) * t2 - r_i_i_C(2) * t1, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	Ja_transl = t3;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_transl_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 19:34:01
	% EndTime: 2019-12-31 19:34:01
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (11->6), mult. (24->10), div. (0->0), fcn. (24->4), ass. (0->9)
	t8 = pkin(6) + r_i_i_C(3);
	t1 = sin(qJ(2));
	t3 = cos(qJ(2));
	t7 = r_i_i_C(1) * t3 - r_i_i_C(2) * t1;
	t6 = -r_i_i_C(1) * t1 - r_i_i_C(2) * t3;
	t5 = pkin(1) + t7;
	t4 = cos(qJ(1));
	t2 = sin(qJ(1));
	t9 = [-t2 * t5 + t4 * t8, t6 * t4, 0, 0, 0; t2 * t8 + t4 * t5, t6 * t2, 0, 0, 0; 0, t7, 0, 0, 0;];
	Ja_transl = t9;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 19:34:01
	% EndTime: 2019-12-31 19:34:01
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (29->10), mult. (31->12), div. (0->0), fcn. (33->6), ass. (0->10)
	t5 = qJ(2) + pkin(8);
	t2 = sin(t5);
	t3 = cos(t5);
	t14 = t3 * r_i_i_C(1) - t2 * r_i_i_C(2) + cos(qJ(2)) * pkin(2);
	t13 = r_i_i_C(3) + qJ(3) + pkin(6);
	t11 = pkin(1) + t14;
	t10 = -sin(qJ(2)) * pkin(2) - r_i_i_C(1) * t2 - r_i_i_C(2) * t3;
	t9 = cos(qJ(1));
	t8 = sin(qJ(1));
	t1 = [-t11 * t8 + t13 * t9, t10 * t9, t8, 0, 0; t11 * t9 + t13 * t8, t10 * t8, -t9, 0, 0; 0, t14, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 19:34:01
	% EndTime: 2019-12-31 19:34:01
	% DurationCPUTime: 0.09s
	% Computational Cost: add. (65->16), mult. (72->18), div. (0->0), fcn. (81->8), ass. (0->14)
	t6 = sin(pkin(9));
	t7 = cos(pkin(9));
	t15 = r_i_i_C(1) * t7 - r_i_i_C(2) * t6 + pkin(3);
	t16 = r_i_i_C(3) + qJ(4);
	t5 = qJ(2) + pkin(8);
	t2 = sin(t5);
	t3 = cos(t5);
	t18 = cos(qJ(2)) * pkin(2) + t15 * t3 + t16 * t2;
	t17 = pkin(1) + t18;
	t14 = r_i_i_C(1) * t6 + r_i_i_C(2) * t7 + pkin(6) + qJ(3);
	t12 = -sin(qJ(2)) * pkin(2) - t15 * t2 + t16 * t3;
	t11 = cos(qJ(1));
	t10 = sin(qJ(1));
	t1 = [-t17 * t10 + t14 * t11, t12 * t11, t10, t11 * t2, 0; t14 * t10 + t17 * t11, t12 * t10, -t11, t10 * t2, 0; 0, t18, 0, -t3, 0;];
	Ja_transl = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 19:34:01
	% EndTime: 2019-12-31 19:34:01
	% DurationCPUTime: 0.12s
	% Computational Cost: add. (114->29), mult. (101->40), div. (0->0), fcn. (114->10), ass. (0->22)
	t27 = r_i_i_C(3) + pkin(7) + qJ(4);
	t13 = qJ(2) + pkin(8);
	t8 = sin(t13);
	t29 = cos(qJ(2)) * pkin(2) + t27 * t8;
	t10 = cos(t13);
	t5 = cos(pkin(9)) * pkin(4) + pkin(3);
	t28 = t10 * t5 + pkin(1) + t29;
	t18 = sin(qJ(1));
	t26 = t10 * t18;
	t19 = cos(qJ(1));
	t25 = t10 * t19;
	t22 = pkin(4) * sin(pkin(9)) + qJ(3) + pkin(6);
	t12 = pkin(9) + qJ(5);
	t7 = sin(t12);
	t9 = cos(t12);
	t21 = r_i_i_C(1) * t9 - r_i_i_C(2) * t7 + t5;
	t20 = -sin(qJ(2)) * pkin(2) + t27 * t10 - t21 * t8;
	t4 = t18 * t7 + t9 * t25;
	t3 = t18 * t9 - t7 * t25;
	t2 = t19 * t7 - t9 * t26;
	t1 = t19 * t9 + t7 * t26;
	t6 = [t2 * r_i_i_C(1) + t1 * r_i_i_C(2) - t28 * t18 + t22 * t19, t20 * t19, t18, t19 * t8, r_i_i_C(1) * t3 - r_i_i_C(2) * t4; t4 * r_i_i_C(1) + t3 * r_i_i_C(2) + t22 * t18 + t28 * t19, t20 * t18, -t19, t18 * t8, -r_i_i_C(1) * t1 + r_i_i_C(2) * t2; 0, t21 * t10 + t29, 0, -t10, (-r_i_i_C(1) * t7 - r_i_i_C(2) * t9) * t8;];
	Ja_transl = t6;
else
	Ja_transl=NaN(3,5);
end