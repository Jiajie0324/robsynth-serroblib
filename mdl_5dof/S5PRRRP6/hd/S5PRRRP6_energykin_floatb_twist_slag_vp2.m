% Calculate kinetic energy for
% S5PRRRP6
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
%   pkin=[a2,a3,a4,a5,d2,d3,d4,theta1]';
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
% Datum: 2019-12-05 16:53
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S5PRRRP6_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(6,1),zeros(8,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRRP6_energykin_floatb_twist_slag_vp2: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRRP6_energykin_floatb_twist_slag_vp2: qJD has to be [5x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S5PRRRP6_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRRRP6_energykin_floatb_twist_slag_vp2: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5PRRRP6_energykin_floatb_twist_slag_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5PRRRP6_energykin_floatb_twist_slag_vp2: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5PRRRP6_energykin_floatb_twist_slag_vp2: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 16:50:41
% EndTime: 2019-12-05 16:50:42
% DurationCPUTime: 0.74s
% Computational Cost: add. (1395->128), mult. (2024->177), div. (0->0), fcn. (1524->8), ass. (0->43)
t50 = sin(qJ(4));
t55 = cos(qJ(4));
t48 = sin(pkin(8));
t49 = cos(pkin(8));
t40 = -t48 * V_base(4) + t49 * V_base(5);
t41 = t48 * V_base(5) + t49 * V_base(4);
t47 = V_base(3) + qJD(1);
t27 = -pkin(1) * t40 - pkin(5) * t41 + t47;
t45 = V_base(5) * qJ(1) + V_base(1);
t46 = -V_base(4) * qJ(1) + V_base(2);
t37 = t49 * t45 + t48 * t46;
t31 = V_base(6) * pkin(5) + t37;
t52 = sin(qJ(2));
t54 = cos(qJ(2));
t22 = t52 * t27 + t54 * t31;
t39 = qJD(2) - t40;
t17 = pkin(6) * t39 + t22;
t36 = -t48 * t45 + t46 * t49;
t30 = -V_base(6) * pkin(1) - t36;
t34 = -t52 * t41 + t54 * V_base(6);
t35 = t41 * t54 + t52 * V_base(6);
t20 = -pkin(2) * t34 - pkin(6) * t35 + t30;
t51 = sin(qJ(3));
t53 = cos(qJ(3));
t10 = -t17 * t51 + t53 * t20;
t25 = t35 * t53 + t39 * t51;
t33 = qJD(3) - t34;
t7 = pkin(3) * t33 - pkin(7) * t25 + t10;
t11 = t53 * t17 + t51 * t20;
t24 = -t35 * t51 + t39 * t53;
t9 = pkin(7) * t24 + t11;
t4 = t50 * t7 + t55 * t9;
t21 = t27 * t54 - t52 * t31;
t16 = -t39 * pkin(2) - t21;
t3 = -t50 * t9 + t55 * t7;
t12 = -t24 * pkin(3) + t16;
t32 = qJD(4) + t33;
t14 = t50 * t24 + t55 * t25;
t13 = -t55 * t24 + t25 * t50;
t5 = t13 * pkin(4) - t14 * qJ(5) + t12;
t2 = qJ(5) * t32 + t4;
t1 = -t32 * pkin(4) + qJD(5) - t3;
t6 = m(2) * (t36 ^ 2 + t37 ^ 2 + t47 ^ 2) / 0.2e1 + m(3) * (t21 ^ 2 + t22 ^ 2 + t30 ^ 2) / 0.2e1 + m(4) * (t10 ^ 2 + t11 ^ 2 + t16 ^ 2) / 0.2e1 + m(5) * (t12 ^ 2 + t3 ^ 2 + t4 ^ 2) / 0.2e1 + m(6) * (t1 ^ 2 + t2 ^ 2 + t5 ^ 2) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + V_base(3) ^ 2) / 0.2e1 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (t47 * mrSges(2,2) - t36 * mrSges(2,3) + Ifges(2,1) * t41 / 0.2e1) * t41 + (t21 * mrSges(3,1) - t22 * mrSges(3,2) + Ifges(3,3) * t39 / 0.2e1) * t39 + (t10 * mrSges(4,1) - t11 * mrSges(4,2) + Ifges(4,3) * t33 / 0.2e1) * t33 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (-t47 * mrSges(2,1) + t37 * mrSges(2,3) + Ifges(2,4) * t41 + Ifges(2,2) * t40 / 0.2e1) * t40 + (t30 * mrSges(3,2) - t21 * mrSges(3,3) + Ifges(3,5) * t39 + Ifges(3,1) * t35 / 0.2e1) * t35 + (t16 * mrSges(4,2) - t10 * mrSges(4,3) + Ifges(4,5) * t33 + Ifges(4,1) * t25 / 0.2e1) * t25 + (-t30 * mrSges(3,1) + t22 * mrSges(3,3) + Ifges(3,4) * t35 + Ifges(3,6) * t39 + Ifges(3,2) * t34 / 0.2e1) * t34 + (-t16 * mrSges(4,1) + t11 * mrSges(4,3) + Ifges(4,4) * t25 + Ifges(4,6) * t33 + Ifges(4,2) * t24 / 0.2e1) * t24 + (t3 * mrSges(5,1) - t1 * mrSges(6,1) - t4 * mrSges(5,2) + t2 * mrSges(6,3) + (Ifges(5,3) / 0.2e1 + Ifges(6,2) / 0.2e1) * t32) * t32 + (t12 * mrSges(5,2) + t1 * mrSges(6,2) - t3 * mrSges(5,3) - t5 * mrSges(6,3) + (Ifges(6,1) / 0.2e1 + Ifges(5,1) / 0.2e1) * t14 + (Ifges(6,4) + Ifges(5,5)) * t32) * t14 + (V_base(2) * mrSges(1,1) + t36 * mrSges(2,1) - V_base(1) * mrSges(1,2) - t37 * mrSges(2,2) + Ifges(1,5) * V_base(4) + Ifges(2,5) * t41 + Ifges(1,6) * V_base(5) + Ifges(2,6) * t40 + (Ifges(2,3) / 0.2e1 + Ifges(1,3) / 0.2e1) * V_base(6)) * V_base(6) + (t12 * mrSges(5,1) + t5 * mrSges(6,1) - t2 * mrSges(6,2) - t4 * mrSges(5,3) + (Ifges(5,2) / 0.2e1 + Ifges(6,3) / 0.2e1) * t13 + (-Ifges(5,6) + Ifges(6,6)) * t32 + (-Ifges(5,4) + Ifges(6,5)) * t14) * t13;
T = t6;
