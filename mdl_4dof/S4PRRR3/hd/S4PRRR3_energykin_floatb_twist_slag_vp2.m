% Calculate kinetic energy for
% S4PRRR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% V_base [6x1]
%   Base Velocity (twist: stacked translational and angular velocity) in base frame
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d2,d3,d4,theta1]';
% m_mdh [5x1]
%   mass of all robot links (including the base)
% mrSges [5x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% Ifges [5x6]
%   inertia of all robot links about their respective body frame origins, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertial_parameters_convert_par1_par2.m)
% 
% Output:
% T [1x1]
%   kinetic energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 16:31
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S4PRRR3_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(6,1),zeros(7,1),zeros(5,1),zeros(5,3),zeros(5,6)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PRRR3_energykin_floatb_twist_slag_vp2: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4PRRR3_energykin_floatb_twist_slag_vp2: qJD has to be [4x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S4PRRR3_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4PRRR3_energykin_floatb_twist_slag_vp2: pkin has to be [7x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4PRRR3_energykin_floatb_twist_slag_vp2: m has to be [5x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [5,3]), ...
  'S4PRRR3_energykin_floatb_twist_slag_vp2: mrSges has to be [5x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [5 6]), ...
  'S4PRRR3_energykin_floatb_twist_slag_vp2: Ifges has to be [5x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 16:31:32
% EndTime: 2019-12-31 16:31:33
% DurationCPUTime: 0.56s
% Computational Cost: add. (953->108), mult. (1479->159), div. (0->0), fcn. (1100->8), ass. (0->40)
t35 = V_base(5) * qJ(1) + V_base(1);
t36 = -V_base(4) * qJ(1) + V_base(2);
t40 = sin(pkin(7));
t41 = cos(pkin(7));
t27 = -t35 * t40 + t41 * t36;
t31 = t40 * V_base(5) + t41 * V_base(4);
t22 = V_base(6) * pkin(1) - pkin(4) * t31 + t27;
t28 = t41 * t35 + t40 * t36;
t30 = -t40 * V_base(4) + t41 * V_base(5);
t24 = pkin(4) * t30 + t28;
t44 = sin(qJ(2));
t47 = cos(qJ(2));
t15 = t44 * t22 + t47 * t24;
t25 = t30 * t47 - t44 * t31;
t11 = pkin(5) * t25 + t15;
t43 = sin(qJ(3));
t46 = cos(qJ(3));
t14 = t47 * t22 - t24 * t44;
t26 = t44 * t30 + t31 * t47;
t38 = V_base(6) + qJD(2);
t9 = pkin(2) * t38 - pkin(5) * t26 + t14;
t6 = t46 * t11 + t43 * t9;
t39 = V_base(3) + qJD(1);
t5 = -t11 * t43 + t46 * t9;
t17 = t25 * t46 - t26 * t43;
t29 = -pkin(1) * t30 + t39;
t19 = -pkin(2) * t25 + t29;
t45 = cos(qJ(4));
t42 = sin(qJ(4));
t37 = qJD(3) + t38;
t18 = t25 * t43 + t26 * t46;
t16 = qJD(4) - t17;
t13 = t18 * t45 + t37 * t42;
t12 = -t18 * t42 + t37 * t45;
t7 = -pkin(3) * t17 - pkin(6) * t18 + t19;
t4 = pkin(6) * t37 + t6;
t3 = -pkin(3) * t37 - t5;
t2 = t4 * t45 + t42 * t7;
t1 = -t4 * t42 + t45 * t7;
t8 = m(2) * (t27 ^ 2 + t28 ^ 2 + t39 ^ 2) / 0.2e1 + m(3) * (t14 ^ 2 + t15 ^ 2 + t29 ^ 2) / 0.2e1 + m(4) * (t19 ^ 2 + t5 ^ 2 + t6 ^ 2) / 0.2e1 + m(5) * (t1 ^ 2 + t2 ^ 2 + t3 ^ 2) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + V_base(3) ^ 2) / 0.2e1 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (t14 * mrSges(3,1) - t15 * mrSges(3,2) + Ifges(3,3) * t38 / 0.2e1) * t38 + (t5 * mrSges(4,1) - t6 * mrSges(4,2) + Ifges(4,3) * t37 / 0.2e1) * t37 + (t39 * mrSges(2,2) - t27 * mrSges(2,3) + Ifges(2,1) * t31 / 0.2e1) * t31 + (t1 * mrSges(5,1) - t2 * mrSges(5,2) + Ifges(5,3) * t16 / 0.2e1) * t16 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (-t39 * mrSges(2,1) + t28 * mrSges(2,3) + Ifges(2,4) * t31 + Ifges(2,2) * t30 / 0.2e1) * t30 + (t29 * mrSges(3,2) - t14 * mrSges(3,3) + Ifges(3,5) * t38 + Ifges(3,1) * t26 / 0.2e1) * t26 + (t19 * mrSges(4,2) - t5 * mrSges(4,3) + Ifges(4,5) * t37 + Ifges(4,1) * t18 / 0.2e1) * t18 + (t3 * mrSges(5,2) - t1 * mrSges(5,3) + Ifges(5,5) * t16 + Ifges(5,1) * t13 / 0.2e1) * t13 + (-t29 * mrSges(3,1) + t15 * mrSges(3,3) + Ifges(3,4) * t26 + Ifges(3,6) * t38 + Ifges(3,2) * t25 / 0.2e1) * t25 + (-t19 * mrSges(4,1) + t6 * mrSges(4,3) + Ifges(4,4) * t18 + Ifges(4,6) * t37 + Ifges(4,2) * t17 / 0.2e1) * t17 + (-t3 * mrSges(5,1) + t2 * mrSges(5,3) + Ifges(5,4) * t13 + Ifges(5,6) * t16 + Ifges(5,2) * t12 / 0.2e1) * t12 + (V_base(2) * mrSges(1,1) + t27 * mrSges(2,1) - V_base(1) * mrSges(1,2) - t28 * mrSges(2,2) + Ifges(1,5) * V_base(4) + Ifges(2,5) * t31 + Ifges(1,6) * V_base(5) + Ifges(2,6) * t30 + (Ifges(2,3) / 0.2e1 + Ifges(1,3) / 0.2e1) * V_base(6)) * V_base(6);
T = t8;
