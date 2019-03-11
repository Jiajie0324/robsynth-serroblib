% Calculate kinetic energy for
% S6RPPRRR5
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
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d5,d6]';
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
% Datum: 2019-03-09 02:29
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6RPPRRR5_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(9,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRRR5_energykin_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRRR5_energykin_floatb_twist_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S6RPPRRR5_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPPRRR5_energykin_floatb_twist_slag_vp2: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPPRRR5_energykin_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RPPRRR5_energykin_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RPPRRR5_energykin_floatb_twist_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 02:28:11
% EndTime: 2019-03-09 02:28:11
% DurationCPUTime: 0.83s
% Computational Cost: add. (1435->151), mult. (1809->196), div. (0->0), fcn. (1220->8), ass. (0->50)
t56 = sin(qJ(1));
t63 = cos(qJ(1));
t40 = t56 * V_base(4) - t63 * V_base(5);
t52 = V_base(6) + qJD(1);
t46 = pkin(6) * V_base(5) + V_base(1);
t47 = -pkin(6) * V_base(4) + V_base(2);
t35 = t46 * t63 + t47 * t56;
t31 = -qJ(2) * t52 - t35;
t62 = qJD(3) - t31;
t20 = -pkin(7) * t52 + (-pkin(2) - pkin(3)) * t40 + t62;
t37 = t40 * qJ(3);
t41 = t56 * V_base(5) + t63 * V_base(4);
t61 = pkin(1) * t40 + V_base(3);
t22 = t37 + (pkin(7) - qJ(2)) * t41 + t61;
t55 = sin(qJ(4));
t59 = cos(qJ(4));
t13 = t20 * t55 + t22 * t59;
t32 = t41 * t59 - t52 * t55;
t11 = pkin(8) * t32 + t13;
t54 = sin(qJ(5));
t58 = cos(qJ(5));
t12 = t20 * t59 - t22 * t55;
t33 = t41 * t55 + t52 * t59;
t39 = qJD(4) - t40;
t9 = pkin(4) * t39 - pkin(8) * t33 + t12;
t6 = t11 * t58 + t54 * t9;
t34 = -t46 * t56 + t47 * t63;
t30 = -pkin(1) * t52 + qJD(2) - t34;
t5 = -t11 * t54 + t58 * t9;
t24 = t32 * t58 - t33 * t54;
t26 = pkin(2) * t41 - qJ(3) * t52 + t30;
t29 = -qJ(2) * t41 + t61;
t19 = -pkin(3) * t41 - t26;
t14 = -pkin(4) * t32 + t19;
t60 = V_base(3) ^ 2;
t57 = cos(qJ(6));
t53 = sin(qJ(6));
t36 = qJD(5) + t39;
t28 = -pkin(2) * t40 + t62;
t27 = t29 + t37;
t25 = t32 * t54 + t33 * t58;
t23 = qJD(6) - t24;
t16 = t25 * t57 + t36 * t53;
t15 = -t25 * t53 + t36 * t57;
t7 = -pkin(5) * t24 - pkin(9) * t25 + t14;
t4 = pkin(9) * t36 + t6;
t3 = -pkin(5) * t36 - t5;
t2 = t4 * t57 + t53 * t7;
t1 = -t4 * t53 + t57 * t7;
t8 = m(2) * (t34 ^ 2 + t35 ^ 2 + t60) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + t60) / 0.2e1 + m(3) * (t29 ^ 2 + t30 ^ 2 + t31 ^ 2) / 0.2e1 + m(4) * (t26 ^ 2 + t27 ^ 2 + t28 ^ 2) / 0.2e1 + m(6) * (t14 ^ 2 + t5 ^ 2 + t6 ^ 2) / 0.2e1 + m(5) * (t12 ^ 2 + t13 ^ 2 + t19 ^ 2) / 0.2e1 + m(7) * (t1 ^ 2 + t2 ^ 2 + t3 ^ 2) / 0.2e1 + (V_base(2) * mrSges(1,1) - V_base(1) * mrSges(1,2) + Ifges(1,3) * V_base(6) / 0.2e1) * V_base(6) + (t12 * mrSges(5,1) - t13 * mrSges(5,2) + Ifges(5,3) * t39 / 0.2e1) * t39 + (t5 * mrSges(6,1) - t6 * mrSges(6,2) + Ifges(6,3) * t36 / 0.2e1) * t36 + (t1 * mrSges(7,1) - t2 * mrSges(7,2) + Ifges(7,3) * t23 / 0.2e1) * t23 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,6) * V_base(6) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (t19 * mrSges(5,2) - t12 * mrSges(5,3) + Ifges(5,5) * t39 + Ifges(5,1) * t33 / 0.2e1) * t33 + (t14 * mrSges(6,2) - t5 * mrSges(6,3) + Ifges(6,5) * t36 + Ifges(6,1) * t25 / 0.2e1) * t25 + (t3 * mrSges(7,2) - t1 * mrSges(7,3) + Ifges(7,5) * t23 + Ifges(7,1) * t16 / 0.2e1) * t16 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,5) * V_base(6) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (-t19 * mrSges(5,1) + t13 * mrSges(5,3) + Ifges(5,4) * t33 + Ifges(5,6) * t39 + Ifges(5,2) * t32 / 0.2e1) * t32 + (-t14 * mrSges(6,1) + t6 * mrSges(6,3) + Ifges(6,4) * t25 + Ifges(6,6) * t36 + Ifges(6,2) * t24 / 0.2e1) * t24 + (-t3 * mrSges(7,1) + t2 * mrSges(7,3) + Ifges(7,4) * t16 + Ifges(7,6) * t23 + Ifges(7,2) * t15 / 0.2e1) * t15 + (t34 * mrSges(2,1) - t35 * mrSges(2,2) + t30 * mrSges(3,2) + t28 * mrSges(4,2) - t31 * mrSges(3,3) - t26 * mrSges(4,3) + (Ifges(2,3) / 0.2e1 + Ifges(4,1) / 0.2e1 + Ifges(3,1) / 0.2e1) * t52) * t52 + (t30 * mrSges(3,1) + t26 * mrSges(4,1) + V_base(3) * mrSges(2,2) - t27 * mrSges(4,2) - t34 * mrSges(2,3) - t29 * mrSges(3,3) + (Ifges(2,1) / 0.2e1 + Ifges(4,3) / 0.2e1 + Ifges(3,2) / 0.2e1) * t41 + (-Ifges(3,4) + Ifges(2,5) + Ifges(4,5)) * t52) * t41 + (V_base(3) * mrSges(2,1) + t31 * mrSges(3,1) - t28 * mrSges(4,1) - t29 * mrSges(3,2) - t35 * mrSges(2,3) + t27 * mrSges(4,3) + (Ifges(2,2) / 0.2e1 + Ifges(4,2) / 0.2e1 + Ifges(3,3) / 0.2e1) * t40 + (Ifges(4,4) + Ifges(3,5) - Ifges(2,6)) * t52 + (-Ifges(2,4) - Ifges(3,6) + Ifges(4,6)) * t41) * t40;
T  = t8;
