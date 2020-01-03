% Calculate kinetic energy for
% S4RPRR4
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
% Datum: 2019-12-31 16:50
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S4RPRR4_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(6,1),zeros(7,1),zeros(5,1),zeros(5,3),zeros(5,6)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RPRR4_energykin_floatb_twist_slag_vp2: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RPRR4_energykin_floatb_twist_slag_vp2: qJD has to be [4x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S4RPRR4_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4RPRR4_energykin_floatb_twist_slag_vp2: pkin has to be [7x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4RPRR4_energykin_floatb_twist_slag_vp2: m has to be [5x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [5,3]), ...
  'S4RPRR4_energykin_floatb_twist_slag_vp2: mrSges has to be [5x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [5 6]), ...
  'S4RPRR4_energykin_floatb_twist_slag_vp2: Ifges has to be [5x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 16:50:12
% EndTime: 2019-12-31 16:50:12
% DurationCPUTime: 0.56s
% Computational Cost: add. (901->108), mult. (1303->158), div. (0->0), fcn. (948->8), ass. (0->40)
t36 = V_base(5) * pkin(4) + V_base(1);
t37 = -V_base(4) * pkin(4) + V_base(2);
t43 = sin(qJ(1));
t46 = cos(qJ(1));
t28 = -t36 * t43 + t46 * t37;
t32 = t43 * V_base(5) + t46 * V_base(4);
t38 = V_base(6) + qJD(1);
t21 = pkin(1) * t38 - qJ(2) * t32 + t28;
t29 = t46 * t36 + t43 * t37;
t31 = -t43 * V_base(4) + t46 * V_base(5);
t24 = qJ(2) * t31 + t29;
t39 = sin(pkin(7));
t40 = cos(pkin(7));
t16 = t39 * t21 + t40 * t24;
t10 = pkin(5) * t38 + t16;
t26 = t31 * t40 - t32 * t39;
t27 = t31 * t39 + t32 * t40;
t30 = -pkin(1) * t31 + qJD(2) + V_base(3);
t12 = -pkin(2) * t26 - pkin(5) * t27 + t30;
t42 = sin(qJ(3));
t45 = cos(qJ(3));
t6 = t45 * t10 + t42 * t12;
t15 = t21 * t40 - t39 * t24;
t5 = -t10 * t42 + t12 * t45;
t19 = -t27 * t42 + t38 * t45;
t9 = -pkin(2) * t38 - t15;
t47 = V_base(3) ^ 2;
t44 = cos(qJ(4));
t41 = sin(qJ(4));
t25 = qJD(3) - t26;
t20 = t27 * t45 + t38 * t42;
t17 = qJD(4) - t19;
t14 = t20 * t44 + t25 * t41;
t13 = -t20 * t41 + t25 * t44;
t7 = -pkin(3) * t19 - pkin(6) * t20 + t9;
t4 = pkin(6) * t25 + t6;
t3 = -pkin(3) * t25 - t5;
t2 = t4 * t44 + t41 * t7;
t1 = -t4 * t41 + t44 * t7;
t8 = m(2) * (t28 ^ 2 + t29 ^ 2 + t47) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + t47) / 0.2e1 + m(3) * (t15 ^ 2 + t16 ^ 2 + t30 ^ 2) / 0.2e1 + m(5) * (t1 ^ 2 + t2 ^ 2 + t3 ^ 2) / 0.2e1 + m(4) * (t5 ^ 2 + t6 ^ 2 + t9 ^ 2) / 0.2e1 + (V_base(2) * mrSges(1,1) - V_base(1) * mrSges(1,2) + Ifges(1,3) * V_base(6) / 0.2e1) * V_base(6) + (V_base(3) * mrSges(2,2) - t28 * mrSges(2,3) + Ifges(2,1) * t32 / 0.2e1) * t32 + (t30 * mrSges(3,2) - t15 * mrSges(3,3) + Ifges(3,1) * t27 / 0.2e1) * t27 + (t5 * mrSges(4,1) - t6 * mrSges(4,2) + Ifges(4,3) * t25 / 0.2e1) * t25 + (t1 * mrSges(5,1) - t2 * mrSges(5,2) + Ifges(5,3) * t17 / 0.2e1) * t17 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,6) * V_base(6) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (-V_base(3) * mrSges(2,1) + t29 * mrSges(2,3) + Ifges(2,4) * t32 + Ifges(2,2) * t31 / 0.2e1) * t31 + (-t30 * mrSges(3,1) + t16 * mrSges(3,3) + Ifges(3,4) * t27 + Ifges(3,2) * t26 / 0.2e1) * t26 + (t9 * mrSges(4,2) - t5 * mrSges(4,3) + Ifges(4,5) * t25 + Ifges(4,1) * t20 / 0.2e1) * t20 + (t3 * mrSges(5,2) - t1 * mrSges(5,3) + Ifges(5,5) * t17 + Ifges(5,1) * t14 / 0.2e1) * t14 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,5) * V_base(6) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (-t9 * mrSges(4,1) + t6 * mrSges(4,3) + Ifges(4,4) * t20 + Ifges(4,6) * t25 + Ifges(4,2) * t19 / 0.2e1) * t19 + (-t3 * mrSges(5,1) + t2 * mrSges(5,3) + Ifges(5,4) * t14 + Ifges(5,6) * t17 + Ifges(5,2) * t13 / 0.2e1) * t13 + (t28 * mrSges(2,1) + t15 * mrSges(3,1) - t29 * mrSges(2,2) - t16 * mrSges(3,2) + Ifges(2,5) * t32 + Ifges(3,5) * t27 + Ifges(2,6) * t31 + Ifges(3,6) * t26 + (Ifges(3,3) / 0.2e1 + Ifges(2,3) / 0.2e1) * t38) * t38;
T = t8;
