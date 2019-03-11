% Calculate kinetic energy for
% S6RPPRRP4
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
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d5,theta3]';
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
% Datum: 2019-03-09 02:06
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6RPPRRP4_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(9,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRRP4_energykin_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRRP4_energykin_floatb_twist_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S6RPPRRP4_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPPRRP4_energykin_floatb_twist_slag_vp2: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPPRRP4_energykin_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RPPRRP4_energykin_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RPPRRP4_energykin_floatb_twist_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 02:05:04
% EndTime: 2019-03-09 02:05:05
% DurationCPUTime: 0.83s
% Computational Cost: add. (1741->149), mult. (2345->194), div. (0->0), fcn. (1700->8), ass. (0->47)
t57 = sin(qJ(1));
t62 = cos(qJ(1));
t44 = t57 * V_base(5) + t62 * V_base(4);
t52 = V_base(6) + qJD(1);
t48 = pkin(6) * V_base(5) + V_base(1);
t49 = -pkin(6) * V_base(4) + V_base(2);
t39 = -t48 * t57 + t49 * t62;
t60 = qJD(2) - t39;
t24 = -t44 * qJ(3) + (-pkin(1) - pkin(2)) * t52 + t60;
t40 = t48 * t62 + t49 * t57;
t38 = qJ(2) * t52 + t40;
t43 = t57 * V_base(4) - t62 * V_base(5);
t31 = qJ(3) * t43 + t38;
t53 = sin(pkin(9));
t54 = cos(pkin(9));
t19 = t24 * t54 - t31 * t53;
t17 = pkin(3) * t52 - t19;
t35 = t43 * t53 + t44 * t54;
t56 = sin(qJ(4));
t58 = cos(qJ(4));
t29 = -t35 * t56 - t52 * t58;
t30 = t35 * t58 - t52 * t56;
t12 = -pkin(4) * t29 - pkin(8) * t30 + t17;
t55 = sin(qJ(5));
t61 = cos(qJ(5));
t36 = pkin(1) * t43 - qJ(2) * t44 + V_base(3);
t25 = -pkin(2) * t43 + qJD(3) - t36;
t34 = t43 * t54 - t44 * t53;
t14 = -pkin(3) * t34 - pkin(7) * t35 + t25;
t20 = t24 * t53 + t31 * t54;
t18 = -pkin(7) * t52 + t20;
t10 = t14 * t56 + t18 * t58;
t33 = qJD(4) - t34;
t8 = pkin(8) * t33 + t10;
t4 = t12 * t55 + t61 * t8;
t9 = t14 * t58 - t18 * t56;
t7 = -pkin(4) * t33 - t9;
t3 = t12 * t61 - t55 * t8;
t59 = V_base(3) ^ 2;
t37 = -pkin(1) * t52 + t60;
t26 = qJD(5) - t29;
t22 = t30 * t61 + t33 * t55;
t21 = t30 * t55 - t33 * t61;
t5 = pkin(5) * t21 - qJ(6) * t22 + t7;
t2 = qJ(6) * t26 + t4;
t1 = -pkin(5) * t26 + qJD(6) - t3;
t6 = m(2) * (t39 ^ 2 + t40 ^ 2 + t59) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + t59) / 0.2e1 + m(3) * (t36 ^ 2 + t37 ^ 2 + t38 ^ 2) / 0.2e1 + m(4) * (t19 ^ 2 + t20 ^ 2 + t25 ^ 2) / 0.2e1 + m(5) * (t10 ^ 2 + t17 ^ 2 + t9 ^ 2) / 0.2e1 + m(7) * (t1 ^ 2 + t2 ^ 2 + t5 ^ 2) / 0.2e1 + m(6) * (t3 ^ 2 + t4 ^ 2 + t7 ^ 2) / 0.2e1 + (V_base(2) * mrSges(1,1) - V_base(1) * mrSges(1,2) + Ifges(1,3) * V_base(6) / 0.2e1) * V_base(6) + (t25 * mrSges(4,2) - t19 * mrSges(4,3) + Ifges(4,1) * t35 / 0.2e1) * t35 + (t9 * mrSges(5,1) - t10 * mrSges(5,2) + Ifges(5,3) * t33 / 0.2e1) * t33 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,6) * V_base(6) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (-t25 * mrSges(4,1) + t20 * mrSges(4,3) + Ifges(4,4) * t35 + Ifges(4,2) * t34 / 0.2e1) * t34 + (t17 * mrSges(5,2) - t9 * mrSges(5,3) + Ifges(5,5) * t33 + Ifges(5,1) * t30 / 0.2e1) * t30 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,5) * V_base(6) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (-t17 * mrSges(5,1) + t10 * mrSges(5,3) + Ifges(5,4) * t30 + Ifges(5,6) * t33 + Ifges(5,2) * t29 / 0.2e1) * t29 + (V_base(3) * mrSges(2,2) + t37 * mrSges(3,2) - t39 * mrSges(2,3) - t36 * mrSges(3,3) + (Ifges(3,1) / 0.2e1 + Ifges(2,1) / 0.2e1) * t44) * t44 + (t3 * mrSges(6,1) - t1 * mrSges(7,1) - t4 * mrSges(6,2) + t2 * mrSges(7,3) + (Ifges(7,2) / 0.2e1 + Ifges(6,3) / 0.2e1) * t26) * t26 + (V_base(3) * mrSges(2,1) + t36 * mrSges(3,1) - t38 * mrSges(3,2) - t40 * mrSges(2,3) + (Ifges(3,3) / 0.2e1 + Ifges(2,2) / 0.2e1) * t43 + (-Ifges(2,4) + Ifges(3,5)) * t44) * t43 + (t7 * mrSges(6,2) + t1 * mrSges(7,2) - t3 * mrSges(6,3) - t5 * mrSges(7,3) + (Ifges(7,1) / 0.2e1 + Ifges(6,1) / 0.2e1) * t22 + (Ifges(7,4) + Ifges(6,5)) * t26) * t22 + (t7 * mrSges(6,1) + t5 * mrSges(7,1) - t2 * mrSges(7,2) - t4 * mrSges(6,3) + (Ifges(7,3) / 0.2e1 + Ifges(6,2) / 0.2e1) * t21 + (-Ifges(6,6) + Ifges(7,6)) * t26 + (-Ifges(6,4) + Ifges(7,5)) * t22) * t21 + (t39 * mrSges(2,1) - t37 * mrSges(3,1) - t19 * mrSges(4,1) - t40 * mrSges(2,2) + t20 * mrSges(4,2) + t38 * mrSges(3,3) - Ifges(4,5) * t35 - Ifges(4,6) * t34 + (Ifges(3,2) / 0.2e1 + Ifges(2,3) / 0.2e1 + Ifges(4,3) / 0.2e1) * t52 + (Ifges(3,4) + Ifges(2,5)) * t44 + (-Ifges(2,6) + Ifges(3,6)) * t43) * t52;
T  = t6;
