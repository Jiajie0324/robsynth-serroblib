% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für Segment Nr. 4 (0=Basis) von
% S6RPRPPR2
% Use Code from Maple symbolic Code Generation
%
% Rotationsmatrix-Jacobi-Matrix: Differentieller Zusammenhang zwischen
% gestapelter Endeffektor-Rotationsmatrix und verallgemeinerten Koordinaten.
%
%
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d6,theta2,theta4]';
%
% Output:
% JR_rot [9x6]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 20:39
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S6RPRPPR2_jacobiR_rot_4_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPPR2_jacobiR_rot_4_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRPPR2_jacobiR_rot_4_sym_varpar: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From jacobiR_rot_4_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 20:39:55
% EndTime: 2019-02-26 20:39:55
% DurationCPUTime: 0.02s
% Computational Cost: add. (27->9), mult. (8->4), div. (0->0), fcn. (20->4), ass. (0->11)
t21 = qJ(3) + pkin(10);
t17 = sin(t21);
t22 = qJ(1) + pkin(9);
t18 = sin(t22);
t26 = t18 * t17;
t19 = cos(t21);
t25 = t18 * t19;
t20 = cos(t22);
t24 = t20 * t17;
t23 = t20 * t19;
t1 = [-t25, 0, -t24, 0, 0, 0; t23, 0, -t26, 0, 0, 0; 0, 0, t19, 0, 0, 0; t26, 0, -t23, 0, 0, 0; -t24, 0, -t25, 0, 0, 0; 0, 0, -t17, 0, 0, 0; t20, 0, 0, 0, 0, 0; t18, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
JR_rot  = t1;
