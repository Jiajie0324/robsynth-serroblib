% Calculate potential energy for
% S4PRPR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [6x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d2,d4,theta3]';
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

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 14:11
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function U = S4PRPR3_energypot_fixb_slag_vp1(qJ, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(3,1),zeros(6,1),zeros(5,1),zeros(5,3)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PRPR3_energypot_fixb_slag_vp1: qJ has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4PRPR3_energypot_fixb_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S4PRPR3_energypot_fixb_slag_vp1: pkin has to be [6x1] (double)');
assert( isreal(m) && all(size(m) == [5 1]), ...
  'S4PRPR3_energypot_fixb_slag_vp1: m has to be [5x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [5,3]), ...
  'S4PRPR3_energypot_fixb_slag_vp1: rSges has to be [5x3] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-14 14:11:14
% EndTime: 2018-11-14 14:11:14
% DurationCPUTime: 0.06s
% Computational Cost: add. (53->38), mult. (38->36), div. (0->0), fcn. (18->6), ass. (0->12)
t26 = cos(qJ(2));
t29 = t26 * pkin(2) + pkin(1);
t28 = -pkin(4) - qJ(3);
t25 = sin(qJ(2));
t27 = t25 * pkin(2) + qJ(1);
t24 = qJ(2) + pkin(6);
t21 = qJ(4) + t24;
t20 = cos(t24);
t19 = sin(t24);
t18 = cos(t21);
t17 = sin(t21);
t1 = -m(1) * (g(1) * rSges(1,1) + g(2) * rSges(1,2) + g(3) * rSges(1,3)) - m(2) * (g(1) * (qJ(1) + rSges(2,3)) + g(2) * rSges(2,1) + g(3) * rSges(2,2)) - m(3) * (g(1) * (t25 * rSges(3,1) + t26 * rSges(3,2) + qJ(1)) + g(2) * (t26 * rSges(3,1) - t25 * rSges(3,2) + pkin(1)) + g(3) * (-pkin(4) - rSges(3,3))) - m(4) * (g(1) * (t19 * rSges(4,1) + t20 * rSges(4,2) + t27) + g(2) * (t20 * rSges(4,1) - t19 * rSges(4,2) + t29) + g(3) * (-rSges(4,3) + t28)) - m(5) * (g(1) * (t17 * rSges(5,1) + t18 * rSges(5,2) + pkin(3) * t19 + t27) + g(2) * (t18 * rSges(5,1) - t17 * rSges(5,2) + pkin(3) * t20 + t29) + g(3) * (-pkin(5) - rSges(5,3) + t28));
U  = t1;
