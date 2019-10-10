% Analytische Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S6RPRPRR11
% 
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% (Ist für translatorischen Teil egal, kennzeichnet nur den Rechenweg der Herleitung)
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt (0=Basis).
% r_i_i_C [3x1]
%   Ortsvektor vom KörperKS-Ursprung zum gesuchten Punkt
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d3,d5,d6,theta2,theta4]';
% 
% Output:
% Ja_transl [3x6]
%   Translatorischer Teil der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 01:04
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S6RPRPRR11_jacobia_transl_sym_varpar(qJ, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(3,1),zeros(13,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRR11_jacobia_transl_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RPRPRR11_jacobia_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RPRPRR11_jacobia_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6RPRPRR11_jacobia_transl_sym_varpar: pkin has to be [13x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:04:00
	% EndTime: 2019-10-10 01:04:00
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:04:00
	% EndTime: 2019-10-10 01:04:00
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (2->2), mult. (4->4), div. (0->0), fcn. (4->2), ass. (0->3)
	t2 = cos(qJ(1));
	t1 = sin(qJ(1));
	t3 = [-r_i_i_C(1) * t1 - r_i_i_C(2) * t2, 0, 0, 0, 0, 0; r_i_i_C(1) * t2 - r_i_i_C(2) * t1, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_transl = t3;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_transl_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:04:00
	% EndTime: 2019-10-10 01:04:00
	% DurationCPUTime: 0.10s
	% Computational Cost: add. (13->12), mult. (28->19), div. (0->0), fcn. (35->6), ass. (0->12)
	t1 = sin(pkin(12));
	t5 = sin(qJ(1));
	t11 = t5 * t1;
	t3 = cos(pkin(12));
	t10 = t5 * t3;
	t6 = cos(qJ(1));
	t9 = t6 * t1;
	t8 = t6 * t3;
	t2 = sin(pkin(6));
	t7 = t2 * (r_i_i_C(3) + qJ(2));
	t4 = cos(pkin(6));
	t12 = [(-t4 * t9 - t10) * r_i_i_C(1) + (-t4 * t8 + t11) * r_i_i_C(2) - t5 * pkin(1) + t6 * t7, t5 * t2, 0, 0, 0, 0; (-t11 * t4 + t8) * r_i_i_C(1) + (-t10 * t4 - t9) * r_i_i_C(2) + t6 * pkin(1) + t5 * t7, -t6 * t2, 0, 0, 0, 0; 0, t4, 0, 0, 0, 0;];
	Ja_transl = t12;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:04:00
	% EndTime: 2019-10-10 01:04:00
	% DurationCPUTime: 0.20s
	% Computational Cost: add. (62->32), mult. (166->58), div. (0->0), fcn. (213->10), ass. (0->29)
	t34 = r_i_i_C(3) + pkin(9);
	t13 = cos(pkin(7));
	t15 = sin(qJ(3));
	t17 = cos(qJ(3));
	t10 = sin(pkin(7));
	t11 = sin(pkin(6));
	t18 = cos(qJ(1));
	t26 = t18 * t11;
	t24 = t10 * t26;
	t12 = cos(pkin(12));
	t14 = cos(pkin(6));
	t29 = t14 * t18;
	t16 = sin(qJ(1));
	t9 = sin(pkin(12));
	t32 = t16 * t9;
	t3 = -t12 * t29 + t32;
	t27 = t16 * t12;
	t4 = t9 * t29 + t27;
	t33 = (t13 * t3 + t24) * t17 + t4 * t15;
	t30 = t13 * t15;
	t28 = t16 * t11;
	t25 = t11 * qJ(2);
	t5 = -t14 * t27 - t18 * t9;
	t22 = t10 * t28 + t13 * t5;
	t19 = t15 * t24 - t17 * t4 + t3 * t30;
	t6 = t12 * t18 - t14 * t32;
	t2 = t22 * t15 + t17 * t6;
	t1 = -t15 * t6 + t22 * t17;
	t7 = [t19 * r_i_i_C(1) + t33 * r_i_i_C(2) - t4 * pkin(2) - t16 * pkin(1) + t18 * t25 + t34 * (-t3 * t10 + t13 * t26), t28, r_i_i_C(1) * t1 - r_i_i_C(2) * t2, 0, 0, 0; t18 * pkin(1) + t6 * pkin(2) + t2 * r_i_i_C(1) + t1 * r_i_i_C(2) + t16 * t25 + t34 * (-t10 * t5 + t13 * t28), -t26, -t33 * r_i_i_C(1) + t19 * r_i_i_C(2), 0, 0, 0; 0, t14, (t17 * r_i_i_C(1) - t15 * r_i_i_C(2)) * t14 * t10 + ((t12 * t13 * t17 - t15 * t9) * r_i_i_C(1) + (-t12 * t30 - t17 * t9) * r_i_i_C(2)) * t11, 0, 0, 0;];
	Ja_transl = t7;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:04:00
	% EndTime: 2019-10-10 01:04:00
	% DurationCPUTime: 0.21s
	% Computational Cost: add. (147->43), mult. (401->73), div. (0->0), fcn. (523->12), ass. (0->39)
	t48 = cos(qJ(3));
	t22 = sin(pkin(7));
	t28 = sin(qJ(3));
	t47 = t22 * t28;
	t26 = cos(pkin(7));
	t46 = t26 * t28;
	t21 = sin(pkin(12));
	t29 = sin(qJ(1));
	t45 = t29 * t21;
	t23 = sin(pkin(6));
	t44 = t29 * t23;
	t25 = cos(pkin(12));
	t43 = t29 * t25;
	t30 = cos(qJ(1));
	t42 = t30 * t21;
	t41 = t30 * t23;
	t40 = t30 * t25;
	t39 = r_i_i_C(3) + qJ(4);
	t38 = t23 * qJ(2);
	t37 = t22 * t48;
	t36 = t26 * t48;
	t35 = t23 * t37;
	t20 = sin(pkin(13));
	t24 = cos(pkin(13));
	t34 = -t24 * r_i_i_C(1) + t20 * r_i_i_C(2) - pkin(3);
	t27 = cos(pkin(6));
	t13 = -t27 * t40 + t45;
	t9 = -t13 * t22 + t26 * t41;
	t33 = t27 * t43 + t42;
	t32 = t33 * t26;
	t14 = t27 * t42 + t43;
	t31 = -t13 * t46 + t14 * t48 - t41 * t47;
	t10 = t33 * t22 + t26 * t44;
	t1 = t13 * t36 + t14 * t28 + t30 * t35;
	t15 = -t27 * t45 + t40;
	t7 = -t27 * t37 + (t21 * t28 - t25 * t36) * t23;
	t6 = t15 * t48 + (t22 * t44 - t32) * t28;
	t5 = t15 * t28 - t29 * t35 + t48 * t32;
	t2 = [(t9 * t20 - t24 * t31) * r_i_i_C(1) + (t20 * t31 + t9 * t24) * r_i_i_C(2) - t31 * pkin(3) - t14 * pkin(2) - t29 * pkin(1) + t30 * t38 - t39 * t1 + t9 * pkin(9), t44, t34 * t5 + t39 * t6, t5, 0, 0; (t10 * t20 + t6 * t24) * r_i_i_C(1) + (t10 * t24 - t6 * t20) * r_i_i_C(2) + t6 * pkin(3) + t15 * pkin(2) + t30 * pkin(1) + t29 * t38 + t39 * t5 + t10 * pkin(9), -t41, t34 * t1 + t39 * t31, t1, 0, 0; 0, t27, t39 * (t27 * t47 + (t48 * t21 + t25 * t46) * t23) + t34 * t7, t7, 0, 0;];
	Ja_transl = t2;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:04:00
	% EndTime: 2019-10-10 01:04:00
	% DurationCPUTime: 0.30s
	% Computational Cost: add. (228->52), mult. (532->88), div. (0->0), fcn. (694->14), ass. (0->47)
	t59 = pkin(9) + sin(pkin(13)) * pkin(4);
	t24 = cos(pkin(13)) * pkin(4) + pkin(3);
	t27 = pkin(13) + qJ(5);
	t25 = sin(t27);
	t26 = cos(t27);
	t58 = t26 * r_i_i_C(1) - t25 * r_i_i_C(2) + t24;
	t56 = r_i_i_C(3) + pkin(10) + qJ(4);
	t55 = cos(qJ(3));
	t30 = sin(pkin(7));
	t36 = sin(qJ(3));
	t54 = t30 * t36;
	t31 = sin(pkin(6));
	t32 = cos(pkin(12));
	t53 = t31 * t32;
	t33 = cos(pkin(7));
	t52 = t33 * t36;
	t29 = sin(pkin(12));
	t37 = sin(qJ(1));
	t51 = t37 * t29;
	t50 = t37 * t31;
	t49 = t37 * t32;
	t38 = cos(qJ(1));
	t48 = t38 * t29;
	t47 = t38 * t31;
	t46 = t38 * t32;
	t45 = t31 * qJ(2);
	t44 = t30 * t55;
	t43 = t33 * t55;
	t42 = t31 * t44;
	t34 = cos(pkin(6));
	t17 = -t34 * t46 + t51;
	t11 = -t17 * t30 + t33 * t47;
	t40 = t34 * t49 + t48;
	t39 = t40 * t33;
	t18 = t34 * t48 + t49;
	t4 = -t17 * t52 + t18 * t55 - t47 * t54;
	t13 = t30 * t40 + t33 * t50;
	t3 = t17 * t43 + t18 * t36 + t38 * t42;
	t19 = -t34 * t51 + t46;
	t16 = -t30 * t53 + t34 * t33;
	t10 = t34 * t54 + (t55 * t29 + t32 * t52) * t31;
	t9 = t31 * t29 * t36 - t34 * t44 - t43 * t53;
	t8 = t19 * t55 + (t30 * t50 - t39) * t36;
	t7 = t19 * t36 - t37 * t42 + t55 * t39;
	t2 = t13 * t25 + t8 * t26;
	t1 = t13 * t26 - t8 * t25;
	t5 = [-t37 * pkin(1) - t18 * pkin(2) - t56 * t3 + t38 * t45 - t58 * t4 + (t25 * r_i_i_C(1) + t26 * r_i_i_C(2) + t59) * t11, t50, t56 * t8 - t58 * t7, t7, t1 * r_i_i_C(1) - t2 * r_i_i_C(2), 0; t38 * pkin(1) + t19 * pkin(2) + t2 * r_i_i_C(1) + t1 * r_i_i_C(2) + t59 * t13 + t8 * t24 + t37 * t45 + t56 * t7, -t47, -t3 * t58 + t56 * t4, t3, (-t11 * t26 - t4 * t25) * r_i_i_C(1) + (t11 * t25 - t4 * t26) * r_i_i_C(2), 0; 0, t34, t56 * t10 - t58 * t9, t9, (-t10 * t25 + t16 * t26) * r_i_i_C(1) + (-t10 * t26 - t16 * t25) * r_i_i_C(2), 0;];
	Ja_transl = t5;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobia_transl_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:04:00
	% EndTime: 2019-10-10 01:04:00
	% DurationCPUTime: 0.47s
	% Computational Cost: add. (517->68), mult. (1194->112), div. (0->0), fcn. (1572->16), ass. (0->55)
	t43 = cos(qJ(1));
	t60 = sin(pkin(12));
	t64 = cos(pkin(6));
	t52 = t64 * t60;
	t62 = cos(pkin(12));
	t66 = sin(qJ(1));
	t26 = t43 * t52 + t66 * t62;
	t41 = sin(qJ(3));
	t67 = cos(qJ(3));
	t54 = t64 * t62;
	t25 = -t43 * t54 + t66 * t60;
	t38 = sin(pkin(6));
	t61 = sin(pkin(7));
	t56 = t38 * t61;
	t63 = cos(pkin(7));
	t72 = t25 * t63 + t43 * t56;
	t11 = t26 * t41 + t72 * t67;
	t12 = t26 * t67 - t72 * t41;
	t57 = t38 * t63;
	t21 = t25 * t61 - t43 * t57;
	t36 = pkin(13) + qJ(5);
	t34 = sin(t36);
	t35 = cos(t36);
	t4 = t12 * t35 + t21 * t34;
	t40 = sin(qJ(6));
	t42 = cos(qJ(6));
	t77 = -t11 * t42 + t4 * t40;
	t76 = -t11 * t40 - t4 * t42;
	t75 = pkin(9) + pkin(4) * sin(pkin(13));
	t71 = -t12 * t34 + t21 * t35;
	t46 = t43 * t60 + t66 * t54;
	t70 = t46 * t63 - t66 * t56;
	t69 = r_i_i_C(3) + pkin(11);
	t65 = t43 * t38;
	t59 = t66 * t38;
	t53 = t64 * t61;
	t51 = t63 * t62;
	t50 = t42 * r_i_i_C(1) - t40 * r_i_i_C(2) + pkin(5);
	t39 = -pkin(10) - qJ(4);
	t49 = t40 * r_i_i_C(1) + t42 * r_i_i_C(2) - t39;
	t33 = cos(pkin(13)) * pkin(4) + pkin(3);
	t47 = -t69 * t34 - t50 * t35 - t33;
	t44 = t46 * t61 + t66 * t57;
	t27 = t43 * t62 - t66 * t52;
	t24 = -t62 * t56 + t64 * t63;
	t19 = t41 * t53 + (t41 * t51 + t67 * t60) * t38;
	t18 = -t67 * t53 + (t41 * t60 - t51 * t67) * t38;
	t16 = t27 * t67 - t70 * t41;
	t15 = t27 * t41 + t70 * t67;
	t10 = t19 * t35 + t24 * t34;
	t8 = t16 * t35 + t44 * t34;
	t7 = t16 * t34 - t44 * t35;
	t2 = t15 * t40 + t8 * t42;
	t1 = t15 * t42 - t8 * t40;
	t3 = [-t66 * pkin(1) - t26 * pkin(2) - t4 * pkin(5) + t76 * r_i_i_C(1) + t77 * r_i_i_C(2) + qJ(2) * t65 + t11 * t39 - t12 * t33 - t75 * t21 + t69 * t71, t59, t47 * t15 + t49 * t16, t15, -t50 * t7 + t69 * t8, t1 * r_i_i_C(1) - t2 * r_i_i_C(2); t43 * pkin(1) + t27 * pkin(2) + t8 * pkin(5) + t2 * r_i_i_C(1) + t1 * r_i_i_C(2) + qJ(2) * t59 - t15 * t39 + t16 * t33 + t75 * t44 + t69 * t7, -t65, t47 * t11 + t49 * t12, t11, t69 * t4 + t50 * t71, -t77 * r_i_i_C(1) + t76 * r_i_i_C(2); 0, t64, t47 * t18 + t49 * t19, t18, t69 * t10 + t50 * (-t19 * t34 + t24 * t35), (-t10 * t40 + t18 * t42) * r_i_i_C(1) + (-t10 * t42 - t18 * t40) * r_i_i_C(2);];
	Ja_transl = t3;
else
	Ja_transl=NaN(3,6);
end