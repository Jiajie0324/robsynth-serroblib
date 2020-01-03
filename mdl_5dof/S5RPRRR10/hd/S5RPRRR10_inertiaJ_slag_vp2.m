% Calculate joint inertia matrix for
% S5RPRRR10
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d4,d5,theta2]';
% m_mdh [6x1]
%   mass of all robot links (including the base)
% mrSges [6x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% Ifges [6x6]
%   inertia of all robot links about their respective body frame origins, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertial_parameters_convert_par1_par2.m)
% 
% Output:
% Mq [5x5]
%   inertia matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 19:11
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S5RPRRR10_inertiaJ_slag_vp2(qJ, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(9,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRR10_inertiaJ_slag_vp2: qJ has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RPRRR10_inertiaJ_slag_vp2: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPRRR10_inertiaJ_slag_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RPRRR10_inertiaJ_slag_vp2: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5RPRRR10_inertiaJ_slag_vp2: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_floatb_twist_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 19:09:44
% EndTime: 2019-12-31 19:09:46
% DurationCPUTime: 0.55s
% Computational Cost: add. (1018->176), mult. (1979->267), div. (0->0), fcn. (2119->8), ass. (0->71)
t64 = sin(pkin(9));
t65 = cos(pkin(9));
t68 = sin(qJ(3));
t90 = cos(qJ(3));
t44 = t68 * t64 - t90 * t65;
t45 = t90 * t64 + t68 * t65;
t70 = cos(qJ(4));
t86 = t45 * t70;
t96 = Ifges(5,5) * t86 + Ifges(5,3) * t44;
t85 = pkin(6) + qJ(2);
t48 = t85 * t65;
t79 = t85 * t64;
t30 = t68 * t48 + t90 * t79;
t95 = t30 ^ 2;
t61 = t65 ^ 2;
t94 = 0.2e1 * t30;
t55 = -t65 * pkin(2) - pkin(1);
t93 = 0.2e1 * t55;
t91 = -pkin(8) - pkin(7);
t67 = sin(qJ(4));
t89 = Ifges(5,4) * t67;
t88 = Ifges(5,4) * t70;
t87 = t45 * t67;
t23 = t44 * pkin(3) - t45 * pkin(7) + t55;
t32 = t90 * t48 - t68 * t79;
t10 = t67 * t23 + t70 * t32;
t66 = sin(qJ(5));
t69 = cos(qJ(5));
t46 = -t66 * t67 + t69 * t70;
t47 = t66 * t70 + t69 * t67;
t84 = Ifges(6,5) * t47 + Ifges(6,6) * t46;
t83 = Ifges(5,5) * t67 + Ifges(5,6) * t70;
t82 = t64 ^ 2 + t61;
t81 = t67 ^ 2 + t70 ^ 2;
t18 = t47 * t45;
t19 = t46 * t45;
t80 = Ifges(6,5) * t19 - Ifges(6,6) * t18 + Ifges(6,3) * t44;
t78 = -t65 * mrSges(3,1) + t64 * mrSges(3,2);
t27 = -t46 * mrSges(6,1) + t47 * mrSges(6,2);
t9 = t70 * t23 - t67 * t32;
t49 = -t70 * mrSges(5,1) + t67 * mrSges(5,2);
t77 = t67 * mrSges(5,1) + t70 * mrSges(5,2);
t52 = t91 * t67;
t53 = t91 * t70;
t34 = t69 * t52 + t66 * t53;
t35 = t66 * t52 - t69 * t53;
t76 = t34 * mrSges(6,1) - t35 * mrSges(6,2) + t84;
t4 = t44 * pkin(4) - pkin(8) * t86 + t9;
t7 = -pkin(8) * t87 + t10;
t2 = t69 * t4 - t66 * t7;
t3 = t66 * t4 + t69 * t7;
t75 = t2 * mrSges(6,1) - t3 * mrSges(6,2) + t80;
t74 = (t69 * mrSges(6,1) - t66 * mrSges(6,2)) * pkin(4);
t56 = -t70 * pkin(4) - pkin(3);
t51 = Ifges(5,1) * t67 + t88;
t50 = Ifges(5,2) * t70 + t89;
t37 = t45 * mrSges(4,2);
t29 = Ifges(6,1) * t47 + Ifges(6,4) * t46;
t28 = Ifges(6,4) * t47 + Ifges(6,2) * t46;
t25 = t44 * mrSges(5,1) - mrSges(5,3) * t86;
t24 = -t44 * mrSges(5,2) - mrSges(5,3) * t87;
t22 = t77 * t45;
t15 = pkin(4) * t87 + t30;
t14 = Ifges(5,5) * t44 + (Ifges(5,1) * t70 - t89) * t45;
t13 = Ifges(5,6) * t44 + (-Ifges(5,2) * t67 + t88) * t45;
t12 = t44 * mrSges(6,1) - t19 * mrSges(6,3);
t11 = -t44 * mrSges(6,2) - t18 * mrSges(6,3);
t8 = t18 * mrSges(6,1) + t19 * mrSges(6,2);
t6 = Ifges(6,1) * t19 - Ifges(6,4) * t18 + Ifges(6,5) * t44;
t5 = Ifges(6,4) * t19 - Ifges(6,2) * t18 + Ifges(6,6) * t44;
t1 = [Ifges(3,2) * t61 + t37 * t93 - 0.2e1 * pkin(1) * t78 + 0.2e1 * t10 * t24 + 0.2e1 * t9 * t25 + t22 * t94 + 0.2e1 * t3 * t11 + 0.2e1 * t2 * t12 + 0.2e1 * t15 * t8 - t18 * t5 + t19 * t6 + Ifges(2,3) + (Ifges(3,1) * t64 + 0.2e1 * Ifges(3,4) * t65) * t64 + 0.2e1 * t82 * qJ(2) * mrSges(3,3) + (mrSges(4,1) * t93 - 0.2e1 * t32 * mrSges(4,3) + Ifges(4,2) * t44 + t80 + t96) * t44 + (mrSges(4,3) * t94 + Ifges(4,1) * t45 - t67 * t13 + t70 * t14 + (-Ifges(5,6) * t67 - (2 * Ifges(4,4))) * t44) * t45 + m(6) * (t15 ^ 2 + t2 ^ 2 + t3 ^ 2) + m(5) * (t10 ^ 2 + t9 ^ 2 + t95) + m(4) * (t32 ^ 2 + t55 ^ 2 + t95) + m(3) * (t82 * qJ(2) ^ 2 + pkin(1) ^ 2); -m(3) * pkin(1) + t44 * mrSges(4,1) + t47 * t11 + t46 * t12 + t67 * t24 + t70 * t25 + t37 + m(6) * (t46 * t2 + t47 * t3) + m(5) * (t67 * t10 + t70 * t9) + m(4) * t55 + t78; m(3) + m(4) + m(5) * t81 + m(6) * (t46 ^ 2 + t47 ^ 2); t56 * t8 + t46 * t5 / 0.2e1 + t47 * t6 / 0.2e1 - Ifges(4,6) * t44 - pkin(3) * t22 + t15 * t27 - t18 * t28 / 0.2e1 + t19 * t29 / 0.2e1 - t32 * mrSges(4,2) + t34 * t12 + t35 * t11 + (t49 - mrSges(4,1)) * t30 + (-t2 * t47 + t3 * t46) * mrSges(6,3) + (t13 / 0.2e1 + t10 * mrSges(5,3) + pkin(7) * t24) * t70 + (t14 / 0.2e1 - t9 * mrSges(5,3) - pkin(7) * t25) * t67 + m(6) * (t56 * t15 + t34 * t2 + t35 * t3) + m(5) * (-pkin(3) * t30 + (t10 * t70 - t9 * t67) * pkin(7)) + (Ifges(4,5) - t67 * t50 / 0.2e1 + t70 * t51 / 0.2e1) * t45 + (t83 + t84) * t44 / 0.2e1; m(6) * (t34 * t46 + t35 * t47); -0.2e1 * pkin(3) * t49 + 0.2e1 * t56 * t27 + t46 * t28 + t47 * t29 + t70 * t50 + t67 * t51 + Ifges(4,3) + m(6) * (t34 ^ 2 + t35 ^ 2 + t56 ^ 2) + m(5) * (t81 * pkin(7) ^ 2 + pkin(3) ^ 2) + 0.2e1 * (-t34 * t47 + t35 * t46) * mrSges(6,3) + 0.2e1 * t81 * pkin(7) * mrSges(5,3); -Ifges(5,6) * t87 + t9 * mrSges(5,1) - t10 * mrSges(5,2) + (t66 * t11 + t69 * t12 + m(6) * (t2 * t69 + t3 * t66)) * pkin(4) + t75 + t96; m(6) * (t46 * t69 + t47 * t66) * pkin(4) - t49 - t27; -t77 * pkin(7) + (m(6) * (t34 * t69 + t35 * t66) + (t66 * t46 - t69 * t47) * mrSges(6,3)) * pkin(4) + t76 + t83; Ifges(5,3) + Ifges(6,3) + m(6) * (t66 ^ 2 + t69 ^ 2) * pkin(4) ^ 2 + 0.2e1 * t74; t75; -t27; t76; Ifges(6,3) + t74; Ifges(6,3);];
%% Postprocessing: Reshape Output
% From vec2symmat_5_matlab.m
res = [t1(1), t1(2), t1(4), t1(7), t1(11); t1(2), t1(3), t1(5), t1(8), t1(12); t1(4), t1(5), t1(6), t1(9), t1(13); t1(7), t1(8), t1(9), t1(10), t1(14); t1(11), t1(12), t1(13), t1(14), t1(15);];
Mq = res;
