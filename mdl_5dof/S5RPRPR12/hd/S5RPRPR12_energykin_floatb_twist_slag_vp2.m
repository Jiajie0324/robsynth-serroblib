% Calculate kinetic energy for
% S5RPRPR12
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% V_base [6x1]
%   Base Velocity (twist: stacked translational and angular velocity) in base frame
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d5,theta2,theta4]';
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
% T [1x1]
%   kinetic energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 18:31
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S5RPRPR12_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(6,1),zeros(9,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRPR12_energykin_floatb_twist_slag_vp2: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRPR12_energykin_floatb_twist_slag_vp2: qJD has to be [5x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S5RPRPR12_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RPRPR12_energykin_floatb_twist_slag_vp2: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPRPR12_energykin_floatb_twist_slag_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RPRPR12_energykin_floatb_twist_slag_vp2: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5RPRPR12_energykin_floatb_twist_slag_vp2: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 18:29:21
% EndTime: 2019-12-31 18:29:22
% DurationCPUTime: 0.83s
% Computational Cost: add. (1951->132), mult. (2614->191), div. (0->0), fcn. (2036->10), ass. (0->49)
t58 = sin(qJ(1));
t60 = cos(qJ(1));
t43 = t58 * V_base(4) - t60 * V_base(5);
t44 = t58 * V_base(5) + t60 * V_base(4);
t33 = pkin(1) * t43 - qJ(2) * t44 + V_base(3);
t48 = V_base(5) * pkin(5) + V_base(1);
t49 = -V_base(4) * pkin(5) + V_base(2);
t41 = t60 * t48 + t58 * t49;
t51 = V_base(6) + qJD(1);
t37 = qJ(2) * t51 + t41;
t53 = sin(pkin(8));
t55 = cos(pkin(8));
t25 = t55 * t33 - t37 * t53;
t39 = t44 * t55 + t51 * t53;
t19 = pkin(2) * t43 - pkin(6) * t39 + t25;
t26 = t53 * t33 + t55 * t37;
t38 = -t44 * t53 + t51 * t55;
t22 = pkin(6) * t38 + t26;
t57 = sin(qJ(3));
t62 = cos(qJ(3));
t12 = t57 * t19 + t62 * t22;
t42 = qJD(3) + t43;
t10 = qJ(4) * t42 + t12;
t28 = -t62 * t38 + t39 * t57;
t29 = t57 * t38 + t62 * t39;
t40 = -t58 * t48 + t49 * t60;
t35 = -pkin(1) * t51 + qJD(2) - t40;
t30 = -pkin(2) * t38 + t35;
t15 = pkin(3) * t28 - qJ(4) * t29 + t30;
t52 = sin(pkin(9));
t54 = cos(pkin(9));
t6 = t54 * t10 + t52 * t15;
t5 = -t10 * t52 + t54 * t15;
t11 = t62 * t19 - t57 * t22;
t9 = -t42 * pkin(3) + qJD(4) - t11;
t61 = V_base(3) ^ 2;
t59 = cos(qJ(5));
t56 = sin(qJ(5));
t27 = qJD(5) + t28;
t24 = t29 * t54 + t42 * t52;
t23 = -t29 * t52 + t42 * t54;
t17 = t23 * t56 + t24 * t59;
t16 = t23 * t59 - t24 * t56;
t7 = -t23 * pkin(4) + t9;
t4 = pkin(7) * t23 + t6;
t3 = pkin(4) * t28 - pkin(7) * t24 + t5;
t2 = t3 * t56 + t4 * t59;
t1 = t3 * t59 - t4 * t56;
t8 = m(2) * (t40 ^ 2 + t41 ^ 2 + t61) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + t61) / 0.2e1 + m(4) * (t11 ^ 2 + t12 ^ 2 + t30 ^ 2) / 0.2e1 + m(3) * (t25 ^ 2 + t26 ^ 2 + t35 ^ 2) / 0.2e1 + m(6) * (t1 ^ 2 + t2 ^ 2 + t7 ^ 2) / 0.2e1 + m(5) * (t5 ^ 2 + t6 ^ 2 + t9 ^ 2) / 0.2e1 + (V_base(2) * mrSges(1,1) - V_base(1) * mrSges(1,2) + Ifges(1,3) * V_base(6) / 0.2e1) * V_base(6) + (t40 * mrSges(2,1) - t41 * mrSges(2,2) + Ifges(2,3) * t51 / 0.2e1) * t51 + (t11 * mrSges(4,1) - t12 * mrSges(4,2) + Ifges(4,3) * t42 / 0.2e1) * t42 + (t35 * mrSges(3,2) - t25 * mrSges(3,3) + Ifges(3,1) * t39 / 0.2e1) * t39 + (t1 * mrSges(6,1) - t2 * mrSges(6,2) + Ifges(6,3) * t27 / 0.2e1) * t27 + (t9 * mrSges(5,2) - t5 * mrSges(5,3) + Ifges(5,1) * t24 / 0.2e1) * t24 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,6) * V_base(6) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (V_base(3) * mrSges(2,2) - t40 * mrSges(2,3) + Ifges(2,5) * t51 + Ifges(2,1) * t44 / 0.2e1) * t44 + (-t35 * mrSges(3,1) + t26 * mrSges(3,3) + Ifges(3,4) * t39 + Ifges(3,2) * t38 / 0.2e1) * t38 + (t30 * mrSges(4,2) - t11 * mrSges(4,3) + Ifges(4,5) * t42 + Ifges(4,1) * t29 / 0.2e1) * t29 + (-t9 * mrSges(5,1) + t6 * mrSges(5,3) + Ifges(5,4) * t24 + Ifges(5,2) * t23 / 0.2e1) * t23 + (t7 * mrSges(6,2) - t1 * mrSges(6,3) + Ifges(6,5) * t27 + Ifges(6,1) * t17 / 0.2e1) * t17 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,5) * V_base(6) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (-t7 * mrSges(6,1) + t2 * mrSges(6,3) + Ifges(6,4) * t17 + Ifges(6,6) * t27 + Ifges(6,2) * t16 / 0.2e1) * t16 + (V_base(3) * mrSges(2,1) + t25 * mrSges(3,1) - t26 * mrSges(3,2) - t41 * mrSges(2,3) - Ifges(2,4) * t44 + Ifges(3,5) * t39 - Ifges(2,6) * t51 + Ifges(3,6) * t38 + (Ifges(3,3) / 0.2e1 + Ifges(2,2) / 0.2e1) * t43) * t43 + (t30 * mrSges(4,1) + t5 * mrSges(5,1) - t6 * mrSges(5,2) - t12 * mrSges(4,3) - Ifges(4,4) * t29 + Ifges(5,5) * t24 - Ifges(4,6) * t42 + Ifges(5,6) * t23 + (Ifges(4,2) / 0.2e1 + Ifges(5,3) / 0.2e1) * t28) * t28;
T = t8;
