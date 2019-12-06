% Calculate potential energy for
% S5PRRRR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d3,d4,d5,theta1]';
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
% Datum: 2019-12-05 17:06
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S5PRRRR3_energypot_fixb_slag_vp1(qJ, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(9,1),zeros(6,1),zeros(6,3)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRRR3_energypot_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PRRRR3_energypot_fixb_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PRRRR3_energypot_fixb_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5PRRRR3_energypot_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5PRRRR3_energypot_fixb_slag_vp1: rSges has to be [6x3] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 17:06:01
% EndTime: 2019-12-05 17:06:02
% DurationCPUTime: 0.13s
% Computational Cost: add. (134->54), mult. (74->56), div. (0->0), fcn. (50->10), ass. (0->25)
t59 = rSges(6,3) + pkin(8);
t58 = pkin(5) + qJ(1);
t46 = pkin(9) + qJ(2);
t41 = sin(t46);
t47 = sin(pkin(9));
t44 = t47 * pkin(1);
t57 = pkin(2) * t41 + t44;
t42 = cos(t46);
t48 = cos(pkin(9));
t45 = t48 * pkin(1);
t56 = pkin(2) * t42 + t45;
t55 = pkin(6) + t58;
t43 = qJ(3) + t46;
t38 = sin(t43);
t54 = pkin(3) * t38 + t57;
t39 = cos(t43);
t53 = pkin(3) * t39 + t56;
t52 = pkin(7) + t55;
t49 = sin(qJ(5));
t50 = cos(qJ(5));
t51 = rSges(6,1) * t50 - rSges(6,2) * t49 + pkin(4);
t40 = qJ(4) + t43;
t35 = cos(t40);
t34 = sin(t40);
t1 = -m(1) * (g(1) * rSges(1,1) + g(2) * rSges(1,2) + g(3) * rSges(1,3)) - m(2) * (g(1) * (rSges(2,1) * t48 - rSges(2,2) * t47) + g(2) * (rSges(2,1) * t47 + rSges(2,2) * t48) + g(3) * (qJ(1) + rSges(2,3))) - m(3) * (g(1) * (rSges(3,1) * t42 - rSges(3,2) * t41 + t45) + g(2) * (rSges(3,1) * t41 + rSges(3,2) * t42 + t44) + g(3) * (rSges(3,3) + t58)) - m(4) * (g(1) * (rSges(4,1) * t39 - rSges(4,2) * t38 + t56) + g(2) * (rSges(4,1) * t38 + rSges(4,2) * t39 + t57) + g(3) * (rSges(4,3) + t55)) - m(5) * (g(1) * (rSges(5,1) * t35 - t34 * rSges(5,2) + t53) + g(2) * (rSges(5,1) * t34 + rSges(5,2) * t35 + t54) + g(3) * (rSges(5,3) + t52)) - m(6) * (g(1) * t53 + g(2) * t54 + g(3) * (rSges(6,1) * t49 + t50 * rSges(6,2) + t52) + (g(1) * t51 - g(2) * t59) * t35 + (g(1) * t59 + g(2) * t51) * t34);
U = t1;
