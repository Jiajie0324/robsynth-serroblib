% Calculate kinetic energy for
% S6RPRRPR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% V_base [6x1]
%   Base Velocity (twist: stacked translational and angular velocity) in base frame
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d6,theta2,theta5]';
% m_mdh [7x1]
%   mass of all robot links (including the base)
% mrSges [7x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% Ifges [7x6]
%   inertia of all robot links about their respective body frame origins, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertial_parameters_convert_par1_par2.m)
% 
% Output:
% T [1x1]
%   kinetic energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 05:18
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6RPRRPR6_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(11,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPR6_energykin_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRPR6_energykin_floatb_twist_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S6RPRRPR6_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RPRRPR6_energykin_floatb_twist_slag_vp2: pkin has to be [11x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRRPR6_energykin_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RPRRPR6_energykin_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RPRRPR6_energykin_floatb_twist_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 05:15:19
% EndTime: 2019-03-09 05:15:20
% DurationCPUTime: 1.19s
% Computational Cost: add. (4131->156), mult. (5519->226), div. (0->0), fcn. (4524->12), ass. (0->59)
t70 = sin(qJ(1));
t74 = cos(qJ(1));
t54 = t70 * V_base(4) - t74 * V_base(5);
t55 = t70 * V_base(5) + t74 * V_base(4);
t44 = pkin(1) * t54 - qJ(2) * t55 + V_base(3);
t59 = V_base(5) * pkin(6) + V_base(1);
t60 = -V_base(4) * pkin(6) + V_base(2);
t52 = t74 * t59 + t70 * t60;
t62 = V_base(6) + qJD(1);
t48 = qJ(2) * t62 + t52;
t64 = sin(pkin(10));
t66 = cos(pkin(10));
t35 = t66 * t44 - t48 * t64;
t50 = t55 * t66 + t62 * t64;
t29 = pkin(2) * t54 - pkin(7) * t50 + t35;
t36 = t64 * t44 + t66 * t48;
t49 = -t55 * t64 + t62 * t66;
t32 = pkin(7) * t49 + t36;
t69 = sin(qJ(3));
t73 = cos(qJ(3));
t22 = t69 * t29 + t73 * t32;
t53 = qJD(3) + t54;
t20 = pkin(8) * t53 + t22;
t39 = t49 * t73 - t69 * t50;
t40 = t49 * t69 + t50 * t73;
t51 = -t70 * t59 + t60 * t74;
t46 = -pkin(1) * t62 + qJD(2) - t51;
t41 = -pkin(2) * t49 + t46;
t25 = -pkin(3) * t39 - pkin(8) * t40 + t41;
t68 = sin(qJ(4));
t72 = cos(qJ(4));
t14 = t72 * t20 + t68 * t25;
t33 = -t40 * t68 + t53 * t72;
t11 = qJ(5) * t33 + t14;
t63 = sin(pkin(11));
t65 = cos(pkin(11));
t13 = -t20 * t68 + t72 * t25;
t34 = t40 * t72 + t53 * t68;
t38 = qJD(4) - t39;
t9 = pkin(4) * t38 - qJ(5) * t34 + t13;
t6 = t65 * t11 + t63 * t9;
t5 = -t11 * t63 + t65 * t9;
t21 = t29 * t73 - t69 * t32;
t19 = -pkin(3) * t53 - t21;
t17 = -pkin(4) * t33 + qJD(5) + t19;
t75 = V_base(3) ^ 2;
t71 = cos(qJ(6));
t67 = sin(qJ(6));
t37 = qJD(6) + t38;
t27 = t33 * t63 + t34 * t65;
t26 = t33 * t65 - t34 * t63;
t16 = t26 * t67 + t27 * t71;
t15 = t26 * t71 - t27 * t67;
t12 = -pkin(5) * t26 + t17;
t4 = pkin(9) * t26 + t6;
t3 = pkin(5) * t38 - pkin(9) * t27 + t5;
t2 = t3 * t67 + t4 * t71;
t1 = t3 * t71 - t4 * t67;
t7 = (t1 * mrSges(7,1) - t2 * mrSges(7,2) + Ifges(7,3) * t37 / 0.2e1) * t37 + (t17 * mrSges(6,2) - t5 * mrSges(6,3) + Ifges(6,1) * t27 / 0.2e1) * t27 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,5) * V_base(6) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (-t19 * mrSges(5,1) + t14 * mrSges(5,3) + Ifges(5,4) * t34 + Ifges(5,2) * t33 / 0.2e1) * t33 + (t51 * mrSges(2,1) - t52 * mrSges(2,2) + Ifges(2,3) * t62 / 0.2e1) * t62 + (-t17 * mrSges(6,1) + t6 * mrSges(6,3) + Ifges(6,4) * t27 + Ifges(6,2) * t26 / 0.2e1) * t26 + (V_base(3) * mrSges(2,1) + t35 * mrSges(3,1) - t36 * mrSges(3,2) - t52 * mrSges(2,3) - Ifges(2,4) * t55 + Ifges(3,5) * t50 - Ifges(2,6) * t62 + Ifges(3,6) * t49 + (Ifges(2,2) / 0.2e1 + Ifges(3,3) / 0.2e1) * t54) * t54 + (t41 * mrSges(4,2) - t21 * mrSges(4,3) + Ifges(4,5) * t53 + Ifges(4,1) * t40 / 0.2e1) * t40 + (t12 * mrSges(7,2) - t1 * mrSges(7,3) + Ifges(7,5) * t37 + Ifges(7,1) * t16 / 0.2e1) * t16 + m(2) * (t51 ^ 2 + t52 ^ 2 + t75) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + t75) / 0.2e1 + m(4) * (t21 ^ 2 + t22 ^ 2 + t41 ^ 2) / 0.2e1 + m(3) * (t35 ^ 2 + t36 ^ 2 + t46 ^ 2) / 0.2e1 + m(6) * (t17 ^ 2 + t5 ^ 2 + t6 ^ 2) / 0.2e1 + m(5) * (t13 ^ 2 + t14 ^ 2 + t19 ^ 2) / 0.2e1 + m(7) * (t1 ^ 2 + t12 ^ 2 + t2 ^ 2) / 0.2e1 + (V_base(3) * mrSges(2,2) - t51 * mrSges(2,3) + Ifges(2,5) * t62 + Ifges(2,1) * t55 / 0.2e1) * t55 + (-t41 * mrSges(4,1) + t22 * mrSges(4,3) + Ifges(4,4) * t40 + Ifges(4,6) * t53 + Ifges(4,2) * t39 / 0.2e1) * t39 + (t13 * mrSges(5,1) + t5 * mrSges(6,1) - t14 * mrSges(5,2) - t6 * mrSges(6,2) + Ifges(5,5) * t34 + Ifges(6,5) * t27 + Ifges(5,6) * t33 + Ifges(6,6) * t26 + (Ifges(5,3) / 0.2e1 + Ifges(6,3) / 0.2e1) * t38) * t38 + (-t46 * mrSges(3,1) + t36 * mrSges(3,3) + Ifges(3,4) * t50 + Ifges(3,2) * t49 / 0.2e1) * t49 + (t21 * mrSges(4,1) - t22 * mrSges(4,2) + Ifges(4,3) * t53 / 0.2e1) * t53 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,6) * V_base(6) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (-t12 * mrSges(7,1) + t2 * mrSges(7,3) + Ifges(7,4) * t16 + Ifges(7,6) * t37 + Ifges(7,2) * t15 / 0.2e1) * t15 + (V_base(2) * mrSges(1,1) - V_base(1) * mrSges(1,2) + Ifges(1,3) * V_base(6) / 0.2e1) * V_base(6) + (t46 * mrSges(3,2) - t35 * mrSges(3,3) + Ifges(3,1) * t50 / 0.2e1) * t50 + (t19 * mrSges(5,2) - t13 * mrSges(5,3) + Ifges(5,1) * t34 / 0.2e1) * t34;
T  = t7;
