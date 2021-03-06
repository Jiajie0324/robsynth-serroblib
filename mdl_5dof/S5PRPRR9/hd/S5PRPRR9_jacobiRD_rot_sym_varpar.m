% Zeitableitung der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S5PRPRR9
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
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d4,d5,theta1]';
% 
% Output:
% JRD_rot [9x5]
%   Zeitableitung der Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 17:40
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JRD_rot = S5PRPRR9_jacobiRD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),uint8(0),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRPRR9_jacobiRD_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRPRR9_jacobiRD_rot_sym_varpar: qJD has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5PRPRR9_jacobiRD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRPRR9_jacobiRD_rot_sym_varpar: pkin has to be [8x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiRD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 17:39:59
	% EndTime: 2019-12-31 17:39:59
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiRD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 17:39:59
	% EndTime: 2019-12-31 17:39:59
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiRD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 17:39:59
	% EndTime: 2019-12-31 17:39:59
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (7->4), mult. (4->2), div. (0->0), fcn. (4->2), ass. (0->4)
	t35 = pkin(8) + qJ(2);
	t37 = qJD(2) * sin(t35);
	t36 = qJD(2) * cos(t35);
	t1 = [0, -t36, 0, 0, 0; 0, -t37, 0, 0, 0; 0, 0, 0, 0, 0; 0, t37, 0, 0, 0; 0, -t36, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiRD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 17:39:59
	% EndTime: 2019-12-31 17:39:59
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (7->4), mult. (4->2), div. (0->0), fcn. (4->2), ass. (0->4)
	t16 = pkin(8) + qJ(2);
	t18 = qJD(2) * sin(t16);
	t17 = qJD(2) * cos(t16);
	t1 = [0, -t17, 0, 0, 0; 0, -t18, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, -t18, 0, 0, 0; 0, t17, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiRD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 17:39:59
	% EndTime: 2019-12-31 17:39:59
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (56->11), mult. (64->12), div. (0->0), fcn. (64->4), ass. (0->10)
	t102 = sin(qJ(4));
	t105 = qJD(4) * t102;
	t103 = cos(qJ(4));
	t104 = qJD(4) * t103;
	t101 = pkin(8) + qJ(2);
	t100 = cos(t101);
	t99 = sin(t101);
	t94 = -t100 * t105 + t99 * t104 + (t100 * t102 - t103 * t99) * qJD(2);
	t93 = -t99 * t105 - t100 * t104 + (t100 * t103 + t102 * t99) * qJD(2);
	t1 = [0, -t93, 0, t93, 0; 0, t94, 0, -t94, 0; 0, 0, 0, 0, 0; 0, t94, 0, -t94, 0; 0, t93, 0, -t93, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiRD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 17:39:59
	% EndTime: 2019-12-31 17:39:59
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (160->16), mult. (190->16), div. (0->0), fcn. (202->6), ass. (0->19)
	t114 = qJD(2) - qJD(4);
	t109 = pkin(8) + qJ(2);
	t107 = sin(t109);
	t108 = cos(t109);
	t112 = sin(qJ(4));
	t113 = cos(qJ(4));
	t92 = -t107 * t112 - t108 * t113;
	t93 = -t107 * t113 + t108 * t112;
	t101 = sin(qJ(5));
	t111 = qJD(5) * t101;
	t102 = cos(qJ(5));
	t110 = qJD(5) * t102;
	t90 = t114 * t92;
	t86 = t90 * t101 + t93 * t110;
	t87 = -t90 * t102 + t93 * t111;
	t91 = t114 * t93;
	t88 = -t91 * t101 + t92 * t110;
	t89 = t91 * t102 + t92 * t111;
	t1 = [0, -t87, 0, t87, t88; 0, t89, 0, -t89, t86; 0, 0, 0, 0, t111; 0, -t86, 0, t86, -t89; 0, t88, 0, -t88, -t87; 0, 0, 0, 0, t110; 0, -t91, 0, t91, 0; 0, t90, 0, -t90, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
else
	JRD_rot=NaN(9,5);
end