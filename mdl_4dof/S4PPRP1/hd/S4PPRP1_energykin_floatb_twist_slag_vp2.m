% Calculate kinetic energy for
% S4PPRP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% V_base [6x1]
%   Base Velocity (twist: stacked translational and angular velocity) in base frame
% pkin [5x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d3,theta1]';
% m_mdh [5x1]
%   mass of all robot links (including the base)
% mrSges [5x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% Ifges [5x6]
%   inertia of all robot links about their respective body frame origins, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertial_parameters_convert_par1_par2.m)
% 
% Output:
% T [1x1]
%   kinetic energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 18:12
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S4PPRP1_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(6,1),zeros(5,1),zeros(5,1),zeros(5,3),zeros(5,6)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PPRP1_energykin_floatb_twist_slag_vp2: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4PPRP1_energykin_floatb_twist_slag_vp2: qJD has to be [4x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S4PPRP1_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [5 1]), ...
  'S4PPRP1_energykin_floatb_twist_slag_vp2: pkin has to be [5x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4PPRP1_energykin_floatb_twist_slag_vp2: m has to be [5x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [5,3]), ...
  'S4PPRP1_energykin_floatb_twist_slag_vp2: mrSges has to be [5x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [5 6]), ...
  'S4PPRP1_energykin_floatb_twist_slag_vp2: Ifges has to be [5x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 18:12:03
% EndTime: 2019-03-08 18:12:03
% DurationCPUTime: 0.32s
% Computational Cost: add. (413->101), mult. (605->125), div. (0->0), fcn. (344->4), ass. (0->27)
t26 = V_base(5) * qJ(1) + V_base(1);
t27 = -V_base(4) * qJ(1) + V_base(2);
t32 = sin(pkin(5));
t35 = cos(pkin(5));
t17 = t35 * t26 + t32 * t27;
t15 = V_base(6) * qJ(2) + t17;
t21 = t32 * V_base(4) - t35 * V_base(5);
t10 = pkin(4) * t21 + t15;
t33 = sin(qJ(3));
t36 = cos(qJ(3));
t22 = t32 * V_base(5) + t35 * V_base(4);
t16 = -t32 * t26 + t35 * t27;
t34 = qJD(2) - t16;
t8 = -t22 * pkin(4) + (-pkin(1) - pkin(2)) * V_base(6) + t34;
t5 = t36 * t10 + t33 * t8;
t31 = V_base(3) + qJD(1);
t11 = t21 * pkin(1) - t22 * qJ(2) + t31;
t4 = -t33 * t10 + t36 * t8;
t7 = -pkin(2) * t21 - t11;
t29 = -V_base(6) + qJD(3);
t14 = -V_base(6) * pkin(1) + t34;
t13 = t33 * t21 + t36 * t22;
t12 = -t36 * t21 + t22 * t33;
t3 = qJ(4) * t29 + t5;
t2 = -t29 * pkin(3) + qJD(4) - t4;
t1 = pkin(3) * t12 - qJ(4) * t13 + t7;
t6 = m(2) * (t16 ^ 2 + t17 ^ 2 + t31 ^ 2) / 0.2e1 + m(3) * (t11 ^ 2 + t14 ^ 2 + t15 ^ 2) / 0.2e1 + m(4) * (t4 ^ 2 + t5 ^ 2 + t7 ^ 2) / 0.2e1 + m(5) * (t1 ^ 2 + t2 ^ 2 + t3 ^ 2) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + V_base(3) ^ 2) / 0.2e1 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (t4 * mrSges(4,1) - t2 * mrSges(5,1) - t5 * mrSges(4,2) + t3 * mrSges(5,3) + (Ifges(5,2) / 0.2e1 + Ifges(4,3) / 0.2e1) * t29) * t29 + (t31 * mrSges(2,2) + t14 * mrSges(3,2) - t16 * mrSges(2,3) - t11 * mrSges(3,3) + (Ifges(2,1) / 0.2e1 + Ifges(3,1) / 0.2e1) * t22) * t22 + (t31 * mrSges(2,1) + t11 * mrSges(3,1) - t15 * mrSges(3,2) - t17 * mrSges(2,3) + (Ifges(2,2) / 0.2e1 + Ifges(3,3) / 0.2e1) * t21 + (-Ifges(2,4) + Ifges(3,5)) * t22) * t21 + (t7 * mrSges(4,2) + t2 * mrSges(5,2) - t4 * mrSges(4,3) - t1 * mrSges(5,3) + (Ifges(5,1) / 0.2e1 + Ifges(4,1) / 0.2e1) * t13 + (Ifges(5,4) + Ifges(4,5)) * t29) * t13 + (t7 * mrSges(4,1) + t1 * mrSges(5,1) - t3 * mrSges(5,2) - t5 * mrSges(4,3) + (Ifges(5,3) / 0.2e1 + Ifges(4,2) / 0.2e1) * t12 + (-Ifges(4,6) + Ifges(5,6)) * t29 + (-Ifges(4,4) + Ifges(5,5)) * t13) * t12 + (V_base(2) * mrSges(1,1) + t16 * mrSges(2,1) - t14 * mrSges(3,1) - V_base(1) * mrSges(1,2) - t17 * mrSges(2,2) + t15 * mrSges(3,3) + Ifges(1,5) * V_base(4) + Ifges(1,6) * V_base(5) + (Ifges(2,3) / 0.2e1 + Ifges(3,2) / 0.2e1 + Ifges(1,3) / 0.2e1) * V_base(6) + (Ifges(3,4) + Ifges(2,5)) * t22 + (-Ifges(2,6) + Ifges(3,6)) * t21) * V_base(6);
T  = t6;
