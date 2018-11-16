% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für Segment Nr. 4 (0=Basis) von
% S4RPRR1
% Use Code from Maple symbolic Code Generation
%
% Rotationsmatrix-Jacobi-Matrix: Differentieller Zusammenhang zwischen
% gestapelter Endeffektor-Rotationsmatrix und verallgemeinerten Koordinaten.
%
%
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d3,d4,theta2]';
%
% Output:
% JR_rot [9x4]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 13:51
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function JR_rot = S4RPRR1_jacobiR_rot_4_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RPRR1_jacobiR_rot_4_sym_varpar: qJ has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4RPRR1_jacobiR_rot_4_sym_varpar: pkin has to be [7x1] (double)');

%% Symbolic Calculation
% From jacobiR_rot_4_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-14 13:50:41
% EndTime: 2018-11-14 13:50:41
% DurationCPUTime: 0.02s
% Computational Cost: add. (45->10), mult. (0->0), div. (0->0), fcn. (12->2), ass. (0->4)
t22 = qJ(1) + pkin(7) + qJ(3) + qJ(4);
t21 = cos(t22);
t20 = sin(t22);
t1 = [-t20, 0, -t20, -t20; t21, 0, t21, t21; 0, 0, 0, 0; -t21, 0, -t21, -t21; -t20, 0, -t20, -t20; 0, 0, 0, 0; 0, 0, 0, 0; 0, 0, 0, 0; 0, 0, 0, 0;];
JR_rot  = t1;