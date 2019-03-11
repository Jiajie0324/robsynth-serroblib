% Calculate kinetic energy for
% S6RRRRPP4
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,theta5]';
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
% Datum: 2019-03-09 21:04
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6RRRRPP4_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPP4_energykin_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPP4_energykin_floatb_twist_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S6RRRRPP4_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRPP4_energykin_floatb_twist_slag_vp2: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRRPP4_energykin_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRRRPP4_energykin_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RRRRPP4_energykin_floatb_twist_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 20:58:22
% EndTime: 2019-03-09 20:58:23
% DurationCPUTime: 1.05s
% Computational Cost: add. (3455->152), mult. (4431->211), div. (0->0), fcn. (3560->10), ass. (0->53)
t58 = sin(pkin(10));
t68 = cos(pkin(10));
t62 = sin(qJ(1));
t66 = cos(qJ(1));
t50 = -t62 * V_base(4) + t66 * V_base(5);
t51 = t62 * V_base(5) + t66 * V_base(4);
t37 = -pkin(1) * t50 - pkin(7) * t51 + V_base(3);
t55 = pkin(6) * V_base(5) + V_base(1);
t56 = -pkin(6) * V_base(4) + V_base(2);
t47 = t55 * t66 + t56 * t62;
t57 = V_base(6) + qJD(1);
t42 = pkin(7) * t57 + t47;
t61 = sin(qJ(2));
t65 = cos(qJ(2));
t33 = t37 * t61 + t42 * t65;
t49 = qJD(2) - t50;
t30 = pkin(8) * t49 + t33;
t46 = -t55 * t62 + t56 * t66;
t41 = -pkin(1) * t57 - t46;
t44 = -t61 * t51 + t57 * t65;
t45 = t51 * t65 + t57 * t61;
t31 = -pkin(2) * t44 - pkin(8) * t45 + t41;
t60 = sin(qJ(3));
t64 = cos(qJ(3));
t20 = -t30 * t60 + t31 * t64;
t35 = t45 * t64 + t49 * t60;
t43 = qJD(3) - t44;
t14 = pkin(3) * t43 - pkin(9) * t35 + t20;
t21 = t30 * t64 + t31 * t60;
t34 = -t45 * t60 + t49 * t64;
t17 = pkin(9) * t34 + t21;
t59 = sin(qJ(4));
t63 = cos(qJ(4));
t10 = t14 * t63 - t17 * t59;
t25 = t34 * t59 + t35 * t63;
t40 = qJD(4) + t43;
t7 = pkin(4) * t40 - qJ(5) * t25 + t10;
t11 = t14 * t59 + t17 * t63;
t24 = t34 * t63 - t35 * t59;
t9 = qJ(5) * t24 + t11;
t4 = t58 * t7 + t68 * t9;
t32 = t37 * t65 - t42 * t61;
t29 = -pkin(2) * t49 - t32;
t3 = -t58 * t9 + t68 * t7;
t22 = -pkin(3) * t34 + t29;
t15 = -pkin(4) * t24 + qJD(5) + t22;
t67 = V_base(3) ^ 2;
t19 = t24 * t58 + t25 * t68;
t18 = -t24 * t68 + t25 * t58;
t5 = pkin(5) * t18 - qJ(6) * t19 + t15;
t2 = qJ(6) * t40 + t4;
t1 = -pkin(5) * t40 + qJD(6) - t3;
t6 = m(2) * (t46 ^ 2 + t47 ^ 2 + t67) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + t67) / 0.2e1 + m(3) * (t32 ^ 2 + t33 ^ 2 + t41 ^ 2) / 0.2e1 + m(4) * (t20 ^ 2 + t21 ^ 2 + t29 ^ 2) / 0.2e1 + m(5) * (t10 ^ 2 + t11 ^ 2 + t22 ^ 2) / 0.2e1 + m(6) * (t15 ^ 2 + t3 ^ 2 + t4 ^ 2) / 0.2e1 + m(7) * (t1 ^ 2 + t2 ^ 2 + t5 ^ 2) / 0.2e1 + (V_base(2) * mrSges(1,1) - V_base(1) * mrSges(1,2) + Ifges(1,3) * V_base(6) / 0.2e1) * V_base(6) + (t46 * mrSges(2,1) - t47 * mrSges(2,2) + Ifges(2,3) * t57 / 0.2e1) * t57 + (t32 * mrSges(3,1) - t33 * mrSges(3,2) + Ifges(3,3) * t49 / 0.2e1) * t49 + (t20 * mrSges(4,1) - t21 * mrSges(4,2) + Ifges(4,3) * t43 / 0.2e1) * t43 + (t22 * mrSges(5,2) - t10 * mrSges(5,3) + Ifges(5,1) * t25 / 0.2e1) * t25 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,6) * V_base(6) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (V_base(3) * mrSges(2,2) - t46 * mrSges(2,3) + Ifges(2,5) * t57 + Ifges(2,1) * t51 / 0.2e1) * t51 + (t41 * mrSges(3,2) - t32 * mrSges(3,3) + Ifges(3,5) * t49 + Ifges(3,1) * t45 / 0.2e1) * t45 + (t29 * mrSges(4,2) - t20 * mrSges(4,3) + Ifges(4,5) * t43 + Ifges(4,1) * t35 / 0.2e1) * t35 + (-t22 * mrSges(5,1) + t11 * mrSges(5,3) + Ifges(5,4) * t25 + Ifges(5,2) * t24 / 0.2e1) * t24 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,5) * V_base(6) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (-V_base(3) * mrSges(2,1) + t47 * mrSges(2,3) + Ifges(2,4) * t51 + Ifges(2,6) * t57 + Ifges(2,2) * t50 / 0.2e1) * t50 + (-t41 * mrSges(3,1) + t33 * mrSges(3,3) + Ifges(3,4) * t45 + Ifges(3,6) * t49 + Ifges(3,2) * t44 / 0.2e1) * t44 + (-t29 * mrSges(4,1) + t21 * mrSges(4,3) + Ifges(4,4) * t35 + Ifges(4,6) * t43 + Ifges(4,2) * t34 / 0.2e1) * t34 + (t15 * mrSges(6,2) + t1 * mrSges(7,2) - t3 * mrSges(6,3) - t5 * mrSges(7,3) + (Ifges(7,1) / 0.2e1 + Ifges(6,1) / 0.2e1) * t19) * t19 + (t15 * mrSges(6,1) + t5 * mrSges(7,1) - t2 * mrSges(7,2) - t4 * mrSges(6,3) + (Ifges(7,3) / 0.2e1 + Ifges(6,2) / 0.2e1) * t18 + (-Ifges(6,4) + Ifges(7,5)) * t19) * t18 + (t10 * mrSges(5,1) + t3 * mrSges(6,1) - t1 * mrSges(7,1) - t11 * mrSges(5,2) - t4 * mrSges(6,2) + t2 * mrSges(7,3) + Ifges(5,5) * t25 + Ifges(5,6) * t24 + (Ifges(5,3) / 0.2e1 + Ifges(7,2) / 0.2e1 + Ifges(6,3) / 0.2e1) * t40 + (Ifges(7,4) + Ifges(6,5)) * t19 + (-Ifges(6,6) + Ifges(7,6)) * t18) * t40;
T  = t6;
