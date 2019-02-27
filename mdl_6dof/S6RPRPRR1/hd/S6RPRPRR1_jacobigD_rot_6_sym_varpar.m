% Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6RPRPRR1
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

function JgD_rot = S6RPRPRR1_jacobigD_rot_6_sym_varpar(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRR1_jacobigD_rot_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRR1_jacobigD_rot_6_sym_varpar: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RPRPRR1_jacobigD_rot_6_sym_varpar: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From jacobigD_rot_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 20:49:13
% EndTime: 2019-02-26 20:49:13
% DurationCPUTime: 0.02s
% Computational Cost: add. (23->5), mult. (13->8), div. (0->0), fcn. (13->4), ass. (0->10)
t125 = qJ(3) + pkin(11) + qJ(5);
t126 = qJD(3) + qJD(5);
t128 = cos(t125) * t126;
t127 = qJ(1) + pkin(10);
t123 = sin(t127);
t119 = qJD(1) * t123;
t124 = cos(t127);
t120 = qJD(1) * t124;
t121 = sin(t125);
t1 = [0, 0, t120, 0, t120, -t121 * t119 + t124 * t128; 0, 0, t119, 0, t119, t121 * t120 + t123 * t128; 0, 0, 0, 0, 0, t126 * t121;];
JgD_rot  = t1;
