% Analytische Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S6PRRRRR5
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d2,d3,d4,d5,d6,theta1]';
% 
% Output:
% Ja_transl [3x6]
%   Translatorischer Teil der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-09 23:21
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_transl = S6PRRRRR5_jacobia_transl_sym_varpar(qJ, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(3,1),zeros(13,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRRR5_jacobia_transl_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6PRRRRR5_jacobia_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6PRRRRR5_jacobia_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6PRRRRR5_jacobia_transl_sym_varpar: pkin has to be [13x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:21:28
	% EndTime: 2019-10-09 23:21:28
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:21:28
	% EndTime: 2019-10-09 23:21:28
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 1, 0, 0, 0, 0, 0;];
	Ja_transl = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_transl_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:21:28
	% EndTime: 2019-10-09 23:21:28
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (7->7), mult. (20->17), div. (0->0), fcn. (24->6), ass. (0->8)
	t4 = cos(pkin(6));
	t5 = sin(qJ(2));
	t8 = t4 * t5;
	t6 = cos(qJ(2));
	t7 = t4 * t6;
	t3 = cos(pkin(13));
	t1 = sin(pkin(13));
	t2 = [0, (-t1 * t7 - t3 * t5) * r_i_i_C(1) + (t1 * t8 - t3 * t6) * r_i_i_C(2), 0, 0, 0, 0; 0, (-t1 * t5 + t3 * t7) * r_i_i_C(1) + (-t1 * t6 - t3 * t8) * r_i_i_C(2), 0, 0, 0, 0; 1, (r_i_i_C(1) * t6 - r_i_i_C(2) * t5) * sin(pkin(6)), 0, 0, 0, 0;];
	Ja_transl = t2;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:21:28
	% EndTime: 2019-10-09 23:21:28
	% DurationCPUTime: 0.16s
	% Computational Cost: add. (55->24), mult. (156->50), div. (0->0), fcn. (196->10), ass. (0->24)
	t7 = sin(pkin(7));
	t8 = sin(pkin(6));
	t24 = t7 * t8;
	t10 = cos(pkin(7));
	t15 = cos(qJ(2));
	t23 = t10 * t15;
	t11 = cos(pkin(6));
	t13 = sin(qJ(2));
	t22 = t11 * t13;
	t21 = t11 * t15;
	t12 = sin(qJ(3));
	t14 = cos(qJ(3));
	t20 = r_i_i_C(1) * t14 - r_i_i_C(2) * t12;
	t6 = sin(pkin(13));
	t9 = cos(pkin(13));
	t1 = -t6 * t13 + t9 * t21;
	t19 = -t1 * t10 + t9 * t24;
	t3 = -t9 * t13 - t6 * t21;
	t18 = t10 * t3 + t6 * t24;
	t17 = pkin(2) + t20;
	t16 = (pkin(9) + r_i_i_C(3)) * t7 + (-t12 * r_i_i_C(1) - t14 * r_i_i_C(2)) * t10;
	t4 = t15 * t9 - t6 * t22;
	t2 = t15 * t6 + t9 * t22;
	t5 = [0, t16 * t4 + t17 * t3, (-t12 * t4 + t18 * t14) * r_i_i_C(1) + (-t18 * t12 - t14 * t4) * r_i_i_C(2), 0, 0, 0; 0, t17 * t1 + t16 * t2, (-t12 * t2 - t19 * t14) * r_i_i_C(1) + (t19 * t12 - t14 * t2) * r_i_i_C(2), 0, 0, 0; 1, (t16 * t13 + t17 * t15) * t8, t20 * t7 * t11 + ((-t12 * t13 + t14 * t23) * r_i_i_C(1) + (-t12 * t23 - t13 * t14) * r_i_i_C(2)) * t8, 0, 0, 0;];
	Ja_transl = t5;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:21:28
	% EndTime: 2019-10-09 23:21:28
	% DurationCPUTime: 0.24s
	% Computational Cost: add. (168->57), mult. (471->110), div. (0->0), fcn. (606->12), ass. (0->43)
	t50 = r_i_i_C(3) + pkin(10);
	t22 = sin(pkin(7));
	t49 = t22 * pkin(9);
	t23 = sin(pkin(6));
	t48 = t22 * t23;
	t26 = cos(pkin(6));
	t47 = t22 * t26;
	t27 = sin(qJ(4));
	t46 = t22 * t27;
	t30 = cos(qJ(4));
	t45 = t22 * t30;
	t25 = cos(pkin(7));
	t44 = t23 * t25;
	t28 = sin(qJ(3));
	t43 = t25 * t28;
	t31 = cos(qJ(3));
	t42 = t25 * t31;
	t29 = sin(qJ(2));
	t41 = t26 * t29;
	t32 = cos(qJ(2));
	t40 = t26 * t32;
	t39 = t28 * t29;
	t38 = t28 * t32;
	t37 = t29 * t31;
	t36 = t31 * t32;
	t35 = t30 * r_i_i_C(1) - t27 * r_i_i_C(2) + pkin(3);
	t21 = sin(pkin(13));
	t24 = cos(pkin(13));
	t16 = -t21 * t29 + t24 * t40;
	t34 = t16 * t25 - t24 * t48;
	t18 = -t21 * t40 - t24 * t29;
	t33 = t18 * t25 + t21 * t48;
	t19 = -t21 * t41 + t24 * t32;
	t17 = t21 * t32 + t24 * t41;
	t15 = t26 * t25 - t32 * t48;
	t12 = -t18 * t22 + t21 * t44;
	t11 = -t16 * t22 - t24 * t44;
	t10 = t28 * t47 + (t25 * t38 + t37) * t23;
	t8 = t18 * t31 - t19 * t43;
	t6 = t16 * t31 - t17 * t43;
	t4 = t19 * t31 + t33 * t28;
	t2 = t17 * t31 + t34 * t28;
	t1 = [0, (t19 * t46 + t8 * t30) * r_i_i_C(1) + (t19 * t45 - t8 * t27) * r_i_i_C(2) + t8 * pkin(3) + t18 * pkin(2) + t19 * t49 + t50 * (t18 * t28 + t19 * t42), t50 * t4 + t35 * (-t19 * t28 + t33 * t31), (t12 * t30 - t4 * t27) * r_i_i_C(1) + (-t12 * t27 - t4 * t30) * r_i_i_C(2), 0, 0; 0, (t17 * t46 + t6 * t30) * r_i_i_C(1) + (t17 * t45 - t6 * t27) * r_i_i_C(2) + t6 * pkin(3) + t16 * pkin(2) + t17 * t49 + t50 * (t16 * t28 + t17 * t42), t50 * t2 + t35 * (-t17 * t28 + t34 * t31), (t11 * t30 - t2 * t27) * r_i_i_C(1) + (-t11 * t27 - t2 * t30) * r_i_i_C(2), 0, 0; 1, (t35 * (-t25 * t39 + t36) + t32 * pkin(2) + (t27 * r_i_i_C(1) + t30 * r_i_i_C(2) + pkin(9)) * t29 * t22 + t50 * (t25 * t37 + t38)) * t23, t50 * t10 + t35 * (t31 * t47 + (t25 * t36 - t39) * t23), (-t10 * t27 + t15 * t30) * r_i_i_C(1) + (-t10 * t30 - t15 * t27) * r_i_i_C(2), 0, 0;];
	Ja_transl = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:21:28
	% EndTime: 2019-10-09 23:21:29
	% DurationCPUTime: 0.43s
	% Computational Cost: add. (403->84), mult. (1135->157), div. (0->0), fcn. (1481->14), ass. (0->59)
	t36 = sin(pkin(7));
	t42 = sin(qJ(2));
	t45 = cos(qJ(2));
	t38 = cos(pkin(13));
	t64 = cos(pkin(6));
	t58 = t38 * t64;
	t62 = sin(pkin(13));
	t49 = t62 * t42 - t45 * t58;
	t63 = cos(pkin(7));
	t37 = sin(pkin(6));
	t67 = t37 * t38;
	t74 = t36 * t67 + t49 * t63;
	t53 = t64 * t62;
	t50 = t38 * t42 + t45 * t53;
	t59 = t37 * t62;
	t73 = -t36 * t59 + t50 * t63;
	t72 = r_i_i_C(3) + pkin(11);
	t71 = pkin(9) * t36;
	t70 = cos(qJ(3));
	t40 = sin(qJ(4));
	t69 = t36 * t40;
	t44 = cos(qJ(4));
	t68 = t36 * t44;
	t66 = t37 * t42;
	t65 = t37 * t45;
	t61 = t36 * t66;
	t41 = sin(qJ(3));
	t57 = t41 * t63;
	t56 = t64 * t36;
	t54 = t63 * t70;
	t39 = sin(qJ(5));
	t43 = cos(qJ(5));
	t52 = t43 * r_i_i_C(1) - t39 * r_i_i_C(2) + pkin(4);
	t51 = t39 * r_i_i_C(1) + t43 * r_i_i_C(2) + pkin(10);
	t48 = -t72 * t40 - t52 * t44 - pkin(3);
	t31 = t38 * t45 - t42 * t53;
	t30 = t42 * t58 + t62 * t45;
	t29 = -t36 * t65 + t64 * t63;
	t28 = (-t42 * t57 + t70 * t45) * t37;
	t27 = (t41 * t45 + t42 * t54) * t37;
	t24 = t50 * t36 + t63 * t59;
	t23 = t49 * t36 - t63 * t67;
	t22 = t41 * t56 + (t70 * t42 + t45 * t57) * t37;
	t21 = t41 * t66 - t54 * t65 - t70 * t56;
	t20 = t28 * t44 + t40 * t61;
	t18 = -t31 * t57 - t50 * t70;
	t17 = t31 * t54 - t50 * t41;
	t16 = -t30 * t57 - t49 * t70;
	t15 = t30 * t54 - t49 * t41;
	t14 = t22 * t44 + t29 * t40;
	t12 = t31 * t70 - t73 * t41;
	t11 = t31 * t41 + t73 * t70;
	t10 = t30 * t70 - t74 * t41;
	t9 = t30 * t41 + t74 * t70;
	t8 = t18 * t44 + t31 * t69;
	t6 = t16 * t44 + t30 * t69;
	t4 = t12 * t44 + t24 * t40;
	t2 = t10 * t44 + t23 * t40;
	t1 = [0, (t17 * t39 + t8 * t43) * r_i_i_C(1) + (t17 * t43 - t8 * t39) * r_i_i_C(2) + t8 * pkin(4) + t18 * pkin(3) + t17 * pkin(10) - t50 * pkin(2) + t31 * t71 + t72 * (t18 * t40 - t31 * t68), t48 * t11 + t51 * t12, t72 * t4 + t52 * (-t12 * t40 + t24 * t44), (t11 * t43 - t4 * t39) * r_i_i_C(1) + (-t11 * t39 - t4 * t43) * r_i_i_C(2), 0; 0, (t15 * t39 + t6 * t43) * r_i_i_C(1) + (t15 * t43 - t6 * t39) * r_i_i_C(2) + t6 * pkin(4) + t16 * pkin(3) + t15 * pkin(10) - t49 * pkin(2) + t30 * t71 + t72 * (t16 * t40 - t30 * t68), t51 * t10 + t48 * t9, t72 * t2 + t52 * (-t10 * t40 + t23 * t44), (-t2 * t39 + t9 * t43) * r_i_i_C(1) + (-t2 * t43 - t9 * t39) * r_i_i_C(2), 0; 1, (t20 * t43 + t27 * t39) * r_i_i_C(1) + (-t20 * t39 + t27 * t43) * r_i_i_C(2) + t20 * pkin(4) + t28 * pkin(3) + t27 * pkin(10) + (t45 * pkin(2) + t42 * t71) * t37 + t72 * (t28 * t40 - t44 * t61), t48 * t21 + t51 * t22, t72 * t14 + t52 * (-t22 * t40 + t29 * t44), (-t14 * t39 + t21 * t43) * r_i_i_C(1) + (-t14 * t43 - t21 * t39) * r_i_i_C(2), 0;];
	Ja_transl = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobia_transl_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:21:28
	% EndTime: 2019-10-09 23:21:29
	% DurationCPUTime: 0.46s
	% Computational Cost: add. (597->81), mult. (1489->149), div. (0->0), fcn. (1942->16), ass. (0->59)
	t46 = sin(pkin(7));
	t52 = sin(qJ(2));
	t55 = cos(qJ(2));
	t48 = cos(pkin(13));
	t75 = cos(pkin(6));
	t69 = t48 * t75;
	t73 = sin(pkin(13));
	t60 = t73 * t52 - t55 * t69;
	t74 = cos(pkin(7));
	t47 = sin(pkin(6));
	t78 = t47 * t48;
	t88 = t46 * t78 + t60 * t74;
	t64 = t75 * t73;
	t61 = t48 * t52 + t55 * t64;
	t70 = t47 * t73;
	t87 = -t46 * t70 + t61 * t74;
	t36 = t52 * t69 + t73 * t55;
	t51 = sin(qJ(3));
	t81 = cos(qJ(3));
	t15 = t36 * t51 + t88 * t81;
	t45 = qJ(5) + qJ(6);
	t43 = sin(t45);
	t44 = cos(t45);
	t16 = t36 * t81 - t88 * t51;
	t29 = t60 * t46 - t74 * t78;
	t50 = sin(qJ(4));
	t54 = cos(qJ(4));
	t8 = t16 * t54 + t29 * t50;
	t86 = (t15 * t44 - t8 * t43) * r_i_i_C(1) + (-t15 * t43 - t8 * t44) * r_i_i_C(2);
	t37 = t48 * t55 - t52 * t64;
	t18 = t37 * t81 - t87 * t51;
	t30 = t61 * t46 + t74 * t70;
	t10 = t18 * t54 + t30 * t50;
	t17 = t37 * t51 + t87 * t81;
	t85 = (-t10 * t43 + t17 * t44) * r_i_i_C(1) + (-t10 * t44 - t17 * t43) * r_i_i_C(2);
	t67 = t75 * t46;
	t68 = t51 * t74;
	t28 = t51 * t67 + (t81 * t52 + t55 * t68) * t47;
	t76 = t47 * t55;
	t35 = -t46 * t76 + t75 * t74;
	t20 = t28 * t54 + t35 * t50;
	t65 = t74 * t81;
	t77 = t47 * t52;
	t27 = t51 * t77 - t65 * t76 - t81 * t67;
	t84 = (-t20 * t43 + t27 * t44) * r_i_i_C(1) + (-t20 * t44 - t27 * t43) * r_i_i_C(2);
	t83 = pkin(9) * t46;
	t82 = r_i_i_C(3) + pkin(12) + pkin(11);
	t80 = t46 * t50;
	t79 = t46 * t54;
	t72 = t46 * t77;
	t53 = cos(qJ(5));
	t63 = t53 * pkin(5) + r_i_i_C(1) * t44 - r_i_i_C(2) * t43 + pkin(4);
	t49 = sin(qJ(5));
	t62 = t49 * pkin(5) + t43 * r_i_i_C(1) + t44 * r_i_i_C(2) + pkin(10);
	t59 = -t82 * t50 - t63 * t54 - pkin(3);
	t34 = (-t52 * t68 + t81 * t55) * t47;
	t24 = -t37 * t68 - t61 * t81;
	t22 = -t36 * t68 - t60 * t81;
	t1 = [0, t24 * pkin(3) - t61 * pkin(2) + t37 * t83 + t63 * (t24 * t54 + t37 * t80) + t62 * (t37 * t65 - t61 * t51) + t82 * (t24 * t50 - t37 * t79), t59 * t17 + t62 * t18, t82 * t10 + t63 * (-t18 * t50 + t30 * t54), (-t10 * t49 + t17 * t53) * pkin(5) + t85, t85; 0, t22 * pkin(3) - t60 * pkin(2) + t36 * t83 + t63 * (t22 * t54 + t36 * t80) + t62 * (t36 * t65 - t60 * t51) + t82 * (t22 * t50 - t36 * t79), t59 * t15 + t62 * t16, t82 * t8 + t63 * (-t16 * t50 + t29 * t54), (t15 * t53 - t49 * t8) * pkin(5) + t86, t86; 1, t34 * pkin(3) + t63 * (t34 * t54 + t50 * t72) + t82 * (t34 * t50 - t54 * t72) + (t55 * pkin(2) + t52 * t83 + t62 * (t51 * t55 + t52 * t65)) * t47, t59 * t27 + t62 * t28, t82 * t20 + t63 * (-t28 * t50 + t35 * t54), (-t20 * t49 + t27 * t53) * pkin(5) + t84, t84;];
	Ja_transl = t1;
else
	Ja_transl=NaN(3,6);
end