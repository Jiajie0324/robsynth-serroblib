% Calculate vector of cutting forces with Newton-Euler
% S4RRRP5
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
% pkin [6x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d2,d3]';
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
% Datum: 2019-12-31 17:17
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new = S4RRRP5_invdynf_fixb_snew_vp2(qJ, qJD, qJDD, g, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(4,1),zeros(3,1),zeros(6,1),zeros(5,1),zeros(5,3),zeros(5,6)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RRRP5_invdynf_fixb_snew_vp2: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RRRP5_invdynf_fixb_snew_vp2: qJD has to be [4x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [4 1]), ...
  'S4RRRP5_invdynf_fixb_snew_vp2: qJDD has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4RRRP5_invdynf_fixb_snew_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S4RRRP5_invdynf_fixb_snew_vp2: pkin has to be [6x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4RRRP5_invdynf_fixb_snew_vp2: m has to be [5x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [5,3]), ...
  'S4RRRP5_invdynf_fixb_snew_vp2: mrSges has to be [5x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [5 6]), ...
  'S4RRRP5_invdynf_fixb_snew_vp2: Ifges has to be [5x6] (double)'); 

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_linkframe_f_i_i_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:16:39
% EndTime: 2019-12-31 17:16:40
% DurationCPUTime: 0.43s
% Computational Cost: add. (3013->120), mult. (6230->155), div. (0->0), fcn. (3641->6), ass. (0->57)
t54 = sin(qJ(2));
t56 = cos(qJ(2));
t70 = qJD(1) * qJD(2);
t41 = t54 * qJDD(1) + t56 * t70;
t42 = t56 * qJDD(1) - t54 * t70;
t72 = qJD(1) * t54;
t43 = qJD(2) * mrSges(3,1) - mrSges(3,3) * t72;
t71 = qJD(1) * t56;
t44 = -qJD(2) * mrSges(3,2) + mrSges(3,3) * t71;
t58 = qJD(1) ^ 2;
t53 = sin(qJ(3));
t77 = cos(qJ(3));
t35 = (t53 * t56 + t77 * t54) * qJD(1);
t20 = t35 * qJD(3) + t53 * t41 - t77 * t42;
t34 = t53 * t72 - t77 * t71;
t21 = -t34 * qJD(3) + t77 * t41 + t53 * t42;
t51 = qJD(2) + qJD(3);
t29 = -t51 * mrSges(4,2) - t34 * mrSges(4,3);
t30 = t51 * mrSges(4,1) - t35 * mrSges(4,3);
t45 = qJD(2) * pkin(2) - pkin(6) * t72;
t52 = t56 ^ 2;
t55 = sin(qJ(1));
t57 = cos(qJ(1));
t68 = t55 * g(1) - t57 * g(2);
t64 = -qJDD(1) * pkin(1) - t68;
t61 = -t42 * pkin(2) + t45 * t72 + (-pkin(6) * t52 - pkin(5)) * t58 + t64;
t31 = -t51 * mrSges(5,1) + t35 * mrSges(5,2);
t32 = -t34 * mrSges(5,2) + t51 * mrSges(5,3);
t62 = t21 * mrSges(5,3) + t35 * t31 - t20 * mrSges(5,1) - t34 * t32 - m(5) * (-0.2e1 * qJD(4) * t35 + (t34 * t51 - t21) * qJ(4) + (t35 * t51 + t20) * pkin(3) + t61);
t60 = m(4) * t61 + t20 * mrSges(4,1) + t21 * mrSges(4,2) + t34 * t29 + t35 * t30 - t62;
t81 = (t54 * t43 - t56 * t44) * qJD(1) + m(3) * (-t58 * pkin(5) + t64) - t42 * mrSges(3,1) + t41 * mrSges(3,2) + t60;
t40 = (-mrSges(3,1) * t56 + mrSges(3,2) * t54) * qJD(1);
t50 = qJDD(2) + qJDD(3);
t25 = t34 * pkin(3) - t35 * qJ(4);
t49 = t51 ^ 2;
t66 = -t57 * g(1) - t55 * g(2);
t37 = -t58 * pkin(1) + qJDD(1) * pkin(5) + t66;
t76 = t54 * t37;
t78 = pkin(2) * t58;
t15 = qJDD(2) * pkin(2) - t41 * pkin(6) - t76 + (pkin(6) * t70 + t54 * t78 - g(3)) * t56;
t67 = -t54 * g(3) + t56 * t37;
t16 = t42 * pkin(6) - qJD(2) * t45 - t52 * t78 + t67;
t74 = t53 * t15 + t77 * t16;
t69 = m(5) * (-t49 * pkin(3) + t50 * qJ(4) + 0.2e1 * qJD(4) * t51 - t34 * t25 + t74) + t51 * t31 + t50 * mrSges(5,3);
t26 = t34 * mrSges(5,1) - t35 * mrSges(5,3);
t73 = -t34 * mrSges(4,1) - t35 * mrSges(4,2) - t26;
t75 = -mrSges(4,3) - mrSges(5,2);
t7 = m(4) * t74 - t50 * mrSges(4,2) + t75 * t20 - t51 * t30 + t73 * t34 + t69;
t63 = t77 * t15 - t53 * t16;
t79 = m(5) * (-t50 * pkin(3) - t49 * qJ(4) + t35 * t25 + qJDD(4) - t63);
t8 = m(4) * t63 - t79 + (t29 + t32) * t51 + (mrSges(4,1) + mrSges(5,1)) * t50 + t73 * t35 + t75 * t21;
t4 = m(3) * (-t56 * g(3) - t76) - t41 * mrSges(3,3) + qJDD(2) * mrSges(3,1) - t40 * t72 + qJD(2) * t44 + t53 * t7 + t77 * t8;
t5 = m(3) * t67 - qJDD(2) * mrSges(3,2) + t42 * mrSges(3,3) - qJD(2) * t43 + t40 * t71 - t53 * t8 + t77 * t7;
t80 = t56 * t4 + t54 * t5;
t6 = m(2) * t68 + qJDD(1) * mrSges(2,1) - t58 * mrSges(2,2) - t81;
t1 = m(2) * t66 - t58 * mrSges(2,1) - qJDD(1) * mrSges(2,2) - t54 * t4 + t56 * t5;
t2 = [-m(1) * g(1) + t57 * t1 - t55 * t6, t1, t5, t7, -t20 * mrSges(5,2) - t34 * t26 + t69; -m(1) * g(2) + t55 * t1 + t57 * t6, t6, t4, t8, -t62; (-m(1) - m(2)) * g(3) + t80, -m(2) * g(3) + t80, t81, t60, -t50 * mrSges(5,1) + t21 * mrSges(5,2) + t35 * t26 - t51 * t32 + t79;];
f_new = t2;
