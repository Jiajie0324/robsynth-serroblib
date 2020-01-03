% Calculate kinetic energy for
% S5RRPRP9
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
%   pkin=[a2,a3,a4,a5,d1,d2,d4,theta3]';
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
% Datum: 2019-12-31 20:08
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S5RRPRP9_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(6,1),zeros(8,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRP9_energykin_floatb_twist_slag_vp2: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPRP9_energykin_floatb_twist_slag_vp2: qJD has to be [5x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S5RRPRP9_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RRPRP9_energykin_floatb_twist_slag_vp2: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRPRP9_energykin_floatb_twist_slag_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RRPRP9_energykin_floatb_twist_slag_vp2: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5RRPRP9_energykin_floatb_twist_slag_vp2: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 20:05:36
% EndTime: 2019-12-31 20:05:37
% DurationCPUTime: 0.74s
% Computational Cost: add. (1567->128), mult. (2024->176), div. (0->0), fcn. (1524->8), ass. (0->43)
t49 = sin(qJ(4));
t55 = cos(qJ(4));
t51 = sin(qJ(1));
t53 = cos(qJ(1));
t38 = -t51 * V_base(4) + t53 * V_base(5);
t39 = t51 * V_base(5) + t53 * V_base(4);
t27 = -pkin(1) * t38 - pkin(6) * t39 + V_base(3);
t44 = V_base(5) * pkin(5) + V_base(1);
t45 = -V_base(4) * pkin(5) + V_base(2);
t36 = t53 * t44 + t51 * t45;
t46 = V_base(6) + qJD(1);
t31 = pkin(6) * t46 + t36;
t50 = sin(qJ(2));
t52 = cos(qJ(2));
t22 = t50 * t27 + t52 * t31;
t37 = qJD(2) - t38;
t19 = qJ(3) * t37 + t22;
t35 = -t51 * t44 + t45 * t53;
t30 = -pkin(1) * t46 - t35;
t33 = t39 * t50 - t52 * t46;
t34 = t39 * t52 + t46 * t50;
t20 = pkin(2) * t33 - qJ(3) * t34 + t30;
t47 = sin(pkin(8));
t48 = cos(pkin(8));
t10 = -t19 * t47 + t48 * t20;
t25 = t34 * t48 + t37 * t47;
t7 = pkin(3) * t33 - pkin(7) * t25 + t10;
t11 = t48 * t19 + t47 * t20;
t24 = -t34 * t47 + t37 * t48;
t9 = pkin(7) * t24 + t11;
t4 = t49 * t7 + t55 * t9;
t21 = t27 * t52 - t50 * t31;
t3 = -t49 * t9 + t55 * t7;
t18 = -pkin(2) * t37 + qJD(3) - t21;
t12 = -pkin(3) * t24 + t18;
t54 = V_base(3) ^ 2;
t32 = qJD(4) + t33;
t14 = t49 * t24 + t55 * t25;
t13 = -t55 * t24 + t25 * t49;
t5 = pkin(4) * t13 - qJ(5) * t14 + t12;
t2 = qJ(5) * t32 + t4;
t1 = -t32 * pkin(4) + qJD(5) - t3;
t6 = m(2) * (t35 ^ 2 + t36 ^ 2 + t54) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + t54) / 0.2e1 + m(3) * (t21 ^ 2 + t22 ^ 2 + t30 ^ 2) / 0.2e1 + m(4) * (t10 ^ 2 + t11 ^ 2 + t18 ^ 2) / 0.2e1 + m(5) * (t12 ^ 2 + t3 ^ 2 + t4 ^ 2) / 0.2e1 + m(6) * (t1 ^ 2 + t2 ^ 2 + t5 ^ 2) / 0.2e1 + (V_base(2) * mrSges(1,1) - V_base(1) * mrSges(1,2) + Ifges(1,3) * V_base(6) / 0.2e1) * V_base(6) + (t35 * mrSges(2,1) - t36 * mrSges(2,2) + Ifges(2,3) * t46 / 0.2e1) * t46 + (t21 * mrSges(3,1) - t22 * mrSges(3,2) + Ifges(3,3) * t37 / 0.2e1) * t37 + (t18 * mrSges(4,2) - t10 * mrSges(4,3) + Ifges(4,1) * t25 / 0.2e1) * t25 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,6) * V_base(6) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (V_base(3) * mrSges(2,2) - t35 * mrSges(2,3) + Ifges(2,5) * t46 + Ifges(2,1) * t39 / 0.2e1) * t39 + (t30 * mrSges(3,2) - t21 * mrSges(3,3) + Ifges(3,5) * t37 + Ifges(3,1) * t34 / 0.2e1) * t34 + (-t18 * mrSges(4,1) + t11 * mrSges(4,3) + Ifges(4,4) * t25 + Ifges(4,2) * t24 / 0.2e1) * t24 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,5) * V_base(6) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (-V_base(3) * mrSges(2,1) + t36 * mrSges(2,3) + Ifges(2,4) * t39 + Ifges(2,6) * t46 + Ifges(2,2) * t38 / 0.2e1) * t38 + (t3 * mrSges(5,1) - t1 * mrSges(6,1) - t4 * mrSges(5,2) + t2 * mrSges(6,3) + (Ifges(5,3) / 0.2e1 + Ifges(6,2) / 0.2e1) * t32) * t32 + (t12 * mrSges(5,2) + t1 * mrSges(6,2) - t3 * mrSges(5,3) - t5 * mrSges(6,3) + (Ifges(5,1) / 0.2e1 + Ifges(6,1) / 0.2e1) * t14 + (Ifges(6,4) + Ifges(5,5)) * t32) * t14 + (t30 * mrSges(3,1) + t10 * mrSges(4,1) - t11 * mrSges(4,2) - t22 * mrSges(3,3) - Ifges(3,4) * t34 + Ifges(4,5) * t25 - Ifges(3,6) * t37 + Ifges(4,6) * t24 + (Ifges(3,2) / 0.2e1 + Ifges(4,3) / 0.2e1) * t33) * t33 + (t12 * mrSges(5,1) + t5 * mrSges(6,1) - t2 * mrSges(6,2) - t4 * mrSges(5,3) + (Ifges(5,2) / 0.2e1 + Ifges(6,3) / 0.2e1) * t13 + (-Ifges(5,6) + Ifges(6,6)) * t32 + (-Ifges(5,4) + Ifges(6,5)) * t14) * t13;
T = t6;
