% Calculate kinetic energy for
% S6RPPRPR7
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% V_base [6x1]
%   Base Velocity (twist: stacked translational and angular velocity) in base frame
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d6,theta3,theta5]';
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
% Datum: 2019-03-09 01:54
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6RPPRPR7_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRPR7_energykin_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRPR7_energykin_floatb_twist_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S6RPPRPR7_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPPRPR7_energykin_floatb_twist_slag_vp2: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPPRPR7_energykin_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RPPRPR7_energykin_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RPPRPR7_energykin_floatb_twist_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 01:52:52
% EndTime: 2019-03-09 01:52:52
% DurationCPUTime: 0.91s
% Computational Cost: add. (2357->153), mult. (3055->209), div. (0->0), fcn. (2284->10), ass. (0->55)
t62 = sin(qJ(1));
t69 = cos(qJ(1));
t47 = t62 * V_base(5) + t69 * V_base(4);
t55 = V_base(6) + qJD(1);
t51 = V_base(5) * pkin(6) + V_base(1);
t52 = -V_base(4) * pkin(6) + V_base(2);
t43 = -t62 * t51 + t52 * t69;
t65 = qJD(2) - t43;
t67 = pkin(1) + qJ(3);
t33 = t47 * pkin(2) - t55 * t67 + t65;
t46 = t62 * V_base(4) - t69 * V_base(5);
t66 = -qJ(2) * t47 + V_base(3);
t35 = t46 * t67 + t66;
t57 = sin(pkin(9));
t59 = cos(pkin(9));
t23 = t59 * t33 - t35 * t57;
t42 = t46 * t57 + t55 * t59;
t19 = pkin(3) * t47 - pkin(7) * t42 + t23;
t24 = t57 * t33 + t59 * t35;
t41 = t46 * t59 - t55 * t57;
t22 = pkin(7) * t41 + t24;
t61 = sin(qJ(4));
t68 = cos(qJ(4));
t12 = t61 * t19 + t68 * t22;
t45 = qJD(4) + t47;
t10 = qJ(5) * t45 + t12;
t44 = t69 * t51 + t62 * t52;
t40 = -t55 * qJ(2) - t44;
t36 = -pkin(2) * t46 + qJD(3) - t40;
t27 = -pkin(3) * t41 + t36;
t29 = -t68 * t41 + t42 * t61;
t30 = t61 * t41 + t42 * t68;
t15 = pkin(4) * t29 - qJ(5) * t30 + t27;
t56 = sin(pkin(10));
t58 = cos(pkin(10));
t6 = t58 * t10 + t56 * t15;
t5 = -t10 * t56 + t58 * t15;
t11 = t19 * t68 - t61 * t22;
t9 = -t45 * pkin(4) + qJD(5) - t11;
t64 = V_base(3) ^ 2;
t63 = cos(qJ(6));
t60 = sin(qJ(6));
t38 = -t55 * pkin(1) + t65;
t37 = pkin(1) * t46 + t66;
t28 = qJD(6) + t29;
t26 = t30 * t58 + t45 * t56;
t25 = -t30 * t56 + t45 * t58;
t17 = t25 * t60 + t26 * t63;
t16 = t25 * t63 - t26 * t60;
t7 = -t25 * pkin(5) + t9;
t4 = pkin(8) * t25 + t6;
t3 = pkin(5) * t29 - pkin(8) * t26 + t5;
t2 = t3 * t60 + t4 * t63;
t1 = t3 * t63 - t4 * t60;
t8 = m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + t64) / 0.2e1 + m(2) * (t43 ^ 2 + t44 ^ 2 + t64) / 0.2e1 + m(4) * (t23 ^ 2 + t24 ^ 2 + t36 ^ 2) / 0.2e1 + m(3) * (t37 ^ 2 + t38 ^ 2 + t40 ^ 2) / 0.2e1 + m(5) * (t11 ^ 2 + t12 ^ 2 + t27 ^ 2) / 0.2e1 + m(6) * (t5 ^ 2 + t6 ^ 2 + t9 ^ 2) / 0.2e1 + m(7) * (t1 ^ 2 + t2 ^ 2 + t7 ^ 2) / 0.2e1 + (V_base(2) * mrSges(1,1) - V_base(1) * mrSges(1,2) + Ifges(1,3) * V_base(6) / 0.2e1) * V_base(6) + (t11 * mrSges(5,1) - t12 * mrSges(5,2) + Ifges(5,3) * t45 / 0.2e1) * t45 + (t36 * mrSges(4,2) - t23 * mrSges(4,3) + Ifges(4,1) * t42 / 0.2e1) * t42 + (t1 * mrSges(7,1) - t2 * mrSges(7,2) + Ifges(7,3) * t28 / 0.2e1) * t28 + (t9 * mrSges(6,2) - t5 * mrSges(6,3) + Ifges(6,1) * t26 / 0.2e1) * t26 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,6) * V_base(6) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (-t36 * mrSges(4,1) + t24 * mrSges(4,3) + Ifges(4,4) * t42 + Ifges(4,2) * t41 / 0.2e1) * t41 + (t27 * mrSges(5,2) - t11 * mrSges(5,3) + Ifges(5,5) * t45 + Ifges(5,1) * t30 / 0.2e1) * t30 + (-t9 * mrSges(6,1) + t6 * mrSges(6,3) + Ifges(6,4) * t26 + Ifges(6,2) * t25 / 0.2e1) * t25 + (t7 * mrSges(7,2) - t1 * mrSges(7,3) + Ifges(7,5) * t28 + Ifges(7,1) * t17 / 0.2e1) * t17 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,5) * V_base(6) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (-t7 * mrSges(7,1) + t2 * mrSges(7,3) + Ifges(7,4) * t17 + Ifges(7,6) * t28 + Ifges(7,2) * t16 / 0.2e1) * t16 + (t43 * mrSges(2,1) - t44 * mrSges(2,2) + t38 * mrSges(3,2) - t40 * mrSges(3,3) + (Ifges(2,3) / 0.2e1 + Ifges(3,1) / 0.2e1) * t55) * t55 + (V_base(3) * mrSges(2,1) + t40 * mrSges(3,1) - t37 * mrSges(3,2) - t44 * mrSges(2,3) + (Ifges(2,2) / 0.2e1 + Ifges(3,3) / 0.2e1) * t46 + (Ifges(3,5) - Ifges(2,6)) * t55) * t46 + (t27 * mrSges(5,1) + t5 * mrSges(6,1) - t6 * mrSges(6,2) - t12 * mrSges(5,3) - Ifges(5,4) * t30 + Ifges(6,5) * t26 - Ifges(5,6) * t45 + Ifges(6,6) * t25 + (Ifges(5,2) / 0.2e1 + Ifges(6,3) / 0.2e1) * t29) * t29 + (t38 * mrSges(3,1) + t23 * mrSges(4,1) + V_base(3) * mrSges(2,2) - t24 * mrSges(4,2) - t43 * mrSges(2,3) - t37 * mrSges(3,3) + Ifges(4,5) * t42 + Ifges(4,6) * t41 + (Ifges(2,1) / 0.2e1 + Ifges(3,2) / 0.2e1 + Ifges(4,3) / 0.2e1) * t47 + (-Ifges(3,4) + Ifges(2,5)) * t55 + (-Ifges(2,4) - Ifges(3,6)) * t46) * t47;
T  = t8;
