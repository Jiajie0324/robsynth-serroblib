% Analytische Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S5RRRPP2
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
%   pkin=[a2,a3,a4,a5,d1,d2,d3]';
% 
% Output:
% Ja_transl [3x5]
%   Translatorischer Teil der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-29 19:37
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S5RRRPP2_jacobia_transl_sym_varpar(qJ, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(5,1),uint8(0),zeros(3,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRPP2_jacobia_transl_sym_varpar: qJ has to be [5x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S5RRRPP2_jacobia_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RRRPP2_jacobia_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S5RRRPP2_jacobia_transl_sym_varpar: pkin has to be [7x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 19:37:02
	% EndTime: 2019-12-29 19:37:02
	% DurationCPUTime: 0.10s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 19:37:02
	% EndTime: 2019-12-29 19:37:02
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
	% StartTime: 2019-12-29 19:36:55
	% EndTime: 2019-12-29 19:36:55
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
	% StartTime: 2019-12-29 19:37:07
	% EndTime: 2019-12-29 19:37:08
	% DurationCPUTime: 0.16s
	% Computational Cost: add. (45->9), mult. (40->12), div. (0->0), fcn. (40->6), ass. (0->12)
	t20 = r_i_i_C(3) + pkin(7);
	t11 = sin(qJ(3));
	t12 = cos(qJ(3));
	t19 = t12 * r_i_i_C(1) - t11 * r_i_i_C(2);
	t18 = -pkin(2) - t19;
	t15 = -r_i_i_C(1) * t11 - r_i_i_C(2) * t12;
	t10 = qJ(1) + qJ(2);
	t8 = sin(t10);
	t9 = cos(t10);
	t14 = -t18 * t9 + t20 * t8;
	t13 = t18 * t8 + t20 * t9;
	t1 = [-sin(qJ(1)) * pkin(1) + t13, t13, t15 * t9, 0, 0; cos(qJ(1)) * pkin(1) + t14, t14, t15 * t8, 0, 0; 0, 0, t19, 0, 0;];
	Ja_transl = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 19:37:07
	% EndTime: 2019-12-29 19:37:08
	% DurationCPUTime: 0.17s
	% Computational Cost: add. (74->14), mult. (68->15), div. (0->0), fcn. (71->6), ass. (0->15)
	t14 = cos(qJ(3));
	t21 = pkin(3) + r_i_i_C(1);
	t24 = t21 * t14;
	t23 = r_i_i_C(2) + pkin(7);
	t18 = r_i_i_C(3) + qJ(4);
	t13 = sin(qJ(3));
	t22 = t18 * t13 + t24;
	t12 = qJ(1) + qJ(2);
	t11 = cos(t12);
	t20 = t11 * t13;
	t10 = sin(t12);
	t17 = t23 * t10 + t18 * t20 + (pkin(2) + t24) * t11;
	t16 = -t21 * t13 + t18 * t14;
	t15 = (-pkin(2) - t22) * t10 + t23 * t11;
	t1 = [-sin(qJ(1)) * pkin(1) + t15, t15, t16 * t11, t20, 0; cos(qJ(1)) * pkin(1) + t17, t17, t16 * t10, t10 * t13, 0; 0, 0, t22, -t14, 0;];
	Ja_transl = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 19:37:07
	% EndTime: 2019-12-29 19:37:07
	% DurationCPUTime: 0.18s
	% Computational Cost: add. (98->15), mult. (85->15), div. (0->0), fcn. (90->6), ass. (0->15)
	t24 = pkin(7) - r_i_i_C(3) - qJ(5);
	t13 = cos(qJ(3));
	t17 = pkin(3) + pkin(4) + r_i_i_C(1);
	t23 = t17 * t13;
	t19 = r_i_i_C(2) + qJ(4);
	t12 = sin(qJ(3));
	t22 = t19 * t12 + t23;
	t11 = qJ(1) + qJ(2);
	t10 = cos(t11);
	t21 = t10 * t12;
	t16 = -t17 * t12 + t19 * t13;
	t9 = sin(t11);
	t15 = t19 * t21 + t24 * t9 + (pkin(2) + t23) * t10;
	t14 = (-pkin(2) - t22) * t9 + t24 * t10;
	t1 = [-sin(qJ(1)) * pkin(1) + t14, t14, t16 * t10, t21, -t9; cos(qJ(1)) * pkin(1) + t15, t15, t16 * t9, t9 * t12, t10; 0, 0, t22, -t13, 0;];
	Ja_transl = t1;
else
	Ja_transl=NaN(3,5);
end