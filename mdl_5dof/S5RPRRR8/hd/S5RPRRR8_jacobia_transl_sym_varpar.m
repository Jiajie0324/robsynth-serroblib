% Analytische Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S5RPRRR8
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
%   pkin=[a2,a3,a4,a5,d1,d3,d4,d5]';
% 
% Output:
% Ja_transl [3x5]
%   Translatorischer Teil der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-29 17:49
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S5RPRRR8_jacobia_transl_sym_varpar(qJ, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(5,1),uint8(0),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRR8_jacobia_transl_sym_varpar: qJ has to be [5x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S5RPRRR8_jacobia_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RPRRR8_jacobia_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPRRR8_jacobia_transl_sym_varpar: pkin has to be [8x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 17:48:55
	% EndTime: 2019-12-29 17:48:55
	% DurationCPUTime: 0.10s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 17:48:55
	% EndTime: 2019-12-29 17:48:55
	% DurationCPUTime: 0.11s
	% Computational Cost: add. (2->2), mult. (4->4), div. (0->0), fcn. (4->2), ass. (0->3)
	t2 = cos(qJ(1));
	t1 = sin(qJ(1));
	t3 = [-r_i_i_C(1) * t1 - r_i_i_C(2) * t2, 0, 0, 0, 0; r_i_i_C(1) * t2 - r_i_i_C(2) * t1, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	Ja_transl = t3;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_transl_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 17:48:55
	% EndTime: 2019-12-29 17:48:56
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
	% StartTime: 2019-12-29 17:48:55
	% EndTime: 2019-12-29 17:48:55
	% DurationCPUTime: 0.12s
	% Computational Cost: add. (19->10), mult. (30->12), div. (0->0), fcn. (40->4), ass. (0->10)
	t12 = pkin(1) + pkin(2);
	t11 = cos(qJ(3));
	t10 = sin(qJ(3));
	t6 = sin(qJ(1));
	t7 = cos(qJ(1));
	t1 = -t6 * t10 - t7 * t11;
	t2 = t7 * t10 - t6 * t11;
	t9 = -t2 * r_i_i_C(1) + t1 * r_i_i_C(2);
	t8 = t1 * r_i_i_C(1) + t2 * r_i_i_C(2);
	t3 = [t7 * qJ(2) - t12 * t6 - t9, t6, t9, 0, 0; t6 * qJ(2) + t12 * t7 - t8, -t7, t8, 0, 0; 0, 0, 0, 0, 0;];
	Ja_transl = t3;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 17:49:00
	% EndTime: 2019-12-29 17:49:00
	% DurationCPUTime: 0.16s
	% Computational Cost: add. (50->14), mult. (92->18), div. (0->0), fcn. (118->6), ass. (0->16)
	t18 = pkin(1) + pkin(2);
	t11 = sin(qJ(3));
	t12 = sin(qJ(1));
	t13 = cos(qJ(3));
	t14 = cos(qJ(1));
	t1 = -t12 * t11 - t14 * t13;
	t15 = pkin(7) + r_i_i_C(3);
	t2 = t14 * t11 - t12 * t13;
	t6 = sin(qJ(4));
	t7 = cos(qJ(4));
	t10 = -r_i_i_C(1) * t7 + t6 * r_i_i_C(2);
	t8 = pkin(3) - t10;
	t17 = t8 * t1 - t15 * t2;
	t16 = -t15 * t1 - t8 * t2;
	t9 = r_i_i_C(1) * t6 + r_i_i_C(2) * t7;
	t3 = [t14 * qJ(2) - t18 * t12 - t16, t12, t16, t9 * t1, 0; t12 * qJ(2) + t18 * t14 - t17, -t14, t17, t9 * t2, 0; 0, 0, 0, t10, 0;];
	Ja_transl = t3;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 17:48:55
	% EndTime: 2019-12-29 17:48:55
	% DurationCPUTime: 0.20s
	% Computational Cost: add. (90->17), mult. (123->22), div. (0->0), fcn. (155->8), ass. (0->19)
	t10 = qJ(4) + qJ(5);
	t8 = sin(t10);
	t9 = cos(t10);
	t17 = -r_i_i_C(1) * t9 + t8 * r_i_i_C(2);
	t28 = t17 - cos(qJ(4)) * pkin(4);
	t27 = pkin(1) + pkin(2);
	t18 = sin(qJ(3));
	t19 = sin(qJ(1));
	t20 = cos(qJ(3));
	t21 = cos(qJ(1));
	t1 = -t19 * t18 - t21 * t20;
	t15 = pkin(3) - t28;
	t2 = t21 * t18 - t19 * t20;
	t22 = r_i_i_C(3) + pkin(8) + pkin(7);
	t26 = -t22 * t1 - t15 * t2;
	t25 = t15 * t1 - t22 * t2;
	t16 = r_i_i_C(1) * t8 + r_i_i_C(2) * t9;
	t14 = sin(qJ(4)) * pkin(4) + t16;
	t3 = [t21 * qJ(2) - t27 * t19 - t26, t19, t26, t14 * t1, t16 * t1; t19 * qJ(2) + t27 * t21 - t25, -t21, t25, t14 * t2, t16 * t2; 0, 0, 0, t28, t17;];
	Ja_transl = t3;
else
	Ja_transl=NaN(3,5);
end