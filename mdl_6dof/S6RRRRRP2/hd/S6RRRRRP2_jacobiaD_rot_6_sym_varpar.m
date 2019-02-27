% Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6RRRRRP2
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
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d5]';
%
% Output:
% JaD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 22:40
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_rot = S6RRRRRP2_jacobiaD_rot_6_sym_varpar(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRP2_jacobiaD_rot_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRP2_jacobiaD_rot_6_sym_varpar: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRRP2_jacobiaD_rot_6_sym_varpar: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From jacobiaD_rot_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 22:40:10
% EndTime: 2019-02-26 22:40:11
% DurationCPUTime: 1.15s
% Computational Cost: add. (10860->125), mult. (10596->273), div. (1916->15), fcn. (13264->9), ass. (0->119)
t203 = qJ(2) + qJ(3) + qJ(4);
t201 = cos(t203);
t208 = sin(qJ(5));
t283 = sin(qJ(1));
t239 = t283 * t208;
t209 = cos(qJ(5));
t210 = cos(qJ(1));
t260 = t210 * t209;
t185 = t201 * t260 + t239;
t179 = 0.1e1 / t185 ^ 2;
t200 = sin(t203);
t194 = t200 ^ 2;
t207 = t210 ^ 2;
t271 = t194 * t207;
t241 = t179 * t271;
t174 = 0.1e1 + t241;
t234 = qJD(1) * t283;
t202 = qJD(2) + qJD(3) + qJD(4);
t264 = t202 * t210;
t243 = t200 * t264;
t220 = t201 * t234 + t243;
t233 = t283 * qJD(5);
t261 = t210 * t208;
t164 = (-qJD(5) * t201 + qJD(1)) * t261 + (t233 - t220) * t209;
t178 = 0.1e1 / t185;
t278 = t164 * t178 * t179;
t228 = t271 * t278;
t244 = t200 * t202 * t207;
t286 = (-t228 + (-t194 * t210 * t234 + t201 * t244) * t179) / t174 ^ 2;
t267 = t200 * t210;
t181 = t201 * t239 + t260;
t225 = t208 * t233;
t256 = qJD(5) * t210;
t236 = t209 * t256;
t163 = qJD(1) * t181 - t201 * t236 + t208 * t243 - t225;
t238 = t283 * t209;
t184 = t201 * t261 - t238;
t195 = 0.1e1 / t200;
t196 = 0.1e1 / t200 ^ 2;
t205 = 0.1e1 / t208 ^ 2;
t257 = qJD(5) * t209;
t237 = t205 * t257;
t204 = 0.1e1 / t208;
t265 = t202 * t204;
t242 = t201 * t265;
t270 = t195 * t204;
t285 = t184 * (t195 * t237 + t196 * t242) + t163 * t270;
t268 = t200 * t208;
t173 = atan2(-t181, t268);
t168 = cos(t173);
t167 = sin(t173);
t277 = t167 * t181;
t162 = t168 * t268 - t277;
t159 = 0.1e1 / t162;
t160 = 0.1e1 / t162 ^ 2;
t284 = 0.2e1 * t184;
t176 = t181 ^ 2;
t269 = t196 * t205;
t175 = t176 * t269 + 0.1e1;
t171 = 0.1e1 / t175;
t266 = t201 * t202;
t221 = t200 * t257 + t208 * t266;
t246 = t181 * t269;
t226 = t209 * t234;
t240 = t283 * t200;
t227 = t202 * t240;
t259 = qJD(1) * t210;
t165 = t209 * t233 * t201 - t226 + (t201 * t259 - t227 - t256) * t208;
t248 = t165 * t270;
t151 = (t221 * t246 - t248) * t171;
t218 = -t151 * t181 + t221;
t147 = (-t151 * t268 - t165) * t167 + t218 * t168;
t161 = t159 * t160;
t282 = t147 * t161;
t197 = t195 / t194;
t206 = t204 * t205;
t281 = (t165 * t246 + (-t196 * t206 * t257 - t197 * t205 * t266) * t176) / t175 ^ 2;
t280 = t160 * t184;
t279 = t163 * t160;
t276 = t167 * t184;
t275 = t167 * t200;
t274 = t168 * t181;
t273 = t168 * t184;
t272 = t168 * t201;
t263 = t205 * t209;
t262 = t210 * t159;
t258 = qJD(5) * t208;
t177 = t184 ^ 2;
t157 = t177 * t160 + 0.1e1;
t255 = 0.2e1 * (-t177 * t282 - t184 * t279) / t157 ^ 2;
t254 = 0.2e1 * t286;
t253 = -0.2e1 * t281;
t252 = t161 * t284;
t251 = t195 * t281;
t250 = t160 * t276;
t247 = t181 * t270;
t245 = t196 * t201 * t204;
t223 = t181 * t245 + t283;
t158 = t223 * t171;
t235 = t283 - t158;
t232 = t159 * t255;
t231 = t160 * t255;
t230 = t267 * t284;
t229 = t204 * t251;
t183 = t201 * t238 - t261;
t224 = t181 * t263 - t183 * t204;
t222 = t179 * t183 * t210 - t178 * t283;
t169 = 0.1e1 / t174;
t166 = qJD(1) * t185 - t201 * t225 - t209 * t227 - t236;
t155 = 0.1e1 / t157;
t154 = t224 * t195 * t171;
t150 = (-t167 + (t168 * t247 + t167) * t171) * t184;
t149 = -t158 * t274 + (t235 * t275 + t272) * t208;
t148 = t168 * t200 * t209 - t167 * t183 + (-t167 * t268 - t274) * t154;
t146 = t223 * t253 + (t165 * t245 + t259 + (-t195 * t265 + (-t196 * t237 - 0.2e1 * t197 * t242) * t201) * t181) * t171;
t144 = -0.2e1 * t224 * t251 + (-t224 * t196 * t266 + (t165 * t263 - t166 * t204 + (t183 * t263 + (-0.2e1 * t206 * t209 ^ 2 - t204) * t181) * qJD(5)) * t195) * t171;
t143 = (t178 * t201 * t210 + t209 * t241) * t254 + (0.2e1 * t209 * t228 + t220 * t178 + ((t164 * t210 - 0.2e1 * t209 * t244) * t201 + (t207 * t258 + 0.2e1 * t210 * t226) * t194) * t179) * t169;
t142 = t149 * t184 * t231 + (-(-t146 * t274 + (t151 * t277 - t165 * t168) * t158) * t280 + (t147 * t252 + t279) * t149 + (-t200 * t262 - (-t158 * t275 + t167 * t240 + t272) * t280) * t257) * t155 + (t232 * t267 + ((-t202 * t262 - (t202 * t235 - t151) * t250) * t201 + (t159 * t234 + (t210 * t147 - (-t146 + t259) * t276 - (t151 * t235 - t202) * t273) * t160) * t200) * t155) * t208;
t1 = [t285 * t171 + t229 * t284, t146, t146, t146, t144, 0; t181 * t232 + (-t165 * t159 + (t147 * t181 + t150 * t163) * t160) * t155 + (t150 * t231 + (0.2e1 * t150 * t282 + (t163 * t171 - t163 - (-t151 * t171 * t247 + t253) * t184) * t160 * t167 + (-(-0.2e1 * t181 * t229 - t151) * t280 + (-(t151 + t248) * t184 + t285 * t181) * t160 * t171) * t168) * t155) * t184, t142, t142, t142 (t148 * t280 - t159 * t185) * t255 + (t148 * t279 + t164 * t159 + (t148 * t252 - t185 * t160) * t147 - (-t200 * t258 + t209 * t266 - t144 * t181 - t154 * t165 + (-t154 * t268 - t183) * t151) * t160 * t273 - (-t166 + (-t144 * t208 - t151 * t209) * t200 - t218 * t154) * t250) * t155, 0; t222 * t200 * t254 + (-t222 * t266 + ((qJD(1) * t178 + 0.2e1 * t183 * t278) * t210 + (-t164 * t283 - t166 * t210 + t183 * t234) * t179) * t200) * t169, t143, t143, t143, t179 * t230 * t286 + (t230 * t278 + (t163 * t267 + (t200 * t234 - t201 * t264) * t184) * t179) * t169, 0;];
JaD_rot  = t1;
