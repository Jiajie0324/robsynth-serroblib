% Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix für Segment Nr. 3 (0=Basis) von
% S6RRRPRP8
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d5]';
%
% Output:
% JgD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 22:13
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JgD_rot = S6RRRPRP8_jacobigD_rot_3_sym_varpar(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRP8_jacobigD_rot_3_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRP8_jacobigD_rot_3_sym_varpar: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRRPRP8_jacobigD_rot_3_sym_varpar: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From jacobigD_rot_3_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 22:13:09
% EndTime: 2019-02-26 22:13:09
% DurationCPUTime: 0.08s
% Computational Cost: add. (2->2), mult. (11->8), div. (0->0), fcn. (11->4), ass. (0->7)
t73 = sin(qJ(1));
t78 = qJD(1) * t73;
t75 = cos(qJ(1));
t77 = qJD(1) * t75;
t76 = qJD(2) * cos(qJ(2));
t72 = sin(qJ(2));
t1 = [0, t77, -t72 * t78 + t75 * t76, 0, 0, 0; 0, t78, t72 * t77 + t73 * t76, 0, 0, 0; 0, 0, qJD(2) * t72, 0, 0, 0;];
JgD_rot  = t1;
