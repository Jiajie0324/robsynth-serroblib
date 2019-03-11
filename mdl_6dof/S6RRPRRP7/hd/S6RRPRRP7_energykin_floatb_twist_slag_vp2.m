% Calculate kinetic energy for
% S6RRPRRP7
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d5]';
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
% Datum: 2019-03-09 12:21
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6RRPRRP7_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(9,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP7_energykin_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRP7_energykin_floatb_twist_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S6RRPRRP7_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRPRRP7_energykin_floatb_twist_slag_vp2: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRPRRP7_energykin_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRPRRP7_energykin_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RRPRRP7_energykin_floatb_twist_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 12:16:39
% EndTime: 2019-03-09 12:16:40
% DurationCPUTime: 0.92s
% Computational Cost: add. (1907->149), mult. (2391->196), div. (0->0), fcn. (1784->8), ass. (0->48)
t52 = V_base(5) * pkin(6) + V_base(1);
t53 = -V_base(4) * pkin(6) + V_base(2);
t60 = sin(qJ(1));
t62 = cos(qJ(1));
t39 = -t60 * t52 + t62 * t53;
t56 = V_base(6) + qJD(1);
t33 = -t56 * pkin(1) - t39;
t46 = t60 * V_base(5) + t62 * V_base(4);
t59 = sin(qJ(2));
t66 = cos(qJ(2));
t37 = t46 * t59 - t56 * t66;
t38 = t46 * t66 + t59 * t56;
t21 = t37 * pkin(2) - t38 * qJ(3) + t33;
t18 = -pkin(3) * t37 - t21;
t58 = sin(qJ(4));
t61 = cos(qJ(4));
t27 = t37 * t61 - t38 * t58;
t28 = t37 * t58 + t38 * t61;
t12 = -pkin(4) * t27 - pkin(9) * t28 + t18;
t57 = sin(qJ(5));
t65 = cos(qJ(5));
t45 = -t60 * V_base(4) + t62 * V_base(5);
t44 = qJD(2) - t45;
t30 = -pkin(1) * t45 - pkin(7) * t46 + V_base(3);
t40 = t62 * t52 + t60 * t53;
t34 = pkin(7) * t56 + t40;
t24 = t30 * t66 - t59 * t34;
t64 = qJD(3) - t24;
t14 = -t38 * pkin(8) + (-pkin(2) - pkin(3)) * t44 + t64;
t25 = t59 * t30 + t66 * t34;
t20 = t44 * qJ(3) + t25;
t17 = pkin(8) * t37 + t20;
t10 = t58 * t14 + t61 * t17;
t43 = qJD(4) - t44;
t8 = pkin(9) * t43 + t10;
t4 = t57 * t12 + t65 * t8;
t9 = t14 * t61 - t58 * t17;
t7 = -pkin(4) * t43 - t9;
t3 = t12 * t65 - t57 * t8;
t63 = V_base(3) ^ 2;
t26 = qJD(5) - t27;
t23 = t28 * t65 + t57 * t43;
t22 = t28 * t57 - t43 * t65;
t19 = -t44 * pkin(2) + t64;
t5 = pkin(5) * t22 - qJ(6) * t23 + t7;
t2 = qJ(6) * t26 + t4;
t1 = -t26 * pkin(5) + qJD(6) - t3;
t6 = m(2) * (t39 ^ 2 + t40 ^ 2 + t63) / 0.2e1 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + t63) / 0.2e1 + m(3) * (t24 ^ 2 + t25 ^ 2 + t33 ^ 2) / 0.2e1 + m(5) * (t10 ^ 2 + t18 ^ 2 + t9 ^ 2) / 0.2e1 + m(4) * (t19 ^ 2 + t20 ^ 2 + t21 ^ 2) / 0.2e1 + m(7) * (t1 ^ 2 + t2 ^ 2 + t5 ^ 2) / 0.2e1 + m(6) * (t3 ^ 2 + t4 ^ 2 + t7 ^ 2) / 0.2e1 + (V_base(2) * mrSges(1,1) - V_base(1) * mrSges(1,2) + Ifges(1,3) * V_base(6) / 0.2e1) * V_base(6) + (t39 * mrSges(2,1) - t40 * mrSges(2,2) + Ifges(2,3) * t56 / 0.2e1) * t56 + (t9 * mrSges(5,1) - t10 * mrSges(5,2) + Ifges(5,3) * t43 / 0.2e1) * t43 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,6) * V_base(6) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (V_base(3) * mrSges(2,2) - t39 * mrSges(2,3) + Ifges(2,5) * t56 + Ifges(2,1) * t46 / 0.2e1) * t46 + (t18 * mrSges(5,2) - t9 * mrSges(5,3) + Ifges(5,5) * t43 + Ifges(5,1) * t28 / 0.2e1) * t28 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,5) * V_base(6) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (-V_base(3) * mrSges(2,1) + t40 * mrSges(2,3) + Ifges(2,4) * t46 + Ifges(2,6) * t56 + Ifges(2,2) * t45 / 0.2e1) * t45 + (-t18 * mrSges(5,1) + t10 * mrSges(5,3) + Ifges(5,4) * t28 + Ifges(5,6) * t43 + Ifges(5,2) * t27 / 0.2e1) * t27 + (t24 * mrSges(3,1) - t19 * mrSges(4,1) - t25 * mrSges(3,2) + t20 * mrSges(4,3) + (Ifges(3,3) / 0.2e1 + Ifges(4,2) / 0.2e1) * t44) * t44 + (t3 * mrSges(6,1) - t1 * mrSges(7,1) - t4 * mrSges(6,2) + t2 * mrSges(7,3) + (Ifges(7,2) / 0.2e1 + Ifges(6,3) / 0.2e1) * t26) * t26 + (t33 * mrSges(3,2) + t19 * mrSges(4,2) - t24 * mrSges(3,3) - t21 * mrSges(4,3) + (Ifges(3,1) / 0.2e1 + Ifges(4,1) / 0.2e1) * t38 + (Ifges(4,4) + Ifges(3,5)) * t44) * t38 + (t7 * mrSges(6,2) + t1 * mrSges(7,2) - t3 * mrSges(6,3) - t5 * mrSges(7,3) + (Ifges(7,1) / 0.2e1 + Ifges(6,1) / 0.2e1) * t23 + (Ifges(7,4) + Ifges(6,5)) * t26) * t23 + (t33 * mrSges(3,1) + t21 * mrSges(4,1) - t20 * mrSges(4,2) - t25 * mrSges(3,3) + (Ifges(4,3) / 0.2e1 + Ifges(3,2) / 0.2e1) * t37 + (-Ifges(3,6) + Ifges(4,6)) * t44 + (-Ifges(3,4) + Ifges(4,5)) * t38) * t37 + (t7 * mrSges(6,1) + t5 * mrSges(7,1) - t2 * mrSges(7,2) - t4 * mrSges(6,3) + (Ifges(7,3) / 0.2e1 + Ifges(6,2) / 0.2e1) * t22 + (-Ifges(6,6) + Ifges(7,6)) * t26 + (-Ifges(6,4) + Ifges(7,5)) * t23) * t22;
T  = t6;
