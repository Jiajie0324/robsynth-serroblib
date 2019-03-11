% Calculate kinetic energy for
% S6RPPRRR8
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
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d5,d6,theta3]';
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
% Datum: 2019-03-09 02:36
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6RPPRRR8_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRRR8_energykin_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRRR8_energykin_floatb_twist_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S6RPPRRR8_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPPRRR8_energykin_floatb_twist_slag_vp2: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPPRRR8_energykin_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RPPRRR8_energykin_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RPPRRR8_energykin_floatb_twist_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 02:35:19
% EndTime: 2019-03-09 02:35:20
% DurationCPUTime: 1.01s
% Computational Cost: add. (2369->153), mult. (3055->211), div. (0->0), fcn. (2284->10), ass. (0->56)
t62 = sin(qJ(1));
t70 = cos(qJ(1));
t48 = t62 * V_base(5) + t70 * V_base(4);
t56 = V_base(6) + qJD(1);
t52 = V_base(5) * pkin(6) + V_base(1);
t53 = -V_base(4) * pkin(6) + V_base(2);
t44 = -t62 * t52 + t70 * t53;
t67 = qJD(2) - t44;
t69 = pkin(1) + qJ(3);
t34 = t48 * pkin(2) - t69 * t56 + t67;
t47 = t62 * V_base(4) - t70 * V_base(5);
t68 = -qJ(2) * t48 + V_base(3);
t36 = t69 * t47 + t68;
t57 = sin(pkin(10));
t58 = cos(pkin(10));
t23 = t58 * t34 - t36 * t57;
t43 = t47 * t57 + t56 * t58;
t19 = pkin(3) * t48 - pkin(7) * t43 + t23;
t24 = t57 * t34 + t58 * t36;
t42 = t47 * t58 - t56 * t57;
t22 = pkin(7) * t42 + t24;
t61 = sin(qJ(4));
t65 = cos(qJ(4));
t12 = t61 * t19 + t65 * t22;
t46 = qJD(4) + t48;
t10 = pkin(8) * t46 + t12;
t45 = t70 * t52 + t62 * t53;
t41 = -t56 * qJ(2) - t45;
t37 = -pkin(2) * t47 + qJD(3) - t41;
t27 = -pkin(3) * t42 + t37;
t30 = t42 * t65 - t61 * t43;
t31 = t42 * t61 + t43 * t65;
t15 = -pkin(4) * t30 - pkin(8) * t31 + t27;
t60 = sin(qJ(5));
t64 = cos(qJ(5));
t6 = t64 * t10 + t60 * t15;
t5 = -t10 * t60 + t64 * t15;
t11 = t19 * t65 - t61 * t22;
t29 = qJD(5) - t30;
t9 = -pkin(4) * t46 - t11;
t66 = V_base(3) ^ 2;
t63 = cos(qJ(6));
t59 = sin(qJ(6));
t39 = -t56 * pkin(1) + t67;
t38 = pkin(1) * t47 + t68;
t28 = qJD(6) + t29;
t26 = t31 * t64 + t46 * t60;
t25 = -t31 * t60 + t46 * t64;
t17 = t25 * t59 + t26 * t63;
t16 = t25 * t63 - t26 * t59;
t7 = -pkin(5) * t25 + t9;
t4 = pkin(9) * t25 + t6;
t3 = pkin(5) * t29 - pkin(9) * t26 + t5;
t2 = t3 * t59 + t4 * t63;
t1 = t3 * t63 - t4 * t59;
t8 = m(2) * (t44 ^ 2 + t45 ^ 2 + t66) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + t66) / 0.2e1 + m(4) * (t23 ^ 2 + t24 ^ 2 + t37 ^ 2) / 0.2e1 + m(3) * (t38 ^ 2 + t39 ^ 2 + t41 ^ 2) / 0.2e1 + m(5) * (t11 ^ 2 + t12 ^ 2 + t27 ^ 2) / 0.2e1 + m(7) * (t1 ^ 2 + t2 ^ 2 + t7 ^ 2) / 0.2e1 + m(6) * (t5 ^ 2 + t6 ^ 2 + t9 ^ 2) / 0.2e1 + (V_base(2) * mrSges(1,1) - V_base(1) * mrSges(1,2) + Ifges(1,3) * V_base(6) / 0.2e1) * V_base(6) + (t11 * mrSges(5,1) - t12 * mrSges(5,2) + Ifges(5,3) * t46 / 0.2e1) * t46 + (t37 * mrSges(4,2) - t23 * mrSges(4,3) + Ifges(4,1) * t43 / 0.2e1) * t43 + (t5 * mrSges(6,1) - t6 * mrSges(6,2) + Ifges(6,3) * t29 / 0.2e1) * t29 + (t1 * mrSges(7,1) - t2 * mrSges(7,2) + Ifges(7,3) * t28 / 0.2e1) * t28 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,6) * V_base(6) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (-t37 * mrSges(4,1) + t24 * mrSges(4,3) + Ifges(4,4) * t43 + Ifges(4,2) * t42 / 0.2e1) * t42 + (t27 * mrSges(5,2) - t11 * mrSges(5,3) + Ifges(5,5) * t46 + Ifges(5,1) * t31 / 0.2e1) * t31 + (t9 * mrSges(6,2) - t5 * mrSges(6,3) + Ifges(6,5) * t29 + Ifges(6,1) * t26 / 0.2e1) * t26 + (t7 * mrSges(7,2) - t1 * mrSges(7,3) + Ifges(7,5) * t28 + Ifges(7,1) * t17 / 0.2e1) * t17 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,5) * V_base(6) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (-t27 * mrSges(5,1) + t12 * mrSges(5,3) + Ifges(5,4) * t31 + Ifges(5,6) * t46 + Ifges(5,2) * t30 / 0.2e1) * t30 + (-t9 * mrSges(6,1) + t6 * mrSges(6,3) + Ifges(6,4) * t26 + Ifges(6,6) * t29 + Ifges(6,2) * t25 / 0.2e1) * t25 + (-t7 * mrSges(7,1) + t2 * mrSges(7,3) + Ifges(7,4) * t17 + Ifges(7,6) * t28 + Ifges(7,2) * t16 / 0.2e1) * t16 + (t44 * mrSges(2,1) - t45 * mrSges(2,2) + t39 * mrSges(3,2) - t41 * mrSges(3,3) + (Ifges(3,1) / 0.2e1 + Ifges(2,3) / 0.2e1) * t56) * t56 + (V_base(3) * mrSges(2,1) + t41 * mrSges(3,1) - t38 * mrSges(3,2) - t45 * mrSges(2,3) + (Ifges(3,3) / 0.2e1 + Ifges(2,2) / 0.2e1) * t47 + (Ifges(3,5) - Ifges(2,6)) * t56) * t47 + (t39 * mrSges(3,1) + t23 * mrSges(4,1) + V_base(3) * mrSges(2,2) - t24 * mrSges(4,2) - t44 * mrSges(2,3) - t38 * mrSges(3,3) + Ifges(4,5) * t43 + Ifges(4,6) * t42 + (Ifges(3,2) / 0.2e1 + Ifges(2,1) / 0.2e1 + Ifges(4,3) / 0.2e1) * t48 + (-Ifges(3,4) + Ifges(2,5)) * t56 + (-Ifges(2,4) - Ifges(3,6)) * t47) * t48;
T  = t8;
