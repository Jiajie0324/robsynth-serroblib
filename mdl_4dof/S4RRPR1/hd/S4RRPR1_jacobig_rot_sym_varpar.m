% Rotatorische Teilmatrix der geometrischen Jacobi-Matrix für beliebiges Segment von
% S4RRPR1
% Use Code from Maple symbolic Code Generation
% 
% geometrische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% 
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt. (0=Basis).
%   Siehe auch: bsp_3T1R_fkine_fixb_rotmat_mdh_sym_varpar.m
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d2,d4,theta3]';
% 
% Output:
% Jg_rot [3x4]
%   Rotatorische Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-01-31 13:16
% Revision: 9ef80adae39e3cd5824e7abdb6e4e1e7895c437e (2019-01-31)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Jg_rot = S4RRPR1_jacobig_rot_floatb_twist_sym_varpar(qJ, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),uint8(0),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RRPR1_jacobig_rot_floatb_twist_sym_varpar: qJ has to be [4x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S4RRPR1_jacobig_rot_floatb_twist_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4RRPR1_jacobig_rot_floatb_twist_sym_varpar: pkin has to be [7x1] (double)');
%% Function calls
if link_index == 0
	Jg_rot=S4RRPR1_jacobig_rot_0_floatb_twist_sym_varpar(qJ, pkin);
elseif link_index == 1
	Jg_rot=S4RRPR1_jacobig_rot_1_floatb_twist_sym_varpar(qJ, pkin);
elseif link_index == 2
	Jg_rot=S4RRPR1_jacobig_rot_2_floatb_twist_sym_varpar(qJ, pkin);
elseif link_index == 3
	Jg_rot=S4RRPR1_jacobig_rot_3_floatb_twist_sym_varpar(qJ, pkin);
elseif link_index == 4
	Jg_rot=S4RRPR1_jacobig_rot_4_floatb_twist_sym_varpar(qJ, pkin);
else
	Jg_rot=NaN(3,4);
end