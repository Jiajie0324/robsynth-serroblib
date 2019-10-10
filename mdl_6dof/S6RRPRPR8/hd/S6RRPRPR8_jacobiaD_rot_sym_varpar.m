% Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S6RRPRPR8
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
%   Wie in S6RRPRPR8_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d6,theta3]';
% 
% Output:
% JaD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 10:17
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_rot = S6RRPRPR8_jacobiaD_rot_sym_varpar(qJ, qJD, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPR8_jacobiaD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRPR8_jacobiaD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRPRPR8_jacobiaD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPRPR8_jacobiaD_rot_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiaD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:17:10
	% EndTime: 2019-10-10 10:17:10
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiaD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:17:10
	% EndTime: 2019-10-10 10:17:10
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (9->0), mult. (37->0), div. (15->0), fcn. (22->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiaD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:17:10
	% EndTime: 2019-10-10 10:17:10
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiaD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:17:10
	% EndTime: 2019-10-10 10:17:11
	% DurationCPUTime: 0.98s
	% Computational Cost: add. (892->82), mult. (2191->191), div. (456->12), fcn. (2616->9), ass. (0->85)
	t100 = sin(qJ(2));
	t92 = t100 ^ 2;
	t102 = cos(qJ(2));
	t95 = 0.1e1 / t102 ^ 2;
	t141 = t92 * t95;
	t101 = sin(qJ(1));
	t122 = 0.1e1 + t141;
	t93 = t101 ^ 2;
	t90 = t93 * t141 + 0.1e1;
	t88 = 0.1e1 / t90;
	t113 = t122 * t88;
	t74 = t101 * t113;
	t157 = t101 * t74 - 0.1e1;
	t103 = cos(qJ(1));
	t127 = qJD(2) * t103;
	t118 = t100 * t127;
	t134 = t101 * t102;
	t98 = sin(pkin(10));
	t99 = cos(pkin(10));
	t82 = t103 * t98 - t99 * t134;
	t76 = t82 * qJD(1) - t99 * t118;
	t133 = t102 * t103;
	t84 = t101 * t98 + t99 * t133;
	t78 = 0.1e1 / t84;
	t79 = 0.1e1 / t84 ^ 2;
	t80 = t78 * t79;
	t145 = t76 * t80;
	t81 = -t103 * t99 - t98 * t134;
	t75 = t81 * qJD(1) - t98 * t118;
	t146 = t75 * t79;
	t83 = -t101 * t99 + t98 * t133;
	t77 = t83 ^ 2;
	t72 = t77 * t79 + 0.1e1;
	t156 = (-t77 * t145 + t83 * t146) / t72 ^ 2;
	t155 = t100 * t141;
	t143 = t83 * t99;
	t112 = t79 * t143 - t78 * t98;
	t70 = 0.1e1 / t72;
	t154 = t112 * t70;
	t135 = t101 * t100;
	t87 = atan2(-t135, -t102);
	t85 = sin(t87);
	t123 = t85 * t135;
	t86 = cos(t87);
	t69 = -t102 * t86 - t123;
	t66 = 0.1e1 / t69;
	t94 = 0.1e1 / t102;
	t67 = 0.1e1 / t69 ^ 2;
	t153 = 0.2e1 * t100;
	t152 = t88 - 0.1e1;
	t130 = qJD(1) * t103;
	t114 = t101 * t92 * t130;
	t128 = qJD(2) * t102;
	t97 = t103 ^ 2;
	t140 = t92 * t97;
	t129 = qJD(2) * t101;
	t138 = t102 * t85;
	t62 = (-(-t100 * t130 - t101 * t128) * t94 + t129 * t141) * t88;
	t57 = (t62 - t129) * t138 + (-t85 * t130 + (-t101 * t62 + qJD(2)) * t86) * t100;
	t150 = t57 * t66 * t67;
	t65 = t67 * t140 + 0.1e1;
	t151 = (-t140 * t150 + (t100 * t97 * t128 - t114) * t67) / t65 ^ 2;
	t63 = 0.1e1 / t65;
	t148 = t63 * t67;
	t111 = qJD(2) * (t100 + t155) * t94;
	t147 = (t93 * t111 + t95 * t114) / t90 ^ 2;
	t144 = t82 * t83;
	t142 = t88 * t94;
	t137 = t103 * t67;
	t136 = qJD(2) * t74;
	t132 = qJD(1) * t100;
	t131 = qJD(1) * t101;
	t126 = 0.2e1 * t150;
	t125 = t66 * t151;
	t124 = t101 * t142;
	t121 = t100 * t152;
	t120 = t63 * t128;
	t119 = t100 * t129;
	t117 = 0.2e1 * t67 * t151;
	t116 = -0.2e1 * t94 * t147;
	t115 = t92 * t124;
	t61 = (-t86 * t115 + t85 * t121) * t103;
	t59 = (-t101 + t74) * t138 - t157 * t86 * t100;
	t58 = t113 * t130 + 0.2e1 * (t111 * t88 - t122 * t147) * t101;
	t1 = [-t124 * t132 + (qJD(2) * t113 + t100 * t116) * t103, t58, 0, 0, 0, 0; (-t66 * t120 + (0.2e1 * t125 + (qJD(1) * t61 + t57) * t148) * t100) * t101 + (-t61 * t67 * t120 + (t61 * t117 + (t61 * t126 + ((-t62 * t115 - t152 * t128 + t147 * t153) * t85 + (-t62 * t121 + (t92 * t116 + (t153 + t155) * t88 * qJD(2)) * t101) * t86) * t137) * t63) * t100 + (-t66 + (-(t93 - t97) * t92 * t86 * t142 + t152 * t123) * t67) * t63 * t132) * t103, (-t66 * t63 * t131 + (-0.2e1 * t125 + (-qJD(2) * t59 - t57) * t148) * t103) * t102 + (t59 * t103 * t117 + (-t66 * t127 - ((-t101 * t58 - t130 * t74) * t86 + (t157 * t62 + t129 - t136) * t85) * t100 * t137 + (t103 * t126 + t67 * t131) * t59) * t63 - ((t58 - t130) * t85 + (t62 * t74 + qJD(2) + (-t62 - t136) * t101) * t86) * t133 * t148) * t100, 0, 0, 0, 0; 0.2e1 * (t79 * t144 - t78 * t81) * t156 + ((-t83 * qJD(1) + t98 * t119) * t78 + 0.2e1 * t144 * t145 + (-t81 * t76 - (-t84 * qJD(1) + t99 * t119) * t83 - t82 * t75) * t79) * t70, t102 * t127 * t154 + (-t131 * t154 + (-0.2e1 * t112 * t156 + (t99 * t146 + (-0.2e1 * t80 * t143 + t79 * t98) * t76) * t70) * t103) * t100, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiaD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:17:10
	% EndTime: 2019-10-10 10:17:11
	% DurationCPUTime: 1.04s
	% Computational Cost: add. (1350->93), mult. (2519->209), div. (480->12), fcn. (2968->9), ass. (0->94)
	t133 = sin(qJ(1));
	t127 = t133 ^ 2;
	t132 = sin(qJ(2));
	t126 = t132 ^ 2;
	t134 = cos(qJ(2));
	t129 = 0.1e1 / t134 ^ 2;
	t182 = t126 * t129;
	t119 = t127 * t182 + 0.1e1;
	t125 = t132 * t126;
	t128 = 0.1e1 / t134;
	t179 = t128 * t132;
	t144 = qJD(2) * (t125 * t128 * t129 + t179);
	t135 = cos(qJ(1));
	t171 = qJD(1) * t135;
	t180 = t126 * t133;
	t148 = t171 * t180;
	t188 = (t127 * t144 + t129 * t148) / t119 ^ 2;
	t198 = -0.2e1 * t188;
	t124 = pkin(10) + qJ(4);
	t123 = cos(t124);
	t173 = t134 * t135;
	t122 = sin(t124);
	t177 = t133 * t122;
	t112 = t123 * t173 + t177;
	t107 = 0.1e1 / t112 ^ 2;
	t176 = t133 * t123;
	t111 = t122 * t173 - t176;
	t185 = t111 * t123;
	t106 = 0.1e1 / t112;
	t187 = t106 * t122;
	t146 = t107 * t185 - t187;
	t105 = t111 ^ 2;
	t98 = t105 * t107 + 0.1e1;
	t96 = 0.1e1 / t98;
	t197 = t146 * t96;
	t155 = 0.1e1 + t182;
	t196 = t133 * t155;
	t175 = t133 * t132;
	t116 = atan2(-t175, -t134);
	t114 = cos(t116);
	t113 = sin(t116);
	t161 = t113 * t175;
	t102 = -t114 * t134 - t161;
	t99 = 0.1e1 / t102;
	t100 = 0.1e1 / t102 ^ 2;
	t117 = 0.1e1 / t119;
	t195 = t117 - 0.1e1;
	t131 = t135 ^ 2;
	t169 = qJD(2) * t134;
	t181 = t126 * t131;
	t170 = qJD(2) * t133;
	t157 = t129 * t170;
	t158 = t132 * t171;
	t92 = (-(-t133 * t169 - t158) * t128 + t126 * t157) * t117;
	t152 = t92 - t170;
	t153 = -t133 * t92 + qJD(2);
	t184 = t114 * t132;
	t86 = t153 * t184 + (t152 * t134 - t158) * t113;
	t191 = t99 * t100 * t86;
	t95 = t100 * t181 + 0.1e1;
	t194 = (-t181 * t191 + (t131 * t132 * t169 - t148) * t100) / t95 ^ 2;
	t186 = t107 * t111;
	t150 = -qJD(1) * t134 + qJD(4);
	t151 = qJD(4) * t134 - qJD(1);
	t168 = qJD(2) * t135;
	t156 = t132 * t168;
	t183 = t122 * t135;
	t91 = -t151 * t183 + (t150 * t133 - t156) * t123;
	t190 = t106 * t107 * t91;
	t174 = t133 * t134;
	t145 = t122 * t174 + t123 * t135;
	t90 = t145 * qJD(1) - qJD(4) * t112 + t122 * t156;
	t193 = (-t105 * t190 - t90 * t186) / t98 ^ 2;
	t93 = 0.1e1 / t95;
	t192 = t100 * t93;
	t178 = t132 * t135;
	t172 = qJD(1) * t133;
	t167 = 0.2e1 * t194;
	t166 = -0.2e1 * t193;
	t165 = 0.2e1 * t191;
	t164 = t99 * t194;
	t163 = t111 * t190;
	t162 = t93 * t169;
	t160 = t117 * t126 * t128;
	t154 = t128 * t198;
	t149 = t133 * t160;
	t147 = t155 * t135;
	t143 = t132 * t170 + t150 * t135;
	t110 = -t123 * t174 + t183;
	t104 = t117 * t196;
	t89 = (t195 * t132 * t113 - t114 * t149) * t135;
	t88 = -t113 * t174 + t184 + (t113 * t134 - t114 * t175) * t104;
	t87 = t196 * t198 + (qJD(1) * t147 + 0.2e1 * t133 * t144) * t117;
	t1 = [t154 * t178 + (qJD(2) * t147 - t172 * t179) * t117, t87, 0, 0, 0, 0; (-t99 * t162 + (0.2e1 * t164 + (qJD(1) * t89 + t86) * t192) * t132) * t133 + ((-t89 * t162 + (t89 * t167 + ((0.2e1 * t132 * t188 - t92 * t149 - t195 * t169) * t113 + (t154 * t180 + t132 * t92 + (t125 * t157 - (t92 - 0.2e1 * t170) * t132) * t117) * t114) * t93 * t135) * t132) * t100 + (t89 * t165 + (-t99 + ((-t127 + t131) * t114 * t160 + t195 * t161) * t100) * qJD(1)) * t132 * t93) * t135, (-t99 * t93 * t172 + (-0.2e1 * t164 + (-qJD(2) * t88 - t86) * t192) * t135) * t134 + (t88 * t135 * t100 * t167 + ((-qJD(2) * t99 + t88 * t165) * t135 + (t88 * t172 + (-(-t104 * t171 - t133 * t87) * t114 - ((t104 * t133 - 0.1e1) * t92 + (-t104 + t133) * qJD(2)) * t113) * t178) * t100) * t93 - ((t87 - t171) * t113 + (t152 * t104 + t153) * t114) * t173 * t192) * t132, 0, 0, 0, 0; 0.2e1 * (t106 * t145 + t110 * t186) * t193 + (0.2e1 * t110 * t163 - t151 * t106 * t176 + t143 * t187 + (-t151 * t111 * t177 + t110 * t90 - t143 * t185 + t145 * t91) * t107) * t96, t134 * t168 * t197 + (-t172 * t197 + (t146 * t166 + ((-qJD(4) * t106 - 0.2e1 * t163) * t123 + (-t123 * t90 + (-qJD(4) * t111 + t91) * t122) * t107) * t96) * t135) * t132, 0, t166 + 0.2e1 * (-t107 * t90 * t96 + (-t107 * t193 - t96 * t190) * t111) * t111, 0, 0;];
	JaD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiaD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:17:10
	% EndTime: 2019-10-10 10:17:12
	% DurationCPUTime: 1.48s
	% Computational Cost: add. (4821->123), mult. (6168->268), div. (1114->15), fcn. (7752->9), ass. (0->114)
	t156 = pkin(10) + qJ(4);
	t155 = cos(t156);
	t238 = 0.2e1 * t155;
	t154 = sin(t156);
	t163 = cos(qJ(2));
	t164 = cos(qJ(1));
	t214 = t164 * t155;
	t234 = sin(qJ(1));
	t140 = t234 * t154 + t163 * t214;
	t134 = 0.1e1 / t140 ^ 2;
	t162 = sin(qJ(2));
	t157 = t162 ^ 2;
	t161 = t164 ^ 2;
	t219 = t157 * t161;
	t199 = t134 * t219;
	t130 = 0.1e1 + t199;
	t188 = qJD(1) * t234;
	t212 = qJD(2) * t163;
	t172 = t157 * t164 * t188 - t161 * t162 * t212;
	t211 = qJD(2) * t164;
	t192 = t162 * t211;
	t175 = t163 * t188 + t192;
	t187 = t234 * qJD(4);
	t215 = t164 * t154;
	t119 = (-qJD(4) * t163 + qJD(1)) * t215 + (t187 - t175) * t155;
	t133 = 0.1e1 / t140;
	t229 = t119 * t133 * t134;
	t182 = t219 * t229;
	t237 = (-t172 * t134 - t182) / t130 ^ 2;
	t217 = t162 * t164;
	t194 = t234 * t163;
	t136 = t154 * t194 + t214;
	t180 = t154 * t187;
	t208 = qJD(4) * t164;
	t190 = t155 * t208;
	t118 = t136 * qJD(1) + t154 * t192 - t163 * t190 - t180;
	t139 = -t234 * t155 + t163 * t215;
	t151 = 0.1e1 / t154;
	t152 = 0.1e1 / t154 ^ 2;
	t158 = 0.1e1 / t162;
	t159 = 0.1e1 / t162 ^ 2;
	t193 = t159 * t212;
	t210 = qJD(4) * t155;
	t222 = t151 * t158;
	t236 = (t152 * t158 * t210 + t151 * t193) * t139 + t118 * t222;
	t218 = t162 * t154;
	t126 = atan2(-t136, t218);
	t123 = cos(t126);
	t122 = sin(t126);
	t228 = t122 * t136;
	t117 = t123 * t218 - t228;
	t114 = 0.1e1 / t117;
	t115 = 0.1e1 / t117 ^ 2;
	t235 = 0.2e1 * t139;
	t131 = t136 ^ 2;
	t220 = t152 * t159;
	t127 = t131 * t220 + 0.1e1;
	t124 = 0.1e1 / t127;
	t209 = qJD(4) * t162;
	t176 = t154 * t212 + t155 * t209;
	t197 = t136 * t220;
	t195 = t234 * t162;
	t181 = qJD(2) * t195;
	t213 = qJD(1) * t164;
	t120 = (t187 * t163 - t188) * t155 + (t213 * t163 - t181 - t208) * t154;
	t200 = t120 * t222;
	t106 = (t176 * t197 - t200) * t124;
	t173 = -t106 * t136 + t176;
	t102 = (-t106 * t218 - t120) * t122 + t173 * t123;
	t116 = t114 * t115;
	t233 = t102 * t116;
	t153 = t151 * t152;
	t160 = t158 / t157;
	t191 = t159 * t210;
	t232 = (t120 * t197 + (-t152 * t160 * t212 - t153 * t191) * t131) / t127 ^ 2;
	t231 = t115 * t139;
	t230 = t118 * t115;
	t227 = t122 * t139;
	t226 = t122 * t162;
	t225 = t123 * t136;
	t224 = t123 * t139;
	t223 = t123 * t163;
	t221 = t152 * t155;
	t216 = t163 * t164;
	t132 = t139 ^ 2;
	t112 = t115 * t132 + 0.1e1;
	t207 = 0.2e1 * (-t132 * t233 - t139 * t230) / t112 ^ 2;
	t206 = -0.2e1 * t232;
	t205 = 0.2e1 * t237;
	t204 = t116 * t235;
	t203 = t158 * t232;
	t202 = t115 * t227;
	t198 = t136 * t222;
	t196 = t151 * t159 * t163;
	t178 = t136 * t196 + t234;
	t113 = t178 * t124;
	t189 = t234 - t113;
	t186 = t114 * t207;
	t185 = t115 * t207;
	t184 = t217 * t235;
	t183 = t151 * t203;
	t138 = t155 * t194 - t215;
	t179 = t136 * t221 - t138 * t151;
	t177 = t134 * t138 * t164 - t234 * t133;
	t128 = 0.1e1 / t130;
	t121 = t140 * qJD(1) - t155 * t181 - t163 * t180 - t190;
	t110 = 0.1e1 / t112;
	t109 = t179 * t158 * t124;
	t105 = (-t122 + (t123 * t198 + t122) * t124) * t139;
	t104 = -t113 * t225 + (t189 * t226 + t223) * t154;
	t103 = t123 * t155 * t162 - t122 * t138 + (-t122 * t218 - t225) * t109;
	t101 = t178 * t206 + (t120 * t196 + t213 + (-t152 * t163 * t191 + (-0.2e1 * t160 * t163 ^ 2 - t158) * t151 * qJD(2)) * t136) * t124;
	t99 = -0.2e1 * t179 * t203 + (-t179 * t193 + (t120 * t221 - t121 * t151 + (t138 * t221 + (-0.2e1 * t153 * t155 ^ 2 - t151) * t136) * qJD(4)) * t158) * t124;
	t1 = [t236 * t124 + t183 * t235, t101, 0, t99, 0, 0; t136 * t186 + (-t120 * t114 + (t102 * t136 + t105 * t118) * t115) * t110 + (t105 * t185 + (0.2e1 * t105 * t233 + (t118 * t124 - t118 - (-t106 * t124 * t198 + t206) * t139) * t115 * t122 + (-(-0.2e1 * t136 * t183 - t106) * t231 + (-(t106 + t200) * t139 + t236 * t136) * t115 * t124) * t123) * t110) * t139, t104 * t139 * t185 + (-(-t101 * t225 + (t106 * t228 - t120 * t123) * t113) * t231 + (t102 * t204 + t230) * t104 + (-t114 * t217 - (-t113 * t226 + t122 * t195 + t223) * t231) * t210) * t110 + (t186 * t217 + ((-t114 * t211 - (t189 * qJD(2) - t106) * t202) * t163 + (t114 * t188 + (t164 * t102 - (-t101 + t213) * t227 - (t189 * t106 - qJD(2)) * t224) * t115) * t162) * t110) * t154, 0, (t103 * t231 - t114 * t140) * t207 + (t103 * t230 + t119 * t114 + (t103 * t204 - t115 * t140) * t102 - (t155 * t212 - t154 * t209 - t109 * t120 - t136 * t99 + (-t109 * t218 - t138) * t106) * t115 * t224 - (-t121 + (-t106 * t155 - t154 * t99) * t162 - t173 * t109) * t202) * t110, 0, 0; t177 * t162 * t205 + (-t177 * t212 + ((qJD(1) * t133 + 0.2e1 * t138 * t229) * t164 + (-t234 * t119 - t121 * t164 + t138 * t188) * t134) * t162) * t128, (t133 * t216 + t155 * t199) * t205 + (t182 * t238 + t175 * t133 + (qJD(4) * t154 * t219 + t119 * t216 + t172 * t238) * t134) * t128, 0, t134 * t184 * t237 + (t184 * t229 + (t118 * t217 + (t162 * t188 - t163 * t211) * t139) * t134) * t128, 0, 0;];
	JaD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiaD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:17:10
	% EndTime: 2019-10-10 10:17:12
	% DurationCPUTime: 1.47s
	% Computational Cost: add. (2275->116), mult. (4276->247), div. (493->12), fcn. (5073->11), ass. (0->112)
	t269 = qJD(4) - qJD(6);
	t190 = sin(qJ(2));
	t183 = t190 ^ 2;
	t193 = cos(qJ(2));
	t186 = 0.1e1 / t193 ^ 2;
	t247 = t183 * t186;
	t191 = sin(qJ(1));
	t184 = t191 ^ 2;
	t176 = t184 * t247 + 0.1e1;
	t185 = 0.1e1 / t193;
	t244 = t185 * t190;
	t267 = t190 * t247;
	t203 = qJD(2) * (t185 * t267 + t244);
	t194 = cos(qJ(1));
	t235 = qJD(1) * t194;
	t245 = t183 * t191;
	t211 = t235 * t245;
	t250 = (t184 * t203 + t186 * t211) / t176 ^ 2;
	t268 = -0.2e1 * t250;
	t218 = 0.1e1 + t247;
	t266 = t191 * t218;
	t181 = pkin(10) + qJ(4);
	t180 = cos(t181);
	t237 = t194 * t180;
	t179 = sin(t181);
	t242 = t191 * t179;
	t169 = t193 * t237 + t242;
	t192 = cos(qJ(6));
	t265 = t269 * t192;
	t189 = sin(qJ(6));
	t264 = t269 * t189;
	t239 = t191 * t193;
	t204 = t179 * t239 + t237;
	t232 = qJD(2) * t194;
	t219 = t190 * t232;
	t139 = t204 * qJD(1) - t169 * qJD(4) + t179 * t219;
	t213 = -qJD(1) * t193 + qJD(4);
	t214 = qJD(4) * t193 - qJD(1);
	t238 = t194 * t179;
	t140 = -t214 * t238 + (t213 * t191 - t219) * t180;
	t241 = t191 * t180;
	t168 = t193 * t238 - t241;
	t207 = t168 * t192 - t169 * t189;
	t133 = t207 * qJD(6) - t139 * t189 + t140 * t192;
	t153 = t168 * t189 + t169 * t192;
	t145 = 0.1e1 / t153;
	t205 = t179 * t189 + t180 * t192;
	t206 = t179 * t192 - t180 * t189;
	t146 = 0.1e1 / t153 ^ 2;
	t254 = t146 * t207;
	t263 = t206 * t145 - t205 * t254;
	t240 = t191 * t190;
	t175 = atan2(t240, t193);
	t172 = cos(t175);
	t171 = sin(t175);
	t223 = t171 * t240;
	t160 = t172 * t193 + t223;
	t157 = 0.1e1 / t160;
	t158 = 0.1e1 / t160 ^ 2;
	t262 = 0.2e1 * t190;
	t173 = 0.1e1 / t176;
	t261 = t173 - 0.1e1;
	t132 = t153 * qJD(6) + t139 * t192 + t140 * t189;
	t144 = t207 ^ 2;
	t137 = t144 * t146 + 0.1e1;
	t147 = t145 * t146;
	t257 = t133 * t147;
	t260 = (-t132 * t254 - t144 * t257) / t137 ^ 2;
	t188 = t194 ^ 2;
	t246 = t183 * t188;
	t156 = t158 * t246 + 0.1e1;
	t233 = qJD(2) * t193;
	t220 = t190 * t235;
	t234 = qJD(2) * t191;
	t143 = ((t191 * t233 + t220) * t185 + t234 * t247) * t173;
	t248 = t172 * t190;
	t130 = (t143 * t191 - qJD(2)) * t248 + (t220 + (-t143 + t234) * t193) * t171;
	t258 = t130 * t157 * t158;
	t259 = (-t246 * t258 + (t188 * t190 * t233 - t211) * t158) / t156 ^ 2;
	t256 = t143 * t171;
	t255 = t143 * t190;
	t243 = t190 * t194;
	t164 = t205 * t243;
	t253 = t146 * t164;
	t252 = t158 * t190;
	t251 = t158 * t194;
	t162 = t173 * t266;
	t249 = t162 * t191;
	t236 = qJD(1) * t191;
	t227 = 0.2e1 * t260;
	t226 = -0.2e1 * t258;
	t225 = -0.2e1 * t147 * t207;
	t224 = t158 * t243;
	t222 = t173 * t183 * t185;
	t217 = -0.2e1 * t190 * t259;
	t216 = t133 * t225;
	t215 = t185 * t268;
	t212 = t191 * t222;
	t210 = t218 * t194;
	t167 = -t180 * t239 + t238;
	t208 = -t167 * t189 - t192 * t204;
	t149 = t167 * t192 - t189 * t204;
	t202 = t190 * t234 + t213 * t194;
	t163 = t206 * t243;
	t154 = 0.1e1 / t156;
	t142 = t202 * t180 + t214 * t242;
	t141 = t202 * t179 - t214 * t241;
	t138 = (-t261 * t190 * t171 + t172 * t212) * t194;
	t135 = 0.1e1 / t137;
	t134 = t171 * t239 - t248 + (-t171 * t193 + t172 * t240) * t162;
	t131 = t266 * t268 + (qJD(1) * t210 + 0.2e1 * t191 * t203) * t173;
	t1 = [t215 * t243 + (qJD(2) * t210 - t236 * t244) * t173, t131, 0, 0, 0, 0; (t157 * t217 + (t157 * t233 + (-qJD(1) * t138 - t130) * t252) * t154) * t191 + (t158 * t217 * t138 + (((-t143 * t212 - t261 * t233 + t250 * t262) * t171 + (t215 * t245 + t255 + (-t255 + (t262 + t267) * t234) * t173) * t172) * t224 + (t158 * t233 + t190 * t226) * t138 + (t157 + ((-t184 + t188) * t172 * t222 + t261 * t223) * t158) * t190 * qJD(1)) * t154) * t194, 0.2e1 * (-t134 * t252 + t157 * t193) * t194 * t259 + ((t157 * t236 + (qJD(2) * t134 + t130) * t251) * t193 + (t157 * t232 + (t131 * t172 * t191 - t171 * t234 - t249 * t256 + t256 + (qJD(2) * t171 + t172 * t235) * t162) * t224 + (-t158 * t236 + t194 * t226) * t134 + ((-t131 + t235) * t171 + ((-0.1e1 + t249) * qJD(2) + (-t162 + t191) * t143) * t172) * t193 * t251) * t190) * t154, 0, 0, 0, 0; (t145 * t208 - t149 * t254) * t227 + ((t149 * qJD(6) - t141 * t192 + t142 * t189) * t145 + t149 * t216 + (t208 * t133 + (t208 * qJD(6) + t141 * t189 + t142 * t192) * t207 - t149 * t132) * t146) * t135, (-t145 * t163 + t207 * t253) * t227 + (t132 * t253 + (-t163 * t146 - t164 * t225) * t133 + t263 * t193 * t232 + (-t263 * t236 + ((t265 * t145 - t264 * t254) * t180 + (t264 * t145 + t265 * t254) * t179) * t194) * t190) * t135, 0, (t145 * t153 + t207 * t254) * t227 + (-t133 * t145 - t207 * t216 + (0.2e1 * t207 * t132 + t153 * t133) * t146) * t135, 0, -0.2e1 * t260 - 0.2e1 * (t132 * t146 * t135 - (-t135 * t257 - t146 * t260) * t207) * t207;];
	JaD_rot = t1;
else
	JaD_rot=NaN(3,6);
end