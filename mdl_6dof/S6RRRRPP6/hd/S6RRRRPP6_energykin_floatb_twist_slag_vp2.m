% Calculate kinetic energy for
% S6RRRRPP6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% V_base [6x1]
%   Base Velocity (twist: stacked translational and angular velocity) in base frame
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4]';
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
% Datum: 2019-03-09 21:16
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6RRRRPP6_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(9,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPP6_energykin_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPP6_energykin_floatb_twist_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S6RRRRPP6_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRRRPP6_energykin_floatb_twist_slag_vp2: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRRPP6_energykin_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRRRPP6_energykin_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RRRRPP6_energykin_floatb_twist_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 21:11:03
% EndTime: 2019-03-09 21:11:04
% DurationCPUTime: 0.88s
% Computational Cost: add. (2311->149), mult. (2927->196), div. (0->0), fcn. (2268->8), ass. (0->50)
t55 = sin(qJ(1));
t58 = cos(qJ(1));
t44 = -t55 * V_base(4) + t58 * V_base(5);
t45 = t55 * V_base(5) + t58 * V_base(4);
t31 = -pkin(1) * t44 - pkin(7) * t45 + V_base(3);
t49 = V_base(5) * pkin(6) + V_base(1);
t50 = -V_base(4) * pkin(6) + V_base(2);
t41 = t58 * t49 + t55 * t50;
t51 = V_base(6) + qJD(1);
t36 = pkin(7) * t51 + t41;
t54 = sin(qJ(2));
t57 = cos(qJ(2));
t26 = t54 * t31 + t57 * t36;
t43 = qJD(2) - t44;
t23 = pkin(8) * t43 + t26;
t40 = -t55 * t49 + t50 * t58;
t35 = -pkin(1) * t51 - t40;
t38 = -t54 * t45 + t51 * t57;
t39 = t45 * t57 + t51 * t54;
t24 = -pkin(2) * t38 - pkin(8) * t39 + t35;
t53 = sin(qJ(3));
t56 = cos(qJ(3));
t14 = -t23 * t53 + t56 * t24;
t29 = t39 * t56 + t43 * t53;
t37 = qJD(3) - t38;
t10 = pkin(3) * t37 - pkin(9) * t29 + t14;
t15 = t56 * t23 + t53 * t24;
t28 = -t39 * t53 + t43 * t56;
t13 = pkin(9) * t28 + t15;
t52 = sin(qJ(4));
t63 = cos(qJ(4));
t6 = t52 * t10 + t63 * t13;
t62 = pkin(4) + qJ(6);
t25 = t31 * t57 - t54 * t36;
t34 = qJD(4) + t37;
t4 = -qJ(5) * t34 - t6;
t5 = t63 * t10 - t52 * t13;
t22 = -pkin(2) * t43 - t25;
t61 = qJD(5) - t5;
t16 = -pkin(3) * t28 + t22;
t18 = t52 * t28 + t63 * t29;
t60 = -qJ(5) * t18 + t16;
t59 = V_base(3) ^ 2;
t17 = -t63 * t28 + t29 * t52;
t8 = pkin(4) * t17 + t60;
t7 = t62 * t17 + t60;
t3 = -t34 * pkin(4) + t61;
t2 = -pkin(5) * t17 + qJD(6) - t4;
t1 = t18 * pkin(5) - t62 * t34 + t61;
t9 = m(2) * (t40 ^ 2 + t41 ^ 2 + t59) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + t59) / 0.2e1 + m(3) * (t25 ^ 2 + t26 ^ 2 + t35 ^ 2) / 0.2e1 + m(4) * (t14 ^ 2 + t15 ^ 2 + t22 ^ 2) / 0.2e1 + m(5) * (t16 ^ 2 + t5 ^ 2 + t6 ^ 2) / 0.2e1 + m(7) * (t1 ^ 2 + t2 ^ 2 + t7 ^ 2) / 0.2e1 + m(6) * (t3 ^ 2 + t4 ^ 2 + t8 ^ 2) / 0.2e1 + (V_base(2) * mrSges(1,1) - V_base(1) * mrSges(1,2) + Ifges(1,3) * V_base(6) / 0.2e1) * V_base(6) + (t40 * mrSges(2,1) - t41 * mrSges(2,2) + Ifges(2,3) * t51 / 0.2e1) * t51 + (t25 * mrSges(3,1) - t26 * mrSges(3,2) + Ifges(3,3) * t43 / 0.2e1) * t43 + (t14 * mrSges(4,1) - t15 * mrSges(4,2) + Ifges(4,3) * t37 / 0.2e1) * t37 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,6) * V_base(6) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (V_base(3) * mrSges(2,2) - t40 * mrSges(2,3) + Ifges(2,5) * t51 + Ifges(2,1) * t45 / 0.2e1) * t45 + (t35 * mrSges(3,2) - t25 * mrSges(3,3) + Ifges(3,5) * t43 + Ifges(3,1) * t39 / 0.2e1) * t39 + (t22 * mrSges(4,2) - t14 * mrSges(4,3) + Ifges(4,5) * t37 + Ifges(4,1) * t29 / 0.2e1) * t29 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,5) * V_base(6) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (-V_base(3) * mrSges(2,1) + t41 * mrSges(2,3) + Ifges(2,4) * t45 + Ifges(2,6) * t51 + Ifges(2,2) * t44 / 0.2e1) * t44 + (-t35 * mrSges(3,1) + t26 * mrSges(3,3) + Ifges(3,4) * t39 + Ifges(3,6) * t43 + Ifges(3,2) * t38 / 0.2e1) * t38 + (-t22 * mrSges(4,1) + t15 * mrSges(4,3) + Ifges(4,4) * t29 + Ifges(4,6) * t37 + Ifges(4,2) * t28 / 0.2e1) * t28 + (t5 * mrSges(5,1) - t6 * mrSges(5,2) + t3 * mrSges(6,2) + t2 * mrSges(7,2) - t4 * mrSges(6,3) - t1 * mrSges(7,3) + (Ifges(5,3) / 0.2e1 + Ifges(7,1) / 0.2e1 + Ifges(6,1) / 0.2e1) * t34) * t34 + (t3 * mrSges(6,1) + t1 * mrSges(7,1) + t16 * mrSges(5,2) - t7 * mrSges(7,2) - t5 * mrSges(5,3) - t8 * mrSges(6,3) + (Ifges(5,1) / 0.2e1 + Ifges(7,3) / 0.2e1 + Ifges(6,2) / 0.2e1) * t18 + (-Ifges(6,4) + Ifges(5,5) + Ifges(7,5)) * t34) * t18 + (t16 * mrSges(5,1) + t4 * mrSges(6,1) - t2 * mrSges(7,1) - t8 * mrSges(6,2) - t6 * mrSges(5,3) + t7 * mrSges(7,3) + (Ifges(5,2) / 0.2e1 + Ifges(7,2) / 0.2e1 + Ifges(6,3) / 0.2e1) * t17 + (Ifges(7,4) + Ifges(6,5) - Ifges(5,6)) * t34 + (-Ifges(5,4) - Ifges(6,6) + Ifges(7,6)) * t18) * t17;
T  = t9;
