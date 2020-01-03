% Calculate kinetic energy for
% S5RPPRR11
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
%   pkin=[a2,a3,a4,a5,d1,d4,d5]';
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
% Datum: 2019-12-31 18:06
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S5RPPRR11_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(6,1),zeros(7,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPPRR11_energykin_floatb_twist_slag_vp2: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPPRR11_energykin_floatb_twist_slag_vp2: qJD has to be [5x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S5RPPRR11_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S5RPPRR11_energykin_floatb_twist_slag_vp2: pkin has to be [7x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPPRR11_energykin_floatb_twist_slag_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RPPRR11_energykin_floatb_twist_slag_vp2: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5RPPRR11_energykin_floatb_twist_slag_vp2: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 18:05:29
% EndTime: 2019-12-31 18:05:29
% DurationCPUTime: 0.57s
% Computational Cost: add. (731->127), mult. (924->161), div. (0->0), fcn. (552->6), ass. (0->40)
t44 = sin(qJ(1));
t50 = cos(qJ(1));
t29 = t44 * V_base(4) - t50 * V_base(5);
t41 = V_base(6) + qJD(1);
t35 = V_base(5) * pkin(5) + V_base(1);
t36 = -V_base(4) * pkin(5) + V_base(2);
t25 = t50 * t35 + t44 * t36;
t20 = -t41 * qJ(2) - t25;
t49 = qJD(3) - t20;
t10 = -pkin(6) * t41 + (-pkin(2) - pkin(3)) * t29 + t49;
t26 = t29 * qJ(3);
t30 = t44 * V_base(5) + t50 * V_base(4);
t48 = pkin(1) * t29 + V_base(3);
t12 = t26 + (pkin(6) - qJ(2)) * t30 + t48;
t43 = sin(qJ(4));
t46 = cos(qJ(4));
t6 = t43 * t10 + t46 * t12;
t24 = -t44 * t35 + t50 * t36;
t19 = -t41 * pkin(1) + qJD(2) - t24;
t5 = t10 * t46 - t12 * t43;
t22 = t30 * t46 - t41 * t43;
t13 = t30 * pkin(2) - t41 * qJ(3) + t19;
t18 = -qJ(2) * t30 + t48;
t9 = -pkin(3) * t30 - t13;
t47 = V_base(3) ^ 2;
t45 = cos(qJ(5));
t42 = sin(qJ(5));
t28 = qJD(4) - t29;
t23 = t30 * t43 + t41 * t46;
t21 = qJD(5) - t22;
t17 = -pkin(2) * t29 + t49;
t16 = t18 + t26;
t15 = t23 * t45 + t28 * t42;
t14 = -t23 * t42 + t28 * t45;
t7 = -pkin(4) * t22 - pkin(7) * t23 + t9;
t4 = pkin(7) * t28 + t6;
t3 = -pkin(4) * t28 - t5;
t2 = t4 * t45 + t42 * t7;
t1 = -t4 * t42 + t45 * t7;
t8 = m(2) * (t24 ^ 2 + t25 ^ 2 + t47) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + t47) / 0.2e1 + m(4) * (t13 ^ 2 + t16 ^ 2 + t17 ^ 2) / 0.2e1 + m(3) * (t18 ^ 2 + t19 ^ 2 + t20 ^ 2) / 0.2e1 + m(6) * (t1 ^ 2 + t2 ^ 2 + t3 ^ 2) / 0.2e1 + m(5) * (t5 ^ 2 + t6 ^ 2 + t9 ^ 2) / 0.2e1 + (V_base(2) * mrSges(1,1) - V_base(1) * mrSges(1,2) + Ifges(1,3) * V_base(6) / 0.2e1) * V_base(6) + (t5 * mrSges(5,1) - t6 * mrSges(5,2) + Ifges(5,3) * t28 / 0.2e1) * t28 + (t1 * mrSges(6,1) - t2 * mrSges(6,2) + Ifges(6,3) * t21 / 0.2e1) * t21 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,6) * V_base(6) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (t9 * mrSges(5,2) - t5 * mrSges(5,3) + Ifges(5,5) * t28 + Ifges(5,1) * t23 / 0.2e1) * t23 + (t3 * mrSges(6,2) - t1 * mrSges(6,3) + Ifges(6,5) * t21 + Ifges(6,1) * t15 / 0.2e1) * t15 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,5) * V_base(6) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (-t9 * mrSges(5,1) + t6 * mrSges(5,3) + Ifges(5,4) * t23 + Ifges(5,6) * t28 + Ifges(5,2) * t22 / 0.2e1) * t22 + (-t3 * mrSges(6,1) + t2 * mrSges(6,3) + Ifges(6,4) * t15 + Ifges(6,6) * t21 + Ifges(6,2) * t14 / 0.2e1) * t14 + (t24 * mrSges(2,1) - t25 * mrSges(2,2) + t19 * mrSges(3,2) + t17 * mrSges(4,2) - t20 * mrSges(3,3) - t13 * mrSges(4,3) + (Ifges(4,1) / 0.2e1 + Ifges(2,3) / 0.2e1 + Ifges(3,1) / 0.2e1) * t41) * t41 + (t19 * mrSges(3,1) + t13 * mrSges(4,1) + V_base(3) * mrSges(2,2) - t16 * mrSges(4,2) - t24 * mrSges(2,3) - t18 * mrSges(3,3) + (Ifges(4,3) / 0.2e1 + Ifges(2,1) / 0.2e1 + Ifges(3,2) / 0.2e1) * t30 + (-Ifges(3,4) + Ifges(2,5) + Ifges(4,5)) * t41) * t30 + (V_base(3) * mrSges(2,1) + t20 * mrSges(3,1) - t17 * mrSges(4,1) - t18 * mrSges(3,2) - t25 * mrSges(2,3) + t16 * mrSges(4,3) + (Ifges(4,2) / 0.2e1 + Ifges(2,2) / 0.2e1 + Ifges(3,3) / 0.2e1) * t29 + (Ifges(4,4) + Ifges(3,5) - Ifges(2,6)) * t41 + (-Ifges(2,4) - Ifges(3,6) + Ifges(4,6)) * t30) * t29;
T = t8;
