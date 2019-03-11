% Calculate potential energy for
% S2RR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [2x1]
%   Generalized joint coordinates (joint angles)
% r_base [3x1]
%   Base position in world frame
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [1x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[d2]';
% m_mdh [3x1]
%   mass of all robot links (including the base)
% rSges [3x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% 
% Output:
% U [1x1]
%   Potential energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 18:00
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S2RR1_energypot_floatb_twist_slag_vp1(qJ, r_base, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(2,1),zeros(3,1),zeros(3,1),zeros(1,1),zeros(3,1),zeros(3,3)}
assert(isreal(qJ) && all(size(qJ) == [2 1]), ...
  'S2RR1_energypot_floatb_twist_slag_vp1: qJ has to be [2x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S2RR1_energypot_floatb_twist_slag_vp1: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S2RR1_energypot_floatb_twist_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [1 1]), ...
  'S2RR1_energypot_floatb_twist_slag_vp1: pkin has to be [1x1] (double)');
assert(isreal(m) && all(size(m) == [3 1]), ...
  'S2RR1_energypot_floatb_twist_slag_vp1: m has to be [3x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [3,3]), ...
  'S2RR1_energypot_floatb_twist_slag_vp1: rSges has to be [3x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 17:59:54
% EndTime: 2019-03-08 17:59:54
% DurationCPUTime: 0.08s
% Computational Cost: add. (26->24), mult. (30->26), div. (0->0), fcn. (18->4), ass. (0->7)
t6 = rSges(3,3) + pkin(1);
t1 = sin(qJ(2));
t3 = cos(qJ(2));
t5 = -rSges(3,1) * t3 + rSges(3,2) * t1;
t4 = cos(qJ(1));
t2 = sin(qJ(1));
t7 = -m(1) * (g(1) * (r_base(1) + rSges(1,1)) + g(2) * (r_base(2) + rSges(1,2)) + g(3) * (r_base(3) + rSges(1,3))) - m(2) * (g(1) * (-t2 * rSges(2,1) - rSges(2,2) * t4 + r_base(1)) + g(2) * (r_base(2) + rSges(2,3)) + g(3) * (-rSges(2,1) * t4 + t2 * rSges(2,2) + r_base(3))) - m(3) * (g(1) * r_base(1) + g(2) * (-rSges(3,1) * t1 - rSges(3,2) * t3 + r_base(2)) + g(3) * r_base(3) + (-g(1) * t6 + g(3) * t5) * t4 + (g(1) * t5 + g(3) * t6) * t2);
U  = t7;
