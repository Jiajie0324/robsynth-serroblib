% Calculate kinetic energy for
% S6RPPRPR2
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
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d6,theta2,theta3]';
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
% Datum: 2019-03-09 01:42
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6RPPRPR2_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRPR2_energykin_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRPR2_energykin_floatb_twist_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S6RPPRPR2_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPPRPR2_energykin_floatb_twist_slag_vp2: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPPRPR2_energykin_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RPPRPR2_energykin_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RPPRPR2_energykin_floatb_twist_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 01:41:27
% EndTime: 2019-03-09 01:41:28
% DurationCPUTime: 0.97s
% Computational Cost: add. (2563->153), mult. (3783->209), div. (0->0), fcn. (3024->10), ass. (0->55)
t68 = pkin(4) + pkin(8);
t67 = cos(qJ(4));
t52 = V_base(5) * pkin(6) + V_base(1);
t53 = -V_base(4) * pkin(6) + V_base(2);
t61 = sin(qJ(1));
t63 = cos(qJ(1));
t43 = -t52 * t61 + t63 * t53;
t48 = t61 * V_base(5) + t63 * V_base(4);
t54 = V_base(6) + qJD(1);
t36 = pkin(1) * t54 - qJ(2) * t48 + t43;
t44 = t63 * t52 + t61 * t53;
t47 = -t61 * V_base(4) + t63 * V_base(5);
t39 = qJ(2) * t47 + t44;
t56 = sin(pkin(9));
t58 = cos(pkin(9));
t31 = t56 * t36 + t58 * t39;
t26 = qJ(3) * t54 + t31;
t41 = -t58 * t47 + t48 * t56;
t42 = t47 * t56 + t48 * t58;
t45 = -pkin(1) * t47 + qJD(2) + V_base(3);
t29 = pkin(2) * t41 - qJ(3) * t42 + t45;
t55 = sin(pkin(10));
t57 = cos(pkin(10));
t16 = -t26 * t55 + t57 * t29;
t34 = t42 * t57 + t54 * t55;
t12 = pkin(3) * t41 - pkin(7) * t34 + t16;
t17 = t57 * t26 + t55 * t29;
t33 = -t42 * t55 + t54 * t57;
t15 = pkin(7) * t33 + t17;
t60 = sin(qJ(4));
t8 = t60 * t12 + t67 * t15;
t30 = t36 * t58 - t56 * t39;
t40 = qJD(4) + t41;
t6 = -qJ(5) * t40 - t8;
t7 = t12 * t67 - t60 * t15;
t66 = qJD(5) - t7;
t23 = t60 * t33 + t34 * t67;
t25 = -pkin(2) * t54 + qJD(3) - t30;
t20 = -pkin(3) * t33 + t25;
t65 = -qJ(5) * t23 + t20;
t64 = V_base(3) ^ 2;
t62 = cos(qJ(6));
t59 = sin(qJ(6));
t22 = -t33 * t67 + t34 * t60;
t21 = qJD(6) + t23;
t19 = t22 * t59 + t40 * t62;
t18 = t22 * t62 - t40 * t59;
t10 = pkin(4) * t22 + t65;
t9 = t22 * t68 + t65;
t5 = -t40 * pkin(4) + t66;
t4 = -pkin(5) * t22 - t6;
t3 = t23 * pkin(5) - t40 * t68 + t66;
t2 = t3 * t59 + t62 * t9;
t1 = t3 * t62 - t59 * t9;
t11 = m(2) * (t43 ^ 2 + t44 ^ 2 + t64) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + t64) / 0.2e1 + m(3) * (t30 ^ 2 + t31 ^ 2 + t45 ^ 2) / 0.2e1 + m(4) * (t16 ^ 2 + t17 ^ 2 + t25 ^ 2) / 0.2e1 + m(5) * (t20 ^ 2 + t7 ^ 2 + t8 ^ 2) / 0.2e1 + m(6) * (t10 ^ 2 + t5 ^ 2 + t6 ^ 2) / 0.2e1 + m(7) * (t1 ^ 2 + t2 ^ 2 + t4 ^ 2) / 0.2e1 + (V_base(2) * mrSges(1,1) - V_base(1) * mrSges(1,2) + Ifges(1,3) * V_base(6) / 0.2e1) * V_base(6) + (V_base(3) * mrSges(2,2) - t43 * mrSges(2,3) + Ifges(2,1) * t48 / 0.2e1) * t48 + (t45 * mrSges(3,2) - t30 * mrSges(3,3) + Ifges(3,1) * t42 / 0.2e1) * t42 + (t25 * mrSges(4,2) - t16 * mrSges(4,3) + Ifges(4,1) * t34 / 0.2e1) * t34 + (t1 * mrSges(7,1) - t2 * mrSges(7,2) + Ifges(7,3) * t21 / 0.2e1) * t21 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,6) * V_base(6) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (-V_base(3) * mrSges(2,1) + t44 * mrSges(2,3) + Ifges(2,4) * t48 + Ifges(2,2) * t47 / 0.2e1) * t47 + (-t25 * mrSges(4,1) + t17 * mrSges(4,3) + Ifges(4,4) * t34 + Ifges(4,2) * t33 / 0.2e1) * t33 + (t4 * mrSges(7,2) - t1 * mrSges(7,3) + Ifges(7,5) * t21 + Ifges(7,1) * t19 / 0.2e1) * t19 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,5) * V_base(6) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (-t4 * mrSges(7,1) + t2 * mrSges(7,3) + Ifges(7,4) * t19 + Ifges(7,6) * t21 + Ifges(7,2) * t18 / 0.2e1) * t18 + (t7 * mrSges(5,1) - t8 * mrSges(5,2) + t5 * mrSges(6,2) - t6 * mrSges(6,3) + (Ifges(5,3) / 0.2e1 + Ifges(6,1) / 0.2e1) * t40) * t40 + (t5 * mrSges(6,1) + t20 * mrSges(5,2) - t7 * mrSges(5,3) - t10 * mrSges(6,3) + (Ifges(5,1) / 0.2e1 + Ifges(6,2) / 0.2e1) * t23 + (-Ifges(6,4) + Ifges(5,5)) * t40) * t23 + (t43 * mrSges(2,1) + t30 * mrSges(3,1) - t44 * mrSges(2,2) - t31 * mrSges(3,2) + Ifges(2,5) * t48 + Ifges(3,5) * t42 + Ifges(2,6) * t47 + (Ifges(2,3) / 0.2e1 + Ifges(3,3) / 0.2e1) * t54) * t54 + (t45 * mrSges(3,1) + t16 * mrSges(4,1) - t17 * mrSges(4,2) - t31 * mrSges(3,3) - Ifges(3,4) * t42 + Ifges(4,5) * t34 - Ifges(3,6) * t54 + Ifges(4,6) * t33 + (Ifges(3,2) / 0.2e1 + Ifges(4,3) / 0.2e1) * t41) * t41 + (t20 * mrSges(5,1) + t6 * mrSges(6,1) - t10 * mrSges(6,2) - t8 * mrSges(5,3) + (Ifges(5,2) / 0.2e1 + Ifges(6,3) / 0.2e1) * t22 + (Ifges(6,5) - Ifges(5,6)) * t40 + (-Ifges(5,4) - Ifges(6,6)) * t23) * t22;
T  = t11;
