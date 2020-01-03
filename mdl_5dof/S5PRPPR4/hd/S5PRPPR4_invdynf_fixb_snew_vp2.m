% Calculate vector of cutting forces with Newton-Euler
% S5PRPPR4
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
%   pkin=[a2,a3,a4,a5,d2,d5,theta1,theta3]';
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
% Datum: 2019-12-31 17:37
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new = S5PRPPR4_invdynf_fixb_snew_vp2(qJ, qJD, qJDD, g, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRPPR4_invdynf_fixb_snew_vp2: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRPPR4_invdynf_fixb_snew_vp2: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5PRPPR4_invdynf_fixb_snew_vp2: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PRPPR4_invdynf_fixb_snew_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRPPR4_invdynf_fixb_snew_vp2: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5PRPPR4_invdynf_fixb_snew_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5PRPPR4_invdynf_fixb_snew_vp2: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5PRPPR4_invdynf_fixb_snew_vp2: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_linkframe_f_i_i_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:36:48
% EndTime: 2019-12-31 17:36:49
% DurationCPUTime: 0.47s
% Computational Cost: add. (3207->104), mult. (6979->140), div. (0->0), fcn. (4237->8), ass. (0->65)
t95 = mrSges(5,2) + mrSges(4,3);
t56 = sin(pkin(8));
t58 = cos(pkin(8));
t94 = (mrSges(4,2) - mrSges(5,3)) * t56 - (mrSges(4,1) + mrSges(5,1)) * t58;
t64 = qJD(2) ^ 2;
t93 = pkin(4) * t64;
t57 = sin(pkin(7));
t59 = cos(pkin(7));
t45 = t57 * g(1) - t59 * g(2);
t46 = -t59 * g(1) - t57 * g(2);
t61 = sin(qJ(2));
t63 = cos(qJ(2));
t90 = t63 * t45 - t61 * t46;
t89 = t61 * t45 + t63 * t46;
t54 = t58 ^ 2;
t88 = t56 ^ 2 + t54;
t87 = qJ(4) * t56;
t86 = t64 * qJ(3);
t85 = qJD(2) * t56;
t84 = qJD(2) * t58;
t83 = qJDD(2) * t58;
t55 = -g(3) + qJDD(1);
t73 = -t58 * mrSges(5,1) - t56 * mrSges(5,3);
t43 = t73 * qJD(2);
t44 = (-t58 * mrSges(4,1) + t56 * mrSges(4,2)) * qJD(2);
t72 = -pkin(3) * t58 - t87;
t42 = t72 * qJD(2);
t30 = -t64 * pkin(2) + qJDD(2) * qJ(3) + t89;
t76 = -t56 * t30 + t58 * t55;
t80 = 0.2e1 * qJD(2) * qJD(3);
t16 = t42 * t85 + t56 * t80 + qJDD(4) - t76;
t12 = (-pkin(6) * qJDD(2) - t58 * t93) * t56 + t16;
t81 = t56 * t55 + (t30 + t80) * t58;
t75 = t42 * t84 + t81;
t13 = -pkin(6) * t83 - t54 * t93 + t75;
t60 = sin(qJ(5));
t62 = cos(qJ(5));
t70 = -t56 * t60 - t58 * t62;
t36 = t70 * qJD(2);
t71 = t56 * t62 - t58 * t60;
t37 = t71 * qJD(2);
t24 = -t36 * mrSges(6,1) + t37 * mrSges(6,2);
t29 = t36 * qJD(5) + t71 * qJDD(2);
t31 = -qJD(5) * mrSges(6,2) + t36 * mrSges(6,3);
t10 = m(6) * (t62 * t12 - t60 * t13) - t29 * mrSges(6,3) + qJDD(5) * mrSges(6,1) - t37 * t24 + qJD(5) * t31;
t28 = -t37 * qJD(5) + t70 * qJDD(2);
t32 = qJD(5) * mrSges(6,1) - t37 * mrSges(6,3);
t11 = m(6) * (t60 * t12 + t62 * t13) + t28 * mrSges(6,3) - qJDD(5) * mrSges(6,2) + t36 * t24 - qJD(5) * t32;
t67 = m(5) * t16 + t62 * t10 + t60 * t11;
t6 = m(4) * t76 + (-t95 * qJDD(2) + (-0.2e1 * m(4) * qJD(3) - t43 - t44) * qJD(2)) * t56 - t67;
t68 = m(5) * t75 + mrSges(5,2) * t83 - t60 * t10 + t62 * t11 + t43 * t84;
t7 = m(4) * t81 + (qJDD(2) * mrSges(4,3) + qJD(2) * t44) * t58 + t68;
t82 = m(3) * t55 + t56 * t7 + t58 * t6;
t79 = -qJDD(3) + t90;
t78 = t88 * mrSges(5,2);
t77 = m(2) * t55 + t82;
t66 = -0.2e1 * qJD(4) * t85 - t79;
t74 = m(6) * ((-t88 * pkin(6) + qJ(3)) * t64 + (t87 + pkin(2) + (pkin(3) + pkin(4)) * t58) * qJDD(2) - t66) + t29 * mrSges(6,2) - t28 * mrSges(6,1) + t37 * t32 - t36 * t31;
t69 = m(5) * (-t86 + (-pkin(2) + t72) * qJDD(2) + t66) - t74;
t65 = m(4) * (-qJDD(2) * pkin(2) - t79 - t86) + t69;
t8 = m(3) * t90 + (t95 * t88 - mrSges(3,2)) * t64 + (mrSges(3,1) - t94) * qJDD(2) - t65;
t3 = m(3) * t89 - t64 * mrSges(3,1) - qJDD(2) * mrSges(3,2) - t56 * t6 + t58 * t7;
t2 = m(2) * t46 + t63 * t3 - t61 * t8;
t1 = m(2) * t45 + t61 * t3 + t63 * t8;
t4 = [-m(1) * g(1) - t57 * t1 + t59 * t2, t2, t3, t7, t68, t11; -m(1) * g(2) + t59 * t1 + t57 * t2, t1, t8, t6, t73 * qJDD(2) - t64 * t78 + t69, t10; -m(1) * g(3) + t77, t77, t82, (-t88 * mrSges(4,3) - t78) * t64 + t94 * qJDD(2) + t65, (qJDD(2) * mrSges(5,2) + qJD(2) * t43) * t56 + t67, t74;];
f_new = t4;
