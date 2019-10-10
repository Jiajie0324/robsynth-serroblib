% Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S6PRPRRP3
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
%   Wie in S6PRPRRP3_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d4,d5,theta1,theta3]';
% 
% Output:
% JaD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-09 21:46
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_rot = S6PRPRRP3_jacobiaD_rot_sym_varpar(qJ, qJD, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPRRP3_jacobiaD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRPRRP3_jacobiaD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6PRPRRP3_jacobiaD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRPRRP3_jacobiaD_rot_sym_varpar: pkin has to be [11x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiaD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:46:28
	% EndTime: 2019-10-09 21:46:28
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiaD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:46:28
	% EndTime: 2019-10-09 21:46:28
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiaD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:46:28
	% EndTime: 2019-10-09 21:46:28
	% DurationCPUTime: 0.09s
	% Computational Cost: add. (46->7), mult. (159->21), div. (18->4), fcn. (175->5), ass. (0->15)
	t39 = cos(pkin(10));
	t41 = sin(qJ(2));
	t42 = cos(qJ(2));
	t45 = sin(pkin(10)) * cos(pkin(6));
	t37 = t39 * t42 - t41 * t45;
	t34 = 0.1e1 / t37 ^ 2;
	t49 = qJD(2) * t34;
	t36 = t39 * t41 + t42 * t45;
	t33 = t36 ^ 2;
	t30 = t33 * t34 + 0.1e1;
	t46 = t37 * t49;
	t47 = t36 / t37 * t49;
	t48 = (t33 * t47 + t36 * t46) / t30 ^ 2;
	t28 = 0.1e1 / t30;
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, -0.2e1 * t48 + 0.2e1 * (t28 * t46 + (t28 * t47 - t34 * t48) * t36) * t36, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiaD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:46:28
	% EndTime: 2019-10-09 21:46:29
	% DurationCPUTime: 0.48s
	% Computational Cost: add. (610->48), mult. (1820->126), div. (396->14), fcn. (2421->11), ass. (0->64)
	t116 = sin(qJ(2));
	t117 = cos(qJ(2));
	t113 = sin(pkin(10));
	t136 = cos(pkin(6));
	t129 = t113 * t136;
	t135 = cos(pkin(10));
	t104 = -t116 * t129 + t135 * t117;
	t126 = t136 * t135;
	t100 = t113 * t116 - t117 * t126;
	t114 = sin(pkin(6));
	t132 = t114 * t117;
	t90 = atan2(-t100, -t132);
	t88 = sin(t90);
	t89 = cos(t90);
	t77 = -t88 * t100 - t89 * t132;
	t74 = 0.1e1 / t77;
	t112 = sin(pkin(11));
	t115 = cos(pkin(11));
	t133 = t113 * t114;
	t87 = t104 * t115 + t112 * t133;
	t83 = 0.1e1 / t87;
	t109 = 0.1e1 / t117;
	t110 = 0.1e1 / t117 ^ 2;
	t75 = 0.1e1 / t77 ^ 2;
	t84 = 0.1e1 / t87 ^ 2;
	t131 = qJD(2) * t116;
	t137 = t117 * t88;
	t143 = t100 * t89;
	t134 = t110 * t116;
	t130 = t100 * t134;
	t107 = 0.1e1 / t114;
	t108 = 0.1e1 / t114 ^ 2;
	t98 = t100 ^ 2;
	t93 = t98 * t108 * t110 + 0.1e1;
	t91 = 0.1e1 / t93;
	t141 = t107 * t91;
	t102 = t113 * t117 + t116 * t126;
	t95 = t102 * qJD(2);
	t69 = (qJD(2) * t130 + t109 * t95) * t141;
	t66 = -t69 * t143 - t88 * t95 + (t89 * t131 + t69 * t137) * t114;
	t146 = t66 * t74 * t75;
	t139 = t112 * t84;
	t86 = t104 * t112 - t115 * t133;
	t82 = t86 ^ 2;
	t81 = t82 * t84 + 0.1e1;
	t85 = t83 * t84;
	t124 = -t135 * t116 - t117 * t129;
	t96 = t124 * qJD(2);
	t145 = (-t115 * t82 * t85 + t86 * t139) * t96 / t81 ^ 2;
	t125 = t102 * t109 + t130;
	t70 = t125 * t141;
	t144 = t69 * t70;
	t142 = t124 * t75;
	t140 = t112 * t83;
	t138 = t115 * t86;
	t111 = t109 * t110;
	t99 = t124 ^ 2;
	t97 = t104 * qJD(2);
	t94 = qJD(2) * t100;
	t79 = 0.1e1 / t81;
	t73 = t99 * t75 + 0.1e1;
	t67 = -t70 * t143 - t88 * t102 + (t116 * t89 + t70 * t137) * t114;
	t65 = (-0.2e1 * t125 / t93 ^ 2 * (t100 * t110 * t95 + t111 * t98 * t131) * t108 + (t95 * t134 - t109 * t94 + (t102 * t134 + (0.2e1 * t111 * t116 ^ 2 + t109) * t100) * qJD(2)) * t91) * t107;
	t1 = [0, t65, 0, 0, 0, 0; 0, 0.2e1 * (-t104 * t74 - t67 * t142) / t73 ^ 2 * (-t97 * t142 - t99 * t146) + (-0.2e1 * t67 * t124 * t146 + t96 * t74 + (-t104 * t66 - t67 * t97 - (-(t100 * t144 + t94) * t88 - (-t100 * t65 - t102 * t69 - t70 * t95) * t89) * t124) * t75 + ((-qJD(2) * t70 - t69) * t88 * t116 + (t65 * t88 + (qJD(2) + t144) * t89) * t117) * t114 * t142) / t73, 0, 0, 0, 0; 0, (t84 * t138 - t140) * t97 * t79 - 0.2e1 * (t140 * t145 + (-t84 * t86 * t145 + (-t85 * t138 + t139) * t96 * t79) * t115) * t124, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiaD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:46:28
	% EndTime: 2019-10-09 21:46:29
	% DurationCPUTime: 0.54s
	% Computational Cost: add. (941->56), mult. (2271->131), div. (423->14), fcn. (2956->11), ass. (0->66)
	t146 = sin(qJ(2));
	t147 = cos(qJ(2));
	t144 = sin(pkin(10));
	t173 = cos(pkin(6));
	t161 = t144 * t173;
	t172 = cos(pkin(10));
	t132 = -t146 * t161 + t172 * t147;
	t140 = pkin(11) + qJ(4);
	t136 = sin(t140);
	t137 = cos(t140);
	t145 = sin(pkin(6));
	t166 = t144 * t145;
	t155 = -t132 * t136 + t137 * t166;
	t177 = qJD(4) * t155;
	t158 = t173 * t172;
	t128 = t144 * t146 - t147 * t158;
	t165 = t145 * t147;
	t118 = atan2(-t128, -t165);
	t116 = sin(t118);
	t117 = cos(t118);
	t103 = -t116 * t128 - t117 * t165;
	t100 = 0.1e1 / t103;
	t115 = t132 * t137 + t136 * t166;
	t111 = 0.1e1 / t115;
	t141 = 0.1e1 / t147;
	t101 = 0.1e1 / t103 ^ 2;
	t112 = 0.1e1 / t115 ^ 2;
	t142 = 0.1e1 / t147 ^ 2;
	t130 = t144 * t147 + t146 * t158;
	t123 = t130 * qJD(2);
	t164 = qJD(2) * t146;
	t167 = t142 * t146;
	t162 = t128 * t167;
	t126 = t128 ^ 2;
	t139 = 0.1e1 / t145 ^ 2;
	t121 = t126 * t139 * t142 + 0.1e1;
	t119 = 0.1e1 / t121;
	t138 = 0.1e1 / t145;
	t168 = t119 * t138;
	t95 = (qJD(2) * t162 + t123 * t141) * t168;
	t92 = (-t128 * t95 + t145 * t164) * t117 + (t95 * t165 - t123) * t116;
	t176 = t100 * t101 * t92;
	t110 = t155 ^ 2;
	t106 = t110 * t112 + 0.1e1;
	t154 = -t172 * t146 - t147 * t161;
	t124 = t154 * qJD(2);
	t108 = qJD(4) * t115 + t124 * t136;
	t169 = t112 * t155;
	t109 = t124 * t137 + t177;
	t170 = t109 * t111 * t112;
	t175 = 0.1e1 / t106 ^ 2 * (-t108 * t169 - t110 * t170);
	t156 = t130 * t141 + t162;
	t96 = t156 * t168;
	t174 = t128 * t96;
	t171 = t101 * t154;
	t163 = -0.2e1 * t175;
	t157 = -t111 * t136 - t137 * t169;
	t143 = t141 * t142;
	t127 = t154 ^ 2;
	t125 = t132 * qJD(2);
	t122 = qJD(2) * t128;
	t104 = 0.1e1 / t106;
	t99 = t127 * t101 + 0.1e1;
	t93 = (t145 * t146 - t174) * t117 + (t96 * t165 - t130) * t116;
	t91 = (-0.2e1 * t156 / t121 ^ 2 * (t123 * t128 * t142 + t126 * t143 * t164) * t139 + (t123 * t167 - t122 * t141 + (t130 * t167 + (0.2e1 * t143 * t146 ^ 2 + t141) * t128) * qJD(2)) * t119) * t138;
	t1 = [0, t91, 0, 0, 0, 0; 0, 0.2e1 * (-t100 * t132 - t93 * t171) / t99 ^ 2 * (-t125 * t171 - t127 * t176) + (t124 * t100 + (-t93 * t125 - t132 * t92) * t101 - (0.2e1 * t93 * t176 + (-(-t123 * t96 - t128 * t91 - t130 * t95 + (t95 * t96 + qJD(2)) * t165) * t117 - (t95 * t174 + t122 + (t147 * t91 + (-qJD(2) * t96 - t95) * t146) * t145) * t116) * t101) * t154) / t99, 0, 0, 0, 0; 0, -t157 * t154 * t163 + (t157 * t125 - ((-qJD(4) * t111 + 0.2e1 * t155 * t170) * t137 + (t108 * t137 + (t109 + t177) * t136) * t112) * t154) * t104, 0, t163 - 0.2e1 * (t104 * t108 * t112 - (-t104 * t170 - t112 * t175) * t155) * t155, 0, 0;];
	JaD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiaD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:46:29
	% EndTime: 2019-10-09 21:46:30
	% DurationCPUTime: 1.42s
	% Computational Cost: add. (5804->110), mult. (9085->227), div. (559->12), fcn. (11668->13), ass. (0->105)
	t220 = sin(pkin(10));
	t222 = cos(pkin(10));
	t225 = sin(qJ(2));
	t223 = cos(pkin(6));
	t227 = cos(qJ(2));
	t253 = t223 * t227;
	t209 = -t220 * t225 + t222 * t253;
	t205 = t209 * qJD(2);
	t254 = t223 * t225;
	t210 = t220 * t227 + t222 * t254;
	t219 = pkin(11) + qJ(4);
	t217 = sin(t219);
	t221 = sin(pkin(6));
	t257 = t221 * t222;
	t243 = t217 * t257;
	t218 = cos(t219);
	t250 = qJD(4) * t218;
	t172 = -qJD(4) * t243 + t205 * t217 + t210 * t250;
	t194 = t210 * t217 + t218 * t257;
	t192 = t194 ^ 2;
	t256 = t221 * t225;
	t202 = t217 * t256 - t218 * t223;
	t200 = 0.1e1 / t202 ^ 2;
	t186 = t192 * t200 + 0.1e1;
	t184 = 0.1e1 / t186;
	t203 = t217 * t223 + t218 * t256;
	t251 = qJD(2) * t227;
	t242 = t221 * t251;
	t190 = t203 * qJD(4) + t217 * t242;
	t199 = 0.1e1 / t202;
	t262 = t194 * t200;
	t156 = (-t172 * t199 + t190 * t262) * t184;
	t187 = atan2(-t194, t202);
	t180 = sin(t187);
	t181 = cos(t187);
	t239 = -t180 * t202 - t181 * t194;
	t152 = t239 * t156 - t180 * t172 + t181 * t190;
	t166 = -t180 * t194 + t181 * t202;
	t163 = 0.1e1 / t166;
	t164 = 0.1e1 / t166 ^ 2;
	t275 = t152 * t163 * t164;
	t244 = t220 * t254;
	t212 = t222 * t227 - t244;
	t258 = t220 * t221;
	t236 = -t212 * t217 + t218 * t258;
	t274 = -0.2e1 * t236 * t275;
	t255 = t221 * t227;
	t235 = -t199 * t209 + t255 * t262;
	t273 = t217 * t235;
	t263 = t190 * t199 * t200;
	t272 = -0.2e1 * (t172 * t262 - t192 * t263) / t186 ^ 2;
	t198 = t212 * t218 + t217 * t258;
	t226 = cos(qJ(5));
	t211 = t220 * t253 + t222 * t225;
	t224 = sin(qJ(5));
	t260 = t211 * t224;
	t183 = t198 * t226 + t260;
	t177 = 0.1e1 / t183;
	t178 = 0.1e1 / t183 ^ 2;
	t271 = t164 * t236;
	t207 = t211 * qJD(2);
	t175 = t236 * qJD(4) - t207 * t218;
	t208 = -qJD(2) * t244 + t222 * t251;
	t259 = t211 * t226;
	t182 = t198 * t224 - t259;
	t249 = qJD(5) * t182;
	t168 = t175 * t226 + t208 * t224 - t249;
	t270 = t168 * t177 * t178;
	t167 = t183 * qJD(5) + t175 * t224 - t208 * t226;
	t176 = t182 ^ 2;
	t171 = t176 * t178 + 0.1e1;
	t267 = t178 * t182;
	t269 = 0.1e1 / t171 ^ 2 * (t167 * t267 - t176 * t270);
	t268 = t177 * t224;
	t266 = t180 * t236;
	t265 = t181 * t236;
	t264 = t182 * t226;
	t261 = t211 * t217;
	t252 = qJD(2) * t225;
	t193 = t236 ^ 2;
	t162 = t164 * t193 + 0.1e1;
	t174 = t198 * qJD(4) - t207 * t217;
	t248 = 0.2e1 * (-t174 * t271 - t193 * t275) / t162 ^ 2;
	t246 = -0.2e1 * t269;
	t245 = t182 * t270;
	t241 = -0.2e1 * t194 * t263;
	t240 = qJD(5) * t211 * t218 - t207;
	t238 = t178 * t264 - t268;
	t196 = t210 * t218 - t243;
	t237 = -t196 * t199 + t203 * t262;
	t234 = qJD(4) * t261 + qJD(5) * t212 - t208 * t218;
	t206 = t210 * qJD(2);
	t191 = -t202 * qJD(4) + t218 * t242;
	t189 = t212 * t224 - t218 * t259;
	t188 = -t212 * t226 - t218 * t260;
	t173 = -t194 * qJD(4) + t205 * t218;
	t169 = 0.1e1 / t171;
	t159 = 0.1e1 / t162;
	t158 = t184 * t273;
	t157 = t237 * t184;
	t154 = (-t180 * t209 + t181 * t255) * t217 + t239 * t158;
	t153 = t239 * t157 - t180 * t196 + t181 * t203;
	t151 = t237 * t272 + (t203 * t241 - t173 * t199 + (t172 * t203 + t190 * t196 + t191 * t194) * t200) * t184;
	t149 = t272 * t273 + (t235 * t250 + (t241 * t255 + t199 * t206 + (t190 * t209 + (t172 * t227 - t194 * t252) * t221) * t200) * t217) * t184;
	t1 = [0, t149, 0, t151, 0, 0; 0, (-t154 * t271 + t163 * t261) * t248 + ((-t208 * t217 - t211 * t250) * t163 + t154 * t274 + (-t154 * t174 + t261 * t152 + (-t149 * t194 - t158 * t172 + (-t217 * t252 + t227 * t250) * t221 + (-t158 * t202 - t209 * t217) * t156) * t265 + (-t209 * t250 - t149 * t202 - t158 * t190 + t206 * t217 + (t158 * t194 - t217 * t255) * t156) * t266) * t164) * t159, 0, (-t153 * t271 - t163 * t198) * t248 + (t153 * t274 + t175 * t163 + (-t198 * t152 - t153 * t174 + (-t151 * t194 - t157 * t172 + t191 + (-t157 * t202 - t196) * t156) * t265 + (-t151 * t202 - t157 * t190 - t173 + (t157 * t194 - t203) * t156) * t266) * t164) * t159, 0, 0; 0, 0.2e1 * (-t177 * t188 + t189 * t267) * t269 + (0.2e1 * t189 * t245 - t240 * t177 * t226 + t234 * t268 + (-t240 * t182 * t224 - t189 * t167 - t188 * t168 - t234 * t264) * t178) * t169, 0, -t238 * t236 * t246 + (t238 * t174 - ((-qJD(5) * t177 - 0.2e1 * t245) * t226 + (t167 * t226 + (t168 - t249) * t224) * t178) * t236) * t169, t246 + 0.2e1 * (t167 * t178 * t169 + (-t169 * t270 - t178 * t269) * t182) * t182, 0;];
	JaD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiaD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:46:29
	% EndTime: 2019-10-09 21:46:30
	% DurationCPUTime: 1.43s
	% Computational Cost: add. (5804->110), mult. (9085->227), div. (559->12), fcn. (11668->13), ass. (0->106)
	t228 = sin(pkin(10));
	t230 = cos(pkin(10));
	t233 = sin(qJ(2));
	t231 = cos(pkin(6));
	t235 = cos(qJ(2));
	t261 = t231 * t235;
	t217 = -t228 * t233 + t230 * t261;
	t213 = t217 * qJD(2);
	t262 = t231 * t233;
	t218 = t228 * t235 + t230 * t262;
	t227 = pkin(11) + qJ(4);
	t225 = sin(t227);
	t229 = sin(pkin(6));
	t265 = t229 * t230;
	t251 = t225 * t265;
	t226 = cos(t227);
	t258 = qJD(4) * t226;
	t180 = -qJD(4) * t251 + t213 * t225 + t218 * t258;
	t202 = t218 * t225 + t226 * t265;
	t200 = t202 ^ 2;
	t264 = t229 * t233;
	t210 = t225 * t264 - t226 * t231;
	t208 = 0.1e1 / t210 ^ 2;
	t194 = t200 * t208 + 0.1e1;
	t192 = 0.1e1 / t194;
	t211 = t225 * t231 + t226 * t264;
	t259 = qJD(2) * t235;
	t250 = t229 * t259;
	t198 = qJD(4) * t211 + t225 * t250;
	t207 = 0.1e1 / t210;
	t270 = t202 * t208;
	t164 = (-t180 * t207 + t198 * t270) * t192;
	t195 = atan2(-t202, t210);
	t188 = sin(t195);
	t189 = cos(t195);
	t247 = -t188 * t210 - t189 * t202;
	t160 = t164 * t247 - t180 * t188 + t189 * t198;
	t174 = -t188 * t202 + t189 * t210;
	t171 = 0.1e1 / t174;
	t172 = 0.1e1 / t174 ^ 2;
	t284 = t160 * t171 * t172;
	t252 = t228 * t262;
	t220 = t230 * t235 - t252;
	t266 = t228 * t229;
	t244 = -t220 * t225 + t226 * t266;
	t283 = -0.2e1 * t244 * t284;
	t263 = t229 * t235;
	t243 = -t207 * t217 + t263 * t270;
	t282 = t225 * t243;
	t271 = t198 * t207 * t208;
	t281 = -0.2e1 * (t180 * t270 - t200 * t271) / t194 ^ 2;
	t206 = t220 * t226 + t225 * t266;
	t234 = cos(qJ(5));
	t219 = t228 * t261 + t230 * t233;
	t232 = sin(qJ(5));
	t268 = t219 * t232;
	t191 = t206 * t234 + t268;
	t185 = 0.1e1 / t191;
	t186 = 0.1e1 / t191 ^ 2;
	t215 = t219 * qJD(2);
	t183 = qJD(4) * t244 - t215 * t226;
	t216 = -qJD(2) * t252 + t230 * t259;
	t175 = qJD(5) * t191 + t183 * t232 - t216 * t234;
	t267 = t219 * t234;
	t190 = t206 * t232 - t267;
	t184 = t190 ^ 2;
	t179 = t184 * t186 + 0.1e1;
	t275 = t186 * t190;
	t257 = qJD(5) * t190;
	t176 = t183 * t234 + t216 * t232 - t257;
	t278 = t176 * t185 * t186;
	t280 = (t175 * t275 - t184 * t278) / t179 ^ 2;
	t279 = t172 * t244;
	t182 = qJD(4) * t206 - t215 * t225;
	t277 = t182 * t172;
	t276 = t185 * t232;
	t274 = t188 * t244;
	t273 = t189 * t244;
	t272 = t190 * t234;
	t269 = t219 * t225;
	t260 = qJD(2) * t233;
	t201 = t244 ^ 2;
	t170 = t172 * t201 + 0.1e1;
	t256 = 0.2e1 * (-t201 * t284 - t244 * t277) / t170 ^ 2;
	t255 = -0.2e1 * t280;
	t253 = t190 * t278;
	t249 = -0.2e1 * t202 * t271;
	t248 = qJD(5) * t219 * t226 - t215;
	t246 = t186 * t272 - t276;
	t204 = t218 * t226 - t251;
	t245 = -t204 * t207 + t211 * t270;
	t242 = qJD(4) * t269 + qJD(5) * t220 - t216 * t226;
	t214 = t218 * qJD(2);
	t199 = -qJD(4) * t210 + t226 * t250;
	t197 = t220 * t232 - t226 * t267;
	t196 = -t220 * t234 - t226 * t268;
	t181 = -qJD(4) * t202 + t213 * t226;
	t177 = 0.1e1 / t179;
	t167 = 0.1e1 / t170;
	t166 = t192 * t282;
	t165 = t245 * t192;
	t162 = (-t188 * t217 + t189 * t263) * t225 + t247 * t166;
	t161 = t165 * t247 - t188 * t204 + t189 * t211;
	t159 = t245 * t281 + (t211 * t249 - t181 * t207 + (t180 * t211 + t198 * t204 + t199 * t202) * t208) * t192;
	t157 = t281 * t282 + (t243 * t258 + (t249 * t263 + t207 * t214 + (t198 * t217 + (t180 * t235 - t202 * t260) * t229) * t208) * t225) * t192;
	t1 = [0, t157, 0, t159, 0, 0; 0, (-t162 * t279 + t171 * t269) * t256 + ((-t216 * t225 - t219 * t258) * t171 + (-t277 + t283) * t162 + (t269 * t160 + (-t157 * t202 - t166 * t180 + (-t225 * t260 + t235 * t258) * t229 + (-t166 * t210 - t217 * t225) * t164) * t273 + (-t217 * t258 - t157 * t210 - t166 * t198 + t214 * t225 + (t166 * t202 - t225 * t263) * t164) * t274) * t172) * t167, 0, (-t161 * t279 - t171 * t206) * t256 + (t161 * t283 + t183 * t171 + (-t206 * t160 - t161 * t182 + (-t159 * t202 - t165 * t180 + t199 + (-t165 * t210 - t204) * t164) * t273 + (-t159 * t210 - t165 * t198 - t181 + (t165 * t202 - t211) * t164) * t274) * t172) * t167, 0, 0; 0, 0.2e1 * (-t185 * t196 + t197 * t275) * t280 + (0.2e1 * t197 * t253 - t248 * t185 * t234 + t242 * t276 + (-t190 * t232 * t248 - t197 * t175 - t196 * t176 - t242 * t272) * t186) * t177, 0, -t246 * t244 * t255 + (t246 * t182 - ((-qJD(5) * t185 - 0.2e1 * t253) * t234 + (t175 * t234 + (t176 - t257) * t232) * t186) * t244) * t177, t255 + 0.2e1 * (t175 * t186 * t177 + (-t177 * t278 - t186 * t280) * t190) * t190, 0;];
	JaD_rot = t1;
else
	JaD_rot=NaN(3,6);
end