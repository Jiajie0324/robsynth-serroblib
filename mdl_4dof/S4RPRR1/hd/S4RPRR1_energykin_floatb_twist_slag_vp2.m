% Calculate kinetic energy for
% S4RPRR1
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
%   pkin=[a2,a3,a4,d1,d3,d4,theta2]';
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
% Datum: 2019-03-08 18:32
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S4RPRR1_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(6,1),zeros(7,1),zeros(5,1),zeros(5,3),zeros(5,6)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RPRR1_energykin_floatb_twist_slag_vp2: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RPRR1_energykin_floatb_twist_slag_vp2: qJD has to be [4x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S4RPRR1_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4RPRR1_energykin_floatb_twist_slag_vp2: pkin has to be [7x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4RPRR1_energykin_floatb_twist_slag_vp2: m has to be [5x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [5,3]), ...
  'S4RPRR1_energykin_floatb_twist_slag_vp2: mrSges has to be [5x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [5 6]), ...
  'S4RPRR1_energykin_floatb_twist_slag_vp2: Ifges has to be [5x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 18:31:38
% EndTime: 2019-03-08 18:31:38
% DurationCPUTime: 0.53s
% Computational Cost: add. (1081->108), mult. (1673->158), div. (0->0), fcn. (1264->8), ass. (0->40)
t36 = V_base(5) * pkin(4) + V_base(1);
t37 = -V_base(4) * pkin(4) + V_base(2);
t44 = sin(qJ(1));
t47 = cos(qJ(1));
t27 = -t36 * t44 + t47 * t37;
t31 = t44 * V_base(5) + t47 * V_base(4);
t39 = V_base(6) + qJD(1);
t22 = pkin(1) * t39 - qJ(2) * t31 + t27;
t28 = t47 * t36 + t44 * t37;
t30 = -t44 * V_base(4) + t47 * V_base(5);
t24 = qJ(2) * t30 + t28;
t40 = sin(pkin(7));
t41 = cos(pkin(7));
t15 = t41 * t22 - t24 * t40;
t26 = t30 * t40 + t31 * t41;
t12 = pkin(2) * t39 - pkin(5) * t26 + t15;
t16 = t40 * t22 + t41 * t24;
t25 = t30 * t41 - t31 * t40;
t14 = pkin(5) * t25 + t16;
t43 = sin(qJ(3));
t46 = cos(qJ(3));
t6 = t43 * t12 + t46 * t14;
t5 = t46 * t12 - t14 * t43;
t38 = qJD(3) + t39;
t29 = -pkin(1) * t30 + qJD(2) + V_base(3);
t19 = -pkin(2) * t25 + t29;
t48 = V_base(3) ^ 2;
t45 = cos(qJ(4));
t42 = sin(qJ(4));
t35 = qJD(4) + t38;
t18 = t25 * t43 + t26 * t46;
t17 = t25 * t46 - t26 * t43;
t11 = -pkin(3) * t17 + t19;
t8 = t17 * t42 + t18 * t45;
t7 = t17 * t45 - t18 * t42;
t4 = pkin(6) * t17 + t6;
t3 = pkin(3) * t38 - pkin(6) * t18 + t5;
t2 = t3 * t42 + t4 * t45;
t1 = t3 * t45 - t4 * t42;
t9 = m(2) * (t27 ^ 2 + t28 ^ 2 + t48) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + t48) / 0.2e1 + m(3) * (t15 ^ 2 + t16 ^ 2 + t29 ^ 2) / 0.2e1 + m(4) * (t19 ^ 2 + t5 ^ 2 + t6 ^ 2) / 0.2e1 + m(5) * (t1 ^ 2 + t11 ^ 2 + t2 ^ 2) / 0.2e1 + (V_base(2) * mrSges(1,1) - V_base(1) * mrSges(1,2) + Ifges(1,3) * V_base(6) / 0.2e1) * V_base(6) + (t11 * mrSges(5,2) - t1 * mrSges(5,3) + Ifges(5,1) * t8 / 0.2e1) * t8 + (t5 * mrSges(4,1) - t6 * mrSges(4,2) + Ifges(4,3) * t38 / 0.2e1) * t38 + (V_base(3) * mrSges(2,2) - t27 * mrSges(2,3) + Ifges(2,1) * t31 / 0.2e1) * t31 + (t29 * mrSges(3,2) - t15 * mrSges(3,3) + Ifges(3,1) * t26 / 0.2e1) * t26 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,6) * V_base(6) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (-t11 * mrSges(5,1) + t2 * mrSges(5,3) + Ifges(5,4) * t8 + Ifges(5,2) * t7 / 0.2e1) * t7 + (-V_base(3) * mrSges(2,1) + t28 * mrSges(2,3) + Ifges(2,4) * t31 + Ifges(2,2) * t30 / 0.2e1) * t30 + (-t29 * mrSges(3,1) + t16 * mrSges(3,3) + Ifges(3,4) * t26 + Ifges(3,2) * t25 / 0.2e1) * t25 + (t19 * mrSges(4,2) - t5 * mrSges(4,3) + Ifges(4,5) * t38 + Ifges(4,1) * t18 / 0.2e1) * t18 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,5) * V_base(6) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (t1 * mrSges(5,1) - t2 * mrSges(5,2) + Ifges(5,5) * t8 + Ifges(5,6) * t7 + Ifges(5,3) * t35 / 0.2e1) * t35 + (-t19 * mrSges(4,1) + t6 * mrSges(4,3) + Ifges(4,4) * t18 + Ifges(4,6) * t38 + Ifges(4,2) * t17 / 0.2e1) * t17 + (t27 * mrSges(2,1) + t15 * mrSges(3,1) - t28 * mrSges(2,2) - t16 * mrSges(3,2) + Ifges(2,5) * t31 + Ifges(3,5) * t26 + Ifges(2,6) * t30 + Ifges(3,6) * t25 + (Ifges(3,3) / 0.2e1 + Ifges(2,3) / 0.2e1) * t39) * t39;
T  = t9;
