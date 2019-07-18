% Geometrische Jacobi-Matrix für Segment Nr. 1 (0=Basis) von
% S5RPRRR1
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
%   pkin=[dummy]';
%
% Output:
% Jg [3x5]
%   Geometrische Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-06-12 14:37
% Revision: aab8d7cd0cba739f5e0ec8d53b8419901d1154b0 (2019-06-12)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Jg = S5RPRRR1_jacobig_1_sym_varpar(qJ, r_i_i_C, ...
  pkin)


Ja_transl = S5RPRRR1_jacobia_transl_1_sym_varpar(qJ, r_i_i_C, ...
  pkin);
Jg_rot = S5RPRRR1_jacobig_rot_1_sym_varpar(qJ, ...
  pkin);

Jg = [Ja_transl; Jg_rot];
