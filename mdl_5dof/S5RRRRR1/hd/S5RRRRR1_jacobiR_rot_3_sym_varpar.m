% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für Segment Nr. 3 (0=Basis) von
% S5RRRRR1
% Use Code from Maple symbolic Code Generation
%
% Rotationsmatrix-Jacobi-Matrix: Differentieller Zusammenhang zwischen
% gestapelter Endeffektor-Rotationsmatrix und verallgemeinerten Koordinaten.
%
%
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% pkin [6x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d5]';
%
% Output:
% JR_rot [9x5]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-16 14:52
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function JR_rot = S5RRRRR1_jacobiR_rot_3_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(6,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRR1_jacobiR_rot_3_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S5RRRRR1_jacobiR_rot_3_sym_varpar: pkin has to be [6x1] (double)');

%% Symbolic Calculation
% From jacobiR_rot_3_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-16 14:52:29
% EndTime: 2018-11-16 14:52:29
% DurationCPUTime: 0.02s
% Computational Cost: add. (30->15), mult. (12->4), div. (0->0), fcn. (30->4), ass. (0->10)
t21 = qJ(2) + qJ(3);
t19 = sin(t21);
t22 = sin(qJ(1));
t27 = t22 * t19;
t20 = cos(t21);
t26 = t22 * t20;
t23 = cos(qJ(1));
t25 = t23 * t19;
t24 = t23 * t20;
t1 = [-t26, -t25, -t25, 0, 0; t24, -t27, -t27, 0, 0; 0, -t20, -t20, 0, 0; t27, -t24, -t24, 0, 0; -t25, -t26, -t26, 0, 0; 0, t19, t19, 0, 0; -t23, 0, 0, 0, 0; -t22, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
JR_rot  = t1;
