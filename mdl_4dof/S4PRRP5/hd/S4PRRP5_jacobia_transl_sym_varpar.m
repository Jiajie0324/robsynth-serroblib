% Analytische Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S4PRRP5
% 
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% (Ist für translatorischen Teil egal, kennzeichnet nur den Rechenweg der Herleitung)
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt (0=Basis).
% r_i_i_C [3x1]
%   Ortsvektor vom KörperKS-Ursprung zum gesuchten Punkt
% pkin [6x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d2,d3,theta1]';
% 
% Output:
% Ja_transl [3x4]
%   Translatorischer Teil der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 16:29
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S4PRRP5_jacobia_transl_sym_varpar(qJ, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(4,1),uint8(0),zeros(3,1),zeros(6,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PRRP5_jacobia_transl_sym_varpar: qJ has to be [4x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S4PRRP5_jacobia_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S4PRRP5_jacobia_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S4PRRP5_jacobia_transl_sym_varpar: pkin has to be [6x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 16:29:29
	% EndTime: 2019-12-31 16:29:29
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0; 0, 0, 0, 0; 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 16:29:29
	% EndTime: 2019-12-31 16:29:29
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0; 0, 0, 0, 0; 1, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_transl_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 16:29:29
	% EndTime: 2019-12-31 16:29:29
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (3->2), mult. (10->6), div. (0->0), fcn. (10->4), ass. (0->4)
	t3 = sin(qJ(2));
	t4 = cos(qJ(2));
	t5 = -r_i_i_C(1) * t3 - r_i_i_C(2) * t4;
	t1 = [0, t5 * cos(pkin(6)), 0, 0; 0, t5 * sin(pkin(6)), 0, 0; 1, t4 * r_i_i_C(1) - t3 * r_i_i_C(2), 0, 0;];
	Ja_transl = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 16:29:29
	% EndTime: 2019-12-31 16:29:29
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (19->12), mult. (51->25), div. (0->0), fcn. (55->6), ass. (0->12)
	t3 = sin(qJ(3));
	t6 = cos(qJ(2));
	t11 = t3 * t6;
	t5 = cos(qJ(3));
	t10 = t5 * t6;
	t9 = pkin(5) + r_i_i_C(3);
	t8 = t5 * r_i_i_C(1) - t3 * r_i_i_C(2) + pkin(2);
	t4 = sin(qJ(2));
	t7 = -t8 * t4 + t9 * t6;
	t2 = cos(pkin(6));
	t1 = sin(pkin(6));
	t12 = [0, t7 * t2, (t1 * t5 - t2 * t11) * r_i_i_C(1) + (-t1 * t3 - t2 * t10) * r_i_i_C(2), 0; 0, t7 * t1, (-t1 * t11 - t2 * t5) * r_i_i_C(1) + (-t1 * t10 + t2 * t3) * r_i_i_C(2), 0; 1, t9 * t4 + t8 * t6, (-r_i_i_C(1) * t3 - r_i_i_C(2) * t5) * t4, 0;];
	Ja_transl = t12;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 16:29:29
	% EndTime: 2019-12-31 16:29:29
	% DurationCPUTime: 0.13s
	% Computational Cost: add. (31->14), mult. (68->27), div. (0->0), fcn. (75->6), ass. (0->13)
	t16 = pkin(3) + r_i_i_C(1);
	t5 = sin(qJ(3));
	t8 = cos(qJ(2));
	t15 = t5 * t8;
	t7 = cos(qJ(3));
	t14 = t7 * t8;
	t13 = r_i_i_C(3) + qJ(4) + pkin(5);
	t10 = -r_i_i_C(2) * t5 + t16 * t7 + pkin(2);
	t6 = sin(qJ(2));
	t9 = -t10 * t6 + t13 * t8;
	t3 = cos(pkin(6));
	t2 = sin(pkin(6));
	t1 = [0, t9 * t3, (-t3 * t14 - t2 * t5) * r_i_i_C(2) + t16 * (-t3 * t15 + t2 * t7), t3 * t6; 0, t9 * t2, (-t2 * t14 + t3 * t5) * r_i_i_C(2) + t16 * (-t2 * t15 - t3 * t7), t2 * t6; 1, t10 * t8 + t13 * t6, (-r_i_i_C(2) * t7 - t16 * t5) * t6, -t8;];
	Ja_transl = t1;
else
	Ja_transl=NaN(3,4);
end