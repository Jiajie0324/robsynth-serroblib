% Analytische Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S5PRPRR9
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
%   pkin=[a2,a3,a4,a5,d2,d4,d5,theta1]';
% 
% Output:
% Ja_transl [3x5]
%   Translatorischer Teil der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 17:40
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S5PRPRR9_jacobia_transl_sym_varpar(qJ, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(5,1),uint8(0),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRPRR9_jacobia_transl_sym_varpar: qJ has to be [5x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S5PRPRR9_jacobia_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5PRPRR9_jacobia_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRPRR9_jacobia_transl_sym_varpar: pkin has to be [8x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 17:39:59
	% EndTime: 2019-12-31 17:39:59
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 17:39:59
	% EndTime: 2019-12-31 17:39:59
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 1, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_transl_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 17:39:59
	% EndTime: 2019-12-31 17:39:59
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (6->3), mult. (4->4), div. (0->0), fcn. (4->2), ass. (0->4)
	t3 = pkin(8) + qJ(2);
	t2 = cos(t3);
	t1 = sin(t3);
	t4 = [0, -t1 * r_i_i_C(1) - t2 * r_i_i_C(2), 0, 0, 0; 0, t2 * r_i_i_C(1) - t1 * r_i_i_C(2), 0, 0, 0; 1, 0, 0, 0, 0;];
	Ja_transl = t4;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 17:39:59
	% EndTime: 2019-12-31 17:39:59
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (17->6), mult. (8->4), div. (0->0), fcn. (10->2), ass. (0->6)
	t5 = pkin(2) + r_i_i_C(1);
	t4 = r_i_i_C(3) + qJ(3);
	t3 = pkin(8) + qJ(2);
	t2 = cos(t3);
	t1 = sin(t3);
	t6 = [0, -t5 * t1 + t4 * t2, t1, 0, 0; 0, t4 * t1 + t5 * t2, -t2, 0, 0; 1, 0, 0, 0, 0;];
	Ja_transl = t6;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 17:39:59
	% EndTime: 2019-12-31 17:39:59
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (43->11), mult. (30->12), div. (0->0), fcn. (40->4), ass. (0->11)
	t13 = pkin(2) + pkin(3);
	t12 = cos(qJ(4));
	t11 = sin(qJ(4));
	t8 = pkin(8) + qJ(2);
	t6 = sin(t8);
	t7 = cos(t8);
	t1 = -t6 * t11 - t7 * t12;
	t2 = t7 * t11 - t6 * t12;
	t10 = -t2 * r_i_i_C(1) + t1 * r_i_i_C(2);
	t9 = t1 * r_i_i_C(1) + t2 * r_i_i_C(2);
	t3 = [0, t7 * qJ(3) - t13 * t6 - t10, t6, t10, 0; 0, t6 * qJ(3) + t13 * t7 - t9, -t7, t9, 0; 1, 0, 0, 0, 0;];
	Ja_transl = t3;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 17:39:59
	% EndTime: 2019-12-31 17:39:59
	% DurationCPUTime: 0.09s
	% Computational Cost: add. (106->15), mult. (92->18), div. (0->0), fcn. (118->6), ass. (0->17)
	t19 = pkin(2) + pkin(3);
	t13 = pkin(8) + qJ(2);
	t11 = sin(t13);
	t12 = cos(t13);
	t14 = sin(qJ(4));
	t15 = cos(qJ(4));
	t1 = -t11 * t14 - t12 * t15;
	t16 = pkin(7) + r_i_i_C(3);
	t2 = -t11 * t15 + t12 * t14;
	t6 = sin(qJ(5));
	t7 = cos(qJ(5));
	t10 = -r_i_i_C(1) * t7 + t6 * r_i_i_C(2);
	t8 = pkin(4) - t10;
	t18 = t8 * t1 - t16 * t2;
	t17 = -t16 * t1 - t8 * t2;
	t9 = r_i_i_C(1) * t6 + r_i_i_C(2) * t7;
	t3 = [0, t12 * qJ(3) - t19 * t11 - t17, t11, t17, t9 * t1; 0, t11 * qJ(3) + t19 * t12 - t18, -t12, t18, t9 * t2; 1, 0, 0, 0, t10;];
	Ja_transl = t3;
else
	Ja_transl=NaN(3,5);
end