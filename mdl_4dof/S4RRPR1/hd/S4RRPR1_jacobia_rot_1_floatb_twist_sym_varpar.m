% Rotatorische Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 1 (0=Basis) von
% S4RRPR1
% Use Code from Maple symbolic Code Generation
%
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% Zeitableitung der Winkeldarstellung des Endeffektors in Basis-Koordinaten
%
% Winkeldarstellung: Euler-XYZ-Winkel, rotx(alpha)*roty(beta)*rotz(gamma)
%
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d2,d4,theta3]';
%
% Output:
% Ja_rot [3x4]
%   Rotatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-01-31 13:16
% Revision: 9ef80adae39e3cd5824e7abdb6e4e1e7895c437e (2019-01-31)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_rot = S4RRPR1_jacobia_rot_1_floatb_twist_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RRPR1_jacobia_rot_1_floatb_twist_sym_varpar: qJ has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4RRPR1_jacobia_rot_1_floatb_twist_sym_varpar: pkin has to be [7x1] (double)');

%% Symbolic Calculation
% From jacobia_rot_1_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-01-31 13:16:57
% EndTime: 2019-01-31 13:16:57
% DurationCPUTime: 0.01s
% Computational Cost: add. (3->0), mult. (6->0), div. (5->0), fcn. (6->0), ass. (0->1)
t1 = [0, 0, 0, 0; 0, 0, 0, 0; 1, 0, 0, 0;];
Ja_rot  = t1;
