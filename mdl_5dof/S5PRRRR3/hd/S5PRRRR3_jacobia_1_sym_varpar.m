% Analytische Jacobi-Matrix für Segment Nr. 1 (0=Basis) von
% S5PRRRR3
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
% r_i_i_C [3x1]
%   Ortsvektor vom KörperKS-Ursprung zum gesuchten Punkt
% pkin [6x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d3,d4,d5]';
%
% Output:
% Ja [6x5]
%   Analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-06-06 15:46
% Revision: 36f6366a01c4a552c0708fcd8ed3e0fb9da693e2 (2019-05-16)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja = S5PRRRR3_jacobia_1_sym_varpar(qJ, r_i_i_C, ...
  pkin)

Ja_transl = S5PRRRR3_jacobia_transl_1_sym_varpar(qJ, r_i_i_C, ...
  pkin);
Ja_rot = S5PRRRR3_jacobia_rot_1_sym_varpar(qJ, ...
  pkin);

Ja = [Ja_transl; Ja_rot];
