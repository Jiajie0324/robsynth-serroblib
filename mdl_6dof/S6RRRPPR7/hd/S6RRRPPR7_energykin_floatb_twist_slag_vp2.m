% Calculate kinetic energy for
% S6RRRPPR7
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d6,theta5]';
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
% Datum: 2019-03-09 16:02
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6RRRPPR7_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPPR7_energykin_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPPR7_energykin_floatb_twist_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S6RRRPPR7_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPPR7_energykin_floatb_twist_slag_vp2: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRPPR7_energykin_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRRPPR7_energykin_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RRRPPR7_energykin_floatb_twist_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 15:56:26
% EndTime: 2019-03-09 15:56:27
% DurationCPUTime: 1.01s
% Computational Cost: add. (2621->153), mult. (3311->211), div. (0->0), fcn. (2580->10), ass. (0->54)
t66 = sin(qJ(1));
t68 = cos(qJ(1));
t53 = t66 * V_base(5) + t68 * V_base(4);
t60 = V_base(6) + qJD(1);
t65 = sin(qJ(2));
t72 = cos(qJ(2));
t46 = t72 * t53 + t65 * t60;
t52 = -t66 * V_base(4) + t68 * V_base(5);
t51 = qJD(2) - t52;
t64 = sin(qJ(3));
t71 = cos(qJ(3));
t34 = t71 * t46 + t64 * t51;
t45 = -t53 * t65 + t72 * t60;
t44 = qJD(3) - t45;
t37 = -pkin(1) * t52 - pkin(7) * t53 + V_base(3);
t58 = V_base(5) * pkin(6) + V_base(1);
t59 = -V_base(4) * pkin(6) + V_base(2);
t48 = t68 * t58 + t66 * t59;
t43 = pkin(7) * t60 + t48;
t30 = t65 * t37 + t72 * t43;
t27 = pkin(8) * t51 + t30;
t47 = -t66 * t58 + t59 * t68;
t42 = -pkin(1) * t60 - t47;
t28 = -pkin(2) * t45 - pkin(8) * t46 + t42;
t19 = -t64 * t27 + t71 * t28;
t70 = qJD(4) - t19;
t10 = -t34 * qJ(5) + (-pkin(3) - pkin(4)) * t44 + t70;
t20 = t71 * t27 + t64 * t28;
t17 = t44 * qJ(4) + t20;
t33 = t46 * t64 - t71 * t51;
t12 = qJ(5) * t33 + t17;
t61 = sin(pkin(10));
t62 = cos(pkin(10));
t6 = t61 * t10 + t62 * t12;
t29 = t72 * t37 - t65 * t43;
t26 = -t51 * pkin(2) - t29;
t5 = t62 * t10 - t12 * t61;
t18 = t33 * pkin(3) - t34 * qJ(4) + t26;
t13 = -pkin(4) * t33 + qJD(5) - t18;
t69 = V_base(3) ^ 2;
t67 = cos(qJ(6));
t63 = sin(qJ(6));
t41 = qJD(6) - t44;
t22 = t33 * t61 + t34 * t62;
t21 = t33 * t62 - t34 * t61;
t16 = -t44 * pkin(3) + t70;
t15 = t21 * t63 + t22 * t67;
t14 = t21 * t67 - t22 * t63;
t7 = -pkin(5) * t21 + t13;
t4 = pkin(9) * t21 + t6;
t3 = -pkin(5) * t44 - pkin(9) * t22 + t5;
t2 = t3 * t63 + t4 * t67;
t1 = t3 * t67 - t4 * t63;
t8 = m(2) * (t47 ^ 2 + t48 ^ 2 + t69) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + t69) / 0.2e1 + m(3) * (t29 ^ 2 + t30 ^ 2 + t42 ^ 2) / 0.2e1 + m(4) * (t19 ^ 2 + t20 ^ 2 + t26 ^ 2) / 0.2e1 + m(5) * (t16 ^ 2 + t17 ^ 2 + t18 ^ 2) / 0.2e1 + m(7) * (t1 ^ 2 + t2 ^ 2 + t7 ^ 2) / 0.2e1 + m(6) * (t13 ^ 2 + t5 ^ 2 + t6 ^ 2) / 0.2e1 + (V_base(2) * mrSges(1,1) - V_base(1) * mrSges(1,2) + Ifges(1,3) * V_base(6) / 0.2e1) * V_base(6) + (t47 * mrSges(2,1) - t48 * mrSges(2,2) + Ifges(2,3) * t60 / 0.2e1) * t60 + (t29 * mrSges(3,1) - t30 * mrSges(3,2) + Ifges(3,3) * t51 / 0.2e1) * t51 + (t1 * mrSges(7,1) - t2 * mrSges(7,2) + Ifges(7,3) * t41 / 0.2e1) * t41 + (t13 * mrSges(6,2) - t5 * mrSges(6,3) + Ifges(6,1) * t22 / 0.2e1) * t22 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,6) * V_base(6) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (V_base(3) * mrSges(2,2) - t47 * mrSges(2,3) + Ifges(2,5) * t60 + Ifges(2,1) * t53 / 0.2e1) * t53 + (t42 * mrSges(3,2) - t29 * mrSges(3,3) + Ifges(3,5) * t51 + Ifges(3,1) * t46 / 0.2e1) * t46 + (-t13 * mrSges(6,1) + t6 * mrSges(6,3) + Ifges(6,4) * t22 + Ifges(6,2) * t21 / 0.2e1) * t21 + (t7 * mrSges(7,2) - t1 * mrSges(7,3) + Ifges(7,5) * t41 + Ifges(7,1) * t15 / 0.2e1) * t15 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,5) * V_base(6) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (-V_base(3) * mrSges(2,1) + t48 * mrSges(2,3) + Ifges(2,4) * t53 + Ifges(2,6) * t60 + Ifges(2,2) * t52 / 0.2e1) * t52 + (-t42 * mrSges(3,1) + t30 * mrSges(3,3) + Ifges(3,4) * t46 + Ifges(3,6) * t51 + Ifges(3,2) * t45 / 0.2e1) * t45 + (-t7 * mrSges(7,1) + t2 * mrSges(7,3) + Ifges(7,4) * t15 + Ifges(7,6) * t41 + Ifges(7,2) * t14 / 0.2e1) * t14 + (t26 * mrSges(4,2) + t16 * mrSges(5,2) - t19 * mrSges(4,3) - t18 * mrSges(5,3) + (Ifges(5,1) / 0.2e1 + Ifges(4,1) / 0.2e1) * t34) * t34 + (t26 * mrSges(4,1) + t18 * mrSges(5,1) - t17 * mrSges(5,2) - t20 * mrSges(4,3) + (Ifges(4,2) / 0.2e1 + Ifges(5,3) / 0.2e1) * t33 + (-Ifges(4,4) + Ifges(5,5)) * t34) * t33 + (t19 * mrSges(4,1) - t16 * mrSges(5,1) - t5 * mrSges(6,1) - t20 * mrSges(4,2) + t6 * mrSges(6,2) + t17 * mrSges(5,3) - Ifges(6,5) * t22 - Ifges(6,6) * t21 + (Ifges(4,3) / 0.2e1 + Ifges(5,2) / 0.2e1 + Ifges(6,3) / 0.2e1) * t44 + (Ifges(5,4) + Ifges(4,5)) * t34 + (-Ifges(4,6) + Ifges(5,6)) * t33) * t44;
T  = t8;
