% Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S5RRPRR14
% Use Code from Maple symbolic Code Generation
% 
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% Zeitableitung der Winkeldarstellung des Endeffektors in Basis-Koordinaten
% 
% Winkeldarstellung: Euler-XYZ-Winkel, rotx(alpha)*roty(beta)*rotz(gamma)
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt.
%   Wie in S5RRPRR14_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,d1,d2,d4,d5,theta3]';
% 
% Output:
% JaD_rot [3x5]
%   Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 20:40
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_rot = S5RRPRR14_jacobiaD_rot_sym_varpar(qJ, qJD, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),uint8(0),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRR14_jacobiaD_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPRR14_jacobiaD_rot_sym_varpar: qJD has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RRPRR14_jacobiaD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S5RRPRR14_jacobiaD_rot_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiaD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 20:40:13
	% EndTime: 2019-12-31 20:40:13
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiaD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 20:40:13
	% EndTime: 2019-12-31 20:40:13
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (9->0), mult. (37->0), div. (15->0), fcn. (22->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiaD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 20:40:13
	% EndTime: 2019-12-31 20:40:13
	% DurationCPUTime: 0.30s
	% Computational Cost: add. (215->39), mult. (853->106), div. (126->12), fcn. (1047->9), ass. (0->54)
	t99 = sin(pkin(5));
	t93 = t99 ^ 2;
	t100 = cos(pkin(5));
	t95 = 0.1e1 / t100 ^ 2;
	t104 = cos(qJ(1));
	t98 = t104 ^ 2;
	t89 = t98 * t93 * t95 + 0.1e1;
	t102 = sin(qJ(1));
	t97 = t102 ^ 2;
	t126 = 0.1e1 / t89 ^ 2 * t97;
	t131 = t126 * t95;
	t122 = t104 * t99;
	t88 = atan2(t122, t100);
	t84 = sin(t88);
	t85 = cos(t88);
	t72 = t85 * t100 + t84 * t122;
	t67 = 0.1e1 / t72;
	t103 = cos(qJ(2));
	t118 = t104 * t103;
	t101 = sin(qJ(2));
	t121 = t102 * t101;
	t113 = t100 * t121 - t118;
	t77 = 0.1e1 / t113;
	t94 = 0.1e1 / t100;
	t68 = 0.1e1 / t72 ^ 2;
	t78 = 0.1e1 / t113 ^ 2;
	t119 = t104 * t101;
	t120 = t102 * t103;
	t81 = -t100 * t119 - t120;
	t82 = t100 * t120 + t119;
	t71 = t81 * qJD(1) - t82 * qJD(2);
	t128 = t71 * t77 * t78;
	t115 = t100 * t118;
	t70 = -qJD(1) * t115 - qJD(2) * t118 + (qJD(2) * t100 + qJD(1)) * t121;
	t129 = t70 * t78;
	t76 = t82 ^ 2;
	t75 = t76 * t78 + 0.1e1;
	t130 = (t76 * t128 - t82 * t129) / t75 ^ 2;
	t127 = t81 * t82;
	t125 = t93 * t94;
	t124 = t102 * t68;
	t123 = t104 * t68;
	t117 = qJD(1) * t104;
	t86 = 0.1e1 / t89;
	t116 = (t86 - 0.1e1) * t99;
	t114 = -0.2e1 * t94 * t131;
	t80 = t115 - t121;
	t63 = (-t104 * t85 * t86 * t125 + t84 * t116) * t102;
	t92 = t99 * t93;
	t73 = 0.1e1 / t75;
	t69 = t67 * t68;
	t66 = t97 * t93 * t68 + 0.1e1;
	t62 = qJD(1) * t63;
	t1 = [(-t86 * t94 * t99 + t92 * t114) * t117, 0, 0, 0, 0; (0.2e1 * (-t104 * t67 + t63 * t124) / t66 ^ 2 * (-t62 * t69 * t97 + t117 * t124) * t93 + ((0.2e1 * t102 * t63 * t69 - t123) * t62 + (-t63 * t123 + (-t67 + (-t92 * t131 - t116) * t84 * t123 - (t93 ^ 2 * t98 * t114 + (-t126 + (0.2e1 * t97 - t98) * t86) * t125) * t68 * t85) * t102) * qJD(1)) / t66) * t99, 0, 0, 0, 0; 0.2e1 * (t78 * t127 + t77 * t80) * t130 + (-(-t82 * qJD(1) + t81 * qJD(2)) * t77 - 0.2e1 * t127 * t128 + (-t80 * t71 - (t113 * qJD(1) - t80 * qJD(2)) * t82 + t81 * t70) * t78) * t73, -0.2e1 * t130 + 0.2e1 * (-t73 * t129 + (t73 * t128 - t78 * t130) * t82) * t82, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiaD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 20:40:13
	% EndTime: 2019-12-31 20:40:14
	% DurationCPUTime: 0.61s
	% Computational Cost: add. (1295->85), mult. (3755->195), div. (644->14), fcn. (4884->11), ass. (0->88)
	t141 = sin(qJ(2));
	t143 = cos(qJ(2));
	t142 = sin(qJ(1));
	t181 = cos(pkin(5));
	t159 = t142 * t181;
	t189 = cos(qJ(1));
	t151 = -t189 * t141 - t143 * t159;
	t156 = t181 * t189;
	t155 = t143 * t156;
	t173 = t142 * t141;
	t123 = -t155 + t173;
	t139 = sin(pkin(5));
	t174 = t139 * t143;
	t117 = atan2(-t123, -t174);
	t115 = sin(t117);
	t116 = cos(t117);
	t97 = -t115 * t123 - t116 * t174;
	t95 = 0.1e1 / t97 ^ 2;
	t182 = t151 * t95;
	t121 = t123 ^ 2;
	t134 = 0.1e1 / t139 ^ 2;
	t136 = 0.1e1 / t143 ^ 2;
	t120 = t121 * t134 * t136 + 0.1e1;
	t118 = 0.1e1 / t120;
	t133 = 0.1e1 / t139;
	t135 = 0.1e1 / t143;
	t165 = t123 * t133 * t135;
	t190 = (t116 * t165 - t115) * t118 + t115;
	t94 = 0.1e1 / t97;
	t157 = t141 * t159;
	t163 = t189 * t143;
	t127 = t163 - t157;
	t138 = sin(pkin(10));
	t140 = cos(pkin(10));
	t175 = t139 * t142;
	t114 = t127 * t140 + t138 * t175;
	t108 = 0.1e1 / t114;
	t109 = 0.1e1 / t114 ^ 2;
	t103 = -qJD(1) * t155 - qJD(2) * t163 + (qJD(2) * t181 + qJD(1)) * t173;
	t122 = t151 ^ 2;
	t150 = -t141 * t156 - t142 * t143;
	t105 = -t151 * qJD(1) - t150 * qJD(2);
	t172 = qJD(2) * t141;
	t161 = t136 * t172;
	t152 = t105 * t135 + t123 * t161;
	t178 = t118 * t133;
	t88 = t152 * t178;
	t84 = (-t123 * t88 + t139 * t172) * t116 + (t88 * t174 - t105) * t115;
	t96 = t94 * t95;
	t187 = t84 * t96;
	t92 = t122 * t95 + 0.1e1;
	t188 = (t103 * t182 - t122 * t187) / t92 ^ 2;
	t113 = t127 * t138 - t140 * t175;
	t107 = t113 ^ 2;
	t100 = t107 * t109 + 0.1e1;
	t104 = t150 * qJD(1) + t151 * qJD(2);
	t160 = t189 * qJD(1);
	t158 = t139 * t160;
	t101 = t104 * t138 - t140 * t158;
	t179 = t109 * t113;
	t102 = t104 * t140 + t138 * t158;
	t180 = t102 * t108 * t109;
	t186 = (t101 * t179 - t107 * t180) / t100 ^ 2;
	t185 = t103 * t95;
	t137 = t135 * t136;
	t184 = 0.1e1 / t120 ^ 2 * (t105 * t123 * t136 + t121 * t137 * t172) * t134;
	t177 = t136 * t141;
	t153 = t123 * t177 - t135 * t150;
	t89 = t153 * t178;
	t183 = t123 * t89;
	t176 = t138 * t108;
	t171 = 0.2e1 * t188;
	t170 = 0.2e1 * t186;
	t169 = -0.2e1 * t184;
	t168 = t115 * t182;
	t167 = t116 * t182;
	t166 = t113 * t180;
	t164 = t139 * t189;
	t162 = qJD(1) * t175;
	t112 = t138 * t164 + t140 * t150;
	t111 = t138 * t150 - t140 * t164;
	t106 = -qJD(1) * t157 - t142 * t172 + (qJD(2) * t156 + t160) * t143;
	t98 = 0.1e1 / t100;
	t90 = 0.1e1 / t92;
	t87 = t190 * t151;
	t85 = (t139 * t141 - t183) * t116 + (t89 * t174 + t150) * t115;
	t83 = (t153 * t169 + (t105 * t177 + t106 * t135 + (-t150 * t177 + (0.2e1 * t137 * t141 ^ 2 + t135) * t123) * qJD(2)) * t118) * t133;
	t1 = [(-t151 * t135 * t169 + (-t103 * t135 - t151 * t161) * t118) * t133, t83, 0, 0, 0; -0.2e1 * t188 * t87 * t182 + t123 * t94 * t171 + (-t105 * t94 + (t103 * t87 + t123 * t84) * t95 - (0.2e1 * t187 * t87 + (t118 * t88 * t165 + t169) * t168 + (0.2e1 * t165 * t184 - t88 + (-t152 * t133 + t88) * t118) * t167 - t190 * t185) * t151) * t90, (-t127 * t94 - t85 * t182) * t171 + (t85 * t185 + t104 * t94 + (-0.2e1 * t151 * t85 * t96 - t127 * t95) * t84 + (-t105 * t89 - t123 * t83 + t150 * t88 + (t88 * t89 + qJD(2)) * t174) * t167 + (t88 * t183 - t106 + (t143 * t83 + (-qJD(2) * t89 - t88) * t141) * t139) * t168) * t90, 0, 0, 0; (-t108 * t111 + t112 * t179) * t170 + ((-t106 * t138 + t140 * t162) * t108 + 0.2e1 * t112 * t166 + (-t111 * t102 - (-t106 * t140 - t138 * t162) * t113 - t112 * t101) * t109) * t98, (-t140 * t179 + t176) * t98 * t103 - (-0.2e1 * t140 * t98 * t166 + t170 * t176 + (t102 * t138 * t98 + (t101 * t98 - 0.2e1 * t113 * t186) * t140) * t109) * t151, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiaD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 20:40:13
	% EndTime: 2019-12-31 20:40:14
	% DurationCPUTime: 0.75s
	% Computational Cost: add. (1788->92), mult. (4303->201), div. (668->14), fcn. (5516->11), ass. (0->92)
	t178 = sin(qJ(2));
	t179 = sin(qJ(1));
	t231 = cos(pkin(5));
	t201 = t179 * t231;
	t199 = t178 * t201;
	t180 = cos(qJ(2));
	t181 = cos(qJ(1));
	t215 = t181 * t180;
	t162 = -t199 + t215;
	t173 = pkin(10) + qJ(4);
	t169 = sin(t173);
	t170 = cos(t173);
	t177 = sin(pkin(5));
	t219 = t177 * t179;
	t191 = -t162 * t169 + t170 * t219;
	t233 = t191 * qJD(4);
	t200 = t181 * t231;
	t198 = t180 * t200;
	t216 = t179 * t178;
	t158 = -t198 + t216;
	t218 = t177 * t180;
	t152 = atan2(-t158, -t218);
	t150 = sin(t152);
	t151 = cos(t152);
	t156 = t158 ^ 2;
	t172 = 0.1e1 / t177 ^ 2;
	t175 = 0.1e1 / t180 ^ 2;
	t155 = t156 * t172 * t175 + 0.1e1;
	t153 = 0.1e1 / t155;
	t171 = 0.1e1 / t177;
	t174 = 0.1e1 / t180;
	t205 = t158 * t171 * t174;
	t232 = (t151 * t205 - t150) * t153 + t150;
	t134 = -t150 * t158 - t151 * t218;
	t131 = 0.1e1 / t134;
	t149 = t162 * t170 + t169 * t219;
	t143 = 0.1e1 / t149;
	t132 = 0.1e1 / t134 ^ 2;
	t144 = 0.1e1 / t149 ^ 2;
	t188 = -t178 * t200 - t179 * t180;
	t189 = -t181 * t178 - t180 * t201;
	t140 = -t189 * qJD(1) - t188 * qJD(2);
	t213 = qJD(2) * t178;
	t202 = t175 * t213;
	t190 = t140 * t174 + t158 * t202;
	t221 = t153 * t171;
	t123 = t190 * t221;
	t194 = t150 * t218 - t151 * t158;
	t206 = t151 * t177 * t178;
	t119 = qJD(2) * t206 + t194 * t123 - t150 * t140;
	t230 = t119 * t131 * t132;
	t220 = t175 * t178;
	t193 = t158 * t220 - t174 * t188;
	t124 = t193 * t221;
	t120 = t194 * t124 + t150 * t188 + t206;
	t229 = t120 * t189;
	t139 = t188 * qJD(1) + t189 * qJD(2);
	t214 = qJD(1) * t177;
	t203 = t181 * t214;
	t128 = t149 * qJD(4) + t139 * t169 - t170 * t203;
	t142 = t191 ^ 2;
	t137 = t142 * t144 + 0.1e1;
	t224 = t144 * t191;
	t129 = t139 * t170 + t169 * t203 + t233;
	t227 = t129 * t143 * t144;
	t228 = (-t128 * t224 - t142 * t227) / t137 ^ 2;
	t176 = t174 * t175;
	t226 = (t140 * t158 * t175 + t156 * t176 * t213) * t172 / t155 ^ 2;
	t197 = qJD(2) * t231 + qJD(1);
	t212 = qJD(2) * t180;
	t138 = -qJD(1) * t198 - t181 * t212 + t197 * t216;
	t225 = t138 * t132;
	t223 = t150 * t189;
	t222 = t151 * t189;
	t217 = t177 * t181;
	t157 = t189 ^ 2;
	t127 = t157 * t132 + 0.1e1;
	t211 = 0.2e1 * (-t157 * t230 + t189 * t225) / t127 ^ 2;
	t210 = 0.2e1 * t230;
	t209 = 0.2e1 * t228;
	t208 = -0.2e1 * t226;
	t207 = t191 * t227;
	t204 = t179 * t214;
	t195 = t169 * t143 + t170 * t224;
	t192 = -t169 * t188 + t170 * t217;
	t147 = t169 * t217 + t170 * t188;
	t141 = -qJD(1) * t199 - t179 * t213 + t197 * t215;
	t135 = 0.1e1 / t137;
	t125 = 0.1e1 / t127;
	t122 = t232 * t189;
	t118 = (t193 * t208 + (t140 * t220 + t141 * t174 + (-t188 * t220 + (0.2e1 * t176 * t178 ^ 2 + t174) * t158) * qJD(2)) * t153) * t171;
	t1 = [(-t189 * t174 * t208 + (-t138 * t174 - t189 * t202) * t153) * t171, t118, 0, 0, 0; t158 * t131 * t211 + (-t140 * t131 + (t119 * t158 + t122 * t138) * t132) * t125 - ((t122 * t210 - t232 * t225) * t125 + (t122 * t211 + ((t123 * t153 * t205 + t208) * t223 + (0.2e1 * t205 * t226 - t123 + (-t190 * t171 + t123) * t153) * t222) * t125) * t132) * t189, (-t131 * t162 - t132 * t229) * t211 + (-t210 * t229 + t139 * t131 + (-t162 * t119 + t120 * t138 + (t177 * t212 - t118 * t158 - t124 * t140 + (t124 * t218 + t188) * t123) * t222 + (t123 * t124 * t158 - t141 + (t118 * t180 + (-qJD(2) * t124 - t123) * t178) * t177) * t223) * t132) * t125, 0, 0, 0; (t143 * t192 - t147 * t224) * t209 + ((t147 * qJD(4) - t141 * t169 + t170 * t204) * t143 - 0.2e1 * t147 * t207 + (t192 * t129 + (t192 * qJD(4) - t141 * t170 - t169 * t204) * t191 - t147 * t128) * t144) * t135, -t195 * t189 * t209 + (t195 * t138 - ((-qJD(4) * t143 + 0.2e1 * t207) * t170 + (t128 * t170 + (t129 + t233) * t169) * t144) * t189) * t135, 0, -0.2e1 * t228 - 0.2e1 * (t128 * t144 * t135 - (-t135 * t227 - t144 * t228) * t191) * t191, 0;];
	JaD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiaD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 20:40:14
	% EndTime: 2019-12-31 20:40:15
	% DurationCPUTime: 1.44s
	% Computational Cost: add. (8428->149), mult. (13478->297), div. (726->12), fcn. (17045->13), ass. (0->128)
	t270 = cos(pkin(5));
	t272 = sin(qJ(2));
	t344 = sin(qJ(1));
	t305 = t344 * t272;
	t295 = t270 * t305;
	t299 = t344 * qJD(2);
	t274 = cos(qJ(2));
	t275 = cos(qJ(1));
	t321 = t275 * t274;
	t269 = sin(pkin(5));
	t325 = t269 * t275;
	t349 = -qJD(1) * t295 - t272 * t299 + (qJD(2) * t270 + qJD(1)) * t321 - qJD(4) * t325;
	t268 = pkin(10) + qJ(4);
	t266 = sin(t268);
	t267 = cos(t268);
	t304 = t344 * t274;
	t322 = t275 * t272;
	t287 = -t270 * t322 - t304;
	t239 = -t266 * t287 + t267 * t325;
	t327 = t269 * t272;
	t249 = t266 * t327 - t270 * t267;
	t228 = atan2(-t239, t249);
	t215 = sin(t228);
	t216 = cos(t228);
	t206 = -t215 * t239 + t216 * t249;
	t204 = 0.1e1 / t206 ^ 2;
	t255 = -t295 + t321;
	t306 = t269 * t344;
	t286 = -t255 * t266 + t267 * t306;
	t238 = t286 ^ 2;
	t200 = t238 * t204 + 0.1e1;
	t285 = -t270 * t304 - t322;
	t232 = t287 * qJD(1) + t285 * qJD(2);
	t245 = t255 * t267 + t266 * t306;
	t303 = qJD(1) * t325;
	t210 = t245 * qJD(4) + t232 * t266 - t267 * t303;
	t337 = t210 * t204;
	t237 = t239 ^ 2;
	t247 = 0.1e1 / t249 ^ 2;
	t227 = t237 * t247 + 0.1e1;
	t221 = 0.1e1 / t227;
	t300 = t344 * qJD(1);
	t294 = t269 * t300;
	t318 = qJD(4) * t267;
	t212 = t349 * t266 - t267 * t294 - t287 * t318;
	t250 = t270 * t266 + t267 * t327;
	t319 = qJD(2) * t274;
	t302 = t269 * t319;
	t235 = t250 * qJD(4) + t266 * t302;
	t246 = 0.1e1 / t249;
	t331 = t239 * t247;
	t291 = -t212 * t246 + t235 * t331;
	t194 = t291 * t221;
	t292 = -t215 * t249 - t216 * t239;
	t189 = t194 * t292 - t215 * t212 + t216 * t235;
	t203 = 0.1e1 / t206;
	t205 = t203 * t204;
	t342 = t189 * t205;
	t316 = 0.2e1 * (-t238 * t342 - t286 * t337) / t200 ^ 2;
	t348 = t235 * t247;
	t307 = t270 * t321;
	t252 = -t305 + t307;
	t326 = t269 * t274;
	t288 = -t246 * t252 + t326 * t331;
	t347 = t266 * t288;
	t213 = (qJD(4) * t287 + t294) * t266 + t349 * t267;
	t273 = cos(qJ(5));
	t271 = sin(qJ(5));
	t329 = t285 * t271;
	t226 = t245 * t273 - t329;
	t218 = 0.1e1 / t226;
	t219 = 0.1e1 / t226 ^ 2;
	t346 = -0.2e1 * t239;
	t345 = -0.2e1 * t286;
	t211 = t286 * qJD(4) + t232 * t267 + t266 * t303;
	t231 = -qJD(1) * t307 - t275 * t319 + (t270 * t299 + t300) * t272;
	t201 = qJD(5) * t226 + t211 * t271 + t231 * t273;
	t328 = t285 * t273;
	t225 = t245 * t271 + t328;
	t217 = t225 ^ 2;
	t209 = t217 * t219 + 0.1e1;
	t334 = t219 * t225;
	t317 = qJD(5) * t225;
	t202 = t211 * t273 - t231 * t271 - t317;
	t339 = t202 * t218 * t219;
	t341 = (t201 * t334 - t217 * t339) / t209 ^ 2;
	t333 = t246 * t348;
	t340 = (t212 * t331 - t237 * t333) / t227 ^ 2;
	t338 = t204 * t286;
	t336 = t215 * t286;
	t335 = t216 * t286;
	t332 = t239 * t246;
	t330 = t285 * t266;
	t324 = t271 * t218;
	t323 = t273 * t225;
	t320 = qJD(2) * t272;
	t315 = -0.2e1 * t341;
	t314 = 0.2e1 * t341;
	t313 = -0.2e1 * t340;
	t312 = t205 * t345;
	t311 = t246 * t340;
	t310 = t204 * t336;
	t309 = t204 * t335;
	t308 = t225 * t339;
	t298 = 0.2e1 * t308;
	t297 = t333 * t346;
	t241 = -t266 * t325 - t267 * t287;
	t293 = -qJD(5) * t267 * t285 + t232;
	t224 = -t241 * t273 + t252 * t271;
	t223 = -t241 * t271 - t252 * t273;
	t290 = t219 * t323 - t324;
	t289 = -t241 * t246 + t250 * t331;
	t283 = -t215 + (t216 * t332 + t215) * t221;
	t282 = -qJD(4) * t330 + qJD(5) * t255 + t231 * t267;
	t236 = -t249 * qJD(4) + t267 * t302;
	t233 = t285 * qJD(1) + t287 * qJD(2);
	t230 = t255 * t271 + t267 * t328;
	t229 = -t255 * t273 + t267 * t329;
	t207 = 0.1e1 / t209;
	t198 = 0.1e1 / t200;
	t197 = t221 * t347;
	t195 = t289 * t221;
	t193 = t283 * t286;
	t191 = (-t215 * t252 + t216 * t326) * t266 + t292 * t197;
	t190 = t195 * t292 - t215 * t241 + t216 * t250;
	t188 = t289 * t313 + (t250 * t297 - t213 * t246 + (t212 * t250 + t235 * t241 + t236 * t239) * t247) * t221;
	t186 = t313 * t347 + (t288 * t318 + (t297 * t326 - t233 * t246 + (t235 * t252 + (t212 * t274 - t239 * t320) * t269) * t247) * t266) * t221;
	t1 = [t311 * t345 + (-t210 * t246 - t286 * t348) * t221, t186, 0, t188, 0; t239 * t203 * t316 + (-t212 * t203 + (t189 * t239 + t193 * t210) * t204) * t198 - (-t193 * t204 * t316 + (-0.2e1 * t193 * t342 + (-t194 * t221 * t332 + t313) * t310 + (t311 * t346 - t194 + (t194 - t291) * t221) * t309 - t283 * t337) * t198) * t286, (-t191 * t338 - t203 * t330) * t316 + (-t191 * t337 + (t231 * t266 + t285 * t318) * t203 + (t191 * t312 - t204 * t330) * t189 + (-t186 * t239 - t197 * t212 + (-t266 * t320 + t274 * t318) * t269 + (-t197 * t249 - t252 * t266) * t194) * t309 + (-t252 * t318 - t186 * t249 - t197 * t235 - t233 * t266 + (t197 * t239 - t266 * t326) * t194) * t310) * t198, 0, (-t190 * t338 - t203 * t245) * t316 + (t190 * t189 * t312 + t211 * t203 + (-t245 * t189 - t190 * t210 + (-t188 * t239 - t195 * t212 + t236 + (-t195 * t249 - t241) * t194) * t335 + (-t188 * t249 - t195 * t235 - t213 + (t195 * t239 - t250) * t194) * t336) * t204) * t198, 0; (-t218 * t223 + t224 * t334) * t314 + ((qJD(5) * t224 - t213 * t271 - t233 * t273) * t218 + t224 * t298 + (-t223 * t202 - (-qJD(5) * t223 - t213 * t273 + t233 * t271) * t225 - t224 * t201) * t219) * t207, (-t218 * t229 + t230 * t334) * t314 + (t230 * t298 - t293 * t218 * t273 + t282 * t324 + (-t225 * t271 * t293 - t230 * t201 - t229 * t202 - t282 * t323) * t219) * t207, 0, -t290 * t286 * t315 + (t290 * t210 - ((-qJD(5) * t218 - 0.2e1 * t308) * t273 + (t201 * t273 + (t202 - t317) * t271) * t219) * t286) * t207, t315 + 0.2e1 * (t201 * t219 * t207 + (-t207 * t339 - t219 * t341) * t225) * t225;];
	JaD_rot = t1;
else
	JaD_rot=NaN(3,5);
end