% Calculate kinetic energy for
% S6RPRPRP10
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% V_base [6x1]
%   Base Velocity (twist: stacked translational and angular velocity) in base frame
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5]';
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
% Datum: 2019-03-09 03:32
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6RPRPRP10_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(8,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRP10_energykin_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRP10_energykin_floatb_twist_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S6RPRPRP10_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S6RPRPRP10_energykin_floatb_twist_slag_vp2: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRPRP10_energykin_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RPRPRP10_energykin_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RPRPRP10_energykin_floatb_twist_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 03:30:52
% EndTime: 2019-03-09 03:30:52
% DurationCPUTime: 0.76s
% Computational Cost: add. (1215->146), mult. (1499->179), div. (0->0), fcn. (992->6), ass. (0->46)
t58 = pkin(1) + pkin(7);
t57 = pkin(3) + pkin(8);
t48 = sin(qJ(1));
t56 = cos(qJ(1));
t36 = t48 * V_base(4) - t56 * V_base(5);
t45 = V_base(6) + qJD(1);
t47 = sin(qJ(3));
t55 = cos(qJ(3));
t29 = -t55 * t36 + t45 * t47;
t41 = V_base(5) * pkin(6) + V_base(1);
t42 = -V_base(4) * pkin(6) + V_base(2);
t32 = t56 * t41 + t48 * t42;
t27 = -t45 * qJ(2) - t32;
t23 = -pkin(2) * t36 - t27;
t30 = t47 * t36 + t55 * t45;
t50 = -qJ(4) * t30 + t23;
t10 = t57 * t29 + t50;
t46 = sin(qJ(5));
t54 = cos(qJ(5));
t37 = t48 * V_base(5) + t56 * V_base(4);
t35 = qJD(3) + t37;
t31 = -t48 * t41 + t56 * t42;
t52 = qJD(2) - t31;
t17 = t37 * pkin(2) - t58 * t45 + t52;
t53 = -qJ(2) * t37 + V_base(3);
t22 = t58 * t36 + t53;
t13 = t55 * t17 - t47 * t22;
t51 = qJD(4) - t13;
t7 = t30 * pkin(4) - t57 * t35 + t51;
t4 = t54 * t10 + t46 * t7;
t14 = t47 * t17 + t55 * t22;
t12 = -t35 * qJ(4) - t14;
t8 = -pkin(4) * t29 - t12;
t3 = -t46 * t10 + t54 * t7;
t49 = V_base(3) ^ 2;
t28 = qJD(5) + t30;
t25 = -t45 * pkin(1) + t52;
t24 = pkin(1) * t36 + t53;
t21 = t46 * t29 + t54 * t35;
t20 = -t54 * t29 + t35 * t46;
t15 = pkin(3) * t29 + t50;
t11 = -t35 * pkin(3) + t51;
t5 = pkin(5) * t20 - qJ(6) * t21 + t8;
t2 = qJ(6) * t28 + t4;
t1 = -t28 * pkin(5) + qJD(6) - t3;
t6 = m(2) * (t31 ^ 2 + t32 ^ 2 + t49) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + t49) / 0.2e1 + m(3) * (t24 ^ 2 + t25 ^ 2 + t27 ^ 2) / 0.2e1 + m(4) * (t13 ^ 2 + t14 ^ 2 + t23 ^ 2) / 0.2e1 + m(6) * (t3 ^ 2 + t4 ^ 2 + t8 ^ 2) / 0.2e1 + m(5) * (t11 ^ 2 + t12 ^ 2 + t15 ^ 2) / 0.2e1 + m(7) * (t1 ^ 2 + t2 ^ 2 + t5 ^ 2) / 0.2e1 + (V_base(2) * mrSges(1,1) - V_base(1) * mrSges(1,2) + Ifges(1,3) * V_base(6) / 0.2e1) * V_base(6) + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,6) * V_base(6) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,5) * V_base(6) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (t31 * mrSges(2,1) - t32 * mrSges(2,2) + t25 * mrSges(3,2) - t27 * mrSges(3,3) + (Ifges(2,3) / 0.2e1 + Ifges(3,1) / 0.2e1) * t45) * t45 + (t13 * mrSges(4,1) - t14 * mrSges(4,2) + t11 * mrSges(5,2) - t12 * mrSges(5,3) + (Ifges(4,3) / 0.2e1 + Ifges(5,1) / 0.2e1) * t35) * t35 + (t3 * mrSges(6,1) - t1 * mrSges(7,1) - t4 * mrSges(6,2) + t2 * mrSges(7,3) + (Ifges(7,2) / 0.2e1 + Ifges(6,3) / 0.2e1) * t28) * t28 + (t25 * mrSges(3,1) + V_base(3) * mrSges(2,2) - t31 * mrSges(2,3) - t24 * mrSges(3,3) + (Ifges(3,2) / 0.2e1 + Ifges(2,1) / 0.2e1) * t37 + (-Ifges(3,4) + Ifges(2,5)) * t45) * t37 + (t11 * mrSges(5,1) + t23 * mrSges(4,2) - t13 * mrSges(4,3) - t15 * mrSges(5,3) + (Ifges(4,1) / 0.2e1 + Ifges(5,2) / 0.2e1) * t30 + (-Ifges(5,4) + Ifges(4,5)) * t35) * t30 + (t8 * mrSges(6,2) + t1 * mrSges(7,2) - t3 * mrSges(6,3) - t5 * mrSges(7,3) + (Ifges(7,1) / 0.2e1 + Ifges(6,1) / 0.2e1) * t21 + (Ifges(7,4) + Ifges(6,5)) * t28) * t21 + (V_base(3) * mrSges(2,1) + t27 * mrSges(3,1) - t24 * mrSges(3,2) - t32 * mrSges(2,3) + (Ifges(3,3) / 0.2e1 + Ifges(2,2) / 0.2e1) * t36 + (Ifges(3,5) - Ifges(2,6)) * t45 + (-Ifges(2,4) - Ifges(3,6)) * t37) * t36 + (t23 * mrSges(4,1) + t12 * mrSges(5,1) - t15 * mrSges(5,2) - t14 * mrSges(4,3) + (Ifges(4,2) / 0.2e1 + Ifges(5,3) / 0.2e1) * t29 + (Ifges(5,5) - Ifges(4,6)) * t35 + (-Ifges(4,4) - Ifges(5,6)) * t30) * t29 + (t8 * mrSges(6,1) + t5 * mrSges(7,1) - t2 * mrSges(7,2) - t4 * mrSges(6,3) + (Ifges(7,3) / 0.2e1 + Ifges(6,2) / 0.2e1) * t20 + (-Ifges(6,6) + Ifges(7,6)) * t28 + (-Ifges(6,4) + Ifges(7,5)) * t21) * t20;
T  = t6;
