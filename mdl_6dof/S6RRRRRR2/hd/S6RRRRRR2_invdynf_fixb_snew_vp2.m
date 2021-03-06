% Calculate vector of cutting forces with Newton-Euler
% S6RRRRRR2
% Use Code from Maple symbolic Code Generation
%
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% qJDD [6x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d5,d6]';
% m_mdh [7x1]
%   mass of all robot links (including the base)
% mrSges [7x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% Ifges [7x6]
%   inertia of all robot links about their respective body frame origins, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertial_parameters_convert_par1_par2.m)
%
% Output:
% f_new [3x7]
%   vector of cutting forces (contains inertial, gravitational coriolis and centrifugal forces)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-08 08:32
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new = S6RRRRRR2_invdynf_fixb_snew_vp2(qJ, qJD, qJDD, g, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRR2_invdynf_fixb_snew_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRR2_invdynf_fixb_snew_vp2: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRRR2_invdynf_fixb_snew_vp2: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRRR2_invdynf_fixb_snew_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRRR2_invdynf_fixb_snew_vp2: pkin has to be [11x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRRRR2_invdynf_fixb_snew_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRRRRR2_invdynf_fixb_snew_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RRRRRR2_invdynf_fixb_snew_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_linkframe_f_i_i_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-08 08:23:28
% EndTime: 2019-05-08 08:24:04
% DurationCPUTime: 6.44s
% Computational Cost: add. (115664->209), mult. (249239->274), div. (0->0), fcn. (190053->12), ass. (0->108)
t110 = sin(qJ(2));
t116 = cos(qJ(2));
t118 = qJD(1) ^ 2;
t105 = t116 ^ 2;
t111 = sin(qJ(1));
t117 = cos(qJ(1));
t132 = t111 * g(1) - t117 * g(2);
t126 = -qJDD(1) * pkin(1) - t132;
t136 = qJD(1) * t110;
t134 = qJD(1) * qJD(2);
t95 = t116 * qJDD(1) - t110 * t134;
t98 = qJD(2) * pkin(2) - pkin(8) * t136;
t123 = -t95 * pkin(2) + t98 * t136 + (-pkin(8) * t105 - pkin(7)) * t118 + t126;
t107 = sin(qJ(5));
t113 = cos(qJ(5));
t106 = sin(qJ(6));
t112 = cos(qJ(6));
t103 = qJDD(2) + qJDD(3);
t100 = qJDD(4) + t103;
t108 = sin(qJ(4));
t114 = cos(qJ(4));
t104 = qJD(2) + qJD(3);
t109 = sin(qJ(3));
t115 = cos(qJ(3));
t128 = -t117 * g(1) - t111 * g(2);
t91 = -t118 * pkin(1) + qJDD(1) * pkin(7) + t128;
t137 = t110 * t91;
t141 = pkin(2) * t118;
t94 = t110 * qJDD(1) + t116 * t134;
t61 = qJDD(2) * pkin(2) - t94 * pkin(8) - t137 + (pkin(8) * t134 + t110 * t141 - g(3)) * t116;
t133 = -t110 * g(3) + t116 * t91;
t62 = t95 * pkin(8) - qJD(2) * t98 - t105 * t141 + t133;
t130 = -t109 * t62 + t115 * t61;
t88 = (-t109 * t110 + t115 * t116) * qJD(1);
t70 = t88 * qJD(3) + t109 * t95 + t115 * t94;
t89 = (t109 * t116 + t110 * t115) * qJD(1);
t32 = (t104 * t88 - t70) * pkin(9) + (t88 * t89 + t103) * pkin(3) + t130;
t138 = t109 * t61 + t115 * t62;
t69 = -t89 * qJD(3) - t109 * t94 + t115 * t95;
t84 = t104 * pkin(3) - t89 * pkin(9);
t87 = t88 ^ 2;
t36 = -t87 * pkin(3) + t69 * pkin(9) - t104 * t84 + t138;
t139 = t108 * t32 + t114 * t36;
t79 = -t108 * t89 + t114 * t88;
t80 = t108 * t88 + t114 * t89;
t57 = -t79 * pkin(4) - t80 * pkin(10);
t101 = qJD(4) + t104;
t99 = t101 ^ 2;
t23 = -t99 * pkin(4) + t100 * pkin(10) + t79 * t57 + t139;
t120 = -t69 * pkin(3) - t87 * pkin(9) + t89 * t84 + t123;
t46 = -t80 * qJD(4) - t108 * t70 + t114 * t69;
t47 = t79 * qJD(4) + t108 * t69 + t114 * t70;
t29 = (-t101 * t79 - t47) * pkin(10) + (t101 * t80 - t46) * pkin(4) + t120;
t131 = -t107 * t23 + t113 * t29;
t65 = t113 * t101 - t107 * t80;
t38 = t65 * qJD(5) + t107 * t100 + t113 * t47;
t45 = qJDD(5) - t46;
t66 = t107 * t101 + t113 * t80;
t76 = qJD(5) - t79;
t17 = (t65 * t76 - t38) * pkin(11) + (t65 * t66 + t45) * pkin(5) + t131;
t140 = t107 * t29 + t113 * t23;
t37 = -t66 * qJD(5) + t113 * t100 - t107 * t47;
t54 = t76 * pkin(5) - t66 * pkin(11);
t64 = t65 ^ 2;
t18 = -t64 * pkin(5) + t37 * pkin(11) - t76 * t54 + t140;
t49 = -t106 * t66 + t112 * t65;
t28 = t49 * qJD(6) + t106 * t37 + t112 * t38;
t50 = t106 * t65 + t112 * t66;
t33 = -t49 * mrSges(7,1) + t50 * mrSges(7,2);
t74 = qJD(6) + t76;
t41 = -t74 * mrSges(7,2) + t49 * mrSges(7,3);
t43 = qJDD(6) + t45;
t15 = m(7) * (-t106 * t18 + t112 * t17) - t28 * mrSges(7,3) + t43 * mrSges(7,1) - t50 * t33 + t74 * t41;
t27 = -t50 * qJD(6) - t106 * t38 + t112 * t37;
t42 = t74 * mrSges(7,1) - t50 * mrSges(7,3);
t16 = m(7) * (t106 * t17 + t112 * t18) + t27 * mrSges(7,3) - t43 * mrSges(7,2) + t49 * t33 - t74 * t42;
t51 = -t65 * mrSges(6,1) + t66 * mrSges(6,2);
t52 = -t76 * mrSges(6,2) + t65 * mrSges(6,3);
t12 = m(6) * t131 + t45 * mrSges(6,1) - t38 * mrSges(6,3) + t106 * t16 + t112 * t15 - t66 * t51 + t76 * t52;
t53 = t76 * mrSges(6,1) - t66 * mrSges(6,3);
t13 = m(6) * t140 - t45 * mrSges(6,2) + t37 * mrSges(6,3) - t106 * t15 + t112 * t16 + t65 * t51 - t76 * t53;
t72 = -t101 * mrSges(5,2) + t79 * mrSges(5,3);
t73 = t101 * mrSges(5,1) - t80 * mrSges(5,3);
t124 = -m(5) * t120 + t46 * mrSges(5,1) - t47 * mrSges(5,2) - t107 * t13 - t113 * t12 + t79 * t72 - t80 * t73;
t82 = -t104 * mrSges(4,2) + t88 * mrSges(4,3);
t83 = t104 * mrSges(4,1) - t89 * mrSges(4,3);
t122 = -m(4) * t123 + t69 * mrSges(4,1) - t70 * mrSges(4,2) + t88 * t82 - t89 * t83 + t124;
t96 = qJD(2) * mrSges(3,1) - mrSges(3,3) * t136;
t135 = qJD(1) * t116;
t97 = -qJD(2) * mrSges(3,2) + mrSges(3,3) * t135;
t143 = (t110 * t96 - t116 * t97) * qJD(1) + m(3) * (-t118 * pkin(7) + t126) - t95 * mrSges(3,1) + t94 * mrSges(3,2) - t122;
t129 = -t108 * t36 + t114 * t32;
t22 = -t100 * pkin(4) - t99 * pkin(10) + t80 * t57 - t129;
t125 = t27 * mrSges(7,1) + t49 * t41 - m(7) * (-t37 * pkin(5) - t64 * pkin(11) + t66 * t54 + t22) - t28 * mrSges(7,2) - t50 * t42;
t121 = m(6) * t22 - t37 * mrSges(6,1) + t38 * mrSges(6,2) - t65 * t52 + t66 * t53 - t125;
t56 = -t79 * mrSges(5,1) + t80 * mrSges(5,2);
t14 = m(5) * t129 + t100 * mrSges(5,1) - t47 * mrSges(5,3) + t101 * t72 - t80 * t56 - t121;
t81 = -t88 * mrSges(4,1) + t89 * mrSges(4,2);
t9 = m(5) * t139 - t100 * mrSges(5,2) + t46 * mrSges(5,3) - t101 * t73 - t107 * t12 + t113 * t13 + t79 * t56;
t6 = m(4) * t130 + t103 * mrSges(4,1) - t70 * mrSges(4,3) + t104 * t82 + t108 * t9 + t114 * t14 - t89 * t81;
t7 = m(4) * t138 - t103 * mrSges(4,2) + t69 * mrSges(4,3) - t104 * t83 - t108 * t14 + t114 * t9 + t88 * t81;
t93 = (-mrSges(3,1) * t116 + mrSges(3,2) * t110) * qJD(1);
t4 = m(3) * (-t116 * g(3) - t137) - t94 * mrSges(3,3) + qJDD(2) * mrSges(3,1) - t93 * t136 + qJD(2) * t97 + t109 * t7 + t115 * t6;
t5 = m(3) * t133 - qJDD(2) * mrSges(3,2) + t95 * mrSges(3,3) - qJD(2) * t96 - t109 * t6 + t115 * t7 + t93 * t135;
t142 = t110 * t5 + t116 * t4;
t8 = m(2) * t132 + qJDD(1) * mrSges(2,1) - t118 * mrSges(2,2) - t143;
t1 = m(2) * t128 - t118 * mrSges(2,1) - qJDD(1) * mrSges(2,2) - t110 * t4 + t116 * t5;
t2 = [-m(1) * g(1) + t117 * t1 - t111 * t8, t1, t5, t7, t9, t13, t16; -m(1) * g(2) + t111 * t1 + t117 * t8, t8, t4, t6, t14, t12, t15; (-m(1) - m(2)) * g(3) + t142, -m(2) * g(3) + t142, t143, -t122, -t124, t121, -t125;];
f_new  = t2;
