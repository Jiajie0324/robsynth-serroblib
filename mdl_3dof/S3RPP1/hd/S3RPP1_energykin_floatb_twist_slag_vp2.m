% Calculate kinetic energy for
% S3RPP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [3x1]
%   Generalized joint coordinates (joint angles)
% qJD [3x1]
%   Generalized joint velocities
% V_base [6x1]
%   Base Velocity (twist: stacked translational and angular velocity) in base frame
% pkin [3x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,d1]';
% m_mdh [4x1]
%   mass of all robot links (including the base)
% mrSges [4x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% Ifges [4x6]
%   inertia of all robot links about their respective body frame origins, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertial_parameters_convert_par1_par2.m)
% 
% Output:
% T [1x1]
%   kinetic energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 18:05
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S3RPP1_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(3,1),zeros(3,1),zeros(6,1),zeros(3,1),zeros(4,1),zeros(4,3),zeros(4,6)}
assert(isreal(qJ) && all(size(qJ) == [3 1]), ...
  'S3RPP1_energykin_floatb_twist_slag_vp2: qJ has to be [3x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [3 1]), ...
  'S3RPP1_energykin_floatb_twist_slag_vp2: qJD has to be [3x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S3RPP1_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [3 1]), ...
  'S3RPP1_energykin_floatb_twist_slag_vp2: pkin has to be [3x1] (double)');
assert(isreal(m) && all(size(m) == [4 1]), ...
  'S3RPP1_energykin_floatb_twist_slag_vp2: m has to be [4x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [4,3]), ...
  'S3RPP1_energykin_floatb_twist_slag_vp2: mrSges has to be [4x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [4 6]), ...
  'S3RPP1_energykin_floatb_twist_slag_vp2: Ifges has to be [4x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 18:04:50
% EndTime: 2019-03-08 18:04:50
% DurationCPUTime: 0.21s
% Computational Cost: add. (215->77), mult. (288->91), div. (0->0), fcn. (124->2), ass. (0->20)
t23 = cos(qJ(1));
t22 = pkin(1) + qJ(3);
t14 = V_base(5) * pkin(3) + V_base(1);
t15 = -V_base(4) * pkin(3) + V_base(2);
t18 = sin(qJ(1));
t8 = t23 * t14 + t18 * t15;
t10 = t18 * V_base(5) + t23 * V_base(4);
t21 = -t10 * qJ(2) + V_base(3);
t17 = V_base(6) + qJD(1);
t6 = -t17 * qJ(2) - t8;
t7 = -t18 * t14 + t23 * t15;
t20 = qJD(2) - t7;
t19 = V_base(3) ^ 2;
t9 = t18 * V_base(4) - t23 * V_base(5);
t5 = -t17 * pkin(1) + t20;
t4 = t9 * pkin(1) + t21;
t3 = -t9 * pkin(2) + qJD(3) - t6;
t2 = t22 * t9 + t21;
t1 = t10 * pkin(2) - t22 * t17 + t20;
t11 = m(2) * (t7 ^ 2 + t8 ^ 2 + t19) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + t19) / 0.2e1 + m(4) * (t1 ^ 2 + t2 ^ 2 + t3 ^ 2) / 0.2e1 + m(3) * (t4 ^ 2 + t5 ^ 2 + t6 ^ 2) / 0.2e1 + (V_base(2) * mrSges(1,1) - V_base(1) * mrSges(1,2) + Ifges(1,3) * V_base(6) / 0.2e1) * V_base(6) + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,6) * V_base(6) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,5) * V_base(6) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (V_base(3) * mrSges(2,1) + t6 * mrSges(3,1) - t3 * mrSges(4,1) - t4 * mrSges(3,2) - t8 * mrSges(2,3) + t2 * mrSges(4,3) + (Ifges(4,2) / 0.2e1 + Ifges(2,2) / 0.2e1 + Ifges(3,3) / 0.2e1) * t9) * t9 + (t7 * mrSges(2,1) - t8 * mrSges(2,2) + t5 * mrSges(3,2) + t3 * mrSges(4,2) - t6 * mrSges(3,3) - t1 * mrSges(4,3) + (Ifges(4,1) / 0.2e1 + Ifges(2,3) / 0.2e1 + Ifges(3,1) / 0.2e1) * t17 + (Ifges(4,4) + Ifges(3,5) - Ifges(2,6)) * t9) * t17 + (t5 * mrSges(3,1) + t1 * mrSges(4,1) + V_base(3) * mrSges(2,2) - t2 * mrSges(4,2) - t7 * mrSges(2,3) - t4 * mrSges(3,3) + (Ifges(4,3) / 0.2e1 + Ifges(2,1) / 0.2e1 + Ifges(3,2) / 0.2e1) * t10 + (-Ifges(2,4) - Ifges(3,6) + Ifges(4,6)) * t9 + (-Ifges(3,4) + Ifges(2,5) + Ifges(4,5)) * t17) * t10;
T  = t11;
