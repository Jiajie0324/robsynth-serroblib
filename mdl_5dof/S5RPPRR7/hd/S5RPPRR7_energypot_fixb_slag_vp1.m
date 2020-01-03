% Calculate potential energy for
% S5RPPRR7
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d4,d5,theta2]';
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
% Datum: 2019-12-31 18:00
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S5RPPRR7_energypot_fixb_slag_vp1(qJ, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(8,1),zeros(6,1),zeros(6,3)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPPRR7_energypot_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPPRR7_energypot_fixb_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPPRR7_energypot_fixb_slag_vp1: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPPRR7_energypot_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RPPRR7_energypot_fixb_slag_vp1: rSges has to be [6x3] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:59:28
% EndTime: 2019-12-31 17:59:28
% DurationCPUTime: 0.28s
% Computational Cost: add. (123->66), mult. (107->78), div. (0->0), fcn. (87->8), ass. (0->23)
t61 = rSges(6,3) + pkin(7);
t48 = cos(qJ(4));
t59 = rSges(5,2) * t48;
t43 = qJ(1) + pkin(8);
t39 = sin(t43);
t45 = sin(qJ(4));
t58 = t39 * t45;
t44 = sin(qJ(5));
t57 = t44 * t45;
t47 = cos(qJ(5));
t56 = t45 * t47;
t55 = pkin(5) + qJ(2);
t46 = sin(qJ(1));
t41 = t46 * pkin(1);
t54 = t39 * pkin(2) + t41;
t53 = pkin(3) + t55;
t40 = cos(t43);
t49 = cos(qJ(1));
t42 = t49 * pkin(1);
t52 = t40 * pkin(2) + t39 * qJ(3) + t42;
t51 = t39 * pkin(6) + t54;
t50 = t40 * pkin(6) + t52;
t1 = -m(1) * (g(1) * rSges(1,1) + g(2) * rSges(1,2) + g(3) * rSges(1,3)) - m(2) * (g(1) * (t49 * rSges(2,1) - t46 * rSges(2,2)) + g(2) * (t46 * rSges(2,1) + t49 * rSges(2,2)) + g(3) * (pkin(5) + rSges(2,3))) - m(3) * (g(1) * (t40 * rSges(3,1) - t39 * rSges(3,2) + t42) + g(2) * (t39 * rSges(3,1) + t40 * rSges(3,2) + t41) + g(3) * (rSges(3,3) + t55)) - m(4) * (g(1) * (-t40 * rSges(4,2) + t39 * rSges(4,3) + t52) + g(2) * (-t39 * rSges(4,2) + (-rSges(4,3) - qJ(3)) * t40 + t54) + g(3) * (rSges(4,1) + t55)) - m(5) * (g(1) * (rSges(5,1) * t58 + t39 * t59 + t50) + g(2) * (t39 * rSges(5,3) + t51) + g(3) * (t48 * rSges(5,1) - t45 * rSges(5,2) + t53) + (g(1) * rSges(5,3) + g(2) * (-rSges(5,1) * t45 - qJ(3) - t59)) * t40) - m(6) * (g(1) * (pkin(4) * t58 + (t39 * t56 + t40 * t44) * rSges(6,1) + (-t39 * t57 + t40 * t47) * rSges(6,2) + t50) + g(2) * (t51 + (t44 * rSges(6,1) + t47 * rSges(6,2)) * t39 + (-t56 * rSges(6,1) + t57 * rSges(6,2) - t45 * pkin(4) - qJ(3)) * t40) + g(3) * (t61 * t45 + t53) + (g(3) * (rSges(6,1) * t47 - rSges(6,2) * t44 + pkin(4)) + (-g(1) * t39 + g(2) * t40) * t61) * t48);
U = t1;
