% Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix für Segment Nr. 6 (0=Basis) von
% S6RPRPRP8
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
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,theta4]';
%
% Output:
% JgD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 20:47
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JgD_rot = S6RPRPRP8_jacobigD_rot_6_sym_varpar(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRP8_jacobigD_rot_6_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRP8_jacobigD_rot_6_sym_varpar: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPRPRP8_jacobigD_rot_6_sym_varpar: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From jacobigD_rot_6_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 20:47:36
% EndTime: 2019-02-26 20:47:36
% DurationCPUTime: 0.02s
% Computational Cost: add. (8->4), mult. (11->8), div. (0->0), fcn. (11->4), ass. (0->8)
t98 = sin(qJ(1));
t102 = qJD(1) * t98;
t99 = cos(qJ(1));
t101 = qJD(1) * t99;
t97 = qJ(3) + pkin(9);
t100 = qJD(3) * sin(t97);
t96 = cos(t97);
t1 = [0, 0, -t102, 0, t98 * t100 - t96 * t101, 0; 0, 0, t101, 0, -t99 * t100 - t96 * t102, 0; 0, 0, 0, 0, qJD(3) * t96, 0;];
JgD_rot  = t1;