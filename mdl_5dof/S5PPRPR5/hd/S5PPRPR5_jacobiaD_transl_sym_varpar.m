% Zeitableitung der analytischen Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S5PPRPR5
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
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d3,d5,theta1]';
% 
% Output:
% JaD_transl [3x5]
%   Translatorischer Teil der analytischen Jacobi-Matrix (Zeitableitung)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-29 15:20
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_transl = S5PPRPR5_jacobiaD_transl_sym_varpar(qJ, qJD, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),uint8(0),zeros(3,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PPRPR5_jacobiaD_transl_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PPRPR5_jacobiaD_transl_sym_varpar: qJD has to be [5x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S5PPRPR5_jacobiaD_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5PPRPR5_jacobiaD_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S5PPRPR5_jacobiaD_transl_sym_varpar: pkin has to be [7x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiaD_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 15:20:31
	% EndTime: 2019-12-29 15:20:31
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiaD_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 15:20:30
	% EndTime: 2019-12-29 15:20:30
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiaD_transl_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 15:20:20
	% EndTime: 2019-12-29 15:20:20
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiaD_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 15:20:37
	% EndTime: 2019-12-29 15:20:37
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (6->4), mult. (20->10), div. (0->0), fcn. (16->4), ass. (0->7)
	t49 = cos(qJ(3));
	t48 = sin(qJ(3));
	t47 = cos(pkin(7));
	t46 = sin(pkin(7));
	t45 = (t46 * t48 + t47 * t49) * qJD(3);
	t44 = (-t46 * t49 + t47 * t48) * qJD(3);
	t1 = [0, 0, -t45 * r_i_i_C(1) + t44 * r_i_i_C(2), 0, 0; 0, 0, t44 * r_i_i_C(1) + t45 * r_i_i_C(2), 0, 0; 0, 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiaD_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 15:20:37
	% EndTime: 2019-12-29 15:20:37
	% DurationCPUTime: 0.11s
	% Computational Cost: add. (20->9), mult. (54->12), div. (0->0), fcn. (48->4), ass. (0->11)
	t21 = sin(pkin(7));
	t22 = cos(pkin(7));
	t23 = sin(qJ(3));
	t24 = cos(qJ(3));
	t30 = -t21 * t24 + t22 * t23;
	t29 = pkin(3) - r_i_i_C(2);
	t26 = -r_i_i_C(3) - qJ(4);
	t25 = t21 * t23 + t22 * t24;
	t19 = t25 * qJD(3);
	t18 = t30 * qJD(3);
	t1 = [0, 0, t25 * qJD(4) + t26 * t18 - t29 * t19, t19, 0; 0, 0, -t30 * qJD(4) + t29 * t18 + t26 * t19, -t18, 0; 0, 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiaD_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 15:20:37
	% EndTime: 2019-12-29 15:20:37
	% DurationCPUTime: 0.16s
	% Computational Cost: add. (51->19), mult. (146->31), div. (0->0), fcn. (130->6), ass. (0->17)
	t57 = sin(pkin(7));
	t58 = cos(pkin(7));
	t59 = sin(qJ(3));
	t60 = cos(qJ(3));
	t42 = -t57 * t60 + t58 * t59;
	t47 = sin(qJ(5));
	t48 = cos(qJ(5));
	t61 = (r_i_i_C(1) * t48 - r_i_i_C(2) * t47) * qJD(5);
	t56 = qJD(5) * t47;
	t55 = qJD(5) * t48;
	t54 = pkin(3) + pkin(6) + r_i_i_C(3);
	t50 = -r_i_i_C(1) * t47 - r_i_i_C(2) * t48 - qJ(4);
	t49 = -qJD(4) - t61;
	t41 = -t57 * t59 - t58 * t60;
	t40 = t41 * qJD(3);
	t39 = t42 * qJD(3);
	t1 = [0, 0, t50 * t39 + t54 * t40 + t49 * t41, -t40, (t40 * t47 - t42 * t55) * r_i_i_C(2) + (-t40 * t48 - t42 * t56) * r_i_i_C(1); 0, 0, t54 * t39 - t50 * t40 + t49 * t42, -t39, (t39 * t47 + t41 * t55) * r_i_i_C(2) + (-t39 * t48 + t41 * t56) * r_i_i_C(1); 0, 0, 0, 0, t61;];
	JaD_transl = t1;
else
	JaD_transl=NaN(3,5);
end