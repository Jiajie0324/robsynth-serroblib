% Rotatorische Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S5RRRRR1
% Use Code from Maple symbolic Code Generation
% 
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% Zeitableitung der Winkeldarstellung des Endeffektors in Basis-Koordinaten
% 
% Winkeldarstellung: Euler-XYZ-Winkel, rotx(alpha)*roty(beta)*rotz(gamma)
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt.
%   Wie in S5RRRRR1_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [6x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d5]';
% 
% Output:
% Ja_rot [3x5]
%   Rotatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-16 14:52
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function Ja_rot = S5RRRRR1_jacobia_rot_floatb_twist_sym_varpar(qJ, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),uint8(0),zeros(6,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRR1_jacobia_rot_floatb_twist_sym_varpar: qJ has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RRRRR1_jacobia_rot_floatb_twist_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S5RRRRR1_jacobia_rot_floatb_twist_sym_varpar: pkin has to be [6x1] (double)');
%% Function calls
if link_index == 0
	Ja_rot=S5RRRRR1_jacobia_rot_0_floatb_twist_sym_varpar(qJ, pkin);
elseif link_index == 1
	Ja_rot=S5RRRRR1_jacobia_rot_1_floatb_twist_sym_varpar(qJ, pkin);
elseif link_index == 2
	Ja_rot=S5RRRRR1_jacobia_rot_2_floatb_twist_sym_varpar(qJ, pkin);
elseif link_index == 3
	Ja_rot=S5RRRRR1_jacobia_rot_3_floatb_twist_sym_varpar(qJ, pkin);
elseif link_index == 4
	Ja_rot=S5RRRRR1_jacobia_rot_4_floatb_twist_sym_varpar(qJ, pkin);
elseif link_index == 5
	Ja_rot=S5RRRRR1_jacobia_rot_5_floatb_twist_sym_varpar(qJ, pkin);
else
	Ja_rot=NaN(3,5);
end