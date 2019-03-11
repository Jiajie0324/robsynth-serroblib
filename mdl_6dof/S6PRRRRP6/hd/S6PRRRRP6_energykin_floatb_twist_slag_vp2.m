% Calculate kinetic energy for
% S6PRRRRP6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% V_base [6x1]
%   Base Velocity (twist: stacked translational and angular velocity) in base frame
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d2,d3,d4,d5,theta1]';
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
% Datum: 2019-03-09 00:36
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6PRRRRP6_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(12,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRRP6_energykin_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRRRP6_energykin_floatb_twist_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S6PRRRRP6_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRRRRP6_energykin_floatb_twist_slag_vp2: pkin has to be [12x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6PRRRRP6_energykin_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6PRRRRP6_energykin_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6PRRRRP6_energykin_floatb_twist_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 00:28:27
% EndTime: 2019-03-09 00:28:28
% DurationCPUTime: 1.42s
% Computational Cost: add. (6959->162), mult. (12565->232), div. (0->0), fcn. (10888->14), ass. (0->65)
t62 = V_base(5) * qJ(1) + V_base(1);
t63 = -V_base(4) * qJ(1) + V_base(2);
t65 = sin(pkin(12));
t68 = cos(pkin(12));
t55 = -t62 * t65 + t68 * t63;
t70 = cos(pkin(6));
t58 = t65 * V_base(5) + t68 * V_base(4);
t88 = pkin(8) * t58;
t49 = V_base(6) * pkin(1) - t70 * t88 + t55;
t57 = -t65 * V_base(4) + t68 * V_base(5);
t64 = V_base(3) + qJD(1);
t67 = sin(pkin(6));
t53 = -pkin(1) * t57 - t67 * t88 + t64;
t90 = t49 * t70 + t53 * t67;
t56 = t68 * t62 + t65 * t63;
t78 = t57 * t70 + t67 * V_base(6);
t46 = t78 * pkin(8) + t56;
t74 = sin(qJ(2));
t77 = cos(qJ(2));
t35 = -t46 * t74 + t90 * t77;
t54 = -t57 * t67 + t70 * V_base(6) + qJD(2);
t69 = cos(pkin(7));
t48 = t58 * t77 + t78 * t74;
t87 = pkin(9) * t48;
t29 = pkin(2) * t54 - t69 * t87 + t35;
t41 = -t49 * t67 + t70 * t53;
t47 = -t74 * t58 + t78 * t77;
t66 = sin(pkin(7));
t34 = -pkin(2) * t47 - t66 * t87 + t41;
t89 = t29 * t69 + t34 * t66;
t36 = t77 * t46 + t90 * t74;
t79 = t47 * t69 + t54 * t66;
t27 = t79 * pkin(9) + t36;
t73 = sin(qJ(3));
t76 = cos(qJ(3));
t19 = -t73 * t27 + t89 * t76;
t39 = -t48 * t73 + t79 * t76;
t42 = -t47 * t66 + t54 * t69 + qJD(3);
t15 = -pkin(3) * t42 - t19;
t40 = t48 * t76 + t79 * t73;
t72 = sin(qJ(4));
t75 = cos(qJ(4));
t30 = -t40 * t72 + t42 * t75;
t31 = t40 * t75 + t42 * t72;
t12 = -pkin(4) * t30 - pkin(11) * t31 + t15;
t71 = sin(qJ(5));
t20 = t76 * t27 + t89 * t73;
t16 = pkin(10) * t42 + t20;
t21 = -t29 * t66 + t69 * t34;
t18 = -pkin(3) * t39 - pkin(10) * t40 + t21;
t10 = t75 * t16 + t72 * t18;
t38 = qJD(4) - t39;
t8 = pkin(11) * t38 + t10;
t86 = cos(qJ(5));
t4 = t71 * t12 + t86 * t8;
t9 = -t72 * t16 + t18 * t75;
t7 = -pkin(4) * t38 - t9;
t3 = t86 * t12 - t71 * t8;
t28 = qJD(5) - t30;
t23 = t86 * t31 + t71 * t38;
t22 = t31 * t71 - t86 * t38;
t5 = pkin(5) * t22 - qJ(6) * t23 + t7;
t2 = qJ(6) * t28 + t4;
t1 = -t28 * pkin(5) + qJD(6) - t3;
t6 = m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + V_base(3) ^ 2) / 0.2e1 + m(2) * (t55 ^ 2 + t56 ^ 2 + t64 ^ 2) / 0.2e1 + m(3) * (t35 ^ 2 + t36 ^ 2 + t41 ^ 2) / 0.2e1 + m(7) * (t1 ^ 2 + t2 ^ 2 + t5 ^ 2) / 0.2e1 + m(6) * (t3 ^ 2 + t4 ^ 2 + t7 ^ 2) / 0.2e1 + m(5) * (t10 ^ 2 + t15 ^ 2 + t9 ^ 2) / 0.2e1 + m(4) * (t19 ^ 2 + t20 ^ 2 + t21 ^ 2) / 0.2e1 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (t64 * mrSges(2,2) - t55 * mrSges(2,3) + Ifges(2,1) * t58 / 0.2e1) * t58 + (t35 * mrSges(3,1) - t36 * mrSges(3,2) + Ifges(3,3) * t54 / 0.2e1) * t54 + (t19 * mrSges(4,1) - t20 * mrSges(4,2) + Ifges(4,3) * t42 / 0.2e1) * t42 + (t9 * mrSges(5,1) - t10 * mrSges(5,2) + Ifges(5,3) * t38 / 0.2e1) * t38 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (-t64 * mrSges(2,1) + t56 * mrSges(2,3) + Ifges(2,4) * t58 + Ifges(2,2) * t57 / 0.2e1) * t57 + (t41 * mrSges(3,2) - t35 * mrSges(3,3) + Ifges(3,5) * t54 + Ifges(3,1) * t48 / 0.2e1) * t48 + (t21 * mrSges(4,2) - t19 * mrSges(4,3) + Ifges(4,5) * t42 + Ifges(4,1) * t40 / 0.2e1) * t40 + (t15 * mrSges(5,2) - t9 * mrSges(5,3) + Ifges(5,5) * t38 + Ifges(5,1) * t31 / 0.2e1) * t31 + (-t41 * mrSges(3,1) + t36 * mrSges(3,3) + Ifges(3,4) * t48 + Ifges(3,6) * t54 + Ifges(3,2) * t47 / 0.2e1) * t47 + (-t21 * mrSges(4,1) + t20 * mrSges(4,3) + Ifges(4,4) * t40 + Ifges(4,6) * t42 + Ifges(4,2) * t39 / 0.2e1) * t39 + (-t15 * mrSges(5,1) + t10 * mrSges(5,3) + Ifges(5,4) * t31 + Ifges(5,6) * t38 + Ifges(5,2) * t30 / 0.2e1) * t30 + (t3 * mrSges(6,1) - t1 * mrSges(7,1) - t4 * mrSges(6,2) + t2 * mrSges(7,3) + (Ifges(7,2) / 0.2e1 + Ifges(6,3) / 0.2e1) * t28) * t28 + (t7 * mrSges(6,2) + t1 * mrSges(7,2) - t3 * mrSges(6,3) - t5 * mrSges(7,3) + (Ifges(7,1) / 0.2e1 + Ifges(6,1) / 0.2e1) * t23 + (Ifges(7,4) + Ifges(6,5)) * t28) * t23 + (V_base(2) * mrSges(1,1) + t55 * mrSges(2,1) - V_base(1) * mrSges(1,2) - t56 * mrSges(2,2) + Ifges(1,5) * V_base(4) + Ifges(2,5) * t58 + Ifges(1,6) * V_base(5) + Ifges(2,6) * t57 + (Ifges(1,3) / 0.2e1 + Ifges(2,3) / 0.2e1) * V_base(6)) * V_base(6) + (t7 * mrSges(6,1) + t5 * mrSges(7,1) - t2 * mrSges(7,2) - t4 * mrSges(6,3) + (Ifges(7,3) / 0.2e1 + Ifges(6,2) / 0.2e1) * t22 + (-Ifges(6,6) + Ifges(7,6)) * t28 + (-Ifges(6,4) + Ifges(7,5)) * t23) * t22;
T  = t6;
