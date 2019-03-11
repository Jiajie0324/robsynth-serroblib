% Calculate kinetic energy for
% S7RRRRRRR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [7x1]
%   Generalized joint coordinates (joint angles)
% qJD [7x1]
%   Generalized joint velocities
% V_base [6x1]
%   Base Velocity (twist: stacked translational and angular velocity) in base frame
% pkin [4x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[d1,d3,d5,d7]';
% m_mdh [8x1]
%   mass of all robot links (including the base)
% mrSges [8x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% Ifges [8x6]
%   inertia of all robot links about their respective body frame origins, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertial_parameters_convert_par1_par2.m)
% 
% Output:
% T [1x1]
%   kinetic energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-10 08:31
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S7RRRRRRR1_energykin_floatb_twist_slag_vp2(qJ, qJD, V_base, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(7,1),zeros(7,1),zeros(6,1),zeros(4,1),zeros(8,1),zeros(8,3),zeros(8,6)}
assert(isreal(qJ) && all(size(qJ) == [7 1]), ...
  'S7RRRRRRR1_energykin_floatb_twist_slag_vp2: qJ has to be [7x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [7 1]), ...
  'S7RRRRRRR1_energykin_floatb_twist_slag_vp2: qJD has to be [7x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S7RRRRRRR1_energykin_floatb_twist_slag_vp2: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [4 1]), ...
  'S7RRRRRRR1_energykin_floatb_twist_slag_vp2: pkin has to be [4x1] (double)');
assert(isreal(m) && all(size(m) == [8 1]), ...
  'S7RRRRRRR1_energykin_floatb_twist_slag_vp2: m has to be [8x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [8,3]), ...
  'S7RRRRRRR1_energykin_floatb_twist_slag_vp2: mrSges has to be [8x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [8 6]), ...
  'S7RRRRRRR1_energykin_floatb_twist_slag_vp2: Ifges has to be [8x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-10 06:29:12
% EndTime: 2019-03-10 06:29:13
% DurationCPUTime: 1.78s
% Computational Cost: add. (3919->162), mult. (5080->241), div. (0->0), fcn. (4332->14), ass. (0->65)
t65 = sin(qJ(1));
t72 = cos(qJ(1));
t52 = t65 * V_base(5) + t72 * V_base(4);
t58 = V_base(6) + qJD(1);
t64 = sin(qJ(2));
t71 = cos(qJ(2));
t45 = t52 * t71 + t58 * t64;
t55 = V_base(5) * pkin(1) + V_base(1);
t56 = -V_base(4) * pkin(1) + V_base(2);
t47 = t55 * t65 - t72 * t56;
t36 = pkin(2) * t45 + t47;
t49 = t55 * t72 + t56 * t65;
t42 = t71 * t49 + t64 * V_base(3);
t51 = -t65 * V_base(4) + t72 * V_base(5);
t50 = qJD(2) - t51;
t39 = -pkin(2) * t50 + t42;
t63 = sin(qJ(3));
t70 = cos(qJ(3));
t30 = -t36 * t63 + t39 * t70;
t41 = -t49 * t64 + t71 * V_base(3);
t62 = sin(qJ(4));
t69 = cos(qJ(4));
t23 = t69 * t30 - t41 * t62;
t37 = -t45 * t63 - t50 * t70;
t35 = qJD(4) + t37;
t17 = pkin(3) * t35 + t23;
t29 = -t36 * t70 - t39 * t63;
t38 = t45 * t70 - t50 * t63;
t44 = -t52 * t64 + t71 * t58;
t43 = qJD(3) + t44;
t34 = t38 * t69 - t43 * t62;
t19 = -pkin(3) * t34 + t29;
t61 = sin(qJ(5));
t68 = cos(qJ(5));
t9 = t17 * t61 - t68 * t19;
t76 = t9 ^ 2;
t21 = t30 * t62 + t41 * t69;
t75 = t21 ^ 2;
t74 = t47 ^ 2;
t11 = t17 * t68 + t19 * t61;
t60 = sin(qJ(6));
t67 = cos(qJ(6));
t7 = t67 * t11 + t60 * t21;
t26 = t34 * t68 + t35 * t61;
t33 = -t38 * t62 - t43 * t69;
t32 = qJD(5) - t33;
t15 = -t26 * t60 + t67 * t32;
t25 = -t34 * t61 + t35 * t68;
t73 = V_base(3) ^ 2;
t66 = cos(qJ(7));
t59 = sin(qJ(7));
t40 = t41 ^ 2;
t28 = t29 ^ 2;
t24 = qJD(6) - t25;
t16 = t26 * t67 + t32 * t60;
t14 = qJD(7) + t15;
t13 = t16 * t66 - t24 * t59;
t12 = -t16 * t59 - t24 * t66;
t6 = -t11 * t60 + t21 * t67;
t5 = t6 ^ 2;
t4 = pkin(4) * t16 + t9;
t3 = -pkin(4) * t24 + t7;
t2 = t3 * t66 - t4 * t59;
t1 = -t3 * t59 - t4 * t66;
t8 = (t29 * mrSges(4,1) - t30 * mrSges(4,2) + Ifges(4,3) * t43 / 0.2e1) * t43 + (V_base(2) * mrSges(1,1) - V_base(1) * mrSges(1,2) + Ifges(1,3) * V_base(6) / 0.2e1) * V_base(6) + (-V_base(3) * mrSges(2,1) + t49 * mrSges(2,3) + Ifges(2,4) * t52 + Ifges(2,6) * t58 + Ifges(2,2) * t51 / 0.2e1) * t51 + (t47 * mrSges(3,2) - t41 * mrSges(3,3) + Ifges(3,5) * t50 + Ifges(3,1) * t45 / 0.2e1) * t45 + (-t47 * mrSges(3,1) + t42 * mrSges(3,3) + Ifges(3,4) * t45 + Ifges(3,6) * t50 + Ifges(3,2) * t44 / 0.2e1) * t44 + m(1) * (V_base(1) ^ 2 + V_base(2) ^ 2 + t73) / 0.2e1 + m(4) * (t30 ^ 2 + t28 + t40) / 0.2e1 + m(8) * (t1 ^ 2 + t2 ^ 2 + t5) / 0.2e1 + (t21 * mrSges(6,2) + t9 * mrSges(6,3) + Ifges(6,5) * t32 + Ifges(6,1) * t26 / 0.2e1) * t26 + (t29 * mrSges(5,2) + t21 * mrSges(5,3) + Ifges(5,5) * t35 + Ifges(5,1) * t34 / 0.2e1) * t34 + (t6 * mrSges(8,2) - t1 * mrSges(8,3) + Ifges(8,5) * t14 + Ifges(8,1) * t13 / 0.2e1) * t13 + (-t41 * mrSges(4,1) + t30 * mrSges(4,3) + Ifges(4,4) * t38 + Ifges(4,6) * t43 + Ifges(4,2) * t37 / 0.2e1) * t37 + (t41 * mrSges(4,2) - t29 * mrSges(4,3) + Ifges(4,5) * t43 + Ifges(4,1) * t38 / 0.2e1) * t38 + (-t9 * mrSges(6,1) - t11 * mrSges(6,2) + Ifges(6,3) * t32 / 0.2e1) * t32 + (-t29 * mrSges(5,1) + t23 * mrSges(5,3) + Ifges(5,4) * t34 + Ifges(5,6) * t35 + Ifges(5,2) * t33 / 0.2e1) * t33 + (-t21 * mrSges(6,1) + t11 * mrSges(6,3) + Ifges(6,4) * t26 + Ifges(6,6) * t32 + Ifges(6,2) * t25 / 0.2e1) * t25 + m(2) * (t49 ^ 2 + t73 + t74) / 0.2e1 + m(3) * (t42 ^ 2 + t40 + t74) / 0.2e1 + m(5) * (t23 ^ 2 + t28 + t75) / 0.2e1 + m(7) * (t7 ^ 2 + t5 + t76) / 0.2e1 + m(6) * (t11 ^ 2 + t75 + t76) / 0.2e1 + (-t9 * mrSges(7,1) + t7 * mrSges(7,3) + Ifges(7,4) * t16 + Ifges(7,6) * t24 + Ifges(7,2) * t15 / 0.2e1) * t15 + (t6 * mrSges(7,1) - t7 * mrSges(7,2) + Ifges(7,3) * t24 / 0.2e1) * t24 + (-t6 * mrSges(8,1) + t2 * mrSges(8,3) + Ifges(8,4) * t13 + Ifges(8,6) * t14 + Ifges(8,2) * t12 / 0.2e1) * t12 + (V_base(3) * mrSges(2,2) + t47 * mrSges(2,3) + Ifges(2,5) * t58 + Ifges(2,1) * t52 / 0.2e1) * t52 + (-t47 * mrSges(2,1) - t49 * mrSges(2,2) + Ifges(2,3) * t58 / 0.2e1) * t58 + (-V_base(3) * mrSges(1,1) + V_base(1) * mrSges(1,3) + Ifges(1,6) * V_base(6) + Ifges(1,2) * V_base(5) / 0.2e1) * V_base(5) + (t1 * mrSges(8,1) - t2 * mrSges(8,2) + Ifges(8,3) * t14 / 0.2e1) * t14 + (V_base(3) * mrSges(1,2) - V_base(2) * mrSges(1,3) + Ifges(1,4) * V_base(5) + Ifges(1,5) * V_base(6) + Ifges(1,1) * V_base(4) / 0.2e1) * V_base(4) + (-t21 * mrSges(5,1) - t23 * mrSges(5,2) + Ifges(5,3) * t35 / 0.2e1) * t35 + (t9 * mrSges(7,2) - t6 * mrSges(7,3) + Ifges(7,5) * t24 + Ifges(7,1) * t16 / 0.2e1) * t16 + (t41 * mrSges(3,1) - t42 * mrSges(3,2) + Ifges(3,3) * t50 / 0.2e1) * t50;
T  = t8;
