% Analytische Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S5RRPRP1
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
%   pkin=[a2,a3,a4,a5,d1,d2,d4,theta3]';
% 
% Output:
% Ja_transl [3x5]
%   Translatorischer Teil der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2020-01-03 11:59
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S5RRPRP1_jacobia_transl_sym_varpar(qJ, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(5,1),uint8(0),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRP1_jacobia_transl_sym_varpar: qJ has to be [5x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S5RRPRP1_jacobia_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RRPRP1_jacobia_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RRPRP1_jacobia_transl_sym_varpar: pkin has to be [8x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2020-01-03 11:59:31
	% EndTime: 2020-01-03 11:59:31
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2020-01-03 11:59:31
	% EndTime: 2020-01-03 11:59:31
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (2->2), mult. (4->4), div. (0->0), fcn. (4->2), ass. (0->3)
	t2 = cos(qJ(1));
	t1 = sin(qJ(1));
	t3 = [0, 0, 0, 0, 0; r_i_i_C(1) * t2 - r_i_i_C(2) * t1, 0, 0, 0, 0; r_i_i_C(1) * t1 + r_i_i_C(2) * t2, 0, 0, 0, 0;];
	Ja_transl = t3;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_transl_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2020-01-03 11:59:31
	% EndTime: 2020-01-03 11:59:31
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (14->5), mult. (10->6), div. (0->0), fcn. (10->4), ass. (0->6)
	t6 = qJ(1) + qJ(2);
	t4 = sin(t6);
	t5 = cos(t6);
	t8 = t4 * r_i_i_C(1) + t5 * r_i_i_C(2);
	t7 = t5 * r_i_i_C(1) - t4 * r_i_i_C(2);
	t1 = [0, 0, 0, 0, 0; cos(qJ(1)) * pkin(1) + t7, t7, 0, 0, 0; sin(qJ(1)) * pkin(1) + t8, t8, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2020-01-03 11:59:31
	% EndTime: 2020-01-03 11:59:31
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (30->8), mult. (14->8), div. (0->0), fcn. (14->6), ass. (0->7)
	t9 = qJ(1) + qJ(2);
	t8 = pkin(8) + t9;
	t4 = sin(t8);
	t5 = cos(t8);
	t11 = t4 * r_i_i_C(1) + t5 * r_i_i_C(2) + pkin(2) * sin(t9);
	t10 = t5 * r_i_i_C(1) - t4 * r_i_i_C(2) + pkin(2) * cos(t9);
	t1 = [0, 0, 1, 0, 0; cos(qJ(1)) * pkin(1) + t10, t10, 0, 0, 0; sin(qJ(1)) * pkin(1) + t11, t11, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2020-01-03 11:59:31
	% EndTime: 2020-01-03 11:59:31
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (77->13), mult. (44->14), div. (0->0), fcn. (44->8), ass. (0->13)
	t22 = pkin(7) + r_i_i_C(3);
	t13 = sin(qJ(4));
	t14 = cos(qJ(4));
	t21 = t14 * r_i_i_C(1) - t13 * r_i_i_C(2);
	t20 = pkin(3) + t21;
	t12 = qJ(1) + qJ(2);
	t17 = r_i_i_C(1) * t13 + r_i_i_C(2) * t14;
	t11 = pkin(8) + t12;
	t7 = sin(t11);
	t8 = cos(t11);
	t16 = pkin(2) * cos(t12) + t22 * t7 + t20 * t8;
	t15 = pkin(2) * sin(t12) - t22 * t8 + t20 * t7;
	t1 = [0, 0, 1, t21, 0; cos(qJ(1)) * pkin(1) + t16, t16, 0, -t17 * t7, 0; sin(qJ(1)) * pkin(1) + t15, t15, 0, t17 * t8, 0;];
	Ja_transl = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2020-01-03 11:59:31
	% EndTime: 2020-01-03 11:59:31
	% DurationCPUTime: 0.09s
	% Computational Cost: add. (98->16), mult. (53->14), div. (0->0), fcn. (55->8), ass. (0->14)
	t29 = pkin(4) + r_i_i_C(1);
	t16 = sin(qJ(4));
	t17 = cos(qJ(4));
	t28 = -t16 * r_i_i_C(2) + t29 * t17;
	t27 = r_i_i_C(3) + qJ(5) + pkin(7);
	t25 = pkin(3) + t28;
	t24 = r_i_i_C(2) * t17 + t29 * t16;
	t14 = qJ(1) + qJ(2);
	t12 = pkin(8) + t14;
	t7 = sin(t12);
	t8 = cos(t12);
	t19 = pkin(2) * sin(t14) - t27 * t8 + t25 * t7;
	t18 = pkin(2) * cos(t14) + t27 * t7 + t25 * t8;
	t1 = [0, 0, 1, t28, 0; cos(qJ(1)) * pkin(1) + t18, t18, 0, -t24 * t7, -t8; sin(qJ(1)) * pkin(1) + t19, t19, 0, t24 * t8, -t7;];
	Ja_transl = t1;
else
	Ja_transl=NaN(3,5);
end