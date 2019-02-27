% Translatorische Teilmatrix der analytischen Jacobi-Matrix für Segment Nr. 4 (0=Basis) von
% S4PPRP2
% Use Code from Maple symbolic Code Generation
%
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
%
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% r_i_i_C [3x1]
%   Ortsvektor vom KörperKS-Ursprung zum gesuchten Punkt
% pkin [5x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d3,theta2]';
%
% Output:
% Ja_transl [3x4]
%   Translatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-02-26 19:20
% Revision: d75aae1ac561373cd3be920984c3df29a1c2ecc8 (2019-02-26)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S4PPRP2_jacobia_transl_4_sym_varpar(qJ, r_i_i_C, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(3,1),zeros(5,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PPRP2_jacobia_transl_4_sym_varpar: qJ has to be [4x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S4PPRP2_jacobia_transl_4_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isreal(pkin) && all(size(pkin) == [5 1]), ...
  'S4PPRP2_jacobia_transl_4_sym_varpar: pkin has to be [5x1] (double)');

%% Symbolic Calculation
% From jacobia_transl_4_floatb_twist_matlab.m
% OptimizationMode: 2
% StartTime: 2019-02-26 19:20:13
% EndTime: 2019-02-26 19:20:13
% DurationCPUTime: 0.05s
% Computational Cost: add. (17->6), mult. (8->4), div. (0->0), fcn. (10->2), ass. (0->6)
t5 = pkin(3) + r_i_i_C(1);
t4 = r_i_i_C(3) + qJ(4);
t3 = pkin(5) + qJ(3);
t2 = cos(t3);
t1 = sin(t3);
t6 = [0, 0, -t1 * t5 + t2 * t4, t1; 1, 0, t1 * t4 + t2 * t5, -t2; 0, 1, 0, 0;];
Ja_transl  = t6;
