% Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S6RRPRRP1
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
%   Wie in S6RRPRRP1_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d5,theta3]';
% 
% Output:
% JaD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 10:30
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_rot = S6RRPRRP1_jacobiaD_rot_sym_varpar(qJ, qJD, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP1_jacobiaD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRP1_jacobiaD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRPRRP1_jacobiaD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPRRP1_jacobiaD_rot_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiaD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:30:05
	% EndTime: 2019-10-10 10:30:06
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiaD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:30:05
	% EndTime: 2019-10-10 10:30:06
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (9->0), mult. (37->0), div. (15->0), fcn. (22->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiaD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:30:06
	% EndTime: 2019-10-10 10:30:06
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiaD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:30:06
	% EndTime: 2019-10-10 10:30:06
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiaD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:30:06
	% EndTime: 2019-10-10 10:30:06
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiaD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:30:06
	% EndTime: 2019-10-10 10:30:07
	% DurationCPUTime: 1.13s
	% Computational Cost: add. (5587->97), mult. (3810->208), div. (753->12), fcn. (4455->9), ass. (0->95)
	t176 = sin(qJ(1));
	t238 = 0.2e1 * t176;
	t173 = t176 ^ 2;
	t171 = qJ(2) + pkin(10) + qJ(4);
	t168 = sin(t171);
	t164 = t168 ^ 2;
	t169 = cos(t171);
	t166 = 0.1e1 / t169 ^ 2;
	t223 = t164 * t166;
	t160 = t173 * t223 + 0.1e1;
	t158 = 0.1e1 / t160;
	t165 = 0.1e1 / t169;
	t178 = cos(qJ(1));
	t209 = qJD(1) * t178;
	t199 = t168 * t209;
	t172 = qJD(2) + qJD(4);
	t217 = t172 * t176;
	t202 = t166 * t217;
	t132 = (-(-t169 * t217 - t199) * t165 + t164 * t202) * t158;
	t237 = t132 - t217;
	t177 = cos(qJ(5));
	t211 = t177 * t178;
	t175 = sin(qJ(5));
	t213 = t176 * t175;
	t157 = t169 * t211 + t213;
	t214 = t176 * t168;
	t153 = atan2(-t214, -t169);
	t148 = cos(t153);
	t147 = sin(t153);
	t204 = t147 * t214;
	t142 = -t148 * t169 - t204;
	t139 = 0.1e1 / t142;
	t150 = 0.1e1 / t157;
	t140 = 0.1e1 / t142 ^ 2;
	t151 = 0.1e1 / t157 ^ 2;
	t236 = t158 - 0.1e1;
	t228 = t148 * t168;
	t127 = (-t132 * t176 + t172) * t228 + (t169 * t237 - t199) * t147;
	t235 = t127 * t139 * t140;
	t187 = t169 * t213 + t211;
	t216 = t172 * t178;
	t200 = t168 * t216;
	t137 = t187 * qJD(1) - qJD(5) * t157 + t175 * t200;
	t212 = t176 * t177;
	t215 = t175 * t178;
	t156 = t169 * t215 - t212;
	t149 = t156 ^ 2;
	t146 = t149 * t151 + 0.1e1;
	t226 = t151 * t156;
	t193 = -qJD(1) * t169 + qJD(5);
	t194 = qJD(5) * t169 - qJD(1);
	t138 = -t194 * t215 + (t193 * t176 - t200) * t177;
	t232 = t138 * t150 * t151;
	t234 = (-t137 * t226 - t149 * t232) / t146 ^ 2;
	t163 = t168 * t164;
	t220 = t165 * t168;
	t186 = t172 * (t163 * t165 * t166 + t220);
	t221 = t164 * t176;
	t191 = t209 * t221;
	t233 = (t166 * t191 + t173 * t186) / t160 ^ 2;
	t231 = t140 * t168;
	t230 = t140 * t178;
	t229 = t147 * t176;
	t227 = t150 * t175;
	t225 = t156 * t177;
	t224 = t164 * t165;
	t174 = t178 ^ 2;
	t222 = t164 * t174;
	t219 = t168 * t178;
	t218 = t169 * t172;
	t210 = qJD(1) * t176;
	t135 = t140 * t222 + 0.1e1;
	t208 = 0.2e1 * (-t222 * t235 + (t168 * t174 * t218 - t191) * t140) / t135 ^ 2;
	t207 = 0.2e1 * t235;
	t206 = -0.2e1 * t234;
	t205 = t140 * t219;
	t203 = t156 * t232;
	t198 = 0.1e1 + t223;
	t197 = t168 * t208;
	t196 = -0.2e1 * t168 * t233;
	t195 = t233 * t238;
	t192 = t148 * t158 * t224;
	t190 = t198 * t178;
	t189 = t193 * t178;
	t188 = t151 * t225 - t227;
	t155 = -t169 * t212 + t215;
	t144 = 0.1e1 / t146;
	t143 = t198 * t176 * t158;
	t133 = 0.1e1 / t135;
	t131 = (t236 * t168 * t147 - t176 * t192) * t178;
	t129 = -t169 * t229 + t228 + (t147 * t169 - t148 * t214) * t143;
	t128 = -t198 * t195 + (qJD(1) * t190 + t186 * t238) * t158;
	t125 = t188 * t206 * t219 + (t188 * t169 * t216 + (-t188 * t210 + ((-qJD(5) * t150 - 0.2e1 * t203) * t177 + (-t137 * t177 + (-qJD(5) * t156 + t138) * t175) * t151) * t178) * t168) * t144;
	t124 = (t129 * t231 - t139 * t169) * t178 * t208 + ((-t139 * t210 + (-t129 * t172 - t127) * t230) * t169 + (-t139 * t216 - (-t128 * t148 * t176 - t237 * t147 + (t132 * t229 - t147 * t172 - t148 * t209) * t143) * t205 + (t140 * t210 + t178 * t207) * t129 - ((t128 - t209) * t147 + ((-t143 * t176 + 0.1e1) * t172 + (t143 - t176) * t132) * t148) * t169 * t230) * t168) * t133;
	t1 = [t165 * t178 * t196 + (t172 * t190 - t210 * t220) * t158, t128, 0, t128, 0, 0; (t139 * t197 + (-t139 * t218 + (qJD(1) * t131 + t127) * t231) * t133) * t176 + (t140 * t197 * t131 + (-((t196 - t218 + (t132 * t165 * t221 + t218) * t158) * t147 + (t195 * t224 - t132 * t168 + (-t163 * t202 + (t132 - 0.2e1 * t217) * t168) * t158) * t148) * t205 + (-t140 * t218 + t168 * t207) * t131 + (-t139 + ((-t173 + t174) * t192 + t236 * t204) * t140) * t168 * qJD(1)) * t133) * t178, t124, 0, t124, 0, 0; 0.2e1 * (t150 * t187 + t155 * t226) * t234 + (0.2e1 * t155 * t203 - t194 * t150 * t212 + (t172 * t214 + t189) * t227 + (t155 * t137 + t187 * t138 - t189 * t225 - (t168 * t172 * t177 + t194 * t175) * t156 * t176) * t151) * t144, t125, 0, t125, t206 + 0.2e1 * (-t137 * t144 * t151 + (-t144 * t232 - t151 * t234) * t156) * t156, 0;];
	JaD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiaD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:30:06
	% EndTime: 2019-10-10 10:30:07
	% DurationCPUTime: 1.14s
	% Computational Cost: add. (5587->97), mult. (3810->208), div. (753->12), fcn. (4455->9), ass. (0->95)
	t174 = sin(qJ(1));
	t236 = 0.2e1 * t174;
	t171 = t174 ^ 2;
	t169 = qJ(2) + pkin(10) + qJ(4);
	t166 = sin(t169);
	t162 = t166 ^ 2;
	t167 = cos(t169);
	t164 = 0.1e1 / t167 ^ 2;
	t221 = t162 * t164;
	t158 = t171 * t221 + 0.1e1;
	t156 = 0.1e1 / t158;
	t163 = 0.1e1 / t167;
	t176 = cos(qJ(1));
	t207 = qJD(1) * t176;
	t197 = t166 * t207;
	t170 = qJD(2) + qJD(4);
	t215 = t170 * t174;
	t200 = t164 * t215;
	t130 = (-(-t167 * t215 - t197) * t163 + t162 * t200) * t156;
	t235 = t130 - t215;
	t175 = cos(qJ(5));
	t209 = t175 * t176;
	t173 = sin(qJ(5));
	t211 = t174 * t173;
	t155 = t167 * t209 + t211;
	t212 = t174 * t166;
	t151 = atan2(-t212, -t167);
	t146 = cos(t151);
	t145 = sin(t151);
	t202 = t145 * t212;
	t140 = -t146 * t167 - t202;
	t137 = 0.1e1 / t140;
	t148 = 0.1e1 / t155;
	t138 = 0.1e1 / t140 ^ 2;
	t149 = 0.1e1 / t155 ^ 2;
	t234 = t156 - 0.1e1;
	t226 = t146 * t166;
	t125 = (-t130 * t174 + t170) * t226 + (t235 * t167 - t197) * t145;
	t233 = t125 * t137 * t138;
	t185 = t167 * t211 + t209;
	t214 = t170 * t176;
	t198 = t166 * t214;
	t135 = t185 * qJD(1) - t155 * qJD(5) + t173 * t198;
	t210 = t174 * t175;
	t213 = t173 * t176;
	t154 = t167 * t213 - t210;
	t147 = t154 ^ 2;
	t144 = t147 * t149 + 0.1e1;
	t224 = t149 * t154;
	t191 = -qJD(1) * t167 + qJD(5);
	t192 = qJD(5) * t167 - qJD(1);
	t136 = -t192 * t213 + (t191 * t174 - t198) * t175;
	t230 = t136 * t148 * t149;
	t232 = (-t135 * t224 - t147 * t230) / t144 ^ 2;
	t161 = t166 * t162;
	t218 = t163 * t166;
	t184 = t170 * (t161 * t163 * t164 + t218);
	t219 = t162 * t174;
	t189 = t207 * t219;
	t231 = (t164 * t189 + t171 * t184) / t158 ^ 2;
	t229 = t138 * t166;
	t228 = t138 * t176;
	t227 = t145 * t174;
	t225 = t148 * t173;
	t223 = t154 * t175;
	t222 = t162 * t163;
	t172 = t176 ^ 2;
	t220 = t162 * t172;
	t217 = t166 * t176;
	t216 = t167 * t170;
	t208 = qJD(1) * t174;
	t133 = t138 * t220 + 0.1e1;
	t206 = 0.2e1 * (-t220 * t233 + (t166 * t172 * t216 - t189) * t138) / t133 ^ 2;
	t205 = 0.2e1 * t233;
	t204 = -0.2e1 * t232;
	t203 = t138 * t217;
	t201 = t154 * t230;
	t196 = 0.1e1 + t221;
	t195 = t166 * t206;
	t194 = -0.2e1 * t166 * t231;
	t193 = t231 * t236;
	t190 = t146 * t156 * t222;
	t188 = t196 * t176;
	t187 = t191 * t176;
	t186 = t149 * t223 - t225;
	t153 = -t167 * t210 + t213;
	t142 = 0.1e1 / t144;
	t141 = t196 * t174 * t156;
	t131 = 0.1e1 / t133;
	t129 = (t234 * t166 * t145 - t174 * t190) * t176;
	t127 = -t167 * t227 + t226 + (t145 * t167 - t146 * t212) * t141;
	t126 = -t196 * t193 + (qJD(1) * t188 + t184 * t236) * t156;
	t123 = t186 * t204 * t217 + (t186 * t167 * t214 + (-t186 * t208 + ((-qJD(5) * t148 - 0.2e1 * t201) * t175 + (-t135 * t175 + (-qJD(5) * t154 + t136) * t173) * t149) * t176) * t166) * t142;
	t122 = (t127 * t229 - t137 * t167) * t176 * t206 + ((-t137 * t208 + (-t127 * t170 - t125) * t228) * t167 + (-t137 * t214 - (-t126 * t146 * t174 - t235 * t145 + (t130 * t227 - t145 * t170 - t146 * t207) * t141) * t203 + (t138 * t208 + t176 * t205) * t127 - ((t126 - t207) * t145 + ((-t141 * t174 + 0.1e1) * t170 + (t141 - t174) * t130) * t146) * t167 * t228) * t166) * t131;
	t1 = [t163 * t176 * t194 + (t170 * t188 - t208 * t218) * t156, t126, 0, t126, 0, 0; (t137 * t195 + (-t137 * t216 + (qJD(1) * t129 + t125) * t229) * t131) * t174 + (t138 * t195 * t129 + (-((t194 - t216 + (t130 * t163 * t219 + t216) * t156) * t145 + (t193 * t222 - t130 * t166 + (-t161 * t200 + (t130 - 0.2e1 * t215) * t166) * t156) * t146) * t203 + (-t138 * t216 + t166 * t205) * t129 + (-t137 + ((-t171 + t172) * t190 + t234 * t202) * t138) * t166 * qJD(1)) * t131) * t176, t122, 0, t122, 0, 0; 0.2e1 * (t148 * t185 + t153 * t224) * t232 + (0.2e1 * t153 * t201 - t192 * t148 * t210 + (t170 * t212 + t187) * t225 + (t153 * t135 + t185 * t136 - t187 * t223 - (t166 * t170 * t175 + t192 * t173) * t154 * t174) * t149) * t142, t123, 0, t123, t204 + 0.2e1 * (-t135 * t142 * t149 + (-t142 * t230 - t149 * t232) * t154) * t154, 0;];
	JaD_rot = t1;
else
	JaD_rot=NaN(3,6);
end