% Zeitableitung der geometrischen Jacobi-Matrix für Segment Nr. 2 (0=Basis) von
% S4RRPR1
% Use Code from Maple symbolic Code Generation
%
% geometrische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
%
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% r_i_i_C [3x1]
%   Ortsvektor vom KörperKS-Ursprung zum gesuchten Punkt
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d2,d4,theta3]';
%
% Output:
% JgD [6x4]
%   Zeitableitung der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 13:53
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function JgD = S4RRPR1_jacobigD_2_floatb_twist_sym_varpar(qJ, qJD, r_i_i_C, ...
  pkin)


JaD_transl = S4RRPR1_jacobiaD_transl_2_floatb_twist_sym_varpar(qJ, qJD, r_i_i_C, ...
  pkin);
JgD_rot = S4RRPR1_jacobigD_rot_2_floatb_twist_sym_varpar(qJ, qJD, ...
  pkin);

JgD = [JaD_transl; JgD_rot];
