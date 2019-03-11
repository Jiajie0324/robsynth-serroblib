% Calculate kinetic energy for
% S6RRPRPP2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% V_base [6x1]
%   Base Velocity (twist: stacked translational and angular velocity) in base frame
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,theta3]';
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
% Datum: 2019-03-09 09:53
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6RRPRPP2_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(9,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPP2_energykin_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRPP2_energykin_floatb_twist_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S6RRPRPP2_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRPRPP2_energykin_floatb_twist_slag_vp2: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRPRPP2_energykin_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRPRPP2_energykin_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RRPRPP2_energykin_floatb_twist_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 09:49:38
% EndTime: 2019-03-09 09:49:39
% DurationCPUTime: 0.97s
% Computational Cost: add. (2205->149), mult. (2885->194), div. (0->0), fcn. (2240->8), ass. (0->49)
t65 = -pkin(4) - pkin(5);
t64 = cos(qJ(4));
t56 = sin(qJ(1));
t58 = cos(qJ(1));
t45 = -t56 * V_base(4) + t58 * V_base(5);
t46 = t56 * V_base(5) + t58 * V_base(4);
t34 = -pkin(1) * t45 - pkin(7) * t46 + V_base(3);
t50 = V_base(5) * pkin(6) + V_base(1);
t51 = -V_base(4) * pkin(6) + V_base(2);
t42 = t58 * t50 + t56 * t51;
t52 = V_base(6) + qJD(1);
t38 = pkin(7) * t52 + t42;
t55 = sin(qJ(2));
t57 = cos(qJ(2));
t25 = t57 * t34 - t38 * t55;
t40 = t46 * t57 + t52 * t55;
t44 = qJD(2) - t45;
t19 = pkin(2) * t44 - qJ(3) * t40 + t25;
t26 = t55 * t34 + t57 * t38;
t39 = -t46 * t55 + t52 * t57;
t22 = qJ(3) * t39 + t26;
t53 = sin(pkin(9));
t63 = cos(pkin(9));
t14 = t53 * t19 + t63 * t22;
t12 = pkin(8) * t44 + t14;
t29 = t63 * t39 - t40 * t53;
t30 = t53 * t39 + t63 * t40;
t41 = -t56 * t50 + t51 * t58;
t37 = -pkin(1) * t52 - t41;
t31 = -pkin(2) * t39 + qJD(3) + t37;
t16 = -pkin(3) * t29 - pkin(8) * t30 + t31;
t54 = sin(qJ(4));
t7 = t64 * t12 + t54 * t16;
t13 = t63 * t19 - t53 * t22;
t28 = qJD(4) - t29;
t5 = t28 * qJ(5) + t7;
t62 = pkin(3) * t44 + t13;
t6 = -t54 * t12 + t64 * t16;
t61 = qJD(5) - t6;
t24 = t64 * t30 + t54 * t44;
t60 = qJ(5) * t24 + t62;
t59 = V_base(3) ^ 2;
t23 = t30 * t54 - t64 * t44;
t8 = pkin(4) * t23 - t60;
t4 = -t28 * pkin(4) + t61;
t3 = t65 * t23 + qJD(6) + t60;
t2 = qJ(6) * t23 + t5;
t1 = -t24 * qJ(6) + t65 * t28 + t61;
t9 = m(2) * (t41 ^ 2 + t42 ^ 2 + t59) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + t59) / 0.2e1 + m(4) * (t13 ^ 2 + t14 ^ 2 + t31 ^ 2) / 0.2e1 + m(3) * (t25 ^ 2 + t26 ^ 2 + t37 ^ 2) / 0.2e1 + m(5) * (t6 ^ 2 + t62 ^ 2 + t7 ^ 2) / 0.2e1 + m(7) * (t1 ^ 2 + t2 ^ 2 + t3 ^ 2) / 0.2e1 + m(6) * (t4 ^ 2 + t5 ^ 2 + t8 ^ 2) / 0.2e1 + (V_base(2) * mrSges(1,1) - V_base(1) * mrSges(1,2) + Ifges(1,3) * V_base(6) / 0.2e1) * V_base(6) + (t41 * mrSges(2,1) - t42 * mrSges(2,2) + Ifges(2,3) * t52 / 0.2e1) * t52 + (t37 * mrSges(3,2) - t25 * mrSges(3,3) + Ifges(3,1) * t40 / 0.2e1) * t40 + (t31 * mrSges(4,2) - t13 * mrSges(4,3) + Ifges(4,1) * t30 / 0.2e1) * t30 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,6) * V_base(6) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (V_base(3) * mrSges(2,2) - t41 * mrSges(2,3) + Ifges(2,5) * t52 + Ifges(2,1) * t46 / 0.2e1) * t46 + (-t37 * mrSges(3,1) + t26 * mrSges(3,3) + Ifges(3,4) * t40 + Ifges(3,2) * t39 / 0.2e1) * t39 + (-t31 * mrSges(4,1) + t14 * mrSges(4,3) + Ifges(4,4) * t30 + Ifges(4,2) * t29 / 0.2e1) * t29 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,5) * V_base(6) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (-V_base(3) * mrSges(2,1) + t42 * mrSges(2,3) + Ifges(2,4) * t46 + Ifges(2,6) * t52 + Ifges(2,2) * t45 / 0.2e1) * t45 + (t25 * mrSges(3,1) + t13 * mrSges(4,1) - t26 * mrSges(3,2) - t14 * mrSges(4,2) + Ifges(3,5) * t40 + Ifges(4,5) * t30 + Ifges(3,6) * t39 + Ifges(4,6) * t29 + (Ifges(4,3) / 0.2e1 + Ifges(3,3) / 0.2e1) * t44) * t44 + (t6 * mrSges(5,1) - t4 * mrSges(6,1) - t1 * mrSges(7,1) - t7 * mrSges(5,2) + t2 * mrSges(7,2) + t5 * mrSges(6,3) + (Ifges(6,2) / 0.2e1 + Ifges(5,3) / 0.2e1 + Ifges(7,3) / 0.2e1) * t28) * t28 + (-t62 * mrSges(5,2) + t4 * mrSges(6,2) + t3 * mrSges(7,2) - t6 * mrSges(5,3) - t8 * mrSges(6,3) - t1 * mrSges(7,3) + (Ifges(6,1) / 0.2e1 + Ifges(5,1) / 0.2e1 + Ifges(7,1) / 0.2e1) * t24 + (Ifges(6,4) + Ifges(5,5) - Ifges(7,5)) * t28) * t24 + (-t62 * mrSges(5,1) + t8 * mrSges(6,1) - t3 * mrSges(7,1) - t5 * mrSges(6,2) - t7 * mrSges(5,3) + t2 * mrSges(7,3) + (Ifges(6,3) / 0.2e1 + Ifges(5,2) / 0.2e1 + Ifges(7,2) / 0.2e1) * t23 + (-Ifges(5,6) + Ifges(6,6) - Ifges(7,6)) * t28 + (-Ifges(5,4) + Ifges(7,4) + Ifges(6,5)) * t24) * t23;
T  = t9;
