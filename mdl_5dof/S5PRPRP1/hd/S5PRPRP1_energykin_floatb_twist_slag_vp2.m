% Calculate kinetic energy for
% S5PRPRP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% V_base [6x1]
%   Base Velocity (twist: stacked translational and angular velocity) in base frame
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d4,theta1,theta3]';
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
% Datum: 2019-12-05 15:29
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S5PRPRP1_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(6,1),zeros(8,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRPRP1_energykin_floatb_twist_slag_vp2: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRPRP1_energykin_floatb_twist_slag_vp2: qJD has to be [5x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S5PRPRP1_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRPRP1_energykin_floatb_twist_slag_vp2: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5PRPRP1_energykin_floatb_twist_slag_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5PRPRP1_energykin_floatb_twist_slag_vp2: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5PRPRP1_energykin_floatb_twist_slag_vp2: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 15:28:14
% EndTime: 2019-12-05 15:28:15
% DurationCPUTime: 0.76s
% Computational Cost: add. (1459->128), mult. (2200->175), div. (0->0), fcn. (1684->8), ass. (0->42)
t51 = sin(qJ(4));
t54 = cos(qJ(4));
t43 = V_base(5) * qJ(1) + V_base(1);
t44 = -V_base(4) * qJ(1) + V_base(2);
t48 = sin(pkin(7));
t50 = cos(pkin(7));
t34 = -t43 * t48 + t50 * t44;
t39 = t48 * V_base(5) + t50 * V_base(4);
t27 = V_base(6) * pkin(1) - pkin(5) * t39 + t34;
t35 = t50 * t43 + t48 * t44;
t38 = -t48 * V_base(4) + t50 * V_base(5);
t30 = pkin(5) * t38 + t35;
t52 = sin(qJ(2));
t53 = cos(qJ(2));
t22 = t52 * t27 + t53 * t30;
t45 = V_base(6) + qJD(2);
t19 = qJ(3) * t45 + t22;
t32 = -t53 * t38 + t39 * t52;
t33 = t52 * t38 + t39 * t53;
t46 = V_base(3) + qJD(1);
t36 = -pkin(1) * t38 + t46;
t20 = pkin(2) * t32 - qJ(3) * t33 + t36;
t47 = sin(pkin(8));
t49 = cos(pkin(8));
t10 = -t19 * t47 + t49 * t20;
t25 = t33 * t49 + t45 * t47;
t7 = pkin(3) * t32 - pkin(6) * t25 + t10;
t11 = t49 * t19 + t47 * t20;
t24 = -t33 * t47 + t45 * t49;
t9 = pkin(6) * t24 + t11;
t4 = t51 * t7 + t54 * t9;
t21 = t27 * t53 - t52 * t30;
t3 = -t51 * t9 + t54 * t7;
t18 = -t45 * pkin(2) + qJD(3) - t21;
t12 = -t24 * pkin(3) + t18;
t31 = qJD(4) + t32;
t14 = t51 * t24 + t54 * t25;
t13 = -t54 * t24 + t25 * t51;
t5 = t13 * pkin(4) - t14 * qJ(5) + t12;
t2 = qJ(5) * t31 + t4;
t1 = -t31 * pkin(4) + qJD(5) - t3;
t6 = m(2) * (t34 ^ 2 + t35 ^ 2 + t46 ^ 2) / 0.2e1 + m(3) * (t21 ^ 2 + t22 ^ 2 + t36 ^ 2) / 0.2e1 + m(4) * (t10 ^ 2 + t11 ^ 2 + t18 ^ 2) / 0.2e1 + m(5) * (t12 ^ 2 + t3 ^ 2 + t4 ^ 2) / 0.2e1 + m(6) * (t1 ^ 2 + t2 ^ 2 + t5 ^ 2) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + V_base(3) ^ 2) / 0.2e1 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (t21 * mrSges(3,1) - t22 * mrSges(3,2) + Ifges(3,3) * t45 / 0.2e1) * t45 + (t46 * mrSges(2,2) - t34 * mrSges(2,3) + Ifges(2,1) * t39 / 0.2e1) * t39 + (t18 * mrSges(4,2) - t10 * mrSges(4,3) + Ifges(4,1) * t25 / 0.2e1) * t25 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (-t46 * mrSges(2,1) + t35 * mrSges(2,3) + Ifges(2,4) * t39 + Ifges(2,2) * t38 / 0.2e1) * t38 + (t36 * mrSges(3,2) - t21 * mrSges(3,3) + Ifges(3,5) * t45 + Ifges(3,1) * t33 / 0.2e1) * t33 + (-t18 * mrSges(4,1) + t11 * mrSges(4,3) + Ifges(4,4) * t25 + Ifges(4,2) * t24 / 0.2e1) * t24 + (t3 * mrSges(5,1) - t1 * mrSges(6,1) - t4 * mrSges(5,2) + t2 * mrSges(6,3) + (Ifges(6,2) / 0.2e1 + Ifges(5,3) / 0.2e1) * t31) * t31 + (t12 * mrSges(5,2) + t1 * mrSges(6,2) - t3 * mrSges(5,3) - t5 * mrSges(6,3) + (Ifges(6,1) / 0.2e1 + Ifges(5,1) / 0.2e1) * t14 + (Ifges(6,4) + Ifges(5,5)) * t31) * t14 + (V_base(2) * mrSges(1,1) + t34 * mrSges(2,1) - V_base(1) * mrSges(1,2) - t35 * mrSges(2,2) + Ifges(1,5) * V_base(4) + Ifges(2,5) * t39 + Ifges(1,6) * V_base(5) + Ifges(2,6) * t38 + (Ifges(2,3) / 0.2e1 + Ifges(1,3) / 0.2e1) * V_base(6)) * V_base(6) + (t36 * mrSges(3,1) + t10 * mrSges(4,1) - t11 * mrSges(4,2) - t22 * mrSges(3,3) - Ifges(3,4) * t33 + Ifges(4,5) * t25 - Ifges(3,6) * t45 + Ifges(4,6) * t24 + (Ifges(3,2) / 0.2e1 + Ifges(4,3) / 0.2e1) * t32) * t32 + (t12 * mrSges(5,1) + t5 * mrSges(6,1) - t2 * mrSges(6,2) - t4 * mrSges(5,3) + (Ifges(6,3) / 0.2e1 + Ifges(5,2) / 0.2e1) * t13 + (-Ifges(5,6) + Ifges(6,6)) * t31 + (-Ifges(5,4) + Ifges(6,5)) * t14) * t13;
T = t6;
