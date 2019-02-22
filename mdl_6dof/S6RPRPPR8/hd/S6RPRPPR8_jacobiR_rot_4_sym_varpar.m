% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für Segment Nr. 4 (0=Basis) von
% S6RPRPPR8
% Use Code from Maple symbolic Code Generation
%
% Rotationsmatrix-Jacobi-Matrix: Differentieller Zusammenhang zwischen
% gestapelter Endeffektor-Rotationsmatrix und verallgemeinerten Koordinaten.
%
%
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d6]';
%
% Output:
% JR_rot [9x6]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-22 10:25
% Revision: 2b76964ad985d937eecd005a1a368749e6b3dc4d (2019-02-18)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S6RPRPPR8_jacobiR_rot_4_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPPR8_jacobiR_rot_4_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S6RPRPPR8_jacobiR_rot_4_sym_varpar: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From jacobiR_rot_4_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-22 10:25:30
% EndTime: 2019-02-22 10:25:30
% DurationCPUTime: 0.02s
% Computational Cost: add. (6->6), mult. (8->4), div. (0->0), fcn. (20->4), ass. (0->9)
t39 = sin(qJ(1));
t40 = cos(qJ(3));
t44 = t39 * t40;
t38 = sin(qJ(3));
t41 = cos(qJ(1));
t43 = t41 * t38;
t42 = t41 * t40;
t37 = t39 * t38;
t1 = [t43, 0, t44, 0, 0, 0; t37, 0, -t42, 0, 0, 0; 0, 0, -t38, 0, 0, 0; -t39, 0, 0, 0, 0, 0; t41, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; -t42, 0, t37, 0, 0, 0; -t44, 0, -t43, 0, 0, 0; 0, 0, t40, 0, 0, 0;];
JR_rot  = t1;
