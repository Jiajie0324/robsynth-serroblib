% Zeitableitung der geometrischen Jacobi-Matrix für beliebiges Segment von
% S6PRRRPR4
% Use Code from Maple symbolic Code Generation
% 
% geometrische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt. (0=Basis).
%   Siehe auch: bsp_3T1R_fkine_fixb_rotmat_mdh_sym_varpar.m
% r_i_i_C [3x1]
%   Ortsvektor vom KörperKS-Ursprung zum gesuchten Punkt
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d4,d6,theta1,theta5]';
% 
% Output:
% Jg [6x6]
%   Zeitableitung der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-23 15:24
% Revision: 76f9d5e39f14dc242b53c0d9d3d9db48bd8f37c0
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function JgD = S6PRRRPR4_jacobigD_floatb_twist_sym_varpar(qJ, qJD, link_index, r_i_i_C, pkin)



%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(3,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRPR4_jacobigD_floatb_twist_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRRPR4_jacobigD_floatb_twist_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6PRRRPR4_jacobigD_floatb_twist_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6PRRRPR4_jacobigD_floatb_twist_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRRRPR4_jacobigD_floatb_twist_sym_varpar: pkin has to be [12x1] (double)');
%% Function calls
if link_index == 0
	JgD=S6PRRRPR4_jacobigD_0_floatb_twist_sym_varpar(qJ, qJD, r_i_i_C, pkin);
elseif link_index == 1
	JgD=S6PRRRPR4_jacobigD_1_floatb_twist_sym_varpar(qJ, qJD, r_i_i_C, pkin);
elseif link_index == 2
	JgD=S6PRRRPR4_jacobigD_2_floatb_twist_sym_varpar(qJ, qJD, r_i_i_C, pkin);
elseif link_index == 3
	JgD=S6PRRRPR4_jacobigD_3_floatb_twist_sym_varpar(qJ, qJD, r_i_i_C, pkin);
elseif link_index == 4
	JgD=S6PRRRPR4_jacobigD_4_floatb_twist_sym_varpar(qJ, qJD, r_i_i_C, pkin);
elseif link_index == 5
	JgD=S6PRRRPR4_jacobigD_5_floatb_twist_sym_varpar(qJ, qJD, r_i_i_C, pkin);
elseif link_index == 6
	JgD=S6PRRRPR4_jacobigD_6_floatb_twist_sym_varpar(qJ, qJD, r_i_i_C, pkin);
else
	JgD=NaN(6,6);
end