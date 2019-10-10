% Zeitableitung der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S6RRPPRP5
% Use Code from Maple symbolic Code Generation
% 
% Rotationsmatrix-Jacobi-Matrix: Differentieller Zusammenhang zwischen
% gestapelter Endeffektor-Rotationsmatrix und verallgemeinerten Koordinaten.
% Zeitableitung: Die Gradientenmatrix wird nochmal nach der Zeit abgeleitet.
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt. (0=Basis).
%   Siehe auch: bsp_3T1R_fkine_fixb_rotmat_mdh_sym_varpar.m
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d5,theta4]';
% 
% Output:
% JRD_rot [9x6]
%   Zeitableitung der Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 09:34
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JRD_rot = S6RRPPRP5_jacobiRD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPRP5_jacobiRD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPPRP5_jacobiRD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRPPRP5_jacobiRD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRPPRP5_jacobiRD_rot_sym_varpar: pkin has to be [9x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiRD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:34:01
	% EndTime: 2019-10-10 09:34:01
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiRD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:34:01
	% EndTime: 2019-10-10 09:34:01
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (3->3), mult. (4->2), div. (0->0), fcn. (4->2), ass. (0->3)
	t31 = qJD(1) * sin(qJ(1));
	t30 = qJD(1) * cos(qJ(1));
	t1 = [-t30, 0, 0, 0, 0, 0; -t31, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; t31, 0, 0, 0, 0, 0; -t30, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiRD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:34:01
	% EndTime: 2019-10-10 09:34:01
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (11->9), mult. (36->13), div. (0->0), fcn. (36->4), ass. (0->14)
	t34 = sin(qJ(1));
	t41 = qJD(1) * t34;
	t36 = cos(qJ(1));
	t40 = qJD(1) * t36;
	t33 = sin(qJ(2));
	t39 = qJD(2) * t33;
	t35 = cos(qJ(2));
	t38 = qJD(2) * t35;
	t37 = qJD(2) * t36;
	t32 = t34 * t39 - t35 * t40;
	t31 = t33 * t40 + t34 * t38;
	t30 = t33 * t37 + t35 * t41;
	t29 = t33 * t41 - t35 * t37;
	t1 = [t32, t29, 0, 0, 0, 0; -t30, -t31, 0, 0, 0, 0; 0, -t39, 0, 0, 0, 0; t31, t30, 0, 0, 0, 0; t29, t32, 0, 0, 0, 0; 0, -t38, 0, 0, 0, 0; -t41, 0, 0, 0, 0, 0; t40, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiRD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:34:02
	% EndTime: 2019-10-10 09:34:02
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (9->7), mult. (36->13), div. (0->0), fcn. (36->4), ass. (0->14)
	t161 = sin(qJ(1));
	t168 = qJD(1) * t161;
	t163 = cos(qJ(1));
	t167 = qJD(1) * t163;
	t160 = sin(qJ(2));
	t166 = qJD(2) * t160;
	t162 = cos(qJ(2));
	t165 = qJD(2) * t162;
	t164 = qJD(2) * t163;
	t159 = -t161 * t166 + t162 * t167;
	t158 = t160 * t167 + t161 * t165;
	t157 = t160 * t164 + t162 * t168;
	t156 = -t160 * t168 + t162 * t164;
	t1 = [-t168, 0, 0, 0, 0, 0; t167, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; t159, t156, 0, 0, 0, 0; t157, t158, 0, 0, 0, 0; 0, t166, 0, 0, 0, 0; -t158, -t157, 0, 0, 0, 0; t156, t159, 0, 0, 0, 0; 0, t165, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiRD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:34:02
	% EndTime: 2019-10-10 09:34:02
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (17->14), mult. (77->37), div. (0->0), fcn. (77->6), ass. (0->18)
	t187 = sin(qJ(2));
	t188 = sin(qJ(1));
	t201 = t187 * t188;
	t190 = cos(qJ(1));
	t200 = t187 * t190;
	t199 = qJD(1) * t188;
	t198 = qJD(1) * t190;
	t197 = qJD(2) * t187;
	t189 = cos(qJ(2));
	t196 = qJD(2) * t189;
	t195 = qJD(2) * t190;
	t194 = t188 * t196;
	t193 = t189 * t195;
	t192 = -t188 * t197 + t189 * t198;
	t191 = -t187 * t195 - t189 * t199;
	t186 = cos(pkin(9));
	t185 = sin(pkin(9));
	t1 = [-t185 * t194 + (-t185 * t200 - t186 * t188) * qJD(1), t191 * t185, 0, 0, 0, 0; t185 * t193 + (-t185 * t201 + t186 * t190) * qJD(1), t192 * t185, 0, 0, 0, 0; 0, t185 * t196, 0, 0, 0, 0; -t186 * t194 + (t185 * t188 - t186 * t200) * qJD(1), t191 * t186, 0, 0, 0, 0; t186 * t193 + (-t185 * t190 - t186 * t201) * qJD(1), t192 * t186, 0, 0, 0, 0; 0, t186 * t196, 0, 0, 0, 0; -t192, t187 * t199 - t193, 0, 0, 0, 0; t191, -t187 * t198 - t194, 0, 0, 0, 0; 0, -t197, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiRD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:34:02
	% EndTime: 2019-10-10 09:34:02
	% DurationCPUTime: 0.12s
	% Computational Cost: add. (109->25), mult. (173->44), div. (0->0), fcn. (173->6), ass. (0->31)
	t254 = sin(qJ(1));
	t253 = sin(qJ(2));
	t268 = qJD(5) * t253;
	t262 = qJD(1) + t268;
	t275 = t254 * t262;
	t256 = cos(qJ(1));
	t274 = t256 * t262;
	t273 = qJD(1) * t254;
	t272 = qJD(1) * t256;
	t271 = qJD(2) * t253;
	t255 = cos(qJ(2));
	t270 = qJD(2) * t255;
	t269 = qJD(2) * t256;
	t267 = qJD(5) * t255;
	t266 = t254 * t270;
	t252 = pkin(9) + qJ(5);
	t250 = sin(t252);
	t265 = t250 * t267;
	t251 = cos(t252);
	t264 = t251 * t267;
	t263 = t255 * t269;
	t261 = -qJD(1) * t253 - qJD(5);
	t260 = -t254 * t271 + t255 * t272;
	t259 = -t253 * t269 - t255 * t273;
	t258 = t261 * t256 - t266;
	t257 = t261 * t254 + t263;
	t249 = t257 * t250 + t251 * t274;
	t248 = -t250 * t274 + t257 * t251;
	t247 = t258 * t250 - t251 * t275;
	t246 = t250 * t275 + t258 * t251;
	t1 = [t247, t259 * t250 + t256 * t264, 0, 0, t248, 0; t249, t260 * t250 + t254 * t264, 0, 0, -t246, 0; 0, t250 * t270 + t251 * t268, 0, 0, t251 * t271 + t265, 0; t246, t259 * t251 - t256 * t265, 0, 0, -t249, 0; t248, t260 * t251 - t254 * t265, 0, 0, t247, 0; 0, -t250 * t268 + t251 * t270, 0, 0, -t250 * t271 + t264, 0; -t260, t253 * t273 - t263, 0, 0, 0, 0; t259, -t253 * t272 - t266, 0, 0, 0, 0; 0, -t271, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiRD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:34:03
	% EndTime: 2019-10-10 09:34:03
	% DurationCPUTime: 0.19s
	% Computational Cost: add. (109->26), mult. (173->44), div. (0->0), fcn. (173->6), ass. (0->31)
	t297 = sin(qJ(1));
	t296 = sin(qJ(2));
	t311 = qJD(5) * t296;
	t305 = qJD(1) + t311;
	t318 = t297 * t305;
	t304 = qJD(1) * t296 + qJD(5);
	t298 = cos(qJ(2));
	t299 = cos(qJ(1));
	t312 = qJD(2) * t299;
	t306 = t298 * t312;
	t317 = t304 * t297 - t306;
	t316 = qJD(1) * t297;
	t315 = qJD(1) * t299;
	t314 = qJD(2) * t296;
	t313 = qJD(2) * t298;
	t310 = qJD(5) * t298;
	t309 = t297 * t313;
	t295 = pkin(9) + qJ(5);
	t293 = sin(t295);
	t308 = t293 * t310;
	t294 = cos(t295);
	t307 = t294 * t310;
	t303 = t305 * t299;
	t302 = -t297 * t314 + t298 * t315;
	t301 = t296 * t312 + t298 * t316;
	t300 = t304 * t299 + t309;
	t292 = -t317 * t293 + t294 * t303;
	t291 = t293 * t303 + t317 * t294;
	t290 = t300 * t293 + t294 * t318;
	t289 = -t293 * t318 + t300 * t294;
	t1 = [-t290, -t301 * t293 + t299 * t307, 0, 0, -t291, 0; t292, t302 * t293 + t297 * t307, 0, 0, t289, 0; 0, t293 * t313 + t294 * t311, 0, 0, t294 * t314 + t308, 0; -t302, t296 * t316 - t306, 0, 0, 0, 0; -t301, -t296 * t315 - t309, 0, 0, 0, 0; 0, -t314, 0, 0, 0, 0; t289, t301 * t294 + t299 * t308, 0, 0, t292, 0; t291, -t302 * t294 + t297 * t308, 0, 0, t290, 0; 0, t293 * t311 - t294 * t313, 0, 0, t293 * t314 - t307, 0;];
	JRD_rot = t1;
else
	JRD_rot=NaN(9,6);
end