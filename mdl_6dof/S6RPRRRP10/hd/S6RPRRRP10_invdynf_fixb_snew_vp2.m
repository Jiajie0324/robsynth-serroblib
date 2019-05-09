% Calculate vector of cutting forces with Newton-Euler
% S6RPRRRP10
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
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d5]';
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
% Datum: 2019-05-06 01:59
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new = S6RPRRRP10_invdynf_fixb_snew_vp2(qJ, qJD, qJDD, g, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(9,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRP10_invdynf_fixb_snew_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRRP10_invdynf_fixb_snew_vp2: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRRRP10_invdynf_fixb_snew_vp2: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRRRP10_invdynf_fixb_snew_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPRRRP10_invdynf_fixb_snew_vp2: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRRRP10_invdynf_fixb_snew_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RPRRRP10_invdynf_fixb_snew_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RPRRRP10_invdynf_fixb_snew_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_linkframe_f_i_i_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 01:55:34
% EndTime: 2019-05-06 01:55:38
% DurationCPUTime: 1.47s
% Computational Cost: add. (17943->174), mult. (34587->212), div. (0->0), fcn. (21803->8), ass. (0->87)
t87 = sin(qJ(1));
t90 = cos(qJ(1));
t105 = -t90 * g(1) - t87 * g(2);
t125 = -qJDD(1) * qJ(2) - (2 * qJD(2) * qJD(1)) - t105;
t124 = -m(2) - m(3);
t123 = (-pkin(1) - pkin(7));
t121 = cos(qJ(5));
t113 = qJD(1) * qJD(3);
t86 = sin(qJ(3));
t107 = t86 * t113;
t89 = cos(qJ(3));
t78 = t89 * t113;
t71 = -t86 * qJDD(1) - t78;
t72 = t89 * qJDD(1) - t107;
t92 = qJD(1) ^ 2;
t96 = (t123 * t92) - t125;
t33 = (-t72 + t107) * pkin(8) + (-t71 + t78) * pkin(3) + t96;
t109 = t87 * g(1) - t90 * g(2);
t100 = -t92 * qJ(2) + qJDD(2) - t109;
t55 = t123 * qJDD(1) + t100;
t108 = -t89 * g(3) + t86 * t55;
t70 = (pkin(3) * t86 - pkin(8) * t89) * qJD(1);
t80 = t86 * qJD(1);
t91 = qJD(3) ^ 2;
t37 = -t91 * pkin(3) + qJDD(3) * pkin(8) - t70 * t80 + t108;
t85 = sin(qJ(4));
t88 = cos(qJ(4));
t106 = t88 * t33 - t85 * t37;
t114 = qJD(1) * t89;
t67 = t88 * qJD(3) - t85 * t114;
t45 = t67 * qJD(4) + t85 * qJDD(3) + t88 * t72;
t66 = qJDD(4) - t71;
t68 = t85 * qJD(3) + t88 * t114;
t77 = t80 + qJD(4);
t17 = (t67 * t77 - t45) * pkin(9) + (t67 * t68 + t66) * pkin(4) + t106;
t115 = t85 * t33 + t88 * t37;
t44 = -t68 * qJD(4) + t88 * qJDD(3) - t85 * t72;
t53 = t77 * pkin(4) - t68 * pkin(9);
t65 = t67 ^ 2;
t19 = -t65 * pkin(4) + t44 * pkin(9) - t77 * t53 + t115;
t84 = sin(qJ(5));
t102 = t121 * t17 - t84 * t19;
t46 = -t121 * t67 + t84 * t68;
t47 = t121 * t68 + t84 * t67;
t28 = pkin(5) * t46 - qJ(6) * t47;
t61 = qJDD(5) + t66;
t76 = qJD(5) + t77;
t75 = t76 ^ 2;
t122 = m(7) * (-t61 * pkin(5) - t75 * qJ(6) + t47 * t28 + qJDD(6) - t102);
t120 = (mrSges(2,1) - mrSges(3,2));
t119 = -mrSges(2,2) + mrSges(3,3);
t118 = -mrSges(6,3) - mrSges(7,2);
t117 = t121 * t19 + t84 * t17;
t29 = mrSges(7,1) * t46 - mrSges(7,3) * t47;
t116 = -mrSges(6,1) * t46 - mrSges(6,2) * t47 - t29;
t41 = -t76 * mrSges(7,1) + t47 * mrSges(7,2);
t111 = m(7) * (-t75 * pkin(5) + t61 * qJ(6) + 0.2e1 * qJD(6) * t76 - t46 * t28 + t117) + t76 * t41 + t61 * mrSges(7,3);
t69 = (mrSges(4,1) * t86 + mrSges(4,2) * t89) * qJD(1);
t24 = t47 * qJD(5) - t121 * t44 + t84 * t45;
t40 = t76 * mrSges(6,1) - t47 * mrSges(6,3);
t10 = m(6) * t117 - t61 * mrSges(6,2) + t116 * t46 + t118 * t24 - t76 * t40 + t111;
t25 = -t46 * qJD(5) + t121 * t45 + t84 * t44;
t38 = -t46 * mrSges(7,2) + t76 * mrSges(7,3);
t39 = -t76 * mrSges(6,2) - t46 * mrSges(6,3);
t11 = m(6) * t102 - t122 + (t39 + t38) * t76 + (mrSges(6,1) + mrSges(7,1)) * t61 + t116 * t47 + t118 * t25;
t48 = -t67 * mrSges(5,1) + t68 * mrSges(5,2);
t49 = -t77 * mrSges(5,2) + t67 * mrSges(5,3);
t7 = m(5) * t106 + t66 * mrSges(5,1) - t45 * mrSges(5,3) + t84 * t10 + t121 * t11 - t68 * t48 + t77 * t49;
t74 = qJD(3) * mrSges(4,1) - mrSges(4,3) * t114;
t50 = t77 * mrSges(5,1) - t68 * mrSges(5,3);
t8 = m(5) * t115 - t66 * mrSges(5,2) + t44 * mrSges(5,3) + t121 * t10 - t84 * t11 + t67 * t48 - t77 * t50;
t4 = m(4) * t108 - qJDD(3) * mrSges(4,2) + t71 * mrSges(4,3) - qJD(3) * t74 - t69 * t80 - t85 * t7 + t88 * t8;
t104 = t86 * g(3) + t89 * t55;
t73 = -qJD(3) * mrSges(4,2) - mrSges(4,3) * t80;
t36 = -qJDD(3) * pkin(3) - t91 * pkin(8) + t70 * t114 - t104;
t94 = -t44 * pkin(4) - t65 * pkin(9) + t68 * t53 + t36;
t99 = t25 * mrSges(7,3) + t47 * t41 - m(7) * (-0.2e1 * qJD(6) * t47 + (t46 * t76 - t25) * qJ(6) + (t47 * t76 + t24) * pkin(5) + t94) - t24 * mrSges(7,1) - t46 * t38;
t95 = m(6) * t94 + t24 * mrSges(6,1) + t25 * mrSges(6,2) + t46 * t39 + t47 * t40 - t99;
t93 = m(5) * t36 - t44 * mrSges(5,1) + t45 * mrSges(5,2) - t67 * t49 + t68 * t50 + t95;
t9 = m(4) * t104 + qJDD(3) * mrSges(4,1) - t72 * mrSges(4,3) + qJD(3) * t73 - t69 * t114 - t93;
t110 = t89 * t4 - t86 * t9;
t101 = -m(3) * (-qJDD(1) * pkin(1) + t100) - t86 * t4 - t89 * t9;
t98 = m(4) * t96 - t71 * mrSges(4,1) + t72 * mrSges(4,2) + t74 * t114 + t88 * t7 + t73 * t80 + t85 * t8;
t97 = -m(3) * (t92 * pkin(1) + t125) + t98;
t2 = m(2) * t105 + t119 * qJDD(1) - (t120 * t92) + t97;
t1 = m(2) * t109 + t120 * qJDD(1) + t119 * t92 + t101;
t3 = [-m(1) * g(1) - t87 * t1 + t90 * t2, t2, -m(3) * g(3) + t110, t4, t8, t10, -t24 * mrSges(7,2) - t46 * t29 + t111; -m(1) * g(2) + t90 * t1 + t87 * t2, t1, -(t92 * mrSges(3,2)) - qJDD(1) * mrSges(3,3) - t97, t9, t7, t11, -t99; (-m(1) + t124) * g(3) + t110, t124 * g(3) + t110, qJDD(1) * mrSges(3,2) - t92 * mrSges(3,3) - t101, t98, t93, t95, -t61 * mrSges(7,1) + t25 * mrSges(7,2) + t47 * t29 - t76 * t38 + t122;];
f_new  = t3;
