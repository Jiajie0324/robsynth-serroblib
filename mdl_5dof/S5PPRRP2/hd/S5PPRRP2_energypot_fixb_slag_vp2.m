% Calculate potential energy for
% S5PPRRP2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d3,d4,theta1,theta2]';
% m_mdh [6x1]
%   mass of all robot links (including the base)
% mrSges [6x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% 
% Output:
% U [1x1]
%   Potential energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 15:09
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S5PPRRP2_energypot_fixb_slag_vp2(qJ, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(8,1),zeros(6,1),zeros(6,3)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PPRRP2_energypot_fixb_slag_vp2: qJ has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PPRRP2_energypot_fixb_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PPRRP2_energypot_fixb_slag_vp2: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5PPRRP2_energypot_fixb_slag_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5PPRRP2_energypot_fixb_slag_vp2: mrSges has to be [6x3] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_worldframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 15:08:28
% EndTime: 2019-12-05 15:08:29
% DurationCPUTime: 0.34s
% Computational Cost: add. (149->58), mult. (174->57), div. (0->0), fcn. (155->8), ass. (0->28)
t96 = -m(5) - m(6);
t95 = -mrSges(5,3) - mrSges(6,2);
t67 = pkin(8) + qJ(3);
t64 = sin(t67);
t65 = cos(t67);
t68 = sin(pkin(8));
t70 = cos(pkin(8));
t94 = -m(3) * pkin(1) - t70 * mrSges(3,1) - t65 * mrSges(4,1) + t68 * mrSges(3,2) + t64 * mrSges(4,2) - mrSges(2,1);
t93 = -m(3) * qJ(2) + mrSges(2,2) - mrSges(3,3) - mrSges(4,3);
t92 = -m(6) * pkin(4) - mrSges(5,1) - mrSges(6,1);
t91 = -m(6) * qJ(5) + mrSges(5,2) - mrSges(6,3);
t90 = pkin(3) * t65;
t71 = cos(pkin(7));
t89 = t64 * t71;
t69 = sin(pkin(7));
t88 = t69 * t64;
t73 = sin(qJ(4));
t87 = t69 * t73;
t74 = cos(qJ(4));
t86 = t69 * t74;
t85 = t71 * t73;
t84 = t71 * t74;
t63 = pkin(2) * t70 + pkin(1);
t72 = -pkin(5) - qJ(2);
t83 = t69 * t63 + t71 * t72;
t82 = t68 * pkin(2) + qJ(1);
t80 = t71 * t63 - t69 * t72;
t1 = (-m(4) * t82 - t68 * mrSges(3,1) - t70 * mrSges(3,2) - mrSges(1,3) - mrSges(2,3) + t96 * (t64 * pkin(3) - t65 * pkin(6) + t82) + (-m(2) - m(3)) * qJ(1) + (-mrSges(4,2) - t95) * t65 + (t91 * t73 + t92 * t74 - mrSges(4,1)) * t64) * g(3) + (-m(4) * t83 - mrSges(1,2) + t95 * t88 + t96 * (pkin(6) * t88 + t69 * t90 + t83) + t92 * (t65 * t86 - t85) + t91 * (t65 * t87 + t84) - t93 * t71 + t94 * t69) * g(2) + (-m(4) * t80 - mrSges(1,1) + t95 * t89 + t96 * (pkin(6) * t89 + t71 * t90 + t80) + t92 * (t65 * t84 + t87) + t91 * (t65 * t85 - t86) + t94 * t71 + t93 * t69) * g(1);
U = t1;
