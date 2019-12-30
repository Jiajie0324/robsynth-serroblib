% Zeitableitung der analytischen Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S5PRPPR5
% 
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% (Ist für translatorischen Teil egal, kennzeichnet nur den Rechenweg der Herleitung)
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt (0=Basis).
% r_i_i_C [3x1]
%   Ortsvektor vom KörperKS-Ursprung zum gesuchten Punkt
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d5,theta1,theta4]';
% 
% Output:
% JaD_transl [3x5]
%   Translatorischer Teil der analytischen Jacobi-Matrix (Zeitableitung)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-29 15:31
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_transl = S5PRPPR5_jacobiaD_transl_sym_varpar(qJ, qJD, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),uint8(0),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRPPR5_jacobiaD_transl_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRPPR5_jacobiaD_transl_sym_varpar: qJD has to be [5x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S5PRPPR5_jacobiaD_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5PRPPR5_jacobiaD_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRPPR5_jacobiaD_transl_sym_varpar: pkin has to be [8x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiaD_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 15:31:25
	% EndTime: 2019-12-29 15:31:25
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiaD_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 15:31:30
	% EndTime: 2019-12-29 15:31:30
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiaD_transl_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 15:31:20
	% EndTime: 2019-12-29 15:31:20
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (3->2), mult. (16->8), div. (0->0), fcn. (10->4), ass. (0->4)
	t12 = sin(qJ(2));
	t13 = cos(qJ(2));
	t14 = qJD(2) * (-r_i_i_C(1) * t13 + r_i_i_C(2) * t12);
	t1 = [0, cos(pkin(7)) * t14, 0, 0, 0; 0, sin(pkin(7)) * t14, 0, 0, 0; 0, (-r_i_i_C(1) * t12 - r_i_i_C(2) * t13) * qJD(2), 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiaD_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 15:31:25
	% EndTime: 2019-12-29 15:31:25
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (12->6), mult. (42->14), div. (0->0), fcn. (30->4), ass. (0->9)
	t98 = -pkin(2) - r_i_i_C(1);
	t97 = r_i_i_C(3) + qJ(3);
	t94 = cos(qJ(2));
	t96 = qJD(2) * t94;
	t93 = sin(qJ(2));
	t95 = qJD(3) * t94 + (-t97 * t93 + t98 * t94) * qJD(2);
	t92 = cos(pkin(7));
	t91 = sin(pkin(7));
	t1 = [0, t95 * t92, t92 * t96, 0, 0; 0, t95 * t91, t91 * t96, 0, 0; 0, t93 * qJD(3) + (t98 * t93 + t97 * t94) * qJD(2), qJD(2) * t93, 0, 0;];
	JaD_transl = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiaD_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 15:31:25
	% EndTime: 2019-12-29 15:31:25
	% DurationCPUTime: 0.13s
	% Computational Cost: add. (21->9), mult. (72->18), div. (0->0), fcn. (57->6), ass. (0->11)
	t23 = cos(qJ(2));
	t27 = qJD(2) * t23;
	t18 = sin(pkin(8));
	t20 = cos(pkin(8));
	t26 = r_i_i_C(1) * t18 + r_i_i_C(2) * t20 + qJ(3);
	t25 = -r_i_i_C(1) * t20 + r_i_i_C(2) * t18 - pkin(2) - pkin(3);
	t22 = sin(qJ(2));
	t24 = t23 * qJD(3) + (-t22 * t26 + t23 * t25) * qJD(2);
	t21 = cos(pkin(7));
	t19 = sin(pkin(7));
	t1 = [0, t24 * t21, t21 * t27, 0, 0; 0, t24 * t19, t19 * t27, 0, 0; 0, t22 * qJD(3) + (t22 * t25 + t23 * t26) * qJD(2), qJD(2) * t22, 0, 0;];
	JaD_transl = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiaD_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 15:31:26
	% EndTime: 2019-12-29 15:31:26
	% DurationCPUTime: 0.21s
	% Computational Cost: add. (76->30), mult. (259->61), div. (0->0), fcn. (233->8), ass. (0->26)
	t207 = sin(qJ(2));
	t209 = cos(qJ(2));
	t206 = sin(qJ(5));
	t208 = cos(qJ(5));
	t213 = qJD(2) * (t208 * r_i_i_C(1) - t206 * r_i_i_C(2) + pkin(4));
	t218 = -t206 * r_i_i_C(1) - t208 * r_i_i_C(2);
	t215 = qJD(5) * t218;
	t202 = sin(pkin(8));
	t204 = cos(pkin(8));
	t216 = t207 * t202 + t209 * t204;
	t217 = t209 * t202 - t207 * t204;
	t223 = -pkin(2) - pkin(3);
	t224 = -t216 * t213 + t217 * t215 + qJD(3) * t209 + (-qJ(3) * t207 + t223 * t209) * qJD(2);
	t222 = pkin(6) + r_i_i_C(3);
	t221 = qJD(2) * t207;
	t220 = qJD(2) * t209;
	t219 = qJD(5) * t217;
	t214 = t217 * qJD(2);
	t205 = cos(pkin(7));
	t203 = sin(pkin(7));
	t196 = -t202 * t221 - t204 * t220;
	t195 = t216 * t205;
	t193 = t216 * t203;
	t191 = t205 * t214;
	t189 = t203 * t214;
	t1 = [0, -t222 * t191 + t224 * t205, t205 * t220, 0, t218 * t191 + ((-t195 * t208 + t203 * t206) * r_i_i_C(1) + (t195 * t206 + t203 * t208) * r_i_i_C(2)) * qJD(5); 0, -t222 * t189 + t224 * t203, t203 * t220, 0, t218 * t189 + ((-t193 * t208 - t205 * t206) * r_i_i_C(1) + (t193 * t206 - t205 * t208) * r_i_i_C(2)) * qJD(5); 0, t207 * qJD(3) + t222 * t196 + t216 * t215 + t217 * t213 + (qJ(3) * t209 + t223 * t207) * qJD(2), t221, 0, (t196 * t208 - t206 * t219) * r_i_i_C(2) + (t196 * t206 + t208 * t219) * r_i_i_C(1);];
	JaD_transl = t1;
else
	JaD_transl=NaN(3,5);
end