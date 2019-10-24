% Analytische Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S5PRPRP1
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
%   pkin=[a2,a3,a4,a5,d2,d4,theta1,theta3]';
% 
% Output:
% Ja_transl [3x5]
%   Translatorischer Teil der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-24 10:23
% Revision: 5d02717ba55fba3c5445be8d9f6bf09c2cd6665f (2019-10-14)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S5PRPRP1_jacobia_transl_sym_varpar(qJ, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(5,1),uint8(0),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRPRP1_jacobia_transl_sym_varpar: qJ has to be [5x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S5PRPRP1_jacobia_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5PRPRP1_jacobia_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRPRP1_jacobia_transl_sym_varpar: pkin has to be [8x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:23:17
	% EndTime: 2019-10-24 10:23:17
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:23:17
	% EndTime: 2019-10-24 10:23:17
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 1, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_transl_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:23:17
	% EndTime: 2019-10-24 10:23:17
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (6->3), mult. (4->4), div. (0->0), fcn. (4->2), ass. (0->4)
	t3 = pkin(7) + qJ(2);
	t2 = cos(t3);
	t1 = sin(t3);
	t4 = [0, -t1 * r_i_i_C(1) - t2 * r_i_i_C(2), 0, 0, 0; 0, t2 * r_i_i_C(1) - t1 * r_i_i_C(2), 0, 0, 0; 1, 0, 0, 0, 0;];
	Ja_transl = t4;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:23:17
	% EndTime: 2019-10-24 10:23:17
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (21->7), mult. (14->6), div. (0->0), fcn. (16->4), ass. (0->6)
	t7 = r_i_i_C(3) + qJ(3);
	t6 = r_i_i_C(1) * cos(pkin(8)) - r_i_i_C(2) * sin(pkin(8)) + pkin(2);
	t3 = pkin(7) + qJ(2);
	t2 = cos(t3);
	t1 = sin(t3);
	t4 = [0, -t6 * t1 + t7 * t2, t1, 0, 0; 0, t7 * t1 + t6 * t2, -t2, 0, 0; 1, 0, 0, 0, 0;];
	Ja_transl = t4;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:23:17
	% EndTime: 2019-10-24 10:23:17
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (42->10), mult. (26->11), div. (0->0), fcn. (28->5), ass. (0->11)
	t12 = r_i_i_C(3) + pkin(6) + qJ(3);
	t6 = pkin(8) + qJ(4);
	t2 = sin(t6);
	t4 = cos(t6);
	t11 = t4 * r_i_i_C(1) - t2 * r_i_i_C(2);
	t10 = -r_i_i_C(1) * t2 - r_i_i_C(2) * t4;
	t9 = cos(pkin(8)) * pkin(3) + pkin(2) + t11;
	t7 = pkin(7) + qJ(2);
	t5 = cos(t7);
	t3 = sin(t7);
	t1 = [0, t12 * t5 - t9 * t3, t3, t10 * t5, 0; 0, t12 * t3 + t9 * t5, -t5, t10 * t3, 0; 1, 0, 0, t11, 0;];
	Ja_transl = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:23:17
	% EndTime: 2019-10-24 10:23:17
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (76->13), mult. (46->13), div. (0->0), fcn. (51->5), ass. (0->13)
	t11 = r_i_i_C(3) + qJ(5);
	t13 = pkin(4) + r_i_i_C(1);
	t6 = pkin(8) + qJ(4);
	t2 = sin(t6);
	t4 = cos(t6);
	t10 = t11 * t2 + t13 * t4;
	t14 = cos(pkin(8)) * pkin(3) + pkin(2) + t10;
	t12 = r_i_i_C(2) + pkin(6) + qJ(3);
	t9 = t11 * t4 - t13 * t2;
	t7 = pkin(7) + qJ(2);
	t5 = cos(t7);
	t3 = sin(t7);
	t1 = [0, t12 * t5 - t14 * t3, t3, t9 * t5, t5 * t2; 0, t12 * t3 + t14 * t5, -t5, t9 * t3, t3 * t2; 1, 0, 0, t10, -t4;];
	Ja_transl = t1;
else
	Ja_transl=NaN(3,5);
end