% Calculate inertial parameters regressor of potential energy for
% S5RRPRR13
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d4,d5,theta3]';
% 
% Output:
% U_reg [1x(5*10)]
%   inertial parameter regressor of Potential energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 20:34
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U_reg = S5RRPRR13_energypot_fixb_reg2_slag_vp(qJ, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRR13_energypot_fixb_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRPRR13_energypot_fixb_reg2_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRPRR13_energypot_fixb_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 20:33:51
% EndTime: 2019-12-31 20:33:51
% DurationCPUTime: 0.19s
% Computational Cost: add. (132->75), mult. (169->98), div. (0->0), fcn. (168->10), ass. (0->37)
t98 = g(3) * pkin(5);
t79 = sin(qJ(2));
t97 = g(3) * t79;
t76 = sin(pkin(9));
t96 = t76 * pkin(3);
t77 = cos(pkin(9));
t65 = t77 * pkin(3) + pkin(2);
t80 = sin(qJ(1));
t95 = t79 * t80;
t94 = t80 * t76;
t81 = cos(qJ(2));
t93 = t80 * t81;
t75 = pkin(9) + qJ(4);
t68 = qJ(5) + t75;
t63 = sin(t68);
t82 = cos(qJ(1));
t92 = t82 * t63;
t64 = cos(t68);
t91 = t82 * t64;
t66 = sin(t75);
t90 = t82 * t66;
t67 = cos(t75);
t89 = t82 * t67;
t88 = t82 * t76;
t87 = t82 * t77;
t78 = -pkin(7) - qJ(3);
t86 = t82 * pkin(1) + t80 * pkin(6);
t71 = t80 * pkin(1);
t85 = -t82 * pkin(6) + t71;
t84 = g(1) * t82 + g(2) * t80;
t83 = pkin(2) * t81 + qJ(3) * t79;
t74 = -pkin(8) + t78;
t62 = g(1) * t80 - g(2) * t82;
t61 = pkin(4) * t66 + t96;
t60 = pkin(4) * t67 + t65;
t59 = -g(3) * t81 + t84 * t79;
t1 = [0, 0, 0, 0, 0, 0, -t84, t62, -g(3), -t98, 0, 0, 0, 0, 0, 0, -t84 * t81 - t97, t59, -t62, -g(1) * t86 - g(2) * t85 - t98, 0, 0, 0, 0, 0, 0, -g(1) * (t81 * t87 + t94) - g(2) * (t77 * t93 - t88) - t77 * t97, -g(1) * (t80 * t77 - t81 * t88) - g(2) * (-t76 * t93 - t87) + t76 * t97, -t59, -g(1) * (t83 * t82 + t86) - g(2) * (t83 * t80 + t85) - g(3) * (t79 * pkin(2) - t81 * qJ(3) + pkin(5)), 0, 0, 0, 0, 0, 0, -g(1) * (t80 * t66 + t81 * t89) - g(2) * (t67 * t93 - t90) - t67 * t97, -g(1) * (t80 * t67 - t81 * t90) - g(2) * (-t66 * t93 - t89) + t66 * t97, -t59, -g(1) * (pkin(3) * t94 + t86) - g(2) * (t65 * t93 - t78 * t95 + t71) - g(3) * (t79 * t65 + t81 * t78 + pkin(5)) + (-g(1) * (t65 * t81 - t78 * t79) - g(2) * (-pkin(6) - t96)) * t82, 0, 0, 0, 0, 0, 0, -g(1) * (t80 * t63 + t81 * t91) - g(2) * (t64 * t93 - t92) - t64 * t97, -g(1) * (t80 * t64 - t81 * t92) - g(2) * (-t63 * t93 - t91) + t63 * t97, -t59, -g(1) * (t80 * t61 + t86) - g(2) * (t60 * t93 - t74 * t95 + t71) - g(3) * (t79 * t60 + t81 * t74 + pkin(5)) + (-g(1) * (t60 * t81 - t74 * t79) - g(2) * (-pkin(6) - t61)) * t82;];
U_reg = t1;
