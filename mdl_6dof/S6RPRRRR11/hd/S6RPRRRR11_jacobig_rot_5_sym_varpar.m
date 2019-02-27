% Rotatorische Teilmatrix der geometrischen Jacobi-Matrix für Segment Nr. 5 (0=Basis) von
% S6RPRRRR11
% Use Code from Maple symbolic Code Generation
%
% geometrische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
%
%
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d3,d4,d5,d6,theta2]';
%
% Output:
% Jg_rot [3x6]
%   Rotatorische Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 21:20
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Jg_rot = S6RPRRRR11_jacobig_rot_5_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(13,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRR11_jacobig_rot_5_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6RPRRRR11_jacobig_rot_5_sym_varpar: pkin has to be [13x1] (double)');

%% Symbolic Calculation
% From jacobig_rot_5_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 21:20:36
% EndTime: 2019-02-26 21:20:36
% DurationCPUTime: 0.05s
% Computational Cost: add. (33->20), mult. (98->45), div. (0->0), fcn. (140->12), ass. (0->30)
t163 = sin(pkin(7));
t167 = cos(pkin(6));
t183 = t163 * t167;
t164 = sin(pkin(6));
t170 = sin(qJ(1));
t182 = t164 * t170;
t173 = cos(qJ(1));
t181 = t164 * t173;
t165 = cos(pkin(13));
t166 = cos(pkin(7));
t180 = t165 * t166;
t162 = sin(pkin(13));
t179 = t170 * t162;
t178 = t170 * t165;
t177 = t173 * t162;
t176 = t173 * t165;
t158 = t167 * t176 - t179;
t175 = -t158 * t166 + t163 * t181;
t160 = -t167 * t178 - t177;
t174 = t160 * t166 + t163 * t182;
t172 = cos(qJ(3));
t171 = cos(qJ(4));
t169 = sin(qJ(3));
t168 = sin(qJ(4));
t161 = -t167 * t179 + t176;
t159 = t167 * t177 + t178;
t157 = -t164 * t165 * t163 + t167 * t166;
t156 = -t160 * t163 + t166 * t182;
t155 = -t158 * t163 - t166 * t181;
t1 = [0, 0, t156, t161 * t169 - t174 * t172 (t161 * t172 + t174 * t169) * t168 - t156 * t171, 0; 0, 0, t155, t159 * t169 + t175 * t172 (t159 * t172 - t175 * t169) * t168 - t155 * t171, 0; 1, 0, t157, -t172 * t183 + (t162 * t169 - t172 * t180) * t164 (t169 * t183 + (t162 * t172 + t169 * t180) * t164) * t168 - t157 * t171, 0;];
Jg_rot  = t1;
