% Zeitableitung der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S5RRPRR6
% Use Code from Maple symbolic Code Generation
% 
% Rotationsmatrix-Jacobi-Matrix: Differentieller Zusammenhang zwischen
% gestapelter Endeffektor-Rotationsmatrix und verallgemeinerten Koordinaten.
% Zeitableitung: Die Gradientenmatrix wird nochmal nach der Zeit abgeleitet.
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt. (0=Basis).
%   Siehe auch: bsp_3T1R_fkine_fixb_rotmat_mdh_sym_varpar.m
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d4,d5,theta3]';
% 
% Output:
% JRD_rot [9x5]
%   Zeitableitung der Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-24 10:49
% Revision: 5d02717ba55fba3c5445be8d9f6bf09c2cd6665f (2019-10-14)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JRD_rot = S5RRPRR6_jacobiRD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),uint8(0),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRR6_jacobiRD_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPRR6_jacobiRD_rot_sym_varpar: qJD has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RRPRR6_jacobiRD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRPRR6_jacobiRD_rot_sym_varpar: pkin has to be [9x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiRD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:49:50
	% EndTime: 2019-10-24 10:49:50
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiRD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:49:50
	% EndTime: 2019-10-24 10:49:50
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (1->1), mult. (4->2), div. (0->0), fcn. (4->2), ass. (0->3)
	t9 = qJD(1) * cos(qJ(1));
	t7 = qJD(1) * sin(qJ(1));
	t1 = [0, 0, 0, 0, 0; t7, 0, 0, 0, 0; -t9, 0, 0, 0, 0; 0, 0, 0, 0, 0; t9, 0, 0, 0, 0; t7, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiRD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:49:50
	% EndTime: 2019-10-24 10:49:51
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (18->4), mult. (8->2), div. (0->0), fcn. (8->2), ass. (0->5)
	t26 = qJ(1) + qJ(2);
	t25 = qJD(1) + qJD(2);
	t23 = t25 * cos(t26);
	t22 = t25 * sin(t26);
	t1 = [0, 0, 0, 0, 0; t22, t22, 0, 0, 0; -t23, -t23, 0, 0, 0; 0, 0, 0, 0, 0; t23, t23, 0, 0, 0; t22, t22, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiRD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:49:50
	% EndTime: 2019-10-24 10:49:50
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (32->10), mult. (20->8), div. (0->0), fcn. (20->4), ass. (0->13)
	t75 = qJ(1) + qJ(2);
	t72 = sin(t75);
	t74 = qJD(1) + qJD(2);
	t83 = t74 * t72;
	t73 = cos(t75);
	t82 = t74 * t73;
	t81 = t74 * sin(pkin(9));
	t80 = t74 * cos(pkin(9));
	t79 = t72 * t81;
	t78 = t73 * t80;
	t71 = t73 * t81;
	t70 = t72 * t80;
	t1 = [0, 0, 0, 0, 0; t70, t70, 0, 0, 0; -t78, -t78, 0, 0, 0; 0, 0, 0, 0, 0; -t79, -t79, 0, 0, 0; t71, t71, 0, 0, 0; 0, 0, 0, 0, 0; -t82, -t82, 0, 0, 0; -t83, -t83, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiRD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:49:51
	% EndTime: 2019-10-24 10:49:51
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (119->19), mult. (132->27), div. (0->0), fcn. (132->6), ass. (0->24)
	t174 = qJD(1) + qJD(2);
	t176 = sin(pkin(9));
	t189 = t174 * t176;
	t177 = cos(pkin(9));
	t178 = sin(qJ(4));
	t188 = t177 * t178;
	t179 = cos(qJ(4));
	t187 = t177 * t179;
	t186 = qJD(4) * t178;
	t185 = qJD(4) * t179;
	t175 = qJ(1) + qJ(2);
	t173 = cos(t175);
	t184 = t173 * t189;
	t172 = sin(t175);
	t183 = t172 * t186;
	t182 = t173 * t185;
	t181 = -t172 * t179 + t173 * t188;
	t180 = t172 * t187 - t173 * t178;
	t169 = t172 * t189;
	t166 = -t177 * t183 - t182 + (t172 * t178 + t173 * t187) * t174;
	t165 = t180 * qJD(4) + t174 * t181;
	t164 = t181 * qJD(4) + t174 * t180;
	t163 = -t177 * t182 - t183 + (t172 * t188 + t173 * t179) * t174;
	t1 = [0, 0, 0, -t176 * t185, 0; t164, t164, 0, t165, 0; -t166, -t166, 0, t163, 0; 0, 0, 0, t176 * t186, 0; -t163, -t163, 0, t166, 0; t165, t165, 0, t164, 0; 0, 0, 0, 0, 0; t169, t169, 0, 0, 0; -t184, -t184, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiRD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:49:51
	% EndTime: 2019-10-24 10:49:51
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (260->22), mult. (176->24), div. (0->0), fcn. (176->6), ass. (0->29)
	t238 = qJ(4) + qJ(5);
	t232 = sin(t238);
	t239 = qJ(1) + qJ(2);
	t233 = sin(t239);
	t253 = t232 * t233;
	t235 = cos(t239);
	t252 = t232 * t235;
	t234 = cos(t238);
	t251 = t233 * t234;
	t250 = t234 * t235;
	t236 = qJD(4) + qJD(5);
	t240 = sin(pkin(9));
	t249 = t236 * t240;
	t237 = qJD(1) + qJD(2);
	t248 = t237 * t240;
	t247 = t236 * t253;
	t246 = t236 * t250;
	t245 = t235 * t248;
	t244 = t234 * t249;
	t241 = cos(pkin(9));
	t243 = t237 * t241 - t236;
	t242 = t236 * t241 - t237;
	t231 = t233 * t248;
	t230 = t232 * t249;
	t225 = -t241 * t247 - t246 + (t241 * t250 + t253) * t237;
	t224 = t242 * t251 + t243 * t252;
	t223 = t242 * t252 + t243 * t251;
	t222 = -t241 * t246 - t247 + (t241 * t253 + t250) * t237;
	t1 = [0, 0, 0, -t244, -t244; t223, t223, 0, t224, t224; -t225, -t225, 0, t222, t222; 0, 0, 0, t230, t230; -t222, -t222, 0, t225, t225; t224, t224, 0, t223, t223; 0, 0, 0, 0, 0; t231, t231, 0, 0, 0; -t245, -t245, 0, 0, 0;];
	JRD_rot = t1;
else
	JRD_rot=NaN(9,5);
end