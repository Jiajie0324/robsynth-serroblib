% Calculate kinetic energy for
% S3PRR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [3x1]
%   Generalized joint coordinates (joint angles)
% qJD [3x1]
%   Generalized joint velocities
% V_base [6x1]
%   Base Velocity (twist: stacked translational and angular velocity) in base frame
% pkin [4x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,d2,d3]';
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

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 10:12
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function T = S3PRR1_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(3,1),zeros(3,1),zeros(6,1),zeros(4,1),zeros(4,1),zeros(4,3),zeros(4,6)}
assert(isreal(qJ) && all(size(qJ) == [3 1]), ...
  'S3PRR1_energykin_floatb_twist_slag_vp2: qJ has to be [3x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [3 1]), ...
  'S3PRR1_energykin_floatb_twist_slag_vp2: qJD has to be [3x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S3PRR1_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [4 1]), ...
  'S3PRR1_energykin_floatb_twist_slag_vp2: pkin has to be [4x1] (double)');
assert( isreal(m) && all(size(m) == [4 1]), ...
  'S3PRR1_energykin_floatb_twist_slag_vp2: m has to be [4x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [4,3]), ...
  'S3PRR1_energykin_floatb_twist_slag_vp2: mrSges has to be [4x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [4 6]), ...
  'S3PRR1_energykin_floatb_twist_slag_vp2: Ifges has to be [4x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-14 10:11:51
% EndTime: 2018-11-14 10:11:51
% DurationCPUTime: 0.27s
% Computational Cost: add. (255->80), mult. (338->109), div. (0->0), fcn. (148->4), ass. (0->24)
t23 = V_base(2) + qJD(1);
t15 = V_base(6) * pkin(1) - V_base(4) * pkin(3) + t23;
t18 = -V_base(6) * qJ(1) + V_base(1);
t16 = V_base(5) * pkin(3) + t18;
t25 = sin(qJ(2));
t27 = cos(qJ(2));
t8 = t25 * t15 + t27 * t16;
t19 = -V_base(4) * qJ(1) - V_base(3);
t7 = t27 * t15 - t25 * t16;
t21 = V_base(6) + qJD(2);
t17 = -V_base(5) * pkin(1) - t19;
t26 = cos(qJ(3));
t24 = sin(qJ(3));
t20 = qJD(3) + t21;
t14 = t25 * V_base(5) + t27 * V_base(4);
t13 = -t25 * V_base(4) + t27 * V_base(5);
t9 = -t13 * pkin(2) + t17;
t6 = t24 * t13 + t26 * t14;
t5 = t26 * t13 - t24 * t14;
t4 = t13 * pkin(4) + t8;
t3 = t21 * pkin(2) - t14 * pkin(4) + t7;
t2 = t24 * t3 + t26 * t4;
t1 = -t24 * t4 + t26 * t3;
t10 = m(3) * (t17 ^ 2 + t7 ^ 2 + t8 ^ 2) / 0.2e1 + m(2) * (t18 ^ 2 + t19 ^ 2 + t23 ^ 2) / 0.2e1 + m(4) * (t1 ^ 2 + t2 ^ 2 + t9 ^ 2) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + V_base(3) ^ 2) / 0.2e1 + (t9 * mrSges(4,2) - t1 * mrSges(4,3) + Ifges(4,1) * t6 / 0.2e1) * t6 + (t7 * mrSges(3,1) - t8 * mrSges(3,2) + Ifges(3,3) * t21 / 0.2e1) * t21 + (-t9 * mrSges(4,1) + t2 * mrSges(4,3) + Ifges(4,4) * t6 + Ifges(4,2) * t5 / 0.2e1) * t5 + (t17 * mrSges(3,2) - t7 * mrSges(3,3) + Ifges(3,5) * t21 + Ifges(3,1) * t14 / 0.2e1) * t14 + (t1 * mrSges(4,1) - t2 * mrSges(4,2) + Ifges(4,5) * t6 + Ifges(4,6) * t5 + Ifges(4,3) * t20 / 0.2e1) * t20 + (-t17 * mrSges(3,1) + t8 * mrSges(3,3) + Ifges(3,4) * t14 + Ifges(3,6) * t21 + Ifges(3,2) * t13 / 0.2e1) * t13 + (V_base(2) * mrSges(1,1) + t23 * mrSges(2,1) - V_base(1) * mrSges(1,2) - t18 * mrSges(2,3) + (Ifges(1,3) / 0.2e1 + Ifges(2,2) / 0.2e1) * V_base(6)) * V_base(6) + (-V_base(3) * mrSges(1,1) + t19 * mrSges(2,1) - t18 * mrSges(2,2) + V_base(1) * mrSges(1,3) + (Ifges(1,2) / 0.2e1 + Ifges(2,3) / 0.2e1) * V_base(5) + (Ifges(1,6) - Ifges(2,6)) * V_base(6)) * V_base(5) + (V_base(3) * mrSges(1,2) + t23 * mrSges(2,2) - V_base(2) * mrSges(1,3) - t19 * mrSges(2,3) + (Ifges(1,1) / 0.2e1 + Ifges(2,1) / 0.2e1) * V_base(4) + (-Ifges(2,4) + Ifges(1,5)) * V_base(6) + (Ifges(1,4) + Ifges(2,5)) * V_base(5)) * V_base(4);
T  = t10;
