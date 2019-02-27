% Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6RPRPRR2
% Use Code from Maple symbolic Code Generation
%
% geometrische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
%
%
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,d6,theta2,theta4]';
%
% Output:
% JgD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 20:49
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JgD_rot = S6RPRPRR2_jacobigD_rot_6_sym_varpar(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRR2_jacobigD_rot_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRR2_jacobigD_rot_6_sym_varpar: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RPRPRR2_jacobigD_rot_6_sym_varpar: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From jacobigD_rot_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 20:49:39
% EndTime: 2019-02-26 20:49:39
% DurationCPUTime: 0.02s
% Computational Cost: add. (24->4), mult. (20->8), div. (0->0), fcn. (20->4), ass. (0->12)
t119 = qJ(1) + pkin(10);
t115 = sin(t119);
t122 = qJD(1) * t115;
t117 = cos(t119);
t121 = qJD(1) * t117;
t118 = qJ(3) + pkin(11);
t120 = qJD(3) * cos(t118);
t114 = sin(t118);
t113 = qJD(3) * t114;
t112 = t114 * t121 + t115 * t120;
t111 = -t114 * t122 + t117 * t120;
t1 = [0, 0, t121, 0, t111, t111; 0, 0, t122, 0, t112, t112; 0, 0, 0, 0, t113, t113;];
JgD_rot  = t1;
