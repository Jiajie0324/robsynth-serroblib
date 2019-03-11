% Calculate kinetic energy for
% S6RPRRPR5
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
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d6,theta2]';
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
% Datum: 2019-03-09 05:14
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6RPRRPR5_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPR5_energykin_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRPR5_energykin_floatb_twist_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S6RPRRPR5_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRPR5_energykin_floatb_twist_slag_vp2: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRRPR5_energykin_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RPRRPR5_energykin_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RPRRPR5_energykin_floatb_twist_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 05:12:06
% EndTime: 2019-03-09 05:12:07
% DurationCPUTime: 1.05s
% Computational Cost: add. (2919->153), mult. (3927->211), div. (0->0), fcn. (3148->10), ass. (0->56)
t69 = pkin(4) + pkin(9);
t68 = cos(qJ(4));
t61 = sin(qJ(1));
t64 = cos(qJ(1));
t47 = t61 * V_base(4) - t64 * V_base(5);
t48 = t61 * V_base(5) + t64 * V_base(4);
t37 = pkin(1) * t47 - qJ(2) * t48 + V_base(3);
t52 = pkin(6) * V_base(5) + V_base(1);
t53 = -pkin(6) * V_base(4) + V_base(2);
t44 = t52 * t64 + t53 * t61;
t55 = V_base(6) + qJD(1);
t40 = qJ(2) * t55 + t44;
t56 = sin(pkin(10));
t57 = cos(pkin(10));
t29 = t37 * t57 - t40 * t56;
t42 = t48 * t57 + t55 * t56;
t26 = pkin(2) * t47 - pkin(7) * t42 + t29;
t30 = t37 * t56 + t40 * t57;
t41 = -t48 * t56 + t55 * t57;
t28 = pkin(7) * t41 + t30;
t60 = sin(qJ(3));
t63 = cos(qJ(3));
t16 = t26 * t63 - t28 * t60;
t33 = t41 * t60 + t42 * t63;
t46 = qJD(3) + t47;
t12 = pkin(3) * t46 - pkin(8) * t33 + t16;
t17 = t26 * t60 + t28 * t63;
t32 = t41 * t63 - t42 * t60;
t15 = pkin(8) * t32 + t17;
t59 = sin(qJ(4));
t8 = t12 * t59 + t15 * t68;
t43 = -t52 * t61 + t53 * t64;
t45 = qJD(4) + t46;
t6 = -qJ(5) * t45 - t8;
t7 = t12 * t68 - t15 * t59;
t67 = qJD(5) - t7;
t22 = t32 * t59 + t33 * t68;
t39 = -pkin(1) * t55 + qJD(2) - t43;
t34 = -pkin(2) * t41 + t39;
t23 = -pkin(3) * t32 + t34;
t66 = -qJ(5) * t22 + t23;
t65 = V_base(3) ^ 2;
t62 = cos(qJ(6));
t58 = sin(qJ(6));
t21 = -t32 * t68 + t33 * t59;
t20 = qJD(6) + t22;
t19 = t21 * t58 + t45 * t62;
t18 = t21 * t62 - t45 * t58;
t10 = pkin(4) * t21 + t66;
t9 = t21 * t69 + t66;
t5 = -pkin(4) * t45 + t67;
t4 = -pkin(5) * t21 - t6;
t3 = t22 * pkin(5) - t45 * t69 + t67;
t2 = t3 * t58 + t62 * t9;
t1 = t3 * t62 - t58 * t9;
t11 = m(2) * (t43 ^ 2 + t44 ^ 2 + t65) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + t65) / 0.2e1 + m(4) * (t16 ^ 2 + t17 ^ 2 + t34 ^ 2) / 0.2e1 + m(3) * (t29 ^ 2 + t30 ^ 2 + t39 ^ 2) / 0.2e1 + m(5) * (t23 ^ 2 + t7 ^ 2 + t8 ^ 2) / 0.2e1 + m(7) * (t1 ^ 2 + t2 ^ 2 + t4 ^ 2) / 0.2e1 + m(6) * (t10 ^ 2 + t5 ^ 2 + t6 ^ 2) / 0.2e1 + (V_base(2) * mrSges(1,1) - V_base(1) * mrSges(1,2) + Ifges(1,3) * V_base(6) / 0.2e1) * V_base(6) + (t43 * mrSges(2,1) - t44 * mrSges(2,2) + Ifges(2,3) * t55 / 0.2e1) * t55 + (t16 * mrSges(4,1) - t17 * mrSges(4,2) + Ifges(4,3) * t46 / 0.2e1) * t46 + (t39 * mrSges(3,2) - t29 * mrSges(3,3) + Ifges(3,1) * t42 / 0.2e1) * t42 + (t1 * mrSges(7,1) - t2 * mrSges(7,2) + Ifges(7,3) * t20 / 0.2e1) * t20 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,6) * V_base(6) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (V_base(3) * mrSges(2,2) - t43 * mrSges(2,3) + Ifges(2,5) * t55 + Ifges(2,1) * t48 / 0.2e1) * t48 + (-t39 * mrSges(3,1) + t30 * mrSges(3,3) + Ifges(3,4) * t42 + Ifges(3,2) * t41 / 0.2e1) * t41 + (t34 * mrSges(4,2) - t16 * mrSges(4,3) + Ifges(4,5) * t46 + Ifges(4,1) * t33 / 0.2e1) * t33 + (t4 * mrSges(7,2) - t1 * mrSges(7,3) + Ifges(7,5) * t20 + Ifges(7,1) * t19 / 0.2e1) * t19 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,5) * V_base(6) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (-t34 * mrSges(4,1) + t17 * mrSges(4,3) + Ifges(4,4) * t33 + Ifges(4,6) * t46 + Ifges(4,2) * t32 / 0.2e1) * t32 + (-t4 * mrSges(7,1) + t2 * mrSges(7,3) + Ifges(7,4) * t19 + Ifges(7,6) * t20 + Ifges(7,2) * t18 / 0.2e1) * t18 + (t7 * mrSges(5,1) - t8 * mrSges(5,2) + t5 * mrSges(6,2) - t6 * mrSges(6,3) + (Ifges(6,1) / 0.2e1 + Ifges(5,3) / 0.2e1) * t45) * t45 + (t5 * mrSges(6,1) + t23 * mrSges(5,2) - t7 * mrSges(5,3) - t10 * mrSges(6,3) + (Ifges(6,2) / 0.2e1 + Ifges(5,1) / 0.2e1) * t22 + (-Ifges(6,4) + Ifges(5,5)) * t45) * t22 + (V_base(3) * mrSges(2,1) + t29 * mrSges(3,1) - t30 * mrSges(3,2) - t44 * mrSges(2,3) - Ifges(2,4) * t48 + Ifges(3,5) * t42 - Ifges(2,6) * t55 + Ifges(3,6) * t41 + (Ifges(2,2) / 0.2e1 + Ifges(3,3) / 0.2e1) * t47) * t47 + (t23 * mrSges(5,1) + t6 * mrSges(6,1) - t10 * mrSges(6,2) - t8 * mrSges(5,3) + (Ifges(6,3) / 0.2e1 + Ifges(5,2) / 0.2e1) * t21 + (Ifges(6,5) - Ifges(5,6)) * t45 + (-Ifges(5,4) - Ifges(6,6)) * t22) * t21;
T  = t11;
