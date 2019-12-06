% Calculate potential energy for
% S5PRRRP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d3,d4,theta1]';
% m_mdh [6x1]
%   mass of all robot links (including the base)
% rSges [6x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% 
% Output:
% U [1x1]
%   Potential energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 16:40
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S5PRRRP1_energypot_fixb_slag_vp1(qJ, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(8,1),zeros(6,1),zeros(6,3)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRRP1_energypot_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PRRRP1_energypot_fixb_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRRRP1_energypot_fixb_slag_vp1: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5PRRRP1_energypot_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5PRRRP1_energypot_fixb_slag_vp1: rSges has to be [6x3] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 16:39:42
% EndTime: 2019-12-05 16:39:43
% DurationCPUTime: 0.24s
% Computational Cost: add. (130->54), mult. (85->58), div. (0->0), fcn. (61->8), ass. (0->23)
t55 = rSges(6,1) + pkin(4);
t54 = rSges(5,3) + pkin(7);
t53 = rSges(6,3) + qJ(5) + pkin(7);
t52 = pkin(5) + qJ(1);
t40 = pkin(8) + qJ(2);
t35 = sin(t40);
t41 = sin(pkin(8));
t38 = t41 * pkin(1);
t51 = pkin(2) * t35 + t38;
t36 = cos(t40);
t42 = cos(pkin(8));
t39 = t42 * pkin(1);
t50 = pkin(2) * t36 + t39;
t49 = pkin(6) + t52;
t44 = sin(qJ(4));
t45 = cos(qJ(4));
t48 = rSges(5,1) * t45 - rSges(5,2) * t44 + pkin(3);
t47 = -rSges(6,2) * t44 + t55 * t45 + pkin(3);
t46 = g(1) * t50 + g(2) * t51;
t37 = qJ(3) + t40;
t33 = cos(t37);
t32 = sin(t37);
t1 = -m(1) * (g(1) * rSges(1,1) + g(2) * rSges(1,2) + g(3) * rSges(1,3)) - m(2) * (g(1) * (rSges(2,1) * t42 - rSges(2,2) * t41) + g(2) * (rSges(2,1) * t41 + rSges(2,2) * t42) + g(3) * (qJ(1) + rSges(2,3))) - m(3) * (g(1) * (rSges(3,1) * t36 - rSges(3,2) * t35 + t39) + g(2) * (rSges(3,1) * t35 + rSges(3,2) * t36 + t38) + g(3) * (rSges(3,3) + t52)) - m(4) * (g(1) * (rSges(4,1) * t33 - rSges(4,2) * t32 + t50) + g(2) * (rSges(4,1) * t32 + rSges(4,2) * t33 + t51) + g(3) * (rSges(4,3) + t49)) - m(5) * (g(3) * (t44 * rSges(5,1) + rSges(5,2) * t45 + t49) + (g(1) * t48 - g(2) * t54) * t33 + (g(1) * t54 + g(2) * t48) * t32 + t46) - m(6) * (g(3) * (rSges(6,2) * t45 + t55 * t44 + t49) + (g(1) * t47 - g(2) * t53) * t33 + (g(1) * t53 + g(2) * t47) * t32 + t46);
U = t1;
