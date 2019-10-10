% Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S6RRPRRP8
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
%   Wie in S6RRPRRP8_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d5,theta3]';
% 
% Output:
% JaD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 10:41
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_rot = S6RRPRRP8_jacobiaD_rot_sym_varpar(qJ, qJD, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP8_jacobiaD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRP8_jacobiaD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRPRRP8_jacobiaD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPRRP8_jacobiaD_rot_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiaD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:41:03
	% EndTime: 2019-10-10 10:41:03
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiaD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:41:03
	% EndTime: 2019-10-10 10:41:03
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (9->0), mult. (37->0), div. (15->0), fcn. (22->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiaD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:41:03
	% EndTime: 2019-10-10 10:41:03
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiaD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:41:03
	% EndTime: 2019-10-10 10:41:04
	% DurationCPUTime: 0.96s
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
	t76 = qJD(1) * t82 - t99 * t118;
	t133 = t102 * t103;
	t84 = t101 * t98 + t99 * t133;
	t78 = 0.1e1 / t84;
	t79 = 0.1e1 / t84 ^ 2;
	t80 = t78 * t79;
	t145 = t76 * t80;
	t81 = -t103 * t99 - t98 * t134;
	t75 = qJD(1) * t81 - t98 * t118;
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
	t147 = (t111 * t93 + t95 * t114) / t90 ^ 2;
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
	t1 = [-t124 * t132 + (qJD(2) * t113 + t100 * t116) * t103, t58, 0, 0, 0, 0; (-t66 * t120 + (0.2e1 * t125 + (qJD(1) * t61 + t57) * t148) * t100) * t101 + (-t61 * t67 * t120 + (t61 * t117 + (t61 * t126 + ((-t62 * t115 - t152 * t128 + t147 * t153) * t85 + (-t62 * t121 + (t92 * t116 + (t153 + t155) * t88 * qJD(2)) * t101) * t86) * t137) * t63) * t100 + (-t66 + (-(t93 - t97) * t92 * t86 * t142 + t152 * t123) * t67) * t63 * t132) * t103, (-t66 * t63 * t131 + (-0.2e1 * t125 + (-qJD(2) * t59 - t57) * t148) * t103) * t102 + (t59 * t103 * t117 + (-t66 * t127 - ((-t101 * t58 - t130 * t74) * t86 + (t157 * t62 + t129 - t136) * t85) * t100 * t137 + (t103 * t126 + t67 * t131) * t59) * t63 - ((t58 - t130) * t85 + (t62 * t74 + qJD(2) + (-t62 - t136) * t101) * t86) * t133 * t148) * t100, 0, 0, 0, 0; 0.2e1 * (t79 * t144 - t78 * t81) * t156 + ((-qJD(1) * t83 + t98 * t119) * t78 + 0.2e1 * t144 * t145 + (-t81 * t76 - (-qJD(1) * t84 + t99 * t119) * t83 - t82 * t75) * t79) * t70, t102 * t127 * t154 + (-t131 * t154 + (-0.2e1 * t112 * t156 + (t99 * t146 + (-0.2e1 * t80 * t143 + t79 * t98) * t76) * t70) * t103) * t100, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiaD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:41:04
	% EndTime: 2019-10-10 10:41:05
	% DurationCPUTime: 1.09s
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
	% StartTime: 2019-10-10 10:41:04
	% EndTime: 2019-10-10 10:41:05
	% DurationCPUTime: 1.18s
	% Computational Cost: add. (2009->96), mult. (2734->204), div. (498->12), fcn. (3199->9), ass. (0->95)
	t155 = sin(qJ(2));
	t149 = t155 ^ 2;
	t157 = cos(qJ(2));
	t152 = 0.1e1 / t157 ^ 2;
	t202 = t149 * t152;
	t156 = sin(qJ(1));
	t220 = 0.2e1 * t156;
	t219 = t155 * t202;
	t146 = pkin(10) + qJ(4) + qJ(5);
	t145 = cos(t146);
	t158 = cos(qJ(1));
	t194 = t157 * t158;
	t144 = sin(t146);
	t198 = t156 * t144;
	t134 = t145 * t194 + t198;
	t196 = t156 * t155;
	t139 = atan2(-t196, -t157);
	t137 = cos(t139);
	t136 = sin(t139);
	t183 = t136 * t196;
	t124 = -t137 * t157 - t183;
	t121 = 0.1e1 / t124;
	t128 = 0.1e1 / t134;
	t151 = 0.1e1 / t157;
	t122 = 0.1e1 / t124 ^ 2;
	t129 = 0.1e1 / t134 ^ 2;
	t218 = -0.2e1 * t155;
	t150 = t156 ^ 2;
	t142 = t150 * t202 + 0.1e1;
	t140 = 0.1e1 / t142;
	t217 = t140 - 0.1e1;
	t147 = qJD(4) + qJD(5);
	t195 = t156 * t157;
	t168 = t144 * t195 + t145 * t158;
	t189 = qJD(2) * t158;
	t179 = t155 * t189;
	t112 = t168 * qJD(1) - t134 * t147 + t144 * t179;
	t197 = t156 * t145;
	t133 = t144 * t194 - t197;
	t127 = t133 ^ 2;
	t117 = t127 * t129 + 0.1e1;
	t207 = t129 * t133;
	t173 = -qJD(1) * t157 + t147;
	t174 = t147 * t157 - qJD(1);
	t204 = t144 * t158;
	t113 = -t174 * t204 + (t173 * t156 - t179) * t145;
	t214 = t113 * t128 * t129;
	t216 = (-t112 * t207 - t127 * t214) / t117 ^ 2;
	t192 = qJD(1) * t158;
	t180 = t155 * t192;
	t190 = qJD(2) * t157;
	t191 = qJD(2) * t156;
	t114 = (-(-t156 * t190 - t180) * t151 + t191 * t202) * t140;
	t205 = t137 * t155;
	t108 = (-t114 * t156 + qJD(2)) * t205 + (-t180 + (t114 - t191) * t157) * t136;
	t215 = t108 * t121 * t122;
	t213 = t114 * t136;
	t212 = t114 * t155;
	t211 = t122 * t155;
	t200 = t151 * t155;
	t167 = qJD(2) * (t151 * t219 + t200);
	t171 = t149 * t156 * t192;
	t210 = (t150 * t167 + t152 * t171) / t142 ^ 2;
	t178 = 0.1e1 + t202;
	t126 = t178 * t156 * t140;
	t209 = t126 * t156;
	t208 = t128 * t144;
	t206 = t133 * t145;
	t203 = t149 * t151;
	t154 = t158 ^ 2;
	t201 = t149 * t154;
	t199 = t155 * t158;
	t193 = qJD(1) * t156;
	t120 = t122 * t201 + 0.1e1;
	t188 = 0.2e1 * (-t201 * t215 + (t154 * t155 * t190 - t171) * t122) / t120 ^ 2;
	t187 = -0.2e1 * t216;
	t186 = 0.2e1 * t215;
	t185 = t133 * t214;
	t184 = t122 * t199;
	t182 = t140 * t203;
	t177 = t155 * t188;
	t176 = t210 * t218;
	t175 = t210 * t220;
	t172 = t156 * t182;
	t170 = t178 * t158;
	t169 = t129 * t206 - t208;
	t166 = t155 * t191 + t173 * t158;
	t132 = -t145 * t195 + t204;
	t118 = 0.1e1 / t120;
	t115 = 0.1e1 / t117;
	t111 = (t217 * t155 * t136 - t137 * t172) * t158;
	t110 = -t136 * t195 + t205 + (t136 * t157 - t137 * t196) * t126;
	t109 = -t178 * t175 + (qJD(1) * t170 + t167 * t220) * t140;
	t105 = t187 + 0.2e1 * (-t112 * t115 * t129 + (-t115 * t214 - t129 * t216) * t133) * t133;
	t1 = [t151 * t158 * t176 + (qJD(2) * t170 - t193 * t200) * t140, t109, 0, 0, 0, 0; (t121 * t177 + (-t121 * t190 + (qJD(1) * t111 + t108) * t211) * t118) * t156 + (t122 * t177 * t111 + (-((t114 * t172 + t217 * t190 + t176) * t136 + (t175 * t203 - t212 + (t212 + (t218 - t219) * t191) * t140) * t137) * t184 + (-t122 * t190 + t155 * t186) * t111 + (-t121 + ((-t150 + t154) * t137 * t182 + t217 * t183) * t122) * t155 * qJD(1)) * t118) * t158, (t110 * t211 - t121 * t157) * t158 * t188 + ((-t121 * t193 + (-qJD(2) * t110 - t108) * t158 * t122) * t157 + (-t121 * t189 - (-t109 * t137 * t156 + t136 * t191 + t209 * t213 - t213 + (-qJD(2) * t136 - t137 * t192) * t126) * t184 + (t122 * t193 + t158 * t186) * t110 - ((t109 - t192) * t136 + ((0.1e1 - t209) * qJD(2) + (t126 - t156) * t114) * t137) * t122 * t194) * t155) * t118, 0, 0, 0, 0; 0.2e1 * (t128 * t168 + t132 * t207) * t216 + (0.2e1 * t132 * t185 - t174 * t128 * t197 + t166 * t208 + (-t174 * t133 * t198 + t132 * t112 + t113 * t168 - t166 * t206) * t129) * t115, t169 * t187 * t199 + (t169 * t157 * t189 + (-t169 * t193 + ((-t128 * t147 - 0.2e1 * t185) * t145 + (-t112 * t145 + (-t133 * t147 + t113) * t144) * t129) * t158) * t155) * t115, 0, t105, t105, 0;];
	JaD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiaD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:41:04
	% EndTime: 2019-10-10 10:41:05
	% DurationCPUTime: 1.64s
	% Computational Cost: add. (11090->123), mult. (8378->264), div. (1558->15), fcn. (10537->9), ass. (0->116)
	t187 = pkin(10) + qJ(4) + qJ(5);
	t186 = cos(t187);
	t270 = 0.2e1 * t186;
	t185 = sin(t187);
	t195 = cos(qJ(2));
	t196 = cos(qJ(1));
	t243 = t196 * t186;
	t226 = t195 * t243;
	t264 = sin(qJ(1));
	t171 = t264 * t185 + t226;
	t165 = 0.1e1 / t171 ^ 2;
	t194 = sin(qJ(2));
	t189 = t194 ^ 2;
	t193 = t196 ^ 2;
	t248 = t189 * t193;
	t231 = t165 * t248;
	t161 = 0.1e1 + t231;
	t219 = qJD(1) * t264;
	t241 = qJD(2) * t195;
	t204 = t189 * t196 * t219 - t193 * t194 * t241;
	t188 = qJD(4) + qJD(5);
	t240 = qJD(2) * t196;
	t221 = t194 * t240;
	t207 = t195 * t219 + t221;
	t225 = t264 * t188;
	t244 = t196 * t185;
	t150 = (-t188 * t195 + qJD(1)) * t244 + (t225 - t207) * t186;
	t164 = 0.1e1 / t171;
	t259 = t150 * t164 * t165;
	t214 = t248 * t259;
	t269 = (-t204 * t165 - t214) / t161 ^ 2;
	t223 = t264 * t195;
	t167 = t185 * t223 + t243;
	t268 = t167 * t188;
	t246 = t194 * t196;
	t149 = t167 * qJD(1) - t188 * t226 + (t221 - t225) * t185;
	t170 = -t264 * t186 + t195 * t244;
	t182 = 0.1e1 / t185;
	t183 = 0.1e1 / t185 ^ 2;
	t190 = 0.1e1 / t194;
	t191 = 0.1e1 / t194 ^ 2;
	t222 = t191 * t241;
	t250 = t186 * t188;
	t252 = t182 * t190;
	t267 = (t183 * t190 * t250 + t182 * t222) * t170 + t149 * t252;
	t247 = t194 * t185;
	t157 = atan2(-t167, t247);
	t154 = cos(t157);
	t153 = sin(t157);
	t258 = t153 * t167;
	t148 = t154 * t247 - t258;
	t145 = 0.1e1 / t148;
	t146 = 0.1e1 / t148 ^ 2;
	t266 = -0.2e1 * t167;
	t265 = 0.2e1 * t170;
	t162 = t167 ^ 2;
	t251 = t183 * t191;
	t158 = t162 * t251 + 0.1e1;
	t155 = 0.1e1 / t158;
	t249 = t186 * t194;
	t208 = t185 * t241 + t188 * t249;
	t229 = t167 * t251;
	t224 = t264 * t194;
	t212 = qJD(2) * t224;
	t242 = qJD(1) * t196;
	t151 = -t185 * t212 - t188 * t244 - t186 * t219 + (t185 * t242 + t186 * t225) * t195;
	t232 = t151 * t252;
	t137 = (t208 * t229 - t232) * t155;
	t205 = -t137 * t167 + t208;
	t132 = (-t137 * t247 - t151) * t153 + t205 * t154;
	t147 = t145 * t146;
	t263 = t132 * t147;
	t184 = t182 * t183;
	t192 = t190 / t189;
	t227 = t191 * t250;
	t262 = (t151 * t229 + (-t183 * t192 * t241 - t184 * t227) * t162) / t158 ^ 2;
	t261 = t146 * t170;
	t260 = t149 * t146;
	t257 = t153 * t170;
	t256 = t153 * t194;
	t255 = t154 * t167;
	t254 = t154 * t170;
	t253 = t154 * t195;
	t245 = t195 * t196;
	t163 = t170 ^ 2;
	t143 = t146 * t163 + 0.1e1;
	t239 = 0.2e1 * (-t163 * t263 - t170 * t260) / t143 ^ 2;
	t238 = -0.2e1 * t262;
	t237 = 0.2e1 * t269;
	t236 = t147 * t265;
	t235 = t190 * t262;
	t234 = t146 * t257;
	t230 = t167 * t252;
	t228 = t182 * t191 * t195;
	t210 = t167 * t228 + t264;
	t144 = t210 * t155;
	t220 = t264 - t144;
	t218 = t145 * t239;
	t217 = t146 * t239;
	t216 = t246 * t265;
	t215 = t182 * t235;
	t169 = t186 * t223 - t244;
	t211 = t167 * t183 * t186 - t169 * t182;
	t209 = t165 * t169 * t196 - t264 * t164;
	t159 = 0.1e1 / t161;
	t152 = t171 * qJD(1) - t186 * t212 - t268;
	t141 = 0.1e1 / t143;
	t140 = t211 * t190 * t155;
	t136 = (-t153 + (t154 * t230 + t153) * t155) * t170;
	t135 = -t144 * t255 + (t220 * t256 + t253) * t185;
	t134 = t154 * t249 - t153 * t169 + (-t153 * t247 - t255) * t140;
	t133 = t165 * t216 * t269 + (t216 * t259 + (t149 * t246 + (t194 * t219 - t195 * t240) * t170) * t165) * t159;
	t131 = t210 * t238 + (t151 * t228 + t242 + (-t183 * t195 * t227 + (-0.2e1 * t192 * t195 ^ 2 - t190) * t182 * qJD(2)) * t167) * t155;
	t129 = -0.2e1 * t211 * t235 + (-t211 * t222 + ((-t152 - t268) * t182 + (t184 * t250 * t266 + (t169 * t188 + t151) * t183) * t186) * t190) * t155;
	t128 = (t134 * t261 - t145 * t171) * t239 + (t134 * t260 + t150 * t145 + (t134 * t236 - t171 * t146) * t132 - (t186 * t241 - t188 * t247 - t129 * t167 - t140 * t151 + (-t140 * t247 - t169) * t137) * t146 * t254 - (-t152 + (-t129 * t185 - t137 * t186) * t194 - t205 * t140) * t234) * t141;
	t1 = [t267 * t155 + t215 * t265, t131, 0, t129, t129, 0; t167 * t218 + (-t151 * t145 + (t132 * t167 + t136 * t149) * t146) * t141 + (t136 * t217 + (0.2e1 * t136 * t263 + (t149 * t155 - t149 - (-t137 * t155 * t230 + t238) * t170) * t146 * t153 + (-(t215 * t266 - t137) * t261 + (-(t137 + t232) * t170 + t267 * t167) * t146 * t155) * t154) * t141) * t170, t135 * t170 * t217 + (-(-t131 * t255 + (t137 * t258 - t151 * t154) * t144) * t261 + (-t145 * t246 - (-t144 * t256 + t153 * t224 + t253) * t261) * t250 + (t132 * t236 + t260) * t135) * t141 + (t218 * t246 + ((-t145 * t240 - (t220 * qJD(2) - t137) * t234) * t195 + (t145 * t219 + (t196 * t132 - (-t131 + t242) * t257 - (t220 * t137 - qJD(2)) * t254) * t146) * t194) * t141) * t185, 0, t128, t128, 0; t209 * t194 * t237 + (-t209 * t241 + ((qJD(1) * t164 + 0.2e1 * t169 * t259) * t196 + (-t264 * t150 - t152 * t196 + t169 * t219) * t165) * t194) * t159, (t164 * t245 + t186 * t231) * t237 + (t214 * t270 + t207 * t164 + (t185 * t188 * t248 + t150 * t245 + t204 * t270) * t165) * t159, 0, t133, t133, 0;];
	JaD_rot = t1;
else
	JaD_rot=NaN(3,6);
end