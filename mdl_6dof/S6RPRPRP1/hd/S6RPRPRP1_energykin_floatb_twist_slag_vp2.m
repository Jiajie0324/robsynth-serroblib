% Calculate kinetic energy for
% S6RPRPRP1
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
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,theta2,theta4]';
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
% Datum: 2019-03-09 03:03
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6RPRPRP1_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRP1_energykin_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRP1_energykin_floatb_twist_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S6RPRPRP1_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRPRP1_energykin_floatb_twist_slag_vp2: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRPRP1_energykin_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RPRPRP1_energykin_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RPRPRP1_energykin_floatb_twist_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 03:01:15
% EndTime: 2019-03-09 03:01:16
% DurationCPUTime: 0.97s
% Computational Cost: add. (2923->152), mult. (4287->209), div. (0->0), fcn. (3460->10), ass. (0->52)
t53 = V_base(5) * pkin(6) + V_base(1);
t54 = -V_base(4) * pkin(6) + V_base(2);
t62 = sin(qJ(1));
t65 = cos(qJ(1));
t45 = -t53 * t62 + t65 * t54;
t49 = t62 * V_base(5) + t65 * V_base(4);
t55 = V_base(6) + qJD(1);
t38 = pkin(1) * t55 - qJ(2) * t49 + t45;
t46 = t65 * t53 + t62 * t54;
t48 = -t62 * V_base(4) + t65 * V_base(5);
t41 = qJ(2) * t48 + t46;
t57 = sin(pkin(9));
t59 = cos(pkin(9));
t33 = t38 * t59 - t57 * t41;
t28 = -pkin(2) * t55 - t33;
t44 = t48 * t57 + t49 * t59;
t61 = sin(qJ(3));
t64 = cos(qJ(3));
t36 = -t44 * t61 + t55 * t64;
t23 = -pkin(3) * t36 + qJD(4) + t28;
t37 = t44 * t64 + t55 * t61;
t56 = sin(pkin(10));
t58 = cos(pkin(10));
t25 = t36 * t58 - t37 * t56;
t26 = t36 * t56 + t37 * t58;
t13 = -pkin(4) * t25 - pkin(8) * t26 + t23;
t60 = sin(qJ(5));
t63 = cos(qJ(5));
t34 = t57 * t38 + t59 * t41;
t29 = pkin(7) * t55 + t34;
t43 = t48 * t59 - t49 * t57;
t47 = -pkin(1) * t48 + qJD(2) + V_base(3);
t32 = -pkin(2) * t43 - pkin(7) * t44 + t47;
t19 = -t29 * t61 + t64 * t32;
t42 = qJD(3) - t43;
t15 = pkin(3) * t42 - qJ(4) * t37 + t19;
t20 = t64 * t29 + t61 * t32;
t18 = qJ(4) * t36 + t20;
t10 = t56 * t15 + t58 * t18;
t8 = pkin(8) * t42 + t10;
t4 = t60 * t13 + t63 * t8;
t3 = t63 * t13 - t60 * t8;
t9 = t15 * t58 - t56 * t18;
t7 = -pkin(4) * t42 - t9;
t66 = V_base(3) ^ 2;
t24 = qJD(5) - t25;
t22 = t26 * t63 + t42 * t60;
t21 = -t26 * t60 + t42 * t63;
t5 = -pkin(5) * t21 + qJD(6) + t7;
t2 = qJ(6) * t21 + t4;
t1 = pkin(5) * t24 - qJ(6) * t22 + t3;
t6 = m(2) * (t45 ^ 2 + t46 ^ 2 + t66) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + t66) / 0.2e1 + m(3) * (t33 ^ 2 + t34 ^ 2 + t47 ^ 2) / 0.2e1 + m(4) * (t19 ^ 2 + t20 ^ 2 + t28 ^ 2) / 0.2e1 + m(5) * (t10 ^ 2 + t23 ^ 2 + t9 ^ 2) / 0.2e1 + m(7) * (t1 ^ 2 + t2 ^ 2 + t5 ^ 2) / 0.2e1 + m(6) * (t3 ^ 2 + t4 ^ 2 + t7 ^ 2) / 0.2e1 + (V_base(2) * mrSges(1,1) - V_base(1) * mrSges(1,2) + Ifges(1,3) * V_base(6) / 0.2e1) * V_base(6) + (V_base(3) * mrSges(2,2) - t45 * mrSges(2,3) + Ifges(2,1) * t49 / 0.2e1) * t49 + (t47 * mrSges(3,2) - t33 * mrSges(3,3) + Ifges(3,1) * t44 / 0.2e1) * t44 + (t28 * mrSges(4,2) - t19 * mrSges(4,3) + Ifges(4,1) * t37 / 0.2e1) * t37 + (t23 * mrSges(5,2) - t9 * mrSges(5,3) + Ifges(5,1) * t26 / 0.2e1) * t26 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,6) * V_base(6) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (-V_base(3) * mrSges(2,1) + t46 * mrSges(2,3) + Ifges(2,4) * t49 + Ifges(2,2) * t48 / 0.2e1) * t48 + (-t47 * mrSges(3,1) + t34 * mrSges(3,3) + Ifges(3,4) * t44 + Ifges(3,2) * t43 / 0.2e1) * t43 + (-t28 * mrSges(4,1) + t20 * mrSges(4,3) + Ifges(4,4) * t37 + Ifges(4,2) * t36 / 0.2e1) * t36 + (-t23 * mrSges(5,1) + t10 * mrSges(5,3) + Ifges(5,4) * t26 + Ifges(5,2) * t25 / 0.2e1) * t25 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,5) * V_base(6) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (t3 * mrSges(6,1) + t1 * mrSges(7,1) - t4 * mrSges(6,2) - t2 * mrSges(7,2) + (Ifges(7,3) / 0.2e1 + Ifges(6,3) / 0.2e1) * t24) * t24 + (t7 * mrSges(6,2) + t5 * mrSges(7,2) - t3 * mrSges(6,3) - t1 * mrSges(7,3) + (Ifges(6,1) / 0.2e1 + Ifges(7,1) / 0.2e1) * t22 + (Ifges(6,5) + Ifges(7,5)) * t24) * t22 + (t45 * mrSges(2,1) + t33 * mrSges(3,1) - t46 * mrSges(2,2) - t34 * mrSges(3,2) + Ifges(2,5) * t49 + Ifges(3,5) * t44 + Ifges(2,6) * t48 + Ifges(3,6) * t43 + (Ifges(2,3) / 0.2e1 + Ifges(3,3) / 0.2e1) * t55) * t55 + (t19 * mrSges(4,1) + t9 * mrSges(5,1) - t20 * mrSges(4,2) - t10 * mrSges(5,2) + Ifges(4,5) * t37 + Ifges(5,5) * t26 + Ifges(4,6) * t36 + Ifges(5,6) * t25 + (Ifges(5,3) / 0.2e1 + Ifges(4,3) / 0.2e1) * t42) * t42 + (-t7 * mrSges(6,1) - t5 * mrSges(7,1) + t4 * mrSges(6,3) + t2 * mrSges(7,3) + (Ifges(6,2) / 0.2e1 + Ifges(7,2) / 0.2e1) * t21 + (Ifges(6,6) + Ifges(7,6)) * t24 + (Ifges(6,4) + Ifges(7,4)) * t22) * t21;
T  = t6;
