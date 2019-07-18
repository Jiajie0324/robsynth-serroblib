% Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S5RPRRR1
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
% qJD [5x1]
%   Generalized joint velocities
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt.
%   Wie in S5RPRRR1_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [1x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[dummy]';
% 
% Output:
% JaD_rot [3x5]
%   Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-06-12 14:37
% Revision: aab8d7cd0cba739f5e0ec8d53b8419901d1154b0 (2019-06-12)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_rot = S5RPRRR1_jacobiaD_rot_sym_varpar(qJ, qJD, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),uint8(0),zeros(1,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRR1_jacobiaD_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRR1_jacobiaD_rot_sym_varpar: qJD has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RPRRR1_jacobiaD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [1 1]), ...
  'S5RPRRR1_jacobiaD_rot_sym_varpar: pkin has to be [1x1] (double)');
%% Function calls
if link_index == 0
	JaD_rot=S5RPRRR1_jacobiaD_rot_0_sym_varpar(qJ, qJD, pkin);
elseif link_index == 1
	JaD_rot=S5RPRRR1_jacobiaD_rot_1_sym_varpar(qJ, qJD, pkin);
elseif link_index == 2
	JaD_rot=S5RPRRR1_jacobiaD_rot_2_sym_varpar(qJ, qJD, pkin);
elseif link_index == 3
	JaD_rot=S5RPRRR1_jacobiaD_rot_3_sym_varpar(qJ, qJD, pkin);
elseif link_index == 4
	JaD_rot=S5RPRRR1_jacobiaD_rot_4_sym_varpar(qJ, qJD, pkin);
elseif link_index == 5
	JaD_rot=S5RPRRR1_jacobiaD_rot_5_sym_varpar(qJ, qJD, pkin);
else
	JaD_rot=NaN(3,5);
end