% Zeitableitung der analytischen Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S6RPPRPR4
% 
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% (Ist für translatorischen Teil egal, kennzeichnet nur den Rechenweg der Herleitung)
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt (0=Basis).
% r_i_i_C [3x1]
%   Ortsvektor vom KörperKS-Ursprung zum gesuchten Punkt
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d6,theta3,theta5]';
% 
% Output:
% JaD_transl [3x6]
%   Translatorischer Teil der analytischen Jacobi-Matrix (Zeitableitung)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-09 23:39
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_transl = S6RPPRPR4_jacobiaD_transl_sym_varpar(qJ, qJD, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRPR4_jacobiaD_transl_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRPR4_jacobiaD_transl_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RPPRPR4_jacobiaD_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RPPRPR4_jacobiaD_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPPRPR4_jacobiaD_transl_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiaD_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:39:24
	% EndTime: 2019-10-09 23:39:24
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiaD_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:39:24
	% EndTime: 2019-10-09 23:39:24
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (2->2), mult. (8->6), div. (0->0), fcn. (4->2), ass. (0->3)
	t27 = cos(qJ(1));
	t26 = sin(qJ(1));
	t1 = [(-r_i_i_C(1) * t27 + r_i_i_C(2) * t26) * qJD(1), 0, 0, 0, 0, 0; (-r_i_i_C(1) * t26 - r_i_i_C(2) * t27) * qJD(1), 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiaD_transl_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:39:24
	% EndTime: 2019-10-09 23:39:24
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (8->6), mult. (20->10), div. (0->0), fcn. (12->2), ass. (0->5)
	t10 = -pkin(1) - r_i_i_C(1);
	t9 = r_i_i_C(3) + qJ(2);
	t8 = cos(qJ(1));
	t7 = sin(qJ(1));
	t1 = [t8 * qJD(2) + (t10 * t8 - t9 * t7) * qJD(1), qJD(1) * t8, 0, 0, 0, 0; t7 * qJD(2) + (t10 * t7 + t9 * t8) * qJD(1), qJD(1) * t7, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiaD_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:39:24
	% EndTime: 2019-10-09 23:39:24
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (14->11), mult. (36->20), div. (0->0), fcn. (26->4), ass. (0->8)
	t58 = -pkin(1) - pkin(2);
	t57 = cos(qJ(1));
	t56 = sin(qJ(1));
	t55 = cos(pkin(9));
	t54 = sin(pkin(9));
	t53 = (t54 * t57 - t55 * t56) * qJD(1);
	t52 = (t54 * t56 + t55 * t57) * qJD(1);
	t1 = [-t52 * r_i_i_C(1) + t53 * r_i_i_C(2) + t57 * qJD(2) + (-qJ(2) * t56 + t58 * t57) * qJD(1), qJD(1) * t57, 0, 0, 0, 0; t53 * r_i_i_C(1) + t52 * r_i_i_C(2) + t56 * qJD(2) + (qJ(2) * t57 + t58 * t56) * qJD(1), qJD(1) * t56, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiaD_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:39:24
	% EndTime: 2019-10-09 23:39:24
	% DurationCPUTime: 0.12s
	% Computational Cost: add. (49->23), mult. (138->41), div. (0->0), fcn. (116->6), ass. (0->17)
	t47 = sin(qJ(4));
	t49 = cos(qJ(4));
	t51 = (r_i_i_C(1) * t47 + r_i_i_C(2) * t49) * qJD(4);
	t57 = -pkin(1) - pkin(2);
	t56 = -pkin(7) - r_i_i_C(3);
	t55 = qJD(4) * t47;
	t54 = qJD(4) * t49;
	t45 = sin(pkin(9));
	t46 = cos(pkin(9));
	t48 = sin(qJ(1));
	t50 = cos(qJ(1));
	t42 = t45 * t50 - t48 * t46;
	t43 = t48 * t45 + t46 * t50;
	t52 = r_i_i_C(1) * t49 - r_i_i_C(2) * t47 + pkin(3);
	t41 = t42 * qJD(1);
	t40 = t43 * qJD(1);
	t1 = [t50 * qJD(2) + t56 * t41 - t42 * t51 - t52 * t40 + (-qJ(2) * t48 + t57 * t50) * qJD(1), qJD(1) * t50, 0, (-t41 * t49 + t43 * t55) * r_i_i_C(2) + (-t41 * t47 - t43 * t54) * r_i_i_C(1), 0, 0; t48 * qJD(2) + t56 * t40 - t43 * t51 + t52 * t41 + (qJ(2) * t50 + t57 * t48) * qJD(1), qJD(1) * t48, 0, (-t40 * t49 - t42 * t55) * r_i_i_C(2) + (-t40 * t47 + t42 * t54) * r_i_i_C(1), 0, 0; 0, 0, 0, t51, 0, 0;];
	JaD_transl = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiaD_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:39:24
	% EndTime: 2019-10-09 23:39:24
	% DurationCPUTime: 0.13s
	% Computational Cost: add. (90->25), mult. (188->36), div. (0->0), fcn. (165->8), ass. (0->19)
	t56 = qJ(4) + pkin(10);
	t54 = sin(t56);
	t55 = cos(t56);
	t64 = r_i_i_C(1) * t55 - r_i_i_C(2) * t54 + cos(qJ(4)) * pkin(4);
	t72 = qJD(4) * t64;
	t65 = sin(qJ(4)) * pkin(4) + r_i_i_C(1) * t54 + r_i_i_C(2) * t55;
	t63 = t65 * qJD(4);
	t71 = -pkin(1) - pkin(2);
	t69 = -r_i_i_C(3) - qJ(5) - pkin(7);
	t68 = cos(pkin(9));
	t66 = pkin(3) + t64;
	t57 = sin(pkin(9));
	t60 = sin(qJ(1));
	t62 = cos(qJ(1));
	t50 = t62 * t57 - t60 * t68;
	t51 = t60 * t57 + t62 * t68;
	t49 = t50 * qJD(1);
	t48 = t51 * qJD(1);
	t1 = [qJD(2) * t62 - t51 * qJD(5) + t69 * t49 - t66 * t48 - t50 * t63 + (-qJ(2) * t60 + t71 * t62) * qJD(1), qJD(1) * t62, 0, -t65 * t49 - t51 * t72, -t48, 0; t60 * qJD(2) + t50 * qJD(5) + t69 * t48 + t66 * t49 - t51 * t63 + (qJ(2) * t62 + t71 * t60) * qJD(1), qJD(1) * t60, 0, -t65 * t48 + t50 * t72, t49, 0; 0, 0, 0, t63, 0, 0;];
	JaD_transl = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiaD_transl_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:39:25
	% EndTime: 2019-10-09 23:39:26
	% DurationCPUTime: 0.34s
	% Computational Cost: add. (265->55), mult. (532->83), div. (0->0), fcn. (510->10), ass. (0->41)
	t248 = qJ(4) + pkin(10);
	t246 = sin(t248);
	t247 = cos(t248);
	t278 = pkin(8) + r_i_i_C(3);
	t259 = -t278 * t247 + sin(qJ(4)) * pkin(4);
	t250 = sin(qJ(6));
	t252 = cos(qJ(6));
	t260 = r_i_i_C(1) * t252 - r_i_i_C(2) * t250 + pkin(5);
	t280 = t260 * t246 + t259;
	t285 = t280 * qJD(4);
	t266 = t278 * t246;
	t284 = -t260 * t247 - t266;
	t272 = sin(pkin(9));
	t273 = cos(pkin(9));
	t276 = sin(qJ(1));
	t277 = cos(qJ(1));
	t240 = t277 * t272 - t276 * t273;
	t282 = qJD(1) * t276;
	t281 = qJD(1) * t277;
	t279 = qJD(2) + (-pkin(1) - pkin(2)) * qJD(1);
	t274 = cos(qJ(4)) * pkin(4);
	t271 = qJD(4) * t246;
	t270 = qJD(4) * t247;
	t269 = qJD(6) * t247;
	t268 = qJD(6) * t250;
	t267 = qJD(6) * t252;
	t263 = r_i_i_C(1) * t250 + r_i_i_C(2) * t252;
	t239 = -t276 * t272 - t277 * t273;
	t237 = t239 * qJD(1);
	t262 = t239 * t269 + t237;
	t238 = t240 * qJD(1);
	t261 = t240 * t269 + t238;
	t258 = qJD(6) * t263;
	t257 = qJD(6) * t239 + t237 * t247 - t240 * t271;
	t256 = qJD(6) * t240 + t238 * t247 + t239 * t271;
	t254 = -t246 * t258 + (t274 - t284) * qJD(4);
	t249 = -qJ(5) - pkin(7);
	t245 = pkin(3) + t274;
	t236 = t262 * t250 + t256 * t252;
	t235 = -t256 * t250 + t262 * t252;
	t1 = [(-t238 * t250 + t239 * t267) * r_i_i_C(1) + (-t238 * t252 - t239 * t268) * r_i_i_C(2) + t238 * t249 + t239 * qJD(5) - qJ(2) * t282 - (-t245 + t284) * t237 + (-t247 * t258 - t285) * t240 + t279 * t277, t281, 0, -t238 * t280 + t254 * t239, t237, r_i_i_C(1) * t235 - r_i_i_C(2) * t236; t236 * r_i_i_C(1) + t235 * r_i_i_C(2) + t240 * qJD(5) - t237 * t249 + qJ(2) * t281 + (pkin(5) * t247 + t245 + t266) * t238 + (pkin(5) * t246 + t259) * t239 * qJD(4) + t279 * t276, t282, 0, t237 * t280 + t254 * t240, t238, (t261 * r_i_i_C(1) + t257 * r_i_i_C(2)) * t252 + (t257 * r_i_i_C(1) - t261 * r_i_i_C(2)) * t250; 0, 0, 0, t263 * t269 + t285, 0, (-t246 * t268 + t252 * t270) * r_i_i_C(2) + (t246 * t267 + t250 * t270) * r_i_i_C(1);];
	JaD_transl = t1;
else
	JaD_transl=NaN(3,6);
end