% Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6RPRPPR6
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
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d6,theta4,theta5]';
%
% Output:
% JgD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 20:42
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JgD_rot = S6RPRPPR6_jacobigD_rot_6_sym_varpar(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPPR6_jacobigD_rot_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPPR6_jacobigD_rot_6_sym_varpar: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRPPR6_jacobigD_rot_6_sym_varpar: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From jacobigD_rot_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 20:41:59
% EndTime: 2019-02-26 20:41:59
% DurationCPUTime: 0.02s
% Computational Cost: add. (8->4), mult. (11->8), div. (0->0), fcn. (11->4), ass. (0->8)
t93 = sin(qJ(1));
t97 = qJD(1) * t93;
t94 = cos(qJ(1));
t96 = qJD(1) * t94;
t92 = qJ(3) + pkin(9);
t95 = qJD(3) * sin(t92);
t91 = cos(t92);
t1 = [0, 0, -t97, 0, 0, -t91 * t96 + t93 * t95; 0, 0, t96, 0, 0, -t91 * t97 - t94 * t95; 0, 0, 0, 0, 0, qJD(3) * t91;];
JgD_rot  = t1;
