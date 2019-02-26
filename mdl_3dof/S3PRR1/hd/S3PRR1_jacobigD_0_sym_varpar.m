% Zeitableitung der geometrischen Jacobi-Matrix für Segment Nr. 0 (0=Basis) von
% S3PRR1
% Use Code from Maple symbolic Code Generation
%
% geometrische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
%
% Input:
% qJ [3x1]
%   Generalized joint coordinates (joint angles)
% qJD [3x1]
%   Generalized joint velocities
% r_i_i_C [3x1]
%   Ortsvektor vom KörperKS-Ursprung zum gesuchten Punkt
% pkin [4x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,d2,d3]';
%
% Output:
% JgD [6x3]
%   Zeitableitung der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 10:12
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function JgD = S3PRR1_jacobigD_0_floatb_twist_sym_varpar(qJ, qJD, r_i_i_C, ...
  pkin)


JaD_transl = S3PRR1_jacobiaD_transl_0_floatb_twist_sym_varpar(qJ, qJD, r_i_i_C, ...
  pkin);
JgD_rot = S3PRR1_jacobigD_rot_0_floatb_twist_sym_varpar(qJ, qJD, ...
  pkin);

JgD = [JaD_transl; JgD_rot];
