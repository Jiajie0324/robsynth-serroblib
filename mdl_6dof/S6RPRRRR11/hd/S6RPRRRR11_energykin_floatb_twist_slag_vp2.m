% Calculate kinetic energy for
% S6RPRRRR11
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% V_base [6x1]
%   Base Velocity (twist: stacked translational and angular velocity) in base frame
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d3,d4,d5,d6,theta2]';
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
% Datum: 2019-03-09 07:49
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6RPRRRR11_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(13,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRR11_energykin_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRRR11_energykin_floatb_twist_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S6RPRRRR11_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6RPRRRR11_energykin_floatb_twist_slag_vp2: pkin has to be [13x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRRRR11_energykin_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RPRRRR11_energykin_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RPRRRR11_energykin_floatb_twist_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 07:38:10
% EndTime: 2019-03-09 07:38:12
% DurationCPUTime: 1.92s
% Computational Cost: add. (9937->166), mult. (16221->250), div. (0->0), fcn. (14174->16), ass. (0->73)
t68 = pkin(8) * V_base(5) + V_base(1);
t69 = -pkin(8) * V_base(4) + V_base(2);
t81 = sin(qJ(1));
t86 = cos(qJ(1));
t61 = -t68 * t81 + t69 * t86;
t70 = V_base(6) + qJD(1);
t76 = cos(pkin(6));
t64 = t81 * V_base(5) + t86 * V_base(4);
t91 = qJ(2) * t64;
t55 = pkin(1) * t70 - t76 * t91 + t61;
t63 = -t81 * V_base(4) + t86 * V_base(5);
t73 = sin(pkin(6));
t59 = -pkin(1) * t63 - t73 * t91 + V_base(3);
t99 = t55 * t76 + t59 * t73;
t62 = t68 * t86 + t69 * t81;
t88 = t63 * t76 + t70 * t73;
t52 = qJ(2) * t88 + t62;
t71 = sin(pkin(13));
t74 = cos(pkin(13));
t41 = -t52 * t71 + t74 * t99;
t60 = -t63 * t73 + t70 * t76;
t75 = cos(pkin(7));
t54 = t64 * t74 + t71 * t88;
t97 = pkin(9) * t54;
t37 = pkin(2) * t60 - t75 * t97 + t41;
t47 = -t55 * t73 + t59 * t76 + qJD(2);
t53 = -t64 * t71 + t74 * t88;
t72 = sin(pkin(7));
t40 = -pkin(2) * t53 - t72 * t97 + t47;
t98 = t37 * t75 + t40 * t72;
t42 = t74 * t52 + t71 * t99;
t89 = t53 * t75 + t60 * t72;
t34 = pkin(9) * t89 + t42;
t80 = sin(qJ(3));
t85 = cos(qJ(3));
t24 = -t34 * t80 + t85 * t98;
t45 = -t54 * t80 + t85 * t89;
t25 = t85 * t34 + t80 * t98;
t48 = -t53 * t72 + t60 * t75 + qJD(3);
t21 = pkin(10) * t48 + t25;
t26 = -t37 * t72 + t40 * t75;
t46 = t54 * t85 + t80 * t89;
t23 = -pkin(3) * t45 - pkin(10) * t46 + t26;
t79 = sin(qJ(4));
t84 = cos(qJ(4));
t12 = t21 * t84 + t23 * t79;
t44 = qJD(4) - t45;
t10 = pkin(11) * t44 + t12;
t20 = -pkin(3) * t48 - t24;
t35 = -t46 * t79 + t48 * t84;
t36 = t46 * t84 + t48 * t79;
t15 = -pkin(4) * t35 - pkin(11) * t36 + t20;
t78 = sin(qJ(5));
t83 = cos(qJ(5));
t6 = t10 * t83 + t15 * t78;
t5 = -t10 * t78 + t15 * t83;
t11 = -t21 * t79 + t23 * t84;
t33 = qJD(5) - t35;
t9 = -pkin(4) * t44 - t11;
t87 = V_base(3) ^ 2;
t82 = cos(qJ(6));
t77 = sin(qJ(6));
t32 = qJD(6) + t33;
t28 = t36 * t83 + t44 * t78;
t27 = -t36 * t78 + t44 * t83;
t17 = t27 * t77 + t28 * t82;
t16 = t27 * t82 - t28 * t77;
t7 = -pkin(5) * t27 + t9;
t4 = pkin(12) * t27 + t6;
t3 = pkin(5) * t33 - pkin(12) * t28 + t5;
t2 = t3 * t77 + t4 * t82;
t1 = t3 * t82 - t4 * t77;
t8 = (-t20 * mrSges(5,1) + t12 * mrSges(5,3) + Ifges(5,4) * t36 + Ifges(5,6) * t44 + Ifges(5,2) * t35 / 0.2e1) * t35 + m(3) * (t41 ^ 2 + t42 ^ 2 + t47 ^ 2) / 0.2e1 + m(4) * (t24 ^ 2 + t25 ^ 2 + t26 ^ 2) / 0.2e1 + m(5) * (t11 ^ 2 + t12 ^ 2 + t20 ^ 2) / 0.2e1 + m(7) * (t1 ^ 2 + t2 ^ 2 + t7 ^ 2) / 0.2e1 + m(6) * (t5 ^ 2 + t6 ^ 2 + t9 ^ 2) / 0.2e1 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,6) * V_base(6) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (t1 * mrSges(7,1) - t2 * mrSges(7,2) + Ifges(7,3) * t32 / 0.2e1) * t32 + (-t9 * mrSges(6,1) + t6 * mrSges(6,3) + Ifges(6,4) * t28 + Ifges(6,6) * t33 + Ifges(6,2) * t27 / 0.2e1) * t27 + (t9 * mrSges(6,2) - t5 * mrSges(6,3) + Ifges(6,5) * t33 + Ifges(6,1) * t28 / 0.2e1) * t28 + (t20 * mrSges(5,2) - t11 * mrSges(5,3) + Ifges(5,5) * t44 + Ifges(5,1) * t36 / 0.2e1) * t36 + (-t26 * mrSges(4,1) + t25 * mrSges(4,3) + Ifges(4,4) * t46 + Ifges(4,6) * t48 + Ifges(4,2) * t45 / 0.2e1) * t45 + (V_base(3) * mrSges(2,2) - t61 * mrSges(2,3) + Ifges(2,5) * t70 + Ifges(2,1) * t64 / 0.2e1) * t64 + (-t47 * mrSges(3,1) + t42 * mrSges(3,3) + Ifges(3,4) * t54 + Ifges(3,6) * t60 + Ifges(3,2) * t53 / 0.2e1) * t53 + (t24 * mrSges(4,1) - t25 * mrSges(4,2) + Ifges(4,3) * t48 / 0.2e1) * t48 + (t41 * mrSges(3,1) - t42 * mrSges(3,2) + Ifges(3,3) * t60 / 0.2e1) * t60 + (-t7 * mrSges(7,1) + t2 * mrSges(7,3) + Ifges(7,4) * t17 + Ifges(7,6) * t32 + Ifges(7,2) * t16 / 0.2e1) * t16 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,5) * V_base(6) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (t7 * mrSges(7,2) - t1 * mrSges(7,3) + Ifges(7,5) * t32 + Ifges(7,1) * t17 / 0.2e1) * t17 + (t47 * mrSges(3,2) - t41 * mrSges(3,3) + Ifges(3,5) * t60 + Ifges(3,1) * t54 / 0.2e1) * t54 + (t11 * mrSges(5,1) - t12 * mrSges(5,2) + Ifges(5,3) * t44 / 0.2e1) * t44 + (-V_base(3) * mrSges(2,1) + t62 * mrSges(2,3) + Ifges(2,4) * t64 + Ifges(2,6) * t70 + Ifges(2,2) * t63 / 0.2e1) * t63 + (t61 * mrSges(2,1) - t62 * mrSges(2,2) + Ifges(2,3) * t70 / 0.2e1) * t70 + (V_base(2) * mrSges(1,1) - V_base(1) * mrSges(1,2) + Ifges(1,3) * V_base(6) / 0.2e1) * V_base(6) + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + t87) / 0.2e1 + m(2) * (t61 ^ 2 + t62 ^ 2 + t87) / 0.2e1 + (t26 * mrSges(4,2) - t24 * mrSges(4,3) + Ifges(4,5) * t48 + Ifges(4,1) * t46 / 0.2e1) * t46 + (t5 * mrSges(6,1) - t6 * mrSges(6,2) + Ifges(6,3) * t33 / 0.2e1) * t33;
T  = t8;
