% Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6RRRRRR1
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d5,d6]';
%
% Output:
% JgD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 22:47
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JgD_rot = S6RRRRRR1_jacobigD_rot_6_sym_varpar(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRR1_jacobigD_rot_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRR1_jacobigD_rot_6_sym_varpar: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRRR1_jacobigD_rot_6_sym_varpar: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From jacobigD_rot_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 22:47:03
% EndTime: 2019-02-26 22:47:03
% DurationCPUTime: 0.02s
% Computational Cost: add. (26->4), mult. (17->8), div. (0->0), fcn. (17->4), ass. (0->9)
t126 = qJD(2) + qJD(3) + qJD(4) + qJD(5);
t127 = qJ(2) + qJ(3) + qJ(4) + qJ(5);
t132 = cos(t127) * t126;
t130 = sin(qJ(1));
t128 = qJD(1) * t130;
t131 = cos(qJ(1));
t129 = qJD(1) * t131;
t124 = sin(t127);
t1 = [0, t129, t129, t129, t129, -t124 * t128 + t131 * t132; 0, t128, t128, t128, t128, t124 * t129 + t130 * t132; 0, 0, 0, 0, 0, t126 * t124;];
JgD_rot  = t1;
