% Analytische Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S5RRPRP10
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
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d4]';
% 
% Output:
% Ja_transl [3x5]
%   Translatorischer Teil der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 20:11
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S5RRPRP10_jacobia_transl_sym_varpar(qJ, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(5,1),uint8(0),zeros(3,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRP10_jacobia_transl_sym_varpar: qJ has to be [5x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S5RRPRP10_jacobia_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RRPRP10_jacobia_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S5RRPRP10_jacobia_transl_sym_varpar: pkin has to be [7x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 20:11:30
	% EndTime: 2019-12-31 20:11:30
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 20:11:30
	% EndTime: 2019-12-31 20:11:30
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
	% StartTime: 2019-12-31 20:11:30
	% EndTime: 2019-12-31 20:11:30
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
	% StartTime: 2019-12-31 20:11:30
	% EndTime: 2019-12-31 20:11:30
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (22->9), mult. (44->12), div. (0->0), fcn. (47->4), ass. (0->11)
	t1 = sin(qJ(2));
	t3 = cos(qJ(2));
	t7 = r_i_i_C(3) + qJ(3);
	t9 = pkin(2) - r_i_i_C(2);
	t6 = t7 * t1 + t9 * t3;
	t10 = pkin(1) + t6;
	t8 = pkin(6) + r_i_i_C(1);
	t5 = -t9 * t1 + t7 * t3;
	t4 = cos(qJ(1));
	t2 = sin(qJ(1));
	t11 = [-t10 * t2 + t8 * t4, t5 * t4, t4 * t1, 0, 0; t10 * t4 + t8 * t2, t5 * t2, t2 * t1, 0, 0; 0, t6, -t3, 0, 0;];
	Ja_transl = t11;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 20:11:30
	% EndTime: 2019-12-31 20:11:30
	% DurationCPUTime: 0.13s
	% Computational Cost: add. (43->22), mult. (96->34), div. (0->0), fcn. (107->6), ass. (0->21)
	t15 = pkin(2) + pkin(7) + r_i_i_C(3);
	t9 = cos(qJ(2));
	t13 = t15 * t9;
	t6 = sin(qJ(2));
	t21 = t6 * qJ(3) + pkin(1) + t13;
	t7 = sin(qJ(1));
	t20 = t7 * t6;
	t8 = cos(qJ(4));
	t19 = t7 * t8;
	t18 = pkin(3) + pkin(6);
	t10 = cos(qJ(1));
	t17 = t10 * t6;
	t16 = t10 * t8;
	t5 = sin(qJ(4));
	t12 = r_i_i_C(1) * t5 + r_i_i_C(2) * t8 + qJ(3);
	t11 = t12 * t9 - t15 * t6;
	t4 = -t5 * t20 + t16;
	t3 = t10 * t5 + t6 * t19;
	t2 = t5 * t17 + t19;
	t1 = t6 * t16 - t7 * t5;
	t14 = [t4 * r_i_i_C(1) - t3 * r_i_i_C(2) + t18 * t10 - t21 * t7, t11 * t10, t17, r_i_i_C(1) * t1 - r_i_i_C(2) * t2, 0; t2 * r_i_i_C(1) + t1 * r_i_i_C(2) + t10 * t21 + t18 * t7, t11 * t7, t20, r_i_i_C(1) * t3 + r_i_i_C(2) * t4, 0; 0, t12 * t6 + t13, -t9, (-r_i_i_C(1) * t8 + r_i_i_C(2) * t5) * t9, 0;];
	Ja_transl = t14;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 20:11:30
	% EndTime: 2019-12-31 20:11:31
	% DurationCPUTime: 0.12s
	% Computational Cost: add. (60->25), mult. (126->38), div. (0->0), fcn. (140->6), ass. (0->22)
	t11 = cos(qJ(2));
	t17 = pkin(2) + r_i_i_C(3) + qJ(5) + pkin(7);
	t15 = t17 * t11;
	t7 = sin(qJ(4));
	t8 = sin(qJ(2));
	t25 = -pkin(1) - (pkin(4) * t7 + qJ(3)) * t8 - t15;
	t22 = pkin(4) + r_i_i_C(1);
	t9 = sin(qJ(1));
	t23 = t9 * t8;
	t10 = cos(qJ(4));
	t21 = pkin(4) * t10 + pkin(3) + pkin(6);
	t12 = cos(qJ(1));
	t20 = t12 * t8;
	t19 = t9 * t10;
	t18 = t10 * t12;
	t3 = t12 * t7 + t8 * t19;
	t1 = t8 * t18 - t9 * t7;
	t14 = r_i_i_C(2) * t10 + t22 * t7 + qJ(3);
	t13 = t14 * t11 - t17 * t8;
	t4 = -t7 * t23 + t18;
	t2 = t7 * t20 + t19;
	t5 = [t4 * r_i_i_C(1) - t3 * r_i_i_C(2) + t21 * t12 + t25 * t9, t13 * t12, t20, -t2 * r_i_i_C(2) + t22 * t1, t12 * t11; t2 * r_i_i_C(1) + t1 * r_i_i_C(2) - t25 * t12 + t21 * t9, t13 * t9, t23, t4 * r_i_i_C(2) + t22 * t3, t9 * t11; 0, t14 * t8 + t15, -t11, (r_i_i_C(2) * t7 - t22 * t10) * t11, t8;];
	Ja_transl = t5;
else
	Ja_transl=NaN(3,5);
end