% Zeitableitung der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S5PRPPR4
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
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d5,theta1,theta3]';
% 
% Output:
% JRD_rot [9x5]
%   Zeitableitung der Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-29 15:28
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JRD_rot = S5PRPPR4_jacobiRD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),uint8(0),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRPPR4_jacobiRD_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRPPR4_jacobiRD_rot_sym_varpar: qJD has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5PRPPR4_jacobiRD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRPPR4_jacobiRD_rot_sym_varpar: pkin has to be [8x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiRD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 15:28:42
	% EndTime: 2019-12-29 15:28:42
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiRD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 15:28:48
	% EndTime: 2019-12-29 15:28:48
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiRD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 15:28:43
	% EndTime: 2019-12-29 15:28:43
	% DurationCPUTime: 0.09s
	% Computational Cost: add. (7->4), mult. (4->2), div. (0->0), fcn. (4->2), ass. (0->4)
	t35 = pkin(7) + qJ(2);
	t37 = qJD(2) * sin(t35);
	t36 = qJD(2) * cos(t35);
	t1 = [0, -t36, 0, 0, 0; 0, -t37, 0, 0, 0; 0, 0, 0, 0, 0; 0, t37, 0, 0, 0; 0, -t36, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiRD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 15:28:43
	% EndTime: 2019-12-29 15:28:43
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (9->4), mult. (10->8), div. (0->0), fcn. (10->4), ass. (0->6)
	t26 = qJD(2) * sin(pkin(8));
	t25 = qJD(2) * cos(pkin(8));
	t22 = pkin(7) + qJ(2);
	t21 = cos(t22);
	t20 = sin(t22);
	t1 = [0, -t21 * t25, 0, 0, 0; 0, -t20 * t25, 0, 0, 0; 0, 0, 0, 0, 0; 0, t21 * t26, 0, 0, 0; 0, t20 * t26, 0, 0, 0; 0, 0, 0, 0, 0; 0, -qJD(2) * t20, 0, 0, 0; 0, qJD(2) * t21, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiRD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 15:28:43
	% EndTime: 2019-12-29 15:28:43
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (11->6), mult. (10->8), div. (0->0), fcn. (10->4), ass. (0->6)
	t109 = qJD(2) * sin(pkin(8));
	t108 = qJD(2) * cos(pkin(8));
	t105 = pkin(7) + qJ(2);
	t104 = cos(t105);
	t103 = sin(t105);
	t1 = [0, -t104 * t108, 0, 0, 0; 0, -t103 * t108, 0, 0, 0; 0, 0, 0, 0, 0; 0, -qJD(2) * t103, 0, 0, 0; 0, qJD(2) * t104, 0, 0, 0; 0, 0, 0, 0, 0; 0, -t104 * t109, 0, 0, 0; 0, -t103 * t109, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiRD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 15:28:43
	% EndTime: 2019-12-29 15:28:43
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (61->10), mult. (106->18), div. (0->0), fcn. (106->6), ass. (0->19)
	t60 = pkin(7) + qJ(2);
	t58 = sin(t60);
	t71 = qJD(2) * t58;
	t61 = sin(pkin(8));
	t62 = cos(pkin(8));
	t63 = sin(qJ(5));
	t64 = cos(qJ(5));
	t70 = -t61 * t64 + t62 * t63;
	t69 = t61 * t63 + t62 * t64;
	t59 = cos(t60);
	t68 = t69 * t59;
	t67 = qJD(2) * t70;
	t66 = t70 * qJD(5);
	t65 = t69 * qJD(5);
	t57 = -qJD(2) * t68 + t58 * t66;
	t56 = t58 * t65 + t59 * t67;
	t55 = t59 * t66 + t69 * t71;
	t54 = -qJD(5) * t68 + t58 * t67;
	t1 = [0, t57, 0, 0, t54; 0, -t55, 0, 0, -t56; 0, 0, 0, 0, t66; 0, t56, 0, 0, t55; 0, t54, 0, 0, t57; 0, 0, 0, 0, t65; 0, t71, 0, 0, 0; 0, -qJD(2) * t59, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
else
	JRD_rot=NaN(9,5);
end