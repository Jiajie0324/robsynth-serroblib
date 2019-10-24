% Analytische Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S5PRPPR2
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
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d5,theta1,theta3,theta4]';
% 
% Output:
% Ja_transl [3x5]
%   Translatorischer Teil der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-24 10:22
% Revision: 5d02717ba55fba3c5445be8d9f6bf09c2cd6665f (2019-10-14)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S5PRPPR2_jacobia_transl_sym_varpar(qJ, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(5,1),uint8(0),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRPPR2_jacobia_transl_sym_varpar: qJ has to be [5x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S5PRPPR2_jacobia_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5PRPPR2_jacobia_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PRPPR2_jacobia_transl_sym_varpar: pkin has to be [9x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:22:30
	% EndTime: 2019-10-24 10:22:30
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:22:30
	% EndTime: 2019-10-24 10:22:30
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 1, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_transl_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:22:30
	% EndTime: 2019-10-24 10:22:30
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (3->2), mult. (10->6), div. (0->0), fcn. (10->4), ass. (0->4)
	t3 = sin(qJ(2));
	t4 = cos(qJ(2));
	t5 = -r_i_i_C(1) * t3 - r_i_i_C(2) * t4;
	t1 = [0, t5 * cos(pkin(7)), 0, 0, 0; 0, t5 * sin(pkin(7)), 0, 0, 0; 1, r_i_i_C(1) * t4 - r_i_i_C(2) * t3, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:22:30
	% EndTime: 2019-10-24 10:22:30
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (13->6), mult. (15->8), div. (0->0), fcn. (17->6), ass. (0->7)
	t3 = qJ(2) + pkin(8);
	t1 = sin(t3);
	t2 = cos(t3);
	t7 = -sin(qJ(2)) * pkin(2) - r_i_i_C(1) * t1 - r_i_i_C(2) * t2;
	t5 = cos(pkin(7));
	t4 = sin(pkin(7));
	t6 = [0, t7 * t5, t4, 0, 0; 0, t7 * t4, -t5, 0, 0; 1, t2 * r_i_i_C(1) - t1 * r_i_i_C(2) + cos(qJ(2)) * pkin(2), 0, 0, 0;];
	Ja_transl = t6;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:22:30
	% EndTime: 2019-10-24 10:22:30
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (35->10), mult. (38->12), div. (0->0), fcn. (43->8), ass. (0->9)
	t11 = r_i_i_C(3) + qJ(4);
	t10 = r_i_i_C(1) * cos(pkin(9)) - r_i_i_C(2) * sin(pkin(9)) + pkin(3);
	t3 = qJ(2) + pkin(8);
	t1 = sin(t3);
	t2 = cos(t3);
	t9 = -sin(qJ(2)) * pkin(2) - t10 * t1 + t11 * t2;
	t7 = cos(pkin(7));
	t5 = sin(pkin(7));
	t4 = [0, t9 * t7, t5, t7 * t1, 0; 0, t9 * t5, -t7, t5 * t1, 0; 1, cos(qJ(2)) * pkin(2) + t11 * t1 + t10 * t2, 0, -t2, 0;];
	Ja_transl = t4;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:22:30
	% EndTime: 2019-10-24 10:22:30
	% DurationCPUTime: 0.09s
	% Computational Cost: add. (70->19), mult. (61->30), div. (0->0), fcn. (70->9), ass. (0->14)
	t7 = qJ(2) + pkin(8);
	t5 = cos(t7);
	t8 = sin(pkin(7));
	t16 = t5 * t8;
	t9 = cos(pkin(7));
	t15 = t5 * t9;
	t14 = r_i_i_C(3) + pkin(6) + qJ(4);
	t6 = pkin(9) + qJ(5);
	t2 = sin(t6);
	t4 = cos(t6);
	t13 = r_i_i_C(1) * t4 - r_i_i_C(2) * t2 + cos(pkin(9)) * pkin(4) + pkin(3);
	t3 = sin(t7);
	t12 = -sin(qJ(2)) * pkin(2) - t13 * t3 + t14 * t5;
	t1 = [0, t12 * t9, t8, t9 * t3, (-t2 * t15 + t4 * t8) * r_i_i_C(1) + (-t4 * t15 - t2 * t8) * r_i_i_C(2); 0, t12 * t8, -t9, t8 * t3, (-t2 * t16 - t4 * t9) * r_i_i_C(1) + (-t4 * t16 + t2 * t9) * r_i_i_C(2); 1, cos(qJ(2)) * pkin(2) + t14 * t3 + t13 * t5, 0, -t5, (-r_i_i_C(1) * t2 - r_i_i_C(2) * t4) * t3;];
	Ja_transl = t1;
else
	Ja_transl=NaN(3,5);
end