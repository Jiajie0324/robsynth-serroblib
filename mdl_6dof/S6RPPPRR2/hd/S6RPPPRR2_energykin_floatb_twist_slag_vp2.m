% Calculate kinetic energy for
% S6RPPPRR2
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
%   pkin=[a2,a3,a4,a5,a6,d1,d5,d6,theta2,theta4]';
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
% Datum: 2019-03-09 01:32
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6RPPPRR2_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPPRR2_energykin_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPPRR2_energykin_floatb_twist_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S6RPPPRR2_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPPPRR2_energykin_floatb_twist_slag_vp2: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPPPRR2_energykin_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RPPPRR2_energykin_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RPPPRR2_energykin_floatb_twist_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 01:31:37
% EndTime: 2019-03-09 01:31:38
% DurationCPUTime: 0.92s
% Computational Cost: add. (2287->153), mult. (3345->209), div. (0->0), fcn. (2608->10), ass. (0->55)
t59 = sin(qJ(1));
t62 = cos(qJ(1));
t45 = -t59 * V_base(4) + t62 * V_base(5);
t46 = t59 * V_base(5) + t62 * V_base(4);
t55 = sin(pkin(9));
t66 = cos(pkin(9));
t40 = t55 * t45 + t46 * t66;
t53 = V_base(6) + qJD(1);
t50 = V_base(5) * pkin(6) + V_base(1);
t51 = -V_base(4) * pkin(6) + V_base(2);
t41 = -t50 * t59 + t62 * t51;
t34 = pkin(1) * t53 - qJ(2) * t46 + t41;
t42 = t62 * t50 + t59 * t51;
t37 = qJ(2) * t45 + t42;
t29 = t34 * t66 - t55 * t37;
t65 = qJD(3) - t29;
t67 = pkin(2) + qJ(4);
t19 = t40 * pkin(3) - t53 * t67 + t65;
t39 = -t45 * t66 + t46 * t55;
t43 = -pkin(1) * t45 + qJD(2) + V_base(3);
t64 = -qJ(3) * t40 + t43;
t22 = t39 * t67 + t64;
t54 = sin(pkin(10));
t56 = cos(pkin(10));
t13 = t54 * t19 + t56 * t22;
t31 = t39 * t56 - t53 * t54;
t11 = pkin(7) * t31 + t13;
t58 = sin(qJ(5));
t61 = cos(qJ(5));
t12 = t56 * t19 - t22 * t54;
t32 = t39 * t54 + t53 * t56;
t9 = pkin(4) * t40 - pkin(7) * t32 + t12;
t6 = t61 * t11 + t58 * t9;
t30 = t55 * t34 + t66 * t37;
t27 = -t53 * qJ(3) - t30;
t5 = -t11 * t58 + t61 * t9;
t24 = t31 * t61 - t32 * t58;
t20 = -pkin(3) * t39 + qJD(4) - t27;
t14 = -pkin(4) * t31 + t20;
t63 = V_base(3) ^ 2;
t60 = cos(qJ(6));
t57 = sin(qJ(6));
t38 = qJD(5) + t40;
t28 = pkin(2) * t39 + t64;
t26 = -t53 * pkin(2) + t65;
t25 = t31 * t58 + t32 * t61;
t23 = qJD(6) - t24;
t16 = t25 * t60 + t38 * t57;
t15 = -t25 * t57 + t38 * t60;
t7 = -pkin(5) * t24 - pkin(8) * t25 + t14;
t4 = pkin(8) * t38 + t6;
t3 = -pkin(5) * t38 - t5;
t2 = t4 * t60 + t57 * t7;
t1 = -t4 * t57 + t60 * t7;
t8 = m(2) * (t41 ^ 2 + t42 ^ 2 + t63) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + t63) / 0.2e1 + m(3) * (t29 ^ 2 + t30 ^ 2 + t43 ^ 2) / 0.2e1 + m(4) * (t26 ^ 2 + t27 ^ 2 + t28 ^ 2) / 0.2e1 + m(5) * (t12 ^ 2 + t13 ^ 2 + t20 ^ 2) / 0.2e1 + m(7) * (t1 ^ 2 + t2 ^ 2 + t3 ^ 2) / 0.2e1 + m(6) * (t14 ^ 2 + t5 ^ 2 + t6 ^ 2) / 0.2e1 + (V_base(2) * mrSges(1,1) - V_base(1) * mrSges(1,2) + Ifges(1,3) * V_base(6) / 0.2e1) * V_base(6) + (V_base(3) * mrSges(2,2) - t41 * mrSges(2,3) + Ifges(2,1) * t46 / 0.2e1) * t46 + (t5 * mrSges(6,1) - t6 * mrSges(6,2) + Ifges(6,3) * t38 / 0.2e1) * t38 + (t20 * mrSges(5,2) - t12 * mrSges(5,3) + Ifges(5,1) * t32 / 0.2e1) * t32 + (t1 * mrSges(7,1) - t2 * mrSges(7,2) + Ifges(7,3) * t23 / 0.2e1) * t23 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,6) * V_base(6) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (-V_base(3) * mrSges(2,1) + t42 * mrSges(2,3) + Ifges(2,4) * t46 + Ifges(2,2) * t45 / 0.2e1) * t45 + (-t20 * mrSges(5,1) + t13 * mrSges(5,3) + Ifges(5,4) * t32 + Ifges(5,2) * t31 / 0.2e1) * t31 + (t14 * mrSges(6,2) - t5 * mrSges(6,3) + t38 * Ifges(6,5) + Ifges(6,1) * t25 / 0.2e1) * t25 + (t3 * mrSges(7,2) - t1 * mrSges(7,3) + Ifges(7,5) * t23 + Ifges(7,1) * t16 / 0.2e1) * t16 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,5) * V_base(6) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (-t14 * mrSges(6,1) + t6 * mrSges(6,3) + Ifges(6,4) * t25 + Ifges(6,6) * t38 + Ifges(6,2) * t24 / 0.2e1) * t24 + (-t3 * mrSges(7,1) + t2 * mrSges(7,3) + Ifges(7,4) * t16 + Ifges(7,6) * t23 + Ifges(7,2) * t15 / 0.2e1) * t15 + (t43 * mrSges(3,1) + t27 * mrSges(4,1) - t28 * mrSges(4,2) - t30 * mrSges(3,3) + (Ifges(3,2) / 0.2e1 + Ifges(4,3) / 0.2e1) * t39) * t39 + (t41 * mrSges(2,1) + t29 * mrSges(3,1) - t42 * mrSges(2,2) - t30 * mrSges(3,2) + t26 * mrSges(4,2) - t27 * mrSges(4,3) + Ifges(2,5) * t46 + Ifges(2,6) * t45 + (Ifges(2,3) / 0.2e1 + Ifges(3,3) / 0.2e1 + Ifges(4,1) / 0.2e1) * t53 + (Ifges(4,5) - Ifges(3,6)) * t39) * t53 + (t26 * mrSges(4,1) + t12 * mrSges(5,1) + t43 * mrSges(3,2) - t13 * mrSges(5,2) - t29 * mrSges(3,3) - t28 * mrSges(4,3) + Ifges(5,5) * t32 + Ifges(5,6) * t31 + (Ifges(3,1) / 0.2e1 + Ifges(4,2) / 0.2e1 + Ifges(5,3) / 0.2e1) * t40 + (-Ifges(4,4) + Ifges(3,5)) * t53 + (-Ifges(3,4) - Ifges(4,6)) * t39) * t40;
T  = t8;
