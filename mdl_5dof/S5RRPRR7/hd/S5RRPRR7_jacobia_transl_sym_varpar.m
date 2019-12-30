% Analytische Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S5RRPRR7
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
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d4,d5]';
% 
% Output:
% Ja_transl [3x5]
%   Translatorischer Teil der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-29 19:05
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S5RRPRR7_jacobia_transl_sym_varpar(qJ, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(5,1),uint8(0),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRR7_jacobia_transl_sym_varpar: qJ has to be [5x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S5RRPRR7_jacobia_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RRPRR7_jacobia_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RRPRR7_jacobia_transl_sym_varpar: pkin has to be [8x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 19:04:53
	% EndTime: 2019-12-29 19:04:53
	% DurationCPUTime: 0.10s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 19:04:51
	% EndTime: 2019-12-29 19:04:51
	% DurationCPUTime: 0.12s
	% Computational Cost: add. (2->2), mult. (4->4), div. (0->0), fcn. (4->2), ass. (0->3)
	t2 = cos(qJ(1));
	t1 = sin(qJ(1));
	t3 = [-r_i_i_C(1) * t1 - r_i_i_C(2) * t2, 0, 0, 0, 0; r_i_i_C(1) * t2 - r_i_i_C(2) * t1, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	Ja_transl = t3;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_transl_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 19:04:53
	% EndTime: 2019-12-29 19:04:53
	% DurationCPUTime: 0.13s
	% Computational Cost: add. (14->5), mult. (10->6), div. (0->0), fcn. (10->4), ass. (0->6)
	t4 = qJ(1) + qJ(2);
	t2 = sin(t4);
	t3 = cos(t4);
	t6 = r_i_i_C(1) * t3 - r_i_i_C(2) * t2;
	t5 = -r_i_i_C(1) * t2 - r_i_i_C(2) * t3;
	t1 = [-sin(qJ(1)) * pkin(1) + t5, t5, 0, 0, 0; cos(qJ(1)) * pkin(1) + t6, t6, 0, 0, 0; 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 19:04:58
	% EndTime: 2019-12-29 19:04:58
	% DurationCPUTime: 0.13s
	% Computational Cost: add. (33->8), mult. (18->6), div. (0->0), fcn. (20->4), ass. (0->8)
	t13 = pkin(2) - r_i_i_C(2);
	t12 = r_i_i_C(3) + qJ(3);
	t9 = qJ(1) + qJ(2);
	t7 = sin(t9);
	t8 = cos(t9);
	t11 = t12 * t8 - t13 * t7;
	t10 = t12 * t7 + t13 * t8;
	t1 = [-sin(qJ(1)) * pkin(1) + t11, t11, t7, 0, 0; cos(qJ(1)) * pkin(1) + t10, t10, -t8, 0, 0; 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 19:04:51
	% EndTime: 2019-12-29 19:04:51
	% DurationCPUTime: 0.16s
	% Computational Cost: add. (56->11), mult. (44->12), div. (0->0), fcn. (46->6), ass. (0->12)
	t13 = sin(qJ(4));
	t14 = cos(qJ(4));
	t22 = -t13 * r_i_i_C(1) - t14 * r_i_i_C(2);
	t21 = pkin(2) + pkin(7) + r_i_i_C(3);
	t20 = qJ(3) - t22;
	t12 = qJ(1) + qJ(2);
	t10 = sin(t12);
	t11 = cos(t12);
	t17 = t20 * t10 + t21 * t11;
	t16 = r_i_i_C(1) * t14 - r_i_i_C(2) * t13;
	t15 = -t21 * t10 + t20 * t11;
	t1 = [-sin(qJ(1)) * pkin(1) + t15, t15, t10, t16 * t10, 0; cos(qJ(1)) * pkin(1) + t17, t17, -t11, -t16 * t11, 0; 0, 0, 0, t22, 0;];
	Ja_transl = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 19:04:58
	% EndTime: 2019-12-29 19:04:58
	% DurationCPUTime: 0.19s
	% Computational Cost: add. (100->21), mult. (67->26), div. (0->0), fcn. (69->8), ass. (0->20)
	t30 = sin(qJ(4)) * pkin(4);
	t33 = qJ(3) + t30;
	t32 = -pkin(8) - pkin(7) - pkin(2) - r_i_i_C(3);
	t31 = cos(qJ(4)) * pkin(4);
	t18 = qJ(4) + qJ(5);
	t14 = sin(t18);
	t19 = qJ(1) + qJ(2);
	t15 = sin(t19);
	t29 = t14 * t15;
	t17 = cos(t19);
	t28 = t14 * t17;
	t16 = cos(t18);
	t27 = t15 * t16;
	t26 = t16 * t17;
	t25 = -t14 * r_i_i_C(1) - t16 * r_i_i_C(2);
	t24 = r_i_i_C(1) * t29 + r_i_i_C(2) * t27 + t33 * t15 - t32 * t17;
	t23 = r_i_i_C(1) * t28 + r_i_i_C(2) * t26 + t32 * t15 + t33 * t17;
	t4 = r_i_i_C(2) * t28;
	t3 = r_i_i_C(1) * t27;
	t1 = [-sin(qJ(1)) * pkin(1) + t23, t23, t15, t3 + (-r_i_i_C(2) * t14 + t31) * t15, -r_i_i_C(2) * t29 + t3; cos(qJ(1)) * pkin(1) + t24, t24, -t17, t4 + (-r_i_i_C(1) * t16 - t31) * t17, -r_i_i_C(1) * t26 + t4; 0, 0, 0, t25 - t30, t25;];
	Ja_transl = t1;
else
	Ja_transl=NaN(3,5);
end