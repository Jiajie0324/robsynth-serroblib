% Calculate vector of cutting forces with Newton-Euler
% S4RPRR6
% Use Code from Maple symbolic Code Generation
%
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% qJDD [4x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d3,d4,theta2]';
% m_mdh [5x1]
%   mass of all robot links (including the base)
% mrSges [5x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% Ifges [5x6]
%   inertia of all robot links about their respective body frame origins, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertial_parameters_convert_par1_par2.m)
%
% Output:
% f_new [3x5]
%   vector of cutting forces (contains inertial, gravitational coriolis and centrifugal forces)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 16:52
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new = S4RPRR6_invdynf_fixb_snew_vp2(qJ, qJD, qJDD, g, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(4,1),zeros(3,1),zeros(7,1),zeros(5,1),zeros(5,3),zeros(5,6)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RPRR6_invdynf_fixb_snew_vp2: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RPRR6_invdynf_fixb_snew_vp2: qJD has to be [4x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [4 1]), ...
  'S4RPRR6_invdynf_fixb_snew_vp2: qJDD has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4RPRR6_invdynf_fixb_snew_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4RPRR6_invdynf_fixb_snew_vp2: pkin has to be [7x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4RPRR6_invdynf_fixb_snew_vp2: m has to be [5x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [5,3]), ...
  'S4RPRR6_invdynf_fixb_snew_vp2: mrSges has to be [5x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [5 6]), ...
  'S4RPRR6_invdynf_fixb_snew_vp2: Ifges has to be [5x6] (double)'); 

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_linkframe_f_i_i_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 16:52:30
% EndTime: 2019-12-31 16:52:31
% DurationCPUTime: 0.64s
% Computational Cost: add. (5874->113), mult. (14207->149), div. (0->0), fcn. (9771->8), ass. (0->64)
t61 = qJD(1) ^ 2;
t54 = cos(pkin(7));
t51 = t54 ^ 2;
t53 = sin(pkin(7));
t79 = t53 ^ 2 + t51;
t83 = t79 * mrSges(3,3);
t57 = sin(qJ(1));
t60 = cos(qJ(1));
t71 = -t60 * g(1) - t57 * g(2);
t44 = -t61 * pkin(1) + qJDD(1) * qJ(2) + t71;
t56 = sin(qJ(3));
t59 = cos(qJ(3));
t68 = t53 * t59 + t54 * t56;
t67 = -t53 * t56 + t54 * t59;
t42 = t67 * qJD(1);
t77 = t42 * qJD(3);
t35 = t68 * qJDD(1) + t77;
t43 = t68 * qJD(1);
t76 = qJD(1) * qJD(2);
t74 = -t54 * g(3) - 0.2e1 * t53 * t76;
t78 = pkin(5) * qJDD(1);
t81 = pkin(2) * t61;
t25 = (t54 * t81 - t44 - t78) * t53 + t74;
t72 = -t53 * g(3) + (t44 + 0.2e1 * t76) * t54;
t26 = -t51 * t81 + t54 * t78 + t72;
t73 = t59 * t25 - t56 * t26;
t11 = (-t35 + t77) * pkin(6) + (t42 * t43 + qJDD(3)) * pkin(3) + t73;
t34 = -t43 * qJD(3) + t67 * qJDD(1);
t38 = qJD(3) * pkin(3) - t43 * pkin(6);
t41 = t42 ^ 2;
t80 = t56 * t25 + t59 * t26;
t12 = -t41 * pkin(3) + t34 * pkin(6) - qJD(3) * t38 + t80;
t55 = sin(qJ(4));
t58 = cos(qJ(4));
t28 = t55 * t42 + t58 * t43;
t16 = -t28 * qJD(4) + t58 * t34 - t55 * t35;
t27 = t58 * t42 - t55 * t43;
t19 = -t27 * mrSges(5,1) + t28 * mrSges(5,2);
t52 = qJD(3) + qJD(4);
t23 = t52 * mrSges(5,1) - t28 * mrSges(5,3);
t49 = qJDD(3) + qJDD(4);
t10 = m(5) * (t55 * t11 + t58 * t12) + t16 * mrSges(5,3) - t49 * mrSges(5,2) + t27 * t19 - t52 * t23;
t31 = -t42 * mrSges(4,1) + t43 * mrSges(4,2);
t36 = -qJD(3) * mrSges(4,2) + t42 * mrSges(4,3);
t17 = t27 * qJD(4) + t55 * t34 + t58 * t35;
t22 = -t52 * mrSges(5,2) + t27 * mrSges(5,3);
t9 = m(5) * (t58 * t11 - t55 * t12) - t17 * mrSges(5,3) + t49 * mrSges(5,1) - t28 * t19 + t52 * t22;
t6 = m(4) * t73 + qJDD(3) * mrSges(4,1) - t35 * mrSges(4,3) + qJD(3) * t36 + t55 * t10 - t43 * t31 + t58 * t9;
t69 = -t54 * mrSges(3,1) + t53 * mrSges(3,2);
t66 = qJDD(1) * mrSges(3,3) + t61 * t69;
t37 = qJD(3) * mrSges(4,1) - t43 * mrSges(4,3);
t7 = m(4) * t80 - qJDD(3) * mrSges(4,2) + t34 * mrSges(4,3) - qJD(3) * t37 + t58 * t10 + t42 * t31 - t55 * t9;
t4 = m(3) * t74 + t56 * t7 + t59 * t6 + (-m(3) * t44 - t66) * t53;
t5 = m(3) * t72 + t66 * t54 - t56 * t6 + t59 * t7;
t82 = t54 * t4 + t53 * t5;
t75 = t57 * g(1) - t60 * g(2);
t70 = qJDD(2) - t75;
t63 = (-pkin(2) * t54 - pkin(1)) * qJDD(1) + (-t79 * pkin(5) - qJ(2)) * t61 + t70;
t65 = t16 * mrSges(5,1) + t27 * t22 - m(5) * (-t34 * pkin(3) - t41 * pkin(6) + t43 * t38 + t63) - t17 * mrSges(5,2) - t28 * t23;
t64 = -m(4) * t63 + t34 * mrSges(4,1) - t35 * mrSges(4,2) + t42 * t36 - t43 * t37 + t65;
t62 = m(3) * (-qJDD(1) * pkin(1) - t61 * qJ(2) + t70) - t64;
t8 = (-mrSges(2,2) + t83) * t61 + (mrSges(2,1) - t69) * qJDD(1) + m(2) * t75 - t62;
t1 = m(2) * t71 - t61 * mrSges(2,1) - qJDD(1) * mrSges(2,2) - t53 * t4 + t54 * t5;
t2 = [-m(1) * g(1) + t60 * t1 - t57 * t8, t1, t5, t7, t10; -m(1) * g(2) + t57 * t1 + t60 * t8, t8, t4, t6, t9; (-m(1) - m(2)) * g(3) + t82, -m(2) * g(3) + t82, t69 * qJDD(1) - t61 * t83 + t62, -t64, -t65;];
f_new = t2;
