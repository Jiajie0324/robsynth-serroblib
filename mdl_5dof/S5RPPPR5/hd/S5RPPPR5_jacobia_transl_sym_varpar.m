% Analytische Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S5RPPPR5
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
%   pkin=[a2,a3,a4,a5,d1,d5,theta3,theta4]';
% 
% Output:
% Ja_transl [3x5]
%   Translatorischer Teil der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-29 15:51
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S5RPPPR5_jacobia_transl_sym_varpar(qJ, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(5,1),uint8(0),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPPPR5_jacobia_transl_sym_varpar: qJ has to be [5x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S5RPPPR5_jacobia_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RPPPR5_jacobia_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPPPR5_jacobia_transl_sym_varpar: pkin has to be [8x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 15:51:26
	% EndTime: 2019-12-29 15:51:26
	% DurationCPUTime: 0.11s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 15:51:26
	% EndTime: 2019-12-29 15:51:26
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
	% StartTime: 2019-12-29 15:51:26
	% EndTime: 2019-12-29 15:51:26
	% DurationCPUTime: 0.12s
	% Computational Cost: add. (7->5), mult. (8->4), div. (0->0), fcn. (10->2), ass. (0->5)
	t4 = pkin(1) + r_i_i_C(1);
	t3 = r_i_i_C(3) + qJ(2);
	t2 = cos(qJ(1));
	t1 = sin(qJ(1));
	t5 = [-t1 * t4 + t2 * t3, t1, 0, 0, 0; t1 * t3 + t2 * t4, -t2, 0, 0, 0; 0, 0, 0, 0, 0;];
	Ja_transl = t5;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 15:51:31
	% EndTime: 2019-12-29 15:51:31
	% DurationCPUTime: 0.13s
	% Computational Cost: add. (13->10), mult. (18->12), div. (0->0), fcn. (24->4), ass. (0->8)
	t7 = pkin(1) + pkin(2);
	t6 = cos(qJ(1));
	t5 = sin(qJ(1));
	t4 = cos(pkin(7));
	t3 = sin(pkin(7));
	t2 = t3 * t5 + t4 * t6;
	t1 = t3 * t6 - t4 * t5;
	t8 = [t1 * r_i_i_C(1) + t2 * r_i_i_C(2) + t6 * qJ(2) - t5 * t7, t5, 0, 0, 0; t2 * r_i_i_C(1) - t1 * r_i_i_C(2) + t5 * qJ(2) + t6 * t7, -t6, 0, 0, 0; 0, 0, -1, 0, 0;];
	Ja_transl = t8;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 15:51:26
	% EndTime: 2019-12-29 15:51:26
	% DurationCPUTime: 0.14s
	% Computational Cost: add. (27->14), mult. (44->14), div. (0->0), fcn. (60->6), ass. (0->10)
	t13 = pkin(1) + pkin(2);
	t12 = r_i_i_C(3) + qJ(4);
	t11 = cos(pkin(7));
	t10 = sin(pkin(7));
	t9 = r_i_i_C(1) * cos(pkin(8)) - r_i_i_C(2) * sin(pkin(8)) + pkin(3);
	t8 = cos(qJ(1));
	t7 = sin(qJ(1));
	t2 = t10 * t8 - t11 * t7;
	t1 = -t10 * t7 - t11 * t8;
	t3 = [t8 * qJ(2) + t12 * t1 - t13 * t7 + t9 * t2, t7, 0, t2, 0; t7 * qJ(2) - t9 * t1 + t12 * t2 + t13 * t8, -t8, 0, -t1, 0; 0, 0, -1, 0, 0;];
	Ja_transl = t3;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 15:51:31
	% EndTime: 2019-12-29 15:51:31
	% DurationCPUTime: 0.16s
	% Computational Cost: add. (48->17), mult. (64->19), div. (0->0), fcn. (84->7), ass. (0->15)
	t19 = pkin(1) + pkin(2);
	t18 = r_i_i_C(3) + pkin(6) + qJ(4);
	t17 = cos(qJ(1));
	t16 = sin(qJ(1));
	t15 = cos(pkin(7));
	t14 = sin(pkin(7));
	t9 = pkin(8) + qJ(5);
	t7 = sin(t9);
	t8 = cos(t9);
	t13 = -t8 * r_i_i_C(1) + t7 * r_i_i_C(2);
	t12 = r_i_i_C(1) * t7 + r_i_i_C(2) * t8;
	t11 = -t13 + cos(pkin(8)) * pkin(4) + pkin(3);
	t2 = t17 * t14 - t16 * t15;
	t1 = -t16 * t14 - t17 * t15;
	t3 = [t17 * qJ(2) + t18 * t1 + t11 * t2 - t19 * t16, t16, 0, t2, t12 * t1; t16 * qJ(2) - t11 * t1 + t19 * t17 + t18 * t2, -t17, 0, -t1, t12 * t2; 0, 0, -1, 0, t13;];
	Ja_transl = t3;
else
	Ja_transl=NaN(3,5);
end