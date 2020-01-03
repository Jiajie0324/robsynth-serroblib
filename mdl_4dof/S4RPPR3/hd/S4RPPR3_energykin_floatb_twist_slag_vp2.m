% Calculate kinetic energy for
% S4RPPR3
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
%   pkin=[a2,a3,a4,d1,d4,theta2,theta3]';
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
% Datum: 2019-12-31 16:38
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S4RPPR3_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(6,1),zeros(7,1),zeros(5,1),zeros(5,3),zeros(5,6)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RPPR3_energykin_floatb_twist_slag_vp2: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RPPR3_energykin_floatb_twist_slag_vp2: qJD has to be [4x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S4RPPR3_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4RPPR3_energykin_floatb_twist_slag_vp2: pkin has to be [7x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4RPPR3_energykin_floatb_twist_slag_vp2: m has to be [5x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [5,3]), ...
  'S4RPPR3_energykin_floatb_twist_slag_vp2: mrSges has to be [5x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [5 6]), ...
  'S4RPPR3_energykin_floatb_twist_slag_vp2: Ifges has to be [5x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 16:37:48
% EndTime: 2019-12-31 16:37:49
% DurationCPUTime: 0.52s
% Computational Cost: add. (921->108), mult. (1357->156), div. (0->0), fcn. (996->8), ass. (0->39)
t37 = V_base(5) * pkin(4) + V_base(1);
t38 = -V_base(4) * pkin(4) + V_base(2);
t44 = sin(qJ(1));
t46 = cos(qJ(1));
t28 = -t37 * t44 + t46 * t38;
t33 = t44 * V_base(5) + t46 * V_base(4);
t39 = V_base(6) + qJD(1);
t21 = pkin(1) * t39 - qJ(2) * t33 + t28;
t29 = t46 * t37 + t44 * t38;
t32 = -t44 * V_base(4) + t46 * V_base(5);
t24 = qJ(2) * t32 + t29;
t41 = sin(pkin(6));
t48 = cos(pkin(6));
t17 = t41 * t21 + t48 * t24;
t12 = qJ(3) * t39 + t17;
t26 = -t48 * t32 + t33 * t41;
t27 = t41 * t32 + t48 * t33;
t30 = -pkin(1) * t32 + qJD(2) + V_base(3);
t15 = pkin(2) * t26 - qJ(3) * t27 + t30;
t40 = sin(pkin(7));
t42 = cos(pkin(7));
t6 = t42 * t12 + t40 * t15;
t5 = -t12 * t40 + t42 * t15;
t16 = t48 * t21 - t41 * t24;
t11 = -t39 * pkin(2) + qJD(3) - t16;
t47 = V_base(3) ^ 2;
t45 = cos(qJ(4));
t43 = sin(qJ(4));
t25 = qJD(4) + t26;
t19 = t27 * t42 + t39 * t40;
t18 = -t27 * t40 + t39 * t42;
t9 = t18 * t43 + t19 * t45;
t8 = t18 * t45 - t19 * t43;
t7 = -t18 * pkin(3) + t11;
t4 = pkin(5) * t18 + t6;
t3 = pkin(3) * t26 - pkin(5) * t19 + t5;
t2 = t3 * t43 + t4 * t45;
t1 = t3 * t45 - t4 * t43;
t10 = m(2) * (t28 ^ 2 + t29 ^ 2 + t47) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + t47) / 0.2e1 + m(3) * (t16 ^ 2 + t17 ^ 2 + t30 ^ 2) / 0.2e1 + m(4) * (t11 ^ 2 + t5 ^ 2 + t6 ^ 2) / 0.2e1 + m(5) * (t1 ^ 2 + t2 ^ 2 + t7 ^ 2) / 0.2e1 + (V_base(2) * mrSges(1,1) - V_base(1) * mrSges(1,2) + Ifges(1,3) * V_base(6) / 0.2e1) * V_base(6) + (t7 * mrSges(5,2) - t1 * mrSges(5,3) + Ifges(5,1) * t9 / 0.2e1) * t9 + (V_base(3) * mrSges(2,2) - t28 * mrSges(2,3) + Ifges(2,1) * t33 / 0.2e1) * t33 + (t30 * mrSges(3,2) - t16 * mrSges(3,3) + Ifges(3,1) * t27 / 0.2e1) * t27 + (t11 * mrSges(4,2) - t5 * mrSges(4,3) + Ifges(4,1) * t19 / 0.2e1) * t19 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,6) * V_base(6) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (-t7 * mrSges(5,1) + t2 * mrSges(5,3) + Ifges(5,4) * t9 + Ifges(5,2) * t8 / 0.2e1) * t8 + (-V_base(3) * mrSges(2,1) + t29 * mrSges(2,3) + Ifges(2,4) * t33 + Ifges(2,2) * t32 / 0.2e1) * t32 + (-t11 * mrSges(4,1) + t6 * mrSges(4,3) + Ifges(4,4) * t19 + Ifges(4,2) * t18 / 0.2e1) * t18 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,5) * V_base(6) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (t1 * mrSges(5,1) - t2 * mrSges(5,2) + Ifges(5,5) * t9 + Ifges(5,6) * t8 + Ifges(5,3) * t25 / 0.2e1) * t25 + (t28 * mrSges(2,1) + t16 * mrSges(3,1) - t29 * mrSges(2,2) - t17 * mrSges(3,2) + Ifges(2,5) * t33 + Ifges(3,5) * t27 + Ifges(2,6) * t32 + (Ifges(3,3) / 0.2e1 + Ifges(2,3) / 0.2e1) * t39) * t39 + (t30 * mrSges(3,1) + t5 * mrSges(4,1) - t6 * mrSges(4,2) - t17 * mrSges(3,3) - Ifges(3,4) * t27 + Ifges(4,5) * t19 - Ifges(3,6) * t39 + Ifges(4,6) * t18 + (Ifges(3,2) / 0.2e1 + Ifges(4,3) / 0.2e1) * t26) * t26;
T = t10;
