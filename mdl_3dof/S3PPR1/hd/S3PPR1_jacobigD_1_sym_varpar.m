% Zeitableitung der geometrischen Jacobi-Matrix für Segment Nr. 1 (0=Basis) von
% S3PPR1
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
% pkin [3x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,d3]';
%
% Output:
% JgD [6x3]
%   Zeitableitung der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 19:12
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JgD = S3PPR1_jacobigD_1_sym_varpar(qJ, qJD, r_i_i_C, ...
  pkin)


JaD_transl = S3PPR1_jacobiaD_transl_1_sym_varpar(qJ, qJD, r_i_i_C, ...
  pkin);
JgD_rot = S3PPR1_jacobigD_rot_1_sym_varpar(qJ, qJD, ...
  pkin);

JgD = [JaD_transl; JgD_rot];
