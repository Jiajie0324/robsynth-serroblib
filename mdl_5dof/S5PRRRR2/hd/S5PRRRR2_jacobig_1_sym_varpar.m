% Geometrische Jacobi-Matrix für Segment Nr. 1 (0=Basis) von
% S5PRRRR2
% Use Code from Maple symbolic Code Generation
%
% Geometrische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorgeschwindigkeit und Geschw. der verallgemeinerten Koordinaten.
%
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% r_i_i_C [3x1]
%   Ortsvektor vom KörperKS-Ursprung zum gesuchten Punkt
% pkin [1x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a4]';
%
% Output:
% Jg [3x5]
%   Geometrische Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-06-03 15:11
% Revision: 36f6366a01c4a552c0708fcd8ed3e0fb9da693e2 (2019-05-16)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Jg = S5PRRRR2_jacobig_1_sym_varpar(qJ, r_i_i_C, ...
  pkin)


Ja_transl = S5PRRRR2_jacobia_transl_1_sym_varpar(qJ, r_i_i_C, ...
  pkin);
Jg_rot = S5PRRRR2_jacobig_rot_1_sym_varpar(qJ, ...
  pkin);

Jg = [Ja_transl; Jg_rot];
