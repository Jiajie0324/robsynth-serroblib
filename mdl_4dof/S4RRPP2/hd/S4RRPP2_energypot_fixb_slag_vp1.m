% Calculate potential energy for
% S4RRPP2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [5x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d2]';
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
% Datum: 2019-03-08 18:34
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S4RRPP2_energypot_fixb_slag_vp1(qJ, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(3,1),zeros(5,1),zeros(5,1),zeros(5,3)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RRPP2_energypot_fixb_slag_vp1: qJ has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4RRPP2_energypot_fixb_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [5 1]), ...
  'S4RRPP2_energypot_fixb_slag_vp1: pkin has to be [5x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4RRPP2_energypot_fixb_slag_vp1: m has to be [5x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [5,3]), ...
  'S4RRPP2_energypot_fixb_slag_vp1: rSges has to be [5x3] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 18:33:58
% EndTime: 2019-03-08 18:33:58
% DurationCPUTime: 0.08s
% Computational Cost: add. (68->41), mult. (52->42), div. (0->0), fcn. (32->4), ass. (0->12)
t31 = rSges(5,1) + pkin(3);
t30 = pkin(4) + pkin(5);
t25 = qJ(1) + qJ(2);
t21 = sin(t25);
t26 = sin(qJ(1));
t23 = t26 * pkin(1);
t29 = t21 * pkin(2) + t23;
t22 = cos(t25);
t27 = cos(qJ(1));
t24 = t27 * pkin(1);
t28 = t22 * pkin(2) + t21 * qJ(3) + t24;
t1 = -m(1) * (g(1) * rSges(1,1) + g(2) * rSges(1,2) + g(3) * rSges(1,3)) - m(2) * (g(1) * (t27 * rSges(2,1) - t26 * rSges(2,2)) + g(2) * (t26 * rSges(2,1) + t27 * rSges(2,2)) + g(3) * (pkin(4) + rSges(2,3))) - m(3) * (g(1) * (t22 * rSges(3,1) - t21 * rSges(3,2) + t24) + g(2) * (t21 * rSges(3,1) + t22 * rSges(3,2) + t23) + g(3) * (rSges(3,3) + t30)) - m(4) * (g(1) * (t22 * rSges(4,1) + t21 * rSges(4,3) + t28) + g(2) * (t21 * rSges(4,1) + (-rSges(4,3) - qJ(3)) * t22 + t29) + g(3) * (rSges(4,2) + t30)) - m(5) * (g(1) * (t21 * rSges(5,2) + t28) + g(2) * (t31 * t21 + t29) + g(3) * (-qJ(4) - rSges(5,3) + t30) + (g(1) * t31 + g(2) * (-rSges(5,2) - qJ(3))) * t22);
U  = t1;
