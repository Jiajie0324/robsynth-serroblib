% Calculate vector of cutting forces with Newton-Euler
% S5RPRRP2
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
%   pkin=[a2,a3,a4,a5,d1,d3,d4,theta2]';
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
% Datum: 2019-12-05 18:02
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new = S5RPRRP2_invdynf_fixb_snew_vp2(qJ, qJD, qJDD, g, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRP2_invdynf_fixb_snew_vp2: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRP2_invdynf_fixb_snew_vp2: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPRRP2_invdynf_fixb_snew_vp2: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPRRP2_invdynf_fixb_snew_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPRRP2_invdynf_fixb_snew_vp2: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPRRP2_invdynf_fixb_snew_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RPRRP2_invdynf_fixb_snew_vp2: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5RPRRP2_invdynf_fixb_snew_vp2: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_linkframe_f_i_i_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:01:27
% EndTime: 2019-12-05 18:01:29
% DurationCPUTime: 0.53s
% Computational Cost: add. (5154->109), mult. (7066->137), div. (0->0), fcn. (3444->8), ass. (0->58)
t50 = qJDD(1) + qJDD(3);
t57 = sin(qJ(4));
t60 = cos(qJ(4));
t51 = qJD(1) + qJD(3);
t76 = qJD(4) * t51;
t70 = t60 * t76;
t29 = t50 * t57 + t70;
t30 = t50 * t60 - t57 * t76;
t85 = t51 * t57;
t39 = qJD(4) * mrSges(5,1) - mrSges(5,3) * t85;
t84 = t51 * t60;
t40 = -qJD(4) * mrSges(6,2) + mrSges(6,3) * t84;
t41 = -qJD(4) * mrSges(5,2) + mrSges(5,3) * t84;
t49 = t51 ^ 2;
t59 = sin(qJ(1));
t62 = cos(qJ(1));
t77 = t62 * g(2) + t59 * g(3);
t35 = qJDD(1) * pkin(1) + t77;
t63 = qJD(1) ^ 2;
t69 = t59 * g(2) - g(3) * t62;
t36 = -pkin(1) * t63 + t69;
t55 = sin(pkin(8));
t56 = cos(pkin(8));
t66 = t56 * t35 - t36 * t55;
t21 = qJDD(1) * pkin(2) + t66;
t79 = t55 * t35 + t56 * t36;
t22 = -pkin(2) * t63 + t79;
t58 = sin(qJ(3));
t61 = cos(qJ(3));
t67 = t61 * t21 - t58 * t22;
t65 = -t50 * pkin(3) - t67;
t37 = qJD(4) * pkin(4) - qJ(5) * t85;
t38 = qJD(4) * mrSges(6,1) - mrSges(6,3) * t85;
t53 = t60 ^ 2;
t71 = m(6) * (t37 * t85 - t30 * pkin(4) + qJDD(5) + (-qJ(5) * t53 - pkin(7)) * t49 + t65) + t38 * t85 + t29 * mrSges(6,2);
t89 = -(-t57 * t39 + (t40 + t41) * t60) * t51 - (mrSges(5,1) + mrSges(6,1)) * t30 + m(5) * (-pkin(7) * t49 + t65) + t29 * mrSges(5,2) + t71;
t86 = pkin(4) * t49;
t80 = t58 * t21 + t61 * t22;
t17 = -pkin(3) * t49 + pkin(7) * t50 + t80;
t54 = -g(1) + qJDD(2);
t81 = t60 * t17 + t57 * t54;
t75 = qJD(5) * t51;
t28 = (-mrSges(5,1) * t60 + mrSges(5,2) * t57) * t51;
t27 = (-mrSges(6,1) * t60 + mrSges(6,2) * t57) * t51;
t72 = m(6) * (qJ(5) * t30 - qJD(4) * t37 - t53 * t86 + 0.2e1 * t60 * t75 + t81) + t27 * t84 + t30 * mrSges(6,3);
t10 = m(5) * t81 + t30 * mrSges(5,3) + t28 * t84 + (-mrSges(5,2) - mrSges(6,2)) * qJDD(4) + (-t39 - t38) * qJD(4) + t72;
t43 = t60 * t54;
t73 = m(6) * (qJDD(4) * pkin(4) + t43 + (-t29 + t70) * qJ(5) + (t60 * t86 - t17 - 0.2e1 * t75) * t57) + qJD(4) * t40 + qJDD(4) * mrSges(6,1);
t9 = m(5) * (-t57 * t17 + t43) + qJDD(4) * mrSges(5,1) + qJD(4) * t41 + (-t27 - t28) * t85 + (-mrSges(5,3) - mrSges(6,3)) * t29 + t73;
t74 = m(4) * t54 + t57 * t10 + t60 * t9;
t68 = m(3) * t54 + t74;
t6 = m(4) * t67 + t50 * mrSges(4,1) - t49 * mrSges(4,2) - t89;
t5 = m(4) * t80 - t49 * mrSges(4,1) - t50 * mrSges(4,2) + t60 * t10 - t57 * t9;
t4 = m(3) * t79 - t63 * mrSges(3,1) - qJDD(1) * mrSges(3,2) + t61 * t5 - t58 * t6;
t3 = m(3) * t66 + qJDD(1) * mrSges(3,1) - t63 * mrSges(3,2) + t58 * t5 + t61 * t6;
t2 = m(2) * t77 + qJDD(1) * mrSges(2,1) - t63 * mrSges(2,2) + t56 * t3 + t55 * t4;
t1 = m(2) * t69 - t63 * mrSges(2,1) - qJDD(1) * mrSges(2,2) - t55 * t3 + t56 * t4;
t7 = [(-m(1) - m(2)) * g(1) + t68, t1, t4, t5, t10, -qJDD(4) * mrSges(6,2) - qJD(4) * t38 + t72; -m(1) * g(2) - t1 * t59 - t2 * t62, t2, t3, t6, t9, -t29 * mrSges(6,3) - t27 * t85 + t73; -m(1) * g(3) + t1 * t62 - t2 * t59, -m(2) * g(1) + t68, t68, t74, t89, -t30 * mrSges(6,1) - t40 * t84 + t71;];
f_new = t7;
