% Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix für Segment Nr. 5 (0=Basis) von
% S6RRPRRP12
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
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d5]';
%
% Output:
% JgD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 21:52
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JgD_rot = S6RRPRRP12_jacobigD_rot_5_sym_varpar(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP12_jacobigD_rot_5_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRP12_jacobigD_rot_5_sym_varpar: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRPRRP12_jacobigD_rot_5_sym_varpar: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From jacobigD_rot_5_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 21:52:13
% EndTime: 2019-02-26 21:52:13
% DurationCPUTime: 0.02s
% Computational Cost: add. (4->2), mult. (20->8), div. (0->0), fcn. (20->4), ass. (0->10)
t98 = sin(qJ(1));
t103 = qJD(1) * t98;
t102 = qJD(2) * sin(qJ(2));
t100 = cos(qJ(1));
t101 = qJD(1) * t100;
t99 = cos(qJ(2));
t96 = qJD(2) * t99;
t95 = t99 * t101 - t98 * t102;
t94 = -t100 * t102 - t99 * t103;
t1 = [0, t101, 0, t94, t94, 0; 0, t103, 0, t95, t95, 0; 0, 0, 0, t96, t96, 0;];
JgD_rot  = t1;
