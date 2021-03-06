% Calculate kinetic energy for
% S4RRRR3
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
%   pkin=[a2,a3,a4,d1,d2,d3,d4]';
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
% Datum: 2019-12-31 17:24
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S4RRRR3_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(6,1),zeros(7,1),zeros(5,1),zeros(5,3),zeros(5,6)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RRRR3_energykin_floatb_twist_slag_vp2: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RRRR3_energykin_floatb_twist_slag_vp2: qJD has to be [4x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S4RRRR3_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4RRRR3_energykin_floatb_twist_slag_vp2: pkin has to be [7x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4RRRR3_energykin_floatb_twist_slag_vp2: m has to be [5x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [5,3]), ...
  'S4RRRR3_energykin_floatb_twist_slag_vp2: mrSges has to be [5x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [5 6]), ...
  'S4RRRR3_energykin_floatb_twist_slag_vp2: Ifges has to be [5x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:24:14
% EndTime: 2019-12-31 17:24:15
% DurationCPUTime: 0.64s
% Computational Cost: add. (1043->108), mult. (1377->160), div. (0->0), fcn. (1012->8), ass. (0->41)
t45 = sin(qJ(1));
t49 = cos(qJ(1));
t33 = -t45 * V_base(4) + t49 * V_base(5);
t34 = t45 * V_base(5) + t49 * V_base(4);
t22 = -pkin(1) * t33 - pkin(5) * t34 + V_base(3);
t38 = V_base(5) * pkin(4) + V_base(1);
t39 = -V_base(4) * pkin(4) + V_base(2);
t29 = t49 * t38 + t45 * t39;
t41 = V_base(6) + qJD(1);
t25 = pkin(5) * t41 + t29;
t44 = sin(qJ(2));
t48 = cos(qJ(2));
t15 = t48 * t22 - t25 * t44;
t27 = t34 * t48 + t41 * t44;
t32 = qJD(2) - t33;
t12 = pkin(2) * t32 - pkin(6) * t27 + t15;
t16 = t44 * t22 + t48 * t25;
t26 = -t34 * t44 + t41 * t48;
t14 = pkin(6) * t26 + t16;
t43 = sin(qJ(3));
t47 = cos(qJ(3));
t6 = t43 * t12 + t47 * t14;
t5 = t47 * t12 - t14 * t43;
t28 = -t45 * t38 + t39 * t49;
t24 = -pkin(1) * t41 - t28;
t31 = qJD(3) + t32;
t19 = -pkin(2) * t26 + t24;
t50 = V_base(3) ^ 2;
t46 = cos(qJ(4));
t42 = sin(qJ(4));
t30 = qJD(4) + t31;
t18 = t26 * t43 + t27 * t47;
t17 = t26 * t47 - t27 * t43;
t9 = -pkin(3) * t17 + t19;
t8 = t17 * t42 + t18 * t46;
t7 = t17 * t46 - t18 * t42;
t4 = pkin(7) * t17 + t6;
t3 = pkin(3) * t31 - pkin(7) * t18 + t5;
t2 = t3 * t42 + t4 * t46;
t1 = t3 * t46 - t4 * t42;
t10 = m(2) * (t28 ^ 2 + t29 ^ 2 + t50) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + t50) / 0.2e1 + m(4) * (t19 ^ 2 + t5 ^ 2 + t6 ^ 2) / 0.2e1 + m(3) * (t15 ^ 2 + t16 ^ 2 + t24 ^ 2) / 0.2e1 + m(5) * (t1 ^ 2 + t2 ^ 2 + t9 ^ 2) / 0.2e1 + (V_base(2) * mrSges(1,1) - V_base(1) * mrSges(1,2) + Ifges(1,3) * V_base(6) / 0.2e1) * V_base(6) + (t9 * mrSges(5,2) - t1 * mrSges(5,3) + Ifges(5,1) * t8 / 0.2e1) * t8 + (t28 * mrSges(2,1) - t29 * mrSges(2,2) + Ifges(2,3) * t41 / 0.2e1) * t41 + (t15 * mrSges(3,1) - t16 * mrSges(3,2) + Ifges(3,3) * t32 / 0.2e1) * t32 + (t5 * mrSges(4,1) - t6 * mrSges(4,2) + Ifges(4,3) * t31 / 0.2e1) * t31 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,6) * V_base(6) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (-t9 * mrSges(5,1) + t2 * mrSges(5,3) + Ifges(5,4) * t8 + Ifges(5,2) * t7 / 0.2e1) * t7 + (V_base(3) * mrSges(2,2) - t28 * mrSges(2,3) + Ifges(2,5) * t41 + Ifges(2,1) * t34 / 0.2e1) * t34 + (t24 * mrSges(3,2) - t15 * mrSges(3,3) + Ifges(3,5) * t32 + Ifges(3,1) * t27 / 0.2e1) * t27 + (t19 * mrSges(4,2) - t5 * mrSges(4,3) + Ifges(4,5) * t31 + Ifges(4,1) * t18 / 0.2e1) * t18 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,5) * V_base(6) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (-V_base(3) * mrSges(2,1) + t29 * mrSges(2,3) + Ifges(2,4) * t34 + Ifges(2,6) * t41 + Ifges(2,2) * t33 / 0.2e1) * t33 + (t1 * mrSges(5,1) - t2 * mrSges(5,2) + Ifges(5,5) * t8 + Ifges(5,6) * t7 + Ifges(5,3) * t30 / 0.2e1) * t30 + (-t24 * mrSges(3,1) + t16 * mrSges(3,3) + Ifges(3,4) * t27 + Ifges(3,6) * t32 + Ifges(3,2) * t26 / 0.2e1) * t26 + (-t19 * mrSges(4,1) + t6 * mrSges(4,3) + Ifges(4,4) * t18 + Ifges(4,6) * t31 + Ifges(4,2) * t17 / 0.2e1) * t17;
T = t10;
