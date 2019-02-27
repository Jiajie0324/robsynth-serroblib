% Rotatorische Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 5 (0=Basis) von
% S6RPRPRP10
% Use Code from Maple symbolic Code Generation
%
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% Zeitableitung der Winkeldarstellung des Endeffektors in Basis-Koordinaten
%
% Winkeldarstellung: Euler-XYZ-Winkel, rotx(alpha)*roty(beta)*rotz(gamma)
%
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5]';
%
% Output:
% Ja_rot [3x6]
%   Rotatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 20:48
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_rot = S6RPRPRP10_jacobia_rot_5_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRP10_jacobia_rot_5_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S6RPRPRP10_jacobia_rot_5_sym_varpar: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From jacobia_rot_5_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 20:48:37
% EndTime: 2019-02-26 20:48:37
% DurationCPUTime: 0.07s
% Computational Cost: add. (64->19), mult. (224->55), div. (52->9), fcn. (332->9), ass. (0->34)
t40 = cos(qJ(3));
t37 = sin(qJ(3));
t41 = cos(qJ(1));
t44 = t41 * t37;
t32 = atan2(t44, t40);
t29 = sin(t32);
t30 = cos(t32);
t22 = t29 * t44 + t30 * t40;
t21 = 0.1e1 / t22 ^ 2;
t38 = sin(qJ(1));
t52 = t21 * t38 ^ 2;
t36 = sin(qJ(5));
t39 = cos(qJ(5));
t43 = t41 * t39;
t47 = t38 * t40;
t28 = -t36 * t47 + t43;
t26 = 0.1e1 / t28 ^ 2;
t45 = t41 * t36;
t27 = t39 * t47 + t45;
t51 = t26 * t27;
t50 = t29 * t40;
t33 = t37 ^ 2;
t49 = t33 / t40 ^ 2;
t48 = t37 * t38;
t31 = 0.1e1 / (t41 ^ 2 * t49 + 0.1e1);
t46 = t41 * t31;
t42 = t27 ^ 2 * t26 + 0.1e1;
t34 = 0.1e1 / t40;
t25 = 0.1e1 / t28;
t24 = (0.1e1 + t49) * t46;
t23 = 0.1e1 / t42;
t20 = 0.1e1 / t22;
t19 = 0.1e1 / (t33 * t52 + 0.1e1);
t1 = [-t34 * t31 * t48, 0, t24, 0, 0, 0; (t20 * t44 - (-t30 * t33 * t34 * t46 + (t31 - 0.1e1) * t37 * t29) * t37 * t52) * t19, 0 (t40 * t20 - (t41 * t50 - t30 * t37 + (t30 * t44 - t50) * t24) * t37 * t21) * t38 * t19, 0, 0, 0; ((-t38 * t36 + t40 * t43) * t25 - (-t38 * t39 - t40 * t45) * t51) * t23, 0 (-t25 * t39 - t36 * t51) * t23 * t48, 0, t42 * t23, 0;];
Ja_rot  = t1;
