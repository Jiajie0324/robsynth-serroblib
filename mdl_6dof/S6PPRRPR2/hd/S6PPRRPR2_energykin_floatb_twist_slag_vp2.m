% Calculate kinetic energy for
% S6PPRRPR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% V_base [6x1]
%   Base Velocity (twist: stacked translational and angular velocity) in base frame
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d3,d4,d6,theta1,theta2]';
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
% Datum: 2019-03-08 18:51
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6PPRRPR2_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(12,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PPRRPR2_energykin_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PPRRPR2_energykin_floatb_twist_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S6PPRRPR2_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PPRRPR2_energykin_floatb_twist_slag_vp2: pkin has to be [12x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6PPRRPR2_energykin_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6PPRRPR2_energykin_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6PPRRPR2_energykin_floatb_twist_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 18:49:05
% EndTime: 2019-03-08 18:49:07
% DurationCPUTime: 1.33s
% Computational Cost: add. (5853->163), mult. (11045->232), div. (0->0), fcn. (9544->14), ass. (0->68)
t60 = V_base(5) * qJ(1) + V_base(1);
t61 = -V_base(4) * qJ(1) + V_base(2);
t64 = sin(pkin(11));
t68 = cos(pkin(11));
t53 = -t60 * t64 + t68 * t61;
t70 = cos(pkin(6));
t56 = t64 * V_base(5) + t68 * V_base(4);
t81 = qJ(2) * t56;
t47 = V_base(6) * pkin(1) - t70 * t81 + t53;
t55 = -t64 * V_base(4) + t68 * V_base(5);
t62 = V_base(3) + qJD(1);
t66 = sin(pkin(6));
t51 = -pkin(1) * t55 - t66 * t81 + t62;
t91 = t47 * t70 + t51 * t66;
t54 = t68 * t60 + t64 * t61;
t77 = t55 * t70 + t66 * V_base(6);
t44 = t77 * qJ(2) + t54;
t63 = sin(pkin(12));
t67 = cos(pkin(12));
t33 = -t44 * t63 + t91 * t67;
t52 = -t55 * t66 + t70 * V_base(6);
t69 = cos(pkin(7));
t46 = t56 * t67 + t77 * t63;
t88 = pkin(8) * t46;
t26 = pkin(2) * t52 - t69 * t88 + t33;
t38 = -t47 * t66 + t70 * t51 + qJD(2);
t45 = -t56 * t63 + t77 * t67;
t65 = sin(pkin(7));
t32 = -pkin(2) * t45 - t65 * t88 + t38;
t90 = t26 * t69 + t32 * t65;
t34 = t67 * t44 + t91 * t63;
t79 = t45 * t69 + t52 * t65;
t25 = t79 * pkin(8) + t34;
t73 = sin(qJ(3));
t75 = cos(qJ(3));
t17 = -t73 * t25 + t90 * t75;
t36 = -t73 * t46 + t79 * t75;
t89 = pkin(4) + pkin(10);
t87 = cos(qJ(4));
t18 = t75 * t25 + t90 * t73;
t40 = -t45 * t65 + t52 * t69 + qJD(3);
t14 = pkin(9) * t40 + t18;
t19 = -t26 * t65 + t69 * t32;
t37 = t46 * t75 + t79 * t73;
t16 = -pkin(3) * t36 - pkin(9) * t37 + t19;
t72 = sin(qJ(4));
t8 = t87 * t14 + t72 * t16;
t35 = qJD(4) - t36;
t6 = -qJ(5) * t35 - t8;
t7 = -t72 * t14 + t87 * t16;
t78 = qJD(5) - t7;
t29 = t87 * t37 + t72 * t40;
t13 = -t40 * pkin(3) - t17;
t76 = -t29 * qJ(5) + t13;
t74 = cos(qJ(6));
t71 = sin(qJ(6));
t28 = t37 * t72 - t87 * t40;
t27 = qJD(6) + t29;
t21 = t28 * t71 + t35 * t74;
t20 = t28 * t74 - t35 * t71;
t10 = t28 * pkin(4) + t76;
t9 = t89 * t28 + t76;
t5 = -t35 * pkin(4) + t78;
t4 = -pkin(5) * t28 - t6;
t3 = t29 * pkin(5) - t89 * t35 + t78;
t2 = t3 * t71 + t74 * t9;
t1 = t3 * t74 - t71 * t9;
t11 = m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + V_base(3) ^ 2) / 0.2e1 + m(7) * (t1 ^ 2 + t2 ^ 2 + t4 ^ 2) / 0.2e1 + m(6) * (t10 ^ 2 + t5 ^ 2 + t6 ^ 2) / 0.2e1 + m(5) * (t13 ^ 2 + t7 ^ 2 + t8 ^ 2) / 0.2e1 + m(4) * (t17 ^ 2 + t18 ^ 2 + t19 ^ 2) / 0.2e1 + m(3) * (t33 ^ 2 + t34 ^ 2 + t38 ^ 2) / 0.2e1 + m(2) * (t53 ^ 2 + t54 ^ 2 + t62 ^ 2) / 0.2e1 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (t62 * mrSges(2,2) - t53 * mrSges(2,3) + Ifges(2,1) * t56 / 0.2e1) * t56 + (t33 * mrSges(3,1) - t34 * mrSges(3,2) + Ifges(3,3) * t52 / 0.2e1) * t52 + (t17 * mrSges(4,1) - t18 * mrSges(4,2) + Ifges(4,3) * t40 / 0.2e1) * t40 + (t1 * mrSges(7,1) - t2 * mrSges(7,2) + Ifges(7,3) * t27 / 0.2e1) * t27 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (-t62 * mrSges(2,1) + t54 * mrSges(2,3) + Ifges(2,4) * t56 + Ifges(2,2) * t55 / 0.2e1) * t55 + (t38 * mrSges(3,2) - t33 * mrSges(3,3) + Ifges(3,5) * t52 + Ifges(3,1) * t46 / 0.2e1) * t46 + (t19 * mrSges(4,2) - t17 * mrSges(4,3) + Ifges(4,5) * t40 + Ifges(4,1) * t37 / 0.2e1) * t37 + (t4 * mrSges(7,2) - t1 * mrSges(7,3) + Ifges(7,5) * t27 + Ifges(7,1) * t21 / 0.2e1) * t21 + (-t38 * mrSges(3,1) + t34 * mrSges(3,3) + Ifges(3,4) * t46 + Ifges(3,6) * t52 + Ifges(3,2) * t45 / 0.2e1) * t45 + (-t19 * mrSges(4,1) + t18 * mrSges(4,3) + Ifges(4,4) * t37 + Ifges(4,6) * t40 + Ifges(4,2) * t36 / 0.2e1) * t36 + (-t4 * mrSges(7,1) + t2 * mrSges(7,3) + Ifges(7,4) * t21 + Ifges(7,6) * t27 + Ifges(7,2) * t20 / 0.2e1) * t20 + (t7 * mrSges(5,1) - t8 * mrSges(5,2) + t5 * mrSges(6,2) - t6 * mrSges(6,3) + (Ifges(5,3) / 0.2e1 + Ifges(6,1) / 0.2e1) * t35) * t35 + (t5 * mrSges(6,1) + t13 * mrSges(5,2) - t7 * mrSges(5,3) - t10 * mrSges(6,3) + (Ifges(5,1) / 0.2e1 + Ifges(6,2) / 0.2e1) * t29 + (-Ifges(6,4) + Ifges(5,5)) * t35) * t29 + (V_base(2) * mrSges(1,1) + t53 * mrSges(2,1) - V_base(1) * mrSges(1,2) - t54 * mrSges(2,2) + Ifges(1,5) * V_base(4) + Ifges(2,5) * t56 + Ifges(1,6) * V_base(5) + Ifges(2,6) * t55 + (Ifges(1,3) / 0.2e1 + Ifges(2,3) / 0.2e1) * V_base(6)) * V_base(6) + (t13 * mrSges(5,1) + t6 * mrSges(6,1) - t10 * mrSges(6,2) - t8 * mrSges(5,3) + (Ifges(5,2) / 0.2e1 + Ifges(6,3) / 0.2e1) * t28 + (Ifges(6,5) - Ifges(5,6)) * t35 + (-Ifges(5,4) - Ifges(6,6)) * t29) * t28;
T  = t11;
