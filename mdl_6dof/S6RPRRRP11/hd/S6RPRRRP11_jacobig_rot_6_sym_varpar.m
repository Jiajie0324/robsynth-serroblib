% Rotatorische Teilmatrix der geometrischen Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6RPRRRP11
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d3,d4,d5,theta2]';
%
% Output:
% Jg_rot [3x6]
%   Rotatorische Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 21:13
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Jg_rot = S6RPRRRP11_jacobig_rot_6_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRP11_jacobig_rot_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RPRRRP11_jacobig_rot_6_sym_varpar: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From jacobig_rot_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 21:13:32
% EndTime: 2019-02-26 21:13:32
% DurationCPUTime: 0.06s
% Computational Cost: add. (33->20), mult. (98->45), div. (0->0), fcn. (140->12), ass. (0->30)
t174 = sin(pkin(7));
t178 = cos(pkin(6));
t194 = t174 * t178;
t175 = sin(pkin(6));
t181 = sin(qJ(1));
t193 = t175 * t181;
t184 = cos(qJ(1));
t192 = t175 * t184;
t176 = cos(pkin(12));
t177 = cos(pkin(7));
t191 = t176 * t177;
t173 = sin(pkin(12));
t190 = t181 * t173;
t189 = t181 * t176;
t188 = t184 * t173;
t187 = t184 * t176;
t169 = t178 * t187 - t190;
t186 = -t169 * t177 + t174 * t192;
t171 = -t178 * t189 - t188;
t185 = t171 * t177 + t174 * t193;
t183 = cos(qJ(3));
t182 = cos(qJ(4));
t180 = sin(qJ(3));
t179 = sin(qJ(4));
t172 = -t178 * t190 + t187;
t170 = t178 * t188 + t189;
t168 = -t175 * t176 * t174 + t178 * t177;
t167 = -t171 * t174 + t177 * t193;
t166 = -t169 * t174 - t177 * t192;
t1 = [0, 0, t167, t172 * t180 - t185 * t183 (t172 * t183 + t185 * t180) * t179 - t167 * t182, 0; 0, 0, t166, t170 * t180 + t186 * t183 (t170 * t183 - t186 * t180) * t179 - t166 * t182, 0; 1, 0, t168, -t183 * t194 + (t173 * t180 - t183 * t191) * t175 (t180 * t194 + (t173 * t183 + t180 * t191) * t175) * t179 - t168 * t182, 0;];
Jg_rot  = t1;