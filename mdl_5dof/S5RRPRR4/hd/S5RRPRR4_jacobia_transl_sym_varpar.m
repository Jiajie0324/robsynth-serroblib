% Analytische Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S5RRPRR4
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
%   pkin=[a2,a3,a4,a5,d1,d2,d4,d5,theta3]';
% 
% Output:
% Ja_transl [3x5]
%   Translatorischer Teil der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-24 10:49
% Revision: 5d02717ba55fba3c5445be8d9f6bf09c2cd6665f (2019-10-14)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S5RRPRR4_jacobia_transl_sym_varpar(qJ, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(5,1),uint8(0),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRR4_jacobia_transl_sym_varpar: qJ has to be [5x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S5RRPRR4_jacobia_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RRPRR4_jacobia_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRPRR4_jacobia_transl_sym_varpar: pkin has to be [9x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:49:06
	% EndTime: 2019-10-24 10:49:06
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:49:06
	% EndTime: 2019-10-24 10:49:06
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (2->2), mult. (4->4), div. (0->0), fcn. (4->2), ass. (0->3)
	t2 = cos(qJ(1));
	t1 = sin(qJ(1));
	t3 = [0, 0, 0, 0, 0; -r_i_i_C(1) * t2 + r_i_i_C(2) * t1, 0, 0, 0, 0; -r_i_i_C(1) * t1 - r_i_i_C(2) * t2, 0, 0, 0, 0;];
	Ja_transl = t3;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_transl_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:49:06
	% EndTime: 2019-10-24 10:49:06
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (14->5), mult. (10->6), div. (0->0), fcn. (10->4), ass. (0->6)
	t4 = qJ(1) + qJ(2);
	t2 = sin(t4);
	t3 = cos(t4);
	t6 = -t3 * r_i_i_C(1) + t2 * r_i_i_C(2);
	t5 = -t2 * r_i_i_C(1) - t3 * r_i_i_C(2);
	t1 = [0, 0, 0, 0, 0; -cos(qJ(1)) * pkin(1) + t6, t6, 0, 0, 0; -sin(qJ(1)) * pkin(1) + t5, t5, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:49:06
	% EndTime: 2019-10-24 10:49:07
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (30->8), mult. (14->8), div. (0->0), fcn. (14->6), ass. (0->7)
	t7 = qJ(1) + qJ(2);
	t4 = pkin(9) + t7;
	t2 = sin(t4);
	t3 = cos(t4);
	t9 = -pkin(2) * cos(t7) - t3 * r_i_i_C(1) + t2 * r_i_i_C(2);
	t8 = -pkin(2) * sin(t7) - t2 * r_i_i_C(1) - t3 * r_i_i_C(2);
	t1 = [0, 0, 1, 0, 0; -cos(qJ(1)) * pkin(1) + t9, t9, 0, 0, 0; -sin(qJ(1)) * pkin(1) + t8, t8, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:49:06
	% EndTime: 2019-10-24 10:49:06
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (77->13), mult. (44->14), div. (0->0), fcn. (44->8), ass. (0->13)
	t11 = sin(qJ(4));
	t12 = cos(qJ(4));
	t21 = t12 * r_i_i_C(1) - t11 * r_i_i_C(2);
	t20 = pkin(7) + r_i_i_C(3);
	t19 = -pkin(3) - t21;
	t10 = qJ(1) + qJ(2);
	t15 = r_i_i_C(1) * t11 + r_i_i_C(2) * t12;
	t7 = pkin(9) + t10;
	t5 = sin(t7);
	t6 = cos(t7);
	t14 = -pkin(2) * sin(t10) + t20 * t6 + t19 * t5;
	t13 = -pkin(2) * cos(t10) - t20 * t5 + t19 * t6;
	t1 = [0, 0, 1, t21, 0; -cos(qJ(1)) * pkin(1) + t13, t13, 0, t15 * t5, 0; -sin(qJ(1)) * pkin(1) + t14, t14, 0, -t15 * t6, 0;];
	Ja_transl = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:49:06
	% EndTime: 2019-10-24 10:49:06
	% DurationCPUTime: 0.10s
	% Computational Cost: add. (123->19), mult. (63->21), div. (0->0), fcn. (63->10), ass. (0->21)
	t31 = r_i_i_C(3) + pkin(8) + pkin(7);
	t17 = qJ(4) + qJ(5);
	t12 = sin(t17);
	t18 = qJ(1) + qJ(2);
	t11 = pkin(9) + t18;
	t7 = sin(t11);
	t26 = t12 * t7;
	t14 = cos(t17);
	t28 = r_i_i_C(2) * t14;
	t30 = r_i_i_C(1) * t26 + t7 * t28;
	t29 = sin(qJ(4)) * pkin(4);
	t27 = t12 * r_i_i_C(2);
	t9 = t14 * r_i_i_C(1);
	t25 = t9 - t27;
	t16 = cos(qJ(4)) * pkin(4);
	t24 = -t16 - pkin(3) - t9;
	t23 = -r_i_i_C(1) * t12 - t28;
	t8 = cos(t11);
	t22 = -pkin(2) * cos(t18) + (t24 + t27) * t8 - t31 * t7;
	t21 = -pkin(2) * sin(t18) + r_i_i_C(2) * t26 + t24 * t7 + t31 * t8;
	t1 = [0, 0, 1, t16 + t25, t25; -cos(qJ(1)) * pkin(1) + t22, t22, 0, t7 * t29 + t30, t30; -sin(qJ(1)) * pkin(1) + t21, t21, 0, (t23 - t29) * t8, t23 * t8;];
	Ja_transl = t1;
else
	Ja_transl=NaN(3,5);
end