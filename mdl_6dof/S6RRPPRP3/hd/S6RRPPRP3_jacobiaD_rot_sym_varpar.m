% Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S6RRPPRP3
% Use Code from Maple symbolic Code Generation
% 
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% Zeitableitung der Winkeldarstellung des Endeffektors in Basis-Koordinaten
% 
% Winkeldarstellung: Euler-XYZ-Winkel, rotx(alpha)*roty(beta)*rotz(gamma)
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt.
%   Wie in S6RRPPRP3_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d5]';
% 
% Output:
% JaD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 09:30
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_rot = S6RRPPRP3_jacobiaD_rot_sym_varpar(qJ, qJD, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPRP3_jacobiaD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPPRP3_jacobiaD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRPPRP3_jacobiaD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S6RRPPRP3_jacobiaD_rot_sym_varpar: pkin has to be [8x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiaD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:30:29
	% EndTime: 2019-10-10 09:30:29
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiaD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:30:29
	% EndTime: 2019-10-10 09:30:29
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (9->0), mult. (37->0), div. (15->0), fcn. (22->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiaD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:30:29
	% EndTime: 2019-10-10 09:30:29
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiaD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:30:30
	% EndTime: 2019-10-10 09:30:30
	% DurationCPUTime: 0.79s
	% Computational Cost: add. (776->71), mult. (1835->159), div. (470->13), fcn. (2177->7), ass. (0->71)
	t82 = sin(qJ(1));
	t113 = qJD(1) * t82;
	t133 = 0.2e1 * t82;
	t73 = t82 ^ 2;
	t84 = cos(qJ(1));
	t77 = t84 ^ 2;
	t78 = 0.1e1 / t84;
	t131 = (t73 / t77 + 0.1e1) * t78 * t113;
	t81 = sin(qJ(2));
	t114 = t82 * t81;
	t83 = cos(qJ(2));
	t63 = atan2(-t114, -t83);
	t61 = sin(t63);
	t105 = t61 * t114;
	t62 = cos(t63);
	t57 = -t62 * t83 - t105;
	t54 = 0.1e1 / t57;
	t74 = 0.1e1 / t83;
	t55 = 0.1e1 / t57 ^ 2;
	t75 = 0.1e1 / t83 ^ 2;
	t130 = -0.2e1 * t81;
	t71 = t81 ^ 2;
	t118 = t71 * t75;
	t68 = t73 * t118 + 0.1e1;
	t64 = 0.1e1 / t68;
	t129 = t64 - 0.1e1;
	t112 = qJD(1) * t84;
	t103 = t81 * t112;
	t111 = qJD(2) * t82;
	t120 = t62 * t81;
	t110 = qJD(2) * t83;
	t50 = (-(-t82 * t110 - t103) * t74 + t111 * t118) * t64;
	t46 = (-t50 * t82 + qJD(2)) * t120 + (-t103 + (t50 - t111) * t83) * t61;
	t128 = t46 * t54 * t55;
	t127 = t50 * t61;
	t126 = t50 * t81;
	t125 = t55 * t81;
	t124 = t55 * t84;
	t115 = t74 * t81;
	t70 = t81 * t71;
	t76 = t74 * t75;
	t92 = qJD(2) * (t70 * t76 + t115);
	t96 = t71 * t82 * t112;
	t123 = (t73 * t92 + t75 * t96) / t68 ^ 2;
	t102 = 0.1e1 + t118;
	t60 = t102 * t82 * t64;
	t122 = t60 * t82;
	t121 = t61 * t83;
	t119 = t71 * t74;
	t117 = t71 * t77;
	t116 = t73 / t84 ^ 2;
	t53 = t55 * t117 + 0.1e1;
	t109 = 0.2e1 * (-t117 * t128 + (t77 * t81 * t110 - t96) * t55) / t53 ^ 2;
	t108 = 0.2e1 * t128;
	t69 = t75 * t116 + 0.1e1;
	t107 = 0.2e1 * (t76 * qJD(2) * t81 * t116 + t75 * t131) / t69 ^ 2;
	t106 = t81 * t124;
	t104 = t64 * t119;
	t101 = 0.1e1 + t116;
	t100 = t81 * t109;
	t99 = t123 * t130;
	t98 = t123 * t133;
	t97 = t82 * t104;
	t95 = t102 * t84;
	t93 = t101 * t81 * t75;
	t66 = 0.1e1 / t69;
	t51 = 0.1e1 / t53;
	t49 = (t129 * t81 * t61 - t62 * t97) * t84;
	t48 = -t82 * t121 + t120 + (-t62 * t114 + t121) * t60;
	t47 = -t102 * t98 + (qJD(1) * t95 + t92 * t133) * t64;
	t1 = [t84 * t74 * t99 + (qJD(2) * t95 - t113 * t115) * t64, t47, 0, 0, 0, 0; (t54 * t100 + (-t54 * t110 + (qJD(1) * t49 + t46) * t125) * t51) * t82 + (t55 * t100 * t49 + (-((t129 * t110 + t50 * t97 + t99) * t61 + (t98 * t119 - t126 + (t126 + (-t70 * t75 + t130) * t111) * t64) * t62) * t106 + (t81 * t108 - t55 * t110) * t49 + (-t54 + ((-t73 + t77) * t62 * t104 + t129 * t105) * t55) * t81 * qJD(1)) * t51) * t84, (t48 * t125 - t54 * t83) * t84 * t109 + ((-t54 * t113 + (-qJD(2) * t48 - t46) * t124) * t83 + (-t84 * qJD(2) * t54 - (-t47 * t62 * t82 + t61 * t111 + t122 * t127 - t127 + (-qJD(2) * t61 - t112 * t62) * t60) * t106 + (t84 * t108 + t55 * t113) * t48 - ((t47 - t112) * t61 + ((0.1e1 - t122) * qJD(2) + (t60 - t82) * t50) * t62) * t83 * t124) * t81) * t51, 0, 0, 0, 0; t101 * t74 * t107 + (-qJD(2) * t93 - 0.2e1 * t74 * t131) * t66, t78 * t75 * t107 * t114 + ((-0.2e1 * t71 * t76 - t74) * t78 * t111 - qJD(1) * t93) * t66, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiaD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:30:29
	% EndTime: 2019-10-10 09:30:29
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiaD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:30:29
	% EndTime: 2019-10-10 09:30:30
	% DurationCPUTime: 0.94s
	% Computational Cost: add. (813->92), mult. (2519->208), div. (480->12), fcn. (2968->9), ass. (0->95)
	t132 = sin(qJ(1));
	t173 = qJD(2) * t132;
	t126 = t132 ^ 2;
	t131 = sin(qJ(2));
	t124 = 0.1e1 / t131 ^ 2;
	t134 = cos(qJ(2));
	t128 = t134 ^ 2;
	t184 = t124 * t128;
	t119 = t126 * t184 + 0.1e1;
	t117 = 0.1e1 / t119;
	t123 = 0.1e1 / t131;
	t160 = t124 * t173;
	t135 = cos(qJ(1));
	t175 = qJD(1) * t135;
	t161 = t134 * t175;
	t91 = ((t131 * t173 - t161) * t123 + t128 * t160) * t117;
	t151 = -t91 + t173;
	t179 = t132 * t134;
	t116 = atan2(-t179, t131);
	t115 = cos(t116);
	t114 = sin(t116);
	t165 = t114 * t179;
	t100 = t115 * t131 - t165;
	t97 = 0.1e1 / t100;
	t133 = cos(qJ(5));
	t178 = t133 * t135;
	t163 = t131 * t178;
	t130 = sin(qJ(5));
	t181 = t132 * t130;
	t113 = t163 - t181;
	t107 = 0.1e1 / t113;
	t98 = 0.1e1 / t100 ^ 2;
	t108 = 0.1e1 / t113 ^ 2;
	t197 = t117 - 0.1e1;
	t152 = -t132 * t91 + qJD(2);
	t186 = t115 * t134;
	t86 = t152 * t186 + (t131 * t151 - t161) * t114;
	t196 = t86 * t97 * t98;
	t129 = t135 ^ 2;
	t96 = t128 * t129 * t98 + 0.1e1;
	t94 = 0.1e1 / t96;
	t195 = t94 * t98;
	t194 = t97 * t94;
	t180 = t132 * t133;
	t182 = t131 * t135;
	t112 = t130 * t182 + t180;
	t106 = t112 ^ 2;
	t105 = t106 * t108 + 0.1e1;
	t189 = t108 * t112;
	t149 = qJD(1) * t131 + qJD(5);
	t150 = qJD(5) * t131 + qJD(1);
	t171 = qJD(2) * t135;
	t159 = t134 * t171;
	t183 = t130 * t135;
	t93 = -t150 * t183 + (-t132 * t149 + t159) * t133;
	t192 = t107 * t108 * t93;
	t92 = -qJD(5) * t163 - t130 * t159 - t133 * t175 + t149 * t181;
	t193 = 0.1e1 / t105 ^ 2 * (-t106 * t192 - t189 * t92);
	t191 = t135 * t98;
	t190 = t107 * t130;
	t188 = t112 * t133;
	t187 = t114 * t132;
	t185 = t123 * t128;
	t177 = qJD(1) * t132;
	t176 = qJD(1) * t134;
	t174 = qJD(2) * t131;
	t172 = qJD(2) * t134;
	t162 = t132 * t175;
	t166 = t98 * t174;
	t170 = 0.2e1 * (-t129 * t134 * t166 + (-t129 * t196 - t162 * t98) * t128) / t96 ^ 2;
	t169 = 0.2e1 * t196;
	t168 = 0.2e1 * t193;
	t127 = t134 * t128;
	t144 = qJD(2) * (-t124 * t127 - t134) * t123;
	t167 = 0.2e1 * (t126 * t144 + t162 * t184) / t119 ^ 2;
	t164 = t117 * t185;
	t158 = t97 * t170;
	t157 = t98 * t170;
	t156 = 0.1e1 + t184;
	t155 = 0.2e1 * t112 * t192;
	t154 = t132 * t167;
	t153 = t134 * t167;
	t148 = t132 * t164;
	t147 = t156 * t135;
	t146 = t149 * t135;
	t145 = t188 * t108 - t190;
	t143 = t145 * t135;
	t111 = -t131 * t180 - t183;
	t110 = -t131 * t181 + t178;
	t104 = t156 * t132 * t117;
	t102 = 0.1e1 / t105;
	t90 = (t114 * t134 * t197 + t115 * t148) * t135;
	t89 = t131 * t187 + t186 + (-t114 * t131 - t115 * t179) * t104;
	t87 = -t156 * t154 + (qJD(1) * t147 + 0.2e1 * t132 * t144) * t117;
	t1 = [t123 * t135 * t153 + (t123 * t132 * t176 + qJD(2) * t147) * t117, t87, 0, 0, 0, 0; (t174 * t194 + (t158 + (qJD(1) * t90 + t86) * t195) * t134) * t132 + (t90 * t157 * t134 + (t90 * t166 + (t90 * t169 + ((t148 * t91 + t174 * t197 + t153) * t114 + (t154 * t185 + t91 * t134 + (t127 * t160 - (t91 - 0.2e1 * t173) * t134) * t117) * t115) * t191) * t134 + (-t97 + (-(-t126 + t129) * t115 * t164 + t197 * t165) * t98) * t176) * t94) * t135, (t177 * t194 + (t158 + (qJD(2) * t89 + t86) * t195) * t135) * t131 + (t89 * t135 * t157 + (-t97 * t171 - (-t115 * t132 * t87 + t151 * t114 + (-qJD(2) * t114 - t115 * t175 + t187 * t91) * t104) * t134 * t191 + (t135 * t169 + t98 * t177) * t89) * t94 - ((-t87 + t175) * t114 + (t104 * t151 - t152) * t115) * t182 * t195) * t134, 0, 0, 0, 0; (-t107 * t110 + t111 * t189) * t168 + (t111 * t155 - t150 * t107 * t180 + (-t132 * t172 - t146) * t190 + (-t110 * t93 + t111 * t92 + t146 * t188 - (t130 * t150 - t133 * t172) * t112 * t132) * t108) * t102, t134 * t143 * t168 + (t143 * t174 + (t145 * t177 + ((qJD(5) * t107 + t155) * t133 + (t133 * t92 + (qJD(5) * t112 - t93) * t130) * t108) * t135) * t134) * t102, 0, 0, -0.2e1 * t193 + 0.2e1 * (-t102 * t108 * t92 + (-t102 * t192 - t108 * t193) * t112) * t112, 0;];
	JaD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiaD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:30:29
	% EndTime: 2019-10-10 09:30:30
	% DurationCPUTime: 0.95s
	% Computational Cost: add. (813->93), mult. (2519->208), div. (480->12), fcn. (2968->9), ass. (0->92)
	t134 = sin(qJ(2));
	t135 = sin(qJ(1));
	t137 = cos(qJ(2));
	t181 = t135 * t137;
	t119 = atan2(-t181, t134);
	t118 = cos(t119);
	t117 = sin(t119);
	t167 = t117 * t181;
	t103 = t118 * t134 - t167;
	t100 = 0.1e1 / t103;
	t136 = cos(qJ(5));
	t138 = cos(qJ(1));
	t180 = t136 * t138;
	t165 = t134 * t180;
	t133 = sin(qJ(5));
	t183 = t135 * t133;
	t116 = t165 - t183;
	t110 = 0.1e1 / t116;
	t126 = 0.1e1 / t134;
	t101 = 0.1e1 / t103 ^ 2;
	t111 = 0.1e1 / t116 ^ 2;
	t127 = 0.1e1 / t134 ^ 2;
	t129 = t135 ^ 2;
	t131 = t137 ^ 2;
	t187 = t127 * t131;
	t122 = t129 * t187 + 0.1e1;
	t120 = 0.1e1 / t122;
	t198 = t120 - 0.1e1;
	t132 = t138 ^ 2;
	t186 = t131 * t132;
	t99 = t101 * t186 + 0.1e1;
	t97 = 0.1e1 / t99;
	t197 = t101 * t97;
	t174 = qJD(2) * t135;
	t163 = t127 * t174;
	t176 = qJD(1) * t138;
	t164 = t137 * t176;
	t94 = ((t134 * t174 - t164) * t126 + t131 * t163) * t120;
	t155 = -t94 + t174;
	t156 = -t135 * t94 + qJD(2);
	t189 = t118 * t137;
	t89 = t156 * t189 + (t155 * t134 - t164) * t117;
	t196 = t100 * t101 * t89;
	t182 = t135 * t136;
	t184 = t134 * t138;
	t115 = t133 * t184 + t182;
	t109 = t115 ^ 2;
	t108 = t109 * t111 + 0.1e1;
	t192 = t111 * t115;
	t153 = qJD(1) * t134 + qJD(5);
	t154 = qJD(5) * t134 + qJD(1);
	t173 = qJD(2) * t137;
	t162 = t138 * t173;
	t185 = t133 * t138;
	t96 = -t154 * t185 + (-t153 * t135 + t162) * t136;
	t194 = t110 * t111 * t96;
	t95 = -qJD(5) * t165 - t133 * t162 - t136 * t176 + t153 * t183;
	t195 = 0.1e1 / t108 ^ 2 * (-t109 * t194 - t95 * t192);
	t193 = t110 * t133;
	t191 = t115 * t136;
	t190 = t117 * t134;
	t188 = t126 * t131;
	t178 = qJD(1) * t135;
	t177 = qJD(1) * t137;
	t175 = qJD(2) * t134;
	t151 = t131 * t135 * t176;
	t172 = 0.2e1 * (-t186 * t196 + (-t132 * t134 * t173 - t151) * t101) / t99 ^ 2;
	t171 = 0.2e1 * t196;
	t170 = 0.2e1 * t195;
	t130 = t137 * t131;
	t147 = qJD(2) * (-t127 * t130 - t137) * t126;
	t169 = 0.2e1 * (t127 * t151 + t129 * t147) / t122 ^ 2;
	t168 = t97 * t175;
	t166 = t120 * t188;
	t161 = 0.1e1 + t187;
	t160 = t100 * t172;
	t159 = 0.2e1 * t115 * t194;
	t158 = t135 * t169;
	t157 = t137 * t169;
	t152 = t135 * t166;
	t150 = t161 * t138;
	t149 = t153 * t138;
	t148 = t111 * t191 - t193;
	t146 = t148 * t138;
	t114 = -t134 * t182 - t185;
	t113 = -t134 * t183 + t180;
	t107 = t161 * t135 * t120;
	t105 = 0.1e1 / t108;
	t93 = (t198 * t137 * t117 + t118 * t152) * t138;
	t92 = t135 * t190 + t189 + (-t118 * t181 - t190) * t107;
	t90 = -t161 * t158 + (qJD(1) * t150 + 0.2e1 * t135 * t147) * t120;
	t1 = [t126 * t138 * t157 + (t126 * t135 * t177 + qJD(2) * t150) * t120, t90, 0, 0, 0, 0; (t100 * t168 + (t160 + (qJD(1) * t93 + t89) * t197) * t137) * t135 + (t93 * t137 * t97 * t171 + (t93 * t168 + (t93 * t172 + ((t94 * t152 + t198 * t175 + t157) * t117 + (t158 * t188 + t137 * t94 + (t130 * t163 - (t94 - 0.2e1 * t174) * t137) * t120) * t118) * t97 * t138) * t137) * t101 + (-t100 + ((t129 - t132) * t118 * t166 + t198 * t167) * t101) * t97 * t177) * t138, (t100 * t97 * t178 + (t160 + (qJD(2) * t92 + t89) * t197) * t138) * t134 + (t92 * t138 * t101 * t172 + ((-qJD(2) * t100 + t92 * t171) * t138 + (t92 * t178 + (-(-t107 * t176 - t135 * t90) * t118 - ((t107 * t135 - 0.1e1) * t94 + (-t107 + t135) * qJD(2)) * t117) * t137 * t138) * t101) * t97 - ((-t90 + t176) * t117 + (t155 * t107 - t156) * t118) * t184 * t197) * t137, 0, 0, 0, 0; (-t110 * t113 + t114 * t192) * t170 + (t114 * t159 - t154 * t110 * t182 + (-t135 * t173 - t149) * t193 + (-t113 * t96 + t114 * t95 + t149 * t191 - (t154 * t133 - t136 * t173) * t115 * t135) * t111) * t105, t137 * t146 * t170 + (t146 * t175 + (t148 * t178 + ((qJD(5) * t110 + t159) * t136 + (t136 * t95 + (qJD(5) * t115 - t96) * t133) * t111) * t138) * t137) * t105, 0, 0, -0.2e1 * t195 + 0.2e1 * (-t105 * t111 * t95 + (-t105 * t194 - t111 * t195) * t115) * t115, 0;];
	JaD_rot = t1;
else
	JaD_rot=NaN(3,6);
end