% Analytische Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S6RPPRPR3
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
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d6,theta2,theta5]';
% 
% Output:
% Ja_transl [3x6]
%   Translatorischer Teil der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-09 23:37
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S6RPPRPR3_jacobia_transl_sym_varpar(qJ, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRPR3_jacobia_transl_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RPPRPR3_jacobia_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RPPRPR3_jacobia_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPPRPR3_jacobia_transl_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:37:42
	% EndTime: 2019-10-09 23:37:42
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:37:42
	% EndTime: 2019-10-09 23:37:42
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
	% StartTime: 2019-10-09 23:37:42
	% EndTime: 2019-10-09 23:37:42
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (8->5), mult. (6->6), div. (0->0), fcn. (6->4), ass. (0->4)
	t3 = qJ(1) + pkin(9);
	t2 = cos(t3);
	t1 = sin(t3);
	t4 = [-t1 * r_i_i_C(1) - t2 * r_i_i_C(2) - sin(qJ(1)) * pkin(1), 0, 0, 0, 0, 0; t2 * r_i_i_C(1) - t1 * r_i_i_C(2) + cos(qJ(1)) * pkin(1), 0, 0, 0, 0, 0; 0, 1, 0, 0, 0, 0;];
	Ja_transl = t4;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:37:42
	% EndTime: 2019-10-09 23:37:42
	% DurationCPUTime: 0.11s
	% Computational Cost: add. (19->8), mult. (10->6), div. (0->0), fcn. (12->4), ass. (0->6)
	t5 = pkin(2) - r_i_i_C(2);
	t4 = r_i_i_C(3) + qJ(3);
	t3 = qJ(1) + pkin(9);
	t2 = cos(t3);
	t1 = sin(t3);
	t6 = [-sin(qJ(1)) * pkin(1) + t4 * t2 - t5 * t1, 0, t1, 0, 0, 0; cos(qJ(1)) * pkin(1) + t5 * t2 + t4 * t1, 0, -t2, 0, 0, 0; 0, 1, 0, 0, 0, 0;];
	Ja_transl = t6;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:37:42
	% EndTime: 2019-10-09 23:37:42
	% DurationCPUTime: 0.10s
	% Computational Cost: add. (34->11), mult. (28->12), div. (0->0), fcn. (30->6), ass. (0->10)
	t9 = pkin(2) + pkin(7) + r_i_i_C(3);
	t4 = sin(qJ(4));
	t5 = cos(qJ(4));
	t8 = r_i_i_C(1) * t5 - r_i_i_C(2) * t4;
	t7 = -t4 * r_i_i_C(1) - t5 * r_i_i_C(2);
	t6 = qJ(3) - t7;
	t3 = qJ(1) + pkin(9);
	t2 = cos(t3);
	t1 = sin(t3);
	t10 = [-sin(qJ(1)) * pkin(1) + t6 * t2 - t9 * t1, 0, t1, t8 * t1, 0, 0; cos(qJ(1)) * pkin(1) + t9 * t2 + t6 * t1, 0, -t2, -t8 * t2, 0, 0; 0, 1, 0, t7, 0, 0;];
	Ja_transl = t10;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:37:42
	% EndTime: 2019-10-09 23:37:42
	% DurationCPUTime: 0.10s
	% Computational Cost: add. (57->14), mult. (37->14), div. (0->0), fcn. (41->8), ass. (0->11)
	t13 = pkin(2) + r_i_i_C(3) + qJ(5) + pkin(7);
	t5 = qJ(4) + pkin(10);
	t1 = sin(t5);
	t3 = cos(t5);
	t12 = -t1 * r_i_i_C(1) - t3 * r_i_i_C(2) - sin(qJ(4)) * pkin(4);
	t11 = cos(qJ(4)) * pkin(4) + r_i_i_C(1) * t3 - r_i_i_C(2) * t1;
	t10 = qJ(3) - t12;
	t6 = qJ(1) + pkin(9);
	t4 = cos(t6);
	t2 = sin(t6);
	t7 = [-sin(qJ(1)) * pkin(1) - t13 * t2 + t10 * t4, 0, t2, t11 * t2, t4, 0; cos(qJ(1)) * pkin(1) + t13 * t4 + t10 * t2, 0, -t4, -t11 * t4, t2, 0; 0, 1, 0, t12, 0, 0;];
	Ja_transl = t7;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobia_transl_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:37:42
	% EndTime: 2019-10-09 23:37:42
	% DurationCPUTime: 0.17s
	% Computational Cost: add. (124->29), mult. (96->36), div. (0->0), fcn. (108->10), ass. (0->23)
	t25 = pkin(8) + r_i_i_C(3);
	t9 = qJ(4) + pkin(10);
	t7 = cos(t9);
	t27 = t25 * t7 - sin(qJ(4)) * pkin(4);
	t12 = sin(qJ(6));
	t14 = cos(qJ(6));
	t17 = r_i_i_C(1) * t14 - r_i_i_C(2) * t12 + pkin(5);
	t5 = sin(t9);
	t26 = t17 * t7 + t25 * t5 + cos(qJ(4)) * pkin(4);
	t10 = qJ(1) + pkin(9);
	t6 = sin(t10);
	t23 = t12 * t6;
	t8 = cos(t10);
	t22 = t12 * t8;
	t20 = t14 * t6;
	t19 = t14 * t8;
	t18 = pkin(2) + qJ(5) + pkin(7);
	t16 = t5 * pkin(5) + qJ(3) - t27;
	t4 = t5 * t19 - t23;
	t3 = t5 * t22 + t20;
	t2 = t5 * t20 + t22;
	t1 = -t5 * t23 + t19;
	t11 = [-sin(qJ(1)) * pkin(1) + t4 * r_i_i_C(1) - t3 * r_i_i_C(2) - t18 * t6 + t16 * t8, 0, t6, t26 * t6, t8, r_i_i_C(1) * t1 - r_i_i_C(2) * t2; cos(qJ(1)) * pkin(1) + t2 * r_i_i_C(1) + t1 * r_i_i_C(2) + t18 * t8 + t16 * t6, 0, -t8, -t26 * t8, t6, r_i_i_C(1) * t3 + r_i_i_C(2) * t4; 0, 1, 0, -t17 * t5 + t27, 0, (-r_i_i_C(1) * t12 - r_i_i_C(2) * t14) * t7;];
	Ja_transl = t11;
else
	Ja_transl=NaN(3,6);
end