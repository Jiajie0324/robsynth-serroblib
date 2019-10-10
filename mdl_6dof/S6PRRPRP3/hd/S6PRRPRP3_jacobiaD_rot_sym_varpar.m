% Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S6PRRPRP3
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
%   Wie in S6PRRPRP3_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d5,theta1,theta4]';
% 
% Output:
% JaD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-09 22:20
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_rot = S6PRRPRP3_jacobiaD_rot_sym_varpar(qJ, qJD, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPRP3_jacobiaD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRPRP3_jacobiaD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6PRRPRP3_jacobiaD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRRPRP3_jacobiaD_rot_sym_varpar: pkin has to be [11x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiaD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:20:05
	% EndTime: 2019-10-09 22:20:05
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiaD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:20:05
	% EndTime: 2019-10-09 22:20:05
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiaD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:20:05
	% EndTime: 2019-10-09 22:20:05
	% DurationCPUTime: 0.10s
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
	% StartTime: 2019-10-09 22:20:05
	% EndTime: 2019-10-09 22:20:06
	% DurationCPUTime: 0.56s
	% Computational Cost: add. (756->55), mult. (2271->133), div. (423->14), fcn. (2956->11), ass. (0->65)
	t139 = sin(qJ(2));
	t141 = cos(qJ(2));
	t136 = sin(pkin(10));
	t166 = cos(pkin(6));
	t155 = t136 * t166;
	t165 = cos(pkin(10));
	t127 = -t139 * t155 + t165 * t141;
	t138 = sin(qJ(3));
	t140 = cos(qJ(3));
	t137 = sin(pkin(6));
	t160 = t136 * t137;
	t149 = -t127 * t138 + t140 * t160;
	t170 = t149 * qJD(3);
	t152 = t166 * t165;
	t123 = t136 * t139 - t141 * t152;
	t159 = t137 * t141;
	t113 = atan2(-t123, -t159);
	t111 = sin(t113);
	t112 = cos(t113);
	t98 = -t111 * t123 - t112 * t159;
	t95 = 0.1e1 / t98;
	t110 = t127 * t140 + t138 * t160;
	t106 = 0.1e1 / t110;
	t133 = 0.1e1 / t141;
	t107 = 0.1e1 / t110 ^ 2;
	t134 = 0.1e1 / t141 ^ 2;
	t96 = 0.1e1 / t98 ^ 2;
	t105 = t149 ^ 2;
	t102 = t105 * t107 + 0.1e1;
	t148 = -t165 * t139 - t141 * t155;
	t119 = t148 * qJD(2);
	t103 = t110 * qJD(3) + t119 * t138;
	t163 = t107 * t149;
	t104 = t119 * t140 + t170;
	t164 = t104 * t106 * t107;
	t169 = 0.1e1 / t102 ^ 2 * (-t103 * t163 - t105 * t164);
	t125 = t136 * t141 + t139 * t152;
	t161 = t134 * t139;
	t156 = t123 * t161;
	t150 = t125 * t133 + t156;
	t121 = t123 ^ 2;
	t132 = 0.1e1 / t137 ^ 2;
	t116 = t121 * t132 * t134 + 0.1e1;
	t114 = 0.1e1 / t116;
	t131 = 0.1e1 / t137;
	t162 = t114 * t131;
	t91 = t150 * t162;
	t168 = t123 * t91;
	t167 = t148 * t96;
	t158 = qJD(2) * t139;
	t157 = -0.2e1 * t169;
	t151 = -t106 * t138 - t140 * t163;
	t135 = t133 * t134;
	t122 = t148 ^ 2;
	t120 = t127 * qJD(2);
	t118 = t125 * qJD(2);
	t117 = qJD(2) * t123;
	t100 = 0.1e1 / t102;
	t97 = t95 * t96;
	t94 = t122 * t96 + 0.1e1;
	t90 = (qJD(2) * t156 + t118 * t133) * t162;
	t88 = (t137 * t139 - t168) * t112 + (t91 * t159 - t125) * t111;
	t87 = (-t123 * t90 + t137 * t158) * t112 + (t90 * t159 - t118) * t111;
	t86 = (-0.2e1 * t150 * (t118 * t123 * t134 + t121 * t135 * t158) * t132 / t116 ^ 2 + (t118 * t161 - t117 * t133 + (t125 * t161 + (0.2e1 * t135 * t139 ^ 2 + t133) * t123) * qJD(2)) * t114) * t131;
	t1 = [0, t86, 0, 0, 0, 0; 0, 0.2e1 * (-t127 * t95 - t88 * t167) / t94 ^ 2 * (-t122 * t97 * t87 - t120 * t167) + (-t88 * t120 * t96 + t119 * t95 + (-0.2e1 * t148 * t88 * t97 - t127 * t96) * t87 - (-(-t118 * t91 - t123 * t86 - t125 * t90 + (t90 * t91 + qJD(2)) * t159) * t112 - (t90 * t168 + t117 + (t141 * t86 + (-qJD(2) * t91 - t90) * t139) * t137) * t111) * t167) / t94, 0, 0, 0, 0; 0, -t151 * t148 * t157 + (t151 * t120 - ((-qJD(3) * t106 + 0.2e1 * t149 * t164) * t140 + (t103 * t140 + (t104 + t170) * t138) * t107) * t148) * t100, t157 - 0.2e1 * (t100 * t103 * t107 - (-t100 * t164 - t107 * t169) * t149) * t149, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiaD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:20:05
	% EndTime: 2019-10-09 22:20:06
	% DurationCPUTime: 1.28s
	% Computational Cost: add. (2688->101), mult. (8196->213), div. (535->12), fcn. (10572->13), ass. (0->98)
	t187 = sin(pkin(10));
	t190 = cos(pkin(10));
	t193 = sin(qJ(2));
	t191 = cos(pkin(6));
	t195 = cos(qJ(2));
	t218 = t191 * t195;
	t176 = -t187 * t193 + t190 * t218;
	t169 = t176 * qJD(2);
	t219 = t191 * t193;
	t177 = t187 * t195 + t190 * t219;
	t192 = sin(qJ(3));
	t188 = sin(pkin(6));
	t222 = t188 * t192;
	t209 = t190 * t222;
	t194 = cos(qJ(3));
	t215 = qJD(3) * t194;
	t142 = -qJD(3) * t209 + t169 * t192 + t177 * t215;
	t221 = t188 * t194;
	t162 = t177 * t192 + t190 * t221;
	t160 = t162 ^ 2;
	t180 = -t191 * t194 + t193 * t222;
	t174 = 0.1e1 / t180 ^ 2;
	t156 = t160 * t174 + 0.1e1;
	t154 = 0.1e1 / t156;
	t181 = t191 * t192 + t193 * t221;
	t216 = qJD(2) * t195;
	t208 = t188 * t216;
	t167 = t181 * qJD(3) + t192 * t208;
	t173 = 0.1e1 / t180;
	t226 = t162 * t174;
	t126 = (-t142 * t173 + t167 * t226) * t154;
	t157 = atan2(-t162, t180);
	t152 = sin(t157);
	t153 = cos(t157);
	t206 = -t152 * t180 - t153 * t162;
	t122 = t206 * t126 - t142 * t152 + t153 * t167;
	t136 = -t152 * t162 + t153 * t180;
	t133 = 0.1e1 / t136;
	t134 = 0.1e1 / t136 ^ 2;
	t238 = t122 * t133 * t134;
	t210 = t187 * t219;
	t179 = t190 * t195 - t210;
	t166 = t179 * t194 + t187 * t222;
	t178 = t187 * t218 + t190 * t193;
	t186 = sin(pkin(11));
	t189 = cos(pkin(11));
	t150 = t166 * t186 - t178 * t189;
	t171 = t178 * qJD(2);
	t204 = -t179 * t192 + t187 * t221;
	t145 = t204 * qJD(3) - t171 * t194;
	t172 = -qJD(2) * t210 + t190 * t216;
	t141 = t145 * t189 + t172 * t186;
	t151 = t166 * t189 + t178 * t186;
	t147 = 0.1e1 / t151;
	t148 = 0.1e1 / t151 ^ 2;
	t232 = t141 * t147 * t148;
	t237 = 0.2e1 * t150 * t232;
	t236 = -0.2e1 * t204 * t238;
	t220 = t188 * t195;
	t202 = -t173 * t176 + t220 * t226;
	t235 = t192 * t202;
	t225 = t167 * t173 * t174;
	t234 = -0.2e1 * (t142 * t226 - t160 * t225) / t156 ^ 2;
	t233 = t134 * t204;
	t231 = t147 * t186;
	t230 = t148 * t150;
	t229 = t150 * t189;
	t228 = t152 * t204;
	t227 = t153 * t204;
	t224 = t178 * t192;
	t223 = t178 * t194;
	t217 = qJD(2) * t193;
	t161 = t204 ^ 2;
	t132 = t134 * t161 + 0.1e1;
	t144 = t166 * qJD(3) - t171 * t192;
	t214 = 0.2e1 * (-t144 * t233 - t161 * t238) / t132 ^ 2;
	t146 = t150 ^ 2;
	t139 = t146 * t148 + 0.1e1;
	t140 = t145 * t186 - t172 * t189;
	t213 = 0.2e1 * (t140 * t230 - t146 * t232) / t139 ^ 2;
	t207 = -0.2e1 * t162 * t225;
	t164 = t177 * t194 - t209;
	t205 = -t164 * t173 + t181 * t226;
	t203 = qJD(3) * t224 - t172 * t194;
	t170 = t177 * qJD(2);
	t168 = -t180 * qJD(3) + t194 * t208;
	t159 = t179 * t186 - t189 * t223;
	t158 = -t179 * t189 - t186 * t223;
	t143 = -t162 * qJD(3) + t169 * t194;
	t137 = 0.1e1 / t139;
	t129 = 0.1e1 / t132;
	t128 = t154 * t235;
	t127 = t205 * t154;
	t124 = (-t152 * t176 + t153 * t220) * t192 + t206 * t128;
	t123 = t206 * t127 - t152 * t164 + t153 * t181;
	t121 = t205 * t234 + (t181 * t207 - t143 * t173 + (t142 * t181 + t162 * t168 + t164 * t167) * t174) * t154;
	t119 = t234 * t235 + (t202 * t215 + (t207 * t220 + t170 * t173 + (t167 * t176 + (t142 * t195 - t162 * t217) * t188) * t174) * t192) * t154;
	t1 = [0, t119, t121, 0, 0, 0; 0, (-t124 * t233 + t133 * t224) * t214 + ((-t172 * t192 - t178 * t215) * t133 + t124 * t236 + (-t124 * t144 + t224 * t122 + (-t119 * t162 - t128 * t142 + (-t192 * t217 + t195 * t215) * t188 + (-t128 * t180 - t176 * t192) * t126) * t227 + (-t176 * t215 - t119 * t180 - t128 * t167 + t170 * t192 + (t128 * t162 - t192 * t220) * t126) * t228) * t134) * t129, (-t123 * t233 - t133 * t166) * t214 + (t123 * t236 + t145 * t133 + (-t166 * t122 - t123 * t144 + (-t121 * t162 - t127 * t142 + t168 + (-t127 * t180 - t164) * t126) * t227 + (-t121 * t180 - t127 * t167 - t143 + (t127 * t162 - t181) * t126) * t228) * t134) * t129, 0, 0, 0; 0, (-t147 * t158 + t159 * t230) * t213 + ((t171 * t189 + t203 * t186) * t147 + t159 * t237 + (-t158 * t141 - (-t171 * t186 + t203 * t189) * t150 - t159 * t140) * t148) * t137, -(-t148 * t229 + t231) * t204 * t213 + (t204 * t189 * t237 - t144 * t231 + (t144 * t229 - (t140 * t189 + t141 * t186) * t204) * t148) * t137, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiaD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:20:05
	% EndTime: 2019-10-09 22:20:07
	% DurationCPUTime: 1.41s
	% Computational Cost: add. (3313->110), mult. (9085->226), div. (559->12), fcn. (11668->13), ass. (0->104)
	t218 = sin(pkin(10));
	t220 = cos(pkin(10));
	t223 = sin(qJ(2));
	t221 = cos(pkin(6));
	t225 = cos(qJ(2));
	t251 = t221 * t225;
	t205 = -t218 * t223 + t220 * t251;
	t198 = t205 * qJD(2);
	t252 = t221 * t223;
	t206 = t218 * t225 + t220 * t252;
	t222 = sin(qJ(3));
	t219 = sin(pkin(6));
	t255 = t219 * t222;
	t241 = t220 * t255;
	t224 = cos(qJ(3));
	t248 = qJD(3) * t224;
	t176 = -qJD(3) * t241 + t198 * t222 + t206 * t248;
	t254 = t219 * t224;
	t190 = t206 * t222 + t220 * t254;
	t188 = t190 ^ 2;
	t209 = -t221 * t224 + t223 * t255;
	t203 = 0.1e1 / t209 ^ 2;
	t184 = t188 * t203 + 0.1e1;
	t182 = 0.1e1 / t184;
	t210 = t221 * t222 + t223 * t254;
	t249 = qJD(2) * t225;
	t240 = t219 * t249;
	t195 = t210 * qJD(3) + t222 * t240;
	t202 = 0.1e1 / t209;
	t259 = t190 * t203;
	t154 = (-t176 * t202 + t195 * t259) * t182;
	t185 = atan2(-t190, t209);
	t180 = sin(t185);
	t181 = cos(t185);
	t237 = -t180 * t209 - t181 * t190;
	t150 = t237 * t154 - t180 * t176 + t181 * t195;
	t166 = -t180 * t190 + t181 * t209;
	t163 = 0.1e1 / t166;
	t164 = 0.1e1 / t166 ^ 2;
	t272 = t150 * t163 * t164;
	t242 = t218 * t252;
	t208 = t220 * t225 - t242;
	t234 = -t208 * t222 + t218 * t254;
	t271 = -0.2e1 * t234 * t272;
	t253 = t219 * t225;
	t233 = -t202 * t205 + t253 * t259;
	t270 = t222 * t233;
	t258 = t195 * t202 * t203;
	t269 = -0.2e1 * (t176 * t259 - t188 * t258) / t184 ^ 2;
	t194 = t208 * t224 + t218 * t255;
	t207 = t218 * t251 + t220 * t223;
	t217 = pkin(11) + qJ(5);
	t215 = sin(t217);
	t216 = cos(t217);
	t175 = t194 * t216 + t207 * t215;
	t171 = 0.1e1 / t175;
	t172 = 0.1e1 / t175 ^ 2;
	t200 = t207 * qJD(2);
	t179 = t234 * qJD(3) - t200 * t224;
	t201 = -qJD(2) * t242 + t220 * t249;
	t161 = t175 * qJD(5) + t179 * t215 - t201 * t216;
	t174 = t194 * t215 - t207 * t216;
	t170 = t174 ^ 2;
	t169 = t170 * t172 + 0.1e1;
	t264 = t172 * t174;
	t247 = qJD(5) * t174;
	t162 = t179 * t216 + t201 * t215 - t247;
	t267 = t162 * t171 * t172;
	t268 = (t161 * t264 - t170 * t267) / t169 ^ 2;
	t266 = t164 * t234;
	t265 = t171 * t215;
	t263 = t174 * t216;
	t178 = t194 * qJD(3) - t200 * t222;
	t262 = t178 * t164;
	t261 = t180 * t234;
	t260 = t181 * t234;
	t257 = t207 * t222;
	t256 = t207 * t224;
	t250 = qJD(2) * t223;
	t189 = t234 ^ 2;
	t160 = t189 * t164 + 0.1e1;
	t246 = 0.2e1 * (-t189 * t272 - t234 * t262) / t160 ^ 2;
	t245 = -0.2e1 * t268;
	t243 = t174 * t267;
	t239 = -0.2e1 * t190 * t258;
	t238 = qJD(5) * t256 - t200;
	t236 = t172 * t263 - t265;
	t192 = t206 * t224 - t241;
	t235 = -t192 * t202 + t210 * t259;
	t232 = qJD(3) * t257 + qJD(5) * t208 - t201 * t224;
	t199 = t206 * qJD(2);
	t196 = -t209 * qJD(3) + t224 * t240;
	t187 = t208 * t215 - t216 * t256;
	t186 = -t208 * t216 - t215 * t256;
	t177 = -t190 * qJD(3) + t198 * t224;
	t167 = 0.1e1 / t169;
	t157 = 0.1e1 / t160;
	t156 = t182 * t270;
	t155 = t235 * t182;
	t152 = (-t180 * t205 + t181 * t253) * t222 + t237 * t156;
	t151 = t237 * t155 - t180 * t192 + t181 * t210;
	t149 = t235 * t269 + (t210 * t239 - t177 * t202 + (t176 * t210 + t190 * t196 + t192 * t195) * t203) * t182;
	t147 = t269 * t270 + (t233 * t248 + (t239 * t253 + t199 * t202 + (t195 * t205 + (t176 * t225 - t190 * t250) * t219) * t203) * t222) * t182;
	t1 = [0, t147, t149, 0, 0, 0; 0, (-t152 * t266 + t163 * t257) * t246 + ((-t201 * t222 - t207 * t248) * t163 + (-t262 + t271) * t152 + (t257 * t150 + (-t147 * t190 - t156 * t176 + (-t222 * t250 + t225 * t248) * t219 + (-t156 * t209 - t205 * t222) * t154) * t260 + (-t205 * t248 - t147 * t209 - t156 * t195 + t199 * t222 + (t156 * t190 - t222 * t253) * t154) * t261) * t164) * t157, (-t151 * t266 - t163 * t194) * t246 + (t151 * t271 + t179 * t163 + (-t194 * t150 - t151 * t178 + (-t149 * t190 - t155 * t176 + t196 + (-t155 * t209 - t192) * t154) * t260 + (-t149 * t209 - t155 * t195 - t177 + (t155 * t190 - t210) * t154) * t261) * t164) * t157, 0, 0, 0; 0, 0.2e1 * (-t171 * t186 + t187 * t264) * t268 + (0.2e1 * t187 * t243 - t238 * t171 * t216 + t232 * t265 + (-t238 * t174 * t215 - t187 * t161 - t186 * t162 - t232 * t263) * t172) * t167, -t236 * t234 * t245 + (t236 * t178 - ((-qJD(5) * t171 - 0.2e1 * t243) * t216 + (t161 * t216 + (t162 - t247) * t215) * t172) * t234) * t167, 0, t245 + 0.2e1 * (t161 * t172 * t167 + (-t167 * t267 - t172 * t268) * t174) * t174, 0;];
	JaD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiaD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:20:05
	% EndTime: 2019-10-09 22:20:08
	% DurationCPUTime: 2.62s
	% Computational Cost: add. (11295->157), mult. (21125->308), div. (784->12), fcn. (27225->13), ass. (0->124)
	t260 = pkin(11) + qJ(5);
	t258 = sin(t260);
	t259 = cos(t260);
	t262 = sin(qJ(3));
	t264 = cos(qJ(3));
	t263 = sin(qJ(2));
	t265 = cos(qJ(2));
	t322 = cos(pkin(10));
	t323 = cos(pkin(6));
	t286 = t323 * t322;
	t321 = sin(pkin(10));
	t274 = -t263 * t286 - t321 * t265;
	t261 = sin(pkin(6));
	t291 = t261 * t322;
	t276 = t262 * t291 + t264 * t274;
	t284 = t321 * t263 - t265 * t286;
	t221 = t284 * t258 - t259 * t276;
	t237 = t262 * t274 - t264 * t291;
	t248 = t284 * qJD(2);
	t225 = t237 * qJD(3) - t248 * t264;
	t272 = t274 * qJD(2);
	t197 = t221 * qJD(5) + t225 * t258 + t259 * t272;
	t277 = t284 * t259;
	t219 = -t258 * t276 - t277;
	t214 = t219 ^ 2;
	t306 = t261 * t263;
	t255 = t323 * t262 + t264 * t306;
	t305 = t261 * t265;
	t234 = t255 * t258 + t259 * t305;
	t232 = 0.1e1 / t234 ^ 2;
	t206 = t214 * t232 + 0.1e1;
	t204 = 0.1e1 / t206;
	t235 = t255 * t259 - t258 * t305;
	t254 = -t262 * t306 + t323 * t264;
	t304 = qJD(2) * t261;
	t292 = t265 * t304;
	t242 = t254 * qJD(3) + t264 * t292;
	t293 = t263 * t304;
	t211 = t235 * qJD(5) + t242 * t258 - t259 * t293;
	t231 = 0.1e1 / t234;
	t312 = t219 * t232;
	t184 = (-t197 * t231 + t211 * t312) * t204;
	t207 = atan2(-t219, t234);
	t202 = sin(t207);
	t203 = cos(t207);
	t283 = -t202 * t234 - t203 * t219;
	t180 = t283 * t184 - t202 * t197 + t203 * t211;
	t196 = -t202 * t219 + t203 * t234;
	t193 = 0.1e1 / t196;
	t194 = 0.1e1 / t196 ^ 2;
	t327 = t180 * t193 * t194;
	t285 = t323 * t321;
	t273 = -t322 * t263 - t265 * t285;
	t253 = -t263 * t285 + t322 * t265;
	t290 = t261 * t321;
	t275 = -t253 * t264 - t262 * t290;
	t222 = -t258 * t275 + t259 * t273;
	t326 = -0.2e1 * t222;
	t288 = 0.2e1 * t222 * t327;
	t279 = -t231 * t237 + t254 * t312;
	t325 = t258 * t279;
	t314 = t211 * t231 * t232;
	t324 = -0.2e1 * (t197 * t312 - t214 * t314) / t206 ^ 2;
	t223 = -t258 * t273 - t259 * t275;
	t216 = 0.1e1 / t223;
	t217 = 0.1e1 / t223 ^ 2;
	t239 = -t253 * t262 + t264 * t290;
	t236 = t239 ^ 2;
	t310 = t236 * t217;
	t210 = 0.1e1 + t310;
	t249 = t273 * qJD(2);
	t227 = t239 * qJD(3) + t249 * t264;
	t250 = t253 * qJD(2);
	t200 = -t222 * qJD(5) + t227 * t259 + t250 * t258;
	t317 = t200 * t216 * t217;
	t294 = t236 * t317;
	t226 = t275 * qJD(3) - t249 * t262;
	t311 = t226 * t239;
	t320 = (t217 * t311 - t294) / t210 ^ 2;
	t319 = t194 * t222;
	t199 = t223 * qJD(5) + t227 * t258 - t250 * t259;
	t318 = t199 * t194;
	t316 = t202 * t222;
	t315 = t203 * t222;
	t313 = t217 * t239;
	t309 = t239 * t258;
	t308 = t258 * t264;
	t307 = t259 * t264;
	t303 = qJD(2) * t264;
	t302 = qJD(3) * t262;
	t301 = qJD(5) * t258;
	t300 = qJD(5) * t259;
	t299 = t264 * qJD(5);
	t215 = t222 ^ 2;
	t192 = t215 * t194 + 0.1e1;
	t298 = 0.2e1 * (-t215 * t327 + t222 * t318) / t192 ^ 2;
	t297 = 0.2e1 * t320;
	t295 = t239 * t317;
	t287 = -0.2e1 * t219 * t314;
	t281 = -t221 * t231 + t235 * t312;
	t278 = t264 * t284;
	t228 = -t258 * t278 + t259 * t274;
	t243 = (-t259 * t263 + t265 * t308) * t261;
	t280 = -t228 * t231 + t243 * t312;
	t241 = -t255 * qJD(3) - t262 * t292;
	t230 = t253 * t258 + t273 * t307;
	t229 = -t253 * t259 + t273 * t308;
	t224 = t276 * qJD(3) + t248 * t262;
	t213 = ((-qJD(2) + t299) * t265 * t259 + (-t265 * t302 + (qJD(5) - t303) * t263) * t258) * t261;
	t212 = -t234 * qJD(5) + t242 * t259 + t258 * t293;
	t208 = 0.1e1 / t210;
	t201 = t248 * t259 - t274 * t301 - t278 * t300 + (t274 * t303 + t284 * t302) * t258;
	t198 = qJD(5) * t277 + t225 * t259 - t258 * t272 + t276 * t301;
	t190 = 0.1e1 / t192;
	t189 = t204 * t325;
	t187 = t280 * t204;
	t186 = t281 * t204;
	t183 = (-t202 * t237 + t203 * t254) * t258 + t283 * t189;
	t182 = t283 * t187 - t202 * t228 + t203 * t243;
	t181 = t283 * t186 - t202 * t221 + t203 * t235;
	t179 = t280 * t324 + (t243 * t287 - t201 * t231 + (t197 * t243 + t211 * t228 + t213 * t219) * t232) * t204;
	t177 = t281 * t324 + (t235 * t287 - t198 * t231 + (t197 * t235 + t211 * t221 + t212 * t219) * t232) * t204;
	t176 = t324 * t325 + (t279 * t300 + (t254 * t287 - t224 * t231 + (t197 * t254 + t211 * t237 + t219 * t241) * t232) * t258) * t204;
	t1 = [0, t179, t176, 0, t177, 0; 0, (t182 * t319 - t193 * t229) * t298 + (t182 * t288 + (-t229 * t180 - t182 * t199 - (-t179 * t219 - t187 * t197 + t213 + (-t187 * t234 - t228) * t184) * t315 - (-t179 * t234 - t187 * t211 - t201 + (t187 * t219 - t243) * t184) * t316) * t194 + ((t273 * t299 - t249) * t259 + (qJD(5) * t253 - t250 * t264 - t273 * t302) * t258) * t193) * t190, (t183 * t319 - t193 * t309) * t298 + ((t226 * t258 + t239 * t300) * t193 + (-t318 + t288) * t183 + (-t309 * t180 - (t254 * t300 - t176 * t219 - t189 * t197 + t241 * t258 + (-t189 * t234 - t237 * t258) * t184) * t315 - (-t237 * t300 - t176 * t234 - t189 * t211 - t224 * t258 + (t189 * t219 - t254 * t258) * t184) * t316) * t194) * t190, 0, (t181 * t319 - t193 * t223) * t298 + (t181 * t288 + t200 * t193 + (-t223 * t180 - t181 * t199 - (-t177 * t219 - t186 * t197 + t212 + (-t186 * t234 - t221) * t184) * t315 - (-t177 * t234 - t186 * t211 - t198 + (t186 * t219 - t235) * t184) * t316) * t194) * t190, 0; 0, (t216 * t262 * t273 + t230 * t313) * t297 + (0.2e1 * t230 * t295 + (-qJD(3) * t264 * t273 + t250 * t262) * t216 + (-(t249 * t258 - t250 * t307 + t253 * t300) * t239 - t230 * t226 - (-t262 * t200 - (t258 * t299 + t259 * t302) * t239) * t273) * t217) * t208, (-t216 * t275 + t259 * t310) * t297 + (0.2e1 * t259 * t294 - t216 * t227 + (-t200 * t275 + t236 * t301 - 0.2e1 * t259 * t311) * t217) * t208, 0, t313 * t320 * t326 + (t295 * t326 + (t199 * t239 + t222 * t226) * t217) * t208, 0;];
	JaD_rot = t1;
else
	JaD_rot=NaN(3,6);
end