% Zeitableitung der analytischen Jacobi-Matrix für Segment Nr. 1 (0=Basis) von
% S4PRPP2
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
% pkin [5x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d2,theta3]';
%
% Output:
% JaD [6x4]
%   Zeitableitung der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 14:00
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function JaD = S4PRPP2_jacobiaD_1_floatb_twist_sym_varpar(qJ, qJD, r_i_i_C, ...
  pkin)

JaD_transl = S4PRPP2_jacobiaD_transl_1_floatb_twist_sym_varpar(qJ, qJD, r_i_i_C, ...
  pkin);
JaD_rot = S4PRPP2_jacobiaD_rot_1_floatb_twist_sym_varpar(qJ, qJD, ...
  pkin);

JaD = [JaD_transl; JaD_rot];
