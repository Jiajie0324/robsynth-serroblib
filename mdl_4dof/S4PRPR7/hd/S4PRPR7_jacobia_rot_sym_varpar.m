% Rotatorische Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S4PRPR7
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
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt.
%   Wie in S4PRPR7_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [6x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d2,d4,theta1]';
% 
% Output:
% Ja_rot [3x4]
%   Rotatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 16:26
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_rot = S4PRPR7_jacobia_rot_sym_varpar(qJ, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),uint8(0),zeros(6,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PRPR7_jacobia_rot_sym_varpar: qJ has to be [4x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S4PRPR7_jacobia_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S4PRPR7_jacobia_rot_sym_varpar: pkin has to be [6x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 16:26:01
	% EndTime: 2019-12-31 16:26:01
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0; 0, 0, 0, 0; 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 16:26:01
	% EndTime: 2019-12-31 16:26:01
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0; 0, 0, 0, 0; 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 16:26:01
	% EndTime: 2019-12-31 16:26:01
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN;];
	Ja_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 16:26:01
	% EndTime: 2019-12-31 16:26:01
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (45->12), mult. (82->22), div. (24->8), fcn. (122->7), ass. (0->18)
	t22 = cos(qJ(2));
	t19 = sin(pkin(6));
	t21 = sin(qJ(2));
	t25 = t19 * t21;
	t14 = atan2(-t25, -t22);
	t12 = sin(t14);
	t27 = t12 * t22;
	t17 = t21 ^ 2;
	t24 = t22 ^ 2;
	t26 = t17 / t24;
	t23 = t19 ^ 2;
	t20 = cos(pkin(6));
	t16 = t20 ^ 2;
	t13 = cos(t14);
	t11 = (0.1e1 + t26) * t19 / (t23 * t26 + 0.1e1);
	t10 = -t12 * t25 - t13 * t22;
	t9 = 0.1e1 / t10 ^ 2;
	t1 = [0, t11, 0, 0; 0, (t22 / t10 - (-t19 * t27 + t13 * t21 + (-t13 * t25 + t27) * t11) * t21 * t9) / (t16 * t17 * t9 + 0.1e1) * t20, 0, 0; 0, -t20 * t21 / t19 / (0.1e1 + t16 * t24 / t23), 0, 0;];
	Ja_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 16:26:01
	% EndTime: 2019-12-31 16:26:01
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (51->13), mult. (135->34), div. (32->8), fcn. (192->9), ass. (0->23)
	t29 = sin(qJ(2));
	t26 = sin(pkin(6));
	t31 = cos(qJ(2));
	t34 = t26 * t31;
	t22 = atan2(-t34, t29);
	t20 = sin(t22);
	t36 = t20 * t29;
	t25 = t31 ^ 2;
	t35 = 0.1e1 / t29 ^ 2 * t25;
	t27 = cos(pkin(6));
	t33 = t27 * t29;
	t28 = sin(qJ(4));
	t30 = cos(qJ(4));
	t19 = t26 * t30 + t28 * t33;
	t17 = 0.1e1 / t19 ^ 2;
	t18 = t26 * t28 - t30 * t33;
	t32 = t18 ^ 2 * t17 + 0.1e1;
	t21 = cos(t22);
	t16 = (0.1e1 + t35) * t26 / (t26 ^ 2 * t35 + 0.1e1);
	t15 = 0.1e1 / t32;
	t14 = -t20 * t34 + t21 * t29;
	t13 = 0.1e1 / t14 ^ 2;
	t1 = [0, t16, 0, 0; 0, (-t29 / t14 - (t26 * t36 + t21 * t31 + (-t21 * t34 - t36) * t16) * t31 * t13) * t27 / (t27 ^ 2 * t25 * t13 + 0.1e1), 0, 0; 0, (-t30 / t19 - t28 * t18 * t17) * t31 * t27 * t15, 0, t32 * t15;];
	Ja_rot = t1;
else
	Ja_rot=NaN(3,4);
end