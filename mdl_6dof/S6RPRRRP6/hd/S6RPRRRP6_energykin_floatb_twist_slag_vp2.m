% Calculate kinetic energy for
% S6RPRRRP6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% V_base [6x1]
%   Base Velocity (twist: stacked translational and angular velocity) in base frame
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d5,theta2]';
% m_mdh [7x1]
%   mass of all robot links (including the base)
% mrSges [7x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% Ifges [7x6]
%   inertia of all robot links about their respective body frame origins, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertial_parameters_convert_par1_par2.m)
% 
% Output:
% T [1x1]
%   kinetic energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 06:17
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6RPRRRP6_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRP6_energykin_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRRP6_energykin_floatb_twist_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S6RPRRRP6_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRRP6_energykin_floatb_twist_slag_vp2: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRRRP6_energykin_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RPRRRP6_energykin_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RPRRRP6_energykin_floatb_twist_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 06:14:08
% EndTime: 2019-03-09 06:14:09
% DurationCPUTime: 1.04s
% Computational Cost: add. (3147->152), mult. (4185->211), div. (0->0), fcn. (3368->10), ass. (0->53)
t61 = sin(qJ(5));
t65 = cos(qJ(5));
t64 = sin(qJ(1));
t68 = cos(qJ(1));
t50 = t64 * V_base(4) - t68 * V_base(5);
t51 = t64 * V_base(5) + t68 * V_base(4);
t40 = pkin(1) * t50 - qJ(2) * t51 + V_base(3);
t55 = pkin(6) * V_base(5) + V_base(1);
t56 = -pkin(6) * V_base(4) + V_base(2);
t48 = t55 * t68 + t56 * t64;
t58 = V_base(6) + qJD(1);
t44 = qJ(2) * t58 + t48;
t59 = sin(pkin(10));
t60 = cos(pkin(10));
t31 = t40 * t60 - t44 * t59;
t46 = t51 * t60 + t58 * t59;
t25 = pkin(2) * t50 - pkin(7) * t46 + t31;
t32 = t40 * t59 + t44 * t60;
t45 = -t51 * t59 + t58 * t60;
t28 = pkin(7) * t45 + t32;
t63 = sin(qJ(3));
t67 = cos(qJ(3));
t18 = t25 * t63 + t28 * t67;
t49 = qJD(3) + t50;
t16 = pkin(8) * t49 + t18;
t35 = t45 * t67 - t46 * t63;
t36 = t45 * t63 + t46 * t67;
t47 = -t55 * t64 + t56 * t68;
t42 = -pkin(1) * t58 + qJD(2) - t47;
t37 = -pkin(2) * t45 + t42;
t21 = -pkin(3) * t35 - pkin(8) * t36 + t37;
t62 = sin(qJ(4));
t66 = cos(qJ(4));
t11 = -t16 * t62 + t21 * t66;
t30 = t36 * t66 + t49 * t62;
t34 = qJD(4) - t35;
t7 = pkin(4) * t34 - pkin(9) * t30 + t11;
t12 = t16 * t66 + t21 * t62;
t29 = -t36 * t62 + t49 * t66;
t9 = pkin(9) * t29 + t12;
t4 = t61 * t7 + t65 * t9;
t3 = -t61 * t9 + t65 * t7;
t17 = t25 * t67 - t28 * t63;
t15 = -pkin(3) * t49 - t17;
t13 = -pkin(4) * t29 + t15;
t69 = V_base(3) ^ 2;
t33 = qJD(5) + t34;
t23 = t29 * t61 + t30 * t65;
t22 = t29 * t65 - t30 * t61;
t10 = -pkin(5) * t22 + qJD(6) + t13;
t2 = qJ(6) * t22 + t4;
t1 = pkin(5) * t33 - qJ(6) * t23 + t3;
t5 = m(2) * (t47 ^ 2 + t48 ^ 2 + t69) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + t69) / 0.2e1 + m(4) * (t17 ^ 2 + t18 ^ 2 + t37 ^ 2) / 0.2e1 + m(3) * (t31 ^ 2 + t32 ^ 2 + t42 ^ 2) / 0.2e1 + m(6) * (t13 ^ 2 + t3 ^ 2 + t4 ^ 2) / 0.2e1 + m(5) * (t11 ^ 2 + t12 ^ 2 + t15 ^ 2) / 0.2e1 + m(7) * (t1 ^ 2 + t10 ^ 2 + t2 ^ 2) / 0.2e1 + (V_base(2) * mrSges(1,1) - V_base(1) * mrSges(1,2) + Ifges(1,3) * V_base(6) / 0.2e1) * V_base(6) + (t47 * mrSges(2,1) - t48 * mrSges(2,2) + Ifges(2,3) * t58 / 0.2e1) * t58 + (t17 * mrSges(4,1) - t18 * mrSges(4,2) + Ifges(4,3) * t49 / 0.2e1) * t49 + (t42 * mrSges(3,2) - t31 * mrSges(3,3) + Ifges(3,1) * t46 / 0.2e1) * t46 + (t11 * mrSges(5,1) - t12 * mrSges(5,2) + Ifges(5,3) * t34 / 0.2e1) * t34 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,6) * V_base(6) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (V_base(3) * mrSges(2,2) - t47 * mrSges(2,3) + Ifges(2,5) * t58 + Ifges(2,1) * t51 / 0.2e1) * t51 + (-t42 * mrSges(3,1) + t32 * mrSges(3,3) + Ifges(3,4) * t46 + Ifges(3,2) * t45 / 0.2e1) * t45 + (t37 * mrSges(4,2) - t17 * mrSges(4,3) + Ifges(4,5) * t49 + Ifges(4,1) * t36 / 0.2e1) * t36 + (t15 * mrSges(5,2) - t11 * mrSges(5,3) + Ifges(5,5) * t34 + Ifges(5,1) * t30 / 0.2e1) * t30 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,5) * V_base(6) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (-t37 * mrSges(4,1) + t18 * mrSges(4,3) + Ifges(4,4) * t36 + Ifges(4,6) * t49 + Ifges(4,2) * t35 / 0.2e1) * t35 + (-t15 * mrSges(5,1) + t12 * mrSges(5,3) + Ifges(5,4) * t30 + Ifges(5,6) * t34 + Ifges(5,2) * t29 / 0.2e1) * t29 + (t3 * mrSges(6,1) + t1 * mrSges(7,1) - t4 * mrSges(6,2) - t2 * mrSges(7,2) + (Ifges(7,3) / 0.2e1 + Ifges(6,3) / 0.2e1) * t33) * t33 + (t13 * mrSges(6,2) + t10 * mrSges(7,2) - t3 * mrSges(6,3) - t1 * mrSges(7,3) + (Ifges(6,1) / 0.2e1 + Ifges(7,1) / 0.2e1) * t23 + (Ifges(6,5) + Ifges(7,5)) * t33) * t23 + (V_base(3) * mrSges(2,1) + t31 * mrSges(3,1) - t32 * mrSges(3,2) - t48 * mrSges(2,3) - Ifges(2,4) * t51 + Ifges(3,5) * t46 - Ifges(2,6) * t58 + Ifges(3,6) * t45 + (Ifges(2,2) / 0.2e1 + Ifges(3,3) / 0.2e1) * t50) * t50 + (-t13 * mrSges(6,1) - t10 * mrSges(7,1) + t4 * mrSges(6,3) + t2 * mrSges(7,3) + (Ifges(6,2) / 0.2e1 + Ifges(7,2) / 0.2e1) * t22 + (Ifges(6,6) + Ifges(7,6)) * t33 + (Ifges(6,4) + Ifges(7,4)) * t23) * t22;
T  = t5;
