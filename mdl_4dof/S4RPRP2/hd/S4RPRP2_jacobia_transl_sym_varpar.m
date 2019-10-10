% Analytische Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S4RPRP2
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
% pkin [5x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d3]';
% 
% Output:
% Ja_transl [3x4]
%   Translatorischer Teil der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-09 20:44
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S4RPRP2_jacobia_transl_sym_varpar(qJ, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(4,1),uint8(0),zeros(3,1),zeros(5,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RPRP2_jacobia_transl_sym_varpar: qJ has to be [4x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S4RPRP2_jacobia_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S4RPRP2_jacobia_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [5 1]), ...
  'S4RPRP2_jacobia_transl_sym_varpar: pkin has to be [5x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 20:44:43
	% EndTime: 2019-10-09 20:44:44
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0; 0, 0, 0, 0; 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 20:44:43
	% EndTime: 2019-10-09 20:44:44
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (2->2), mult. (4->4), div. (0->0), fcn. (4->2), ass. (0->3)
	t2 = cos(qJ(1));
	t1 = sin(qJ(1));
	t3 = [-r_i_i_C(1) * t1 - r_i_i_C(2) * t2, 0, 0, 0; r_i_i_C(1) * t2 - r_i_i_C(2) * t1, 0, 0, 0; 0, 0, 0, 0;];
	Ja_transl = t3;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_transl_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 20:44:43
	% EndTime: 2019-10-09 20:44:44
	% DurationCPUTime: 0.12s
	% Computational Cost: add. (7->5), mult. (8->4), div. (0->0), fcn. (10->2), ass. (0->5)
	t4 = pkin(1) + r_i_i_C(1);
	t3 = r_i_i_C(3) + qJ(2);
	t2 = cos(qJ(1));
	t1 = sin(qJ(1));
	t5 = [-t1 * t4 + t2 * t3, t1, 0, 0; t1 * t3 + t2 * t4, -t2, 0, 0; 0, 0, 0, 0;];
	Ja_transl = t5;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 20:44:43
	% EndTime: 2019-10-09 20:44:44
	% DurationCPUTime: 0.09s
	% Computational Cost: add. (19->10), mult. (30->12), div. (0->0), fcn. (40->4), ass. (0->10)
	t12 = pkin(1) + pkin(2);
	t11 = cos(qJ(3));
	t10 = sin(qJ(3));
	t6 = sin(qJ(1));
	t7 = cos(qJ(1));
	t1 = -t10 * t6 - t11 * t7;
	t2 = t10 * t7 - t11 * t6;
	t9 = -t2 * r_i_i_C(1) + t1 * r_i_i_C(2);
	t8 = t1 * r_i_i_C(1) + t2 * r_i_i_C(2);
	t3 = [t7 * qJ(2) - t12 * t6 - t9, t6, t9, 0; t6 * qJ(2) + t12 * t7 - t8, -t7, t8, 0; 0, 0, 0, 0;];
	Ja_transl = t3;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 20:44:43
	% EndTime: 2019-10-09 20:44:44
	% DurationCPUTime: 0.10s
	% Computational Cost: add. (27->14), mult. (44->16), div. (0->0), fcn. (54->4), ass. (0->11)
	t9 = cos(qJ(3));
	t14 = pkin(3) * t9 + pkin(1) + pkin(2);
	t7 = sin(qJ(3));
	t13 = pkin(3) * t7 + qJ(2);
	t10 = cos(qJ(1));
	t8 = sin(qJ(1));
	t1 = -t10 * t9 - t7 * t8;
	t2 = t10 * t7 - t8 * t9;
	t12 = -t2 * r_i_i_C(1) + t1 * r_i_i_C(2);
	t11 = t1 * r_i_i_C(1) + t2 * r_i_i_C(2);
	t3 = [t10 * t13 - t14 * t8 - t12, t8, -pkin(3) * t2 + t12, 0; t10 * t14 + t13 * t8 - t11, -t10, pkin(3) * t1 + t11, 0; 0, 0, 0, -1;];
	Ja_transl = t3;
else
	Ja_transl=NaN(3,4);
end