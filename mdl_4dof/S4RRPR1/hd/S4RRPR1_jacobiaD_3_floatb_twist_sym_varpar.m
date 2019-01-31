% Zeitableitung der analytischen Jacobi-Matrix für Segment Nr. 3 (0=Basis) von
% S4RRPR1
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
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d2,d4,theta3]';
%
% Output:
% JaD [6x4]
%   Zeitableitung der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-01-31 13:16
% Revision: 9ef80adae39e3cd5824e7abdb6e4e1e7895c437e (2019-01-31)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD = S4RRPR1_jacobiaD_3_floatb_twist_sym_varpar(qJ, qJD, r_i_i_C, ...
  pkin)

JaD_transl = S4RRPR1_jacobiaD_transl_3_floatb_twist_sym_varpar(qJ, qJD, r_i_i_C, ...
  pkin);
JaD_rot = S4RRPR1_jacobiaD_rot_3_floatb_twist_sym_varpar(qJ, qJD, ...
  pkin);

JaD = [JaD_transl; JaD_rot];
