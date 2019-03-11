% Calculate kinetic energy for
% S6RRPPPR3
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d6,theta5]';
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
% Datum: 2019-03-09 08:16
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6RRPPPR3_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(9,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPPR3_energykin_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPPPR3_energykin_floatb_twist_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S6RRPPPR3_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRPPPR3_energykin_floatb_twist_slag_vp2: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRPPPR3_energykin_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRPPPR3_energykin_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RRPPPR3_energykin_floatb_twist_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 08:13:45
% EndTime: 2019-03-09 08:13:46
% DurationCPUTime: 0.76s
% Computational Cost: add. (1597->151), mult. (1991->194), div. (0->0), fcn. (1428->8), ass. (0->50)
t58 = sin(qJ(1));
t66 = cos(qJ(1));
t43 = t58 * V_base(5) + t66 * V_base(4);
t53 = V_base(6) + qJD(1);
t57 = sin(qJ(2));
t60 = cos(qJ(2));
t36 = t43 * t57 - t60 * t53;
t37 = t43 * t60 + t53 * t57;
t49 = V_base(5) * pkin(6) + V_base(1);
t50 = -V_base(4) * pkin(6) + V_base(2);
t38 = -t58 * t49 + t66 * t50;
t30 = -t53 * pkin(1) - t38;
t21 = t36 * pkin(2) - t37 * qJ(3) + t30;
t63 = qJD(4) - t21;
t65 = -pkin(3) - qJ(5);
t10 = pkin(4) * t37 + t65 * t36 + t63;
t42 = -t58 * V_base(4) + t66 * V_base(5);
t41 = qJD(2) - t42;
t27 = -pkin(1) * t42 - pkin(7) * t43 + V_base(3);
t39 = t66 * t49 + t58 * t50;
t31 = pkin(7) * t53 + t39;
t22 = t27 * t60 - t57 * t31;
t64 = qJD(3) - t22;
t62 = -qJ(4) * t37 + t64;
t12 = (-pkin(2) + t65) * t41 + t62;
t54 = sin(pkin(9));
t55 = cos(pkin(9));
t6 = t54 * t10 + t55 * t12;
t23 = t57 * t27 + t60 * t31;
t20 = t41 * qJ(3) + t23;
t5 = t55 * t10 - t12 * t54;
t15 = -t36 * qJ(4) - t20;
t13 = pkin(4) * t41 + qJD(5) - t15;
t61 = V_base(3) ^ 2;
t59 = cos(qJ(6));
t56 = sin(qJ(6));
t35 = qJD(6) + t37;
t25 = t36 * t55 - t41 * t54;
t24 = -t36 * t54 - t41 * t55;
t19 = -pkin(2) * t41 + t64;
t18 = t24 * t56 + t25 * t59;
t17 = t24 * t59 - t25 * t56;
t16 = -pkin(3) * t36 + t63;
t14 = (-pkin(2) - pkin(3)) * t41 + t62;
t7 = -pkin(5) * t24 + t13;
t4 = pkin(8) * t24 + t6;
t3 = pkin(5) * t37 - pkin(8) * t25 + t5;
t2 = t3 * t56 + t4 * t59;
t1 = t3 * t59 - t4 * t56;
t8 = m(2) * (t38 ^ 2 + t39 ^ 2 + t61) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + t61) / 0.2e1 + m(3) * (t22 ^ 2 + t23 ^ 2 + t30 ^ 2) / 0.2e1 + m(4) * (t19 ^ 2 + t20 ^ 2 + t21 ^ 2) / 0.2e1 + m(7) * (t1 ^ 2 + t2 ^ 2 + t7 ^ 2) / 0.2e1 + m(6) * (t13 ^ 2 + t5 ^ 2 + t6 ^ 2) / 0.2e1 + m(5) * (t14 ^ 2 + t15 ^ 2 + t16 ^ 2) / 0.2e1 + (V_base(2) * mrSges(1,1) - V_base(1) * mrSges(1,2) + Ifges(1,3) * V_base(6) / 0.2e1) * V_base(6) + (t38 * mrSges(2,1) - t39 * mrSges(2,2) + Ifges(2,3) * t53 / 0.2e1) * t53 + (t1 * mrSges(7,1) - t2 * mrSges(7,2) + Ifges(7,3) * t35 / 0.2e1) * t35 + (t13 * mrSges(6,2) - t5 * mrSges(6,3) + Ifges(6,1) * t25 / 0.2e1) * t25 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,6) * V_base(6) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (V_base(3) * mrSges(2,2) - t38 * mrSges(2,3) + Ifges(2,5) * t53 + Ifges(2,1) * t43 / 0.2e1) * t43 + (-t13 * mrSges(6,1) + t6 * mrSges(6,3) + Ifges(6,4) * t25 + Ifges(6,2) * t24 / 0.2e1) * t24 + (t7 * mrSges(7,2) - t1 * mrSges(7,3) + Ifges(7,5) * t35 + Ifges(7,1) * t18 / 0.2e1) * t18 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,5) * V_base(6) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (-V_base(3) * mrSges(2,1) + t39 * mrSges(2,3) + Ifges(2,4) * t43 + Ifges(2,6) * t53 + Ifges(2,2) * t42 / 0.2e1) * t42 + (-t7 * mrSges(7,1) + t2 * mrSges(7,3) + Ifges(7,4) * t18 + Ifges(7,6) * t35 + Ifges(7,2) * t17 / 0.2e1) * t17 + (t22 * mrSges(3,1) - t19 * mrSges(4,1) - t15 * mrSges(5,1) - t23 * mrSges(3,2) + t14 * mrSges(5,2) + t20 * mrSges(4,3) + (Ifges(5,3) / 0.2e1 + Ifges(4,2) / 0.2e1 + Ifges(3,3) / 0.2e1) * t41) * t41 + (t30 * mrSges(3,1) + t21 * mrSges(4,1) - t20 * mrSges(4,2) + t16 * mrSges(5,2) - t23 * mrSges(3,3) - t15 * mrSges(5,3) + (Ifges(5,1) / 0.2e1 + Ifges(4,3) / 0.2e1 + Ifges(3,2) / 0.2e1) * t36 + (-Ifges(5,5) - Ifges(3,6) + Ifges(4,6)) * t41) * t36 + (t16 * mrSges(5,1) + t5 * mrSges(6,1) + t30 * mrSges(3,2) + t19 * mrSges(4,2) - t6 * mrSges(6,2) - t22 * mrSges(3,3) - t21 * mrSges(4,3) - t14 * mrSges(5,3) + Ifges(6,5) * t25 + Ifges(6,6) * t24 + (Ifges(5,2) / 0.2e1 + Ifges(4,1) / 0.2e1 + Ifges(3,1) / 0.2e1 + Ifges(6,3) / 0.2e1) * t37 + (Ifges(4,4) + Ifges(3,5) + Ifges(5,6)) * t41 + (-Ifges(3,4) - Ifges(5,4) + Ifges(4,5)) * t36) * t37;
T  = t8;
