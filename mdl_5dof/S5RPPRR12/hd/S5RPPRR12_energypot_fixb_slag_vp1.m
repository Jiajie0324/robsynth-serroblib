% Calculate potential energy for
% S5RPPRR12
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d4,d5,theta3]';
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
% Datum: 2019-12-31 18:07
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S5RPPRR12_energypot_fixb_slag_vp1(qJ, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(8,1),zeros(6,1),zeros(6,3)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPPRR12_energypot_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPPRR12_energypot_fixb_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPPRR12_energypot_fixb_slag_vp1: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPPRR12_energypot_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RPPRR12_energypot_fixb_slag_vp1: rSges has to be [6x3] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 18:06:53
% EndTime: 2019-12-31 18:06:54
% DurationCPUTime: 0.26s
% Computational Cost: add. (108->64), mult. (123->72), div. (0->0), fcn. (103->8), ass. (0->27)
t64 = rSges(6,3) + pkin(7);
t41 = pkin(8) + qJ(4);
t35 = sin(t41);
t45 = sin(qJ(5));
t47 = cos(qJ(5));
t51 = rSges(6,1) * t47 - rSges(6,2) * t45 + pkin(4);
t63 = t35 * t51;
t62 = pkin(2) + pkin(5);
t46 = sin(qJ(1));
t39 = t46 * pkin(1);
t61 = g(2) * t39;
t42 = sin(pkin(8));
t60 = t42 * pkin(3);
t44 = -pkin(6) - qJ(3);
t58 = rSges(5,3) - t44;
t48 = cos(qJ(1));
t57 = t48 * pkin(1) + t46 * qJ(2);
t56 = rSges(4,3) + qJ(3);
t43 = cos(pkin(8));
t55 = t43 * pkin(3) + t62;
t54 = -qJ(2) - t60;
t53 = rSges(4,1) * t42 + rSges(4,2) * t43;
t36 = cos(t41);
t52 = rSges(5,1) * t35 + rSges(5,2) * t36;
t50 = t45 * rSges(6,1) + t47 * rSges(6,2) - t44;
t49 = g(1) * (t46 * t60 + t57) + t61;
t1 = -m(1) * (g(1) * rSges(1,1) + g(2) * rSges(1,2) + g(3) * rSges(1,3)) - m(2) * (g(1) * (t48 * rSges(2,1) - t46 * rSges(2,2)) + g(2) * (t46 * rSges(2,1) + t48 * rSges(2,2)) + g(3) * (pkin(5) + rSges(2,3))) - m(3) * (g(1) * (-t48 * rSges(3,2) + t46 * rSges(3,3) + t57) + g(2) * (-t46 * rSges(3,2) + t39 + (-rSges(3,3) - qJ(2)) * t48) + g(3) * (pkin(5) + rSges(3,1))) - m(4) * (g(1) * t57 + t61 + g(3) * (t43 * rSges(4,1) - t42 * rSges(4,2) + t62) + (g(1) * t53 + g(2) * t56) * t46 + (g(1) * t56 + g(2) * (-qJ(2) - t53)) * t48) - m(5) * (g(3) * (t36 * rSges(5,1) - t35 * rSges(5,2) + t55) + (g(1) * t52 + g(2) * t58) * t46 + (g(1) * t58 + g(2) * (-t52 + t54)) * t48 + t49) - m(6) * (g(3) * (t64 * t35 + t55) + (g(1) * t63 + g(2) * t50) * t46 + (g(1) * t50 + (t54 - t63) * g(2)) * t48 + (g(3) * t51 + (-g(1) * t46 + g(2) * t48) * t64) * t36 + t49);
U = t1;
