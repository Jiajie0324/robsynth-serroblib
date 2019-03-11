% Calculate kinetic energy for
% S6RRRPRP1
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d5,theta4]';
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
% Datum: 2019-03-09 16:34
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6RRRPRP1_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRP1_energykin_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRP1_energykin_floatb_twist_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S6RRRPRP1_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPRP1_energykin_floatb_twist_slag_vp2: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRPRP1_energykin_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRRPRP1_energykin_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RRRPRP1_energykin_floatb_twist_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 16:30:38
% EndTime: 2019-03-09 16:30:39
% DurationCPUTime: 1.05s
% Computational Cost: add. (3355->152), mult. (4427->211), div. (0->0), fcn. (3580->10), ass. (0->53)
t63 = sin(qJ(1));
t67 = cos(qJ(1));
t50 = t63 * V_base(5) + t67 * V_base(4);
t57 = V_base(6) + qJD(1);
t62 = sin(qJ(2));
t66 = cos(qJ(2));
t43 = -t50 * t62 + t57 * t66;
t44 = t50 * t66 + t57 * t62;
t61 = sin(qJ(3));
t65 = cos(qJ(3));
t34 = t43 * t65 - t44 * t61;
t35 = t43 * t61 + t44 * t65;
t58 = sin(pkin(10));
t59 = cos(pkin(10));
t24 = t34 * t59 - t35 * t58;
t25 = t34 * t58 + t35 * t59;
t54 = pkin(6) * V_base(5) + V_base(1);
t55 = -pkin(6) * V_base(4) + V_base(2);
t45 = -t54 * t63 + t55 * t67;
t41 = -pkin(1) * t57 - t45;
t36 = -pkin(2) * t43 + t41;
t26 = -pkin(3) * t34 + qJD(4) + t36;
t13 = -pkin(4) * t24 - pkin(9) * t25 + t26;
t60 = sin(qJ(5));
t64 = cos(qJ(5));
t49 = -t63 * V_base(4) + t67 * V_base(5);
t39 = -pkin(1) * t49 - pkin(7) * t50 + V_base(3);
t46 = t54 * t67 + t55 * t63;
t42 = pkin(7) * t57 + t46;
t32 = t39 * t66 - t42 * t62;
t48 = qJD(2) - t49;
t29 = pkin(2) * t48 - pkin(8) * t44 + t32;
t33 = t39 * t62 + t42 * t66;
t31 = pkin(8) * t43 + t33;
t19 = t29 * t65 - t31 * t61;
t47 = qJD(3) + t48;
t15 = pkin(3) * t47 - qJ(4) * t35 + t19;
t20 = t29 * t61 + t31 * t65;
t18 = qJ(4) * t34 + t20;
t10 = t15 * t58 + t18 * t59;
t8 = pkin(9) * t47 + t10;
t4 = t13 * t60 + t64 * t8;
t3 = t13 * t64 - t60 * t8;
t9 = t15 * t59 - t18 * t58;
t7 = -pkin(4) * t47 - t9;
t68 = V_base(3) ^ 2;
t23 = qJD(5) - t24;
t22 = t25 * t64 + t47 * t60;
t21 = -t25 * t60 + t47 * t64;
t5 = -pkin(5) * t21 + qJD(6) + t7;
t2 = qJ(6) * t21 + t4;
t1 = pkin(5) * t23 - qJ(6) * t22 + t3;
t6 = m(2) * (t45 ^ 2 + t46 ^ 2 + t68) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + t68) / 0.2e1 + m(4) * (t19 ^ 2 + t20 ^ 2 + t36 ^ 2) / 0.2e1 + m(3) * (t32 ^ 2 + t33 ^ 2 + t41 ^ 2) / 0.2e1 + m(5) * (t10 ^ 2 + t26 ^ 2 + t9 ^ 2) / 0.2e1 + m(7) * (t1 ^ 2 + t2 ^ 2 + t5 ^ 2) / 0.2e1 + m(6) * (t3 ^ 2 + t4 ^ 2 + t7 ^ 2) / 0.2e1 + (V_base(2) * mrSges(1,1) - V_base(1) * mrSges(1,2) + Ifges(1,3) * V_base(6) / 0.2e1) * V_base(6) + (t45 * mrSges(2,1) - t46 * mrSges(2,2) + Ifges(2,3) * t57 / 0.2e1) * t57 + (t32 * mrSges(3,1) - t33 * mrSges(3,2) + Ifges(3,3) * t48 / 0.2e1) * t48 + (t36 * mrSges(4,2) - t19 * mrSges(4,3) + Ifges(4,1) * t35 / 0.2e1) * t35 + (t26 * mrSges(5,2) - t9 * mrSges(5,3) + Ifges(5,1) * t25 / 0.2e1) * t25 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,6) * V_base(6) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (V_base(3) * mrSges(2,2) - t45 * mrSges(2,3) + Ifges(2,5) * t57 + Ifges(2,1) * t50 / 0.2e1) * t50 + (t41 * mrSges(3,2) - t32 * mrSges(3,3) + Ifges(3,5) * t48 + Ifges(3,1) * t44 / 0.2e1) * t44 + (-t36 * mrSges(4,1) + t20 * mrSges(4,3) + Ifges(4,4) * t35 + Ifges(4,2) * t34 / 0.2e1) * t34 + (-t26 * mrSges(5,1) + t10 * mrSges(5,3) + Ifges(5,4) * t25 + Ifges(5,2) * t24 / 0.2e1) * t24 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,5) * V_base(6) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (-V_base(3) * mrSges(2,1) + t46 * mrSges(2,3) + Ifges(2,4) * t50 + Ifges(2,6) * t57 + Ifges(2,2) * t49 / 0.2e1) * t49 + (-t41 * mrSges(3,1) + t33 * mrSges(3,3) + Ifges(3,4) * t44 + Ifges(3,6) * t48 + Ifges(3,2) * t43 / 0.2e1) * t43 + (t3 * mrSges(6,1) + t1 * mrSges(7,1) - t4 * mrSges(6,2) - t2 * mrSges(7,2) + (Ifges(7,3) / 0.2e1 + Ifges(6,3) / 0.2e1) * t23) * t23 + (t7 * mrSges(6,2) + t5 * mrSges(7,2) - t3 * mrSges(6,3) - t1 * mrSges(7,3) + (Ifges(6,1) / 0.2e1 + Ifges(7,1) / 0.2e1) * t22 + (Ifges(6,5) + Ifges(7,5)) * t23) * t22 + (t19 * mrSges(4,1) + t9 * mrSges(5,1) - t20 * mrSges(4,2) - t10 * mrSges(5,2) + Ifges(4,5) * t35 + Ifges(5,5) * t25 + Ifges(4,6) * t34 + Ifges(5,6) * t24 + (Ifges(4,3) / 0.2e1 + Ifges(5,3) / 0.2e1) * t47) * t47 + (-t7 * mrSges(6,1) - t5 * mrSges(7,1) + t4 * mrSges(6,3) + t2 * mrSges(7,3) + (Ifges(7,2) / 0.2e1 + Ifges(6,2) / 0.2e1) * t21 + (Ifges(6,6) + Ifges(7,6)) * t23 + (Ifges(6,4) + Ifges(7,4)) * t22) * t21;
T  = t6;
