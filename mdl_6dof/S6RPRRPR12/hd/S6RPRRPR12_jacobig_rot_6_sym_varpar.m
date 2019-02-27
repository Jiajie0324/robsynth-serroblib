% Rotatorische Teilmatrix der geometrischen Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6RPRRPR12
% Use Code from Maple symbolic Code Generation
%
% geometrische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
%
%
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d3,d4,d6,theta2]';
%
% Output:
% Jg_rot [3x6]
%   Rotatorische Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 21:07
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Jg_rot = S6RPRRPR12_jacobig_rot_6_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPR12_jacobig_rot_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RPRRPR12_jacobig_rot_6_sym_varpar: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From jacobig_rot_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 21:07:16
% EndTime: 2019-02-26 21:07:17
% DurationCPUTime: 0.05s
% Computational Cost: add. (33->20), mult. (98->45), div. (0->0), fcn. (140->12), ass. (0->30)
t171 = sin(pkin(7));
t175 = cos(pkin(6));
t191 = t171 * t175;
t172 = sin(pkin(6));
t178 = sin(qJ(1));
t190 = t172 * t178;
t181 = cos(qJ(1));
t189 = t172 * t181;
t173 = cos(pkin(12));
t174 = cos(pkin(7));
t188 = t173 * t174;
t170 = sin(pkin(12));
t187 = t178 * t170;
t186 = t178 * t173;
t185 = t181 * t170;
t184 = t181 * t173;
t166 = t175 * t184 - t187;
t183 = -t166 * t174 + t171 * t189;
t168 = -t175 * t186 - t185;
t182 = t168 * t174 + t171 * t190;
t180 = cos(qJ(3));
t179 = cos(qJ(4));
t177 = sin(qJ(3));
t176 = sin(qJ(4));
t169 = -t175 * t187 + t184;
t167 = t175 * t185 + t186;
t165 = -t172 * t173 * t171 + t175 * t174;
t164 = -t168 * t171 + t174 * t190;
t163 = -t166 * t171 - t174 * t189;
t1 = [0, 0, t164, t169 * t177 - t182 * t180, 0 (t169 * t180 + t182 * t177) * t179 + t164 * t176; 0, 0, t163, t167 * t177 + t183 * t180, 0 (t167 * t180 - t183 * t177) * t179 + t163 * t176; 1, 0, t165, -t180 * t191 + (t170 * t177 - t180 * t188) * t172, 0 (t177 * t191 + (t170 * t180 + t177 * t188) * t172) * t179 + t165 * t176;];
Jg_rot  = t1;
