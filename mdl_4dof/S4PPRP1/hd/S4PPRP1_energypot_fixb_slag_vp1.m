% Calculate potential energy for
% S4PPRP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [5x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d3,theta1]';
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
% Datum: 2019-03-08 18:12
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S4PPRP1_energypot_fixb_slag_vp1(qJ, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(3,1),zeros(5,1),zeros(5,1),zeros(5,3)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PPRP1_energypot_fixb_slag_vp1: qJ has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4PPRP1_energypot_fixb_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [5 1]), ...
  'S4PPRP1_energypot_fixb_slag_vp1: pkin has to be [5x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4PPRP1_energypot_fixb_slag_vp1: m has to be [5x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [5,3]), ...
  'S4PPRP1_energypot_fixb_slag_vp1: rSges has to be [5x3] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 18:12:03
% EndTime: 2019-03-08 18:12:03
% DurationCPUTime: 0.07s
% Computational Cost: add. (60->42), mult. (80->48), div. (0->0), fcn. (72->4), ass. (0->14)
t42 = -rSges(5,1) - pkin(3);
t41 = cos(qJ(3));
t40 = sin(qJ(3));
t39 = qJ(1) - pkin(4);
t33 = sin(pkin(5));
t34 = cos(pkin(5));
t38 = t34 * pkin(1) + t33 * qJ(2);
t37 = rSges(5,3) + qJ(4);
t36 = t34 * pkin(2) + t38;
t30 = t33 * pkin(1);
t35 = t33 * pkin(2) - t34 * qJ(2) + t30;
t24 = -t33 * t41 + t34 * t40;
t23 = -t33 * t40 - t34 * t41;
t1 = -m(1) * (g(1) * rSges(1,1) + g(2) * rSges(1,2) + g(3) * rSges(1,3)) - m(2) * (g(1) * (t34 * rSges(2,1) - t33 * rSges(2,2)) + g(2) * (t33 * rSges(2,1) + t34 * rSges(2,2)) + g(3) * (qJ(1) + rSges(2,3))) - m(3) * (g(1) * (t34 * rSges(3,1) + t33 * rSges(3,3) + t38) + g(2) * (t33 * rSges(3,1) + t30 + (-rSges(3,3) - qJ(2)) * t34) + g(3) * (qJ(1) + rSges(3,2))) - m(4) * (g(1) * (-t23 * rSges(4,1) - t24 * rSges(4,2) + t36) + g(2) * (-t24 * rSges(4,1) + t23 * rSges(4,2) + t35) + g(3) * (-rSges(4,3) + t39)) - m(5) * (g(1) * t36 + g(2) * t35 + g(3) * (-rSges(5,2) + t39) + (g(1) * t37 + g(2) * t42) * t24 + (g(1) * t42 - g(2) * t37) * t23);
U  = t1;
