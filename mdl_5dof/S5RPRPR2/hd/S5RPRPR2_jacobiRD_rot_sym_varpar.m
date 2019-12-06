% Zeitableitung der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S5RPRPR2
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
%   pkin=[a2,a3,a4,a5,d1,d3,d5,theta2,theta4]';
% 
% Output:
% JRD_rot [9x5]
%   Zeitableitung der Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 17:50
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JRD_rot = S5RPRPR2_jacobiRD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),uint8(0),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRPR2_jacobiRD_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRPR2_jacobiRD_rot_sym_varpar: qJD has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RPRPR2_jacobiRD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RPRPR2_jacobiRD_rot_sym_varpar: pkin has to be [9x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiRD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 17:50:13
	% EndTime: 2019-12-05 17:50:13
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiRD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 17:50:13
	% EndTime: 2019-12-05 17:50:13
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
	% StartTime: 2019-12-05 17:50:13
	% EndTime: 2019-12-05 17:50:13
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (5->2), mult. (4->2), div. (0->0), fcn. (4->2), ass. (0->4)
	t12 = qJ(1) + pkin(8);
	t13 = qJD(1) * cos(t12);
	t10 = qJD(1) * sin(t12);
	t1 = [0, 0, 0, 0, 0; t10, 0, 0, 0, 0; -t13, 0, 0, 0, 0; 0, 0, 0, 0, 0; t13, 0, 0, 0, 0; t10, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiRD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 17:50:13
	% EndTime: 2019-12-05 17:50:13
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (26->4), mult. (8->2), div. (0->0), fcn. (8->2), ass. (0->5)
	t27 = qJD(1) + qJD(3);
	t26 = qJ(1) + pkin(8) + qJ(3);
	t24 = t27 * cos(t26);
	t23 = t27 * sin(t26);
	t1 = [0, 0, 0, 0, 0; t23, 0, t23, 0, 0; -t24, 0, -t24, 0, 0; 0, 0, 0, 0, 0; t24, 0, t24, 0, 0; t23, 0, t23, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiRD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 17:50:13
	% EndTime: 2019-12-05 17:50:13
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (44->10), mult. (20->8), div. (0->0), fcn. (20->4), ass. (0->13)
	t75 = qJ(1) + pkin(8) + qJ(3);
	t73 = sin(t75);
	t76 = qJD(1) + qJD(3);
	t84 = t76 * t73;
	t74 = cos(t75);
	t83 = t76 * t74;
	t82 = t76 * sin(pkin(9));
	t81 = t76 * cos(pkin(9));
	t80 = t73 * t82;
	t79 = t74 * t81;
	t72 = t74 * t82;
	t71 = t73 * t81;
	t1 = [0, 0, 0, 0, 0; t71, 0, t71, 0, 0; -t79, 0, -t79, 0, 0; 0, 0, 0, 0, 0; -t80, 0, -t80, 0, 0; t72, 0, t72, 0, 0; 0, 0, 0, 0, 0; -t83, 0, -t83, 0, 0; -t84, 0, -t84, 0, 0;];
	JRD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiRD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 17:50:14
	% EndTime: 2019-12-05 17:50:14
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (116->17), mult. (54->12), div. (0->0), fcn. (54->4), ass. (0->16)
	t131 = qJ(1) + pkin(8) + qJ(3);
	t127 = sin(t131);
	t133 = qJD(1) + qJD(3);
	t137 = t133 * t127;
	t128 = cos(t131);
	t136 = t133 * t128;
	t132 = pkin(9) + qJ(5);
	t129 = sin(t132);
	t135 = qJD(5) * t129;
	t130 = cos(t132);
	t134 = qJD(5) * t130;
	t124 = -t127 * t135 + t130 * t136;
	t123 = t127 * t134 + t129 * t136;
	t122 = t128 * t135 + t130 * t137;
	t121 = -t128 * t134 + t129 * t137;
	t1 = [0, 0, 0, 0, -t135; t122, 0, t122, 0, t123; -t124, 0, -t124, 0, t121; 0, 0, 0, 0, -t134; -t121, 0, -t121, 0, t124; t123, 0, t123, 0, t122; 0, 0, 0, 0, 0; -t136, 0, -t136, 0, 0; -t137, 0, -t137, 0, 0;];
	JRD_rot = t1;
else
	JRD_rot=NaN(9,5);
end