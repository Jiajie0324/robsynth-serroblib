% Calculate kinetic energy for
% S4PPPR2
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
%   pkin=[a2,a3,a4,d4,theta2]';
% m_mdh [5x1]
%   mass of all robot links (including the base)
% rSges [5x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% Icges [5x6]
%   inertia of all robot links about their respective center of mass, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertiavector2matrix.m)
% 
% Output:
% T [1x1]
%   kinetic energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 18:10
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S4PPPR2_energykin_floatb_twist_slag_vp1(qJ, qJD, V_base, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(6,1),zeros(5,1),zeros(5,1),zeros(5,3),zeros(5,6)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PPPR2_energykin_floatb_twist_slag_vp1: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4PPPR2_energykin_floatb_twist_slag_vp1: qJD has to be [4x1] (double)');
assert(isreal(V_base) && all(size(V_base) == [6 1]), ...
  'S4PPPR2_energykin_floatb_twist_slag_vp1: V_base has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [5 1]), ...
  'S4PPPR2_energykin_floatb_twist_slag_vp1: pkin has to be [5x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4PPPR2_energykin_floatb_twist_slag_vp1: m has to be [5x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [5,3]), ...
  'S4PPPR2_energykin_floatb_twist_slag_vp1: rSges has to be [5x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [5 6]), ...
  'S4PPPR2_energykin_floatb_twist_slag_vp1: Icges has to be [5x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_floatb_twist_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 18:09:56
% EndTime: 2019-03-08 18:09:56
% DurationCPUTime: 0.37s
% Computational Cost: add. (248->143), mult. (388->170), div. (0->0), fcn. (264->4), ass. (0->66)
t105 = Icges(4,4) + Icges(3,5);
t104 = Icges(3,6) - Icges(4,6);
t81 = sin(pkin(5));
t82 = cos(pkin(5));
t95 = sin(qJ(4));
t96 = cos(qJ(4));
t49 = t81 * t96 - t82 * t95;
t45 = Icges(5,4) * t49;
t48 = -t81 * t95 - t82 * t96;
t103 = Icges(5,2) * t48 / 0.2e1 + t45 / 0.2e1;
t102 = t49 / 0.2e1;
t101 = t81 / 0.2e1;
t100 = t82 / 0.2e1;
t99 = pkin(3) * t81;
t69 = pkin(2) * t82 + t81 * qJ(3);
t98 = -pkin(1) - t69;
t97 = -pkin(4) - rSges(5,3);
t94 = Icges(3,4) * t81;
t93 = Icges(5,4) * t48;
t92 = Icges(4,5) * t82;
t66 = t81 * pkin(2) - qJ(3) * t82;
t91 = -qJ(1) - t66;
t90 = V_base(5) * qJ(2) + V_base(1);
t89 = V_base(4) * qJ(1) + V_base(3);
t88 = qJD(1) + V_base(2);
t87 = qJD(3) * t81 + t90;
t86 = V_base(6) * pkin(1) + t88;
t85 = qJD(2) + t89;
t84 = V_base(6) * t69 + t86;
t83 = V_base(4) * t66 + t85;
t77 = V_base(6) - qJD(4);
t76 = Icges(3,4) * t82;
t75 = Icges(4,5) * t81;
t71 = rSges(3,1) * t82 - t81 * rSges(3,2);
t70 = rSges(4,1) * t82 + t81 * rSges(4,3);
t68 = t81 * rSges(3,1) + rSges(3,2) * t82;
t67 = t81 * rSges(4,1) - rSges(4,3) * t82;
t65 = Icges(3,1) * t82 - t94;
t64 = Icges(3,1) * t81 + t76;
t63 = Icges(4,1) * t82 + t75;
t62 = Icges(4,1) * t81 - t92;
t61 = -Icges(3,2) * t81 + t76;
t60 = Icges(3,2) * t82 + t94;
t55 = Icges(4,3) * t81 + t92;
t54 = -Icges(4,3) * t82 + t75;
t53 = -V_base(5) * rSges(1,1) + V_base(4) * rSges(1,2) + V_base(3);
t52 = V_base(6) * rSges(1,1) - V_base(4) * rSges(1,3) + V_base(2);
t51 = -V_base(6) * rSges(1,2) + V_base(5) * rSges(1,3) + V_base(1);
t50 = V_base(6) * rSges(2,1) + V_base(4) * rSges(2,2) + t88;
t44 = -V_base(5) * rSges(2,1) + V_base(4) * rSges(2,3) + t89;
t43 = -V_base(5) * rSges(2,2) + V_base(1) + (-rSges(2,3) - qJ(1)) * V_base(6);
t42 = V_base(5) * rSges(3,3) + (-qJ(1) - t68) * V_base(6) + t90;
t41 = t71 * V_base(6) + (-rSges(3,3) - qJ(2)) * V_base(4) + t86;
t40 = -rSges(5,1) * t48 + rSges(5,2) * t49;
t39 = rSges(5,1) * t49 + rSges(5,2) * t48;
t38 = -Icges(5,1) * t48 + t45;
t37 = Icges(5,1) * t49 + t93;
t36 = Icges(5,2) * t49 - t93;
t32 = t68 * V_base(4) + (-pkin(1) - t71) * V_base(5) + t85;
t31 = V_base(5) * rSges(4,2) + (-t67 + t91) * V_base(6) + t87;
t30 = -qJD(3) * t82 + V_base(6) * t70 + (-rSges(4,2) - qJ(2)) * V_base(4) + t84;
t29 = t67 * V_base(4) + (-t70 + t98) * V_base(5) + t83;
t28 = -t39 * t77 + t97 * V_base(5) + (t91 - t99) * V_base(6) + t87;
t27 = t77 * t40 + (pkin(3) * V_base(6) - qJD(3)) * t82 + (-qJ(2) - t97) * V_base(4) + t84;
t26 = (t39 + t99) * V_base(4) + (-pkin(3) * t82 - t40 + t98) * V_base(5) + t83;
t1 = m(1) * (t51 ^ 2 + t52 ^ 2 + t53 ^ 2) / 0.2e1 + m(2) * (t43 ^ 2 + t44 ^ 2 + t50 ^ 2) / 0.2e1 + m(3) * (t32 ^ 2 + t41 ^ 2 + t42 ^ 2) / 0.2e1 + m(4) * (t29 ^ 2 + t30 ^ 2 + t31 ^ 2) / 0.2e1 + m(5) * (t26 ^ 2 + t27 ^ 2 + t28 ^ 2) / 0.2e1 + Icges(5,3) * t77 ^ 2 / 0.2e1 + ((-Icges(5,5) * t49 - Icges(5,6) * t48) * t77 + (Icges(1,2) / 0.2e1 + Icges(2,3) / 0.2e1 + t60 * t100 - t82 * t54 / 0.2e1 + t48 * t103 + t37 * t102 + (t64 + t62) * t101) * V_base(5)) * V_base(5) + ((Icges(5,5) * t48 - Icges(5,6) * t49) * t77 + (Icges(1,1) / 0.2e1 + Icges(2,1) / 0.2e1 - t81 * t61 / 0.2e1 + t55 * t101 + t36 * t102 - t48 * t38 / 0.2e1 + (t65 + t63) * t100) * V_base(4) + (Icges(1,4) + Icges(2,5) + (t103 + t38 / 0.2e1) * t49 + (-t37 / 0.2e1 + t36 / 0.2e1) * t48 + (t64 / 0.2e1 + t61 / 0.2e1 + t62 / 0.2e1 - t55 / 0.2e1) * t82 + (-t60 / 0.2e1 + t65 / 0.2e1 + t54 / 0.2e1 + t63 / 0.2e1) * t81) * V_base(5)) * V_base(4) + ((Icges(1,3) / 0.2e1 + Icges(2,2) / 0.2e1 + Icges(3,3) / 0.2e1 + Icges(4,2) / 0.2e1) * V_base(6) + (Icges(1,6) - Icges(2,6)) * V_base(5) + (-Icges(2,4) + Icges(1,5)) * V_base(4) + (t104 * V_base(5) + t105 * V_base(4)) * t82 + (-t104 * V_base(4) + t105 * V_base(5)) * t81) * V_base(6);
T  = t1;
