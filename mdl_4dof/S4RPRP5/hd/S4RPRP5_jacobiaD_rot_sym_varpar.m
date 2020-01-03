% Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S4RPRP5
% Use Code from Maple symbolic Code Generation
% 
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% Zeitableitung der Winkeldarstellung des Endeffektors in Basis-Koordinaten
% 
% Winkeldarstellung: Euler-XYZ-Winkel, rotx(alpha)*roty(beta)*rotz(gamma)
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt.
%   Wie in S4RPRP5_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [6x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d3,theta2]';
% 
% Output:
% JaD_rot [3x4]
%   Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 16:45
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_rot = S4RPRP5_jacobiaD_rot_sym_varpar(qJ, qJD, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),uint8(0),zeros(6,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RPRP5_jacobiaD_rot_sym_varpar: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RPRP5_jacobiaD_rot_sym_varpar: qJD has to be [4x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S4RPRP5_jacobiaD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S4RPRP5_jacobiaD_rot_sym_varpar: pkin has to be [6x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiaD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 16:45:16
	% EndTime: 2019-12-31 16:45:16
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0; 0, 0, 0, 0; 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiaD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 16:45:16
	% EndTime: 2019-12-31 16:45:16
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (9->0), mult. (37->0), div. (15->0), fcn. (22->0), ass. (0->1)
	t1 = [0, 0, 0, 0; 0, 0, 0, 0; 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiaD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 16:45:16
	% EndTime: 2019-12-31 16:45:16
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0; 0, 0, 0, 0; 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiaD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 16:45:16
	% EndTime: 2019-12-31 16:45:16
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0; 0, 0, 0, 0; 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiaD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 16:45:16
	% EndTime: 2019-12-31 16:45:17
	% DurationCPUTime: 0.55s
	% Computational Cost: add. (1893->71), mult. (1835->159), div. (470->13), fcn. (2177->7), ass. (0->71)
	t89 = sin(qJ(1));
	t119 = qJD(1) * t89;
	t138 = 0.2e1 * t89;
	t116 = qJD(3) * t89;
	t90 = cos(qJ(1));
	t118 = qJD(1) * t90;
	t82 = pkin(6) + qJ(3);
	t80 = sin(t82);
	t109 = t80 * t118;
	t76 = t80 ^ 2;
	t81 = cos(t82);
	t78 = 0.1e1 / t81 ^ 2;
	t124 = t76 * t78;
	t84 = t89 ^ 2;
	t71 = t84 * t124 + 0.1e1;
	t69 = 0.1e1 / t71;
	t77 = 0.1e1 / t81;
	t55 = (-(-t81 * t116 - t109) * t77 + t116 * t124) * t69;
	t136 = t55 - t116;
	t85 = t90 ^ 2;
	t86 = 0.1e1 / t90;
	t135 = (t84 / t85 + 0.1e1) * t86 * t119;
	t120 = t89 * t80;
	t68 = atan2(-t120, -t81);
	t66 = sin(t68);
	t111 = t66 * t120;
	t67 = cos(t68);
	t62 = -t67 * t81 - t111;
	t59 = 0.1e1 / t62;
	t60 = 0.1e1 / t62 ^ 2;
	t134 = -0.2e1 * t80;
	t133 = t69 - 0.1e1;
	t126 = t67 * t80;
	t51 = (-t55 * t89 + qJD(3)) * t126 + (t136 * t81 - t109) * t66;
	t132 = t51 * t59 * t60;
	t131 = t55 * t80;
	t130 = t60 * t80;
	t129 = t60 * t90;
	t102 = t76 * t89 * t118;
	t122 = t77 * t80;
	t75 = t80 * t76;
	t79 = t77 * t78;
	t98 = qJD(3) * (t75 * t79 + t122);
	t128 = (t78 * t102 + t84 * t98) / t71 ^ 2;
	t127 = t66 * t89;
	t125 = t76 * t77;
	t123 = t76 * t85;
	t121 = t84 / t90 ^ 2;
	t117 = qJD(3) * t81;
	t58 = t60 * t123 + 0.1e1;
	t115 = 0.2e1 * (-t123 * t132 + (t80 * t85 * t117 - t102) * t60) / t58 ^ 2;
	t114 = 0.2e1 * t132;
	t74 = t78 * t121 + 0.1e1;
	t113 = 0.2e1 * (t79 * qJD(3) * t80 * t121 + t78 * t135) / t74 ^ 2;
	t112 = t80 * t129;
	t110 = t69 * t125;
	t108 = 0.1e1 + t124;
	t107 = 0.1e1 + t121;
	t106 = t80 * t115;
	t105 = t128 * t134;
	t104 = t128 * t138;
	t103 = t89 * t110;
	t101 = t108 * t90;
	t99 = t107 * t80 * t78;
	t72 = 0.1e1 / t74;
	t64 = t108 * t89 * t69;
	t56 = 0.1e1 / t58;
	t54 = (t133 * t80 * t66 - t67 * t103) * t90;
	t53 = -t81 * t127 + t126 + (-t67 * t120 + t66 * t81) * t64;
	t52 = -t108 * t104 + (qJD(1) * t101 + t98 * t138) * t69;
	t1 = [t90 * t77 * t105 + (qJD(3) * t101 - t119 * t122) * t69, 0, t52, 0; (t59 * t106 + (-t59 * t117 + (qJD(1) * t54 + t51) * t130) * t56) * t89 + (t60 * t106 * t54 + (-((t55 * t103 + t133 * t117 + t105) * t66 + (t104 * t125 - t131 + (t131 + (-t75 * t78 + t134) * t116) * t69) * t67) * t112 + (t80 * t114 - t60 * t117) * t54 + (-t59 + ((-t84 + t85) * t67 * t110 + t133 * t111) * t60) * t80 * qJD(1)) * t56) * t90, 0, (t53 * t130 - t59 * t81) * t90 * t115 + ((-t59 * t119 + (-qJD(3) * t53 - t51) * t129) * t81 + (-t90 * qJD(3) * t59 - (-t52 * t67 * t89 - t136 * t66 + (-qJD(3) * t66 - t118 * t67 + t127 * t55) * t64) * t112 + (t90 * t114 + t60 * t119) * t53 - ((t52 - t118) * t66 + ((-t64 * t89 + 0.1e1) * qJD(3) + (t64 - t89) * t55) * t67) * t81 * t129) * t80) * t56, 0; t107 * t77 * t113 + (-qJD(3) * t99 - 0.2e1 * t77 * t135) * t72, 0, t86 * t78 * t113 * t120 + ((-0.2e1 * t76 * t79 - t77) * t86 * t116 - qJD(1) * t99) * t72, 0;];
	JaD_rot = t1;
else
	JaD_rot=NaN(3,4);
end