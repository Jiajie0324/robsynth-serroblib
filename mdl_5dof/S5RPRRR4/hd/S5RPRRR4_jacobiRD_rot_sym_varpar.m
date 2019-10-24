% Zeitableitung der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S5RPRRR4
% Use Code from Maple symbolic Code Generation
% 
% Rotationsmatrix-Jacobi-Matrix: Differentieller Zusammenhang zwischen
% gestapelter Endeffektor-Rotationsmatrix und verallgemeinerten Koordinaten.
% Zeitableitung: Die Gradientenmatrix wird nochmal nach der Zeit abgeleitet.
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt. (0=Basis).
%   Siehe auch: bsp_3T1R_fkine_fixb_rotmat_mdh_sym_varpar.m
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d4,d5,theta2]';
% 
% Output:
% JRD_rot [9x5]
%   Zeitableitung der Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-24 10:45
% Revision: 5d02717ba55fba3c5445be8d9f6bf09c2cd6665f (2019-10-14)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JRD_rot = S5RPRRR4_jacobiRD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),uint8(0),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRR4_jacobiRD_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRR4_jacobiRD_rot_sym_varpar: qJD has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RPRRR4_jacobiRD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RPRRR4_jacobiRD_rot_sym_varpar: pkin has to be [9x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiRD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:45:32
	% EndTime: 2019-10-24 10:45:32
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiRD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:45:32
	% EndTime: 2019-10-24 10:45:32
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (1->1), mult. (4->2), div. (0->0), fcn. (4->2), ass. (0->3)
	t9 = qJD(1) * cos(qJ(1));
	t7 = qJD(1) * sin(qJ(1));
	t1 = [0, 0, 0, 0, 0; t7, 0, 0, 0, 0; -t9, 0, 0, 0, 0; 0, 0, 0, 0, 0; t9, 0, 0, 0, 0; t7, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiRD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:45:32
	% EndTime: 2019-10-24 10:45:32
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (5->2), mult. (4->2), div. (0->0), fcn. (4->2), ass. (0->4)
	t12 = qJ(1) + pkin(9);
	t13 = qJD(1) * cos(t12);
	t10 = qJD(1) * sin(t12);
	t1 = [0, 0, 0, 0, 0; t10, 0, 0, 0, 0; -t13, 0, 0, 0, 0; 0, 0, 0, 0, 0; t13, 0, 0, 0, 0; t10, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiRD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:45:32
	% EndTime: 2019-10-24 10:45:32
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (26->4), mult. (8->2), div. (0->0), fcn. (8->2), ass. (0->5)
	t27 = qJD(1) + qJD(3);
	t26 = qJ(1) + pkin(9) + qJ(3);
	t24 = t27 * cos(t26);
	t23 = t27 * sin(t26);
	t1 = [0, 0, 0, 0, 0; t23, 0, t23, 0, 0; -t24, 0, -t24, 0, 0; 0, 0, 0, 0, 0; t24, 0, t24, 0, 0; t23, 0, t23, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiRD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:45:32
	% EndTime: 2019-10-24 10:45:32
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (63->5), mult. (12->2), div. (0->0), fcn. (12->2), ass. (0->5)
	t39 = qJD(1) + qJD(3) + qJD(4);
	t38 = qJ(1) + pkin(9) + qJ(3) + qJ(4);
	t36 = t39 * cos(t38);
	t35 = t39 * sin(t38);
	t1 = [0, 0, 0, 0, 0; t35, 0, t35, t35, 0; -t36, 0, -t36, -t36, 0; 0, 0, 0, 0, 0; t36, 0, t36, t36, 0; t35, 0, t35, t35, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiRD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:45:32
	% EndTime: 2019-10-24 10:45:32
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (182->20), mult. (72->14), div. (0->0), fcn. (72->4), ass. (0->17)
	t128 = qJ(1) + pkin(9) + qJ(3) + qJ(4);
	t126 = sin(t128);
	t129 = qJD(1) + qJD(3) + qJD(4);
	t137 = t129 * t126;
	t127 = cos(t128);
	t136 = t129 * t127;
	t130 = sin(qJ(5));
	t135 = t129 * t130;
	t131 = cos(qJ(5));
	t134 = t129 * t131;
	t133 = qJD(5) * t130;
	t132 = qJD(5) * t131;
	t123 = -t126 * t133 + t127 * t134;
	t122 = t126 * t132 + t127 * t135;
	t121 = t126 * t134 + t127 * t133;
	t120 = t126 * t135 - t127 * t132;
	t1 = [0, 0, 0, 0, -t133; t121, 0, t121, t121, t122; -t123, 0, -t123, -t123, t120; 0, 0, 0, 0, -t132; -t120, 0, -t120, -t120, t123; t122, 0, t122, t122, t121; 0, 0, 0, 0, 0; -t136, 0, -t136, -t136, 0; -t137, 0, -t137, -t137, 0;];
	JRD_rot = t1;
else
	JRD_rot=NaN(9,5);
end