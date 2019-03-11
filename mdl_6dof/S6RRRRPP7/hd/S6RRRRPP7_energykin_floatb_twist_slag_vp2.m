% Calculate kinetic energy for
% S6RRRRPP7
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,theta5]';
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
% Datum: 2019-03-09 21:29
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6RRRRPP7_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(11,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPP7_energykin_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPP7_energykin_floatb_twist_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S6RRRRPP7_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRPP7_energykin_floatb_twist_slag_vp2: pkin has to be [11x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRRPP7_energykin_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRRRPP7_energykin_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RRRRPP7_energykin_floatb_twist_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 21:17:07
% EndTime: 2019-03-09 21:17:08
% DurationCPUTime: 1.22s
% Computational Cost: add. (5095->157), mult. (7627->221), div. (0->0), fcn. (6450->12), ass. (0->59)
t57 = V_base(5) * pkin(7) + V_base(1);
t58 = -V_base(4) * pkin(7) + V_base(2);
t66 = sin(qJ(1));
t70 = cos(qJ(1));
t50 = -t57 * t66 + t70 * t58;
t59 = V_base(6) + qJD(1);
t62 = cos(pkin(6));
t53 = t66 * V_base(5) + t70 * V_base(4);
t78 = pkin(8) * t53;
t45 = pkin(1) * t59 - t62 * t78 + t50;
t52 = -t66 * V_base(4) + t70 * V_base(5);
t61 = sin(pkin(6));
t48 = -pkin(1) * t52 - t61 * t78 + V_base(3);
t79 = t45 * t62 + t48 * t61;
t51 = t70 * t57 + t66 * t58;
t72 = t52 * t62 + t59 * t61;
t42 = pkin(8) * t72 + t51;
t65 = sin(qJ(2));
t69 = cos(qJ(2));
t29 = -t65 * t42 + t69 * t79;
t43 = -t53 * t65 + t69 * t72;
t60 = sin(pkin(11));
t34 = -t45 * t61 + t62 * t48;
t44 = t53 * t69 + t65 * t72;
t24 = -pkin(2) * t43 - pkin(9) * t44 + t34;
t30 = t69 * t42 + t79 * t65;
t49 = -t52 * t61 + t59 * t62 + qJD(2);
t28 = pkin(9) * t49 + t30;
t64 = sin(qJ(3));
t68 = cos(qJ(3));
t17 = t64 * t24 + t68 * t28;
t41 = qJD(3) - t43;
t15 = pkin(10) * t41 + t17;
t27 = -pkin(2) * t49 - t29;
t36 = -t44 * t64 + t49 * t68;
t37 = t44 * t68 + t49 * t64;
t20 = -pkin(3) * t36 - pkin(10) * t37 + t27;
t63 = sin(qJ(4));
t67 = cos(qJ(4));
t10 = -t15 * t63 + t67 * t20;
t33 = t37 * t67 + t41 * t63;
t35 = qJD(4) - t36;
t7 = pkin(4) * t35 - qJ(5) * t33 + t10;
t74 = cos(pkin(11));
t11 = t67 * t15 + t63 * t20;
t32 = -t37 * t63 + t41 * t67;
t9 = qJ(5) * t32 + t11;
t4 = t60 * t7 + t74 * t9;
t16 = t24 * t68 - t64 * t28;
t14 = -pkin(3) * t41 - t16;
t3 = -t60 * t9 + t7 * t74;
t12 = -pkin(4) * t32 + qJD(5) + t14;
t71 = V_base(3) ^ 2;
t22 = t60 * t32 + t33 * t74;
t21 = -t32 * t74 + t33 * t60;
t5 = pkin(5) * t21 - qJ(6) * t22 + t12;
t2 = qJ(6) * t35 + t4;
t1 = -t35 * pkin(5) + qJD(6) - t3;
t6 = m(7) * (t1 ^ 2 + t2 ^ 2 + t5 ^ 2) / 0.2e1 + m(6) * (t12 ^ 2 + t3 ^ 2 + t4 ^ 2) / 0.2e1 + m(5) * (t10 ^ 2 + t11 ^ 2 + t14 ^ 2) / 0.2e1 + m(4) * (t16 ^ 2 + t17 ^ 2 + t27 ^ 2) / 0.2e1 + m(3) * (t29 ^ 2 + t30 ^ 2 + t34 ^ 2) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + t71) / 0.2e1 + m(2) * (t50 ^ 2 + t51 ^ 2 + t71) / 0.2e1 + (V_base(2) * mrSges(1,1) - V_base(1) * mrSges(1,2) + Ifges(1,3) * V_base(6) / 0.2e1) * V_base(6) + (t50 * mrSges(2,1) - t51 * mrSges(2,2) + Ifges(2,3) * t59 / 0.2e1) * t59 + (t29 * mrSges(3,1) - t30 * mrSges(3,2) + Ifges(3,3) * t49 / 0.2e1) * t49 + (t16 * mrSges(4,1) - t17 * mrSges(4,2) + Ifges(4,3) * t41 / 0.2e1) * t41 + (t14 * mrSges(5,2) - t10 * mrSges(5,3) + Ifges(5,1) * t33 / 0.2e1) * t33 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,6) * V_base(6) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (V_base(3) * mrSges(2,2) - t50 * mrSges(2,3) + Ifges(2,5) * t59 + Ifges(2,1) * t53 / 0.2e1) * t53 + (t34 * mrSges(3,2) - t29 * mrSges(3,3) + Ifges(3,5) * t49 + Ifges(3,1) * t44 / 0.2e1) * t44 + (t27 * mrSges(4,2) - t16 * mrSges(4,3) + Ifges(4,5) * t41 + Ifges(4,1) * t37 / 0.2e1) * t37 + (-t14 * mrSges(5,1) + t11 * mrSges(5,3) + Ifges(5,4) * t33 + Ifges(5,2) * t32 / 0.2e1) * t32 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,5) * V_base(6) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (-V_base(3) * mrSges(2,1) + t51 * mrSges(2,3) + Ifges(2,4) * t53 + Ifges(2,6) * t59 + Ifges(2,2) * t52 / 0.2e1) * t52 + (-t34 * mrSges(3,1) + t30 * mrSges(3,3) + Ifges(3,4) * t44 + Ifges(3,6) * t49 + Ifges(3,2) * t43 / 0.2e1) * t43 + (-t27 * mrSges(4,1) + t17 * mrSges(4,3) + Ifges(4,4) * t37 + Ifges(4,6) * t41 + Ifges(4,2) * t36 / 0.2e1) * t36 + (t12 * mrSges(6,2) + t1 * mrSges(7,2) - t3 * mrSges(6,3) - t5 * mrSges(7,3) + (Ifges(7,1) / 0.2e1 + Ifges(6,1) / 0.2e1) * t22) * t22 + (t12 * mrSges(6,1) + t5 * mrSges(7,1) - t2 * mrSges(7,2) - t4 * mrSges(6,3) + (Ifges(7,3) / 0.2e1 + Ifges(6,2) / 0.2e1) * t21 + (-Ifges(6,4) + Ifges(7,5)) * t22) * t21 + (t10 * mrSges(5,1) + t3 * mrSges(6,1) - t1 * mrSges(7,1) - t11 * mrSges(5,2) - t4 * mrSges(6,2) + t2 * mrSges(7,3) + Ifges(5,5) * t33 + Ifges(5,6) * t32 + (Ifges(7,2) / 0.2e1 + Ifges(6,3) / 0.2e1 + Ifges(5,3) / 0.2e1) * t35 + (Ifges(7,4) + Ifges(6,5)) * t22 + (-Ifges(6,6) + Ifges(7,6)) * t21) * t35;
T  = t6;
