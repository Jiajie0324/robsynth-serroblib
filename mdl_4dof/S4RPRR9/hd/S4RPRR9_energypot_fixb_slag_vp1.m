% Calculate potential energy for
% S4RPRR9
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [6x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d3,d4]';
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
% Datum: 2019-12-31 16:56
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S4RPRR9_energypot_fixb_slag_vp1(qJ, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(3,1),zeros(6,1),zeros(5,1),zeros(5,3)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RPRR9_energypot_fixb_slag_vp1: qJ has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4RPRR9_energypot_fixb_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S4RPRR9_energypot_fixb_slag_vp1: pkin has to be [6x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4RPRR9_energypot_fixb_slag_vp1: m has to be [5x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [5,3]), ...
  'S4RPRR9_energypot_fixb_slag_vp1: rSges has to be [5x3] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 16:56:06
% EndTime: 2019-12-31 16:56:06
% DurationCPUTime: 0.21s
% Computational Cost: add. (61->54), mult. (91->68), div. (0->0), fcn. (75->6), ass. (0->17)
t47 = rSges(5,3) + pkin(6);
t46 = pkin(2) + pkin(4);
t36 = cos(qJ(3));
t44 = rSges(4,2) * t36;
t33 = sin(qJ(3));
t34 = sin(qJ(1));
t43 = t34 * t33;
t35 = cos(qJ(4));
t42 = t34 * t35;
t37 = cos(qJ(1));
t41 = t37 * t33;
t40 = t37 * pkin(1) + t34 * qJ(2);
t29 = t34 * pkin(1);
t39 = t34 * pkin(5) + t29;
t38 = t37 * pkin(5) + t40;
t32 = sin(qJ(4));
t1 = -m(1) * (g(1) * rSges(1,1) + g(2) * rSges(1,2) + g(3) * rSges(1,3)) - m(2) * (g(1) * (rSges(2,1) * t37 - t34 * rSges(2,2)) + g(2) * (t34 * rSges(2,1) + rSges(2,2) * t37) + g(3) * (pkin(4) + rSges(2,3))) - m(3) * (g(1) * (-rSges(3,2) * t37 + t34 * rSges(3,3) + t40) + g(2) * (-t34 * rSges(3,2) + t29 + (-rSges(3,3) - qJ(2)) * t37) + g(3) * (pkin(4) + rSges(3,1))) - m(4) * (g(1) * (rSges(4,1) * t43 + t34 * t44 + t38) + g(2) * (t34 * rSges(4,3) + t39) + g(3) * (rSges(4,1) * t36 - rSges(4,2) * t33 + t46) + (g(1) * rSges(4,3) + g(2) * (-rSges(4,1) * t33 - qJ(2) - t44)) * t37) - m(5) * (g(1) * (pkin(3) * t43 + (t32 * t37 + t33 * t42) * rSges(5,1) + (-t32 * t43 + t35 * t37) * rSges(5,2) + t38) + g(2) * (-pkin(3) * t41 - t37 * qJ(2) + (t34 * t32 - t35 * t41) * rSges(5,1) + (t32 * t41 + t42) * rSges(5,2) + t39) + g(3) * (t47 * t33 + t46) + (g(3) * (rSges(5,1) * t35 - rSges(5,2) * t32 + pkin(3)) + (-g(1) * t34 + g(2) * t37) * t47) * t36);
U = t1;
