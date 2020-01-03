% Calculate vector of cutting forces with Newton-Euler
% S4RPRR2
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
% Datum: 2019-12-31 16:48
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new = S4RPRR2_invdynf_fixb_snew_vp2(qJ, qJD, qJDD, g, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(4,1),zeros(3,1),zeros(7,1),zeros(5,1),zeros(5,3),zeros(5,6)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RPRR2_invdynf_fixb_snew_vp2: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RPRR2_invdynf_fixb_snew_vp2: qJD has to be [4x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [4 1]), ...
  'S4RPRR2_invdynf_fixb_snew_vp2: qJDD has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4RPRR2_invdynf_fixb_snew_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4RPRR2_invdynf_fixb_snew_vp2: pkin has to be [7x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4RPRR2_invdynf_fixb_snew_vp2: m has to be [5x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [5,3]), ...
  'S4RPRR2_invdynf_fixb_snew_vp2: mrSges has to be [5x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [5 6]), ...
  'S4RPRR2_invdynf_fixb_snew_vp2: Ifges has to be [5x6] (double)'); 

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_linkframe_f_i_i_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 16:48:09
% EndTime: 2019-12-31 16:48:09
% DurationCPUTime: 0.27s
% Computational Cost: add. (2544->69), mult. (3602->96), div. (0->0), fcn. (1830->8), ass. (0->44)
t31 = qJDD(1) + qJDD(3);
t36 = sin(qJ(4));
t39 = cos(qJ(4));
t32 = qJD(1) + qJD(3);
t51 = qJD(4) * t32;
t18 = t36 * t31 + t39 * t51;
t19 = t39 * t31 - t36 * t51;
t55 = t32 * t36;
t25 = qJD(4) * mrSges(5,1) - mrSges(5,3) * t55;
t54 = t32 * t39;
t26 = -qJD(4) * mrSges(5,2) + mrSges(5,3) * t54;
t30 = t32 ^ 2;
t38 = sin(qJ(1));
t41 = cos(qJ(1));
t49 = t38 * g(1) - t41 * g(2);
t23 = qJDD(1) * pkin(1) + t49;
t42 = qJD(1) ^ 2;
t46 = -t41 * g(1) - t38 * g(2);
t24 = -t42 * pkin(1) + t46;
t34 = sin(pkin(7));
t35 = cos(pkin(7));
t47 = t35 * t23 - t34 * t24;
t15 = qJDD(1) * pkin(2) + t47;
t52 = t34 * t23 + t35 * t24;
t16 = -t42 * pkin(2) + t52;
t37 = sin(qJ(3));
t40 = cos(qJ(3));
t45 = t40 * t15 - t37 * t16;
t56 = (t36 * t25 - t39 * t26) * t32 + m(5) * (-t31 * pkin(3) - t30 * pkin(6) - t45) - t19 * mrSges(5,1) + t18 * mrSges(5,2);
t53 = t37 * t15 + t40 * t16;
t12 = -t30 * pkin(3) + t31 * pkin(6) + t53;
t17 = (-mrSges(5,1) * t39 + mrSges(5,2) * t36) * t32;
t33 = -g(3) + qJDD(2);
t10 = m(5) * (t39 * t12 + t36 * t33) + t19 * mrSges(5,3) - qJDD(4) * mrSges(5,2) + t17 * t54 - qJD(4) * t25;
t9 = m(5) * (-t36 * t12 + t39 * t33) - t18 * mrSges(5,3) + qJDD(4) * mrSges(5,1) - t17 * t55 + qJD(4) * t26;
t50 = m(4) * t33 + t36 * t10 + t39 * t9;
t48 = m(3) * t33 + t50;
t6 = m(4) * t45 + t31 * mrSges(4,1) - t30 * mrSges(4,2) - t56;
t5 = m(4) * t53 - t30 * mrSges(4,1) - t31 * mrSges(4,2) + t39 * t10 - t36 * t9;
t4 = m(3) * t52 - t42 * mrSges(3,1) - qJDD(1) * mrSges(3,2) - t37 * t6 + t40 * t5;
t3 = m(3) * t47 + qJDD(1) * mrSges(3,1) - t42 * mrSges(3,2) + t37 * t5 + t40 * t6;
t2 = m(2) * t46 - t42 * mrSges(2,1) - qJDD(1) * mrSges(2,2) - t34 * t3 + t35 * t4;
t1 = m(2) * t49 + qJDD(1) * mrSges(2,1) - t42 * mrSges(2,2) + t35 * t3 + t34 * t4;
t7 = [-m(1) * g(1) - t38 * t1 + t41 * t2, t2, t4, t5, t10; -m(1) * g(2) + t41 * t1 + t38 * t2, t1, t3, t6, t9; (-m(1) - m(2)) * g(3) + t48, -m(2) * g(3) + t48, t48, t50, t56;];
f_new = t7;
