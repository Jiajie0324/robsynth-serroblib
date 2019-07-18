% Zeitableitung der geometrischen Jacobi-Matrix für Segment Nr. 0 (0=Basis) von
% S5PRRRR3
% Use Code from Maple symbolic Code Generation
%
% geometrische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
%
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% r_i_i_C [3x1]
%   Ortsvektor vom KörperKS-Ursprung zum gesuchten Punkt
% pkin [6x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d3,d4,d5]';
%
% Output:
% JgD [6x5]
%   Zeitableitung der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-06-06 15:46
% Revision: 36f6366a01c4a552c0708fcd8ed3e0fb9da693e2 (2019-05-16)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JgD = S5PRRRR3_jacobigD_0_sym_varpar(qJ, qJD, r_i_i_C, ...
  pkin)


JaD_transl = S5PRRRR3_jacobiaD_transl_0_sym_varpar(qJ, qJD, r_i_i_C, ...
  pkin);
JgD_rot = S5PRRRR3_jacobigD_rot_0_sym_varpar(qJ, qJD, ...
  pkin);

JgD = [JaD_transl; JgD_rot];
