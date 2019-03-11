% Zeitableitung der analytischen Jacobi-Matrix für Segment Nr. 3 (0=Basis) von
% S4PRPP3
% Use Code from Maple symbolic Code Generation
%
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% Zeitableitung der Winkeldarstellung des Endeffektors in Basis-Koordinaten
%
% Winkeldarstellung: Euler-XYZ-Winkel, rotx(alpha)*roty(beta)*rotz(gamma)
%
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% r_i_i_C [3x1]
%   Ortsvektor vom KörperKS-Ursprung zum gesuchten Punkt
% pkin [4x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d2]';
%
% Output:
% JaD [6x4]
%   Zeitableitung der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 19:25
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD = S4PRPP3_jacobiaD_3_sym_varpar(qJ, qJD, r_i_i_C, ...
  pkin)

JaD_transl = S4PRPP3_jacobiaD_transl_3_sym_varpar(qJ, qJD, r_i_i_C, ...
  pkin);
JaD_rot = S4PRPP3_jacobiaD_rot_3_sym_varpar(qJ, qJD, ...
  pkin);

JaD = [JaD_transl; JaD_rot];