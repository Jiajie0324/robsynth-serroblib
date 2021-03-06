% Calculate potential energy for
% S4PRRP3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [6x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d2,d3,theta1]';
% m_mdh [5x1]
%   mass of all robot links (including the base)
% rSges [5x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% 
% Output:
% U [1x1]
%   Potential energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 16:27
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S4PRRP3_energypot_fixb_slag_vp1(qJ, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(3,1),zeros(6,1),zeros(5,1),zeros(5,3)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PRRP3_energypot_fixb_slag_vp1: qJ has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4PRRP3_energypot_fixb_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S4PRRP3_energypot_fixb_slag_vp1: pkin has to be [6x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4PRRP3_energypot_fixb_slag_vp1: m has to be [5x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [5,3]), ...
  'S4PRRP3_energypot_fixb_slag_vp1: rSges has to be [5x3] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 16:26:41
% EndTime: 2019-12-31 16:26:41
% DurationCPUTime: 0.15s
% Computational Cost: add. (78->42), mult. (69->48), div. (0->0), fcn. (49->6), ass. (0->17)
t39 = rSges(5,1) + pkin(3);
t38 = rSges(4,3) + pkin(5);
t37 = rSges(5,3) + qJ(4) + pkin(5);
t36 = pkin(4) + qJ(1);
t28 = sin(pkin(6));
t25 = t28 * pkin(1);
t29 = cos(pkin(6));
t26 = t29 * pkin(1);
t35 = g(1) * t26 + g(2) * t25;
t31 = sin(qJ(3));
t32 = cos(qJ(3));
t34 = rSges(4,1) * t32 - rSges(4,2) * t31 + pkin(2);
t33 = -rSges(5,2) * t31 + t39 * t32 + pkin(2);
t27 = pkin(6) + qJ(2);
t24 = cos(t27);
t23 = sin(t27);
t1 = -m(1) * (g(1) * rSges(1,1) + g(2) * rSges(1,2) + g(3) * rSges(1,3)) - m(2) * (g(1) * (t29 * rSges(2,1) - t28 * rSges(2,2)) + g(2) * (t28 * rSges(2,1) + t29 * rSges(2,2)) + g(3) * (qJ(1) + rSges(2,3))) - m(3) * (g(1) * (t24 * rSges(3,1) - t23 * rSges(3,2) + t26) + g(2) * (t23 * rSges(3,1) + t24 * rSges(3,2) + t25) + g(3) * (rSges(3,3) + t36)) - m(4) * (g(3) * (t31 * rSges(4,1) + t32 * rSges(4,2) + t36) + (g(1) * t34 - g(2) * t38) * t24 + (g(1) * t38 + g(2) * t34) * t23 + t35) - m(5) * (g(3) * (t32 * rSges(5,2) + t39 * t31 + t36) + (g(1) * t33 - g(2) * t37) * t24 + (g(1) * t37 + g(2) * t33) * t23 + t35);
U = t1;
