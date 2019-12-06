% Calculate joint inertia matrix for
% S5RRPRR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d4,d5,theta3]';
% m_mdh [6x1]
%   mass of all robot links (including the base)
% rSges [6x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% Icges [6x6]
%   inertia of all robot links about their respective center of mass, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertiavector2matrix.m)
% 
% Output:
% Mq [5x5]
%   inertia matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 18:31
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S5RRPRR3_inertiaJ_slag_vp1(qJ, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(9,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRR3_inertiaJ_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRPRR3_inertiaJ_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRPRR3_inertiaJ_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RRPRR3_inertiaJ_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RRPRR3_inertiaJ_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:30:18
% EndTime: 2019-12-05 18:30:20
% DurationCPUTime: 0.43s
% Computational Cost: add. (1460->103), mult. (804->138), div. (0->0), fcn. (646->10), ass. (0->62)
t56 = qJ(1) + qJ(2);
t53 = pkin(9) + t56;
t52 = qJ(4) + t53;
t47 = sin(t52);
t86 = t47 ^ 2;
t48 = cos(t52);
t85 = t48 ^ 2;
t57 = sin(qJ(5));
t89 = Icges(6,5) * t57;
t59 = cos(qJ(5));
t88 = Icges(6,6) * t59;
t37 = t88 + t89;
t87 = t47 * t48;
t40 = t57 * rSges(6,1) + t59 * rSges(6,2);
t82 = m(6) * t40;
t54 = sin(t56);
t81 = pkin(2) * t54;
t55 = cos(t56);
t80 = pkin(2) * t55;
t58 = sin(qJ(1));
t79 = t58 * pkin(1);
t60 = cos(qJ(1));
t78 = t60 * pkin(1);
t77 = rSges(6,1) * t59;
t76 = rSges(6,2) * t57;
t75 = t48 * rSges(6,3) + t47 * t76;
t72 = Icges(6,2) * t59 ^ 2 + Icges(5,3) + (Icges(6,1) * t57 + 0.2e1 * Icges(6,4) * t59) * t57;
t71 = t37 * t85 + (t89 / 0.2e1 + t88 / 0.2e1 + t37 / 0.2e1) * t86;
t70 = -pkin(4) - t77;
t31 = -t55 * rSges(3,1) + t54 * rSges(3,2);
t27 = -t48 * rSges(5,1) + t47 * rSges(5,2);
t50 = sin(t53);
t69 = -pkin(3) * t50 - t81;
t51 = cos(t53);
t68 = -pkin(3) * t51 - t80;
t30 = -t54 * rSges(3,1) - t55 * rSges(3,2);
t26 = -t47 * rSges(5,1) - t48 * rSges(5,2);
t64 = Icges(3,3) + Icges(4,3) + t72;
t61 = Icges(6,5) * t59 - Icges(6,6) * t57;
t25 = -t51 * rSges(4,1) + t50 * rSges(4,2) - t80;
t24 = -t50 * rSges(4,1) - t51 * rSges(4,2) - t81;
t21 = t27 + t68;
t10 = t48 * pkin(8) + t70 * t47 + t75;
t20 = t26 + t69;
t35 = t48 * t76;
t11 = t35 + t70 * t48 + (-rSges(6,3) - pkin(8)) * t47;
t8 = t10 + t69;
t9 = t11 + t68;
t42 = -t60 * rSges(2,1) + t58 * rSges(2,2);
t41 = -t58 * rSges(2,1) - t60 * rSges(2,2);
t29 = t31 - t78;
t28 = t30 - t79;
t23 = t25 - t78;
t22 = t24 - t79;
t15 = Icges(6,3) * t47 + t61 * t48;
t14 = Icges(6,3) * t48 - t61 * t47;
t13 = t21 - t78;
t12 = t20 - t79;
t5 = t9 - t78;
t4 = t8 - t79;
t3 = t48 * (t47 * rSges(6,3) + t48 * t77 - t35) - t47 * (-t47 * t77 + t75);
t1 = [Icges(2,3) + m(2) * (t41 ^ 2 + t42 ^ 2) + m(3) * (t28 ^ 2 + t29 ^ 2) + m(4) * (t22 ^ 2 + t23 ^ 2) + m(5) * (t12 ^ 2 + t13 ^ 2) + m(6) * (t4 ^ 2 + t5 ^ 2) + t64; m(3) * (t30 * t28 + t31 * t29) + m(4) * (t24 * t22 + t25 * t23) + m(5) * (t20 * t12 + t21 * t13) + m(6) * (t8 * t4 + t9 * t5) + t64; m(6) * (t8 ^ 2 + t9 ^ 2) + m(5) * (t20 ^ 2 + t21 ^ 2) + m(4) * (t24 ^ 2 + t25 ^ 2) + m(3) * (t30 ^ 2 + t31 ^ 2) + t64; 0; 0; m(4) + m(5) + m(6); m(5) * (t26 * t12 + t27 * t13) + m(6) * (t10 * t4 + t11 * t5) + t72; m(6) * (t10 * t8 + t11 * t9) + m(5) * (t26 * t20 + t27 * t21) + t72; 0; m(5) * (t26 ^ 2 + t27 ^ 2) + m(6) * (t10 ^ 2 + t11 ^ 2) + t72; (-t4 * t48 + t47 * t5) * t82 + t71; (t47 * t9 - t48 * t8) * t82 + t71; m(6) * t3; (-t10 * t48 + t11 * t47) * t82 + t71; m(6) * (t3 ^ 2 + (t85 + t86) * t40 ^ 2) + t48 * (t85 * t14 + t15 * t87) + t47 * (t14 * t87 + t86 * t15);];
%% Postprocessing: Reshape Output
% From vec2symmat_5_matlab.m
res = [t1(1), t1(2), t1(4), t1(7), t1(11); t1(2), t1(3), t1(5), t1(8), t1(12); t1(4), t1(5), t1(6), t1(9), t1(13); t1(7), t1(8), t1(9), t1(10), t1(14); t1(11), t1(12), t1(13), t1(14), t1(15);];
Mq = res;
