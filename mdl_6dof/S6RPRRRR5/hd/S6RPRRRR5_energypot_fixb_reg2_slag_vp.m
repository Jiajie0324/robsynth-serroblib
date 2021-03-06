% Calculate inertial parameters regressor of potential energy for
% S6RPRRRR5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d5,d6,theta2]';
% 
% Output:
% U_reg [1x(6*10)]
%   inertial parameter regressor of Potential energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 07:11
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U_reg = S6RPRRRR5_energypot_fixb_reg2_slag_vp(qJ, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRR5_energypot_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRRRR5_energypot_fixb_reg2_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RPRRRR5_energypot_fixb_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 07:09:48
% EndTime: 2019-03-09 07:09:49
% DurationCPUTime: 0.17s
% Computational Cost: add. (211->72), mult. (174->92), div. (0->0), fcn. (166->12), ass. (0->42)
t89 = pkin(11) + qJ(3);
t82 = qJ(4) + t89;
t76 = sin(t82);
t77 = cos(t82);
t96 = cos(qJ(5));
t79 = t96 * pkin(5) + pkin(4);
t98 = -pkin(10) - pkin(9);
t117 = -t76 * t98 + t77 * t79;
t116 = g(3) * pkin(6);
t115 = g(3) * t76;
t91 = sin(pkin(11));
t114 = t91 * pkin(2) + pkin(6);
t92 = cos(pkin(11));
t78 = t92 * pkin(2) + pkin(1);
t90 = qJ(5) + qJ(6);
t83 = sin(t90);
t95 = sin(qJ(1));
t111 = t95 * t83;
t84 = cos(t90);
t110 = t95 * t84;
t94 = sin(qJ(5));
t109 = t95 * t94;
t108 = t95 * t96;
t97 = cos(qJ(1));
t107 = t97 * t83;
t106 = t97 * t84;
t105 = t97 * t94;
t104 = t97 * t96;
t93 = -pkin(7) - qJ(2);
t81 = cos(t89);
t71 = pkin(3) * t81 + t78;
t88 = -pkin(8) + t93;
t103 = t95 * t71 + t97 * t88;
t80 = sin(t89);
t102 = pkin(3) * t80 + t114;
t70 = t97 * t71;
t101 = -t95 * t88 + t70;
t100 = pkin(4) * t77 + pkin(9) * t76;
t99 = g(1) * t97 + g(2) * t95;
t72 = g(1) * t95 - g(2) * t97;
t68 = -g(3) * t77 + t99 * t76;
t1 = [0, 0, 0, 0, 0, 0, -t99, t72, -g(3), -t116, 0, 0, 0, 0, 0, 0, -g(3) * t91 - t99 * t92, -g(3) * t92 + t99 * t91, -t72, -g(1) * (t97 * pkin(1) + t95 * qJ(2)) - g(2) * (t95 * pkin(1) - t97 * qJ(2)) - t116, 0, 0, 0, 0, 0, 0, -g(3) * t80 - t99 * t81, -g(3) * t81 + t99 * t80, -t72, -g(1) * (t97 * t78 - t95 * t93) - g(2) * (t95 * t78 + t97 * t93) - g(3) * t114, 0, 0, 0, 0, 0, 0, -t99 * t77 - t115, t68, -t72, -g(1) * t101 - g(2) * t103 - g(3) * t102, 0, 0, 0, 0, 0, 0, -g(1) * (t77 * t104 + t109) - g(2) * (t77 * t108 - t105) - t96 * t115, -g(1) * (-t77 * t105 + t108) - g(2) * (-t77 * t109 - t104) + t94 * t115, -t68, -g(1) * (t100 * t97 + t101) - g(2) * (t100 * t95 + t103) - g(3) * (t76 * pkin(4) - t77 * pkin(9) + t102) 0, 0, 0, 0, 0, 0, -g(1) * (t77 * t106 + t111) - g(2) * (t77 * t110 - t107) - t84 * t115, -g(1) * (-t77 * t107 + t110) - g(2) * (-t77 * t111 - t106) + t83 * t115, -t68, -g(1) * (t117 * t97 + t70) - g(2) * (-pkin(5) * t105 + t103) - g(3) * (t76 * t79 + t77 * t98 + t102) + (-g(1) * (pkin(5) * t94 - t88) - g(2) * t117) * t95;];
U_reg  = t1;
