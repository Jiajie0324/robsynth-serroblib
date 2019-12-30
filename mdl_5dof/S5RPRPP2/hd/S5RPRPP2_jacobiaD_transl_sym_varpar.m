% Zeitableitung der analytischen Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S5RPRPP2
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
%   pkin=[a2,a3,a4,a5,d1,d3,theta2]';
% 
% Output:
% JaD_transl [3x5]
%   Translatorischer Teil der analytischen Jacobi-Matrix (Zeitableitung)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-29 16:35
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_transl = S5RPRPP2_jacobiaD_transl_sym_varpar(qJ, qJD, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),uint8(0),zeros(3,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRPP2_jacobiaD_transl_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRPP2_jacobiaD_transl_sym_varpar: qJD has to be [5x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S5RPRPP2_jacobiaD_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RPRPP2_jacobiaD_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S5RPRPP2_jacobiaD_transl_sym_varpar: pkin has to be [7x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiaD_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 16:35:18
	% EndTime: 2019-12-29 16:35:18
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiaD_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 16:35:23
	% EndTime: 2019-12-29 16:35:23
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (2->2), mult. (8->6), div. (0->0), fcn. (4->2), ass. (0->3)
	t27 = cos(qJ(1));
	t26 = sin(qJ(1));
	t1 = [(-r_i_i_C(1) * t27 + r_i_i_C(2) * t26) * qJD(1), 0, 0, 0, 0; (-r_i_i_C(1) * t26 - r_i_i_C(2) * t27) * qJD(1), 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiaD_transl_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 16:35:23
	% EndTime: 2019-12-29 16:35:23
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (8->5), mult. (12->8), div. (0->0), fcn. (6->4), ass. (0->4)
	t32 = qJ(1) + pkin(7);
	t31 = cos(t32);
	t30 = sin(t32);
	t1 = [(-cos(qJ(1)) * pkin(1) - r_i_i_C(1) * t31 + r_i_i_C(2) * t30) * qJD(1), 0, 0, 0, 0; (-sin(qJ(1)) * pkin(1) - r_i_i_C(1) * t30 - r_i_i_C(2) * t31) * qJD(1), 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiaD_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 16:35:18
	% EndTime: 2019-12-29 16:35:18
	% DurationCPUTime: 0.16s
	% Computational Cost: add. (43->18), mult. (68->31), div. (0->0), fcn. (42->6), ass. (0->13)
	t24 = sin(qJ(3));
	t25 = cos(qJ(3));
	t26 = (r_i_i_C(1) * t24 + r_i_i_C(2) * t25) * qJD(3);
	t33 = pkin(6) + r_i_i_C(3);
	t32 = qJD(1) * t24;
	t31 = qJD(1) * t25;
	t30 = qJD(3) * t24;
	t29 = qJD(3) * t25;
	t27 = -r_i_i_C(1) * t25 + r_i_i_C(2) * t24 - pkin(2);
	t23 = qJ(1) + pkin(7);
	t22 = cos(t23);
	t21 = sin(t23);
	t1 = [t21 * t26 + (-cos(qJ(1)) * pkin(1) - t33 * t21 + t27 * t22) * qJD(1), 0, (t21 * t31 + t22 * t30) * r_i_i_C(2) + (t21 * t32 - t22 * t29) * r_i_i_C(1), 0, 0; -t22 * t26 + (-sin(qJ(1)) * pkin(1) + t33 * t22 + t27 * t21) * qJD(1), 0, (t21 * t30 - t22 * t31) * r_i_i_C(2) + (-t21 * t29 - t22 * t32) * r_i_i_C(1), 0, 0; 0, 0, -t26, 0, 0;];
	JaD_transl = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiaD_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 16:35:25
	% EndTime: 2019-12-29 16:35:25
	% DurationCPUTime: 0.17s
	% Computational Cost: add. (92->20), mult. (138->30), div. (0->0), fcn. (94->6), ass. (0->17)
	t144 = sin(qJ(3));
	t145 = cos(qJ(3));
	t155 = r_i_i_C(3) + qJ(4);
	t157 = pkin(3) + r_i_i_C(1);
	t150 = t157 * t144 - t155 * t145;
	t159 = qJD(1) * t150;
	t158 = t150 * qJD(3) - t144 * qJD(4);
	t156 = pkin(6) + r_i_i_C(2);
	t154 = qJD(1) * t144;
	t153 = qJD(3) * t145;
	t151 = -t155 * t144 - t157 * t145;
	t148 = -pkin(2) + t151;
	t147 = t151 * qJD(3) + qJD(4) * t145;
	t143 = qJ(1) + pkin(7);
	t142 = cos(t143);
	t141 = sin(t143);
	t1 = [t158 * t141 + (-cos(qJ(1)) * pkin(1) - t156 * t141 + t148 * t142) * qJD(1), 0, t141 * t159 + t147 * t142, -t141 * t154 + t142 * t153, 0; -t158 * t142 + (-sin(qJ(1)) * pkin(1) + t156 * t142 + t148 * t141) * qJD(1), 0, t147 * t141 - t142 * t159, t141 * t153 + t142 * t154, 0; 0, 0, -t158, qJD(3) * t144, 0;];
	JaD_transl = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiaD_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 16:35:23
	% EndTime: 2019-12-29 16:35:23
	% DurationCPUTime: 0.23s
	% Computational Cost: add. (121->24), mult. (172->33), div. (0->0), fcn. (117->6), ass. (0->18)
	t26 = sin(qJ(3));
	t27 = cos(qJ(3));
	t35 = pkin(3) + pkin(4) + r_i_i_C(1);
	t41 = r_i_i_C(2) + qJ(4);
	t32 = t35 * t26 - t41 * t27;
	t42 = t32 * qJD(3) - t26 * qJD(4);
	t25 = qJ(1) + pkin(7);
	t23 = sin(t25);
	t40 = qJD(1) * t23;
	t24 = cos(t25);
	t39 = qJD(1) * t24;
	t38 = qJD(1) * t26;
	t37 = qJD(3) * t27;
	t34 = pkin(6) - r_i_i_C(3) - qJ(5);
	t33 = -t41 * t26 - t35 * t27;
	t30 = -pkin(2) + t33;
	t29 = t33 * qJD(3) + qJD(4) * t27;
	t1 = [-t24 * qJD(5) + t42 * t23 + (-cos(qJ(1)) * pkin(1) - t34 * t23 + t30 * t24) * qJD(1), 0, t29 * t24 + t32 * t40, -t23 * t38 + t24 * t37, -t39; -t23 * qJD(5) - t42 * t24 + (-sin(qJ(1)) * pkin(1) + t34 * t24 + t30 * t23) * qJD(1), 0, t29 * t23 - t32 * t39, t23 * t37 + t24 * t38, -t40; 0, 0, -t42, qJD(3) * t26, 0;];
	JaD_transl = t1;
else
	JaD_transl=NaN(3,5);
end