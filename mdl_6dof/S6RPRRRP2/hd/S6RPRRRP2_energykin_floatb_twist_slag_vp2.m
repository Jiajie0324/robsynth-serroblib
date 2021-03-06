% Calculate kinetic energy for
% S6RPRRRP2
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
% Datum: 2019-03-09 06:01
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6RPRRRP2_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRP2_energykin_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRRP2_energykin_floatb_twist_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S6RPRRRP2_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRRP2_energykin_floatb_twist_slag_vp2: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRRRP2_energykin_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RPRRRP2_energykin_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RPRRRP2_energykin_floatb_twist_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 05:58:41
% EndTime: 2019-03-09 05:58:42
% DurationCPUTime: 1.06s
% Computational Cost: add. (3047->152), mult. (4417->211), div. (0->0), fcn. (3568->10), ass. (0->53)
t60 = sin(qJ(5));
t64 = cos(qJ(5));
t55 = V_base(5) * pkin(6) + V_base(1);
t56 = -V_base(4) * pkin(6) + V_base(2);
t63 = sin(qJ(1));
t67 = cos(qJ(1));
t47 = -t55 * t63 + t67 * t56;
t51 = t63 * V_base(5) + t67 * V_base(4);
t57 = V_base(6) + qJD(1);
t39 = pkin(1) * t57 - qJ(2) * t51 + t47;
t48 = t67 * t55 + t63 * t56;
t50 = -t63 * V_base(4) + t67 * V_base(5);
t43 = qJ(2) * t50 + t48;
t58 = sin(pkin(10));
t59 = cos(pkin(10));
t33 = t58 * t39 + t59 * t43;
t27 = pkin(7) * t57 + t33;
t45 = t50 * t59 - t51 * t58;
t46 = t50 * t58 + t51 * t59;
t49 = -pkin(1) * t50 + qJD(2) + V_base(3);
t29 = -pkin(2) * t45 - pkin(7) * t46 + t49;
t62 = sin(qJ(3));
t66 = cos(qJ(3));
t20 = t66 * t27 + t62 * t29;
t44 = qJD(3) - t45;
t16 = pkin(8) * t44 + t20;
t32 = t39 * t59 - t58 * t43;
t26 = -pkin(2) * t57 - t32;
t37 = -t62 * t46 + t57 * t66;
t38 = t46 * t66 + t57 * t62;
t21 = -pkin(3) * t37 - pkin(8) * t38 + t26;
t61 = sin(qJ(4));
t65 = cos(qJ(4));
t11 = -t16 * t61 + t65 * t21;
t31 = t38 * t65 + t44 * t61;
t35 = qJD(4) - t37;
t7 = pkin(4) * t35 - pkin(9) * t31 + t11;
t12 = t65 * t16 + t61 * t21;
t30 = -t38 * t61 + t44 * t65;
t9 = pkin(9) * t30 + t12;
t4 = t60 * t7 + t64 * t9;
t3 = -t60 * t9 + t64 * t7;
t19 = -t62 * t27 + t29 * t66;
t15 = -pkin(3) * t44 - t19;
t13 = -pkin(4) * t30 + t15;
t68 = V_base(3) ^ 2;
t34 = qJD(5) + t35;
t23 = t30 * t60 + t31 * t64;
t22 = t30 * t64 - t31 * t60;
t10 = -pkin(5) * t22 + qJD(6) + t13;
t2 = qJ(6) * t22 + t4;
t1 = pkin(5) * t34 - qJ(6) * t23 + t3;
t5 = m(2) * (t47 ^ 2 + t48 ^ 2 + t68) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + t68) / 0.2e1 + m(3) * (t32 ^ 2 + t33 ^ 2 + t49 ^ 2) / 0.2e1 + m(4) * (t19 ^ 2 + t20 ^ 2 + t26 ^ 2) / 0.2e1 + m(7) * (t1 ^ 2 + t10 ^ 2 + t2 ^ 2) / 0.2e1 + m(6) * (t13 ^ 2 + t3 ^ 2 + t4 ^ 2) / 0.2e1 + m(5) * (t11 ^ 2 + t12 ^ 2 + t15 ^ 2) / 0.2e1 + (V_base(2) * mrSges(1,1) - V_base(1) * mrSges(1,2) + Ifges(1,3) * V_base(6) / 0.2e1) * V_base(6) + (V_base(3) * mrSges(2,2) - t47 * mrSges(2,3) + Ifges(2,1) * t51 / 0.2e1) * t51 + (t49 * mrSges(3,2) - t32 * mrSges(3,3) + Ifges(3,1) * t46 / 0.2e1) * t46 + (t19 * mrSges(4,1) - t20 * mrSges(4,2) + Ifges(4,3) * t44 / 0.2e1) * t44 + (t11 * mrSges(5,1) - t12 * mrSges(5,2) + Ifges(5,3) * t35 / 0.2e1) * t35 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,6) * V_base(6) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (-V_base(3) * mrSges(2,1) + t48 * mrSges(2,3) + Ifges(2,4) * t51 + Ifges(2,2) * t50 / 0.2e1) * t50 + (-t49 * mrSges(3,1) + t33 * mrSges(3,3) + Ifges(3,4) * t46 + Ifges(3,2) * t45 / 0.2e1) * t45 + (t26 * mrSges(4,2) - t19 * mrSges(4,3) + Ifges(4,5) * t44 + Ifges(4,1) * t38 / 0.2e1) * t38 + (t15 * mrSges(5,2) - t11 * mrSges(5,3) + Ifges(5,5) * t35 + Ifges(5,1) * t31 / 0.2e1) * t31 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,5) * V_base(6) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (-t26 * mrSges(4,1) + t20 * mrSges(4,3) + Ifges(4,4) * t38 + Ifges(4,6) * t44 + Ifges(4,2) * t37 / 0.2e1) * t37 + (-t15 * mrSges(5,1) + t12 * mrSges(5,3) + Ifges(5,4) * t31 + Ifges(5,6) * t35 + Ifges(5,2) * t30 / 0.2e1) * t30 + (t3 * mrSges(6,1) + t1 * mrSges(7,1) - t4 * mrSges(6,2) - t2 * mrSges(7,2) + (Ifges(7,3) / 0.2e1 + Ifges(6,3) / 0.2e1) * t34) * t34 + (t13 * mrSges(6,2) + t10 * mrSges(7,2) - t3 * mrSges(6,3) - t1 * mrSges(7,3) + (Ifges(7,1) / 0.2e1 + Ifges(6,1) / 0.2e1) * t23 + (Ifges(6,5) + Ifges(7,5)) * t34) * t23 + (t47 * mrSges(2,1) + t32 * mrSges(3,1) - t48 * mrSges(2,2) - t33 * mrSges(3,2) + Ifges(2,5) * t51 + Ifges(3,5) * t46 + Ifges(2,6) * t50 + Ifges(3,6) * t45 + (Ifges(3,3) / 0.2e1 + Ifges(2,3) / 0.2e1) * t57) * t57 + (-t13 * mrSges(6,1) - t10 * mrSges(7,1) + t4 * mrSges(6,3) + t2 * mrSges(7,3) + (Ifges(7,2) / 0.2e1 + Ifges(6,2) / 0.2e1) * t22 + (Ifges(6,6) + Ifges(7,6)) * t34 + (Ifges(6,4) + Ifges(7,4)) * t23) * t22;
T  = t5;
