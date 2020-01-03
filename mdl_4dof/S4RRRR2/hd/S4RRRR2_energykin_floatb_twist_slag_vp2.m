% Calculate kinetic energy for
% S4RRRR2
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
% Datum: 2019-12-31 17:23
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S4RRRR2_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(6,1),zeros(7,1),zeros(5,1),zeros(5,3),zeros(5,6)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RRRR2_energykin_floatb_twist_slag_vp2: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RRRR2_energykin_floatb_twist_slag_vp2: qJD has to be [4x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S4RRRR2_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4RRRR2_energykin_floatb_twist_slag_vp2: pkin has to be [7x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4RRRR2_energykin_floatb_twist_slag_vp2: m has to be [5x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [5,3]), ...
  'S4RRRR2_energykin_floatb_twist_slag_vp2: mrSges has to be [5x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [5 6]), ...
  'S4RRRR2_energykin_floatb_twist_slag_vp2: Ifges has to be [5x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:23:05
% EndTime: 2019-12-31 17:23:06
% DurationCPUTime: 0.61s
% Computational Cost: add. (987->108), mult. (1357->160), div. (0->0), fcn. (996->8), ass. (0->41)
t38 = V_base(5) * pkin(4) + V_base(1);
t39 = -V_base(4) * pkin(4) + V_base(2);
t45 = sin(qJ(1));
t49 = cos(qJ(1));
t29 = -t38 * t45 + t49 * t39;
t34 = t45 * V_base(5) + t49 * V_base(4);
t41 = V_base(6) + qJD(1);
t21 = pkin(1) * t41 - pkin(5) * t34 + t29;
t30 = t49 * t38 + t45 * t39;
t33 = -t45 * V_base(4) + t49 * V_base(5);
t25 = pkin(5) * t33 + t30;
t44 = sin(qJ(2));
t48 = cos(qJ(2));
t17 = t44 * t21 + t48 * t25;
t40 = qJD(2) + t41;
t12 = pkin(6) * t40 + t17;
t27 = t33 * t48 - t44 * t34;
t28 = t33 * t44 + t34 * t48;
t31 = -pkin(1) * t33 + V_base(3);
t15 = -pkin(2) * t27 - pkin(6) * t28 + t31;
t43 = sin(qJ(3));
t47 = cos(qJ(3));
t6 = t47 * t12 + t43 * t15;
t5 = -t12 * t43 + t47 * t15;
t16 = t21 * t48 - t44 * t25;
t26 = qJD(3) - t27;
t11 = -pkin(2) * t40 - t16;
t50 = V_base(3) ^ 2;
t46 = cos(qJ(4));
t42 = sin(qJ(4));
t24 = qJD(4) + t26;
t19 = t28 * t47 + t40 * t43;
t18 = -t28 * t43 + t40 * t47;
t9 = t18 * t42 + t19 * t46;
t8 = t18 * t46 - t19 * t42;
t7 = -pkin(3) * t18 + t11;
t4 = pkin(7) * t18 + t6;
t3 = pkin(3) * t26 - pkin(7) * t19 + t5;
t2 = t3 * t42 + t4 * t46;
t1 = t3 * t46 - t4 * t42;
t10 = m(2) * (t29 ^ 2 + t30 ^ 2 + t50) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + t50) / 0.2e1 + m(3) * (t16 ^ 2 + t17 ^ 2 + t31 ^ 2) / 0.2e1 + m(5) * (t1 ^ 2 + t2 ^ 2 + t7 ^ 2) / 0.2e1 + m(4) * (t11 ^ 2 + t5 ^ 2 + t6 ^ 2) / 0.2e1 + (V_base(2) * mrSges(1,1) - V_base(1) * mrSges(1,2) + Ifges(1,3) * V_base(6) / 0.2e1) * V_base(6) + (t7 * mrSges(5,2) - t1 * mrSges(5,3) + Ifges(5,1) * t9 / 0.2e1) * t9 + (t29 * mrSges(2,1) - t30 * mrSges(2,2) + Ifges(2,3) * t41 / 0.2e1) * t41 + (t16 * mrSges(3,1) - t17 * mrSges(3,2) + Ifges(3,3) * t40 / 0.2e1) * t40 + (t5 * mrSges(4,1) - t6 * mrSges(4,2) + Ifges(4,3) * t26 / 0.2e1) * t26 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,6) * V_base(6) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (-t7 * mrSges(5,1) + t2 * mrSges(5,3) + Ifges(5,4) * t9 + Ifges(5,2) * t8 / 0.2e1) * t8 + (V_base(3) * mrSges(2,2) - t29 * mrSges(2,3) + Ifges(2,5) * t41 + Ifges(2,1) * t34 / 0.2e1) * t34 + (t31 * mrSges(3,2) - t16 * mrSges(3,3) + Ifges(3,5) * t40 + Ifges(3,1) * t28 / 0.2e1) * t28 + (t11 * mrSges(4,2) - t5 * mrSges(4,3) + Ifges(4,5) * t26 + Ifges(4,1) * t19 / 0.2e1) * t19 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,5) * V_base(6) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (-V_base(3) * mrSges(2,1) + t30 * mrSges(2,3) + Ifges(2,4) * t34 + Ifges(2,6) * t41 + Ifges(2,2) * t33 / 0.2e1) * t33 + (-t31 * mrSges(3,1) + t17 * mrSges(3,3) + Ifges(3,4) * t28 + Ifges(3,6) * t40 + Ifges(3,2) * t27 / 0.2e1) * t27 + (t1 * mrSges(5,1) - t2 * mrSges(5,2) + Ifges(5,5) * t9 + Ifges(5,6) * t8 + Ifges(5,3) * t24 / 0.2e1) * t24 + (-t11 * mrSges(4,1) + t6 * mrSges(4,3) + Ifges(4,4) * t19 + Ifges(4,6) * t26 + Ifges(4,2) * t18 / 0.2e1) * t18;
T = t10;
