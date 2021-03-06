% Calculate kinetic energy for
% S5PPRRR5
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
%   pkin=[a2,a3,a4,a5,d3,d4,d5,theta1]';
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
% Datum: 2019-12-31 17:35
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S5PPRRR5_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(6,1),zeros(8,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PPRRR5_energykin_floatb_twist_slag_vp2: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PPRRR5_energykin_floatb_twist_slag_vp2: qJD has to be [5x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S5PPRRR5_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PPRRR5_energykin_floatb_twist_slag_vp2: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5PPRRR5_energykin_floatb_twist_slag_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5PPRRR5_energykin_floatb_twist_slag_vp2: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5PPRRR5_energykin_floatb_twist_slag_vp2: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:35:35
% EndTime: 2019-12-31 17:35:36
% DurationCPUTime: 0.71s
% Computational Cost: add. (1115->129), mult. (1660->177), div. (0->0), fcn. (1172->8), ass. (0->44)
t47 = sin(pkin(8));
t55 = cos(pkin(8));
t36 = t47 * V_base(5) + t55 * V_base(4);
t40 = qJ(1) * V_base(5) + V_base(1);
t41 = -qJ(1) * V_base(4) + V_base(2);
t31 = -t47 * t40 + t41 * t55;
t54 = qJD(2) - t31;
t23 = -t36 * pkin(5) + (-pkin(1) - pkin(2)) * V_base(6) + t54;
t32 = t55 * t40 + t47 * t41;
t30 = V_base(6) * qJ(2) + t32;
t35 = t47 * V_base(4) - t55 * V_base(5);
t25 = pkin(5) * t35 + t30;
t50 = sin(qJ(3));
t53 = cos(qJ(3));
t13 = t50 * t23 + t53 * t25;
t27 = t35 * t53 - t36 * t50;
t11 = pkin(6) * t27 + t13;
t49 = sin(qJ(4));
t52 = cos(qJ(4));
t12 = t53 * t23 - t25 * t50;
t28 = t35 * t50 + t36 * t53;
t44 = -V_base(6) + qJD(3);
t9 = pkin(3) * t44 - pkin(6) * t28 + t12;
t6 = t52 * t11 + t49 * t9;
t46 = V_base(3) + qJD(1);
t26 = t35 * pkin(1) - t36 * qJ(2) + t46;
t5 = -t11 * t49 + t52 * t9;
t18 = t27 * t52 - t28 * t49;
t22 = -pkin(2) * t35 - t26;
t16 = -pkin(3) * t27 + t22;
t51 = cos(qJ(5));
t48 = sin(qJ(5));
t43 = qJD(4) + t44;
t29 = -V_base(6) * pkin(1) + t54;
t19 = t27 * t49 + t28 * t52;
t17 = qJD(5) - t18;
t15 = t19 * t51 + t43 * t48;
t14 = -t19 * t48 + t43 * t51;
t7 = -pkin(4) * t18 - pkin(7) * t19 + t16;
t4 = pkin(7) * t43 + t6;
t3 = -pkin(4) * t43 - t5;
t2 = t4 * t51 + t48 * t7;
t1 = -t4 * t48 + t51 * t7;
t8 = m(2) * (t31 ^ 2 + t32 ^ 2 + t46 ^ 2) / 0.2e1 + m(3) * (t26 ^ 2 + t29 ^ 2 + t30 ^ 2) / 0.2e1 + m(4) * (t12 ^ 2 + t13 ^ 2 + t22 ^ 2) / 0.2e1 + m(5) * (t16 ^ 2 + t5 ^ 2 + t6 ^ 2) / 0.2e1 + m(6) * (t1 ^ 2 + t2 ^ 2 + t3 ^ 2) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + V_base(3) ^ 2) / 0.2e1 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (t12 * mrSges(4,1) - t13 * mrSges(4,2) + Ifges(4,3) * t44 / 0.2e1) * t44 + (t5 * mrSges(5,1) - t6 * mrSges(5,2) + Ifges(5,3) * t43 / 0.2e1) * t43 + (t1 * mrSges(6,1) - t2 * mrSges(6,2) + Ifges(6,3) * t17 / 0.2e1) * t17 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (t22 * mrSges(4,2) - t12 * mrSges(4,3) + Ifges(4,5) * t44 + Ifges(4,1) * t28 / 0.2e1) * t28 + (t16 * mrSges(5,2) - t5 * mrSges(5,3) + Ifges(5,5) * t43 + Ifges(5,1) * t19 / 0.2e1) * t19 + (t3 * mrSges(6,2) - t1 * mrSges(6,3) + Ifges(6,5) * t17 + Ifges(6,1) * t15 / 0.2e1) * t15 + (-t22 * mrSges(4,1) + t13 * mrSges(4,3) + Ifges(4,4) * t28 + Ifges(4,6) * t44 + Ifges(4,2) * t27 / 0.2e1) * t27 + (-t16 * mrSges(5,1) + t6 * mrSges(5,3) + Ifges(5,4) * t19 + Ifges(5,6) * t43 + Ifges(5,2) * t18 / 0.2e1) * t18 + (-t3 * mrSges(6,1) + t2 * mrSges(6,3) + Ifges(6,4) * t15 + Ifges(6,6) * t17 + Ifges(6,2) * t14 / 0.2e1) * t14 + (t46 * mrSges(2,2) + t29 * mrSges(3,2) - t31 * mrSges(2,3) - t26 * mrSges(3,3) + (Ifges(2,1) / 0.2e1 + Ifges(3,1) / 0.2e1) * t36) * t36 + (t46 * mrSges(2,1) + t26 * mrSges(3,1) - t30 * mrSges(3,2) - t32 * mrSges(2,3) + (Ifges(3,3) / 0.2e1 + Ifges(2,2) / 0.2e1) * t35 + (-Ifges(2,4) + Ifges(3,5)) * t36) * t35 + (V_base(2) * mrSges(1,1) + t31 * mrSges(2,1) - t29 * mrSges(3,1) - V_base(1) * mrSges(1,2) - t32 * mrSges(2,2) + t30 * mrSges(3,3) + Ifges(1,5) * V_base(4) + Ifges(1,6) * V_base(5) + (Ifges(3,2) / 0.2e1 + Ifges(2,3) / 0.2e1 + Ifges(1,3) / 0.2e1) * V_base(6) + (Ifges(3,4) + Ifges(2,5)) * t36 + (-Ifges(2,6) + Ifges(3,6)) * t35) * V_base(6);
T = t8;
