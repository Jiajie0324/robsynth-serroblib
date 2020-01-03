% Calculate kinetic energy for
% S5RPPRP6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% V_base [6x1]
%   Base Velocity (twist: stacked translational and angular velocity) in base frame
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d4,theta3]';
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
% Datum: 2019-12-31 17:55
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S5RPPRP6_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(6,1),zeros(7,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPPRP6_energykin_floatb_twist_slag_vp2: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPPRP6_energykin_floatb_twist_slag_vp2: qJD has to be [5x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S5RPPRP6_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S5RPPRP6_energykin_floatb_twist_slag_vp2: pkin has to be [7x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPPRP6_energykin_floatb_twist_slag_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RPPRP6_energykin_floatb_twist_slag_vp2: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5RPPRP6_energykin_floatb_twist_slag_vp2: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:54:54
% EndTime: 2019-12-31 17:54:54
% DurationCPUTime: 0.60s
% Computational Cost: add. (957->125), mult. (1238->159), div. (0->0), fcn. (820->6), ass. (0->39)
t42 = sin(qJ(4));
t48 = cos(qJ(4));
t43 = sin(qJ(1));
t49 = cos(qJ(1));
t31 = t43 * V_base(5) + t49 * V_base(4);
t39 = V_base(6) + qJD(1);
t35 = V_base(5) * pkin(5) + V_base(1);
t36 = -V_base(4) * pkin(5) + V_base(2);
t27 = -t43 * t35 + t49 * t36;
t45 = qJD(2) - t27;
t47 = pkin(1) + qJ(3);
t17 = t31 * pkin(2) - t47 * t39 + t45;
t30 = t43 * V_base(4) - t49 * V_base(5);
t46 = -qJ(2) * t31 + V_base(3);
t19 = t47 * t30 + t46;
t40 = sin(pkin(7));
t41 = cos(pkin(7));
t10 = t41 * t17 - t19 * t40;
t26 = t30 * t40 + t39 * t41;
t7 = pkin(3) * t31 - pkin(6) * t26 + t10;
t11 = t40 * t17 + t41 * t19;
t25 = t30 * t41 - t39 * t40;
t9 = pkin(6) * t25 + t11;
t4 = t42 * t7 + t48 * t9;
t28 = t49 * t35 + t43 * t36;
t24 = -t39 * qJ(2) - t28;
t3 = -t42 * t9 + t48 * t7;
t20 = -pkin(2) * t30 + qJD(3) - t24;
t12 = -pkin(3) * t25 + t20;
t44 = V_base(3) ^ 2;
t29 = qJD(4) + t31;
t22 = -t39 * pkin(1) + t45;
t21 = pkin(1) * t30 + t46;
t14 = t42 * t25 + t48 * t26;
t13 = -t48 * t25 + t26 * t42;
t5 = pkin(4) * t13 - qJ(5) * t14 + t12;
t2 = qJ(5) * t29 + t4;
t1 = -t29 * pkin(4) + qJD(5) - t3;
t6 = m(2) * (t27 ^ 2 + t28 ^ 2 + t44) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + t44) / 0.2e1 + m(3) * (t21 ^ 2 + t22 ^ 2 + t24 ^ 2) / 0.2e1 + m(4) * (t10 ^ 2 + t11 ^ 2 + t20 ^ 2) / 0.2e1 + m(6) * (t1 ^ 2 + t2 ^ 2 + t5 ^ 2) / 0.2e1 + m(5) * (t12 ^ 2 + t3 ^ 2 + t4 ^ 2) / 0.2e1 + (V_base(2) * mrSges(1,1) - V_base(1) * mrSges(1,2) + Ifges(1,3) * V_base(6) / 0.2e1) * V_base(6) + (t20 * mrSges(4,2) - t10 * mrSges(4,3) + Ifges(4,1) * t26 / 0.2e1) * t26 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,6) * V_base(6) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (-t20 * mrSges(4,1) + t11 * mrSges(4,3) + Ifges(4,4) * t26 + Ifges(4,2) * t25 / 0.2e1) * t25 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,5) * V_base(6) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (t27 * mrSges(2,1) - t28 * mrSges(2,2) + t22 * mrSges(3,2) - t24 * mrSges(3,3) + (Ifges(2,3) / 0.2e1 + Ifges(3,1) / 0.2e1) * t39) * t39 + (t3 * mrSges(5,1) - t1 * mrSges(6,1) - t4 * mrSges(5,2) + t2 * mrSges(6,3) + (Ifges(5,3) / 0.2e1 + Ifges(6,2) / 0.2e1) * t29) * t29 + (V_base(3) * mrSges(2,1) + t24 * mrSges(3,1) - t21 * mrSges(3,2) - t28 * mrSges(2,3) + (Ifges(3,3) / 0.2e1 + Ifges(2,2) / 0.2e1) * t30 + (Ifges(3,5) - Ifges(2,6)) * t39) * t30 + (t12 * mrSges(5,2) + t1 * mrSges(6,2) - t3 * mrSges(5,3) - t5 * mrSges(6,3) + (Ifges(5,1) / 0.2e1 + Ifges(6,1) / 0.2e1) * t14 + (Ifges(6,4) + Ifges(5,5)) * t29) * t14 + (t12 * mrSges(5,1) + t5 * mrSges(6,1) - t2 * mrSges(6,2) - t4 * mrSges(5,3) + (Ifges(5,2) / 0.2e1 + Ifges(6,3) / 0.2e1) * t13 + (-Ifges(5,6) + Ifges(6,6)) * t29 + (-Ifges(5,4) + Ifges(6,5)) * t14) * t13 + (t22 * mrSges(3,1) + t10 * mrSges(4,1) + V_base(3) * mrSges(2,2) - t11 * mrSges(4,2) - t27 * mrSges(2,3) - t21 * mrSges(3,3) + Ifges(4,5) * t26 + Ifges(4,6) * t25 + (Ifges(4,3) / 0.2e1 + Ifges(3,2) / 0.2e1 + Ifges(2,1) / 0.2e1) * t31 + (-Ifges(3,4) + Ifges(2,5)) * t39 + (-Ifges(2,4) - Ifges(3,6)) * t30) * t31;
T = t6;
