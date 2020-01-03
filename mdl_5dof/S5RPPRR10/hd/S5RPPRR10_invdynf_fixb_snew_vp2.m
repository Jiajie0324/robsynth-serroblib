% Calculate vector of cutting forces with Newton-Euler
% S5RPPRR10
% Use Code from Maple symbolic Code Generation
%
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% qJDD [5x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d4,d5,theta2]';
% m_mdh [6x1]
%   mass of all robot links (including the base)
% mrSges [6x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% Ifges [6x6]
%   inertia of all robot links about their respective body frame origins, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertial_parameters_convert_par1_par2.m)
%
% Output:
% f_new [3x6]
%   vector of cutting forces (contains inertial, gravitational coriolis and centrifugal forces)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 18:04
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new = S5RPPRR10_invdynf_fixb_snew_vp2(qJ, qJD, qJDD, g, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPPRR10_invdynf_fixb_snew_vp2: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPPRR10_invdynf_fixb_snew_vp2: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPPRR10_invdynf_fixb_snew_vp2: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPPRR10_invdynf_fixb_snew_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPPRR10_invdynf_fixb_snew_vp2: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPPRR10_invdynf_fixb_snew_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RPPRR10_invdynf_fixb_snew_vp2: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5RPPRR10_invdynf_fixb_snew_vp2: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_linkframe_f_i_i_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 18:04:01
% EndTime: 2019-12-31 18:04:03
% DurationCPUTime: 0.89s
% Computational Cost: add. (7765->132), mult. (18716->178), div. (0->0), fcn. (12401->8), ass. (0->77)
t119 = mrSges(4,2) + mrSges(3,3);
t78 = cos(pkin(8));
t73 = t78 ^ 2;
t77 = sin(pkin(8));
t109 = t77 ^ 2 + t73;
t85 = qJD(1) ^ 2;
t102 = t109 * t85;
t104 = qJDD(1) * t78;
t107 = qJD(1) * t77;
t108 = qJ(3) * t77;
t81 = sin(qJ(1));
t84 = cos(qJ(1));
t110 = t81 * g(1) - t84 * g(2);
t53 = -qJDD(1) * pkin(1) - t85 * qJ(2) + qJDD(2) - t110;
t118 = -pkin(2) * t104 - 0.2e1 * qJD(3) * t107 - qJDD(1) * t108 + t53;
t117 = (mrSges(3,2) - mrSges(4,3)) * t77 - (mrSges(3,1) + mrSges(4,1)) * t78;
t97 = -t84 * g(1) - t81 * g(2);
t57 = -t85 * pkin(1) + qJDD(1) * qJ(2) + t97;
t111 = -t78 * g(3) - t77 * t57;
t96 = -t78 * mrSges(4,1) - t77 * mrSges(4,3);
t59 = t96 * qJD(1);
t60 = (-t78 * mrSges(3,1) + t77 * mrSges(3,2)) * qJD(1);
t103 = 0.2e1 * qJD(1) * qJD(2);
t58 = (-pkin(2) * t78 - t108) * qJD(1);
t30 = t77 * t103 + t58 * t107 + qJDD(3) - t111;
t115 = pkin(3) * t85;
t25 = (-pkin(6) * qJDD(1) - t78 * t115) * t77 + t30;
t106 = qJD(1) * t78;
t99 = -t77 * g(3) + (t103 + t57) * t78;
t93 = t58 * t106 + t99;
t27 = -pkin(6) * t104 - t73 * t115 + t93;
t80 = sin(qJ(4));
t83 = cos(qJ(4));
t100 = t83 * t25 - t80 * t27;
t94 = -t77 * t80 - t78 * t83;
t55 = t94 * qJD(1);
t105 = t55 * qJD(4);
t95 = t77 * t83 - t78 * t80;
t44 = t95 * qJDD(1) + t105;
t56 = t95 * qJD(1);
t12 = (-t44 + t105) * pkin(7) + (t55 * t56 + qJDD(4)) * pkin(4) + t100;
t112 = t80 * t25 + t83 * t27;
t43 = -t56 * qJD(4) + t94 * qJDD(1);
t47 = qJD(4) * pkin(4) - t56 * pkin(7);
t54 = t55 ^ 2;
t13 = -t54 * pkin(4) + t43 * pkin(7) - qJD(4) * t47 + t112;
t79 = sin(qJ(5));
t82 = cos(qJ(5));
t34 = t82 * t55 - t79 * t56;
t19 = t34 * qJD(5) + t79 * t43 + t82 * t44;
t35 = t79 * t55 + t82 * t56;
t22 = -t34 * mrSges(6,1) + t35 * mrSges(6,2);
t74 = qJD(4) + qJD(5);
t32 = -t74 * mrSges(6,2) + t34 * mrSges(6,3);
t71 = qJDD(4) + qJDD(5);
t10 = m(6) * (t82 * t12 - t79 * t13) - t19 * mrSges(6,3) + t71 * mrSges(6,1) - t35 * t22 + t74 * t32;
t18 = -t35 * qJD(5) + t82 * t43 - t79 * t44;
t33 = t74 * mrSges(6,1) - t35 * mrSges(6,3);
t11 = m(6) * (t79 * t12 + t82 * t13) + t18 * mrSges(6,3) - t71 * mrSges(6,2) + t34 * t22 - t74 * t33;
t39 = -t55 * mrSges(5,1) + t56 * mrSges(5,2);
t45 = -qJD(4) * mrSges(5,2) + t55 * mrSges(5,3);
t7 = m(5) * t100 + qJDD(4) * mrSges(5,1) - t44 * mrSges(5,3) + qJD(4) * t45 + t82 * t10 + t79 * t11 - t56 * t39;
t46 = qJD(4) * mrSges(5,1) - t56 * mrSges(5,3);
t8 = m(5) * t112 - qJDD(4) * mrSges(5,2) + t43 * mrSges(5,3) - qJD(4) * t46 - t79 * t10 + t82 * t11 + t55 * t39;
t90 = m(4) * t30 + t83 * t7 + t80 * t8;
t4 = m(3) * t111 + (-t119 * qJDD(1) + (-0.2e1 * m(3) * qJD(2) - t59 - t60) * qJD(1)) * t77 - t90;
t92 = m(4) * t93 + mrSges(4,2) * t104 + t59 * t106 - t80 * t7 + t83 * t8;
t5 = m(3) * t99 + (qJDD(1) * mrSges(3,3) + qJD(1) * t60) * t78 + t92;
t116 = t78 * t4 + t77 * t5;
t86 = pkin(3) * t104 - pkin(6) * t102 - t118;
t98 = m(6) * (-t43 * pkin(4) - t54 * pkin(7) + t56 * t47 + t86) + t19 * mrSges(6,2) - t18 * mrSges(6,1) + t35 * t33 - t34 * t32;
t89 = m(5) * t86 - t43 * mrSges(5,1) + t44 * mrSges(5,2) - t55 * t45 + t56 * t46 + t98;
t88 = m(4) * t118 - t89;
t87 = m(3) * t53 + t88;
t9 = -t87 + (mrSges(2,1) - t117) * qJDD(1) + (t119 * t109 - mrSges(2,2)) * t85 + m(2) * t110;
t1 = m(2) * t97 - t85 * mrSges(2,1) - qJDD(1) * mrSges(2,2) - t77 * t4 + t78 * t5;
t2 = [-m(1) * g(1) + t84 * t1 - t81 * t9, t1, t5, t92, t8, t11; -m(1) * g(2) + t81 * t1 + t84 * t9, t9, t4, -mrSges(4,2) * t102 + t96 * qJDD(1) + t88, t7, t10; (-m(1) - m(2)) * g(3) + t116, -m(2) * g(3) + t116, t117 * qJDD(1) - t119 * t102 + t87, (qJDD(1) * mrSges(4,2) + qJD(1) * t59) * t77 + t90, t89, t98;];
f_new = t2;
